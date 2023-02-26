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
LIBS:smart-zaluzie-a-smart-vypinac-02-cache
EELAYER 25 0
EELAYER END
$Descr A2 23386 16535
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
L S116S01 U1
U 1 1 5AAC3A02
P 3450 1900
F 0 "U1" H 3250 2100 50  0000 L CNN
F 1 "S116S01" H 3450 2100 50  0000 L CNN
F 2 "psw-library:psw-solid-state-relay" H 3250 1700 50  0001 L CIN
F 3 "" H 3415 1900 50  0001 L CNN
	1    3450 1900
	1    0    0    -1  
$EndComp
$Comp
L S116S01 U2
U 1 1 5AAC3AD6
P 3450 2500
F 0 "U2" H 3250 2700 50  0000 L CNN
F 1 "S116S01" H 3450 2700 50  0000 L CNN
F 2 "psw-library:psw-solid-state-relay" H 3250 2300 50  0001 L CIN
F 3 "" H 3415 2500 50  0001 L CNN
	1    3450 2500
	1    0    0    -1  
$EndComp
Text GLabel 2850 2400 0    60   Input ~ 0
5v-down
Text GLabel 2850 1800 0    60   Input ~ 0
5v-up
Text GLabel 3150 2000 0    60   Input ~ 0
gnd
Text GLabel 3150 2600 0    60   Input ~ 0
gnd
Text GLabel 3750 2000 2    60   Input ~ 0
240v
Text GLabel 3750 2600 2    60   Input ~ 0
240v
Text GLabel 3750 1800 2    60   Input ~ 0
up
Text GLabel 3750 2400 2    60   Input ~ 0
down
Text GLabel 6800 3200 2    60   Input ~ 0
240v
Text GLabel 6050 3200 0    60   Input ~ 0
240v-input
$Comp
L RJ45 J1
U 1 1 5AAC4183
P 3600 3400
F 0 "J1" H 3800 3900 50  0000 C CNN
F 1 "RJ45" H 3450 3900 50  0000 C CNN
F 2 "conn-io:RJ45-TYCO-406549-psw" H 3600 3400 50  0001 C CNN
F 3 "" H 3600 3400 50  0001 C CNN
	1    3600 3400
	0    1    1    0   
$EndComp
Text GLabel 3950 3950 3    60   Input ~ 0
gnd
Text GLabel 3150 3650 0    60   Input ~ 0
5v-down-in
Text GLabel 3150 3750 0    60   Input ~ 0
5v-down-in
Text GLabel 3150 3050 0    60   Input ~ 0
5v-up-in
Text GLabel 3150 3150 0    60   Input ~ 0
5v-up-in
Text GLabel 3150 3350 0    60   Input ~ 0
gnd
Text GLabel 3150 3550 0    60   Input ~ 0
gnd
Text GLabel 3150 3450 0    60   Input ~ 0
gnd
Text GLabel 3150 3250 0    60   Input ~ 0
gnd
$Comp
L Conn_01x01 J2
U 1 1 5AAC4AE1
P 5000 3150
F 0 "J2" H 5000 3250 50  0000 C CNN
F 1 "down-sw" H 5000 3050 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 5000 3150 50  0001 C CNN
F 3 "" H 5000 3150 50  0001 C CNN
	1    5000 3150
	1    0    0    -1  
$EndComp
Text GLabel 4800 3150 0    60   Input ~ 0
down
$Comp
L Conn_01x01 J3
U 1 1 5AAC4D07
P 5000 3450
F 0 "J3" H 5000 3550 50  0000 C CNN
F 1 "up-sw" H 5000 3350 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 5000 3450 50  0001 C CNN
F 3 "" H 5000 3450 50  0001 C CNN
	1    5000 3450
	1    0    0    -1  
$EndComp
Text GLabel 4800 3450 0    60   Input ~ 0
up
$Comp
L Conn_01x01 J7
U 1 1 5AAC5855
P 5000 2500
F 0 "J7" H 5000 2600 50  0000 C CNN
F 1 "down-sw" H 5000 2400 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 5000 2500 50  0001 C CNN
F 3 "" H 5000 2500 50  0001 C CNN
	1    5000 2500
	1    0    0    -1  
$EndComp
Text GLabel 4800 2500 0    60   Input ~ 0
down
$Comp
L Conn_01x01 J8
U 1 1 5AAC585C
P 5000 2800
F 0 "J8" H 5000 2900 50  0000 C CNN
F 1 "up-sw" H 5000 2700 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 5000 2800 50  0001 C CNN
F 3 "" H 5000 2800 50  0001 C CNN
	1    5000 2800
	1    0    0    -1  
