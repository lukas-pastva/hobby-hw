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
LIBS:Arduino_Nano-cache
LIBS:arduino_nano
LIBS:psu-smart-v1.0-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
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
$Comp
L Conn_01x05 relay1
U 1 1 5C8EC1DD
P 2050 4950
F 0 "relay1" H 2050 5250 50  0000 C CNN
F 1 "relay1" H 2050 4650 50  0000 C CNN
F 2 "psw-library:psw-relay-small" H 2050 4950 50  0001 C CNN
F 3 "" H 2050 4950 50  0001 C CNN
	1    2050 4950
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 in-plus1
U 1 1 5C8FAAA0
P 5650 3550
F 0 "in-plus1" H 5650 3650 50  0000 C CNN
F 1 "in-plus" H 5650 3350 50  0000 C CNN
F 2 "psw-library:psw-konektor-zeleny" H 5650 3550 50  0001 C CNN
F 3 "" H 5650 3550 50  0001 C CNN
	1    5650 3550
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 in-minus1
U 1 1 5C8FAB63
P 5600 4100
F 0 "in-minus1" H 5600 4200 50  0000 C CNN
F 1 "in-minus" H 5600 3900 50  0000 C CNN
F 2 "psw-library:psw-konektor-zeleny" H 5600 4100 50  0001 C CNN
F 3 "" H 5600 4100 50  0001 C CNN
	1    5600 4100
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 out-plus1
U 1 1 5C8FAC95
P 6800 4200
F 0 "out-plus1" H 6800 4300 50  0000 C CNN
F 1 "out-plus" H 6800 4000 50  0000 C CNN
F 2 "psw-library:psw-konektor-zeleny" H 6800 4200 50  0001 C CNN
F 3 "" H 6800 4200 50  0001 C CNN
	1    6800 4200
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 out-minus1
U 1 1 5C8FACE9
P 6800 3550
F 0 "out-minus1" H 6800 3650 50  0000 C CNN
F 1 "out-minus" H 6800 3350 50  0000 C CNN
F 2 "psw-library:psw-konektor-zeleny" H 6800 3550 50  0001 C CNN
F 3 "" H 6800 3550 50  0001 C CNN
	1    6800 3550
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x04_Counter_Clockwise invertor1
U 1 1 5C8FBFB1
P 2650 1500
F 0 "invertor1" H 2700 1700 50  0000 C CNN
F 1 "invertor" H 2700 1200 50  0000 C CNN
F 2 "Power_Integrations:SO-8" H 2650 1500 50  0001 C CNN
F 3 "" H 2650 1500 50  0001 C CNN
	1    2650 1500
	1    0    0    -1  
$EndComp
NoConn ~ 2950 1500
NoConn ~ 2950 1600
NoConn ~ 2950 1700
$Comp
L R R3
U 1 1 5C8FC2B3
P 2100 1400
F 0 "R3" V 2180 1400 50  0000 C CNN
F 1 "R" V 2100 1400 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2030 1400 50  0001 C CNN
F 3 "" H 2100 1400 50  0001 C CNN
	1    2100 1400
	0    1    1    0   
$EndComp
Text GLabel 750  1500 0    60   Input ~ 0
12V
Text GLabel 2450 1600 0    60   Input ~ 0
arduino-gnd
NoConn ~ 2450 1700
NoConn ~ 2950 1400
$Comp
L R R1
U 1 1 5C8FC5D3
P 1400 1500
F 0 "R1" V 1480 1500 50  0000 C CNN
F 1 "R" V 1400 1500 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1330 1500 50  0001 C CNN
F 3 "" H 1400 1500 50  0001 C CNN
	1    1400 1500
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5C8FCB45
P 1400 2300
F 0 "R2" V 1480 2300 50  0000 C CNN
F 1 "R" V 1400 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1330 2300 50  0001 C CNN
F 3 "" H 1400 2300 50  0001 C CNN
	1    1400 2300
	0    1    1    0   
$EndComp
Text GLabel 2400 2300 2    60   Input ~ 0
v-sens
Text Notes 900  700  0    60   ~ 0
invertor
Text Notes 900  2000 0    60   ~ 0
non-invertor
$Comp
L R R4
U 1 1 5C8FDDFA
P 2250 2050
F 0 "R4" V 2330 2050 50  0000 C CNN
F 1 "R" V 2250 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2180 2050 50  0001 C CNN
F 3 "" H 2250 2050 50  0001 C CNN
	1    2250 2050
	0    1    1    0   
$EndComp
Text GLabel 2400 2050 2    60   Input ~ 0
arduino-gnd
Text GLabel 5850 1850 0    60   Input ~ 0
v-sens
$Comp
L Conn_02x04_Counter_Clockwise ACS712
U 1 1 5C8FE270
P 1900 3800
F 0 "ACS712" H 1950 4000 50  0000 C CNN
F 1 "ACS712" H 1950 3500 50  0000 C CNN
F 2 "Power_Integrations:SO-8" H 1900 3800 50  0001 C CNN
F 3 "" H 1900 3800 50  0001 C CNN
	1    1900 3800
	1    0    0    -1  
