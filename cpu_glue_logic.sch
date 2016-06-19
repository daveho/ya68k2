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
Sheet 3 5
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
P 3100 3700
F 0 "U5" H 3050 5200 60  0000 C CNN
F 1 "MC68008P" H 3100 3700 60  0000 C CNN
F 2 "" H 3100 3700 60  0000 C CNN
F 3 "" H 3100 3700 60  0000 C CNN
	1    3100 3700
	1    0    0    -1  
$EndComp
Text Label 1900 5150 0    60   ~ 0
A0
Text Label 1900 5050 0    60   ~ 0
A1
Text Label 1900 4950 0    60   ~ 0
A2
Text Label 1900 4850 0    60   ~ 0
A3
Text Label 1900 4750 0    60   ~ 0
A4
Text Label 1900 4650 0    60   ~ 0
A5
Text Label 1900 4550 0    60   ~ 0
A6
Text Label 1900 4450 0    60   ~ 0
A7
Text Label 1900 4350 0    60   ~ 0
A8
Text Label 1900 4250 0    60   ~ 0
A9
Text Label 1900 4150 0    60   ~ 0
A10
Text Label 1900 4050 0    60   ~ 0
A11
Text Label 1900 3950 0    60   ~ 0
A12
Text Label 1900 3850 0    60   ~ 0
A13
Text Label 1900 3750 0    60   ~ 0
A14
Text Label 1900 3650 0    60   ~ 0
A15
Text Label 1900 3550 0    60   ~ 0
A16
Text Label 1900 3450 0    60   ~ 0
A17
Text Label 1900 3350 0    60   ~ 0
A18
Text Label 1900 3250 0    60   ~ 0
A19
Text GLabel 2000 2750 0    60   Input ~ 0
CLKDIV2
$Comp
L GND #PWR?
U 1 1 57614FC4
P 1050 2950
AR Path="/57614FC4" Ref="#PWR?"  Part="1" 
AR Path="/57614F17/57614FC4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1050 2950 30  0001 C CNN
F 1 "GND" H 1050 2880 30  0001 C CNN
F 2 "" H 1050 2950 60  0000 C CNN
F 3 "" H 1050 2950 60  0000 C CNN
	1    1050 2950
	1    0    0    -1  
