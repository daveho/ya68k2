EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:devices-sergey
LIBS:ya68k
LIBS:ya68k2-cache
EELAYER 27 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 3
Title ""
Date "15 jun 2016"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MC68008P U?
U 1 1 57614F4A
P 3800 3050
F 0 "U?" H 3750 4550 60  0000 C CNN
F 1 "MC68008P" H 3800 3050 60  0000 C CNN
F 2 "" H 3800 3050 60  0000 C CNN
F 3 "" H 3800 3050 60  0000 C CNN
	1    3800 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2600 2400 2600
Wire Wire Line
	2900 2700 2400 2700
Wire Wire Line
	2900 2800 2400 2800
Wire Wire Line
	2900 2900 2400 2900
Wire Wire Line
	2900 3000 2400 3000
Wire Wire Line
	2900 3100 2400 3100
Wire Wire Line
	2900 3200 2400 3200
Wire Wire Line
	2900 3300 2400 3300
Wire Wire Line
	2900 3400 2400 3400
Wire Wire Line
	2900 3500 2400 3500
Wire Wire Line
	2900 3600 2400 3600
Wire Wire Line
	2900 3700 2400 3700
Wire Wire Line
	2900 3800 2400 3800
Wire Wire Line
	2900 3900 2400 3900
Wire Wire Line
	2900 4000 2400 4000
Wire Wire Line
	2900 4100 2400 4100
Wire Wire Line
	2900 4200 2400 4200
Wire Wire Line
	2900 4300 2400 4300
Wire Wire Line
	2900 4400 2400 4400
Wire Wire Line
	2900 4500 2400 4500
Text Label 2600 4500 0    60   ~ 0
A0
Text Label 2600 4400 0    60   ~ 0
A1
Text Label 2600 4300 0    60   ~ 0
A2
Text Label 2600 4200 0    60   ~ 0
A3
Text Label 2600 4100 0    60   ~ 0
A4
Text Label 2600 4000 0    60   ~ 0
A5
Text Label 2600 3900 0    60   ~ 0
A6
Text Label 2600 3800 0    60   ~ 0
A7
Text Label 2600 3700 0    60   ~ 0
A8
Text Label 2600 3600 0    60   ~ 0
A9
Text Label 2600 3500 0    60   ~ 0
A10
Text Label 2600 3400 0    60   ~ 0
A11
Text Label 2600 3300 0    60   ~ 0
A12
Text Label 2600 3200 0    60   ~ 0
A13
Text Label 2600 3100 0    60   ~ 0
A14
Text Label 2600 3000 0    60   ~ 0
A15
Text Label 2600 2900 0    60   ~ 0
A16
Text Label 2600 2800 0    60   ~ 0
A17
Text Label 2600 2700 0    60   ~ 0
A18
Text Label 2600 2600 0    60   ~ 0
A19
Text GLabel 2700 2100 0    60   Input ~ 0
CLKDIV2
$Comp
L VCC #PWR?
U 1 1 57614F9F
P 1750 1500
F 0 "#PWR?" H 1750 1600 30  0001 C CNN
F 1 "VCC" H 1750 1600 30  0000 C CNN
F 2 "" H 1750 1500 60  0000 C CNN
F 3 "" H 1750 1500 60  0000 C CNN
	1    1750 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57614FC4
P 1750 2300
F 0 "#PWR?" H 1750 2300 30  0001 C CNN
F 1 "GND" H 1750 2230 30  0001 C CNN
F 2 "" H 1750 2300 60  0000 C CNN
F 3 "" H 1750 2300 60  0000 C CNN
	1    1750 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2100 2700 2100
Wire Wire Line
	2900 2300 2700 2300
Text GLabel 2700 2300 0    60   Input ~ 0
-RST
Wire Wire Line
	2900 1900 1750 1900
Wire Wire Line
	1750 1800 1750 2300
Wire Wire Line
	2900 1800 1750 1800
Wire Wire Line
	2900 1700 1750 1700
Wire Wire Line
	1750 1700 1750 1500
Connection ~ 1750 1900
Text GLabel 2400 4500 0    60   Input ~ 0
A0
Text GLabel 2400 4400 0    60   Input ~ 0
A1
Text GLabel 2400 4300 0    60   Input ~ 0
A2
Text GLabel 2400 4200 0    60   Input ~ 0
A3
Text GLabel 2400 4100 0    60   Input ~ 0
A4
Text GLabel 2400 4000 0    60   Input ~ 0
A5
Text GLabel 2400 3900 0    60   Input ~ 0
A6
Text GLabel 2400 3800 0    60   Input ~ 0
A7
Text GLabel 2400 3700 0    60   Input ~ 0
A8
Text GLabel 2400 3600 0    60   Input ~ 0
A9
Text GLabel 2400 3500 0    60   Input ~ 0
A10
Text GLabel 2400 3400 0    60   Input ~ 0
A11
Text GLabel 2400 3300 0    60   Input ~ 0
A12
Text GLabel 2400 3200 0    60   Input ~ 0
A13
Text GLabel 2400 3100 0    60   Input ~ 0
A14
Text GLabel 2400 3000 0    60   Input ~ 0
A15
Text GLabel 2400 2900 0    60   Input ~ 0
A16
Text GLabel 2400 2800 0    60   Input ~ 0
A17
Text GLabel 2400 2700 0    60   Input ~ 0
A18
Text GLabel 2400 2600 0    60   Input ~ 0
A19
Wire Wire Line
	4700 4500 5400 4500
Wire Wire Line
	4700 4400 5400 4400
Wire Wire Line
	4700 4300 5400 4300
