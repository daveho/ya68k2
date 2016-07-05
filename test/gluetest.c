// Test ya68k2 glue logic

#define F_CPU 1000000 // use internal oscillator, set to 1 MHz

#include <stdint.h>
#include <avr/io.h>
#include <util/delay.h>

////////////////////////////////////////////////////////////////////////
// Definitions
////////////////////////////////////////////////////////////////////////

// Wiring of test circuit:
//
// Indicator LEDs:
//    PB0: green
//    PB1: yellow
//    PB2: red
//
// Simulated CPU control outputs:
//    PD0: CLK
//    PD1: -RST
//    PD2: -AS
//    PD3: -DS
//    PD4: RW
//    PD5: A19
//
// Inputs (reading glue logic outputs):
//    PC0: -ROMEN
//    PC1: -OPORTEN
//    PC2: -DEVOE

#define CTRL_CLK     0
#define CTRL_NRST    1
#define CTRL_NAS     2
#define CTRL_NDS     3
#define CTRL_RW      4
#define CTRL_A19     5

#define SIG_NROMEN   0
#define SIG_NOPORTEN 1
#define SIG_NDEVOE   2

#define PORTB_MASK ((uint8_t)0x07)   // LEDs
#define PORTC_MASK ((uint8_t)0x00)   // Signal inputs (from glue logic PLD)
#define PORTD_MASK ((uint8_t)0x3F)   // Control outputs

// Bit values
#define L ((uint8_t)0)  // low bit
#define H ((uint8_t)1)  // high bit
#define T ((uint8_t)2)  // toggle bit value
#define K ((uint8_t)3)  // keep previous bit value

// Function prototypes
uint8_t next_bit(uint8_t prev, uint8_t bit, uint8_t bitpos);
uint8_t control(uint8_t prev, uint8_t c0, uint8_t c1, uint8_t c2, uint8_t c3, uint8_t c4, uint8_t c5);
void control_out(uint8_t ctrl);
uint8_t signals_in(void);
void assert_low(uint8_t sigs, uint8_t bitpos, uint8_t assertnum);
void assert_high(uint8_t sigs, uint8_t bitpos, uint8_t assertnum);
void blinkn(uint8_t n, uint8_t bit);
void fail(uint8_t assertnum);
uint8_t reset(void);

// Test functions
void test_ndevoe(void);
void test_nromen(void);

// Iterate generation of control signals.
// Params:
//   iters - how many iterations
//   ctrl_var - variable storing control signal values
//   update - expression to update control signal values
#define CONTROL_LOOP(iters,ctrl_var,update) \
do { \
	for (uint16_t i = 0; i < (iters); i++) { \
		ctrl_var = update; \
		control_out(ctrl_var); \
	} \
} while (0)

// Run a test.
// Params:
//   testfn - the test function
#define RUN_TEST(testfn) \
do { \
	testnum++; \
	testfn(); \
} while (0)

// Implement an assert function.
// Params:
//   sigs - signal values (as read from signals_in())
//   bitpos - which signal bit to test
//   assertnum - the assertion number (within the current test function)
//   op - != to assert signal bit is high, == to assert signal bit is low
#define IMPL_ASSERT(sigs,bitpos,assertnum,op) \
do { \
	uint8_t onbit = ((uint8_t)1) << bitpos; \
	if ((sigs & onbit) op 0) { \
		fail(assertnum); \
	} \
} while (0)

#define ASSERT_LOW(sigs,bitpos) \
do { \
	assert_low(sigs, bitpos, assertnum); \
	assertnum++; \
} while (0)

#define ASSERT_HIGH(sigs,bitpos) \
do { \
	assert_high(sigs, bitpos, assertnum); \
	assertnum++; \
} while (0)

////////////////////////////////////////////////////////////////////////
// Data
////////////////////////////////////////////////////////////////////////

uint8_t testnum;  // current test number

////////////////////////////////////////////////////////////////////////
// Main program
////////////////////////////////////////////////////////////////////////

int main(void) {
	// Configure I/O ports for input/output.
	// Use pull ups on unused inputs.
	DDRB = PORTB_MASK;
	PORTB = ~PORTB_MASK;
	DDRC = PORTC_MASK;
	PORTC = (uint8_t)0xF8; // only C0..C2 are driven by PLD
	DDRD = PORTD_MASK;
	PORTD = ~PORTD_MASK;

	RUN_TEST(test_ndevoe);
	RUN_TEST(test_nromen);

	// All tests passed!
	PORTB  = 1; // green!
	for (;;) { }
}

////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////

// Generate the next value of specified bit in the control signals.
// Params:
//   prev - previous control signals
//   bit - bit value: L(ow), H(igh), T(oggle), or K(eep)
//   bitpos - bit position (e.g., 0 for low bit)
// Returns:
//   the next value of the bit (shifted into the correct position)
uint8_t next_bit(uint8_t prev, uint8_t bit, uint8_t bitpos) {
	uint8_t onbit = ((uint8_t)1) << bitpos;
	uint8_t bitval = prev & onbit;
	switch (bit) {
	case L:
		// L: drive the bit low
		bitval = ((uint8_t)0);
		break;
	case H:
		// H: drive the bit high
		bitval = onbit;
		break;
	case T:
		// T: toggle the bit
		bitval ^= onbit;
		break;
	case K:
		// K: keep the current value of the bit
		break;
	}
	return bitval;
}