$EndComp
Text Notes 900  2750 0    60   ~ 0
ACS712 hall
Text GLabel 1700 3700 0    60   Input ~ 0
in-gnd
Text GLabel 1700 3800 0    60   Input ~ 0
in-gnd
Text GLabel 1700 3900 0    60   Input ~ 0
out-gnd
Text GLabel 1700 4000 0    60   Input ~ 0
out-gnd
Text GLabel 5850 2350 0    60   Input ~ 0
arduino-gnd
Text GLabel 5850 2150 0    60   Input ~ 0
arduino-5V
Text GLabel 2850 3700 2    60   Input ~ 0
arduino-5V
Text GLabel 5850 1950 0    60   Input ~ 0
a-sens
Text GLabel 2200 3800 2    60   Input ~ 0
a-sens
Text GLabel 2250 4100 2    60   Input ~ 0
arduino-gnd
$Comp
L C C1
U 1 1 5C8FF0F0
P 2350 3550
F 0 "C1" H 2375 3650 50  0000 L CNN
F 1 "C" H 2375 3450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2388 3400 50  0001 C CNN
F 3 "" H 2350 3550 50  0001 C CNN
	1    2350 3550
	1    0    0    -1  
$EndComp
Text GLabel 2350 3300 1    60   Input ~ 0
arduino-gnd
$Comp
L C C2
U 1 1 5C8FF241
P 2650 3900
F 0 "C2" H 2675 4000 50  0000 L CNN
F 1 "C" H 2675 3800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2688 3750 50  0001 C CNN
F 3 "" H 2650 3900 50  0001 C CNN
	1    2650 3900
	0    1    1    0   
$EndComp
Text GLabel 2800 3900 2    60   Input ~ 0
arduino-gnd
Text GLabel 1650 1050 0    60   Input ~ 0
v-sens
Text GLabel 5450 3550 0    60   Input ~ 0
12V
Text GLabel 5450 3650 0    60   Input ~ 0
12V
Text GLabel 5400 4100 0    60   Input ~ 0
in-gnd
Text GLabel 5400 4200 0    60   Input ~ 0
in-gnd
$Comp
L Conn_01x01 out-gnd1
U 1 1 5C8FFFFE
P 7300 1900
F 0 "out-gnd1" H 7300 2000 50  0000 C CNN
F 1 "out-gnd" H 7300 1800 50  0000 C CNN
F 2 "psw-library:psw-bananik" H 7300 1900 50  0001 C CNN
F 3 "" H 7300 1900 50  0001 C CNN
	1    7300 1900
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 out1
U 1 1 5C90015C
P 7300 2350
F 0 "out1" H 7300 2450 50  0000 C CNN
F 1 "out" H 7300 2250 50  0000 C CNN
F 2 "psw-library:psw-bananik" H 7300 2350 50  0001 C CNN
F 3 "" H 7300 2350 50  0001 C CNN
	1    7300 2350
	1    0    0    -1  
$EndComp
Text GLabel 7100 1900 0    60   Input ~ 0
out-gnd
Text GLabel 7100 2350 0    60   Input ~ 0
12V-out
Text GLabel 6600 3550 0    60   Input ~ 0
out-gnd
Text GLabel 6600 3650 0    60   Input ~ 0
out-gnd
Text GLabel 6600 4200 0    60   Input ~ 0
12V-out
Text GLabel 6600 4300 0    60   Input ~ 0
12V-out
Text GLabel 1850 4950 0    60   Input ~ 0
12V
NoConn ~ 1850 5050
Text GLabel 1850 5150 0    60   Input ~ 0
12V-out
$Comp
L D D1
U 1 1 5C9008E4
P 1550 4700
F 0 "D1" H 1550 4800 50  0000 C CNN
F 1 "D" H 1550 4600 50  0000 C CNN
F 2 "Diodes_SMD:D_1206" H 1550 4700 50  0001 C CNN
F 3 "" H 1550 4700 50  0001 C CNN
	1    1550 4700
	0    1    1    0   
$EndComp
$Comp
L Conn_01x06 arduino1
U 1 1 5C90141C
P 6050 2050
F 0 "arduino1" H 6050 2350 50  0000 C CNN
F 1 "arduino" H 6050 1650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 6050 2050 50  0001 C CNN
F 3 "" H 6050 2050 50  0001 C CNN
	1    6050 2050
	1    0    0    -1  
$EndComp
Text GLabel 5850 2250 0    60   Input ~ 0
arduino-12V
$Comp
L R R6
U 1 1 5C902DD8
P 2200 1050
F 0 "R6" V 2280 1050 50  0000 C CNN
F 1 "R" V 2200 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2130 1050 50  0001 C CNN
F 3 "" H 2200 1050 50  0001 C CNN
	1    2200 1050
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 5C902F0E
P 1800 800
F 0 "R5" V 1880 800 50  0000 C CNN
F 1 "R" V 1800 800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1730 800 50  0001 C CNN
F 3 "" H 1800 800 50  0001 C CNN
	1    1800 800 
	0    1    1    0   
