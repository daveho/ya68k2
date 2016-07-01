// Test ya68k2 glue logic

#define F_CPU 1000000 // use internal oscillator, set to 1 MHz

#include <stdint.h>
#include <avr/io.h>
#include <util/delay.h>

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
