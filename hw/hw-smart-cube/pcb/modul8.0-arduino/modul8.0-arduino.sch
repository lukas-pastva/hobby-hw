EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:arduino_shieldsNCL
LIBS:arduino
LIBS:modul8.0-arduino-cache
EELAYER 25 0
EELAYER END
$Descr A3 11693 16535 portrait
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 6350 9500 2    60   Input ~ 0
scl
Text GLabel 6350 9600 2    60   Input ~ 0
sda
Text GLabel 6350 9700 2    60   Input ~ 0
gnd
Text GLabel 2550 9500 3    60   Input ~ 0
12v
Text GLabel 4800 8300 0    60   Input ~ 0
gnd
Text GLabel 4800 8400 0    60   Input ~ 0
gnd
Text GLabel 4800 8500 0    60   Input ~ 0
gnd
Text GLabel 4800 8600 0    60   Input ~ 0
gnd
Text GLabel 4800 5900 0    60   Input ~ 0
sda
Text GLabel 4800 6000 0    60   Input ~ 0
scl
Text GLabel 4800 6200 0    60   Input ~ 0
a0
Text GLabel 4800 6300 0    60   Input ~ 0
a1
Text GLabel 4800 6400 0    60   Input ~ 0
a2
Text GLabel 4800 6500 0    60   Input ~ 0
a3
Text GLabel 4800 6600 0    60   Input ~ 0
a4
Text GLabel 4800 6700 0    60   Input ~ 0
a5
Text GLabel 4800 6800 0    60   Input ~ 0
a6
Text GLabel 4800 6900 0    60   Input ~ 0
a7
Text GLabel 4800 7000 0    60   Input ~ 0
a8
Text GLabel 4800 7100 0    60   Input ~ 0
a9
Text GLabel 4800 7200 0    60   Input ~ 0
a10
Text GLabel 4800 7300 0    60   Input ~ 0
a11
Text GLabel 4800 7400 0    60   Input ~ 0
a12
Text GLabel 4800 7500 0    60   Input ~ 0
a13
Text GLabel 4800 7600 0    60   Input ~ 0
a14
Text GLabel 4800 7700 0    60   Input ~ 0
a15
$Comp
L R r-analog-0
U 1 1 5A9AF210
P 1800 6000
F 0 "r-analog-0" V 1880 6000 50  0000 C CNN
F 1 "R" V 1800 6000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1730 6000 50  0001 C CNN
F 3 "" H 1800 6000 50  0001 C CNN
	1    1800 6000
	0    1    1    0   
$EndComp
Text GLabel 1650 6000 0    60   Input ~ 0
a0
Text GLabel 1950 6000 2    60   Input ~ 0
5v
$Comp
L R r-analog-1
U 1 1 5A9B1166
P 1800 6250
F 0 "r-analog-1" V 1880 6250 50  0000 C CNN
F 1 "R" V 1800 6250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1730 6250 50  0001 C CNN
F 3 "" H 1800 6250 50  0001 C CNN
	1    1800 6250
	0    1    1    0   
$EndComp
$Comp
L R r-analog-2
U 1 1 5A9B1226
P 1800 6500
F 0 "r-analog-2" V 1880 6500 50  0000 C CNN
F 1 "R" V 1800 6500 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1730 6500 50  0001 C CNN
F 3 "" H 1800 6500 50  0001 C CNN
	1    1800 6500
	0    1    1    0   
$EndComp
Text GLabel 1950 6500 2    60   Input ~ 0
5v
$Comp
L R r-analog-3
U 1 1 5A9B1236
P 1800 6750
F 0 "r-analog-3" V 1880 6750 50  0000 C CNN
F 1 "R" V 1800 6750 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1730 6750 50  0001 C CNN
F 3 "" H 1800 6750 50  0001 C CNN
	1    1800 6750
	0    1    1    0   
$EndComp
Text GLabel 1950 6750 2    60   Input ~ 0
5v
$Comp
L R r-analog-4
U 1 1 5A9B1472
P 1800 7000
F 0 "r-analog-4" V 1880 7000 50  0000 C CNN
F 1 "R" V 1800 7000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1730 7000 50  0001 C CNN
F 3 "" H 1800 7000 50  0001 C CNN
	1    1800 7000
	0    1    1    0   
