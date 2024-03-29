# ya68k2 - a simple MC68008-based microcomputer

<a href="img/blinkenlights.jpg"><img alt="blinkenlights" style="width: 600px;" src="img/blinkenlights.jpg"></a>

This is a project to build a simple computer based on the [Motorola 68008](https://en.wikipedia.org/wiki/Motorola_68008) CPU.

This is a work in progress.  Right now, it's at a fairly early stage: the circuit has only two devices, a 512K flash ROM and a '374 output port.  I have successfully executed a test program which blinks LEDs connected to the output port.

## Parts

Parts used:

* MC68008P (the 48-pin DIP version): I'm actually using a TS68008P (Thompson Semiconductor was a second source for the 68008)
* SST39SF040: 512K flash memory chip
* MAX708: reset generator
* 74LS05: used to generate -RESET and -HALT signals from MAX708 chip
* 3.6864 MHz half can oscillator
* GAL22V10: used for glue logic and address decoding
* 74LS374: 8 bit output port, used to make LEDs blink
* LEDs
* 0.1uF decoupling caps for each IC
* 10k pull up resistors (see schematic)
* Pushbutton switch (for manual reset via the MAX708)

Planned additions:

* K6T4008C1C: 512K SRAM
* MC68901 MFP (multifunction peripheral): for timers and UART
* MAX232: to interface MFP UART with RS-232 voltage levels

## Files

The [hw](hw) directory has the [KiCAD](http://kicad.org/) files, currently just a schematic since there's no PCB yet.  It also has the PLD equations for the GAL22V10 used for glue logic and address decoding.  The PLD file needs [galasm](https://github.com/daveho/galasm) to compile it into a JEDEC file which can be used to program the GAL22V10 device.  I use a Wellon VP-190 to program GALs.

The [test](test) directory has a test firmware program for testing the glue logic.  The test circuit uses an atmega328 microcontroller.

The [sw](sw) directory has the firmware, currently just a blinking LED demo.  You will need an m68k binutils/gcc toolchain.  (See `scripts` directory below.)  The `make` target builds `blinkled.bin`, which you can program to a 512K flash ROM.  The `make disassemble` target shows a disassembly of the binary image, which is useful for seeing what is actually being loaded onto the flash chip.

The [scripts](scripts) directory has some useful scripts:

* `buildcross.sh` downloads and builds a m68k-unknown-elf binutils/gcc toolchain: use this if you are using Linux
* `rockboxdev.sh` downloads and builds a m68k-elf binutils/gcc toolchain: use this if you are using Cygwin (32 bit only!) on Windows

## Other 68008 projects

I have used other 68008 projects as a source of ideas, including:

* [68008 project](https://docs.google.com/document/d/1ejW_Ist19tIXeA5HtEWixaLoc0-sR_q8bySJj5Sa7iY/edit): I used the same flash memory chip.
* [68 Katy](http://www.bigmessowires.com/68-katy/): from the famous Steve Chamberlin.  I stole some of the glue logic, and also the pull up resistors on the data bus (which are not actually present in the current breadboard version of the circuit).

## Copyrights/License

The hardware and software are (c) David H. Hovemeyer &lt;<mailto:david.hovemeyer@gmail.com>&gt;.

The hardware is licensed under the [CERN open hardware license v1.2](cern_ohl_v_1_2.txt).

The software is licensed under the [MIT license](LICENSE.txt).
