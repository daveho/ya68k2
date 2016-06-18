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
Sheet 2 4
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
L VCC #PWR?
U 1 1 57614E17
P 1600 1650
F 0 "#PWR?" H 1600 1500 50  0001 C CNN
F 1 "VCC" H 1600 1800 50  0000 C CNN
F 2 "" H 1600 1650 50  0000 C CNN
F 3 "" H 1600 1650 50  0000 C CNN
	1    1600 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57614E1D
P 1600 2200
AR Path="/57614E1D" Ref="#PWR?"  Part="1" 
AR Path="/57614D51/57614E1D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1600 1950 50  0001 C CNN
F 1 "GND" H 1600 2050 50  0000 C CNN
F 2 "" H 1600 2200 50  0000 C CNN
F 3 "" H 1600 2200 50  0000 C CNN
	1    1600 2200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 57614E29
P 1600 2800
F 0 "#PWR?" H 1600 2650 50  0001 C CNN
F 1 "VCC" H 1600 2950 50  0000 C CNN
F 2 "" H 1600 2800 50  0000 C CNN
F 3 "" H 1600 2800 50  0000 C CNN
	1    1600 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57614E2F
P 1600 4150
AR Path="/57614E2F" Ref="#PWR?"  Part="1" 
AR Path="/57614D51/57614E2F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1600 3900 50  0001 C CNN
F 1 "GND" H 1600 4000 50  0000 C CNN
F 2 "" H 1600 4150 50  0000 C CNN
F 3 "" H 1600 4150 50  0000 C CNN
	1    1600 4150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 57614E38
P 4900 2950
AR Path="/57614E38" Ref="R?"  Part="1" 
AR Path="/57614D51/57614E38" Ref="R?"  Part="1" 
F 0 "R?" V 4980 2950 50  0000 C CNN
F 1 "4.7K" V 4900 2950 50  0000 C CNN
F 2 "" V 4830 2950 50  0000 C CNN
F 3 "" H 4900 2950 50  0000 C CNN
	1    4900 2950
	1    0    0    -1  
$EndComp
Text GLabel 5150 3200 2    60   Input ~ 0
-RST
$Comp
L SW_PUSH SW?
U 1 1 57614E3F
P 1150 3700
F 0 "SW?" H 1300 3810 50  0000 C CNN
F 1 "SW_PUSH" H 1150 3620 50  0000 C CNN
F 2 "" H 1150 3700 50  0000 C CNN
F 3 "" H 1150 3700 50  0000 C CNN
	1    1150 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1600 1650 1600 1850
Wire Wire Line
	1600 1850 2150 1850
Wire Wire Line
	2150 1950 1600 1950
Wire Wire Line
	1600 1950 1600 2200
$Comp
L 74LS05 U3
U 1 1 5761B536
P 4200 3200
F 0 "U3" H 4395 3315 60  0000 C CNN
F 1 "74LS05" H 4390 3075 60  0000 C CNN
F 2 "~" H 4200 3200 60  0000 C CNN
F 3 "~" H 4200 3200 60  0000 C CNN
	1    4200 3200
	1    0    0    -1  
$EndComp
$Comp
L 74LS05 U3
U 2 1 5761B561
P 4200 3600
F 0 "U3" H 4395 3715 60  0000 C CNN
F 1 "74LS05" H 4390 3475 60  0000 C CNN
F 2 "~" H 4200 3600 60  0000 C CNN
F 3 "~" H 4200 3600 60  0000 C CNN
	2    4200 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3200 3750 3200
Text GLabel 5950 3600 2    60   Input ~ 0
-HALT
$Comp
L XTAL_OSC_HALF_CAN U1
U 1 1 5764128A
P 2800 2000
F 0 "U1" H 2800 2300 60  0000 C CNN
F 1 "XTAL_OSC_HALF_CAN" H 2800 1700 60  0000 C CNN
F 2 "" H 2800 2000 60  0000 C CNN
F 3 "" H 2800 2000 60  0000 C CNN
	1    2800 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2150 2000 2150
Wire Wire Line
	2000 2150 2000 1850
Connection ~ 2000 1850
Wire Wire Line
	3450 1850 4750 1850
Text GLabel 4750 1850 2    60   Input ~ 0
CLK
$Comp
L MAX708 U2
U 1 1 576418C6
P 2750 3300
F 0 "U2" H 2750 3650 60  0000 C CNN
F 1 "MAX708" H 2750 2900 60  0000 C CNN
F 2 "" H 2750 3300 60  0000 C CNN
F 3 "" H 2750 3300 60  0000 C CNN
	1    2750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3100 1600 3100