$EndComp
Text GLabel 4800 2800 0    60   Input ~ 0
up
$Comp
L Conn_01x01 J9
U 1 1 5AAC5A35
P 5000 3950
F 0 "J9" H 5000 4050 50  0000 C CNN
F 1 "240v" H 5000 3850 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 5000 3950 50  0001 C CNN
F 3 "" H 5000 3950 50  0001 C CNN
	1    5000 3950
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J10
U 1 1 5AAC5A67
P 5000 4300
F 0 "J10" H 5000 4400 50  0000 C CNN
F 1 "240v" H 5000 4200 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 5000 4300 50  0001 C CNN
F 3 "" H 5000 4300 50  0001 C CNN
	1    5000 4300
	1    0    0    -1  
$EndComp
Text GLabel 4800 3950 0    60   Input ~ 0
240v
Text GLabel 4800 4300 0    60   Input ~ 0
240v
$Comp
L Conn_01x01 J11
U 1 1 5AAC6149
P 6250 3200
F 0 "J11" H 6250 3300 50  0000 C CNN
F 1 "f1" H 6250 3100 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 6250 3200 50  0001 C CNN
F 3 "" H 6250 3200 50  0001 C CNN
	1    6250 3200
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J12
U 1 1 5AAC6259
P 6600 3200
F 0 "J12" H 6600 3300 50  0000 C CNN
F 1 "f2" H 6600 3100 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 6600 3200 50  0001 C CNN
F 3 "" H 6600 3200 50  0001 C CNN
	1    6600 3200
	-1   0    0    1   
$EndComp
Text GLabel 6100 4300 0    60   Input ~ 0
240v-input
Text GLabel 6100 4100 0    60   Input ~ 0
down
Text GLabel 6100 4200 0    60   Input ~ 0
up
$Comp
L Conn_01x03 J4
U 1 1 5AAC725A
P 6300 4200
F 0 "J4" H 6300 4400 50  0000 C CNN
F 1 "pwr" H 6300 4000 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-3_P5.08mm" H 6300 4200 50  0001 C CNN
F 3 "" H 6300 4200 50  0001 C CNN
	1    6300 4200
	1    0    0    -1  
$EndComp
Text GLabel 2200 3000 2    60   Input ~ 0
gnd
Text GLabel 1900 3000 0    60   Input ~ 0
5v-up
$Comp
L R R1
U 1 1 5AAC7F3B
P 2050 3000
F 0 "R1" V 2130 3000 50  0000 C CNN
F 1 "R" V 2050 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 1980 3000 50  0001 C CNN
F 3 "" H 2050 3000 50  0001 C CNN
	1    2050 3000
	0    1    1    0   
$EndComp
Text GLabel 2000 3750 0    60   Input ~ 0
5v-down
Text GLabel 2300 3750 2    60   Input ~ 0
gnd
$Comp
L R R3
U 1 1 5AAC7F6E
P 2150 3750
F 0 "R3" V 2230 3750 50  0000 C CNN
F 1 "R" V 2150 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2080 3750 50  0001 C CNN
F 3 "" H 2150 3750 50  0001 C CNN
	1    2150 3750
	0    1    1    0   
$EndComp
$Comp
L S116S01 U3
U 1 1 5AACF989
P 10550 3000
F 0 "U3" H 10350 3200 50  0000 L CNN
F 1 "S116S01" H 10550 3200 50  0000 L CNN
F 2 "psw-library:psw-solid-state-relay" H 10350 2800 50  0001 L CIN
F 3 "" H 10515 3000 50  0001 L CNN
	1    10550 3000
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04 J14
U 1 1 5AACFC69
P 10450 3500
F 0 "J14" H 10450 3700 50  0000 C CNN
F 1 "zdroj" H 10450 3200 50  0000 C CNN
F 2 "conn-io:5v-zdroj-dual" H 10450 3500 50  0001 C CNN
F 3 "" H 10450 3500 50  0001 C CNN
	1    10450 3500
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x15 J18
U 1 1 5AACFD41
P 12200 3500
F 0 "J18" H 12200 4300 50  0000 C CNN
F 1 "nano" H 12200 2700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x15_Pitch2.54mm" H 12200 3500 50  0001 C CNN
F 3 "" H 12200 3500 50  0001 C CNN
	1    12200 3500
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 J13
U 1 1 5AACFDE6
P 10400 4200
F 0 "J13" H 10400 4400 50  0000 C CNN
F 1 "rf433" H 10400 4000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 10400 4200 50  0001 C CNN
F 3 "" H 10400 4200 50  0001 C CNN
	1    10400 4200
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J16
U 1 1 5AAD01DE
P 10550 2250
F 0 "J16" H 10550 2350 50  0000 C CNN
F 1 "240v-in" H 10550 2150 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 10550 2250 50  0001 C CNN
F 3 "" H 10550 2250 50  0001 C CNN
	1    10550 2250
	1    0    0    -1  