// Generate control signals.
// Params:
//    prev - previous control signal values
//    c0..c5 - bit values (L/H/T/K) for each bit
// Returns:
//    the next control signal values
uint8_t control(uint8_t prev, uint8_t c0, uint8_t c1, uint8_t c2, uint8_t c3, uint8_t c4, uint8_t c5) {
	uint8_t result =
		next_bit(prev, c0, 0)
		| next_bit(prev, c1, 1)
		| next_bit(prev, c2, 2)
		| next_bit(prev, c3, 3)
		| next_bit(prev, c4, 4)
		| next_bit(prev, c5, 5);
	return result;
}

// Output control signals.
// Params:
//   ctrl - the control signals
void control_out(uint8_t ctrl) {
	PORTD = 0xC0 | (ctrl & 0x7F);
}

// Read output signals from glue logic.
// Returns:
//    the output signals from the glue logic
uint8_t signals_in(void) {
	// I'm not sure exactly why, but we seem to need to introduce a short
	// delay before reading the signal values.  I'm wondering whether this
	// has something to do with pipelining (i.e., the processor
	// doesn't know there's a data dependency between the write
	// of the controls and the read of the glue logic signals,
	// and the read happens too early.)
	_delay_ms(0.0001);
	return PINC & 0x07;
}

// Assert glue logic signal is low.
// Params:
//    sigs - the glue logic signals (as read from signals_in())
//    bitpos - the signal to check
//    assertnum - assertion number (within current test function)
void assert_low(uint8_t sigs, uint8_t bitpos, uint8_t assertnum) {
	IMPL_ASSERT(sigs, bitpos, assertnum, !=);
}

// Assert glue logic signal is high.
// Params:
//    sigs - the glue logic signals (as read from signals_in())
//    bitpos - the signal to check
//    assertnum - assertion number (within current test function)
void assert_high(uint8_t sigs, uint8_t bitpos, uint8_t assertnum) {
	IMPL_ASSERT(sigs, bitpos, assertnum, ==);
}

// Blink an LED specified number of times.
// This is useful for indicating which test and assertion
// failed.
// Params:
//   n - number of times to blink
//   bit - which LED(s) to blink
void blinkn(uint8_t n, uint8_t bit) {
	PORTB &= ~bit;
	_delay_ms(1000);
	for (uint8_t i = 0; i < n; i++) {
		PORTB |= bit;
		_delay_ms(200);
		PORTB &= ~bit;
		_delay_ms(50);
	}
}

// Called when a test fails.
// Params:
//   assertnum - which assertion within the test failed
void fail(uint8_t assertnum) {
	for (;;) {
		blinkn(testnum, 4); // red: which test failed
		blinkn(assertnum, 2); // yellow: which assertion faile
	}
}

// Send reset control signals.
uint8_t reset(void) {
	uint8_t ctrl = ((uint8_t)0);

	// Set an initial state:
	// CLK low, -RST low, -AS high, -DS high, RW high, A19 low
	ctrl = control(ctrl, L, L, H, H, H, L);

	// Just generate a clock signal for a while
	// with the reset signal asserted (low)
	CONTROL_LOOP(1000, ctrl, control(ctrl, T, K, K, K, K, K));

	// Generate the clock signal for a while with
	// the reset signal not asserted (high)
	CONTROL_LOOP(1000, ctrl, control(ctrl, T, H, K, K, K, K));

	return ctrl;
}

////////////////////////////////////////////////////////////////////////
// Test functions
////////////////////////////////////////////////////////////////////////

void test_ndevoe(void) {
	uint8_t ctrl, sigs, assertnum = 1;

	// Generate reset
	ctrl = reset();

	// Drive RW high (read)
	ctrl = control(ctrl, T, H, K, K, H, K);
	control_out(ctrl);

	// Test that -DEVOE is low
	sigs = signals_in();
	ASSERT_LOW(sigs, SIG_NDEVOE);

	// Drive RW low (write)
	ctrl = control(ctrl, T, H, K, K, L, K);
	control_out(ctrl);

	// Test that -DEVOE is high
	sigs = signals_in();
	ASSERT_HIGH(sigs, SIG_NDEVOE);
}

void test_nromen(void) {
	uint8_t ctrl, sigs, assertnum = 1;

	// Generate reset
	ctrl = reset();

	// Assert -AS (low), send A19 low
	ctrl = control(ctrl, T, K, L, K, K, L);
	control_out(ctrl);

	// -ROMEN should be asserted (low)
	sigs = signals_in();
	ASSERT_LOW(sigs, SIG_NROMEN);

	// -ROMEN should not be asserted when RW is low (write cycle)
	ctrl = control(ctrl, T, K, L, K, L, K);
	control_out(ctrl);
	sigs = signals_in();
	ASSERT_HIGH(sigs, SIG_NROMEN);

	// -ROMEN should not be asserted when A19 is high
	ctrl = control(ctrl, T, K, L, K, H, H);
	control_out(ctrl);
	sigs = signals_in();
	ASSERT_HIGH(sigs, SIG_NROMEN);
}
