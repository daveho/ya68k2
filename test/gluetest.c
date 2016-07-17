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
//    PD6: A18
//    PD7: A17
//    PB6: A16
//
// Inputs (reading glue logic outputs):
//    PC0: -ROMEN
//    PC1: -OPORTEN
//    PC2: -DEVOE
//    PC3: BOOTED

#define CTRL_CLK     0
#define CTRL_NRST    1
#define CTRL_NAS     2
#define CTRL_NDS     3
#define CTRL_RW      4
#define CTRL_A19     5
#define CTRL_A18     6
#define CTRL_A17     7
#define CTRL_A16     8

#define SIG_NROMEN   0
#define SIG_NOPORTEN 1
#define SIG_NDEVOE   2
#define SIG_BOOTED   3

#define PORTB_MASK ((uint8_t)0x47)   // LEDs (on PB0..PB2), also A16 (on PB6)
#define PORTC_MASK ((uint8_t)0x00)   // Signal inputs (from glue logic PLD)
#define PORTD_MASK ((uint8_t)0xFF)   // Control outputs

// Bit values
#define L ((uint8_t)0)  // low bit
#define H ((uint8_t)1)  // high bit
#define T ((uint8_t)2)  // toggle bit value
#define K ((uint8_t)3)  // keep previous bit value

// Data type for control outputs
typedef uint16_t control_t;

// Data type for signal inputs
typedef uint8_t signal_t;

// Function prototypes
control_t next_bit(control_t prev, uint8_t bit, uint8_t bitpos);
control_t control(control_t prev, uint8_t clk, uint8_t rst, uint8_t nas, uint8_t nds, uint8_t rw, uint8_t a19);
control_t control2(control_t prev, uint8_t clk, uint8_t rst, uint8_t nas, uint8_t nds, uint8_t rw, uint8_t a19,
	uint8_t a18, uint8_t a17, uint8_t a16);
void control_out(control_t ctrl);
signal_t signals_in(void);
void assert_low(uint8_t bitpos, uint8_t assertnum);
void assert_high(uint8_t bitpos, uint8_t assertnum);
void blinkn(uint8_t n, uint8_t bit);
void fail(uint8_t assertnum);
control_t reset(void);

// Test functions
void test_booted(void);
void test_ndevoe(void);
void test_nromen(void);
void test_noporten(void);

#define DECLARE_TEST_VARS \
control_t ctrl; uint8_t assertnum = 1