$EndComp
Text GLabel 10350 2250 0    60   Input ~ 0
2-240in
Text GLabel 10750 1750 0    60   Input ~ 0
2-n
$Comp
L R R5
U 1 1 5AAD2B1C
P 3000 1800
F 0 "R5" V 3080 1800 50  0000 C CNN
F 1 "R" V 3000 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2930 1800 50  0001 C CNN
F 3 "" H 3000 1800 50  0001 C CNN
	1    3000 1800
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 5AAD2DE4
P 3000 2400
F 0 "R6" V 3080 2400 50  0000 C CNN
F 1 "R" V 3000 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2930 2400 50  0001 C CNN
F 3 "" H 3000 2400 50  0001 C CNN
	1    3000 2400
	0    1    1    0   
$EndComp
Text GLabel 9950 2900 0    60   Input ~ 0
2-a1
Text GLabel 10250 3100 0    60   Input ~ 0
2-gnd
Text GLabel 12000 4100 0    60   Input ~ 0
2-gnd
Text GLabel 12000 2800 0    60   Input ~ 0
2-d13
Text GLabel 12000 3100 0    60   Input ~ 0
2-a0
$Comp
L R R8
U 1 1 5AAD522C
P 12000 1850
F 0 "R8" V 12080 1850 50  0000 C CNN
F 1 "R" V 12000 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 11930 1850 50  0001 C CNN
F 3 "" H 12000 1850 50  0001 C CNN
	1    12000 1850
	0    1    1    0   
$EndComp
Text GLabel 11850 1850 0    60   Input ~ 0
2-a0
$Comp
L R R9
U 1 1 5AAD560D
P 12000 2150
F 0 "R9" V 12080 2150 50  0000 C CNN
F 1 "R" V 12000 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 11930 2150 50  0001 C CNN
F 3 "" H 12000 2150 50  0001 C CNN
	1    12000 2150
	0    1    1    0   
$EndComp
Text GLabel 11850 2150 0    60   Input ~ 0
2-d13
Text GLabel 12150 1850 2    60   Input ~ 0
2-rd-data
Text GLabel 12150 2150 2    60   Input ~ 0
2-rd-data
Text GLabel 10200 4100 0    60   Input ~ 0
2-rd-data
Text GLabel 10250 3600 0    60   Input ~ 0
2-5v-in
Text GLabel 10200 4200 0    60   Input ~ 0
2-5v
Text GLabel 10250 3700 0    60   Input ~ 0
2-gnd
Text GLabel 10200 4300 0    60   Input ~ 0
2-gnd
Text GLabel 10250 3500 0    60   Input ~ 0
2-n
Text GLabel 10850 3100 2    60   Input ~ 0
2-240in
Text GLabel 10850 2900 2    60   Input ~ 0
2-240out
Text GLabel 10250 3400 0    60   Input ~ 0
2-240out
$Comp
L Conn_01x01 J5
U 1 1 5AAD5CD7
P 9600 2250
F 0 "J5" H 9600 2350 50  0000 C CNN
F 1 "240v-out" H 9600 2150 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 9600 2250 50  0001 C CNN
F 3 "" H 9600 2250 50  0001 C CNN
	1    9600 2250
	1    0    0    -1  
$EndComp
Text GLabel 9400 2250 0    60   Input ~ 0
2-240out
$Comp
L Conn_01x01 J20
U 1 1 5AAD76F4
P 9850 2600
F 0 "J20" H 9850 2700 50  0000 C CNN
F 1 "240v-in" H 9850 2500 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 9850 2600 50  0001 C CNN
F 3 "" H 9850 2600 50  0001 C CNN
	1    9850 2600
	1    0    0    -1  
$EndComp
Text GLabel 9650 2600 0    60   Input ~ 0
2-240in
$Comp
L Conn_01x01 J19
U 1 1 5AAD7760
P 9650 1900
F 0 "J19" H 9650 2000 50  0000 C CNN
F 1 "240v-out" H 9650 1800 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 9650 1900 50  0001 C CNN
F 3 "" H 9650 1900 50  0001 C CNN
	1    9650 1900
	1    0    0    -1  
$EndComp
Text GLabel 9450 1900 0    60   Input ~ 0
2-240out
Text GLabel 12000 4200 0    60   Input ~ 0
2-5v
Text GLabel 12000 3200 0    60   Input ~ 0
2-a1
$Comp
L R R7
U 1 1 5AAD3D3C
P 10100 2900
F 0 "R7" V 10180 2900 50  0000 C CNN
F 1 "R" V 10100 2900 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 10030 2900 50  0001 C CNN
F 3 "" H 10100 2900 50  0001 C CNN
	1    10100 2900
	0    1    1    0   
$EndComp
$Comp
L Conn_01x02 J6
U 1 1 5AADD545
P 10950 1750
F 0 "J6" H 10950 1850 50  0000 C CNN
F 1 "pws" H 10950 1550 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 10950 1750 50  0001 C CNN
F 3 "" H 10950 1750 50  0001 C CNN
	1    10950 1750
	1    0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5AADF610
