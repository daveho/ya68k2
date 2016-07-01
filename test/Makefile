PROG = gluetest
MCU = atmega328p

CC = avr-gcc
CFLAGS = -Os -Wall \
	-mmcu=$(MCU) -funsigned-bitfields -fpack-struct -fshort-enums -std=gnu99

OBJCOPY = avr-objcopy

# This is correct for the $10 USB programmer from alldav.com
AVRDUDE_PROGRAMMER = stk500v2
AVRDUDE_PORT = /dev/ttyUSB0

# Note that the default target just builds the hex file:
# use "make program" to burn it to the device
all : $(PROG).hex

$(PROG).o : $(PROG).c
	$(CC) $(CFLAGS) -c $(PROG).c -o $(PROG).o

$(PROG).elf : $(PROG).o
	$(CC) -mmcu=$(MCU) $(PROG).o -o $@ -Wl,-Map=$(PROG).map,--cref -lm

$(PROG).hex : $(PROG).elf
	$(OBJCOPY) -O ihex -R .eeprom $(PROG).elf $(PROG).hex

program : $(PROG).hex
	avrdude -p $(MCU) -P $(AVRDUDE_PORT) -c $(AVRDUDE_PROGRAMMER) $(AVRDUDE_FLAGS) -U flash:w:$(PROG).hex

clean :
	rm -f *.o *.elf *.hex *.map
