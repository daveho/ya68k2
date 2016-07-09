# Assumes m68k-unknown-elf cross binutils/gcc are on the PATH.

PFX = m68k-elf

%.o : %.s
	$(PFX)-as -m68008 -o $*.o $<

%.bin : %.o
	$(PFX)-objcopy -O binary $< $*.bin

%.hex : %.o
	$(PFX)-objcopy -O ihex $< $*.hex

all : blinkled.bin blinkled.hex

disassemble : blinkled.bin
	$(PFX)-objdump -b binary -m m68k:68008 --start-address=8 -D blinkled.bin

clean :
	rm -f *.o *.bin *.hex
