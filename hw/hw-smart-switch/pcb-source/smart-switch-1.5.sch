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
LIBS:connectors
LIBS:ic-cpu
LIBS:ic-io
LIBS:ic-misc
LIBS:ic-power
LIBS:passive
LIBS:smart-switch-1.5-cache
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
$Comp
L SANYOU_SRD_Form_C rel1
U 1 1 5A068DC1
P 6850 1400
F 0 "rel1" H 7300 1550 50  0000 L CNN
F 1 "relay1" H 7300 1450 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 8300 1350 50  0001 C CNN
F 3 "" H 6850 1400 50  0001 C CNN
	1    6850 1400
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 5A068DD9
P 6200 1400
F 0 "D1" H 6200 1500 50  0000 C CNN
F 1 "D" H 6200 1300 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 6200 1400 50  0001 C CNN
F 3 "" H 6200 1400 50  0001 C CNN
	1    6200 1400
	0    1    1    0   
$EndComp
$Comp
L Conn_01x15 J1
U 1 1 5AAAC491
P 9200 2300
F 0 "J1" H 9200 3100 50  0000 C CNN
F 1 "nodemcu-left" H 9200 1500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x15_Pitch2.54mm" H 9200 2300 50  0001 C CNN
F 3 "" H 9200 2300 50  0001 C CNN
	1    9200 2300
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x15 J2
U 1 1 5AAAC5A1
P 10100 2300
F 0 "J2" H 10100 3100 50  0000 C CNN
F 1 "nodemcu-right" H 10100 1500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x15_Pitch2.54mm" H 10100 2300 50  0001 C CNN
F 3 "" H 10100 2300 50  0001 C CNN
	1    10100 2300
	1    0    0    -1  
$EndComp
Text GLabel 9000 1600 0    60   Input ~ 0
a0
Text GLabel 9000 1800 0    60   Input ~ 0
vu
Text GLabel 9000 1900 0    60   Input ~ 0
s3
Text GLabel 9000 2000 0    60   Input ~ 0
s2
Text GLabel 9000 2100 0    60   Input ~ 0
s1
Text GLabel 9000 2200 0    60   Input ~ 0
sc
Text GLabel 9000 2300 0    60   Input ~ 0
so
Text GLabel 9000 2400 0    60   Input ~ 0
sk
Text GLabel 9000 2600 0    60   Input ~ 0
3v
Text GLabel 9000 2700 0    60   Input ~ 0
en
Text GLabel 9000 2800 0    60   Input ~ 0
rst
Text GLabel 9000 2900 0    60   Input ~ 0
g
Text GLabel 9900 1600 0    60   Input ~ 0
d0
Text GLabel 9900 1700 0    60   Input ~ 0
d1
Text GLabel 9900 1800 0    60   Input ~ 0
d2
Text GLabel 9900 1900 0    60   Input ~ 0
d3
Text GLabel 9900 2000 0    60   Input ~ 0
d4
Text GLabel 9900 2300 0    60   Input ~ 0
d5
Text GLabel 9900 2400 0    60   Input ~ 0
d6
Text GLabel 9900 2500 0    60   Input ~ 0
d7
Text GLabel 9900 2600 0    60   Input ~ 0
d8
Text GLabel 9900 2700 0    60   Input ~ 0
rx
Text GLabel 9900 2800 0    60   Input ~ 0
tx
Text GLabel 9900 2900 0    60   Input ~ 0
g
Text GLabel 6200 800  1    60   Input ~ 0
vin
Text GLabel 5950 6250 0    60   Input ~ 0
d5
$Comp
L R R-rel1
U 1 1 5AAB2895
P 6500 2100
F 0 "R-rel1" V 6580 2100 50  0000 C CNN
F 1 "R" V 6500 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6430 2100 50  0001 C CNN
F 3 "" H 6500 2100 50  0001 C CNN
	1    6500 2100
	0    -1   -1   0   