P 12200 1550
F 0 "R10" V 12280 1550 50  0000 C CNN
F 1 "R" V 12200 1550 50  0000 C CNN
F 2 "Resistors_SMD:R_1812_HandSoldering" V 12130 1550 50  0001 C CNN
F 3 "" H 12200 1550 50  0001 C CNN
	1    12200 1550
	0    1    1    0   
$EndComp
Text GLabel 12350 1550 2    60   Input ~ 0
2-240in
Text GLabel 12050 1550 0    60   Input ~ 0
2-240in-mains
Text GLabel 10750 1850 0    60   Input ~ 0
2-240in-mains
Text GLabel 6450 5950 2    60   Input ~ 0
3-up-in
Text GLabel 5950 5950 0    60   Input ~ 0
3-down-in
$Comp
L RJ45 J23
U 1 1 5AAD5251
P 4700 7850
F 0 "J23" H 4900 8350 50  0000 C CNN
F 1 "RJ45" H 4550 8350 50  0000 C CNN
F 2 "psw-library:psw-rj-45-no-holes" H 4700 7850 50  0001 C CNN
F 3 "" H 4700 7850 50  0001 C CNN
	1    4700 7850
	0    1    1    0   
$EndComp
Text GLabel 4250 8100 0    60   Input ~ 0
3-5v-down-in
Text GLabel 4250 8200 0    60   Input ~ 0
3-5v-down-in
Text GLabel 4250 7500 0    60   Input ~ 0
3-5v-up-in
Text GLabel 4250 7600 0    60   Input ~ 0
3-5v-up-in
Text GLabel 4250 7700 0    60   Input ~ 0
3-gnd
$Comp
L Conn_01x01 J22
U 1 1 5AAD528A
P 4350 7050
F 0 "J22" H 4350 7150 50  0000 C CNN
F 1 "down-o" H 4350 6950 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 4350 7050 50  0001 C CNN
F 3 "" H 4350 7050 50  0001 C CNN
	1    4350 7050
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J25
U 1 1 5AADDA30
P 2350 6100
F 0 "J25" H 2350 6200 50  0000 C CNN
F 1 "pws" H 2350 5900 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 2350 6100 50  0001 C CNN
F 3 "" H 2350 6100 50  0001 C CNN
	1    2350 6100
	1    0    0    -1  
$EndComp
Text GLabel 2150 6100 0    60   Input ~ 0
3-down-in
Text GLabel 2150 6200 0    60   Input ~ 0
3-up-in
Text GLabel 6700 7150 2    60   Input ~ 0
3-5v-up
Text GLabel 6700 7250 2    60   Input ~ 0
3-5v-down
Text GLabel 4250 7800 0    60   Input ~ 0
3-gnd
Text GLabel 4250 7900 0    60   Input ~ 0
3-gnd
Text GLabel 4250 8000 0    60   Input ~ 0
3-gnd
Text GLabel 5050 8400 3    60   Input ~ 0
3-gnd
Text GLabel 5950 6150 0    60   Input ~ 0
3-down
Text GLabel 5950 6050 0    60   Input ~ 0
3-up
Text GLabel 4150 7050 0    60   Input ~ 0
3-down-out
$Comp
L Conn_01x01 J21
U 1 1 5AAE9799
P 4350 6750
F 0 "J21" H 4350 6850 50  0000 C CNN
F 1 "down-o" H 4350 6650 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 4350 6750 50  0001 C CNN
F 3 "" H 4350 6750 50  0001 C CNN
	1    4350 6750
	1    0    0    -1  
$EndComp
Text GLabel 4150 6750 0    60   Input ~ 0
3-down-out
$Comp
L Conn_01x01 J17
U 1 1 5AAE983A
P 4350 6250
F 0 "J17" H 4350 6350 50  0000 C CNN
F 1 "up-o" H 4350 6150 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 4350 6250 50  0001 C CNN
F 3 "" H 4350 6250 50  0001 C CNN
	1    4350 6250
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J15
U 1 1 5AAE9841
P 4350 5950
F 0 "J15" H 4350 6050 50  0000 C CNN
F 1 "up-o" H 4350 5850 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 4350 5950 50  0001 C CNN
F 3 "" H 4350 5950 50  0001 C CNN
	1    4350 5950
	1    0    0    -1  
$EndComp
Text GLabel 4150 5950 0    60   Input ~ 0
3-up-out
Text GLabel 4150 6250 0    60   Input ~ 0
3-up-out
$Comp
L Conn_01x02 J30
U 1 1 5AAEC4DD
P 2350 6650
F 0 "J30" H 2350 6750 50  0000 C CNN
F 1 "pws" H 2350 6450 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 2350 6650 50  0001 C CNN
F 3 "" H 2350 6650 50  0001 C CNN
	1    2350 6650
	1    0    0    -1  
