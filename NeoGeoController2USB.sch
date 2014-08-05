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
LIBS:special
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
LIBS:NeoGeoController2USB-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "5 aug 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L USB J1
U 1 1 53DB98C4
P 2500 3400
F 0 "J1" H 2450 3800 60  0000 C CNN
F 1 "USB" V 2250 3550 60  0000 C CNN
F 2 "" H 2500 3400 60  0000 C CNN
F 3 "" H 2500 3400 60  0000 C CNN
	1    2500 3400
	1    0    0    -1  
$EndComp
$Comp
L ATMEGA32U2-AU U1
U 1 1 53DBB1ED
P 5500 4700
F 0 "U1" H 4600 6400 60  0000 C CNN
F 1 "ATMEGA32U2-AU" H 4850 3150 60  0000 C CNN
F 2 "~" H 6700 5800 60  0000 C CNN
F 3 "~" H 6700 5800 60  0000 C CNN
	1    5500 4700
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X1
U 1 1 53DBBAE1
P 3550 5250
F 0 "X1" H 3550 5400 60  0000 C CNN
F 1 "16Mhz" H 3550 5100 60  0000 C CNN
F 2 "~" H 3550 5250 60  0000 C CNN
F 3 "~" H 3550 5250 60  0000 C CNN
	1    3550 5250
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 53DBBAFE
P 3750 3750
F 0 "R1" V 3830 3750 40  0000 C CNN
F 1 "22ohms" V 3757 3751 40  0000 C CNN
F 2 "~" V 3680 3750 30  0000 C CNN
F 3 "~" H 3750 3750 30  0000 C CNN
	1    3750 3750
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 53DBBB0D
P 3750 3950
F 0 "R2" V 3830 3950 40  0000 C CNN
F 1 "22ohms" V 3757 3951 40  0000 C CNN
F 2 "~" V 3680 3950 30  0000 C CNN
F 3 "~" H 3750 3950 30  0000 C CNN
	1    3750 3950
	0    -1   -1   0   
$EndComp
$Comp
L VCC #PWR01
U 1 1 53DC135F
P 4250 3150
F 0 "#PWR01" H 4250 3250 30  0001 C CNN
F 1 "VCC" H 4250 3250 30  0000 C CNN
F 2 "" H 4250 3150 60  0000 C CNN
F 3 "" H 4250 3150 60  0000 C CNN
	1    4250 3150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 53DC1370
P 2000 3600
F 0 "#PWR02" H 2000 3700 30  0001 C CNN
F 1 "VCC" H 2000 3700 30  0000 C CNN
F 2 "" H 2000 3600 60  0000 C CNN
F 3 "" H 2000 3600 60  0000 C CNN
	1    2000 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 53DC13F7
P 2000 4000
F 0 "#PWR03" H 2000 4000 30  0001 C CNN
F 1 "GND" H 2000 3930 30  0001 C CNN
F 2 "" H 2000 4000 60  0000 C CNN
F 3 "" H 2000 4000 60  0000 C CNN
	1    2000 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 53DC1489
P 4250 5950
F 0 "#PWR04" H 4250 5950 30  0001 C CNN
F 1 "GND" H 4250 5880 30  0001 C CNN
F 2 "" H 4250 5950 60  0000 C CNN
F 3 "" H 4250 5950 60  0000 C CNN
	1    4250 5950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 53DC1498
P 3750 4400
F 0 "#PWR05" H 3750 4400 30  0001 C CNN
F 1 "GND" H 3750 4330 30  0001 C CNN
F 2 "" H 3750 4400 60  0000 C CNN
F 3 "" H 3750 4400 60  0000 C CNN
	1    3750 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3750 2000 4000
Wire Wire Line
	2100 3850 2000 3850
Connection ~ 2000 3850
Wire Wire Line
	2100 3600 2000 3600
Wire Wire Line
	4000 3950 4250 3950
Wire Wire Line
	4250 3150 4250 3750
Connection ~ 4250 3250
Connection ~ 4250 3350
Wire Wire Line
	3750 4050 4250 4050