$EndComp
Text GLabel 6350 1900 0    60   Input ~ 0
g
$Comp
L R R-rel2
U 1 1 5AAB4980
P 6350 3000
F 0 "R-rel2" V 6430 3000 50  0000 C CNN
F 1 "R" V 6350 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6280 3000 50  0001 C CNN
F 3 "" H 6350 3000 50  0001 C CNN
	1    6350 3000
	0    -1   -1   0   
$EndComp
Text GLabel 6200 3000 0    60   Input ~ 0
vin
Text GLabel 6250 5450 0    60   Input ~ 0
d6
$Comp
L R R-t2
U 1 1 5AAB499B
P 6300 3800
F 0 "R-t2" V 6380 3800 50  0000 C CNN
F 1 "R" V 6300 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6230 3800 50  0001 C CNN
F 3 "" H 6300 3800 50  0001 C CNN
	1    6300 3800
	0    -1   -1   0   
$EndComp
$Comp
L 2N2219 t2
U 1 1 5AAB49A1
P 6350 3600
F 0 "t2" H 6550 3675 50  0000 L CNN
F 1 "NPN-2" H 6550 3600 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 6550 3525 50  0001 L CIN
F 3 "" H 6350 3600 50  0001 L CNN
	1    6350 3600
	1    0    0    -1  
$EndComp
Text GLabel 6150 3600 0    60   Input ~ 0
g
$Comp
L R R-relay-3
U 1 1 5AAB4EEC
P 6300 4850
F 0 "R-relay-3" V 6380 4850 50  0000 C CNN
F 1 "R" V 6300 4850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6230 4850 50  0001 C CNN
F 3 "" H 6300 4850 50  0001 C CNN
	1    6300 4850
	0    1    1    0   
$EndComp
Text GLabel 6150 4850 0    60   Input ~ 0
vin
Text GLabel 6150 3800 0    60   Input ~ 0
d7
$Comp
L R R-tr-3
U 1 1 5AAB4F01
P 6400 5450
F 0 "R-tr-3" V 6480 5450 50  0000 C CNN
F 1 "R" V 6400 5450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6330 5450 50  0001 C CNN
F 3 "" H 6400 5450 50  0001 C CNN
	1    6400 5450
	0    -1   -1   0   
$EndComp
Text GLabel 6250 5250 0    60   Input ~ 0
g
NoConn ~ 6950 1100
Text GLabel 9050 900  0    60   Input ~ 0
240v-in
Text GLabel 9150 900  2    60   Input ~ 0
240v-out
Text GLabel 7150 4850 2    60   Input ~ 0
240v-in
Text GLabel 7100 3200 2    60   Input ~ 0
240v-out
Text GLabel 7050 1700 3    60   Input ~ 0
fan-in
Text GLabel 7150 1100 1    60   Input ~ 0
fan
Text GLabel 10400 4250 0    60   Input ~ 0
N
Text GLabel 10400 4450 0    60   Input ~ 0
g
Text GLabel 10400 4350 0    60   Input ~ 0
vin
$Comp
L Fuse F1
U 1 1 5AAC1B40
P 8300 3850
F 0 "F1" V 8380 3850 50  0000 C CNN
F 1 "F240V" V 8225 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_1812_HandSoldering" V 8230 3850 50  0001 C CNN
F 3 "" H 8300 3850 50  0001 C CNN
	1    8300 3850
	0    1    1    0   
$EndComp
Text GLabel 8150 3850 0    60   Input ~ 0
240v-out
Text GLabel 8450 3850 2    60   Input ~ 0
240v-plug
Text GLabel 10400 4150 0    60   Input ~ 0
240v-in
$Comp
L Barrel_Jack J4
U 1 1 5AAC4E7F
P 8450 5050
F 0 "J4" H 8450 5260 50  0000 C CNN
F 1 "fan-out" H 8450 4875 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 8500 5010 50  0001 C CNN
F 3 "" H 8500 5010 50  0001 C CNN
	1    8450 5050
	-1   0    0    1   
