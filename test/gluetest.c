// Test ya68k2 glue logic

#define F_CPU 1000000 // use internal oscillator, set to 1 MHz

#include <stdint.h>
#include <avr/io.h>
#include <util/delay.h>

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

int main(void) {
	DDRB = 0x07;

	// Just blink the LEDs connected to PB0, PB1, and PB2
	for (;;) {
		PORTB = 1;
		_delay_ms(500);
		PORTB = 2;
		_delay_ms(500);
		PORTB = 4;
		_delay_ms(500);
	}
}