$EndComp
Text GLabel 1950 7000 2    60   Input ~ 0
5v
$Comp
L R r-analog-5
U 1 1 5A9B1482
P 1800 7250
F 0 "r-analog-5" V 1880 7250 50  0000 C CNN
F 1 "R" V 1800 7250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1730 7250 50  0001 C CNN
F 3 "" H 1800 7250 50  0001 C CNN
	1    1800 7250
	0    1    1    0   
$EndComp
Text GLabel 1950 7250 2    60   Input ~ 0
5v
$Comp
L R r-analog-6
U 1 1 5A9B1492
P 1800 7500
F 0 "r-analog-6" V 1880 7500 50  0000 C CNN
F 1 "R" V 1800 7500 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1730 7500 50  0001 C CNN
F 3 "" H 1800 7500 50  0001 C CNN
	1    1800 7500
	0    1    1    0   
$EndComp
Text GLabel 1950 7500 2    60   Input ~ 0
5v
$Comp
L R r-analog-7
U 1 1 5A9B14A2
P 1800 7750
F 0 "r-analog-7" V 1880 7750 50  0000 C CNN
F 1 "R" V 1800 7750 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1730 7750 50  0001 C CNN
F 3 "" H 1800 7750 50  0001 C CNN
	1    1800 7750
	0    1    1    0   
$EndComp
Text GLabel 1950 7750 2    60   Input ~ 0
5v
Text GLabel 1650 6500 0    60   Input ~ 0
a2
Text GLabel 1650 6750 0    60   Input ~ 0
a3
Text GLabel 1650 7000 0    60   Input ~ 0
a4
Text GLabel 1650 7250 0    60   Input ~ 0
a5
Text GLabel 1650 7500 0    60   Input ~ 0
a6
Text GLabel 1650 7750 0    60   Input ~ 0
a7
$Comp
L R F12V1
U 1 1 5A9B5272
P 7550 9850
F 0 "F12V1" V 7630 9850 50  0000 C CNN
F 1 "R" V 7550 9850 50  0000 C CNN
F 2 "Resistors_SMD:R_1812_HandSoldering" V 7480 9850 50  0001 C CNN
F 3 "" H 7550 9850 50  0001 C CNN
	1    7550 9850
	0    1    1    0   
$EndComp
Text GLabel 6350 9800 2    60   Input ~ 0
12v-input
Text GLabel 7700 9850 2    60   Input ~ 0
12v-input
Text GLabel 7400 9850 0    60   Input ~ 0
12v
$Comp
L R F5V1
U 1 1 5A9B5686
P 7550 10200
F 0 "F5V1" V 7630 10200 50  0000 C CNN
F 1 "R" V 7550 10200 50  0000 C CNN
F 2 "Resistors_SMD:R_1812_HandSoldering" V 7480 10200 50  0001 C CNN
F 3 "" H 7550 10200 50  0001 C CNN
	1    7550 10200
	0    1    1    0   
$EndComp
Text GLabel 7400 10200 0    60   Input ~ 0
5v
Text GLabel 6350 9900 2    60   Input ~ 0
5v-input
Text GLabel 7700 10200 2    60   Input ~ 0
5v-input
Text GLabel 1400 4900 0    60   Input ~ 0
a0
Text GLabel 1400 5000 0    60   Input ~ 0
a1
Text GLabel 1400 5100 0    60   Input ~ 0
a2
Text GLabel 1400 5200 0    60   Input ~ 0
a3
Text GLabel 1400 5300 0    60   Input ~ 0
a4
Text GLabel 1400 5400 0    60   Input ~ 0
a5
Text GLabel 1400 5500 0    60   Input ~ 0
a6
Text GLabel 1400 5600 0    60   Input ~ 0
a7
$Comp
L Conn_02x08_Odd_Even J2
U 1 1 5A9B7A84
P 1600 5200
F 0 "J2" H 1650 5600 50  0000 C CNN
F 1 "analog-sensors-1" H 1650 4700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 1600 5200 50  0001 C CNN
F 3 "" H 1600 5200 50  0001 C CNN
	1    1600 5200
	1    0    0    -1  
