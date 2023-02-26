EESchema Schematic File Version 2
LIBS:power
LIBS:kamerovy-system-v1.7-cache
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
Text GLabel 6150 6300 0    60   Input ~ 0
eth1-1
Text GLabel 6650 6300 2    60   Input ~ 0
eth1-2
Text GLabel 6150 6400 0    60   Input ~ 0
eth1-3
Text GLabel 6650 6500 2    60   Input ~ 0
eth1-4
Text GLabel 2000 1650 0    60   Input ~ 0
12v-input
Text GLabel 1400 3600 0    60   Input ~ 0
12v-input
Text GLabel 1350 3050 0    60   Input ~ 0
12v-1
Text GLabel 1350 2950 0    60   Input ~ 0
12v-input
Text GLabel 1400 3500 0    60   Input ~ 0
12v-2
Text GLabel 3150 5950 2    60   Input ~ 0
gnd
Text GLabel 2650 6050 0    60   Input ~ 0
gnd
Text GLabel 4250 6150 0    60   Input ~ 0
12v-1
Text GLabel 4750 6150 2    60   Input ~ 0
12v-1
$Comp
L Conn_02x04_Odd_Even J3
U 1 1 5ACB1F10
P 6350 6400
F 0 "J3" H 6400 6600 50  0000 C CNN
F 1 "eth1" H 6400 6100 50  0000 C CNN
F 2 "psw-library:rj-45-big-pins" H 6350 6400 50  0001 C CNN
F 3 "" H 6350 6400 50  0001 C CNN
	1    6350 6400
	1    0    0    -1  
$EndComp
Text GLabel 2700 6550 0    60   Input ~ 0
eth2-1
Text GLabel 3200 6550 2    60   Input ~ 0
eth2-2
Text GLabel 2700 6650 0    60   Input ~ 0
eth2-3
Text GLabel 3200 6750 2    60   Input ~ 0
eth2-4
Text GLabel 3200 6650 2    60   Input ~ 0
gnd
Text GLabel 2700 6750 0    60   Input ~ 0
gnd
Text GLabel 4300 8350 0    60   Input ~ 0
12v-1
Text GLabel 4800 8350 2    60   Input ~ 0
12v-1
$Comp
L Conn_02x04_Odd_Even J4
U 1 1 5ACB425D
P 2900 6650
F 0 "J4" H 2950 6850 50  0000 C CNN
F 1 "eth2" H 2950 6350 50  0000 C CNN
F 2 "psw-library:psw-rj45-no-hole" H 2900 6650 50  0001 C CNN
F 3 "" H 2900 6650 50  0001 C CNN
	1    2900 6650
	1    0    0    -1  
$EndComp
Text GLabel 4250 5850 0    60   Input ~ 0
eth4-1
Text GLabel 4750 5850 2    60   Input ~ 0
eth4-2
Text GLabel 4250 5950 0    60   Input ~ 0
eth4-3
Text GLabel 4750 6050 2    60   Input ~ 0
eth4-4
Text GLabel 4750 5950 2    60   Input ~ 0
gnd
Text GLabel 4250 6050 0    60   Input ~ 0
gnd
Text GLabel 2650 6150 0    60   Input ~ 0
12v-2
Text GLabel 3150 6150 2    60   Input ~ 0
12v-2
$Comp
L Conn_02x04_Odd_Even J8
U 1 1 5ACB458D
P 4450 5950
F 0 "J8" H 4500 6150 50  0000 C CNN
F 1 "eth4" H 4500 5650 50  0000 C CNN
F 2 "psw-library:psw-rj45-no-hole" H 4450 5950 50  0001 C CNN
F 3 "" H 4450 5950 50  0001 C CNN
	1    4450 5950
	1    0    0    -1  