// Iterate generation of control signals.
// Params:
//   iters - how many iterations
//   update - expression to update control signal values
#define CONTROL_LOOP(iters,update) \
do { \
	for (uint16_t i = 0; i < (iters); i++) { \
		ctrl = update; \
		control_out(ctrl); \
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
//   bitpos - which signal bit to test
//   assertnum - the assertion number (within the current test function)
//   op - != to assert signal bit is high, == to assert signal bit is low
#define IMPL_ASSERT(bitpos,assertnum,op) \
do { \
	signal_t sigs = signals_in(); \
	control_t onbit = ((control_t)1) << bitpos; \
	if ((sigs & onbit) op 0) { \
		fail(assertnum); \
	} \
} while (0)

#define ASSERT_LOW(bitpos) \
do { \
	assert_low(bitpos, assertnum); \
	assertnum++; \
} while (0)

#define ASSERT_HIGH(bitpos) \
do { \
	assert_high(bitpos, assertnum); \
	assertnum++; \
} while (0)

// Toggle the clock
// Params:
//    ctrl - variable storing current control signals
#define TOGGLE_CLOCK() \
do { \
	ctrl = control(ctrl, T, K, K, K, K, K); \
	control_out(ctrl); \
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
	PORTB = (uint8_t) ~PORTB_MASK;
	DDRC = PORTC_MASK;
	PORTC = (uint8_t)0xF0; // only C0..C3 are driven by PLD
	DDRD = PORTD_MASK;
	PORTD = (uint8_t) ~PORTD_MASK;

	// Run the tests
	RUN_TEST(test_booted);
	RUN_TEST(test_ndevoe);
	RUN_TEST(test_nromen);
	RUN_TEST(test_noporten);

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
control_t next_bit(control_t prev, uint8_t bit, uint8_t bitpos) {
	control_t onbit = ((control_t)1) << bitpos;
	control_t bitval = prev & onbit;
	switch (bit) {
	case L:
		// L: drive the bit low
		bitval = ((control_t)0);
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
// Leaves A16..A18 unchanged.
// Params:
//    prev - previous control signal values
//    clk,rst,nas,nds,rw,a19 - bit values (L/H/T/K) for each bit
// Returns:
//    the next control signal values
control_t control(control_t prev, uint8_t clk, uint8_t rst, uint8_t nas, uint8_t nds, uint8_t rw, uint8_t a19) {
	control_t result =
		next_bit(prev, clk, 0)
		| next_bit(prev, rst, 1)
		| next_bit(prev, nas, 2)
		| next_bit(prev, nds, 3)
		| next_bit(prev, rw, 4)
		| next_bit(prev, a19, 5);
	return result;
}

// Generate control signals.
// Params:
//    prev - previous control signal values
//    clk,rst,nas,nds,rw,a19,a18,a17,a16 - bit values (L/H/T/K) for each bit
// Returns:
//    the next control signal values
control_t control2(control_t prev, uint8_t clk, uint8_t rst, uint8_t nas, uint8_t nds, uint8_t rw, uint8_t a19,
	uint8_t a18, uint8_t a17, uint8_t a16) {
	control_t result =
		control(prev, clk, rst, nas, nds, rw, a19)
		| next_bit(prev, a18, 6)
		| next_bit(prev, a17, 7)
		| next_bit(prev, a16, 8);
	return result;
}

// Output control signals.
// Params:
//   ctrl - the control signals
void control_out(control_t ctrl) {
	// Most of the control signals are output on PORTD
	PORTD = (ctrl & 0xFF);

	// A16 is output on PB6
	uint16_t a16 = (ctrl & ((uint16_t)1 << 8));
	uint8_t a16_bitval = ((uint8_t)1 << 6);
	if (a16) {
		PORTB |= a16_bitval; // drive A16 high
	} else {
		PORTB &= ~a16_bitval; // drive A6 low
	}
}

// Read output signals from glue logic.
// Returns:
//    the output signals from the glue logic
signal_t signals_in(void) {
	// I'm not sure exactly why, but we seem to need to introduce a short
	// delay before reading the signal values.  I'm wondering whether this
	// has something to do with pipelining (i.e., the processor
	// doesn't know there's a data dependency between the write
	// of the controls and the read of the glue logic signals,
	// and the read happens too early.)
	_delay_ms(0.0001);
	return PINC & 0x0F;
}

// Assert glue logic signal is low.
// Params:
//    bitpos - the signal to check
//    assertnum - assertion number (within current test function)
void assert_low(uint8_t bitpos, uint8_t assertnum) {
	IMPL_ASSERT(bitpos, assertnum, !=);
}

// Assert glue logic signal is high.
// Params:
//    bitpos - the signal to check
//    assertnum - assertion number (within current test function)
void assert_high(uint8_t bitpos, uint8_t assertnum) {
	IMPL_ASSERT(bitpos, assertnum, ==);
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
		_delay_ms(100);
	}
}

// Called when a test fails.
// Params:
//   assertnum - which assertion within the test failed
void fail(uint8_t assertnum) {
	for (;;) {
		blinkn(testnum, 4); // red: which test failed
		blinkn(assertnum, 2); // yellow: which assertion failed
	}
}

// Send reset control signals.
control_t reset(void) {
	control_t ctrl = ((control_t)0);

	// Set an initial state:
	// CLK low, -RST low, -AS high, -DS high, RW high, A19 low
	ctrl = control(ctrl, L, L, H, H, H, L);

	// Just generate a clock signal for a while
	// with the reset signal asserted (low)
	CONTROL_LOOP(1000, control(ctrl, T, K, K, K, K, K));

	// Generate the clock signal for a while with
	// the reset signal not asserted (high)
	CONTROL_LOOP(1000, control(ctrl, T, H, K, K, K, K));

	return ctrl;
}

////////////////////////////////////////////////////////////////////////
// Test functions
////////////////////////////////////////////////////////////////////////

void test_booted(void) {
	DECLARE_TEST_VARS;

	// Generate reset
	ctrl = reset();

	// BOOTED should be low
	ASSERT_LOW(SIG_BOOTED);

	// Generate some references to addresses in the low 512K
	CONTROL_LOOP(1000, control(ctrl, T, K, K, K, K, K)); // TODO: toggle A16..A18

	// BOOTED should still be low
	ASSERT_LOW(SIG_BOOTED);

	// Generate a reference to an address in the high 512K,
	// then generate a full clock pulse
	ctrl = control(ctrl, T, K, K, K, K, H);
	control_out(ctrl);
	TOGGLE_CLOCK();
	TOGGLE_CLOCK();

	// BOOTED should now be high
	ASSERT_HIGH(SIG_BOOTED);

	// Generate another reference to an address in the low 512K
	ctrl = control(ctrl, T, K, K, K, K, L);
	control_out(ctrl);

	// Generate a full clock pulse
	TOGGLE_CLOCK();
	TOGGLE_CLOCK();

	// BOOTED should still be high
	ASSERT_HIGH(SIG_BOOTED);

	// Issue a reset
	ctrl = reset();

	// BOOTED should be low again
	ASSERT_LOW(SIG_BOOTED);
}

void test_ndevoe(void) {
	DECLARE_TEST_VARS;

	// Generate reset
	ctrl = reset();

	// Drive RW high (read)
	ctrl = control(ctrl, T, H, K, K, H, K);
	control_out(ctrl);

	// Test that -DEVOE is low
	ASSERT_LOW(SIG_NDEVOE);

	// Drive RW low (write)
	ctrl = control(ctrl, T, H, K, K, L, K);
	control_out(ctrl);

	// Test that -DEVOE is high
	ASSERT_HIGH(SIG_NDEVOE);
}

void test_nromen(void) {
	DECLARE_TEST_VARS;

	// Generate reset
	ctrl = reset();

	// Assert -AS (low), send A19 low
	ctrl = control(ctrl, T, K, L, K, K, L);
	control_out(ctrl);

	// -ROMEN should be asserted (low)
	ASSERT_LOW(SIG_NROMEN);

	// -ROMEN should not be asserted when RW is low (write cycle)
	ctrl = control(ctrl, T, K, L, K, L, K);
	control_out(ctrl);
	ASSERT_HIGH(SIG_NROMEN);

	// Send A19 high and pulse the clock: -ROMEN should be
	// asserted (low) because the glue logic has remapped it into
	// the high part of the address space.
	ctrl = control(ctrl, T, K, L, K, H, H);
	control_out(ctrl);
	TOGGLE_CLOCK();
	TOGGLE_CLOCK();
	ASSERT_LOW(SIG_NROMEN);

	// Now access the low part of the address space: -ROMEN
	// should *not* be asserted because it is no longer mapped
	// there
	ctrl = control(ctrl, T, K, L, K, K, L);
	control_out(ctrl);
	TOGGLE_CLOCK();
	TOGGLE_CLOCK();
	ASSERT_HIGH(SIG_NROMEN);

	// Generate a reset
	ctrl = reset();

	// Now the ROM should be once again mapped in the low part of
	// the address space
	ctrl = control(ctrl, T, K, L, K, K, L);
	control_out(ctrl);
	ASSERT_LOW(SIG_NROMEN);
}

void test_noporten(void) {
	DECLARE_TEST_VARS;

	// Generate reset
	ctrl = reset();

	// -OPORTEN is asserted when:
	//   BOOTED is high because a memory reference to the high 512K has been made
	//   -AS is asserted
	//   -DS is asserted
	//   RW is low (write)
	//   A19 is low, A16..A18 are high

	// Generate a correct address for accessing the output port:
	// -OPORTEN should *not* be asserted because BOOTED is still 0
	ctrl = control2(ctrl, T, H, L, L, L, L, H, H, H);
	control_out(ctrl);
	ASSERT_HIGH(SIG_NOPORTEN);
	ASSERT_LOW(SIG_BOOTED);

	// Generate a reference to a high address, pulse the clock
	// to give BOOTED a chance to latch
	ctrl = control(ctrl, T, H, L, L, H, H);
	control_out(ctrl);
	TOGGLE_CLOCK();
	TOGGLE_CLOCK();

	// BOOTED should be high now
	ASSERT_HIGH(SIG_BOOTED);

	// *Now* a write to the output port's address range should
	// result in -OPORTEN being asserted
	ctrl = control2(ctrl, T, H, L, L, L, L, H, H, H);
	control_out(ctrl);
	ASSERT_LOW(SIG_NOPORTEN);

	// -OPORTEN should not be asserted when -AS not asserted
	ctrl = control(ctrl, T, K, H, K, K, K);
	control_out(ctrl);
	ASSERT_HIGH(SIG_NOPORTEN);

	// -OPORTEN should not be asserted when -DS not asserted
	ctrl = control(ctrl, T, K, L, H, K, K);
	control_out(ctrl);
	ASSERT_HIGH(SIG_NOPORTEN);

	// -OPORTEN should not be asserted when RW high (read cycle)
	ctrl = control(ctrl, T, K, L, L, H, K);
	control_out(ctrl);
	ASSERT_HIGH(SIG_NOPORTEN);

	// -OPORTEN should not be asserted when A19 high
	ctrl = control(ctrl, T, K, L, L, L, H);
	control_out(ctrl);
	ASSERT_HIGH(SIG_NOPORTEN);

	// TODO: try other invalid combinations of A16..A19, verify -OPORTEN not asserted

	// Verify that -OPORTEN is asserted again when control
	// signals are correct
	ctrl = control2(ctrl, T, K, L, L, L, L, H, H, H);
	control_out(ctrl);
	ASSERT_LOW(SIG_NOPORTEN);
}
