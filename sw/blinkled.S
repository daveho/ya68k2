/*
 * Blink LEDs connected to '374 output port.
 *
 * This is for a very preliminary version of the hardware
 * where the ROM is mapped 0x00000-0x80000, and the output
 * port is mapped 0x80000-0x100000.  There is no RAM.
 */

/* Output port is mapped 0x8000-0x100000 */
#define OPORT 0x80000

/* Iterations of delay loop before updating output value */
#define DELAY 200000

/*
 * Execution starts at address 0.
 */
.org 0
	move.l #OPORT, %a0	/* address of the output port */
	move.b 0x55, %d0	/* bit pattern to write to the output port */

.top:
	move.b %d0, (%a0)	/* write data to the output port */

	move.l #DELAY, %d1	/* iteration count */
.delay:
	tst.l %d1		/* check iteration count */
	beq .delayend		/* terminate delay if count is zero */
	subq.l #1, %d1		/* subtract 1 from iteration count */
	jmp .delay		/* do another iteration of delay loop */

.delayend:
	eori.b #0xFF, %d0	/* toggle the bits in %d0 */
	jmp .top
