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
LIBS:ya68k
LIBS:borniers
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
P 2750 3700
F 0 "U5" H 2700 5200 60  0000 C CNN
F 1 "MC68008P" H 2750 3700 60  0000 C CNN
F 2 "" H 2750 3700 60  0000 C CNN
F 3 "" H 2750 3700 60  0000 C CNN
	1    2750 3700
	1    0    0    -1  
$EndComp
Text Label 1550 5150 0    60   ~ 0
A0
Text Label 1550 5050 0    60   ~ 0
A1
Text Label 1550 4950 0    60   ~ 0
A2
Text Label 1550 4850 0    60   ~ 0
A3
Text Label 1550 4750 0    60   ~ 0
A4
Text Label 1550 4650 0    60   ~ 0
A5
Text Label 1550 4550 0    60   ~ 0
A6
Text Label 1550 4450 0    60   ~ 0
A7
Text Label 1550 4350 0    60   ~ 0
A8
Text Label 1550 4250 0    60   ~ 0
A9
Text Label 1550 4150 0    60   ~ 0
A10
Text Label 1550 4050 0    60   ~ 0
A11
Text Label 1550 3950 0    60   ~ 0
A12
Text Label 1550 3850 0    60   ~ 0
A13
Text Label 1550 3750 0    60   ~ 0
A14
Text Label 1550 3650 0    60   ~ 0
A15
Text Label 1550 3550 0    60   ~ 0
A16
Text Label 1550 3450 0    60   ~ 0
A17
Text Label 1550 3350 0    60   ~ 0
A18
Text Label 1550 3250 0    60   ~ 0
A19
$Comp
L GND #PWR?
U 1 1 57614FC4
P 700 2950
AR Path="/57614FC4" Ref="#PWR?"  Part="1" 
AR Path="/57614F17/57614FC4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 700 2950 30  0001 C CNN
F 1 "GND" H 700 2880 30  0001 C CNN
F 2 "" H 700 2950 60  0000 C CNN
F 3 "" H 700 2950 60  0000 C CNN
	1    700  2950
	1    0    0    -1  
$EndComp
Text GLabel 1650 2950 0    60   Input ~ 0
-RST
Text GLabel 1350 5150 0    60   Input ~ 0
A0
Text GLabel 1350 5050 0    60   Input ~ 0
A1
Text GLabel 1350 4950 0    60   Input ~ 0
A2
Text GLabel 1350 4850 0    60   Input ~ 0
A3
Text GLabel 1350 4750 0    60   Input ~ 0
A4
Text GLabel 1350 4650 0    60   Input ~ 0
A5
Text GLabel 1350 4550 0    60   Input ~ 0
A6
Text GLabel 1350 4450 0    60   Input ~ 0
A7
Text GLabel 1350 4350 0    60   Input ~ 0
A8
Text GLabel 1350 4250 0    60   Input ~ 0
A9
Text GLabel 1350 4150 0    60   Input ~ 0
A10
Text GLabel 1350 4050 0    60   Input ~ 0
A11
Text GLabel 1350 3950 0    60   Input ~ 0
A12
Text GLabel 1350 3850 0    60   Input ~ 0
A13
Text GLabel 1350 3750 0    60   Input ~ 0
A14
Text GLabel 1350 3650 0    60   Input ~ 0
A15
Text GLabel 1350 3550 0    60   Input ~ 0
A16
Text GLabel 1350 3450 0    60   Input ~ 0
A17
Text GLabel 1350 3350 0    60   Input ~ 0
A18
Text GLabel 1350 3250 0    60   Input ~ 0
A19
Text Label 5500 5150 0    60   ~ 0
D0
Text Label 5500 5050 0    60   ~ 0
D1
Text Label 5500 4950 0    60   ~ 0
D2
Text Label 5500 4850 0    60   ~ 0
D3
Text Label 5500 4750 0    60   ~ 0
D4
Text Label 5500 4650 0    60   ~ 0
D5
Text Label 5500 4550 0    60   ~ 0
D6
Text Label 5500 4450 0    60   ~ 0
D7
Text GLabel 5850 5150 2    60   Input ~ 0
D0
Text GLabel 5850 5050 2    60   Input ~ 0
D1
Text GLabel 5850 4950 2    60   Input ~ 0
D2
Text GLabel 5850 4850 2    60   Input ~ 0
D3
Text GLabel 5850 4750 2    60   Input ~ 0
D4
Text GLabel 5850 4650 2    60   Input ~ 0
D5
Text GLabel 5850 4550 2    60   Input ~ 0
D6
Text GLabel 5850 4450 2    60   Input ~ 0
D7
$Comp
L GAL22V10 U6
U 1 1 5761541E
P 8500 2900
F 0 "U6" H 8450 3700 60  0000 C CNN
F 1 "GAL22V10" H 8500 1950 60  0000 C CNN
F 2 "" H 8500 2900 60  0000 C CNN
F 3 "" H 8500 2900 60  0000 C CNN
	1    8500 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57617BBD