$EndComp
Text GLabel 1650 800  0    60   Input ~ 0
arduino-gnd
Text Notes 900  4450 0    60   ~ 0
Relay
$Comp
L Q_PNP_BCE Q1
U 1 1 5C903FB7
P 2700 4700
F 0 "Q1" H 2900 4750 50  0000 L CNN
F 1 "Q_PNP_BCE" H 2900 4650 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 2900 4800 50  0001 C CNN
F 3 "" H 2700 4700 50  0001 C CNN
	1    2700 4700
	1    0    0    1   
$EndComp
Text GLabel 2800 4900 3    60   Input ~ 0
arduino-gnd
Text GLabel 2500 5000 3    60   Input ~ 0
arduino-relay
$Comp
L R R7
U 1 1 5C904461
P 2500 4850
F 0 "R7" V 2580 4850 50  0000 C CNN
F 1 "R" V 2500 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2430 4850 50  0001 C CNN
F 3 "" H 2500 4850 50  0001 C CNN
	1    2500 4850
	-1   0    0    1   
$EndComp
Text GLabel 5850 2050 0    60   Input ~ 0
arduino-relay
$Comp
L Conn_01x03 J1
U 1 1 5CA651D8
P 4050 4650
F 0 "J1" H 4050 4850 50  0000 C CNN
F 1 "mosfet" H 4050 4450 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 4050 4650 50  0001 C CNN
F 3 "" H 4050 4650 50  0001 C CNN
	1    4050 4650
	0    -1   -1   0   
$EndComp
Text GLabel 3750 5400 0    60   Input ~ 0
12V
Text GLabel 4050 4850 3    60   Input ~ 0
12V-out
$Comp
L D D2
U 1 1 5CA67FC0
P 3950 6000
F 0 "D2" H 3950 6100 50  0000 C CNN
F 1 "D" H 3950 5900 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" H 3950 6000 50  0001 C CNN
F 3 "" H 3950 6000 50  0001 C CNN
	1    3950 6000
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 5CA687A6
P 3850 5550
F 0 "R8" V 3930 5550 50  0000 C CNN
F 1 "R" V 3850 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3780 5550 50  0001 C CNN
F 3 "" H 3850 5550 50  0001 C CNN
	1    3850 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1500 2450 1500
Wire Wire Line
	1950 1500 1950 1400
Wire Wire Line
	2250 1400 2450 1400
Connection ~ 1950 1500
Wire Wire Line
	2350 1400 2350 1050
Connection ~ 2350 1400
Wire Wire Line
	750  1500 1250 1500
Wire Wire Line
	1000 1500 1000 2300
Wire Wire Line
	1000 2300 1250 2300
Connection ~ 1000 1500
Wire Wire Line
	1550 2300 2400 2300
Wire Bus Line
	800  550  3100 550 
Wire Bus Line
	3100 550  3100 2500
Wire Bus Line
	3100 1850 800  1850
Wire Bus Line
	800  550  800  2500
Wire Bus Line
	800  2500 3100 2500
Wire Wire Line
	2100 2050 2100 2300
Connection ~ 2100 2300
Wire Wire Line
	2850 3700 2200 3700
Wire Wire Line
	2500 3900 2200 3900
Wire Bus Line
	800  2600 3500 2600
Wire Bus Line
	800  2600 800  4250
Wire Wire Line
	1850 4500 1850 4750
Wire Wire Line
	1850 4550 1550 4550
Wire Wire Line
	1850 4850 1550 4850
Wire Bus Line
	3500 2600 3500 4250
Wire Bus Line
	3500 4250 800  4250
Wire Wire Line
	1650 1050 2050 1050
Wire Wire Line
	1950 800  1950 1050
Connection ~ 1950 1050
Wire Wire Line
	1850 4500 3450 4500
Connection ~ 1850 4550
Wire Wire Line
	2250 4100 2200 4100
Wire Wire Line
	2200 4100 2200 4000
Wire Wire Line
	2350 3400 2350 3300
Connection ~ 2350 3700
Wire Wire Line
	4050 5850 3950 5850
Wire Wire Line
	3950 5400 3750 5400
Wire Wire Line
	3950 4850 3950 5400
Connection ~ 3850 5400
Wire Wire Line
	3850 5700 4050 5700
Connection ~ 4050 5700
Wire Wire Line
	4050 5450 4050 5850
Wire Wire Line
	4050 5450 4150 5450
Wire Wire Line
	4150 5450 4150 4850
Wire Wire Line
	3450 4500 3450 6150
Wire Wire Line
	3450 6150 3950 6150
Connection ~ 2800 4500
Text GLabel 6100 5400 0    60   Input ~ 0
in-gnd
Text GLabel 6100 5500 0    60   Input ~ 0
out-gnd
$Comp
L Conn_01x02 J2
U 1 1 5CA6B9A9
P 6300 5400
F 0 "J2" H 6300 5500 50  0000 C CNN
F 1 "shunt" H 6300 5200 50  0000 C CNN
F 2 "psw-library:psw-shunt" H 6300 5400 50  0001 C CNN
F 3 "" H 6300 5400 50  0001 C CNN
	1    6300 5400
	1    0    0    -1  
$EndComp
$EndSCHEMATC