Wire Wire Line
	2850 3850 2850 3950
Wire Wire Line
	2850 3950 2000 3950
Connection ~ 2000 3950
$Comp
L C C4
U 1 1 53DC158C
P 4050 4250
F 0 "C4" H 4050 4350 40  0000 L CNN
F 1 "1uf" H 4056 4165 40  0000 L CNN
F 2 "~" H 4088 4100 30  0000 C CNN
F 3 "~" H 4050 4250 60  0000 C CNN
	1    4050 4250
	0    -1   -1   0   
$EndComp
$Comp
L C C1
U 1 1 53DC159B
P 3250 5450
F 0 "C1" H 3250 5550 40  0000 L CNN
F 1 "22p" H 3256 5365 40  0000 L CNN
F 2 "~" H 3288 5300 30  0000 C CNN
F 3 "~" H 3250 5450 60  0000 C CNN
	1    3250 5450
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 53DC15AA
P 3850 5450
F 0 "C2" H 3850 5550 40  0000 L CNN
F 1 "22p" H 3856 5365 40  0000 L CNN
F 2 "~" H 3888 5300 30  0000 C CNN
F 3 "~" H 3850 5450 60  0000 C CNN
	1    3850 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5150 4100 5150
Wire Wire Line
	4100 5150 4100 4950
Wire Wire Line
	4100 4950 3250 4950
Wire Wire Line
	3250 4950 3250 5250
Wire Wire Line
	4250 5250 3850 5250
$Comp
L AVR-ISP6 CON1
U 1 1 53DC1AF4
P 5100 2100
F 0 "CON1" H 5020 2340 50  0000 C CNN
F 1 "AVR-ISP6" H 4860 1870 50  0000 L BNN
F 2 "AVR-ISP-6" V 4580 2140 50  0001 C CNN
F 3 "" H 5100 2100 60  0000 C CNN
	1    5100 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 53DC1B03
P 5600 2300
F 0 "#PWR06" H 5600 2300 30  0001 C CNN
F 1 "GND" H 5600 2230 30  0001 C CNN
F 2 "" H 5600 2300 60  0000 C CNN
F 3 "" H 5600 2300 60  0000 C CNN
	1    5600 2300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 53DC1B21
P 5600 1950
F 0 "#PWR07" H 5600 2050 30  0001 C CNN
F 1 "VCC" H 5600 2050 30  0000 C CNN
F 2 "" H 5600 1950 60  0000 C CNN
F 3 "" H 5600 1950 60  0000 C CNN
	1    5600 1950
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR08
U 1 1 53DC1B30
P 3950 1700
F 0 "#PWR08" H 3950 1800 30  0001 C CNN
F 1 "VCC" H 3950 1800 30  0000 C CNN
F 2 "" H 3950 1700 60  0000 C CNN
F 3 "" H 3950 1700 60  0000 C CNN
	1    3950 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1950 5600 2000
Wire Wire Line
	5600 2000 5400 2000
Wire Wire Line
	3800 2200 4800 2200
Text GLabel 4700 2000 0    60   Input ~ 0
MISO
Text GLabel 5650 2100 2    60   Input ~ 0
MOSI
Text GLabel 4350 2100 0    60   Input ~ 0
SCK
Wire Wire Line
	4350 2100 4800 2100
Wire Wire Line
	4700 2000 4800 2000
Wire Wire Line
	5650 2100 5400 2100
$Comp
L R R3
U 1 1 53DC1CB7
P 3950 1950
F 0 "R3" V 4030 1950 40  0000 C CNN
F 1 "10K" V 3957 1951 40  0000 C CNN
F 2 "~" V 3880 1950 30  0000 C CNN
F 3 "~" H 3950 1950 30  0000 C CNN
	1    3950 1950
	1    0    0    -1  
$EndComp
Text GLabel 3800 2200 0    60   Input ~ 0
RESET
Connection ~ 3950 2200
Wire Wire Line
	3250 5650 3250 5750
Wire Wire Line
	3250 5750 4250 5750
Wire Wire Line
	3850 5650 3850 5750