$EndComp
Text GLabel 2150 6650 0    60   Input ~ 0
3-down-out
Text GLabel 2150 6750 0    60   Input ~ 0
3-up-out
$Comp
L Conn_01x01 J29
U 1 1 5AAED0DB
P 3350 7050
F 0 "J29" H 3350 7150 50  0000 C CNN
F 1 "down" H 3350 6950 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 3350 7050 50  0001 C CNN
F 3 "" H 3350 7050 50  0001 C CNN
	1    3350 7050
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J28
U 1 1 5AAED0E2
P 3350 6750
F 0 "J28" H 3350 6850 50  0000 C CNN
F 1 "down" H 3350 6650 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 3350 6750 50  0001 C CNN
F 3 "" H 3350 6750 50  0001 C CNN
	1    3350 6750
	1    0    0    -1  
$EndComp
Text GLabel 3150 6750 0    60   Input ~ 0
3-down
$Comp
L Conn_01x01 J27
U 1 1 5AAED0E9
P 3350 6250
F 0 "J27" H 3350 6350 50  0000 C CNN
F 1 "up" H 3350 6150 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 3350 6250 50  0001 C CNN
F 3 "" H 3350 6250 50  0001 C CNN
	1    3350 6250
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J26
U 1 1 5AAED0EF
P 3350 5950
F 0 "J26" H 3350 6050 50  0000 C CNN
F 1 "up" H 3350 5850 50  0000 C CNN
F 2 "Wire_Pads:SolderWirePad_single_2mmDrill" H 3350 5950 50  0001 C CNN
F 3 "" H 3350 5950 50  0001 C CNN
	1    3350 5950
	1    0    0    -1  
$EndComp
Text GLabel 3150 5950 0    60   Input ~ 0
3-up
Text GLabel 3150 6250 0    60   Input ~ 0
3-up
Text GLabel 3150 7050 0    60   Input ~ 0
3-down
$Comp
L Conn_02x05_Top_Bottom J24
U 1 1 5AAF4DD2
P 6150 5950
F 0 "J24" H 6200 6250 50  0000 C CNN
F 1 "relay" H 6200 5650 50  0000 C CNN
F 2 "conn-io:relay-HFD2-psw" H 6150 5950 50  0001 C CNN
F 3 "" H 6150 5950 50  0001 C CNN
	1    6150 5950
	1    0    0    -1  
$EndComp
$Comp
L RJ45 J39
U 1 1 5AAF6E81
P 10050 7900
F 0 "J39" H 10250 8400 50  0000 C CNN
F 1 "RJ45" H 9900 8400 50  0000 C CNN
F 2 "conn-io:RJ45-TYCO-406549-psw" H 10050 7900 50  0001 C CNN
F 3 "" H 10050 7900 50  0001 C CNN
	1    10050 7900
	0    1    1    0   
$EndComp
$Comp
L R F4
U 1 1 5AEA0DFF
P 3050 4500
F 0 "F4" V 3130 4500 50  0000 C CNN
F 1 "R" V 3050 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2980 4500 50  0001 C CNN
F 3 "" H 3050 4500 50  0001 C CNN
	1    3050 4500
	0    1    1    0   
$EndComp
$Comp
L R F3
U 1 1 5AEA0EF1
P 3000 4150
F 0 "F3" V 3080 4150 50  0000 C CNN
F 1 "R" V 3000 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2930 4150 50  0001 C CNN
F 3 "" H 3000 4150 50  0001 C CNN
	1    3000 4150
	0    1    1    0   
$EndComp
Text GLabel 2900 4500 0    60   Input ~ 0
5v-down-in
Text GLabel 2850 4150 0    60   Input ~ 0
5v-up-in
Text GLabel 3150 4150 2    60   Input ~ 0
5v-up
Text GLabel 3200 4500 2    60   Input ~ 0
5v-down
Text GLabel 2750 8400 0    60   Input ~ 0
3-5v-up
Text GLabel 2750 8800 0    60   Input ~ 0
3-5v-down
$Comp
L R F1
U 1 1 5AEA200A
P 2900 8400
F 0 "F1" V 2980 8400 50  0000 C CNN
F 1 "R" V 2900 8400 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2830 8400 50  0001 C CNN
F 3 "" H 2900 8400 50  0001 C CNN
	1    2900 8400
	0    -1   -1   0   
$EndComp
$Comp
L R F2
U 1 1 5AEA2160
P 2900 8800
F 0 "F2" V 2980 8800 50  0000 C CNN
F 1 "R" V 2900 8800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2830 8800 50  0001 C CNN
F 3 "" H 2900 8800 50  0001 C CNN
	1    2900 8800
	0    -1   -1   0   
$EndComp
Text GLabel 3050 8800 2    60   Input ~ 0
3-5v-down-in
Text GLabel 3050 8400 2    60   Input ~ 0
3-5v-up-in
Text GLabel 11050 3650 0    60   Input ~ 0
2-5v
$Comp
L R F5
U 1 1 5AEA4F0D
P 11200 3650
F 0 "F5" V 11280 3650 50  0000 C CNN
F 1 "R" V 11200 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 11130 3650 50  0001 C CNN
F 3 "" H 11200 3650 50  0001 C CNN
	1    11200 3650
	0    1    1    0   