$EndComp
Text GLabel 7850 5700 0    60   Input ~ 0
fan-in
$Comp
L Conn_01x02 J3
U 1 1 5AAC5CBC
P 8050 5700
F 0 "J3" H 8050 5800 50  0000 C CNN
F 1 "fan-in" H 8050 5500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 8050 5700 50  0001 C CNN
F 3 "" H 8050 5700 50  0001 C CNN
	1    8050 5700
	1    0    0    -1  
$EndComp
Text GLabel 7850 5800 0    60   Input ~ 0
fan-gnd
Text GLabel 8150 5050 0    60   Input ~ 0
fan-gnd
Text GLabel 8150 4950 0    60   Input ~ 0
fan-gnd
Text GLabel 8150 5150 0    60   Input ~ 0
fan
Text GLabel 10650 900  0    60   Input ~ 0
3v
Text GLabel 10650 1200 0    60   Input ~ 0
g
Text GLabel 10050 1000 0    60   Input ~ 0
d4
Text GLabel 7150 5050 2    60   Input ~ 0
240v-out
Text GLabel 9000 3000 0    60   Input ~ 0
vin
Text GLabel 7100 3000 2    60   Input ~ 0
240v-out-plug
$Comp
L Conn_01x01 J14
U 1 1 5AAD1E04
P 10000 5900
F 0 "J14" H 10000 6000 50  0000 C CNN
F 1 "mains-out-N" H 10000 5800 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 10000 5900 50  0001 C CNN
F 3 "" H 10000 5900 50  0001 C CNN
	1    10000 5900
	1    0    0    -1  
$EndComp
Text GLabel 9800 5900 0    60   Input ~ 0
N
$Comp
L Conn_01x01 J7
U 1 1 5AAD261C
P 10200 6250
F 0 "J7" H 10200 6350 50  0000 C CNN
F 1 "mains-in-L" H 10200 6150 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 10200 6250 50  0001 C CNN
F 3 "" H 10200 6250 50  0001 C CNN
	1    10200 6250
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J8
U 1 1 5AAD2622
P 10200 6600
F 0 "J8" H 10200 6700 50  0000 C CNN
F 1 "mains-out-L" H 10200 6500 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 10200 6600 50  0001 C CNN
F 3 "" H 10200 6600 50  0001 C CNN
	1    10200 6600
	1    0    0    -1  
$EndComp
Text GLabel 10000 6600 0    60   Input ~ 0
240v-out-plug
NoConn ~ 9900 3000
NoConn ~ 9900 2100
NoConn ~ 9000 2500
Text GLabel 10000 6250 0    60   Input ~ 0
240v-plug
$Comp
L Conn_01x04 J5
U 1 1 5AAB0D5A
P 10600 4250
F 0 "J5" H 10600 4450 50  0000 C CNN
F 1 "5v zdroj" H 10600 3950 50  0000 C CNN
F 2 "conn-io:5v-zdroj-dual" H 10600 4250 50  0001 C CNN
F 3 "" H 10600 4250 50  0001 C CNN
	1    10600 4250
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J6
U 1 1 5AACE040
P 6350 6450
F 0 "J6" H 6350 6550 50  0000 C CNN
F 1 "sw1" H 6350 6250 50  0000 C CNN
F 2 "psw-library:tlacitko-na-sirku" H 6350 6450 50  0001 C CNN
F 3 "" H 6350 6450 50  0001 C CNN
	1    6350 6450
	0    1    1    0   
$EndComp
$Comp
L Conn_01x02 J9
U 1 1 5AACF709
P 9050 700
F 0 "J9" H 9050 800 50  0000 C CNN
F 1 "sw2" H 9050 500 50  0000 C CNN
F 2 "psw-library:tlacitko-na-sirku" H 9050 700 50  0001 C CNN
F 3 "" H 9050 700 50  0001 C CNN
	1    9050 700 
	0    -1   -1   0   
