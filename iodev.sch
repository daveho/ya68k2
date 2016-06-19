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
LIBS:ya68k2-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4250 2800 3700 2800
Text GLabel 3700 2800 0    60   Input ~ 0
-OPORTEN
Wire Wire Line
	4250 2900 3900 2900
Wire Wire Line
	3900 2900 3900 3150
$Comp
L GND #PWR?
U 1 1 5765758C
P 3900 3150
F 0 "#PWR?" H 3900 2900 50  0001 C CNN
F 1 "GND" H 3900 3000 50  0000 C CNN
F 2 "" H 3900 3150 50  0000 C CNN
F 3 "" H 3900 3150 50  0000 C CNN
	1    3900 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1900 3700 1900
Wire Wire Line
	4250 2000 3700 2000
Wire Wire Line
	4250 2100 3700 2100
Wire Wire Line
	4250 2200 3700 2200
Wire Wire Line
	4250 2300 3700 2300
Wire Wire Line
	4250 2400 3700 2400
Wire Wire Line
	4250 2500 3700 2500
Wire Wire Line
	4250 2600 3700 2600
Text Label 3900 1900 0    60   ~ 0
D0
Text Label 3900 2000 0    60   ~ 0
D1
Text Label 3900 2100 0    60   ~ 0
D2
Text Label 3900 2200 0    60   ~ 0
D3
Text Label 3900 2300 0    60   ~ 0
D4
Text Label 3900 2400 0    60   ~ 0
D5
Text Label 3900 2500 0    60   ~ 0
D6
Text Label 3900 2600 0    60   ~ 0
D7
Text GLabel 3700 1900 0    60   Input ~ 0
D0
Text GLabel 3700 2000 0    60   Input ~ 0
D1
Text GLabel 3700 2100 0    60   Input ~ 0
D2
Text GLabel 3700 2200 0    60   Input ~ 0
D3
Text GLabel 3700 2300 0    60   Input ~ 0
D4
Text GLabel 3700 2400 0    60   Input ~ 0
D5
Text GLabel 3700 2500 0    60   Input ~ 0
D6
Text GLabel 3700 2600 0    60   Input ~ 0
D7
$Comp
L VCC #PWR?
U 1 1 5765A01D
P 2550 2150
F 0 "#PWR?" H 2550 2000 50  0001 C CNN
F 1 "VCC" H 2550 2300 50  0000 C CNN
F 2 "" H 2550 2150 50  0000 C CNN
F 3 "" H 2550 2150 50  0000 C CNN
	1    2550 2150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5765A033
P 2550 2850
F 0 "#PWR?" H 2550 2600 50  0001 C CNN
F 1 "GND" H 2550 2700 50  0000 C CNN
F 2 "" H 2550 2850 50  0000 C CNN
F 3 "" H 2550 2850 50  0000 C CNN
	1    2550 2850
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 5765A049
P 2550 2500
F 0 "C8" H 2575 2600 50  0000 L CNN
F 1 "0.1uF" H 2575 2400 50  0000 L CNN
F 2 "" H 2588 2350 50  0000 C CNN
F 3 "" H 2550 2500 50  0000 C CNN
	1    2550 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2350 2550 2150
Wire Wire Line
	2550 2650 2550 2850
$Comp
L 74LS374 U?
U 1 1 57669206
P 4950 2400
F 0 "U?" H 4950 2400 50  0000 C CNN
F 1 "74LS374" H 5000 2050 50  0000 C CNN
F 2 "" H 4950 2400 50  0000 C CNN
F 3 "" H 4950 2400 50  0000 C CNN
	1    4950 2400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
