# Assumes m68k-unknown-elf cross binutils/gcc are on the PATH.

%.o : %.S
	m68k-unknown-elf-as -m68008 -o $*.o $<

%.bin : %.o
	m68k-unknown-elf-objcopy -O binary $< $*.bin

%.hex : %.o
	m68k-unknown-elf-objcopy -O ihex $< $*.hex

all : blinkled.bin blinkled.hex

clean :
	rm -f *.o *.bin *.hex
