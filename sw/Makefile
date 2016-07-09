# Assumes m68k(-unknown)-elf cross binutils/gcc are on the PATH.

# This is the target for the cross binutils/gcc I built under Linux.
#PFX = m68k-unknown-elf

# This is the target for the cross binutils/gcc built by the
# rockboxdev.sh script under Cygwin.
PFX = m68k-elf

%.o : %.s
	$(PFX)-as -m68008 -o $*.o $<

%.bin : %.o
	$(PFX)-objcopy -O binary $< $*.bin

%.hex : %.o
	$(PFX)-objcopy -O ihex $< $*.hex

# Make a 512K flash rom image
%.img : %.bin
	(binsize=$$(du -b blinkled.bin | cut -f 1); \
		cp $*.bin $*.img; \
		dd if=/dev/zero bs=$$(expr 524288 - $$binsize) count=1 >> $*.img)

all : blinkled.bin blinkled.hex

disassemble : blinkled.bin
	$(PFX)-objdump -b binary -m m68k:68008 --start-address=8 -D blinkled.bin

clean :
	rm -f *.o *.bin *.hex
