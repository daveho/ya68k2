/*
 * Blink LEDs connected to '374 output port.
 *
 * The updated memory map has the ROM at 0x00000-0x80000 on
 * boot, remapped to 0x80000-0x100000 when an address in
 * the high 512K is observed.  The output port is
 * mapped at 0x70000-0x80000, only after the ROM is
 * remapped from the low part of the address space.
 */

/* Output port is mapped 0x70000-0x80000 */
.equ OPORT, 0x70000

/* Iterations of delay loop before updating output value */
.equ DELAY, 50000

.org 0x80000
	/* First 4 bytes are the initial SSP (supervisor stack pointer) value:
	 * we just set this to 0 (no RAM yet.) */
	.byte 0, 0, 0, 0

	/* Next 4 bytes are the initial program counter value.
	 * We'll start by executing to the code using the low mapping,
	 * and then manually jump to the high mapping. */
	.byte 0, 0, 0, 8

.org 0x80008
	/*
	 * Code starts here.
	 */
	move.l #0x80010, %a0	/* absolute address of .entry */
	jmp (%a0)		/* jump to .entry using high mapping */

.entry:
	move.l #OPORT, %a0	/* address of the output port */
	move.b #0x55, %d0	/* bit pattern to write to the output port */

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

/*
vim:ft=gasasm:
*/
