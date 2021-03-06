# ya68k2 glue logic test program/circuit

<a href="../img/gluetest.jpg"><img alt="glue logic test circuit" src="../img/gluetest.jpg"></a>

To gain some confidence that the glue logic is working correctly, I use an [atmega328](http://www.atmel.com/devices/atmega328.aspx) microcontroller to simulate how the CPU generates control signals and addresses.  The outputs of the glue logic (e.g, chip enable signals) are fed back into input pins on the microcontroller.  A test firmware program generates control signals and addresses and checks that the correct glue logic outputs are observed.  Note that the test program is quite small, so another of the 28-pin AVRs with the same pinout (atmega48, atmega88, etc.) would probably work fine as well.  LEDs (green, yellow, and red) indicate whether the tests succeeded, or whether a test failed.  Green indicates success.  On a failure, the RED blinks the failed test number, and the yellow LED blinks the failed assertion number within the test.

[gluetest.c](gluetest.c) is the firmware program.  Comments in the program describe how the microcontroller is connected to the glue logic chip.  You'll need to check the KiCad schematics for the pinout of the glue logic chip (which is a GAL22V10), e.g., the -ROMEN output is pin 23.