Connection ~ 3850 5750
Wire Wire Line
	4250 5750 4250 5950
Text GLabel 7450 3350 2    60   Input ~ 0
MOSI
Text GLabel 6900 3450 2    60   Input ~ 0
MISO
Text GLabel 6900 3250 2    60   Input ~ 0
SCK
$Comp
L GND #PWR09
U 1 1 53DC1F3B
P 9550 2850
F 0 "#PWR09" H 9550 2850 30  0001 C CNN
F 1 "GND" H 9550 2780 30  0001 C CNN
F 2 "" H 9550 2850 60  0000 C CNN
F 3 "" H 9550 2850 60  0000 C CNN
	1    9550 2850
	1    0    0    -1  
$EndComp
Text GLabel 9300 2300 0    60   Input ~ 0
SELECT
Text GLabel 9300 2100 0    60   Input ~ 0
D_BUTTON
Text GLabel 9300 1900 0    60   Input ~ 0
B_BUTTON
Text GLabel 9300 1700 0    60   Input ~ 0
RIGHT
Text GLabel 9300 1500 0    60   Input ~ 0
DOWN
$Comp
L VCC #PWR010
U 1 1 53DC1FB2
P 9600 1100
F 0 "#PWR010" H 9600 1200 30  0001 C CNN
F 1 "VCC" H 9600 1200 30  0000 C CNN
F 2 "" H 9600 1100 60  0000 C CNN
F 3 "" H 9600 1100 60  0000 C CNN
	1    9600 1100
	1    0    0    -1  
$EndComp
Text GLabel 8600 2600 0    60   Input ~ 0
D_KICK_2
$Comp
L DB15 J2
U 1 1 53DC2004
P 10150 2000
F 0 "J2" H 10170 2850 70  0000 C CNN
F 1 "DB15" H 10100 1150 70  0000 C CNN
F 2 "" H 10150 2000 60  0000 C CNN
F 3 "" H 10150 2000 60  0000 C CNN
	1    10150 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1100 9600 1300
Wire Wire Line
	9600 1300 9700 1300
Wire Wire Line
	9300 2300 9700 2300
Wire Wire Line
	9300 2100 9700 2100
Wire Wire Line
	9300 1900 9700 1900
Wire Wire Line
	9300 1700 9700 1700
Wire Wire Line
	9300 1500 9700 1500
Wire Wire Line
	8600 2600 9700 2600
Text GLabel 8600 2200 0    60   Input ~ 0
START
Wire Wire Line
	8600 2200 9700 2200
Text GLabel 8600 2000 0    60   Input ~ 0
C_BUTTON
Text GLabel 8600 1800 0    60   Input ~ 0
A_BUTTON
Text GLabel 8600 1600 0    60   Input ~ 0
LEFT
Text GLabel 8600 1400 0    60   Input ~ 0
UP
Wire Wire Line
	8600 1400 9700 1400
Wire Wire Line
	8600 1600 9700 1600
Wire Wire Line
	8600 1800 9700 1800
Wire Wire Line
	8600 2000 9700 2000
Text GLabel 9250 2500 0    60   Input ~ 0
KICK_1
Text GLabel 8600 2400 0    60   Input ~ 0
KICK_3
Wire Wire Line
	9700 2500 9250 2500
Wire Wire Line
	9700 2400 8600 2400
Text GLabel 4250 4800 0    60   Input ~ 0
RESET
Wire Wire Line
	4250 4800 4250 4550
Wire Wire Line
	4250 4150 4250 4250
Wire Wire Line
	3850 4250 3750 4250
Connection ~ 3750 4250
Wire Wire Line
	4250 3850 4100 3850
Wire Wire Line
	4100 3850 4100 3750
Wire Wire Line
	4100 3750 4000 3750
Wire Wire Line
	2850 3750 3500 3750
Wire Wire Line
	2850 3600 3250 3600
Wire Wire Line
	3250 3600 3250 3950
Wire Wire Line
	3250 3950 3500 3950