$EndComp
Text GLabel 2650 7200 0    60   Input ~ 0
eth5-1
Text GLabel 3150 7200 2    60   Input ~ 0
eth5-2
Text GLabel 2650 7300 0    60   Input ~ 0
eth5-3
Text GLabel 3150 7400 2    60   Input ~ 0
eth5-4
Text GLabel 3150 7300 2    60   Input ~ 0
gnd
Text GLabel 2650 7400 0    60   Input ~ 0
gnd
Text GLabel 2650 7500 0    60   Input ~ 0
12v-2
Text GLabel 3150 7500 2    60   Input ~ 0
12v-2
$Comp
L Conn_02x04_Odd_Even J9
U 1 1 5ACB459B
P 2850 7300
F 0 "J9" H 2900 7500 50  0000 C CNN
F 1 "eth5" H 2900 7000 50  0000 C CNN
F 2 "psw-library:psw-rj45-no-hole" H 2850 7300 50  0001 C CNN
F 3 "" H 2850 7300 50  0001 C CNN
	1    2850 7300
	1    0    0    -1  
$EndComp
Text GLabel 4250 6700 0    60   Input ~ 0
eth6-1
Text GLabel 4750 6700 2    60   Input ~ 0
eth6-2
Text GLabel 4250 6800 0    60   Input ~ 0
eth6-3
Text GLabel 4750 6900 2    60   Input ~ 0
eth6-4
Text GLabel 4750 6800 2    60   Input ~ 0
gnd
Text GLabel 4250 6900 0    60   Input ~ 0
gnd
Text GLabel 4250 7000 0    60   Input ~ 0
12v-1
Text GLabel 4750 7000 2    60   Input ~ 0
12v-1
$Comp
L Conn_02x04_Odd_Even J10
U 1 1 5ACB45A9
P 4450 6800
F 0 "J10" H 4500 7000 50  0000 C CNN
F 1 "eth6" H 4500 6500 50  0000 C CNN
F 2 "psw-library:psw-rj45-no-hole" H 4450 6800 50  0001 C CNN
F 3 "" H 4450 6800 50  0001 C CNN
	1    4450 6800
	1    0    0    -1  
$EndComp
Text GLabel 7950 6250 0    60   Input ~ 0
eth7-1
Text GLabel 8450 6250 2    60   Input ~ 0
eth7-2
Text GLabel 7950 6350 0    60   Input ~ 0
eth7-3
Text GLabel 8450 6450 2    60   Input ~ 0
eth7-4
Text GLabel 4800 8150 2    60   Input ~ 0
gnd
Text GLabel 4300 8250 0    60   Input ~ 0
gnd
Text GLabel 2700 6850 0    60   Input ~ 0
12v-2
Text GLabel 3200 6850 2    60   Input ~ 0
12v-2
$Comp
L Conn_02x04_Odd_Even J12
U 1 1 5ACB5491
P 6550 7800
F 0 "J12" H 6600 8000 50  0000 C CNN
F 1 "eth7-in" H 6600 7500 50  0000 C CNN
F 2 "psw-library:rj-45-big-pins" H 6550 7800 50  0001 C CNN
F 3 "" H 6550 7800 50  0001 C CNN
	1    6550 7800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 12v1
U 1 1 5ACB8070
P 2200 1550
F 0 "12v1" H 2200 1650 50  0000 C CNN
F 1 "12v-input" H 2200 1350 50  0000 C CNN
F 2 "psw-library:psw-konektor-zeleny" H 2200 1550 50  0001 C CNN
F 3 "" H 2200 1550 50  0001 C CNN
	1    2200 1550
	1    0    0    -1  
