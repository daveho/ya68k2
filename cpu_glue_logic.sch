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
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 4
Title ""
Date "16 jun 2016"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MC68008P U5
U 1 1 57614F4A
P 3700 3700
F 0 "U5" H 3650 5200 60  0000 C CNN
F 1 "MC68008P" H 3700 3700 60  0000 C CNN
F 2 "" H 3700 3700 60  0000 C CNN
F 3 "" H 3700 3700 60  0000 C CNN
	1    3700 3700
	1    0    0    -1  
$EndComp
Text Label 2500 5150 0    60   ~ 0
A0
Text Label 2500 5050 0    60   ~ 0
A1
Text Label 2500 4950 0    60   ~ 0
A2
Text Label 2500 4850 0    60   ~ 0
A3
Text Label 2500 4750 0    60   ~ 0
A4
Text Label 2500 4650 0    60   ~ 0
A5
Text Label 2500 4550 0    60   ~ 0
A6
Text Label 2500 4450 0    60   ~ 0
A7
Text Label 2500 4350 0    60   ~ 0
A8
Text Label 2500 4250 0    60   ~ 0
A9
Text Label 2500 4150 0    60   ~ 0
A10
Text Label 2500 4050 0    60   ~ 0
A11
Text Label 2500 3950 0    60   ~ 0
A12
Text Label 2500 3850 0    60   ~ 0
A13
Text Label 2500 3750 0    60   ~ 0
A14
Text Label 2500 3650 0    60   ~ 0
A15
Text Label 2500 3550 0    60   ~ 0
A16
Text Label 2500 3450 0    60   ~ 0
A17
Text Label 2500 3350 0    60   ~ 0
A18
Text Label 2500 3250 0    60   ~ 0
A19
Text GLabel 2600 2750 0    60   Input ~ 0
CLKDIV2
$Comp
L GND #PWR?
U 1 1 57614FC4
P 1650 2950
AR Path="/57614FC4" Ref="#PWR?"  Part="1" 
AR Path="/57614F17/57614FC4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1650 2950 30  0001 C CNN
F 1 "GND" H 1650 2880 30  0001 C CNN
F 2 "" H 1650 2950 60  0000 C CNN
F 3 "" H 1650 2950 60  0000 C CNN
	1    1650 2950
	1    0    0    -1  
$EndComp
Text GLabel 2600 2950 0    60   Input ~ 0
-RST
Text GLabel 2300 5150 0    60   Input ~ 0
A0
Text GLabel 2300 5050 0    60   Input ~ 0
A1
Text GLabel 2300 4950 0    60   Input ~ 0
A2
Text GLabel 2300 4850 0    60   Input ~ 0
A3
Text GLabel 2300 4750 0    60   Input ~ 0
A4
Text GLabel 2300 4650 0    60   Input ~ 0
A5
Text GLabel 2300 4550 0    60   Input ~ 0
A6
Text GLabel 2300 4450 0    60   Input ~ 0
A7
Text GLabel 2300 4350 0    60   Input ~ 0
A8
Text GLabel 2300 4250 0    60   Input ~ 0
A9
Text GLabel 2300 4150 0    60   Input ~ 0
A10
Text GLabel 2300 4050 0    60   Input ~ 0
A11
Text GLabel 2300 3950 0    60   Input ~ 0
A12
Text GLabel 2300 3850 0    60   Input ~ 0
A13
Text GLabel 2300 3750 0    60   Input ~ 0
A14
Text GLabel 2300 3650 0    60   Input ~ 0
A15
Text GLabel 2300 3550 0    60   Input ~ 0
A16
Text GLabel 2300 3450 0    60   Input ~ 0
A17
Text GLabel 2300 3350 0    60   Input ~ 0
A18
Text GLabel 2300 3250 0    60   Input ~ 0
A19
Text Label 4950 5150 0    60   ~ 0
D0
Text Label 4950 5050 0    60   ~ 0
D1
Text Label 4950 4950 0    60   ~ 0
D2
Text Label 4950 4850 0    60   ~ 0
D3
Text Label 4950 4750 0    60   ~ 0
D4
Text Label 4950 4650 0    60   ~ 0
D5
Text Label 4950 4550 0    60   ~ 0
D6
Text Label 4950 4450 0    60   ~ 0
D7
Text GLabel 5300 5150 2    60   Input ~ 0
D0
Text GLabel 5300 5050 2    60   Input ~ 0
D1
Text GLabel 5300 4950 2    60   Input ~ 0
D2
Text GLabel 5300 4850 2    60   Input ~ 0
D3
Text GLabel 5300 4750 2    60   Input ~ 0
D4
Text GLabel 5300 4650 2    60   Input ~ 0
D5
Text GLabel 5300 4550 2    60   Input ~ 0
D6
Text GLabel 5300 4450 2    60   Input ~ 0
D7
$Comp
L GAL22V10 U6
U 1 1 5761541E
P 8400 3000
F 0 "U6" H 8350 3800 60  0000 C CNN
F 1 "GAL22V10" H 8400 2050 60  0000 C CNN
F 2 "" H 8400 3000 60  0000 C CNN
F 3 "" H 8400 3000 60  0000 C CNN
	1    8400 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57617BBD
