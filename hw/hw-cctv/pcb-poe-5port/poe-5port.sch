EESchema Schematic File Version 2
LIBS:power
LIBS:poe-5port-cache
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
Text GLabel 3150 5950 2    60   Input ~ 0
gnd
Text GLabel 2650 6050 0    60   Input ~ 0
gnd
Text GLabel 4250 6150 0    60   Input ~ 0
12v
Text GLabel 4750 6150 2    60   Input ~ 0
12v
$Comp
L Conn_02x04_Odd_Even J3
U 1 1 5ACB1F10
P 6350 6400
F 0 "J3" H 6400 6600 50  0000 C CNN
F 1 "eth1" H 6400 6100 50  0000 C CNN
F 2 "psw-library:psw-rj-45-switch" H 6350 6400 50  0001 C CNN
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
12v
Text GLabel 3150 6150 2    60   Input ~ 0
12v
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
12v
Text GLabel 4750 7000 2    60   Input ~ 0
12v
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
Text GLabel 2450 5050 2    60   Input ~ 0
gnd
Text GLabel 1950 5150 0    60   Input ~ 0
gnd
Text GLabel 950  6950 0    60   Input ~ 0
12v
Text GLabel 3200 6850 2    60   Input ~ 0
12v-bypass
$Comp
L Conn_02x04_Odd_Even J12
U 1 1 5ACB5491
P 6550 7800
F 0 "J12" H 6600 8000 50  0000 C CNN
F 1 "eth7-in" H 6600 7500 50  0000 C CNN
F 2 "psw-library:psw-rj-45-switch" H 6550 7800 50  0001 C CNN
F 3 "" H 6550 7800 50  0001 C CNN
	1    6550 7800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 12v1
U 1 1 5ACB8070
P 6150 5050
F 0 "12v1" H 6150 5150 50  0000 C CNN
F 1 "12v-input" H 6150 4850 50  0000 C CNN
F 2 "psw-library:psw-konektor-zeleny" H 6150 5050 50  0001 C CNN
F 3 "" H 6150 5050 50  0001 C CNN
	1    6150 5050
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 fuse-1
U 1 1 5ACBAC75
P 7350 5050
F 0 "fuse-1" H 7350 5150 50  0000 C CNN
F 1 "fuse-1" H 7350 4850 50  0000 C CNN
F 2 "psw-library:psw-poistka-auto" H 7350 5050 50  0001 C CNN
F 3 "" H 7350 5050 50  0001 C CNN
	1    7350 5050
	1    0    0    -1  
$EndComp
Text GLabel 3850 4950 0    60   Input ~ 0
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
Text GLabel 2300 4250 0    60   Input ~ 0
36V
Text GLabel 5950 5050 0    60   Input ~ 0
gnd
$Comp
L Conn_01x01 J19
U 1 1 5AFDCB80
P 2800 7350
F 0 "J19" H 2800 7450 50  0000 C CNN
F 1 "h1" H 2800 7250 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3mm_Pad" H 2800 7350 50  0001 C CNN
F 3 "" H 2800 7350 50  0001 C CNN
	1    2800 7350
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J20
U 1 1 5AFDD10A
P 2800 7650
F 0 "J20" H 2800 7750 50  0000 C CNN
F 1 "h1" H 2800 7550 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3mm_Pad" H 2800 7650 50  0001 C CNN
F 3 "" H 2800 7650 50  0001 C CNN
	1    2800 7650
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J21
U 1 1 5AFDD21F
P 2800 7950
F 0 "J21" H 2800 8050 50  0000 C CNN
F 1 "h1" H 2800 7850 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3mm_Pad" H 2800 7950 50  0001 C CNN
F 3 "" H 2800 7950 50  0001 C CNN
	1    2800 7950
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
F 2 "psw-library:psw-rj-45-switch" H 6600 7050 50  0001 C CNN
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
F 2 "psw-library:psw-rj-45-switch" H 8150 6350 50  0001 C CNN
F 3 "" H 8150 6350 50  0001 C CNN
	1    8150 6350
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
F 2 "psw-library:psw-rj-45-switch" H 8150 7750 50  0001 C CNN
F 3 "" H 8150 7750 50  0001 C CNN
	1    8150 7750
	1    0    0    -1  
$EndComp
Text GLabel 1950 4950 0    60   Input ~ 0
eth7-1
Text GLabel 2450 4950 2    60   Input ~ 0
eth7-2
Text GLabel 1950 5050 0    60   Input ~ 0
eth7-3
Text GLabel 2450 5150 2    60   Input ~ 0
eth7-4
$Comp
L Conn_02x04_Odd_Even J11
U 1 1 5BBEAE50
P 2150 5050
F 0 "J11" H 2200 5250 50  0000 C CNN
F 1 "eth7" H 2200 4750 50  0000 C CNN
F 2 "psw-library:psw-rj45-no-hole" H 2150 5050 50  0001 C CNN
F 3 "" H 2150 5050 50  0001 C CNN
	1    2150 5050
	1    0    0    -1  
$EndComp
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
$Comp
L Conn_01x04 J2
U 1 1 5DA20C60
P 4050 4850
F 0 "J2" H 4050 5050 50  0000 C CNN
F 1 "d-dc" H 4050 4550 50  0000 C CNN
F 2 "psw-library:psw-dc-dc-lm2596" H 4050 4850 50  0001 C CNN
F 3 "" H 4050 4850 50  0001 C CNN
	1    4050 4850
	1    0    0    -1  
$EndComp
Text GLabel 2300 4450 0    60   Input ~ 0
12V-input
Text GLabel 3850 4750 0    60   Input ~ 0
12V
Text GLabel 3850 4850 0    60   Input ~ 0
gnd
Text GLabel 3850 5050 0    60   Input ~ 0
gnd
Text GLabel 5950 5150 0    60   Input ~ 0
12V-input
Text GLabel 1950 5250 0    60   Input ~ 0
36V
Text GLabel 2450 5250 2    60   Input ~ 0
36V
Text GLabel 7150 5050 0    60   Input ~ 0
12V
Text GLabel 7150 5150 0    60   Input ~ 0
12V-input
Text GLabel 2700 6850 0    60   Input ~ 0
12v-bypass
Text GLabel 1250 6950 2    60   Input ~ 0
12v-bypass
$Comp
L R R1
U 1 1 5DA3059B
P 1100 6950
F 0 "R1" V 1180 6950 50  0000 C CNN
F 1 "R" V 1100 6950 50  0000 C CNN
F 2 "psw-library:tlacitko" V 1030 6950 50  0001 C CNN
F 3 "" H 1100 6950 50  0001 C CNN
	1    1100 6950
	0    1    1    0   
$EndComp
$EndSCHEMATC