$EndComp
Text GLabel 2000 1550 0    60   Input ~ 0
12v-input
$Comp
L Conn_01x02 fuse-2
U 1 1 5ACB91F6
P 1600 3500
F 0 "fuse-2" H 1600 3600 50  0000 C CNN
F 1 "fuse-2" H 1600 3300 50  0000 C CNN
F 2 "psw-library:psw-poistka-auto" H 1600 3500 50  0001 C CNN
F 3 "" H 1600 3500 50  0001 C CNN
	1    1600 3500
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 fuse-1
U 1 1 5ACBAC75
P 1550 2950
F 0 "fuse-1" H 1550 3050 50  0000 C CNN
F 1 "fuse-1" H 1550 2750 50  0000 C CNN
F 2 "psw-library:psw-poistka-auto" H 1550 2950 50  0001 C CNN
F 3 "" H 1550 2950 50  0001 C CNN
	1    1550 2950
	1    0    0    -1  
$EndComp
Text GLabel 2300 4450 0    60   Input ~ 0
5v
Text GLabel 2300 4350 0    60   Input ~ 0
gnd
Text GLabel 2300 4550 0    60   Input ~ 0
gnd
$Comp
L Conn_01x04 J1
U 1 1 5AF74C29
P 2500 4350
F 0 "J1" H 2500 4550 50  0000 C CNN
F 1 "d-dc" H 2500 4050 50  0000 C CNN
F 2 "psw-library:psw-dc-dc-lm2596" H 2500 4350 50  0001 C CNN
F 3 "" H 2500 4350 50  0001 C CNN
	1    2500 4350
	1    0    0    -1  
$EndComp
Text GLabel 2000 4250 0    60   Input ~ 0
12v-input
$Comp
L Conn_01x02 gnd1
U 1 1 5ACB854A
P 2450 2400
F 0 "gnd1" H 2450 2500 50  0000 C CNN
F 1 "gnd" H 2450 2200 50  0000 C CNN
F 2 "psw-library:psw-konektor-zeleny" H 2450 2400 50  0001 C CNN
F 3 "" H 2450 2400 50  0001 C CNN
	1    2450 2400
	1    0    0    -1  
$EndComp
Text GLabel 2250 2500 0    60   Input ~ 0
gnd
Text GLabel 2250 2400 0    60   Input ~ 0
gnd
$Comp
L Conn_02x04_Odd_Even J5
U 1 1 5AF8603B
P 2900 8150
F 0 "J5" H 2950 8350 50  0000 C CNN
F 1 "eth8" H 2950 7850 50  0000 C CNN
F 2 "psw-library:psw-rj45-no-hole" H 2900 8150 50  0001 C CNN
F 3 "" H 2900 8150 50  0001 C CNN
	1    2900 8150
	1    0    0    -1  
$EndComp
Text GLabel 1250 9450 0    60   Input ~ 0
out2
Text Label 1000 9050 0    60   ~ 0
fan
$Comp
L 2N2219 Q1
U 1 1 5AF87F10
P 1450 9650
F 0 "Q1" H 1650 9725 50  0000 L CNN
F 1 "2N2219" H 1650 9650 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TSOT-23_HandSoldering" H 1650 9575 50  0001 L CIN
F 3 "" H 1450 9650 50  0001 L CNN
	1    1450 9650
	1    0    0    1   
$EndComp
$Comp
L R R1
U 1 1 5AF8826D
P 1400 9450
F 0 "R1" V 1480 9450 50  0000 C CNN
F 1 "R" V 1400 9450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 1330 9450 50  0001 C CNN
F 3 "" H 1400 9450 50  0001 C CNN
	1    1400 9450
	0    1    1    0   
$EndComp
Text GLabel 1250 9650 0    60   Input ~ 0
gnd
Text GLabel 2250 10300 3    60   Input ~ 0
12v
$Comp
L D D1
U 1 1 5AF8A479
P 2500 10250
F 0 "D1" H 2500 10350 50  0000 C CNN
F 1 "D" H 2500 10150 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" H 2500 10250 50  0001 C CNN
F 3 "" H 2500 10250 50  0001 C CNN
	1    2500 10250
	-1   0    0    1   