Wire Wire Line
	1600 3100 1600 2800
Wire Wire Line
	2150 3200 1600 3200
Wire Wire Line
	1600 3200 1600 4150
Wire Wire Line
	2150 3400 1150 3400
Wire Wire Line
	1150 4000 1600 4000
Connection ~ 1600 4000
Wire Wire Line
	2150 3550 1600 3550
Connection ~ 1600 3550
Wire Wire Line
	4900 2800 4900 2700
Wire Wire Line
	4900 3100 4900 3200
Wire Wire Line
	3750 3600 3600 3600
Wire Wire Line
	3600 3600 3600 3200
Connection ~ 3600 3200
Wire Wire Line
	4650 3200 5150 3200
Connection ~ 4900 3200
Wire Wire Line
	4650 3600 5950 3600
$Comp
L R R?
U 1 1 57642302
P 5800 3200
AR Path="/57642302" Ref="R?"  Part="1" 
AR Path="/57614D51/57642302" Ref="R?"  Part="1" 
F 0 "R?" V 5880 3200 50  0000 C CNN
F 1 "4.7K" V 5800 3200 50  0000 C CNN
F 2 "" V 5730 3200 50  0000 C CNN
F 3 "" H 5800 3200 50  0000 C CNN
	1    5800 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3050 5800 2950
Wire Wire Line
	5800 3350 5800 3600
Connection ~ 5800 3600
$Comp
L C C?
U 1 1 5764256E
P 1200 1950
F 0 "C?" H 1225 2050 50  0000 L CNN
F 1 "0.1uF" H 1225 1850 50  0000 L CNN
F 2 "" H 1238 1800 50  0000 C CNN
F 3 "" H 1200 1950 50  0000 C CNN
	1    1200 1950
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 576425DB
P 1200 3100
F 0 "C?" H 1225 3200 50  0000 L CNN
F 1 "0.1uF" H 1225 3000 50  0000 L CNN
F 2 "" H 1238 2950 50  0000 C CNN
F 3 "" H 1200 3100 50  0000 C CNN
	1    1200 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1800 1200 1700
Wire Wire Line
	1200 1700 1600 1700
Connection ~ 1600 1700
Wire Wire Line
	1200 2100 1200 2150
Wire Wire Line
	1200 2150 1600 2150
Connection ~ 1600 2150
Wire Wire Line
	1200 2950 1200 2900
Wire Wire Line
	1200 2900 1600 2900
Connection ~ 1600 2900
Wire Wire Line
	1200 3250 1200 3300
Wire Wire Line
	1200 3300 1600 3300
Connection ~ 1600 3300
$Comp
L VCC #PWR?
U 1 1 576428F1
P 4200 4200
F 0 "#PWR?" H 4200 4050 50  0001 C CNN
F 1 "VCC" H 4200 4350 50  0000 C CNN
F 2 "" H 4200 4200 50  0000 C CNN
F 3 "" H 4200 4200 50  0000 C CNN
	1    4200 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57642917
P 4200 4850
AR Path="/57642917" Ref="#PWR?"  Part="1" 
AR Path="/57614D51/57642917" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4200 4600 50  0001 C CNN
F 1 "GND" H 4200 4700 50  0000 C CNN
F 2 "" H 4200 4850 50  0000 C CNN
F 3 "" H 4200 4850 50  0000 C CNN
	1    4200 4850
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5764293D
P 4200 4500
F 0 "C?" H 4225 4600 50  0000 L CNN
F 1 "0.1uF" H 4225 4400 50  0000 L CNN
F 2 "" H 4238 4350 50  0000 C CNN
F 3 "" H 4200 4500 50  0000 C CNN
	1    4200 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4350 4200 4200
Wire Wire Line
	4200 4650 4200 4850
$Comp
L VCC #PWR?
U 1 1 57644C5D
P 4900 2700
F 0 "#PWR?" H 4900 2550 50  0001 C CNN
F 1 "VCC" H 4900 2850 50  0000 C CNN
F 2 "" H 4900 2700 50  0000 C CNN
F 3 "" H 4900 2700 50  0000 C CNN
	1    4900 2700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 57644C85
P 5800 2950
F 0 "#PWR?" H 5800 2800 50  0001 C CNN
F 1 "VCC" H 5800 3100 50  0000 C CNN
F 2 "" H 5800 2950 50  0000 C CNN
F 3 "" H 5800 2950 50  0000 C CNN
	1    5800 2950
	1    0    0    -1  
$EndComp
$EndSCHEMATC