Wire Wire Line
	4700 4200 5400 4200
Wire Wire Line
	4700 4100 5400 4100
Wire Wire Line
	4700 4000 5400 4000
Wire Wire Line
	4700 3900 5400 3900
Wire Wire Line
	4700 3800 5400 3800
Text Label 5050 4500 0    60   ~ 0
D0
Text Label 5050 4400 0    60   ~ 0
D1
Text Label 5050 4300 0    60   ~ 0
D2
Text Label 5050 4200 0    60   ~ 0
D3
Text Label 5050 4100 0    60   ~ 0
D4
Text Label 5050 4000 0    60   ~ 0
D5
Text Label 5050 3900 0    60   ~ 0
D6
Text Label 5050 3800 0    60   ~ 0
D7
Text GLabel 5400 4500 2    60   Input ~ 0
D0
Text GLabel 5400 4400 2    60   Input ~ 0
D1
Text GLabel 5400 4300 2    60   Input ~ 0
D2
Text GLabel 5400 4200 2    60   Input ~ 0
D3
Text GLabel 5400 4100 2    60   Input ~ 0
D4
Text GLabel 5400 4000 2    60   Input ~ 0
D5
Text GLabel 5400 3900 2    60   Input ~ 0
D6
Text GLabel 5400 3800 2    60   Input ~ 0
D7
$Comp
L GAL22V10 U?
U 1 1 5761541E
P 8500 2350
F 0 "U?" H 8450 3150 60  0000 C CNN
F 1 "GAL22V10" H 8500 1400 60  0000 C CNN
F 2 "" H 8500 2350 60  0000 C CNN
F 3 "" H 8500 2350 60  0000 C CNN
	1    8500 2350
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 57617B82
P 6800 1400
F 0 "#PWR?" H 6800 1500 30  0001 C CNN
F 1 "VCC" H 6800 1500 30  0000 C CNN
F 2 "" H 6800 1400 60  0000 C CNN
F 3 "" H 6800 1400 60  0000 C CNN
	1    6800 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1700 6800 1700
Wire Wire Line
	6800 1700 6800 1400
$Comp
L GND #PWR?
U 1 1 57617BBD
P 6800 1950
F 0 "#PWR?" H 6800 1950 30  0001 C CNN
F 1 "GND" H 6800 1880 30  0001 C CNN
F 2 "" H 6800 1950 60  0000 C CNN
F 3 "" H 6800 1950 60  0000 C CNN
	1    6800 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 1800 6800 1800
Wire Wire Line
	4700 3500 5400 3500
Wire Wire Line
	4700 3600 5400 3600
Text Label 5000 3500 0    60   ~ 0
-AS
Text Label 5000 3600 0    60   ~ 0
-DS
Text GLabel 5400 3600 2    60   Input ~ 0
-DS
Text GLabel 5400 3500 2    60   Input ~ 0
-AS
Wire Wire Line
	4700 3300 5400 3300
Text GLabel 5400 3300 2    60   Input ~ 0
RW
Wire Wire Line
	7800 2000 7350 2000
Text GLabel 7350 2000 0    60   Input ~ 0
CLK
Wire Wire Line
	7800 2100 7350 2100
Text GLabel 7350 2100 0    60   Input ~ 0
-RST
Wire Wire Line
	7800 2200 7350 2200
Wire Wire Line
	7800 2300 7350 2300
Wire Wire Line
	7800 2400 7350 2400
Text GLabel 7350 2300 0    60   Input ~ 0
-AS
Text GLabel 7350 2400 0    60   Input ~ 0
-DS
Wire Wire Line
	6800 1800 6800 1950
Wire Wire Line
	2900 2400 2700 2400
Text GLabel 2700 2400 0    60   Input ~ 0
-HALT
Text GLabel 7350 2200 0    60   Input ~ 0
A19
$Comp
L 74LS05 U3
U 3 1 5761C87F
P 8250 4600
F 0 "U3" H 8445 4715 60  0000 C CNN
F 1 "74LS05" H 8440 4475 60  0000 C CNN
F 2 "~" H 8250 4600 60  0000 C CNN
F 3 "~" H 8250 4600 60  0000 C CNN
	3    8250 4600
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5761C88E
P 6350 2550
F 0 "R?" V 6430 2550 40  0000 C CNN
F 1 "R" V 6357 2551 40  0000 C CNN
F 2 "~" V 6280 2550 30  0000 C CNN
F 3 "~" H 6350 2550 30  0000 C CNN
	1    6350 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3100 6350 3100
Wire Wire Line
	6350 3100 6350 3300
$Comp
L GND #PWR?
U 1 1 5761C8E6
P 6350 3300
F 0 "#PWR?" H 6350 3300 30  0001 C CNN
F 1 "GND" H 6350 3230 30  0001 C CNN
F 2 "" H 6350 3300 60  0000 C CNN
F 3 "" H 6350 3300 60  0000 C CNN
	1    6350 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2800 6350 3000
Wire Wire Line
	6350 3000 4700 3000
Wire Wire Line
	6350 2300 6350 2200
$Comp
L VCC #PWR?
U 1 1 5761CA57
P 6350 2200
F 0 "#PWR?" H 6350 2300 30  0001 C CNN
F 1 "VCC" H 6350 2300 30  0000 C CNN
F 2 "" H 6350 2200 60  0000 C CNN
F 3 "" H 6350 2200 60  0000 C CNN
	1    6350 2200
	1    0    0    -1  
$EndComp
Text Notes 6050 3500 0    60   ~ 0
-DTACK and -BERR are hard coded\nfor the initial phase of the project\nwhere there is just a ROM device.
$EndSCHEMATC