$EndComp
Text GLabel 11350 3650 2    60   Input ~ 0
2-5v-in
$Comp
L Conn_01x01 J45
U 1 1 5AEA20E1
P 7100 4350
F 0 "J45" H 7100 4450 50  0000 C CNN
F 1 "Conn_01x01" H 7100 4250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 7100 4350 50  0001 C CNN
F 3 "" H 7100 4350 50  0001 C CNN
	1    7100 4350
	1    0    0    -1  
$EndComp
NoConn ~ 6900 4350
$Comp
L Conn_01x01 J44
U 1 1 5AEA22DC
P 7100 4000
F 0 "J44" H 7100 4100 50  0000 C CNN
F 1 "Conn_01x01" H 7100 3900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 7100 4000 50  0001 C CNN
F 3 "" H 7100 4000 50  0001 C CNN
	1    7100 4000
	1    0    0    -1  
$EndComp
NoConn ~ 6900 4000
$Comp
L Conn_01x01 J43
U 1 1 5AEA243E
P 7100 3650
F 0 "J43" H 7100 3750 50  0000 C CNN
F 1 "Conn_01x01" H 7100 3550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 7100 3650 50  0001 C CNN
F 3 "" H 7100 3650 50  0001 C CNN
	1    7100 3650
	1    0    0    -1  
$EndComp
NoConn ~ 6900 3650
$Comp
L Conn_01x01 J34
U 1 1 5AEA5579
P 11350 8700
F 0 "J34" H 11350 8800 50  0000 C CNN
F 1 "Conn_01x01" H 11350 8600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 11350 8700 50  0001 C CNN
F 3 "" H 11350 8700 50  0001 C CNN
	1    11350 8700
	1    0    0    -1  
$EndComp
NoConn ~ 11150 8700
$Comp
L Conn_01x01 J33
U 1 1 5AEA5580
P 11350 8350
F 0 "J33" H 11350 8450 50  0000 C CNN
F 1 "Conn_01x01" H 11350 8250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 11350 8350 50  0001 C CNN
F 3 "" H 11350 8350 50  0001 C CNN
	1    11350 8350
	1    0    0    -1  
$EndComp
NoConn ~ 11150 8350
$Comp
L Conn_01x01 J32
U 1 1 5AEA5587
P 11350 8000
F 0 "J32" H 11350 8100 50  0000 C CNN
F 1 "Conn_01x01" H 11350 7900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 11350 8000 50  0001 C CNN
F 3 "" H 11350 8000 50  0001 C CNN
	1    11350 8000
	1    0    0    -1  
$EndComp
NoConn ~ 11150 8000
$Comp
L RJ45 J31
U 1 1 5AEA5913
P 10050 6250
F 0 "J31" H 10250 6750 50  0000 C CNN
F 1 "RJ45" H 9900 6750 50  0000 C CNN
F 2 "conn-io:RJ45-TYCO-406549-psw" H 10050 6250 50  0001 C CNN
F 3 "" H 10050 6250 50  0001 C CNN
	1    10050 6250
	0    1    1    0   
$EndComp
Text GLabel 9600 5900 0    60   Input ~ 0
zaluzia-minus
Text GLabel 9600 6000 0    60   Input ~ 0
zaluzia-minus
Text GLabel 9600 6100 0    60   Input ~ 0
zaluzia-1-up
Text GLabel 9600 6200 0    60   Input ~ 0
zaluzia-1-down
Text GLabel 9600 6300 0    60   Input ~ 0
zaluzia-2-up
Text GLabel 9600 6400 0    60   Input ~ 0
zaluzia-2-down
Text GLabel 9600 6500 0    60   Input ~ 0
zaluzia-3-up
Text GLabel 9600 6600 0    60   Input ~ 0
zaluzia-3-down
NoConn ~ 10400 6800
Text GLabel 9600 7550 0    60   Input ~ 0
zaluzia-minus
Text GLabel 9600 7650 0    60   Input ~ 0
zaluzia-minus
Text GLabel 9600 7750 0    60   Input ~ 0
zaluzia-1-up
Text GLabel 9600 7850 0    60   Input ~ 0
zaluzia-1-down
Text GLabel 9600 7950 0    60   Input ~ 0
zaluzia-2-up
Text GLabel 9600 8050 0    60   Input ~ 0
zaluzia-2-down
Text GLabel 9600 8150 0    60   Input ~ 0
zaluzia-3-up
Text GLabel 9600 8250 0    60   Input ~ 0
zaluzia-3-down
NoConn ~ 10400 8450
$Comp
L RJ45 J35
U 1 1 5AEA8882
P 12850 6200
F 0 "J35" H 13050 6700 50  0000 C CNN
F 1 "RJ45" H 12700 6700 50  0000 C CNN
F 2 "psw-library:psw-rj-45-no-holes" H 12850 6200 50  0001 C CNN
F 3 "" H 12850 6200 50  0001 C CNN
	1    12850 6200
	0    1    1    0   