$EndComp
Text GLabel 2750 9450 1    60   Input ~ 0
12v
$Comp
L Conn_01x02 J6
U 1 1 5AF8BB67
P 2600 8800
F 0 "J6" H 2600 8900 50  0000 C CNN
F 1 "fan" H 2600 8600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x01_Pitch2.54mm" H 2600 8800 50  0001 C CNN
F 3 "" H 2600 8800 50  0001 C CNN
	1    2600 8800
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5AF8BD81
P 2550 9300
F 0 "R9" V 2630 9300 50  0000 C CNN
F 1 "R" V 2550 9300 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2480 9300 50  0001 C CNN
F 3 "" H 2550 9300 50  0001 C CNN
	1    2550 9300
	-1   0    0    1   
$EndComp
$Comp
L R R8
U 1 1 5AF8BE50
P 2250 9300
F 0 "R8" V 2330 9300 50  0000 C CNN
F 1 "R" V 2250 9300 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2180 9300 50  0001 C CNN
F 3 "" H 2250 9300 50  0001 C CNN
	1    2250 9300
	-1   0    0    1   
$EndComp
Text GLabel 2700 8050 0    60   Input ~ 0
eth8-1
Text GLabel 2700 8150 0    60   Input ~ 0
eth8-3
Text GLabel 3200 8250 2    60   Input ~ 0
eth8-4
Text GLabel 3200 8050 2    60   Input ~ 0
eth8-2
Wire Bus Line
	900  8900 900  12100
Wire Bus Line
	4100 8900 4100 12100
Wire Bus Line
	4100 8900 950  8900
Wire Bus Line
	900  8900 1000 8900
Wire Wire Line
	1550 9850 1550 10400
Wire Bus Line
	4100 12100 900  12100
$Comp
L Conn_01x01 J19
U 1 1 5AFDCB80
P 4950 9000
F 0 "J19" H 4950 9100 50  0000 C CNN
F 1 "h1" H 4950 8900 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3mm_Pad" H 4950 9000 50  0001 C CNN
F 3 "" H 4950 9000 50  0001 C CNN
	1    4950 9000
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J20
U 1 1 5AFDD10A
P 4950 9300
F 0 "J20" H 4950 9400 50  0000 C CNN
F 1 "h1" H 4950 9200 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3mm_Pad" H 4950 9300 50  0001 C CNN
F 3 "" H 4950 9300 50  0001 C CNN
	1    4950 9300
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J21
U 1 1 5AFDD21F
P 4950 9600
F 0 "J21" H 4950 9700 50  0000 C CNN
F 1 "h1" H 4950 9500 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3mm_Pad" H 4950 9600 50  0001 C CNN
F 3 "" H 4950 9600 50  0001 C CNN
	1    4950 9600
	1    0    0    -1  
$EndComp
Text GLabel 2650 5850 0    60   Input ~ 0
eth1-1
Text GLabel 3150 5850 2    60   Input ~ 0
eth1-2
Text GLabel 2650 5950 0    60   Input ~ 0
eth1-3
Text GLabel 3150 6050 2    60   Input ~ 0
eth1-4
$Comp
L Conn_02x04_Odd_Even J13
U 1 1 5BBEAE06
P 2850 5950
F 0 "J13" H 2900 6150 50  0000 C CNN
F 1 "eth1-in" H 2900 5650 50  0000 C CNN
F 2 "psw-library:psw-rj45-no-hole" H 2850 5950 50  0001 C CNN
F 3 "" H 2850 5950 50  0001 C CNN
	1    2850 5950
	1    0    0    -1  
$EndComp
Text GLabel 6400 6950 0    60   Input ~ 0
eth2-1
Text GLabel 6900 6950 2    60   Input ~ 0
eth2-2
Text GLabel 6400 7050 0    60   Input ~ 0
eth2-3
Text GLabel 6900 7150 2    60   Input ~ 0
eth2-4
$Comp
L Conn_02x04_Odd_Even J14
U 1 1 5BBEAE14
P 6600 7050
F 0 "J14" H 6650 7250 50  0000 C CNN
F 1 "eth2-in" H 6650 6750 50  0000 C CNN
F 2 "psw-library:rj-45-big-pins" H 6600 7050 50  0001 C CNN
F 3 "" H 6600 7050 50  0001 C CNN
	1    6600 7050
	1    0    0    -1  