$EndComp
$Comp
L S116S01 rel2
U 1 1 5AB06447
P 6800 3100
F 0 "rel2" H 6600 3300 50  0000 L CNN
F 1 "S116S01" H 6800 3300 50  0000 L CNN
F 2 "psw-library:psw-solid-state-relay" H 6600 2900 50  0001 L CIN
F 3 "" H 6765 3100 50  0001 L CNN
	1    6800 3100
	1    0    0    -1  
$EndComp
$Comp
L S116S01 U2
U 1 1 5AB06D0A
P 6850 4950
F 0 "U2" H 6650 5150 50  0000 L CNN
F 1 "S116S01" H 6850 5150 50  0000 L CNN
F 2 "psw-library:psw-solid-state-relay" H 6650 4750 50  0001 L CIN
F 3 "" H 6815 4950 50  0001 L CNN
	1    6850 4950
	1    0    0    -1  
$EndComp
$Comp
L 2N2219 Q3
U 1 1 5AAB4F0D
P 6450 5250
F 0 "Q3" H 6650 5325 50  0000 L CNN
F 1 "NPN-3" H 6650 5250 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 6650 5175 50  0001 L CIN
F 3 "" H 6450 5250 50  0001 L CNN
	1    6450 5250
	1    0    0    -1  
$EndComp
$Comp
L 2N2219 t1
U 1 1 5AAB36BD
P 6550 1900
F 0 "t1" H 6750 1975 50  0000 L CNN
F 1 "NPN-1" H 6750 1900 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 6750 1825 50  0001 L CIN
F 3 "" H 6550 1900 50  0001 L CNN
	1    6550 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 800  6200 1250
Wire Wire Line
	6200 1550 6200 1700
Wire Wire Line
	6200 1700 6650 1700
Connection ~ 6650 1700
Connection ~ 6200 1100
Wire Wire Line
	6500 3200 6450 3200
Wire Wire Line
	6450 3200 6450 3400
Wire Wire Line
	6200 1100 6650 1100
NoConn ~ 9900 2200
Text GLabel 5250 2400 1    60   Input ~ 0
a0
$Comp
L R R-am1
U 1 1 5AAEDF5B
P 5250 2550
F 0 "R-am1" V 5330 2550 50  0000 C CNN
F 1 "R" V 5250 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5180 2550 50  0001 C CNN
F 3 "" H 5250 2550 50  0001 C CNN
	1    5250 2550
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 ammeter1
U 1 1 5AAEE00B
P 5700 2500
F 0 "ammeter1" H 5700 2600 50  0000 C CNN
F 1 "amp" H 5700 2300 50  0000 C CNN
F 2 "psw-library:psw-ammeter" H 5700 2500 50  0001 C CNN
F 3 "" H 5700 2500 50  0001 C CNN
	1    5700 2500
	1    0    0    -1  
$EndComp
Text GLabel 5250 2700 3    60   Input ~ 0
g
Wire Wire Line
	5500 2400 5500 2500
Wire Wire Line
	5050 2400 5500 2400
Wire Wire Line
	5500 2700 5500 2600
Wire Wire Line
	5050 2700 5500 2700
Connection ~ 5250 2400
Connection ~ 5250 2700
$Comp
L Conn_01x04 temp1
U 1 1 5AAF09E1
P 10450 1100
F 0 "temp1" H 10450 1300 50  0000 C CNN
F 1 "fht" H 10450 800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 10450 1100 50  0001 C CNN
F 3 "" H 10450 1100 50  0001 C CNN
	1    10450 1100
	-1   0    0    1   
$EndComp
$Comp
L R R-tmp1
U 1 1 5AAF0DB9
P 10200 850
F 0 "R-tmp1" V 10280 850 50  0000 C CNN
F 1 "R" V 10200 850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 10130 850 50  0001 C CNN
F 3 "" H 10200 850 50  0001 C CNN
	1    10200 850 
	-1   0    0    1   