Text GLabel 6900 4900 2    60   Input ~ 0
DOWN
Text GLabel 7450 5000 2    60   Input ~ 0
LEFT
Text GLabel 6900 5100 2    60   Input ~ 0
RIGHT
Text GLabel 7450 5200 2    60   Input ~ 0
A_BUTTON
Text GLabel 6900 5300 2    60   Input ~ 0
B_BUTTON
Text GLabel 7450 5400 2    60   Input ~ 0
C_BUTTON
Text GLabel 6900 5500 2    60   Input ~ 0
D_BUTTON
Text GLabel 7450 3150 2    60   Input ~ 0
START
Text GLabel 7450 3550 2    60   Input ~ 0
SELECT
Text GLabel 6900 3650 2    60   Input ~ 0
KICK_3
Text GLabel 7450 3750 2    60   Input ~ 0
KICK_1
Text GLabel 6900 3850 2    60   Input ~ 0
D_KICK_2
NoConn ~ 6700 4350
NoConn ~ 6700 4450
NoConn ~ 6700 4550
$Comp
L C C3
U 1 1 53DD214D
P 3750 3050
F 0 "C3" H 3750 3150 40  0000 L CNN
F 1 "100nf" H 3756 2965 40  0000 L CNN
F 2 "~" H 3788 2900 30  0000 C CNN
F 3 "~" H 3750 3050 60  0000 C CNN
	1    3750 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 4050 3750 4400
Wire Wire Line
	2000 3750 2100 3750
$Comp
L GND #PWR011
U 1 1 53DD24DF
P 3750 3250
F 0 "#PWR011" H 3750 3250 30  0001 C CNN
F 1 "GND" H 3750 3180 30  0001 C CNN
F 2 "" H 3750 3250 60  0000 C CNN
F 3 "" H 3750 3250 60  0000 C CNN
	1    3750 3250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR012
U 1 1 53DD2647
P 3750 2850
F 0 "#PWR012" H 3750 2950 30  0001 C CNN
F 1 "VCC" H 3750 2950 30  0000 C CNN
F 2 "" H 3750 2850 60  0000 C CNN
F 3 "" H 3750 2850 60  0000 C CNN
	1    3750 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 2850 9550 2700
Wire Wire Line
	9550 2700 9700 2700
Wire Wire Line
	5600 2300 5600 2200
Wire Wire Line
	5600 2200 5400 2200
NoConn ~ 6700 4650
Wire Wire Line
	6700 3250 6900 3250
Wire Wire Line
	6700 3350 7450 3350
Wire Wire Line
	6700 3450 6900 3450
$Comp
L C C5
U 1 1 53DE7D03
P 3950 2400
F 0 "C5" H 3950 2500 40  0000 L CNN
F 1 "100nf" H 3956 2315 40  0000 L CNN
F 2 "~" H 3988 2250 30  0000 C CNN
F 3 "~" H 3950 2400 60  0000 C CNN
	1    3950 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 53DE7D12
P 3950 2600
F 0 "#PWR013" H 3950 2600 30  0001 C CNN
F 1 "GND" H 3950 2530 30  0001 C CNN
F 2 "" H 3950 2600 60  0000 C CNN
F 3 "" H 3950 2600 60  0000 C CNN
	1    3950 2600
	1    0    0    -1  
$EndComp
Text GLabel 7450 4800 2    60   Input ~ 0
UP
Wire Wire Line
	6700 4800 7450 4800
Wire Wire Line
	6700 4900 6900 4900
Wire Wire Line
	6700 5000 7450 5000
Wire Wire Line
	6700 5100 6900 5100
Wire Wire Line
	6700 5200 7450 5200
Wire Wire Line
	6700 5300 6900 5300
Wire Wire Line
	6700 5400 7450 5400
Wire Wire Line
	6700 5500 6900 5500
Wire Wire Line
	6700 3150 7450 3150
Wire Wire Line
	6700 3550 7450 3550
Wire Wire Line
	6700 3650 6900 3650
Wire Wire Line
	6700 3750 7450 3750
Wire Wire Line
	6700 3850 6900 3850
NoConn ~ 6700 4150
$EndSCHEMATC