P 6800 2500
AR Path="/57617BBD" Ref="#PWR?"  Part="1" 
AR Path="/57614F17/57617BBD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6800 2500 30  0001 C CNN
F 1 "GND" H 6800 2430 30  0001 C CNN
F 2 "" H 6800 2500 60  0000 C CNN
F 3 "" H 6800 2500 60  0000 C CNN
	1    6800 2500
	1    0    0    -1  
$EndComp
Text Label 3950 4150 0    60   ~ 0
-AS
Text Label 3950 4250 0    60   ~ 0
-DS
Text GLabel 4350 4250 2    60   Input ~ 0
-DS
Text GLabel 4350 4150 2    60   Input ~ 0
-AS
Text GLabel 4350 3950 2    60   Input ~ 0
RW
Text GLabel 7350 2550 0    60   Input ~ 0
CLK
Text GLabel 7350 2650 0    60   Input ~ 0
-RST
Text GLabel 7350 2750 0    60   Input ~ 0
-AS
Text GLabel 7350 2850 0    60   Input ~ 0
-DS
Text GLabel 1650 3050 0    60   Input ~ 0
-HALT
$Comp
L GND #PWR?
U 1 1 5761C8E6
P 5300 3950
AR Path="/5761C8E6" Ref="#PWR?"  Part="1" 
AR Path="/57614F17/5761C8E6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5300 3950 30  0001 C CNN
F 1 "GND" H 5300 3880 30  0001 C CNN
F 2 "" H 5300 3950 60  0000 C CNN
F 3 "" H 5300 3950 60  0000 C CNN
	1    5300 3950
	1    0    0    -1  
$EndComp
Text Notes 5400 3550 0    60   ~ 0
-DTACK, -BERR, -VPA,\nand -BR are hard wired\nfor the initial phase of\nthe project (with just\nROM and output port\ndevices.)
Wire Wire Line
	1850 3250 1350 3250
Wire Wire Line
	1850 3350 1350 3350
Wire Wire Line
	1850 3450 1350 3450
Wire Wire Line
	1850 3550 1350 3550
Wire Wire Line
	1850 3650 1350 3650
Wire Wire Line
	1850 3750 1350 3750
Wire Wire Line
	1850 3850 1350 3850
Wire Wire Line
	1850 3950 1350 3950
Wire Wire Line
	1850 4050 1350 4050
Wire Wire Line
	1850 4150 1350 4150
Wire Wire Line
	1850 4250 1350 4250
Wire Wire Line
	1850 4350 1350 4350
Wire Wire Line
	1850 4450 1350 4450
Wire Wire Line
	1850 4550 1350 4550
Wire Wire Line
	1850 4650 1350 4650
Wire Wire Line
	1850 4750 1350 4750
Wire Wire Line
	1850 4850 1350 4850
Wire Wire Line
	1850 4950 1350 4950
Wire Wire Line
	1850 5050 1350 5050
Wire Wire Line
	1850 5150 1350 5150
Wire Wire Line
	1850 2750 1650 2750
Wire Wire Line
	1850 2950 1650 2950
Wire Wire Line
	1850 2550 700  2550
Wire Wire Line
	700  2450 700  2950
Wire Wire Line
	1850 2450 700  2450
Connection ~ 700  2550
Wire Wire Line
	3650 5150 5850 5150
Wire Wire Line
	3650 5050 5850 5050
Wire Wire Line
	3650 4950 5850 4950
Wire Wire Line
	3650 4850 5850 4850
Wire Wire Line
	3650 4750 5850 4750
Wire Wire Line
	3650 4650 5850 4650