$EndComp
Text GLabel 10200 700  1    60   Input ~ 0
3v
Connection ~ 10200 1000
Text GLabel 9000 1700 0    60   Input ~ 0
g
Wire Wire Line
	6450 4850 6550 4850
Text GLabel 6350 2100 0    60   Input ~ 0
d8
$Comp
L R R-relay-1
U 1 1 5AE599F7
P 6400 5950
F 0 "R-relay-1" V 6480 5950 50  0000 C CNN
F 1 "R" V 6400 5950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6330 5950 50  0001 C CNN
F 3 "" H 6400 5950 50  0001 C CNN
	1    6400 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 6250 5950 6250
Wire Wire Line
	6250 6250 6250 5950
Text GLabel 6550 5950 2    60   Input ~ 0
g
Connection ~ 6250 6250
Text GLabel 6350 6250 2    60   Input ~ 0
3v
$Comp
L R R-am2
U 1 1 5AE6C110
P 5050 2550
F 0 "R-am2" V 5130 2550 50  0000 C CNN
F 1 "R" V 5050 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4980 2550 50  0001 C CNN
F 3 "" H 5050 2550 50  0001 C CNN
	1    5050 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 900  10850 900 
Wire Wire Line
	10650 1200 10850 1200
$Comp
L R R-tmp2
U 1 1 5AE6CB64
P 10850 1050
F 0 "R-tmp2" V 10930 1050 50  0000 C CNN
F 1 "R" V 10850 1050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 10780 1050 50  0001 C CNN
F 3 "" H 10850 1050 50  0001 C CNN
	1    10850 1050
	-1   0    0    1   
$EndComp
Connection ~ 10650 900 
Connection ~ 10650 1200
$Comp
L Conn_01x01 J10
U 1 1 5AE6D08E
P 6850 7300
F 0 "J10" H 6850 7400 50  0000 C CNN
F 1 "Conn_01x01" H 6850 7200 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3mm" H 6850 7300 50  0001 C CNN
F 3 "" H 6850 7300 50  0001 C CNN
	1    6850 7300
	1    0    0    -1  
$EndComp
NoConn ~ 6650 7300
$Comp
L Conn_01x01 J11
U 1 1 5AE6D327
P 6850 7650
F 0 "J11" H 6850 7750 50  0000 C CNN
F 1 "Conn_01x01" H 6850 7550 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3mm" H 6850 7650 50  0001 C CNN
F 3 "" H 6850 7650 50  0001 C CNN
	1    6850 7650
	1    0    0    -1  
$EndComp
NoConn ~ 6650 7650
$Comp
L Conn_01x01 J13
U 1 1 5AE6D32E
P 7450 7650
F 0 "J13" H 7450 7750 50  0000 C CNN
F 1 "Conn_01x01" H 7450 7550 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3mm" H 7450 7650 50  0001 C CNN
F 3 "" H 7450 7650 50  0001 C CNN
	1    7450 7650
	1    0    0    -1  
$EndComp
NoConn ~ 7250 7650
Text GLabel 4050 4700 0    60   Input ~ 0
d3
$Comp
L Conn_01x02 J12
U 1 1 5AE6F1E6
P 4250 4700
F 0 "J12" H 4250 4800 50  0000 C CNN
F 1 "piezo" H 4250 4500 50  0000 C CNN
F 2 "psw-library:psw-piezo" H 4250 4700 50  0001 C CNN
F 3 "" H 4250 4700 50  0001 C CNN
	1    4250 4700
	1    0    0    -1  
$EndComp
Text GLabel 4050 4800 0    60   Input ~ 0
g
Wire Wire Line
	10050 1000 10200 1000
Wire Wire Line
	10200 1000 10200 1400
Wire Wire Line
	10200 1400 10750 1400
Wire Wire Line
	10750 1400 10750 1100
Wire Wire Line
	10750 1100 10650 1100
$EndSCHEMATC
