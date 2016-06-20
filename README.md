# ya68k2 - a simple MC68008-based microcomputer

This is a project to build a simple computer based on the [Motorola 68008](https://en.wikipedia.org/wiki/Motorola_68008) CPU.

This is a work in progress.  Right now, it's at a very early stage: I have a preliminary circuit design, and the next goal is to execute code in ROM to control an output port to make LEDs blink.

## Parts

Parts used:

* MC68008P (the 48-pin DIP version): I'm actually using a TS68008P (Thompson Semiconductor was a second source for the 68008)
* SST39SF040: 512k flash memory chip
* K6T4008C1C: 512k SRAM
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

* MC68901 MFP (multifunction peripheral): for timers and UART
* MAX232: to interface MFP UART with RS-232 voltage levels

## Files

The `hw` directory has the [KiCAD](http://kicad-pcb.org/) files, currently just a schematic since there's no PCB yet.  It also has the PLD equations for the GAL22V10 used for glue logic and address decoding.  The PLD file needs [galasm](https://github.com/daveho/galasm) to compile it into a JEDEC file which can be used to program the GAL22V10 device.

The `sw` directory has the firmware, currently just an attempt at a blinking LED demo.

The `scripts` directory has some useful scripts, including a script to download and build a m68k-unknown-elf binutils/gcc toolchain (which is needed to build the code in the `sw` directory.)


## Other 68008 projects

I have used other 68008 projects as a source of ideas, including:

* [68008 project](https://docs.google.com/document/d/1ejW_Ist19tIXeA5HtEWixaLoc0-sR_q8bySJj5Sa7iY/edit): I used the same flash memory chip.
* [68 Katy](http://www.bigmessowires.com/68-katy/): from the famous Steve Chamberlin.  I stole some of the glue logic, and also the pull up resistors on the data bus.
