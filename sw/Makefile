# Assumes m68k(-unknown)-elf cross binutils/gcc are on the PATH.

# This is the target for the cross binutils/gcc I built under Linux.
#PFX = m68k-unknown-elf

# This is the target for the cross binutils/gcc built by the
# rockboxdev.sh script under Cygwin.
PFX = m68k-elf

# ROM is mapped here
ROM_START = 524288

%.o : %.s
	$(PFX)-as -m68008 -o $*.o $<

# Because of the .org 0x80000 directive at the beginning of of the
# assembly, there is logically 512K of empty space before the
# image.  Get rid of it.
%.bin : %.o
	$(PFX)-objcopy -O binary --set-start=524288 $< $*_bloat.bin
	dd bs=$(ROM_START) if=$*_bloat.bin of=$*.bin skip=1
	rm -f $*_bloat.bin

# Make a 512K flash rom image
%.img : %.bin
	(binsize=$$(du -b blinkled.bin | cut -f 1); \
		cp $*.bin $*.img; \
		dd if=/dev/zero bs=$$(expr 524288 - $$binsize) count=1 >> $*.img)

all : blinkled.bin

disassemble : blinkled.bin
	$(PFX)-objdump -b binary -m m68k:68008 --start-address=8 -D blinkled.bin

clean :
	rm -f *.o *.bin *.hex *.img