$EndComp
Text GLabel 1650 6250 0    60   Input ~ 0
a1
Text GLabel 1950 6250 2    60   Input ~ 0
5v
Text GLabel 1900 5100 2    60   Input ~ 0
gnd
Text GLabel 1900 5200 2    60   Input ~ 0
gnd
Text GLabel 1900 4900 2    60   Input ~ 0
gnd
Text GLabel 1900 5000 2    60   Input ~ 0
gnd
Text GLabel 1900 5500 2    60   Input ~ 0
gnd
Text GLabel 1900 5600 2    60   Input ~ 0
gnd
Text GLabel 1900 5300 2    60   Input ~ 0
gnd
Text GLabel 1900 5400 2    60   Input ~ 0
gnd
$Comp
L Conn_01x04_Male J5
U 1 1 5A9BAE69
P 9050 6400
F 0 "J5" H 9050 6600 50  0000 C CNN
F 1 "display" H 9200 6050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 9050 6400 50  0001 C CNN
F 3 "" H 9050 6400 50  0001 C CNN
	1    9050 6400
	1    0    0    -1  
$EndComp
Text GLabel 9250 6300 2    60   Input ~ 0
gnd
Text GLabel 9250 6400 2    60   Input ~ 0
5v
Text GLabel 9250 6500 2    60   Input ~ 0
sda
$Comp
L Conn_01x04_Male J6
U 1 1 5A9BB52E
P 9050 7550
F 0 "J6" H 9050 7750 50  0000 C CNN
F 1 "temp1" H 9200 7250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 9050 7550 50  0001 C CNN
F 3 "" H 9050 7550 50  0001 C CNN
	1    9050 7550
	1    0    0    -1  
$EndComp
Text GLabel 9250 7750 2    60   Input ~ 0
gnd
NoConn ~ 9250 7650
Text GLabel 9750 7550 2    60   Input ~ 0
d2
Text GLabel 9750 7450 2    60   Input ~ 0
5v
Wire Wire Line
	9250 7450 9750 7450
Wire Wire Line
	9750 7550 9250 7550
$Comp
L R temp-r-1
U 1 1 5A9BBA62
P 9450 7300
F 0 "temp-r-1" V 9530 7300 50  0000 C CNN
F 1 "R" V 9450 7300 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 9380 7300 50  0001 C CNN
F 3 "" H 9450 7300 50  0001 C CNN
	1    9450 7300
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 7300 9300 7450
Connection ~ 9300 7450
Wire Wire Line
	9600 7300 9600 7550
Connection ~ 9600 7550
$Comp
L Conn_01x04_Male J7
U 1 1 5A9BBEEC
P 9050 8350
F 0 "J7" H 9050 8550 50  0000 C CNN
F 1 "temp1" H 9200 8050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 9050 8350 50  0001 C CNN
F 3 "" H 9050 8350 50  0001 C CNN
	1    9050 8350
	1    0    0    -1  
$EndComp
Text GLabel 9250 8550 2    60   Input ~ 0
gnd
NoConn ~ 9250 8450
Text GLabel 9750 8350 2    60   Input ~ 0
d22
Text GLabel 9750 8250 2    60   Input ~ 0
5v
Wire Wire Line
	9250 8250 9750 8250
Wire Wire Line
	9750 8350 9250 8350
$Comp
L R temp-r-3
U 1 1 5A9BBEF8
P 9450 8100
F 0 "temp-r-3" V 9530 8100 50  0000 C CNN
F 1 "R" V 9450 8100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 9380 8100 50  0001 C CNN
F 3 "" H 9450 8100 50  0001 C CNN
	1    9450 8100
	0    1    1    0   
$EndComp
Wire Wire Line
	9300 8100 9300 8250
Connection ~ 9300 8250
Wire Wire Line
	9600 8100 9600 8350
Connection ~ 9600 8350
$Comp
L Conn_01x04_Male J4
U 1 1 5A9BC278
P 9000 9150
F 0 "J4" H 9000 9350 50  0000 C CNN
F 1 "temp1" H 9150 8850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 9000 9150 50  0001 C CNN
F 3 "" H 9000 9150 50  0001 C CNN
	1    9000 9150
	1    0    0    -1  