P 6700 2600
AR Path="/57617BBD" Ref="#PWR?"  Part="1" 
AR Path="/57614F17/57617BBD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6700 2600 30  0001 C CNN
F 1 "GND" H 6700 2530 30  0001 C CNN
F 2 "" H 6700 2600 60  0000 C CNN
F 3 "" H 6700 2600 60  0000 C CNN
	1    6700 2600
	1    0    0    -1  
$EndComp
Text Label 4900 4150 0    60   ~ 0
-AS
Text Label 4900 4250 0    60   ~ 0
-DS
Text GLabel 5300 4250 2    60   Input ~ 0
-DS
Text GLabel 5300 4150 2    60   Input ~ 0
-AS
Text GLabel 5300 3950 2    60   Input ~ 0
RW
Text GLabel 7250 2650 0    60   Input ~ 0
CLK
Text GLabel 7250 2750 0    60   Input ~ 0
-RST
Text GLabel 7250 2850 0    60   Input ~ 0
-AS
Text GLabel 7250 2950 0    60   Input ~ 0
-DS
Text GLabel 2600 3050 0    60   Input ~ 0
-HALT
$Comp
L 74LS05 U3
U 3 1 5761C87F
P 8150 5250
F 0 "U3" H 8345 5365 60  0000 C CNN
F 1 "74LS05" H 8340 5125 60  0000 C CNN
F 2 "~" H 8150 5250 60  0000 C CNN
F 3 "~" H 8150 5250 60  0000 C CNN
	3    8150 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5761C8E6
P 6250 3950
AR Path="/5761C8E6" Ref="#PWR?"  Part="1" 
AR Path="/57614F17/5761C8E6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6250 3950 30  0001 C CNN
F 1 "GND" H 6250 3880 30  0001 C CNN
F 2 "" H 6250 3950 60  0000 C CNN
F 3 "" H 6250 3950 60  0000 C CNN
	1    6250 3950
	1    0    0    -1  
$EndComp
Text Notes 5900 4500 0    60   ~ 0
-DTACK and -BERR are hard coded\nfor the initial phase of the project\nwhere there are just ROM and\noutput port devices.
Wire Wire Line
	2800 3250 2300 3250
Wire Wire Line
	2800 3350 2300 3350
Wire Wire Line
	2800 3450 2300 3450
Wire Wire Line
	2800 3550 2300 3550
Wire Wire Line
	2800 3650 2300 3650
Wire Wire Line
	2800 3750 2300 3750
Wire Wire Line
	2800 3850 2300 3850
Wire Wire Line
	2800 3950 2300 3950
Wire Wire Line
	2800 4050 2300 4050