$EndComp
Text GLabel 2000 2950 0    60   Input ~ 0
-RST
Text GLabel 1700 5150 0    60   Input ~ 0
A0
Text GLabel 1700 5050 0    60   Input ~ 0
A1
Text GLabel 1700 4950 0    60   Input ~ 0
A2
Text GLabel 1700 4850 0    60   Input ~ 0
A3
Text GLabel 1700 4750 0    60   Input ~ 0
A4
Text GLabel 1700 4650 0    60   Input ~ 0
A5
Text GLabel 1700 4550 0    60   Input ~ 0
A6
Text GLabel 1700 4450 0    60   Input ~ 0
A7
Text GLabel 1700 4350 0    60   Input ~ 0
A8
Text GLabel 1700 4250 0    60   Input ~ 0
A9
Text GLabel 1700 4150 0    60   Input ~ 0
A10
Text GLabel 1700 4050 0    60   Input ~ 0
A11
Text GLabel 1700 3950 0    60   Input ~ 0
A12
Text GLabel 1700 3850 0    60   Input ~ 0
A13
Text GLabel 1700 3750 0    60   Input ~ 0
A14
Text GLabel 1700 3650 0    60   Input ~ 0
A15
Text GLabel 1700 3550 0    60   Input ~ 0
A16
Text GLabel 1700 3450 0    60   Input ~ 0
A17
Text GLabel 1700 3350 0    60   Input ~ 0
A18
Text GLabel 1700 3250 0    60   Input ~ 0
A19
Text Label 5850 5150 0    60   ~ 0
D0
Text Label 5850 5050 0    60   ~ 0
D1
Text Label 5850 4950 0    60   ~ 0
D2
Text Label 5850 4850 0    60   ~ 0
D3
Text Label 5850 4750 0    60   ~ 0
D4
Text Label 5850 4650 0    60   ~ 0
D5
Text Label 5850 4550 0    60   ~ 0
D6
Text Label 5850 4450 0    60   ~ 0
D7
Text GLabel 6200 5150 2    60   Input ~ 0
D0
Text GLabel 6200 5050 2    60   Input ~ 0
D1
Text GLabel 6200 4950 2    60   Input ~ 0
D2
Text GLabel 6200 4850 2    60   Input ~ 0
D3
Text GLabel 6200 4750 2    60   Input ~ 0
D4
Text GLabel 6200 4650 2    60   Input ~ 0
D5
Text GLabel 6200 4550 2    60   Input ~ 0
D6
Text GLabel 6200 4450 2    60   Input ~ 0
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
Text Label 4300 4150 0    60   ~ 0
-AS
Text Label 4300 4250 0    60   ~ 0
-DS
Text GLabel 4700 4250 2    60   Input ~ 0
-DS
Text GLabel 4700 4150 2    60   Input ~ 0
-AS
Text GLabel 4700 3950 2    60   Input ~ 0
RW
Text GLabel 7250 2650 0    60   Input ~ 0
CLK
Text GLabel 7250 2750 0    60   Input ~ 0
-RST
Text GLabel 7250 2850 0    60   Input ~ 0
-AS
Text GLabel 7250 2950 0    60   Input ~ 0
-DS
Text GLabel 2000 3050 0    60   Input ~ 0
-HALT
$Comp
L GND #PWR?
U 1 1 5761C8E6
P 5650 3950
AR Path="/5761C8E6" Ref="#PWR?"  Part="1" 
AR Path="/57614F17/5761C8E6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5650 3950 30  0001 C CNN
F 1 "GND" H 5650 3880 30  0001 C CNN
F 2 "" H 5650 3950 60  0000 C CNN
F 3 "" H 5650 3950 60  0000 C CNN
	1    5650 3950
	1    0    0    -1  
$EndComp
Text Notes 4200 3600 0    60   ~ 0
-DTACK and -BERR are hard\ncoded for the initial phase of\nthe project (with just ROM and\noutput port devices.)
Wire Wire Line
	2200 3250 1700 3250
Wire Wire Line
	2200 3350 1700 3350
Wire Wire Line
	2200 3450 1700 3450
Wire Wire Line
	2200 3550 1700 3550
Wire Wire Line
	2200 3650 1700 3650
Wire Wire Line
	2200 3750 1700 3750
Wire Wire Line
	2200 3850 1700 3850
Wire Wire Line
	2200 3950 1700 3950
Wire Wire Line
	2200 4050 1700 4050
Wire Wire Line
	2200 4150 1700 4150
Wire Wire Line
	2200 4250 1700 4250
Wire Wire Line
	2200 4350 1700 4350
Wire Wire Line
	2200 4450 1700 4450
Wire Wire Line
	2200 4550 1700 4550
Wire Wire Line
	2200 4650 1700 4650
Wire Wire Line
	2200 4750 1700 4750
Wire Wire Line
	2200 4850 1700 4850
Wire Wire Line
	2200 4950 1700 4950
Wire Wire Line
	2200 5050 1700 5050
Wire Wire Line
	2200 5150 1700 5150
Wire Wire Line
	2200 2750 2000 2750
Wire Wire Line
	2200 2950 2000 2950
Wire Wire Line
	2200 2550 1050 2550
Wire Wire Line
	1050 2450 1050 2950
Wire Wire Line
	2200 2450 1050 2450
Connection ~ 1050 2550
Wire Wire Line
	4000 5150 6200 5150
Wire Wire Line
	4000 5050 6200 5050
Wire Wire Line
	4000 4950 6200 4950
Wire Wire Line
	4000 4850 6200 4850
Wire Wire Line
	4000 4750 6200 4750
Wire Wire Line
	4000 4650 6200 4650
Wire Wire Line
	4000 4550 6200 4550
Wire Wire Line
	4000 4450 6200 4450
Wire Wire Line
	7700 2450 6700 2450
Wire Wire Line
	4000 4150 4700 4150
Wire Wire Line
	4000 4250 4700 4250