$EndComp
Text GLabel 9200 9350 2    60   Input ~ 0
gnd
NoConn ~ 9200 9250
Text GLabel 9700 9150 2    60   Input ~ 0
d4
Text GLabel 9700 9050 2    60   Input ~ 0
5v
Wire Wire Line
	9200 9050 9700 9050
Wire Wire Line
	9700 9150 9200 9150
$Comp
L R temp-r-2
U 1 1 5A9BC284
P 9400 8900
F 0 "temp-r-2" V 9480 8900 50  0000 C CNN
F 1 "R" V 9400 8900 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 9330 8900 50  0001 C CNN
F 3 "" H 9400 8900 50  0001 C CNN
	1    9400 8900
	0    1    1    0   
$EndComp
Wire Wire Line
	9250 8900 9250 9050
Connection ~ 9250 9050
Wire Wire Line
	9550 8900 9550 9150
Connection ~ 9550 9150
Text GLabel 7400 4900 2    60   Input ~ 0
d2
Text GLabel 7400 5000 2    60   Input ~ 0
d3
Text GLabel 7400 5100 2    60   Input ~ 0
d4
Text GLabel 5850 4450 1    60   Input ~ 0
so
Text GLabel 5950 4450 1    60   Input ~ 0
si
$Comp
L Conn_01x06 J8
U 1 1 5A9BED37
P 9000 4800
F 0 "J8" H 9000 5100 50  0000 C CNN
F 1 "eth-1" H 8950 4400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 9000 4800 50  0001 C CNN
F 3 "" H 9000 4800 50  0001 C CNN
	1    9000 4800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x06 J9
U 1 1 5A9BEE2F
P 10200 4850
F 0 "J9" H 10200 4450 50  0000 C CNN
F 1 "eth-2" H 10150 5150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 10200 4850 50  0001 C CNN
F 3 "" H 10200 4850 50  0001 C CNN
	1    10200 4850
	1    0    0    -1  
$EndComp
Text GLabel 8800 4600 0    60   Input ~ 0
gnd
Text GLabel 8800 4700 0    60   Input ~ 0
gnd
Text GLabel 10000 4650 0    60   Input ~ 0
gnd
Text GLabel 10000 4750 0    60   Input ~ 0
3v
Text GLabel 10000 4850 0    60   Input ~ 0
3v
Text GLabel 8800 4800 0    60   Input ~ 0
si
Text GLabel 8800 4900 0    60   Input ~ 0
clk
Text GLabel 10000 5050 0    60   Input ~ 0
rst
Text GLabel 4800 8000 0    60   Input ~ 0
rst
Text GLabel 10000 5150 0    60   Input ~ 0
so
NoConn ~ 8800 5100
NoConn ~ 10000 4950
Text GLabel 4800 8800 0    60   Input ~ 0
3v
Text GLabel 7400 5200 2    60   Input ~ 0
d5
Text GLabel 7400 5300 2    60   Input ~ 0
d6
Text GLabel 7400 5400 2    60   Input ~ 0
d7
Text GLabel 7400 5500 2    60   Input ~ 0
d8
Text GLabel 7400 5600 2    60   Input ~ 0
d9
Text GLabel 7400 5700 2    60   Input ~ 0
d10
Text GLabel 7400 5800 2    60   Input ~ 0
d11
Text GLabel 7400 5900 2    60   Input ~ 0
d12
Text GLabel 4800 5600 0    60   Input ~ 0
d14
Text GLabel 4800 5500 0    60   Input ~ 0
d15
Text GLabel 4800 5400 0    60   Input ~ 0
d16
Text GLabel 4800 5300 0    60   Input ~ 0
d17
Text GLabel 4800 5200 0    60   Input ~ 0
d18
Text GLabel 4800 5100 0    60   Input ~ 0
d19
Text GLabel 4800 5000 0    60   Input ~ 0
d1
Text GLabel 4800 4900 0    60   Input ~ 0
d0
Text GLabel 4800 5700 0    60   Input ~ 0
d20
Text GLabel 4800 5800 0    60   Input ~ 0
d21
$Comp
L Conn_02x04_Odd_Even J3
U 1 1 5A9CBA92
P 2950 5200
F 0 "J3" H 3000 5400 50  0000 C CNN
F 1 "Serial" H 3000 4900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04_Pitch2.54mm" H 2950 5200 50  0001 C CNN
F 3 "" H 2950 5200 50  0001 C CNN
	1    2950 5200
	1    0    0    -1  