Wire Wire Line
	2800 4150 2300 4150
Wire Wire Line
	2800 4250 2300 4250
Wire Wire Line
	2800 4350 2300 4350
Wire Wire Line
	2800 4450 2300 4450
Wire Wire Line
	2800 4550 2300 4550
Wire Wire Line
	2800 4650 2300 4650
Wire Wire Line
	2800 4750 2300 4750
Wire Wire Line
	2800 4850 2300 4850
Wire Wire Line
	2800 4950 2300 4950
Wire Wire Line
	2800 5050 2300 5050
Wire Wire Line
	2800 5150 2300 5150
Wire Wire Line
	2800 2750 2600 2750
Wire Wire Line
	2800 2950 2600 2950
Wire Wire Line
	2800 2550 1650 2550
Wire Wire Line
	1650 2450 1650 2950
Wire Wire Line
	2800 2450 1650 2450
Wire Wire Line
	2800 2350 1650 2350
Wire Wire Line
	1650 2350 1650 2150
Connection ~ 1650 2550
Wire Wire Line
	4600 5150 5300 5150
Wire Wire Line
	4600 5050 5300 5050
Wire Wire Line
	4600 4950 5300 4950
Wire Wire Line
	4600 4850 5300 4850
Wire Wire Line
	4600 4750 5300 4750
Wire Wire Line
	4600 4650 5300 4650
Wire Wire Line
	4600 4550 5300 4550
Wire Wire Line
	4600 4450 5300 4450
Wire Wire Line
	7700 2350 6700 2350
Wire Wire Line
	6700 2350 6700 2050
Wire Wire Line
	7700 2450 6700 2450
Wire Wire Line
	4600 4150 5300 4150
Wire Wire Line
	4600 4250 5300 4250
Wire Wire Line
	4600 3950 5300 3950
Wire Wire Line
	7700 2650 7250 2650
Wire Wire Line
	7700 2750 7250 2750
Wire Wire Line
	7700 2850 7250 2850
Wire Wire Line
	7700 2950 7250 2950
Wire Wire Line
	6700 2450 6700 2600
Wire Wire Line
	2800 3050 2600 3050
Wire Wire Line
	4600 3750 6250 3750
Wire Wire Line
	6250 3750 6250 3950
$Comp
L R R?
U 1 1 5761DC95
P 6250 1900
AR Path="/5761DC95" Ref="R?"  Part="1" 
AR Path="/57614F17/5761DC95" Ref="R?"  Part="1" 
F 0 "R?" V 6330 1900 40  0000 C CNN
F 1 "10k" V 6257 1901 40  0000 C CNN
F 2 "~" V 6180 1900 30  0000 C CNN
F 3 "~" H 6250 1900 30  0000 C CNN
	1    6250 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1550 6250 1750
$Comp
L R R?
U 1 1 5761E2E3
P 6050 1900
AR Path="/5761E2E3" Ref="R?"  Part="1" 
AR Path="/57614F17/5761E2E3" Ref="R?"  Part="1" 
F 0 "R?" V 6130 1900 40  0000 C CNN
F 1 "10k" V 6057 1901 40  0000 C CNN
F 2 "~" V 5980 1900 30  0000 C CNN
F 3 "~" H 6050 1900 30  0000 C CNN
	1    6050 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1550 6050 1750
$Comp
L R R?
U 1 1 5761E2F0
P 5850 1900
AR Path="/5761E2F0" Ref="R?"  Part="1" 
AR Path="/57614F17/5761E2F0" Ref="R?"  Part="1" 
F 0 "R?" V 5930 1900 40  0000 C CNN
F 1 "10k" V 5857 1901 40  0000 C CNN
F 2 "~" V 5780 1900 30  0000 C CNN
F 3 "~" H 5850 1900 30  0000 C CNN
	1    5850 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1550 5850 1750
