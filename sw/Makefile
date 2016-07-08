# Assumes m68k-unknown-elf cross binutils/gcc are on the PATH.

PFX = m68k-elf

%.o : %.S
	$(PFX)-as -m68008 -o $*.o $<

%.bin : %.o
	$(PFX)-objcopy -O binary $< $*.bin

%.hex : %.o
	$(PFX)-objcopy -O ihex $< $*.hex

all : blinkled.bin blinkled.hex

clean :
	rm -f *.o *.bin *.hex