$EndComp
Text GLabel 12400 6150 0    60   Input ~ 0
zaluzia-minus
Text GLabel 12400 5950 0    60   Input ~ 0
zaluzia-out-up
Text GLabel 12400 6550 0    60   Input ~ 0
zaluzia-out-down
NoConn ~ 13200 6750
Text GLabel 12400 5850 0    60   Input ~ 0
zaluzia-out-up
Text GLabel 12400 6450 0    60   Input ~ 0
zaluzia-out-down
Text GLabel 12400 6050 0    60   Input ~ 0
zaluzia-minus
Text GLabel 12400 6250 0    60   Input ~ 0
zaluzia-minus
Text GLabel 12400 6350 0    60   Input ~ 0
zaluzia-minus
$Comp
L R R2
U 1 1 5AEA96F4
P 12900 7350
F 0 "R2" V 12980 7350 50  0000 C CNN
F 1 "R" V 12900 7350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12830 7350 50  0001 C CNN
F 3 "" H 12900 7350 50  0001 C CNN
	1    12900 7350
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 5AEA9D48
P 12900 7450
F 0 "R4" V 12980 7450 50  0000 C CNN
F 1 "R" V 12900 7450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12830 7450 50  0001 C CNN
F 3 "" H 12900 7450 50  0001 C CNN
	1    12900 7450
	0    -1   -1   0   
$EndComp
$Comp
L R R15
U 1 1 5AEA9E0F
P 12900 7550
F 0 "R15" V 12980 7550 50  0000 C CNN
F 1 "R" V 12900 7550 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12830 7550 50  0001 C CNN
F 3 "" H 12900 7550 50  0001 C CNN
	1    12900 7550
	0    -1   -1   0   
$EndComp
Text GLabel 12750 7350 0    60   Input ~ 0
zaluzia-out-up
Text GLabel 12750 7450 0    60   Input ~ 0
zaluzia-out-up
Text GLabel 12750 7550 0    60   Input ~ 0
zaluzia-out-up
Text GLabel 13050 7350 2    60   Input ~ 0
zaluzia-1-up
Text GLabel 13050 7450 2    60   Input ~ 0
zaluzia-2-up
Text GLabel 13050 7550 2    60   Input ~ 0
zaluzia-3-up
$Comp
L R R16
U 1 1 5AEAAA17
P 12900 7850
F 0 "R16" V 12980 7850 50  0000 C CNN
F 1 "R" V 12900 7850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12830 7850 50  0001 C CNN
F 3 "" H 12900 7850 50  0001 C CNN
	1    12900 7850
	0    -1   -1   0   
$EndComp
$Comp
L R R17
U 1 1 5AEAAAEC
P 12900 7950
F 0 "R17" V 12980 7950 50  0000 C CNN
F 1 "R" V 12900 7950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12830 7950 50  0001 C CNN
F 3 "" H 12900 7950 50  0001 C CNN
	1    12900 7950
	0    -1   -1   0   
$EndComp
$Comp
L R R18
U 1 1 5AEAABBC
P 12900 8050
F 0 "R18" V 12980 8050 50  0000 C CNN
F 1 "R" V 12900 8050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12830 8050 50  0001 C CNN
F 3 "" H 12900 8050 50  0001 C CNN
	1    12900 8050
	0    -1   -1   0   
$EndComp
Text GLabel 12750 7850 0    60   Input ~ 0
zaluzia-out-down
Text GLabel 12750 7950 0    60   Input ~ 0
zaluzia-out-down
Text GLabel 12750 8050 0    60   Input ~ 0
zaluzia-out-down
Text GLabel 13050 7850 2    60   Input ~ 0
zaluzia-1-down
Text GLabel 13050 7950 2    60   Input ~ 0
zaluzia-2-down
Text GLabel 13050 8050 2    60   Input ~ 0
zaluzia-3-down
$Comp
L RJ45 J36
U 1 1 5AEAD484
P 4700 10300
F 0 "J36" H 4900 10800 50  0000 C CNN
F 1 "RJ45" H 4550 10800 50  0000 C CNN
F 2 "conn-io:RJ45-TYCO-406549-psw" H 4700 10300 50  0001 C CNN
F 3 "" H 4700 10300 50  0001 C CNN
	1    4700 10300
	0    1    1    0   
$EndComp
$Comp
L RJ45 J37
U 1 1 5AEAD944
P 4750 11700
F 0 "J37" H 4950 12200 50  0000 C CNN
F 1 "RJ45" H 4600 12200 50  0000 C CNN
F 2 "psw-library:psw-rj-45-no-holes" H 4750 11700 50  0001 C CNN
F 3 "" H 4750 11700 50  0001 C CNN
	1    4750 11700
	0    1    1    0   