Wire Wire Line
	4000 3950 4700 3950
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
	2200 3050 2000 3050
Wire Wire Line
	4000 3750 5650 3750
Wire Wire Line
	5650 3750 5650 3950
$Comp
L R R?
U 1 1 5761DC95
P 5650 1900
AR Path="/5761DC95" Ref="R?"  Part="1" 
AR Path="/57614F17/5761DC95" Ref="R6"  Part="1" 
F 0 "R6" V 5730 1900 40  0000 C CNN
F 1 "10k" V 5657 1901 40  0000 C CNN
F 2 "~" V 5580 1900 30  0000 C CNN
F 3 "~" H 5650 1900 30  0000 C CNN
	1    5650 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1550 5650 1750
$Comp
L R R?
U 1 1 5761E2E3
P 5450 1900
AR Path="/5761E2E3" Ref="R?"  Part="1" 
AR Path="/57614F17/5761E2E3" Ref="R5"  Part="1" 
F 0 "R5" V 5530 1900 40  0000 C CNN
F 1 "10k" V 5457 1901 40  0000 C CNN
F 2 "~" V 5380 1900 30  0000 C CNN
F 3 "~" H 5450 1900 30  0000 C CNN
	1    5450 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1550 5450 1750
$Comp
L R R?
U 1 1 5761E2F0
P 5250 1900
AR Path="/5761E2F0" Ref="R?"  Part="1" 
AR Path="/57614F17/5761E2F0" Ref="R4"  Part="1" 
F 0 "R4" V 5330 1900 40  0000 C CNN
F 1 "10k" V 5257 1901 40  0000 C CNN
F 2 "~" V 5180 1900 30  0000 C CNN
F 3 "~" H 5250 1900 30  0000 C CNN
	1    5250 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1550 5250 1750
$Comp
L R R?
U 1 1 5761E2FD
P 5050 1900
AR Path="/5761E2FD" Ref="R?"  Part="1" 
AR Path="/57614F17/5761E2FD" Ref="R3"  Part="1" 
F 0 "R3" V 5130 1900 40  0000 C CNN
F 1 "10k" V 5057 1901 40  0000 C CNN
F 2 "~" V 4980 1900 30  0000 C CNN
F 3 "~" H 5050 1900 30  0000 C CNN
	1    5050 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1550 5050 1750
Wire Wire Line
	5050 2350 4000 2350
Wire Wire Line
	5050 2050 5050 2350
Wire Wire Line
	5250 2450 4000 2450
Wire Wire Line
	5250 2050 5250 2450
Wire Wire Line
	5450 3050 4000 3050
Wire Wire Line
	5450 2050 5450 3050
Wire Wire Line
	5650 3650 4000 3650
Wire Wire Line
	5650 2050 5650 3650
Text Notes 3150 1700 0    60   ~ 0
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
P 1050 1650
F 0 "#PWR?" H 1050 1500 50  0001 C CNN
F 1 "VCC" H 1050 1800 50  0000 C CNN
F 2 "" H 1050 1650 50  0000 C CNN
F 3 "" H 1050 1650 50  0000 C CNN
	1    1050 1650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 57644E3C
P 6700 1700
F 0 "#PWR?" H 6700 1550 50  0001 C CNN
F 1 "VCC" H 6700 1850 50  0000 C CNN
F 2 "" H 6700 1700 50  0000 C CNN
F 3 "" H 6700 1700 50  0000 C CNN
	1    6700 1700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 57644E6C
P 5350 1350
F 0 "#PWR?" H 5350 1200 50  0001 C CNN
F 1 "VCC" H 5350 1500 50  0000 C CNN
F 2 "" H 5350 1350 50  0000 C CNN
F 3 "" H 5350 1350 50  0000 C CNN
	1    5350 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1550 5650 1550
Connection ~ 5250 1550
Connection ~ 5450 1550
Wire Wire Line
	5350 1350 5350 1550
Connection ~ 5350 1550
Wire Wire Line
	4000 2650 4300 2650
Wire Wire Line
	4000 2750 4300 2750
Wire Wire Line
	4000 2850 4300 2850