Wire Wire Line
	3650 4550 5850 4550
Wire Wire Line
	3650 4450 5850 4450
Wire Wire Line
	7800 2350 6800 2350
Wire Wire Line
	3650 4150 4350 4150
Wire Wire Line
	3650 4250 4350 4250
Wire Wire Line
	3650 3950 4350 3950
Wire Wire Line
	7800 2550 7350 2550
Wire Wire Line
	7800 2650 7350 2650
Wire Wire Line
	7800 2750 7350 2750
Wire Wire Line
	7800 2850 7350 2850
Wire Wire Line
	6800 2350 6800 2500
Wire Wire Line
	1850 3050 1650 3050
Wire Wire Line
	3650 3750 5300 3750
Wire Wire Line
	5300 3750 5300 3950
Wire Wire Line
	5300 3650 3650 3650
Text Notes 2800 2200 0    60   ~ 0
The IPL lines are not used at this\npoint (ROM-only) since there are no\nperipherals generating interrupts.
Wire Wire Line
	9200 2550 9750 2550
Text GLabel 9750 2550 2    60   Input ~ 0
-ROMEN
Wire Wire Line
	7800 3350 7350 3350
Wire Wire Line
	7800 3450 7350 3450
Wire Wire Line
	7800 3550 7350 3550
Wire Wire Line
	7800 3650 7350 3650
Text GLabel 7350 3350 0    60   Input ~ 0
A16
Text GLabel 7350 3450 0    60   Input ~ 0
A17
Text GLabel 7350 3550 0    60   Input ~ 0
A18
Text GLabel 7350 3650 0    60   Input ~ 0
A19
$Comp
L VCC #PWR?
U 1 1 57644DE8
P 700 1650
F 0 "#PWR?" H 700 1500 50  0001 C CNN
F 1 "VCC" H 700 1800 50  0000 C CNN
F 2 "" H 700 1650 50  0000 C CNN
F 3 "" H 700 1650 50  0000 C CNN
	1    700  1650
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 57644E3C
P 6800 1600
F 0 "#PWR?" H 6800 1450 50  0001 C CNN
F 1 "VCC" H 6800 1750 50  0000 C CNN
F 2 "" H 6800 1600 50  0000 C CNN
F 3 "" H 6800 1600 50  0000 C CNN
	1    6800 1600
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 57644E6C
P 4500 1350
F 0 "#PWR?" H 4500 1200 50  0001 C CNN
F 1 "VCC" H 4500 1500 50  0000 C CNN
F 2 "" H 4500 1350 50  0000 C CNN
F 3 "" H 4500 1350 50  0000 C CNN
	1    4500 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2650 3950 2650
Wire Wire Line
	3650 2750 3950 2750
Wire Wire Line
	3650 2850 3950 2850
Text GLabel 3950 2650 2    60   Input ~ 0
FC2
Text GLabel 3950 2750 2    60   Input ~ 0
FC1
Text GLabel 3950 2850 2    60   Input ~ 0
FC0
Wire Wire Line
	7800 3050 7350 3050
Wire Wire Line
	7800 3150 7350 3150
Wire Wire Line
	7800 3250 7350 3250
Text GLabel 7350 3050 0    60   Input ~ 0
FC0
Text GLabel 7350 3150 0    60   Input ~ 0
FC1
Text GLabel 7350 3250 0    60   Input ~ 0
FC2
Wire Wire Line
	7800 2950 7350 2950
Text GLabel 7350 2950 0    60   Input ~ 0
RW
Wire Wire Line
	9200 3050 9750 3050
Text GLabel 9750 3050 2    60   Input ~ 0
-OPORTEN
Wire Wire Line
	700  1650 700  1750
Wire Wire Line
	700  1750 1500 1750
Wire Wire Line
	1500 1750 1500 2350
Wire Wire Line
	1500 2350 1850 2350
$Comp
L C C5
U 1 1 57658E97
P 900 2100
F 0 "C5" H 925 2200 50  0000 L CNN
F 1 "0.1uF" H 925 2000 50  0000 L CNN
F 2 "" H 938 1950 50  0000 C CNN
F 3 "" H 900 2100 50  0000 C CNN
	1    900  2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  1950 900  1750
Connection ~ 900  1750
Wire Wire Line
	900  2250 900  2450