$EndComp
Text GLabel 2750 5400 0    60   Input ~ 0
d0
Text GLabel 3250 5400 2    60   Input ~ 0
d1
Text GLabel 3250 5100 2    60   Input ~ 0
d19
Text GLabel 2750 5100 0    60   Input ~ 0
d18
Text GLabel 3250 5200 2    60   Input ~ 0
d17
Text GLabel 2750 5200 0    60   Input ~ 0
d16
Text GLabel 3250 5300 2    60   Input ~ 0
d15
Text GLabel 2750 5300 0    60   Input ~ 0
d14
$Comp
L Conn_02x04_Counter_Clockwise J10
U 1 1 5A9CC5FA
P 8750 5650
F 0 "J10" H 8800 5850 50  0000 C CNN
F 1 "digital" H 8800 5350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x04_Pitch2.54mm" H 8750 5650 50  0001 C CNN
F 3 "" H 8750 5650 50  0001 C CNN
	1    8750 5650
	1    0    0    -1  
$EndComp
Text GLabel 8550 5550 0    60   Input ~ 0
d5
Text GLabel 8550 5650 0    60   Input ~ 0
d6
Text GLabel 8550 5750 0    60   Input ~ 0
d7
Text GLabel 8550 5850 0    60   Input ~ 0
d8
Text GLabel 9050 5550 2    60   Input ~ 0
d9
Text GLabel 9050 5650 2    60   Input ~ 0
d11
Text GLabel 9050 5750 2    60   Input ~ 0
d12
Text GLabel 3400 8050 2    60   Input ~ 0
rst
Text GLabel 3400 8150 2    60   Input ~ 0
sda
Text GLabel 3400 8250 2    60   Input ~ 0
scl
Text GLabel 9250 6600 2    60   Input ~ 0
scl
NoConn ~ 7050 6950
Text GLabel 4800 8700 0    60   Input ~ 0
gnd
$Comp
L Arduino_Mega2560_Shield XA1
U 1 1 5AA77350
P 6100 7050
F 0 "XA1" V 6200 7050 60  0000 C CNN
F 1 "Arduino_Mega2560_Shield" V 6000 7050 60  0000 C CNN
F 2 "Arduino:Arduino_Mega2560_Shield-psw-mirror" H 6800 9800 60  0001 C CNN
F 3 "" H 6800 9800 60  0001 C CNN
	1    6100 7050
	1    0    0    -1  
$EndComp
Text GLabel 8800 5000 0    60   Input ~ 0
d10
NoConn ~ 6350 4450
NoConn ~ 6250 4450
NoConn ~ 6150 4450
NoConn ~ 4800 9100
NoConn ~ 4800 9000
NoConn ~ 4800 8900
Text GLabel 7400 6000 2    60   Input ~ 0
d13
Text GLabel 9050 5850 2    60   Input ~ 0
d13
NoConn ~ 7400 6300
NoConn ~ 7400 6400
NoConn ~ 7400 6500
NoConn ~ 7400 6600
NoConn ~ 7400 6700
NoConn ~ 7400 6800
NoConn ~ 7400 6900
NoConn ~ 7400 7000
NoConn ~ 7400 7100
NoConn ~ 7400 7200
NoConn ~ 7400 7300
NoConn ~ 7400 7400
NoConn ~ 7400 7500
NoConn ~ 7400 7600
NoConn ~ 7400 7700
NoConn ~ 7400 7800
NoConn ~ 7400 7900
NoConn ~ 7400 8000
NoConn ~ 7400 8100
NoConn ~ 7400 8200
NoConn ~ 7400 8300
NoConn ~ 7400 8400
NoConn ~ 7400 8500
NoConn ~ 7400 8600
NoConn ~ 7400 8700
NoConn ~ 7400 8800
NoConn ~ 7400 8900
NoConn ~ 7400 9000
NoConn ~ 7400 9100
NoConn ~ 7400 9200
$Comp
L Conn_01x04 J12
U 1 1 5AA86F3D
P 3650 6550
F 0 "J12" H 3650 6750 50  0000 C CNN
F 1 "433" H 3650 6250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 3650 6550 50  0001 C CNN
F 3 "" H 3650 6550 50  0001 C CNN
	1    3650 6550
	1    0    0    -1  