$EndComp
Text GLabel 6350 7700 0    60   Input ~ 0
eth4-1
Text GLabel 6850 7700 2    60   Input ~ 0
eth4-2
Text GLabel 6350 7800 0    60   Input ~ 0
eth4-3
Text GLabel 6850 7900 2    60   Input ~ 0
eth4-4
$Comp
L Conn_02x04_Odd_Even J16
U 1 1 5BBEAE26
P 8150 6350
F 0 "J16" H 8200 6550 50  0000 C CNN
F 1 "eth4-in" H 8200 6050 50  0000 C CNN
F 2 "psw-library:rj-45-big-pins" H 8150 6350 50  0001 C CNN
F 3 "" H 8150 6350 50  0001 C CNN
	1    8150 6350
	1    0    0    -1  
$EndComp
Text GLabel 7950 6950 0    60   Input ~ 0
eth5-1
Text GLabel 8450 6950 2    60   Input ~ 0
eth5-2
Text GLabel 7950 7050 0    60   Input ~ 0
eth5-3
Text GLabel 8450 7150 2    60   Input ~ 0
eth5-4
$Comp
L Conn_02x04_Odd_Even J17
U 1 1 5BBEAE34
P 8150 7050
F 0 "J17" H 8200 7250 50  0000 C CNN
F 1 "eth5-in" H 8200 6750 50  0000 C CNN
F 2 "psw-library:rj-45-big-pins" H 8150 7050 50  0001 C CNN
F 3 "" H 8150 7050 50  0001 C CNN
	1    8150 7050
	1    0    0    -1  
$EndComp
Text GLabel 7950 7650 0    60   Input ~ 0
eth6-1
Text GLabel 8450 7650 2    60   Input ~ 0
eth6-2
Text GLabel 7950 7750 0    60   Input ~ 0
eth6-3
Text GLabel 8450 7850 2    60   Input ~ 0
eth6-4
$Comp
L Conn_02x04_Odd_Even J18
U 1 1 5BBEAE42
P 8150 7750
F 0 "J18" H 8200 7950 50  0000 C CNN
F 1 "eth6-in" H 8200 7450 50  0000 C CNN
F 2 "psw-library:rj-45-big-pins" H 8150 7750 50  0001 C CNN
F 3 "" H 8150 7750 50  0001 C CNN
	1    8150 7750
	1    0    0    -1  
$EndComp
Text GLabel 4300 8050 0    60   Input ~ 0
eth7-1
Text GLabel 4800 8050 2    60   Input ~ 0
eth7-2
Text GLabel 4300 8150 0    60   Input ~ 0
eth7-3
Text GLabel 4800 8250 2    60   Input ~ 0
eth7-4
$Comp
L Conn_02x04_Odd_Even J11
U 1 1 5BBEAE50
P 4500 8150
F 0 "J11" H 4550 8350 50  0000 C CNN
F 1 "eth7" H 4550 7850 50  0000 C CNN
F 2 "psw-library:psw-rj45-no-hole" H 4500 8150 50  0001 C CNN
F 3 "" H 4500 8150 50  0001 C CNN
	1    4500 8150
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x04_Odd_Even J15
U 1 1 5BBEAE5C
P 6600 8550
F 0 "J15" H 6650 8750 50  0000 C CNN
F 1 "eth8-in" H 6650 8250 50  0000 C CNN
F 2 "psw-library:rj-45-big-pins" H 6600 8550 50  0001 C CNN
F 3 "" H 6600 8550 50  0001 C CNN
	1    6600 8550
	1    0    0    -1  