Connection ~ 900  2450
Wire Wire Line
	6800 1600 6800 1700
Wire Wire Line
	6800 1700 7600 1700
Wire Wire Line
	7600 1700 7600 2250
Wire Wire Line
	7600 2250 7800 2250
$Comp
L C C6
U 1 1 576592F1
P 6950 2000
F 0 "C6" H 6975 2100 50  0000 L CNN
F 1 "0.1uF" H 6975 1900 50  0000 L CNN
F 2 "" H 6988 1850 50  0000 C CNN
F 3 "" H 6950 2000 50  0000 C CNN
	1    6950 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1850 6950 1700
Connection ~ 6950 1700
Wire Wire Line
	6950 2150 6950 2350
Connection ~ 6950 2350
$Comp
L RR8 RR2
U 1 1 57669443
P 7050 5850
F 0 "RR2" H 7100 6400 50  0000 C CNN
F 1 "10k" V 7080 5850 50  0000 C CNN
F 2 "" H 7050 5850 50  0000 C CNN
F 3 "" H 7050 5850 50  0000 C CNN
	1    7050 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5400 6550 5400
Wire Wire Line
	6550 5400 6550 5100
$Comp
L VCC #PWR?
U 1 1 57669724
P 6550 5100
F 0 "#PWR?" H 6550 4950 50  0001 C CNN
F 1 "VCC" H 6550 5250 50  0000 C CNN
F 2 "" H 6550 5100 50  0000 C CNN
F 3 "" H 6550 5100 50  0000 C CNN
	1    6550 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5500 5200 5500
Wire Wire Line
	5200 5500 5200 5150
Connection ~ 5200 5150
Wire Wire Line
	6700 5600 5100 5600
Wire Wire Line
	5100 5600 5100 5050
Connection ~ 5100 5050
Wire Wire Line
	6700 5700 5000 5700
Wire Wire Line
	5000 5700 5000 4950
Connection ~ 5000 4950
Wire Wire Line
	6700 5800 4900 5800
Wire Wire Line
	4900 5800 4900 4850
Connection ~ 4900 4850
Wire Wire Line
	6700 5900 4800 5900
Wire Wire Line
	4800 5900 4800 4750
Connection ~ 4800 4750
Wire Wire Line
	6700 6000 4700 6000
Wire Wire Line
	4700 6000 4700 4650
Connection ~ 4700 4650
Wire Wire Line
	6700 6100 4600 6100
Wire Wire Line
	4600 6100 4600 4550
Connection ~ 4600 4550
Wire Wire Line
	6700 6200 4500 6200
Wire Wire Line
	4500 6200 4500 4450
Connection ~ 4500 4450
Text Notes 7300 5650 0    60   ~ 0
10k pull ups on data bus, idea from 68Katy\n(http://www.bigmessowires.com/68-katy/)
Wire Wire Line
	9200 3450 9750 3450
Text GLabel 9750 3450 2    60   Input ~ 0
-DEVOE
Text Notes 10400 4200 2    60   ~ 0
-DEVOE inverts processor's\nR/-W, and is fed to the -OE\npin of I/O devices so that they\noutput to data bus during read\ncycles and read from data bus\nduring write cycles. (Another\nidea stolen from 68Katy.)
Wire Wire Line
	3650 2350 4900 2350
Wire Wire Line
	3650 2450 5000 2450
Wire Wire Line
	3650 3050 5100 3050
Wire Wire Line
	3650 3350 5200 3350
Text GLabel 1650 2750 0    60   Input ~ 0
CLK
$Comp
L RR8 RR1
U 1 1 57694B36
P 5250 1550
F 0 "RR1" H 5300 2100 50  0000 C CNN
F 1 "10k" V 5280 1550 50  0000 C CNN
F 2 "" H 5250 1550 50  0000 C CNN
F 3 "" H 5250 1550 50  0000 C CNN
	1    5250 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 1900 4800 2000
Wire Wire Line
	4800 2000 4500 2000
Wire Wire Line
	4500 2000 4500 1350
Wire Wire Line
	4900 2350 4900 1900
Wire Wire Line
	5000 2450 5000 1900
Wire Wire Line
	5100 3050 5100 1900
Wire Wire Line
	5200 3350 5200 1900
Wire Wire Line
	5300 3650 5300 1900
$EndSCHEMATC