$EndComp
Text GLabel 4250 9950 0    60   Input ~ 0
eth-bypass-1
Text GLabel 4250 10050 0    60   Input ~ 0
eth-bypass-2
Text GLabel 4250 10150 0    60   Input ~ 0
eth-bypass-3
Text GLabel 4250 10250 0    60   Input ~ 0
eth-bypass-4
Text GLabel 4250 10350 0    60   Input ~ 0
eth-bypass-5
Text GLabel 4250 10450 0    60   Input ~ 0
eth-bypass-6
Text GLabel 4250 10550 0    60   Input ~ 0
eth-bypass-7
Text GLabel 4250 10650 0    60   Input ~ 0
eth-bypass-8
NoConn ~ 5050 10850
Text GLabel 4300 11350 0    60   Input ~ 0
eth-bypass-1
Text GLabel 4300 11450 0    60   Input ~ 0
eth-bypass-2
Text GLabel 4300 11550 0    60   Input ~ 0
eth-bypass-3
Text GLabel 4300 11650 0    60   Input ~ 0
eth-bypass-4
Text GLabel 4300 11750 0    60   Input ~ 0
eth-bypass-5
Text GLabel 4300 11850 0    60   Input ~ 0
eth-bypass-6
Text GLabel 4300 11950 0    60   Input ~ 0
eth-bypass-7
Text GLabel 4300 12050 0    60   Input ~ 0
eth-bypass-8
NoConn ~ 5100 12250
$Comp
L Conn_02x04_Counter_Clockwise J38
U 1 1 5AEB9059
P 6400 7150
F 0 "J38" H 6450 7350 50  0000 C CNN
F 1 "H-bridge" H 6450 6850 50  0000 C CNN
F 2 "smt-soic:8" H 6400 7150 50  0001 C CNN
F 3 "" H 6400 7150 50  0001 C CNN
	1    6400 7150
	1    0    0    -1  
$EndComp
Text GLabel 6700 7050 2    60   Input ~ 0
3-gnd
Text GLabel 6700 7350 2    60   Input ~ 0
3-gnd
Text GLabel 6450 6150 2    60   Input ~ 0
3-down
Text GLabel 6450 6050 2    60   Input ~ 0
3-up
Text GLabel 6200 7050 0    60   Input ~ 0
3-plus
Text GLabel 6200 7350 0    60   Input ~ 0
3-minus
Text GLabel 5950 5850 0    60   Input ~ 0
3-plus
Text GLabel 5950 5750 0    60   Input ~ 0
3-plus
Text GLabel 6450 5850 2    60   Input ~ 0
3-minus
Text GLabel 6450 5750 2    60   Input ~ 0
3-minus
$Comp
L R F7
U 1 1 5AEBD4DF
P 5900 7250
F 0 "F7" V 5980 7250 50  0000 C CNN
F 1 "R" V 5900 7250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5830 7250 50  0001 C CNN
F 3 "" H 5900 7250 50  0001 C CNN
	1    5900 7250
	0    -1   -1   0   
$EndComp
$Comp
L R F6
U 1 1 5AEBD63E
P 5900 7150
F 0 "F6" V 5980 7150 50  0000 C CNN
F 1 "R" V 5900 7150 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5830 7150 50  0001 C CNN
F 3 "" H 5900 7150 50  0001 C CNN
	1    5900 7150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6200 7150 6200 7250
Wire Wire Line
	6050 7150 6050 7250
Wire Wire Line
	6050 7200 6200 7200
Connection ~ 6200 7200
Connection ~ 6050 7200
Text GLabel 5750 7150 0    60   Input ~ 0
3-5v-up
Text GLabel 5750 7250 0    60   Input ~ 0
3-5v-down
Wire Notes Line
	1050 5150 7900 5150
Wire Notes Line
	7900 5150 7900 9200
Wire Notes Line
	7900 9200 1050 9200
Wire Notes Line
	1050 9200 1050 5150
Wire Notes Line
	8100 5150 14950 5150
Wire Notes Line
	14950 5150 14950 9200
Wire Notes Line
	14950 9200 8100 9200
Wire Notes Line
	8100 9200 8100 5150
Wire Notes Line
	1050 9400 7900 9400
Wire Notes Line
	7900 9400 7900 13450
Wire Notes Line
	7900 13450 1050 13450
Wire Notes Line
	1050 13450 1050 9400
Wire Notes Line
	1050 950  7900 950 
Wire Notes Line
	7900 950  7900 5000
Wire Notes Line
	7900 5000 1050 5000
Wire Notes Line
	1050 5000 1050 950 
Wire Notes Line
	8100 950  14950 950 
Wire Notes Line
	14950 950  14950 5000
Wire Notes Line
	14950 5000 8100 5000
Wire Notes Line
	8100 5000 8100 950 
$EndSCHEMATC