$EndComp
Text GLabel 3450 6450 0    60   Input ~ 0
5v
Text GLabel 3450 6750 0    60   Input ~ 0
gnd
Text GLabel 3450 6550 0    60   Input ~ 0
d3
Text GLabel 3450 6650 0    60   Input ~ 0
d3
Text GLabel 7400 6100 2    60   Input ~ 0
d22
Text GLabel 6050 4450 1    60   Input ~ 0
clk
$Comp
L Conn_01x05 J1
U 1 1 5AB58F28
P 6150 9700
F 0 "J1" H 6150 10000 50  0000 C CNN
F 1 "i2c" H 6150 9400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 6150 9700 50  0001 C CNN
F 3 "" H 6150 9700 50  0001 C CNN
	1    6150 9700
	-1   0    0    1   
$EndComp
Text GLabel 7400 6200 2    60   Input ~ 0
d23
Text GLabel 1050 9200 0    60   Input ~ 0
d23
NoConn ~ 2450 8900
Text GLabel 2650 8900 1    60   Input ~ 0
12v-arduino
Text GLabel 4800 9200 0    60   Input ~ 0
12v-arduino
$Comp
L R R1
U 1 1 5AB56D83
P 1200 9200
F 0 "R1" V 1280 9200 50  0000 C CNN
F 1 "R" V 1200 9200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1130 9200 50  0001 C CNN
F 3 "" H 1200 9200 50  0001 C CNN
	1    1200 9200
	0    1    1    0   
$EndComp
Text GLabel 1650 9000 1    60   Input ~ 0
gnd
$Comp
L Q_NPN_BCE Q1
U 1 1 5AB57BBC
P 1550 9200
F 0 "Q1" H 1750 9250 50  0000 L CNN
F 1 "Q_NPN_BCE" H 1750 9150 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 1750 9300 50  0001 C CNN
F 3 "" H 1550 9200 50  0001 C CNN
	1    1550 9200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 9500 1650 9500
Wire Wire Line
	1650 9500 1650 9400
$Comp
L D D1
U 1 1 5AB57DAA
P 1850 9350
F 0 "D1" H 1850 9450 50  0000 C CNN
F 1 "D" H 1850 9250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 1850 9350 50  0001 C CNN
F 3 "" H 1850 9350 50  0001 C CNN
	1    1850 9350
	0    1    1    0   
$EndComp
Connection ~ 1850 9500
Wire Wire Line
	1850 9200 1850 8900
Wire Wire Line
	1850 8900 2150 8900
Connection ~ 2150 8900
Text GLabel 2150 8900 1    60   Input ~ 0
12v
$Comp
L SANYOU_SRD_Form_C K1
U 1 1 5AB5B0F5
P 2350 9200
F 0 "K1" H 2800 9350 50  0000 L CNN
F 1 "SANYOU_SRD_Form_C" H 2800 9250 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 3800 9150 50  0001 C CNN
F 3 "" H 2350 9200 50  0001 C CNN
	1    2350 9200
	1    0    0    -1  
$EndComp
NoConn ~ 4800 8100
NoConn ~ 4800 7800
Text GLabel 3400 7750 2    60   Input ~ 0
gnd
$Comp
L Conn_01x06 J11
U 1 1 5AB5DC47
P 3200 8050
F 0 "J11" H 3200 8350 50  0000 C CNN
F 1 "Conn_01x06" H 3200 7650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 3200 8050 50  0001 C CNN
F 3 "" H 3200 8050 50  0001 C CNN
	1    3200 8050
	-1   0    0    1   
$EndComp
Text GLabel 3400 7850 2    60   Input ~ 0
12v
Text GLabel 3400 7950 2    60   Input ~ 0
5v
$EndSCHEMATC