$EndComp
Text GLabel 6400 8450 0    60   Input ~ 0
eth8-1
Text GLabel 6400 8550 0    60   Input ~ 0
eth8-3
Text GLabel 6900 8650 2    60   Input ~ 0
eth8-4
Text GLabel 6900 8450 2    60   Input ~ 0
eth8-2
$Comp
L R R14
U 1 1 5BBF4ACC
P 3600 3700
F 0 "R14" V 3680 3700 50  0000 C CNN
F 1 "R" V 3600 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3530 3700 50  0001 C CNN
F 3 "" H 3600 3700 50  0001 C CNN
	1    3600 3700
	0    1    1    0   
$EndComp
$Comp
L Conn_01x02 12v2
U 1 1 5BBF4DF4
P 3950 3700
F 0 "12v2" H 3950 3800 50  0000 C CNN
F 1 "cam-out" H 3950 3500 50  0000 C CNN
F 2 "psw-library:psw-konektor-zeleny" H 3950 3700 50  0001 C CNN
F 3 "" H 3950 3700 50  0001 C CNN
	1    3950 3700
	1    0    0    -1  
$EndComp
Text GLabel 3750 3800 0    60   Input ~ 0
gnd
Text GLabel 3450 3700 0    60   Input ~ 0
12v-input
$Comp
L Conn_01x02 12v3
U 1 1 5BBFE529
P 3950 4200
F 0 "12v3" H 3950 4300 50  0000 C CNN
F 1 "switch-in" H 3950 4000 50  0000 C CNN
F 2 "psw-library:psw-konektor-zeleny" H 3950 4200 50  0001 C CNN
F 3 "" H 3950 4200 50  0001 C CNN
	1    3950 4200
	1    0    0    -1  
$EndComp
Text GLabel 3750 4200 0    60   Input ~ 0
gnd
Text GLabel 3750 4300 0    60   Input ~ 0
5v
Text GLabel 1350 10800 0    60   Input ~ 0
out2
Text GLabel 1350 10900 0    60   Input ~ 0
gnd
Text GLabel 1350 11000 0    60   Input ~ 0
12v-2
$Comp
L Conn_01x04 J2
U 1 1 5CABB83C
P 1550 10900
F 0 "J2" H 1550 11100 50  0000 C CNN
F 1 "Conn_01x04" H 1550 10600 50  0000 C CNN
F 2 "" H 1550 10900 50  0001 C CNN
F 3 "" H 1550 10900 50  0001 C CNN
	1    1550 10900
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5AF84007
P 2150 4250
F 0 "R2" V 2230 4250 50  0000 C CNN
F 1 "R" V 2150 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2080 4250 50  0001 C CNN
F 3 "" H 2150 4250 50  0001 C CNN
	1    2150 4250
	0    1    1    0   
$EndComp
$Comp
L G5Q-1 K1
U 1 1 5AF8898E
P 2250 9950
F 0 "K1" H 2900 10300 50  0000 L CNN
F 1 "G5Q-1" H 2900 10200 50  0000 L CNN
F 2 "psw-library:psw-relay-small" H 2900 10100 50  0001 L CNN
F 3 "" H 2900 9800 50  0001 L CNN
	1    2250 9950
	1    0    0    -1  
$EndComp
Text GLabel 2400 8800 0    60   Input ~ 0
gnd
Wire Wire Line
	2400 8900 2250 8900
Wire Wire Line
	2250 8900 2250 9150
Wire Wire Line
	2550 9150 2550 9100
Wire Wire Line
	2550 9100 2250 9100
Connection ~ 2250 9100
Wire Wire Line
	2650 10050 2650 10400
Wire Wire Line
	2650 10400 1550 10400
Wire Wire Line
	2250 10300 2250 10050
Wire Wire Line
	2350 10250 2250 10250
Connection ~ 2250 10250
Connection ~ 2650 10250
$EndSCHEMATC