$Comp
L R R?
U 1 1 5761E2FD
P 5650 1900
AR Path="/5761E2FD" Ref="R?"  Part="1" 
AR Path="/57614F17/5761E2FD" Ref="R?"  Part="1" 
F 0 "R?" V 5730 1900 40  0000 C CNN
F 1 "10k" V 5657 1901 40  0000 C CNN
F 2 "~" V 5580 1900 30  0000 C CNN
F 3 "~" H 5650 1900 30  0000 C CNN
	1    5650 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1550 5650 1750
Wire Wire Line
	5650 2350 4600 2350
Wire Wire Line
	5650 2050 5650 2350
Wire Wire Line
	5850 2450 4600 2450
Wire Wire Line
	5850 2050 5850 2450
Wire Wire Line
	6050 3050 4600 3050
Wire Wire Line
	6050 2050 6050 3050
Wire Wire Line
	6250 3650 4600 3650
Wire Wire Line
	6250 2050 6250 3650
Text Notes 3750 1700 0    60   ~ 0
The IPL lines are not used at this\npoint (ROM-only) since there are no\nperipherals generating interrupts.
Wire Wire Line
	9100 2650 9650 2650
Text GLabel 9650 2650 2    60   Input ~ 0
-ROMEN
Wire Wire Line
	7700 3450 7250 3450
Wire Wire Line
	7700 3550 7250 3550
Wire Wire Line
	7700 3650 7250 3650
Wire Wire Line
	7700 3750 7250 3750
Text GLabel 7250 3450 0    60   Input ~ 0
A16
Text GLabel 7250 3550 0    60   Input ~ 0
A17
Text GLabel 7250 3650 0    60   Input ~ 0
A18
Text GLabel 7250 3750 0    60   Input ~ 0
A19
$Comp
L VCC #PWR?
U 1 1 57644DE8
P 1650 2150
F 0 "#PWR?" H 1650 2000 50  0001 C CNN
F 1 "VCC" H 1650 2300 50  0000 C CNN
F 2 "" H 1650 2150 50  0000 C CNN
F 3 "" H 1650 2150 50  0000 C CNN
	1    1650 2150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 57644E3C
P 6700 2050
F 0 "#PWR?" H 6700 1900 50  0001 C CNN
F 1 "VCC" H 6700 2200 50  0000 C CNN
F 2 "" H 6700 2050 50  0000 C CNN
F 3 "" H 6700 2050 50  0000 C CNN
	1    6700 2050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 57644E6C
P 5950 1350
F 0 "#PWR?" H 5950 1200 50  0001 C CNN
F 1 "VCC" H 5950 1500 50  0000 C CNN
F 2 "" H 5950 1350 50  0000 C CNN
F 3 "" H 5950 1350 50  0000 C CNN
	1    5950 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1550 6250 1550
Connection ~ 5850 1550
Connection ~ 6050 1550
Wire Wire Line
	5950 1350 5950 1550
Connection ~ 5950 1550
Wire Wire Line
	4600 2650 4900 2650
Wire Wire Line
	4600 2750 4900 2750
Wire Wire Line
	4600 2850 4900 2850
Text GLabel 4900 2650 2    60   Input ~ 0
FC2
Text GLabel 4900 2750 2    60   Input ~ 0
FC1
Text GLabel 4900 2850 2    60   Input ~ 0
FC0
Wire Wire Line
	7700 3150 7250 3150
Wire Wire Line
	7700 3250 7250 3250
Wire Wire Line
	7700 3350 7250 3350
Text GLabel 7250 3150 0    60   Input ~ 0
FC0
Text GLabel 7250 3250 0    60   Input ~ 0
FC1
Text GLabel 7250 3350 0    60   Input ~ 0
FC2
Wire Wire Line
	7700 3050 7250 3050
Text GLabel 7250 3050 0    60   Input ~ 0
RW
Wire Wire Line
	9100 3150 9650 3150
Text GLabel 9650 3150 2    60   Input ~ 0
-OPORTEN
$EndSCHEMATC