Text GLabel 4300 2650 2    60   Input ~ 0
FC2
Text GLabel 4300 2750 2    60   Input ~ 0
FC1
Text GLabel 4300 2850 2    60   Input ~ 0
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
Wire Wire Line
	1050 1650 1050 1750
Wire Wire Line
	1050 1750 1850 1750
Wire Wire Line
	1850 1750 1850 2350
Wire Wire Line
	1850 2350 2200 2350
$Comp
L C C5
U 1 1 57658E97
P 1250 2100
F 0 "C5" H 1275 2200 50  0000 L CNN
F 1 "0.1uF" H 1275 2000 50  0000 L CNN
F 2 "" H 1288 1950 50  0000 C CNN
F 3 "" H 1250 2100 50  0000 C CNN
	1    1250 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1950 1250 1750
Connection ~ 1250 1750
Wire Wire Line
	1250 2250 1250 2450
Connection ~ 1250 2450
Wire Wire Line
	6700 1700 6700 1800
Wire Wire Line
	6700 1800 7500 1800
Wire Wire Line
	7500 1800 7500 2350
Wire Wire Line
	7500 2350 7700 2350
$Comp
L C C6
U 1 1 576592F1
P 6850 2100
F 0 "C6" H 6875 2200 50  0000 L CNN
F 1 "0.1uF" H 6875 2000 50  0000 L CNN
F 2 "" H 6888 1950 50  0000 C CNN
F 3 "" H 6850 2100 50  0000 C CNN
	1    6850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1950 6850 1800
Connection ~ 6850 1800
Wire Wire Line
	6850 2250 6850 2450
Connection ~ 6850 2450
$Comp
L RR8 RR?
U 1 1 57669443
P 7400 5850
F 0 "RR?" H 7450 6400 50  0000 C CNN
F 1 "10k" V 7430 5850 50  0000 C CNN
F 2 "" H 7400 5850 50  0000 C CNN
F 3 "" H 7400 5850 50  0000 C CNN
	1    7400 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5400 6900 5400
Wire Wire Line
	6900 5400 6900 5100
$Comp
L VCC #PWR?
U 1 1 57669724
P 6900 5100
F 0 "#PWR?" H 6900 4950 50  0001 C CNN
F 1 "VCC" H 6900 5250 50  0000 C CNN
F 2 "" H 6900 5100 50  0000 C CNN
F 3 "" H 6900 5100 50  0000 C CNN
	1    6900 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5500 5550 5500
Wire Wire Line
	5550 5500 5550 5150
Connection ~ 5550 5150
Wire Wire Line
	7050 5600 5450 5600
Wire Wire Line
	5450 5600 5450 5050
Connection ~ 5450 5050
Wire Wire Line
	7050 5700 5350 5700
Wire Wire Line
	5350 5700 5350 4950
Connection ~ 5350 4950
Wire Wire Line
	7050 5800 5250 5800
Wire Wire Line
	5250 5800 5250 4850
Connection ~ 5250 4850
Wire Wire Line
	7050 5900 5150 5900
Wire Wire Line
	5150 5900 5150 4750
Connection ~ 5150 4750
Wire Wire Line
	7050 6000 5050 6000
Wire Wire Line
	5050 6000 5050 4650
Connection ~ 5050 4650
Wire Wire Line
	7050 6100 4950 6100
Wire Wire Line
	4950 6100 4950 4550
Connection ~ 4950 4550
Wire Wire Line
	7050 6200 4850 6200
Wire Wire Line
	4850 6200 4850 4450
Connection ~ 4850 4450
Text Notes 7650 5650 0    60   ~ 0
10k pull ups on data bus, idea from 68Katy\n(http://www.bigmessowires.com/68-katy/)
Wire Wire Line
	9100 3550 9650 3550
Text GLabel 9650 3550 2    60   Input ~ 0
-DEVOE
Text Notes 10300 4300 2    60   ~ 0
-DEVOE inverts processor's\nR/-W, and is fed to the -OE\npin of I/O devices so that they\noutput to data bus during read\ncycles and read from data bus\nduring write cycles. (Another\nidea stolen from 68Katy.)
$EndSCHEMATC
