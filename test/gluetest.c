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
void assert_low(uint8_t sigs, uint8_t bitpos);
void assert_high(uint8_t sigs, uint8_t bitpos);
void fail(void);
uint8_t reset(void);

// Test functions
void test_ndevoe(void);

#define CONTROL_LOOP(iters,ctrl_var,update) \
do { \
	for (uint16_t i = 0; i < (iters); i++) { \
		ctrl_var = update; \
		control_out(ctrl_var); \
	} \
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

	/*
	for (;;) {
		PORTB ^= 1;
		_delay_ms(250);
	}
	*/

	testnum = 0;
	test_ndevoe();
	testnum++;

	// All tests passed!
	PORTB  = 1;
	for (;;) { }
}

////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////

// Generate the next bit in the control signals.
// Params:
//   prev - previous control signals
//   bit - bit value (L, H, T, or K)
//   bitpos - bit position (e.g., 0 for low bit)
// Returns:
//   the next value of the bit (shifted into the correct position)
uint8_t next_bit(uint8_t prev, uint8_t bit, uint8_t bitpos) {
	uint8_t onbit = ((uint8_t)1) << bitpos;
	uint8_t bitval = prev & onbit;
	switch (bit) {
	case L: bitval = ((uint8_t)0); break;
	case H: bitval = onbit; break;
	case T: bitval ^= onbit;
	case K: break;
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

void control_out(uint8_t ctrl) {
	PORTD = 0xC0 | (ctrl & 0x7F);
}

uint8_t signals_in(void) {
	return PINC & 0x07;
}

void assert_low(uint8_t sigs, uint8_t bitpos) {
	uint8_t onbit = ((uint8_t)1) << bitpos;
	if ((sigs & onbit) != 0) {
		fail();
	}
}

void assert_high(uint8_t sigs, uint8_t bitpos) {
	uint8_t onbit = ((uint8_t)1) << bitpos;
	if ((sigs & onbit) == 0) {
		fail();
	}
}

void fail() {
	// TODO: blink the yellow LED to indicate which test failed
	PORTB |= 4;
	for (;;) { }
}

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
	uint8_t ctrl, sigs;

	// Generate reset
	ctrl = reset();

	// Drive RW high (read)
	ctrl = control(ctrl, T, H, K, K, H, K);
	control_out(ctrl);

	// Test that -DEVOE is low
	sigs = signals_in();
	assert_low(sigs, SIG_NDEVOE);

	// Drive RW low (write)
	ctrl = control(ctrl, T, H, K, K, L, K);
	control_out(ctrl);

	_delay_ms(0.0001);

	// Test that -DEVOE is high
	sigs = signals_in();
	assert_high(sigs, SIG_NDEVOE);
}
