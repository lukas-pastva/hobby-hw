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
LIBS:psw
LIBS:module ethernet 1.5-cache
EELAYER 25 0
EELAYER END
$Descr A1 23386 33110 portrait
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
Text GLabel 9800 6450 0    60   Input ~ 0
eth1-1
Text GLabel 9800 6550 0    60   Input ~ 0
eth1-2
Text GLabel 9800 6850 0    60   Input ~ 0
eth1-3
Text GLabel 9800 6750 0    60   Input ~ 0
eth1-4
Text GLabel 9800 7150 0    60   Input ~ 0
eth2-4
Text GLabel 9800 8800 0    60   Input ~ 0
eth3-4
Text GLabel 9800 7350 0    60   Input ~ 0
eth2-2
Text GLabel 9800 8600 0    60   Input ~ 0
eth3-2
Text GLabel 9800 7050 0    60   Input ~ 0
eth2-3
Text GLabel 9800 8900 0    60   Input ~ 0
eth3-3
Text GLabel 9800 7450 0    60   Input ~ 0
eth2-1
Text GLabel 9800 8500 0    60   Input ~ 0
eth3-1
Text GLabel 2700 5850 0    60   Input ~ 0
eth1-1
Text GLabel 3200 5850 2    60   Input ~ 0
eth1-2
Text GLabel 2700 5950 0    60   Input ~ 0
eth1-3
Text GLabel 3200 6050 2    60   Input ~ 0
eth1-4
Text GLabel 3200 5950 2    60   Input ~ 0
gnd
Text GLabel 2700 6050 0    60   Input ~ 0
gnd
$Comp
L Conn_02x04_Odd_Even J39
U 1 1 5ACB1F10
P 2900 5950
F 0 "J39" H 2950 6150 50  0000 C CNN
F 1 "eth1" H 2950 5650 50  0000 C CNN
F 2 "conn-io:RJ45-TYCO-406549-psw-short" H 2900 5950 50  0001 C CNN
F 3 "" H 2900 5950 50  0001 C CNN
	1    2900 5950
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
L Conn_02x04_Odd_Even J1
U 1 1 5ACB425D
P 2900 6650
F 0 "J1" H 2950 6850 50  0000 C CNN
F 1 "eth2" H 2950 6350 50  0000 C CNN
F 2 "conn-io:RJ45-TYCO-406549-psw-short" H 2900 6650 50  0001 C CNN
F 3 "" H 2900 6650 50  0001 C CNN
	1    2900 6650
	1    0    0    -1  
$EndComp
Text GLabel 2700 7250 0    60   Input ~ 0
eth3-1
Text GLabel 3200 7250 2    60   Input ~ 0
eth3-2
Text GLabel 2700 7350 0    60   Input ~ 0
eth3-3
Text GLabel 3200 7450 2    60   Input ~ 0
eth3-4
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
$Comp
L Conn_02x04_Odd_Even J4
U 1 1 5ACB458D
P 4450 5950
F 0 "J4" H 4500 6150 50  0000 C CNN
F 1 "eth4" H 4500 5650 50  0000 C CNN
F 2 "conn-io:RJ45-TYCO-406549-psw-short" H 4450 5950 50  0001 C CNN
F 3 "" H 4450 5950 50  0001 C CNN
	1    4450 5950
	1    0    0    -1  
$EndComp
Text GLabel 4250 6550 0    60   Input ~ 0
eth5-1
Text GLabel 4750 6550 2    60   Input ~ 0
eth5-2
Text GLabel 4250 6650 0    60   Input ~ 0
eth5-3
Text GLabel 4750 6750 2    60   Input ~ 0
eth5-4
Text GLabel 4750 6650 2    60   Input ~ 0
gnd
Text GLabel 4250 6750 0    60   Input ~ 0
gnd
$Comp
L Conn_02x04_Odd_Even J6
U 1 1 5ACB459B
P 4450 6650
F 0 "J6" H 4500 6850 50  0000 C CNN
F 1 "eth5" H 4500 6350 50  0000 C CNN
F 2 "conn-io:RJ45-TYCO-406549-psw-short" H 4450 6650 50  0001 C CNN
F 3 "" H 4450 6650 50  0001 C CNN
	1    4450 6650
	1    0    0    -1  
$EndComp
Text GLabel 4250 7250 0    60   Input ~ 0
eth6-1
Text GLabel 4750 7250 2    60   Input ~ 0
eth6-2
Text GLabel 4250 7350 0    60   Input ~ 0
eth6-3
Text GLabel 4750 7450 2    60   Input ~ 0
eth6-4
Text GLabel 4750 7350 2    60   Input ~ 0
gnd
Text GLabel 4250 7450 0    60   Input ~ 0
gnd
$Comp
L Conn_02x04_Odd_Even J11
U 1 1 5ACB45A9
P 4450 7350
F 0 "J11" H 4500 7550 50  0000 C CNN
F 1 "eth6" H 4500 7050 50  0000 C CNN
F 2 "conn-io:RJ45-TYCO-406549-psw-short" H 4450 7350 50  0001 C CNN
F 3 "" H 4450 7350 50  0001 C CNN
	1    4450 7350
	1    0    0    -1  
$EndComp
Text GLabel 4300 7900 0    60   Input ~ 0
eth7-1
Text GLabel 4800 7900 2    60   Input ~ 0
eth7-2
Text GLabel 4300 8000 0    60   Input ~ 0
eth7-3
Text GLabel 4800 8100 2    60   Input ~ 0
eth7-4
Text GLabel 4800 8000 2    60   Input ~ 0
gnd
Text GLabel 4300 8100 0    60   Input ~ 0
gnd
$Comp
L Conn_02x04_Odd_Even J18
U 1 1 5ACB5491
P 4500 8000
F 0 "J18" H 4550 8200 50  0000 C CNN
F 1 "eth7" H 4550 7700 50  0000 C CNN
F 2 "conn-io:RJ45-TYCO-406549-psw-short" H 4500 8000 50  0001 C CNN
F 3 "" H 4500 8000 50  0001 C CNN
	1    4500 8000
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x04_Odd_Even J2
U 1 1 5AF85FA6
P 2900 7350
F 0 "J2" H 2950 7550 50  0000 C CNN
F 1 "eth3" H 2950 7050 50  0000 C CNN
F 2 "psw-library:psw-rj-45-short-no-gnd" H 2900 7350 50  0001 C CNN
F 3 "" H 2900 7350 50  0001 C CNN
	1    2900 7350
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x04_Odd_Even J5
U 1 1 5AF8603B
P 2900 8150
F 0 "J5" H 2950 8350 50  0000 C CNN
F 1 "eth8" H 2950 7850 50  0000 C CNN
F 2 "psw-library:psw-rj-45-short-no-gnd" H 2900 8150 50  0001 C CNN
F 3 "" H 2900 8150 50  0001 C CNN
	1    2900 8150
	1    0    0    -1  
$EndComp
Text GLabel 13500 8550 3    60   Input ~ 0
rxip6
Text GLabel 13600 8550 3    60   Input ~ 0
rxin6
Text GLabel 13700 8550 3    60   Input ~ 0
txon6
Text GLabel 13800 8550 3    60   Input ~ 0
txop6
Text GLabel 14000 8550 3    60   Input ~ 0
txop7
Text GLabel 14100 8550 3    60   Input ~ 0
txon7
Text GLabel 14300 8550 3    60   Input ~ 0
rxip7
Text GLabel 14200 8550 3    60   Input ~ 0
rxin7
$Comp
L C C3
U 1 1 5AFBA0CF
P 10750 7550
F 0 "C3" H 10775 7650 50  0000 L CNN
F 1 "C" H 10775 7450 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 10788 7400 50  0001 C CNN
F 3 "" H 10750 7550 50  0001 C CNN
	1    10750 7550
	0    1    1    0   
$EndComp
Text GLabel 10900 7550 2    60   Input ~ 0
agnd
$Comp
L C C6
U 1 1 5AFBFA03
P 10700 6650
F 0 "C6" H 10725 6750 50  0000 L CNN
F 1 "C" H 10725 6550 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 10738 6500 50  0001 C CNN
F 3 "" H 10700 6650 50  0001 C CNN
	1    10700 6650
	0    1    1    0   
$EndComp
Text GLabel 10850 6650 2    60   Input ~ 0
agnd
$Comp
L R R14
U 1 1 5AFB5916
P 10050 6200
F 0 "R14" V 10130 6200 50  0000 C CNN
F 1 "R" V 10050 6200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9980 6200 50  0001 C CNN
F 3 "" H 10050 6200 50  0001 C CNN
	1    10050 6200
	0    -1   -1   0   
$EndComp
$Comp
L R R15
U 1 1 5AFB59CC
P 10050 7800
F 0 "R15" V 10130 7800 50  0000 C CNN
F 1 "R" V 10050 7800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9980 7800 50  0001 C CNN
F 3 "" H 10050 7800 50  0001 C CNN
	1    10050 7800
	0    -1   -1   0   
$EndComp
$Comp
L C C4
U 1 1 5AFB5D0F
P 11450 8050
F 0 "C4" H 11475 8150 50  0000 L CNN
F 1 "C" H 11475 7950 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 11488 7900 50  0001 C CNN
F 3 "" H 11450 8050 50  0001 C CNN
	1    11450 8050
	0    -1   -1   0   
$EndComp
Text GLabel 11600 8050 2    60   Input ~ 0
agnd
Text GLabel 2700 8050 0    60   Input ~ 0
eth8-1
Text GLabel 2700 8150 0    60   Input ~ 0
eth8-3
Text GLabel 3200 8250 2    60   Input ~ 0
eth8-4
Text GLabel 3200 8050 2    60   Input ~ 0
eth8-2
Text GLabel 10300 8500 2    60   Input ~ 0
rxip6
Text GLabel 10300 8600 2    60   Input ~ 0
rxin6
Text GLabel 10300 8900 2    60   Input ~ 0
txop6
Text GLabel 10300 8800 2    60   Input ~ 0
txon6
Text GLabel 10300 9100 2    60   Input ~ 0
txop7
Text GLabel 10300 9200 2    60   Input ~ 0
txon7
$Comp
L C C7
U 1 1 5AFBAD6D
P 10750 9600
F 0 "C7" H 10775 9700 50  0000 L CNN
F 1 "C" H 10775 9500 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 10788 9450 50  0001 C CNN
F 3 "" H 10750 9600 50  0001 C CNN
	1    10750 9600
	0    1    1    0   
$EndComp
Text GLabel 10900 9600 2    60   Input ~ 0
agnd
Text GLabel 10300 9500 2    60   Input ~ 0
rxip7
Text GLabel 10300 9400 2    60   Input ~ 0
rxin7
$Comp
L C C8
U 1 1 5AFBAD79
P 10700 8700
F 0 "C8" H 10725 8800 50  0000 L CNN
F 1 "C" H 10725 8600 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 10738 8550 50  0001 C CNN
F 3 "" H 10700 8700 50  0001 C CNN
	1    10700 8700
	0    1    1    0   
$EndComp
Text GLabel 10850 8700 2    60   Input ~ 0
agnd
$Comp
L R R16
U 1 1 5AFBAD8B
P 10050 9850
F 0 "R16" V 10130 9850 50  0000 C CNN
F 1 "R" V 10050 9850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9980 9850 50  0001 C CNN
F 3 "" H 10050 9850 50  0001 C CNN
	1    10050 9850
	0    -1   -1   0   
$EndComp
$Comp
L R R17
U 1 1 5AFBAD91
P 10050 8250
F 0 "R17" V 10130 8250 50  0000 C CNN
F 1 "R" V 10050 8250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 9980 8250 50  0001 C CNN
F 3 "" H 10050 8250 50  0001 C CNN
	1    10050 8250
	0    -1   -1   0   
$EndComp
Text GLabel 9800 9500 0    60   Input ~ 0
eth8-1
Text GLabel 9800 9100 0    60   Input ~ 0
eth8-3
Text GLabel 9800 9200 0    60   Input ~ 0
eth8-4
Text GLabel 9800 9400 0    60   Input ~ 0
eth8-2
Text GLabel 13300 8550 3    60   Input ~ 0
rxip5
Text GLabel 13200 8550 3    60   Input ~ 0
rxin5
Text GLabel 13100 8550 3    60   Input ~ 0
txon5
Text GLabel 13000 8550 3    60   Input ~ 0
txop5
Text GLabel 10300 7450 2    60   Input ~ 0
rxip5
Text GLabel 10300 7350 2    60   Input ~ 0
rxin5
Text GLabel 10300 7150 2    60   Input ~ 0
txon5
Text GLabel 10300 7050 2    60   Input ~ 0
txop5
Text GLabel 12350 8050 0    60   Input ~ 0
txop4
Text GLabel 12350 7950 0    60   Input ~ 0
txon4
Text GLabel 12350 7850 0    60   Input ~ 0
rxin4
Text GLabel 12350 7750 0    60   Input ~ 0
rxip4
Text GLabel 10300 6850 2    60   Input ~ 0
txop4
Text GLabel 10300 6750 2    60   Input ~ 0
txon4
Text GLabel 10300 6550 2    60   Input ~ 0
rxin4
Text GLabel 10300 6450 2    60   Input ~ 0
rxip4
$Comp
L C C10
U 1 1 5AFC0A7F
P 11100 2950
F 0 "C10" H 11125 3050 50  0000 L CNN
F 1 "C" H 11125 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 11138 2800 50  0001 C CNN
F 3 "" H 11100 2950 50  0001 C CNN
	1    11100 2950
	0    1    1    0   
$EndComp
Text GLabel 11250 2950 2    60   Input ~ 0
agnd
$Comp
L C C5
U 1 1 5AFC0A86
P 11050 2050
F 0 "C5" H 11075 2150 50  0000 L CNN
F 1 "C" H 11075 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 11088 1900 50  0001 C CNN
F 3 "" H 11050 2050 50  0001 C CNN
	1    11050 2050
	0    1    1    0   
$EndComp
Text GLabel 11200 2050 2    60   Input ~ 0
agnd
$Comp
L R R19
U 1 1 5AFC0A8D
P 10400 1600
F 0 "R19" V 10480 1600 50  0000 C CNN
F 1 "R" V 10400 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 10330 1600 50  0001 C CNN
F 3 "" H 10400 1600 50  0001 C CNN
	1    10400 1600
	0    -1   -1   0   
$EndComp
$Comp
L R R18
U 1 1 5AFC0A93
P 10400 3200
F 0 "R18" V 10480 3200 50  0000 C CNN
F 1 "R" V 10400 3200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 10330 3200 50  0001 C CNN
F 3 "" H 10400 3200 50  0001 C CNN
	1    10400 3200
	0    -1   -1   0   
$EndComp
$Comp
L C C12
U 1 1 5AFC0A99
P 11800 3450
F 0 "C12" H 11825 3550 50  0000 L CNN
F 1 "C" H 11825 3350 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 11838 3300 50  0001 C CNN
F 3 "" H 11800 3450 50  0001 C CNN
	1    11800 3450
	0    -1   -1   0   
$EndComp
Text GLabel 11950 3450 2    60   Input ~ 0
agnd
$Comp
L C C11
U 1 1 5AFC0AA6
P 11100 5000
F 0 "C11" H 11125 5100 50  0000 L CNN
F 1 "C" H 11125 4900 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 11138 4850 50  0001 C CNN
F 3 "" H 11100 5000 50  0001 C CNN
	1    11100 5000
	0    1    1    0   
$EndComp
Text GLabel 11250 5000 2    60   Input ~ 0
agnd
$Comp
L C C9
U 1 1 5AFC0AAF
P 11050 4100
F 0 "C9" H 11075 4200 50  0000 L CNN
F 1 "C" H 11075 4000 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 11088 3950 50  0001 C CNN
F 3 "" H 11050 4100 50  0001 C CNN
	1    11050 4100
	0    1    1    0   
$EndComp
Text GLabel 11200 4100 2    60   Input ~ 0
agnd
$Comp
L R R20
U 1 1 5AFC0AB6
P 10400 5250
F 0 "R20" V 10480 5250 50  0000 C CNN
F 1 "R" V 10400 5250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 10330 5250 50  0001 C CNN
F 3 "" H 10400 5250 50  0001 C CNN
	1    10400 5250
	0    -1   -1   0   
$EndComp
$Comp
L R R21
U 1 1 5AFC0ABC
P 10400 3650
F 0 "R21" V 10480 3650 50  0000 C CNN
F 1 "R" V 10400 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 10330 3650 50  0001 C CNN
F 3 "" H 10400 3650 50  0001 C CNN
	1    10400 3650
	0    -1   -1   0   
$EndComp
Text GLabel 12350 7450 0    60   Input ~ 0
rxip3
Text GLabel 12350 7350 0    60   Input ~ 0
rxin3
Text GLabel 12350 7250 0    60   Input ~ 0
txon3
Text GLabel 12350 7150 0    60   Input ~ 0
txop3
Text GLabel 12350 6950 0    60   Input ~ 0
txop2
Text GLabel 12350 6850 0    60   Input ~ 0
txon2
Text GLabel 12350 6750 0    60   Input ~ 0
rxin2
Text GLabel 12350 6650 0    60   Input ~ 0
rxip2
Text GLabel 12900 6050 1    60   Input ~ 0
rxip1
Text GLabel 13000 6050 1    60   Input ~ 0
rxin1
Text GLabel 13100 6050 1    60   Input ~ 0
txon1
Text GLabel 13200 6050 1    60   Input ~ 0
txop1
Text GLabel 13400 6050 1    60   Input ~ 0
txop0
Text GLabel 13500 6050 1    60   Input ~ 0
txon0
Text GLabel 13600 6050 1    60   Input ~ 0
rxin0
Text GLabel 13700 6050 1    60   Input ~ 0
rxip0
Text GLabel 10650 4900 2    60   Input ~ 0
rxip3
Text GLabel 10650 4800 2    60   Input ~ 0
rxin3
Text GLabel 10650 4600 2    60   Input ~ 0
txon3
Text GLabel 10650 4500 2    60   Input ~ 0
txop3
Text GLabel 10650 4300 2    60   Input ~ 0
txop2
Text GLabel 10650 4200 2    60   Input ~ 0
txon2
Text GLabel 10650 4000 2    60   Input ~ 0
rxin2
Text GLabel 10650 3900 2    60   Input ~ 0
rxip2
Text GLabel 10650 2850 2    60   Input ~ 0
rxip1
Text GLabel 10650 2750 2    60   Input ~ 0
rxin1
Text GLabel 10650 2550 2    60   Input ~ 0
txon1
Text GLabel 10650 2450 2    60   Input ~ 0
txop1
Text GLabel 10650 2250 2    60   Input ~ 0
txop0
Text GLabel 10650 2150 2    60   Input ~ 0
txon0
Text GLabel 10650 1950 2    60   Input ~ 0
rxin0
Text GLabel 10650 1850 2    60   Input ~ 0
rxip0
Text GLabel 10150 4900 0    60   Input ~ 0
eth6-1
Text GLabel 10150 4800 0    60   Input ~ 0
eth6-2
Text GLabel 10150 4500 0    60   Input ~ 0
eth6-3
Text GLabel 10150 4600 0    60   Input ~ 0
eth6-4
Text GLabel 10150 3900 0    60   Input ~ 0
eth5-1
Text GLabel 10150 4000 0    60   Input ~ 0
eth5-2
Text GLabel 10150 4300 0    60   Input ~ 0
eth5-3
Text GLabel 10150 4200 0    60   Input ~ 0
eth5-4
Text GLabel 10150 2850 0    60   Input ~ 0
eth4-1
Text GLabel 10150 2750 0    60   Input ~ 0
eth4-2
Text GLabel 10150 2450 0    60   Input ~ 0
eth4-3
Text GLabel 10150 2550 0    60   Input ~ 0
eth4-4
Text GLabel 10150 1850 0    60   Input ~ 0
eth7-1
Text GLabel 10150 1950 0    60   Input ~ 0
eth7-2
Text GLabel 10150 2250 0    60   Input ~ 0
eth7-3
Text GLabel 10150 2150 0    60   Input ~ 0
eth7-4
$Comp
L C C20
U 1 1 5AFC6F23
P 13600 5500
F 0 "C20" H 13625 5600 50  0000 L CNN
F 1 "C" H 13625 5400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 13638 5350 50  0001 C CNN
F 3 "" H 13600 5500 50  0001 C CNN
	1    13600 5500
	1    0    0    -1  
$EndComp
Text GLabel 13600 5350 1    60   Input ~ 0
agnd
$Comp
L C C13
U 1 1 5AFC77CC
P 12150 6400
F 0 "C13" H 12175 6500 50  0000 L CNN
F 1 "C" H 12175 6300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 12188 6250 50  0001 C CNN
F 3 "" H 12150 6400 50  0001 C CNN
	1    12150 6400
	0    1    1    0   
$EndComp
Text GLabel 12000 6400 0    60   Input ~ 0
agnd
$Comp
L C C18
U 1 1 5AFC973A
P 13300 5350
F 0 "C18" H 13325 5450 50  0000 L CNN
F 1 "C" H 13325 5250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 13338 5200 50  0001 C CNN
F 3 "" H 13300 5350 50  0001 C CNN
	1    13300 5350
	1    0    0    -1  
$EndComp
Text GLabel 13300 5200 1    60   Input ~ 0
agnd
$Comp
L C C17
U 1 1 5AFC98DC
P 12850 9350
F 0 "C17" H 12875 9450 50  0000 L CNN
F 1 "C" H 12875 9250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 12888 9200 50  0001 C CNN
F 3 "" H 12850 9350 50  0001 C CNN
	1    12850 9350
	1    0    0    -1  
$EndComp
Text GLabel 12850 9500 3    60   Input ~ 0
agnd
$Comp
L C C19
U 1 1 5AFCA821
P 13400 8700
F 0 "C19" H 13425 8800 50  0000 L CNN
F 1 "C" H 13425 8600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 13438 8550 50  0001 C CNN
F 3 "" H 13400 8700 50  0001 C CNN
	1    13400 8700
	1    0    0    -1  
$EndComp
Text GLabel 13400 8850 3    60   Input ~ 0
agnd
$Comp
L C C14
U 1 1 5AFCB38B
P 11600 7100
F 0 "C14" H 11625 7200 50  0000 L CNN
F 1 "C" H 11625 7000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 11638 6950 50  0001 C CNN
F 3 "" H 11600 7100 50  0001 C CNN
	1    11600 7100
	0    1    1    0   
$EndComp
Text GLabel 11450 7100 0    60   Input ~ 0
agnd
$Comp
L C C21
U 1 1 5AFCBE6E
P 13900 9350
F 0 "C21" H 13925 9450 50  0000 L CNN
F 1 "C" H 13925 9250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 13938 9200 50  0001 C CNN
F 3 "" H 13900 9350 50  0001 C CNN
	1    13900 9350
	1    0    0    -1  
$EndComp
$Comp
L C C25
U 1 1 5AFCBF66
P 14400 8700
F 0 "C25" H 14425 8800 50  0000 L CNN
F 1 "C" H 14425 8600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 14438 8550 50  0001 C CNN
F 3 "" H 14400 8700 50  0001 C CNN
	1    14400 8700
	1    0    0    -1  
$EndComp
Text GLabel 13900 9500 3    60   Input ~ 0
agnd
Text GLabel 14400 8850 3    60   Input ~ 0
agnd
$Comp
L C C24
U 1 1 5AFCD496
P 14400 5900
F 0 "C24" H 14425 6000 50  0000 L CNN
F 1 "C" H 14425 5800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 14438 5750 50  0001 C CNN
F 3 "" H 14400 5900 50  0001 C CNN
	1    14400 5900
	1    0    0    -1  
$EndComp
Text GLabel 14400 5750 1    60   Input ~ 0
agnd
Text GLabel 14200 6050 1    60   Input ~ 0
xo
Text GLabel 14100 6050 1    60   Input ~ 0
xi
$Comp
L C C27
U 1 1 5AFCDAB6
P 15050 6550
F 0 "C27" H 15075 6650 50  0000 L CNN
F 1 "C" H 15075 6450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 15088 6400 50  0001 C CNN
F 3 "" H 15050 6550 50  0001 C CNN
	1    15050 6550
	0    1    1    0   
$EndComp
Text GLabel 15200 6550 2    60   Input ~ 0
agnd
$Comp
L R R22
U 1 1 5AFCDD73
P 13900 5900
F 0 "R22" V 13980 5900 50  0000 C CNN
F 1 "R" V 13900 5900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 13830 5900 50  0001 C CNN
F 3 "" H 13900 5900 50  0001 C CNN
	1    13900 5900
	1    0    0    -1  
$EndComp
Text GLabel 13900 5750 1    60   Input ~ 0
agnd
Text GLabel 14900 7950 2    60   Input ~ 0
scl
Text GLabel 14900 7850 2    60   Input ~ 0
sda
$Comp
L C C29
U 1 1 5AFCF7DE
P 15400 7600
F 0 "C29" H 15425 7700 50  0000 L CNN
F 1 "C" H 15425 7500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 15438 7450 50  0001 C CNN
F 3 "" H 15400 7600 50  0001 C CNN
	1    15400 7600
	0    1    1    0   
$EndComp
Text GLabel 15550 7600 2    60   Input ~ 0
agnd
$Comp
L Crystal Y1
U 1 1 5AFD12D5
P 14150 5050
F 0 "Y1" H 14150 5200 50  0000 C CNN
F 1 "Crystal" H 14150 4900 50  0000 C CNN
F 2 "Crystals:Resonator-2pin_w8.0mm_h3.5mm" H 14150 5050 50  0001 C CNN
F 3 "" H 14150 5050 50  0001 C CNN
	1    14150 5050
	1    0    0    -1  
$EndComp
Text GLabel 14000 5050 0    60   Input ~ 0
xi
Text GLabel 14300 5050 2    60   Input ~ 0
xo
$Comp
L C C23
U 1 1 5AFD1D5F
P 14400 4650
F 0 "C23" H 14425 4750 50  0000 L CNN
F 1 "C" H 14425 4550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 14438 4500 50  0001 C CNN
F 3 "" H 14400 4650 50  0001 C CNN
	1    14400 4650
	0    1    1    0   
$EndComp
Text GLabel 14550 4650 2    60   Input ~ 0
xo
$Comp
L C C22
U 1 1 5AFD1F41
P 14400 4450
F 0 "C22" H 14425 4550 50  0000 L CNN
F 1 "C" H 14425 4350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 14438 4300 50  0001 C CNN
F 3 "" H 14400 4450 50  0001 C CNN
	1    14400 4450
	0    1    1    0   
$EndComp
Text GLabel 14550 4450 2    60   Input ~ 0
xi
Text GLabel 14250 4650 0    60   Input ~ 0
agnd
Text GLabel 14250 4450 0    60   Input ~ 0
agnd
$Comp
L AP1117-33 U2
U 1 1 5AFD26A5
P 13050 4750
F 0 "U2" H 12900 4875 50  0000 C CNN
F 1 "AP1117-33" H 13050 4875 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 13050 4950 50  0001 C CNN
F 3 "" H 13150 4500 50  0001 C CNN
	1    13050 4750
	0    1    1    0   
$EndComp
Text GLabel 12750 4750 0    60   Input ~ 0
agnd
Text GLabel 13050 4450 1    60   Input ~ 0
5v-sw
Text GLabel 14400 6050 2    60   Input ~ 0
3.3v
Text GLabel 13050 5050 3    60   Input ~ 0
3.3v
$Comp
L C C15
U 1 1 5AFD517D
P 12500 5150
F 0 "C15" H 12525 5250 50  0000 L CNN
F 1 "C" H 12525 5050 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 12538 5000 50  0001 C CNN
F 3 "" H 12500 5150 50  0001 C CNN
	1    12500 5150
	0    1    1    0   
$EndComp
Text GLabel 12350 5150 0    60   Input ~ 0
agnd
Text GLabel 12650 5150 2    60   Input ~ 0
5v-sw
$Comp
L C C16
U 1 1 5AFD55CE
P 12500 5400
F 0 "C16" H 12525 5500 50  0000 L CNN
F 1 "C" H 12525 5300 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 12538 5250 50  0001 C CNN
F 3 "" H 12500 5400 50  0001 C CNN
	1    12500 5400
	0    1    1    0   
$EndComp
Text GLabel 12350 5400 0    60   Input ~ 0
agnd
Text GLabel 12650 5400 2    60   Input ~ 0
3.3v
$Comp
L C C26
U 1 1 5AFD5B13
P 14750 5900
F 0 "C26" H 14775 6000 50  0000 L CNN
F 1 "C" H 14775 5800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 14788 5750 50  0001 C CNN
F 3 "" H 14750 5900 50  0001 C CNN
	1    14750 5900
	1    0    0    -1  
$EndComp
Text GLabel 14750 5750 1    60   Input ~ 0
agnd
Text GLabel 15550 7350 2    60   Input ~ 0
3.3v
$Comp
L R R23
U 1 1 5AFD7A1B
P 15400 7350
F 0 "R23" V 15480 7350 50  0000 C CNN
F 1 "R" V 15400 7350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 15330 7350 50  0001 C CNN
F 3 "" H 15400 7350 50  0001 C CNN
	1    15400 7350
	0    1    1    0   
$EndComp
Text GLabel 14900 7750 2    60   Input ~ 0
rst
Text GLabel 15250 7600 0    60   Input ~ 0
rst
Text GLabel 15250 7350 0    60   Input ~ 0
rst
Text GLabel 16150 7800 2    60   Input ~ 0
3.3v
Text GLabel 15850 7800 0    60   Input ~ 0
sda
$Comp
L R R24
U 1 1 5AFD8423
P 16000 7800
F 0 "R24" V 16080 7800 50  0000 C CNN
F 1 "R" V 16000 7800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 15930 7800 50  0001 C CNN
F 3 "" H 16000 7800 50  0001 C CNN
	1    16000 7800
	0    1    1    0   
$EndComp
Text GLabel 11800 5950 0    60   Input ~ 0
agnd
Text GLabel 11950 5950 2    60   Input ~ 0
gnd
Text GLabel 13800 7100 1    60   Input ~ 0
agnd
$Comp
L psw-RTL-8309N U1
U 1 1 5AFE30E1
P 14350 7750
F 0 "U1" H 13900 7000 60  0000 C CNN
F 1 "psw-RTL-8309N" H 13950 6750 60  0000 C CNN
F 2 "psw-library:psw-QFN-64-maly-stred" H 14350 7750 60  0001 C CNN
F 3 "" H 14350 7750 60  0001 C CNN
	1    14350 7750
	0    1    1    0   
$EndComp
$Comp
L Conn_01x04 J10
U 1 1 5AFD583E
P 16350 6450
F 0 "J10" H 16350 6650 50  0000 C CNN
F 1 "i2c" H 16350 6150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 16350 6450 50  0001 C CNN
F 3 "" H 16350 6450 50  0001 C CNN
	1    16350 6450
	1    0    0    -1  
$EndComp
Text GLabel 16150 6350 0    60   Input ~ 0
scl
Text GLabel 16150 6450 0    60   Input ~ 0
agnd
Text GLabel 16150 6550 0    60   Input ~ 0
sda
Text GLabel 16150 6650 0    60   Input ~ 0
3.3v
Text GLabel 1600 2400 0    60   Input ~ 0
5v
Text GLabel 1600 2500 0    60   Input ~ 0
12v
Text GLabel 1600 2600 0    60   Input ~ 0
agnd
Text GLabel 1600 2700 0    60   Input ~ 0
agnd
Text GLabel 2100 2700 2    60   Input ~ 0
agnd
Text GLabel 2100 2600 2    60   Input ~ 0
agnd
Text GLabel 2100 2500 2    60   Input ~ 0
12v
Text GLabel 2100 2400 2    60   Input ~ 0
12v
Text GLabel 1600 2800 0    60   Input ~ 0
1-up
Text GLabel 2100 2800 2    60   Input ~ 0
1-down
Text GLabel 1650 3550 0    60   Input ~ 0
5v
Text GLabel 1650 3650 0    60   Input ~ 0
12v
Text GLabel 1650 3750 0    60   Input ~ 0
agnd
Text GLabel 1650 3850 0    60   Input ~ 0
agnd
Text GLabel 2150 3850 2    60   Input ~ 0
agnd
Text GLabel 2150 3750 2    60   Input ~ 0
agnd
Text GLabel 2150 3650 2    60   Input ~ 0
12v
Text GLabel 2150 3550 2    60   Input ~ 0
12v
Text GLabel 1650 3950 0    60   Input ~ 0
2-up
Text GLabel 2150 3950 2    60   Input ~ 0
2-down
Text GLabel 3400 2400 0    60   Input ~ 0
5v
Text GLabel 3400 2500 0    60   Input ~ 0
12v
Text GLabel 3400 2600 0    60   Input ~ 0
agnd
Text GLabel 3400 2700 0    60   Input ~ 0
agnd
Text GLabel 3900 2700 2    60   Input ~ 0
agnd
Text GLabel 3900 2600 2    60   Input ~ 0
agnd
Text GLabel 3900 2500 2    60   Input ~ 0
12v
Text GLabel 3900 2400 2    60   Input ~ 0
12v
Text GLabel 3400 2800 0    60   Input ~ 0
3-up
Text GLabel 3900 2800 2    60   Input ~ 0
3-down
Text GLabel 3400 3600 0    60   Input ~ 0
5v
Text GLabel 3400 3700 0    60   Input ~ 0
12v
Text GLabel 3400 3800 0    60   Input ~ 0
agnd
Text GLabel 3400 3900 0    60   Input ~ 0
agnd
Text GLabel 3900 3900 2    60   Input ~ 0
agnd
Text GLabel 3900 3800 2    60   Input ~ 0
agnd
Text GLabel 3900 3700 2    60   Input ~ 0
12v
Text GLabel 3900 3600 2    60   Input ~ 0
12v
Text GLabel 3400 4000 0    60   Input ~ 0
4-up
Text GLabel 3900 4000 2    60   Input ~ 0
4-down
Text GLabel 1550 9350 0    60   Input ~ 0
1-plus
Text GLabel 2050 9350 2    60   Input ~ 0
1-minus
Text GLabel 1550 9450 0    60   Input ~ 0
2-plus
Text GLabel 2050 9450 2    60   Input ~ 0
2-minus
Text GLabel 1550 9750 0    60   Input ~ 0
1-cam-out
$Comp
L Conn_02x04_Counter_Clockwise J14
U 1 1 5B0F6A5F
P 2800 10500
F 0 "J14" H 2850 10700 50  0000 C CNN
F 1 "h-bridge-1" H 2850 10200 50  0000 C CNN
F 2 "smt-soic:8" H 2800 10500 50  0001 C CNN
F 3 "" H 2800 10500 50  0001 C CNN
	1    2800 10500
	1    0    0    -1  
$EndComp
Text GLabel 2600 10400 0    60   Input ~ 0
1-plus
Text GLabel 2600 10700 0    60   Input ~ 0
1-minus
Text GLabel 3100 10400 2    60   Input ~ 0
agnd
Text GLabel 3100 10700 2    60   Input ~ 0
agnd
Text GLabel 3100 10500 2    60   Input ~ 0
1-up
Text GLabel 3100 10600 2    60   Input ~ 0
1-down
$Comp
L C C1
U 1 1 5B0F9F12
P 2100 10350
F 0 "C1" H 2125 10450 50  0000 L CNN
F 1 "C" H 2125 10250 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 2138 10200 50  0001 C CNN
F 3 "" H 2100 10350 50  0001 C CNN
	1    2100 10350
	1    0    0    -1  
$EndComp
Text GLabel 2100 10200 1    60   Input ~ 0
agnd
$Comp
L D D1
U 1 1 5B0EEDFF
P 1900 10500
F 0 "D1" H 1900 10600 50  0000 C CNN
F 1 "D" H 1900 10400 50  0000 C CNN
F 2 "Diodes_SMD:D_1206" H 1900 10500 50  0001 C CNN
F 3 "" H 1900 10500 50  0001 C CNN
	1    1900 10500
	1    0    0    -1  
$EndComp
$Comp
L D D2
U 1 1 5B0EEEE1
P 1900 10650
F 0 "D2" H 1900 10750 50  0000 C CNN
F 1 "D" H 1900 10550 50  0000 C CNN
F 2 "Diodes_SMD:D_1206" H 1900 10650 50  0001 C CNN
F 3 "" H 1900 10650 50  0001 C CNN
	1    1900 10650
	1    0    0    -1  
$EndComp
Text GLabel 1750 10500 0    60   Input ~ 0
1-up
Text GLabel 1750 10650 0    60   Input ~ 0
1-down
$Comp
L Conn_02x04_Counter_Clockwise J15
U 1 1 5B0F0807
P 2800 11500
F 0 "J15" H 2850 11700 50  0000 C CNN
F 1 "h-bridge-1" H 2850 11200 50  0000 C CNN
F 2 "smt-soic:8" H 2800 11500 50  0001 C CNN
F 3 "" H 2800 11500 50  0001 C CNN
	1    2800 11500
	1    0    0    -1  
$EndComp
Text GLabel 2600 11400 0    60   Input ~ 0
2-plus
Text GLabel 2600 11700 0    60   Input ~ 0
2-minus
Text GLabel 3100 11400 2    60   Input ~ 0
agnd
Text GLabel 3100 11700 2    60   Input ~ 0
agnd
Text GLabel 3100 11500 2    60   Input ~ 0
2-up
Text GLabel 3100 11600 2    60   Input ~ 0
2-down
$Comp
L C C2
U 1 1 5B0F0815
P 2100 11350
F 0 "C2" H 2125 11450 50  0000 L CNN
F 1 "C" H 2125 11250 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 2138 11200 50  0001 C CNN
F 3 "" H 2100 11350 50  0001 C CNN
	1    2100 11350
	1    0    0    -1  
$EndComp
Text GLabel 2100 11200 1    60   Input ~ 0
agnd
$Comp
L D D3
U 1 1 5B0F081E
P 1900 11500
F 0 "D3" H 1900 11600 50  0000 C CNN
F 1 "D" H 1900 11400 50  0000 C CNN
F 2 "Diodes_SMD:D_1206" H 1900 11500 50  0001 C CNN
F 3 "" H 1900 11500 50  0001 C CNN
	1    1900 11500
	1    0    0    -1  
$EndComp
$Comp
L D D4
U 1 1 5B0F0824
P 1900 11650
F 0 "D4" H 1900 11750 50  0000 C CNN
F 1 "D" H 1900 11550 50  0000 C CNN
F 2 "Diodes_SMD:D_1206" H 1900 11650 50  0001 C CNN
F 3 "" H 1900 11650 50  0001 C CNN
	1    1900 11650
	1    0    0    -1  
$EndComp
Text GLabel 1750 11500 0    60   Input ~ 0
2-up
Text GLabel 1750 11650 0    60   Input ~ 0
2-down
NoConn ~ 2050 9650
Text GLabel 2050 9750 2    60   Input ~ 0
2-cam-out
$Comp
L Conn_02x05_Odd_Even J13
U 1 1 5B0F2A81
P 1750 9550
F 0 "J13" H 1800 9850 50  0000 C CNN
F 1 "relay-1" H 1800 9250 50  0000 C CNN
F 2 "psw-library:psw-latching-relay" H 1750 9550 50  0001 C CNN
F 3 "" H 1750 9550 50  0001 C CNN
	1    1750 9550
	1    0    0    -1  
$EndComp
Text GLabel 2750 9600 2    60   Input ~ 0
12v
$Comp
L Fuse F2
U 1 1 5B0FC3E5
P 2600 9600
F 0 "F2" V 2680 9600 50  0000 C CNN
F 1 "Fuse" V 2525 9600 50  0000 C CNN
F 2 "Resistors_SMD:R_1210_HandSoldering" V 2530 9600 50  0001 C CNN
F 3 "" H 2600 9600 50  0001 C CNN
	1    2600 9600
	0    1    1    0   
$EndComp
NoConn ~ 1550 9550
Text GLabel 4400 9350 0    60   Input ~ 0
3-plus
Text GLabel 4900 9350 2    60   Input ~ 0
3-minus
Text GLabel 4400 9450 0    60   Input ~ 0
4-plus
Text GLabel 4900 9450 2    60   Input ~ 0
4-minus
Text GLabel 4400 9750 0    60   Input ~ 0
3-cam-out
$Comp
L Conn_02x04_Counter_Clockwise J21
U 1 1 5B1013A9
P 5650 10500
F 0 "J21" H 5700 10700 50  0000 C CNN
F 1 "h-bridge-1" H 5700 10200 50  0000 C CNN
F 2 "smt-soic:8" H 5650 10500 50  0001 C CNN
F 3 "" H 5650 10500 50  0001 C CNN
	1    5650 10500
	1    0    0    -1  
$EndComp
Text GLabel 5450 10400 0    60   Input ~ 0
3-plus
Text GLabel 5450 10700 0    60   Input ~ 0
3-minus
Text GLabel 5950 10400 2    60   Input ~ 0
agnd
Text GLabel 5950 10700 2    60   Input ~ 0
agnd
Text GLabel 5950 10500 2    60   Input ~ 0
3-up
Text GLabel 5950 10600 2    60   Input ~ 0
3-down
$Comp
L C C28
U 1 1 5B1013B7
P 4950 10350
F 0 "C28" H 4975 10450 50  0000 L CNN
F 1 "C" H 4975 10250 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4988 10200 50  0001 C CNN
F 3 "" H 4950 10350 50  0001 C CNN
	1    4950 10350
	1    0    0    -1  
$EndComp
Text GLabel 4950 10200 1    60   Input ~ 0
agnd
$Comp
L D D5
U 1 1 5B1013C0
P 4750 10500
F 0 "D5" H 4750 10600 50  0000 C CNN
F 1 "D" H 4750 10400 50  0000 C CNN
F 2 "Diodes_SMD:D_1206" H 4750 10500 50  0001 C CNN
F 3 "" H 4750 10500 50  0001 C CNN
	1    4750 10500
	1    0    0    -1  
$EndComp
$Comp
L D D6
U 1 1 5B1013C6
P 4750 10650
F 0 "D6" H 4750 10750 50  0000 C CNN
F 1 "D" H 4750 10550 50  0000 C CNN
F 2 "Diodes_SMD:D_1206" H 4750 10650 50  0001 C CNN
F 3 "" H 4750 10650 50  0001 C CNN
	1    4750 10650
	1    0    0    -1  
$EndComp
Text GLabel 4600 10500 0    60   Input ~ 0
3-up
Text GLabel 4600 10650 0    60   Input ~ 0
3-down
$Comp
L Conn_02x04_Counter_Clockwise J22
U 1 1 5B1013D0
P 5650 11500
F 0 "J22" H 5700 11700 50  0000 C CNN
F 1 "h-bridge-1" H 5700 11200 50  0000 C CNN
F 2 "smt-soic:8" H 5650 11500 50  0001 C CNN
F 3 "" H 5650 11500 50  0001 C CNN
	1    5650 11500
	1    0    0    -1  
$EndComp
Text GLabel 5450 11400 0    60   Input ~ 0
4-plus
Text GLabel 5450 11700 0    60   Input ~ 0
4-minus
Text GLabel 5950 11400 2    60   Input ~ 0
agnd
Text GLabel 5950 11700 2    60   Input ~ 0
agnd
Text GLabel 5950 11500 2    60   Input ~ 0
4-up
Text GLabel 5950 11600 2    60   Input ~ 0
4-down
$Comp
L C C30
U 1 1 5B1013DE
P 4950 11350
F 0 "C30" H 4975 11450 50  0000 L CNN
F 1 "C" H 4975 11250 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4988 11200 50  0001 C CNN
F 3 "" H 4950 11350 50  0001 C CNN
	1    4950 11350
	1    0    0    -1  
$EndComp
Text GLabel 4950 11200 1    60   Input ~ 0
agnd
$Comp
L D D7
U 1 1 5B1013E7
P 4750 11500
F 0 "D7" H 4750 11600 50  0000 C CNN
F 1 "D" H 4750 11400 50  0000 C CNN
F 2 "Diodes_SMD:D_1206" H 4750 11500 50  0001 C CNN
F 3 "" H 4750 11500 50  0001 C CNN
	1    4750 11500
	1    0    0    -1  
$EndComp
$Comp
L D D8
U 1 1 5B1013ED
P 4750 11650
F 0 "D8" H 4750 11750 50  0000 C CNN
F 1 "D" H 4750 11550 50  0000 C CNN
F 2 "Diodes_SMD:D_1206" H 4750 11650 50  0001 C CNN
F 3 "" H 4750 11650 50  0001 C CNN
	1    4750 11650
	1    0    0    -1  
$EndComp
Text GLabel 4600 11500 0    60   Input ~ 0
4-up
Text GLabel 4600 11650 0    60   Input ~ 0
4-down
NoConn ~ 4900 9650
Text GLabel 4900 9750 2    60   Input ~ 0
4-cam-out
$Comp
L Conn_02x05_Odd_Even J20
U 1 1 5B1013F9
P 4600 9550
F 0 "J20" H 4650 9850 50  0000 C CNN
F 1 "relay-1" H 4650 9250 50  0000 C CNN
F 2 "psw-library:psw-latching-relay" H 4600 9550 50  0001 C CNN
F 3 "" H 4600 9550 50  0001 C CNN
	1    4600 9550
	1    0    0    -1  
$EndComp
Text GLabel 5800 9550 2    60   Input ~ 0
12v
$Comp
L Fuse F4
U 1 1 5B101401
P 5650 9550
F 0 "F4" V 5730 9550 50  0000 C CNN
F 1 "Fuse" V 5575 9550 50  0000 C CNN
F 2 "Resistors_SMD:R_1210_HandSoldering" V 5580 9550 50  0001 C CNN
F 3 "" H 5650 9550 50  0001 C CNN
	1    5650 9550
	0    1    1    0   
$EndComp
NoConn ~ 4400 9550
Text GLabel 13850 3900 2    60   Input ~ 0
5v-sw
$Comp
L Fuse F5
U 1 1 5B108492
P 13700 3900
F 0 "F5" V 13780 3900 50  0000 C CNN
F 1 "Fuse" V 13625 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 13630 3900 50  0001 C CNN
F 3 "" H 13700 3900 50  0001 C CNN
	1    13700 3900
	0    1    1    0   
$EndComp
Text GLabel 13550 3900 0    60   Input ~ 0
5v
$Comp
L Conn_02x06_Odd_Even J16
U 1 1 5B11AC5B
P 1850 3650
F 0 "J16" H 1900 3950 50  0000 C CNN
F 1 "pwr" H 1900 3250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x06_Pitch2.54mm" H 1850 3650 50  0001 C CNN
F 3 "" H 1850 3650 50  0001 C CNN
	1    1850 3650
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x06_Odd_Even J3
U 1 1 5B11C127
P 1800 2500
F 0 "J3" H 1850 2800 50  0000 C CNN
F 1 "pwr" H 1850 2100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x06_Pitch2.54mm" H 1800 2500 50  0001 C CNN
F 3 "" H 1800 2500 50  0001 C CNN
	1    1800 2500
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x06_Odd_Even J17
U 1 1 5B11C251
P 3600 2500
F 0 "J17" H 3650 2800 50  0000 C CNN
F 1 "pwr" H 3650 2100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x06_Pitch2.54mm" H 3600 2500 50  0001 C CNN
F 3 "" H 3600 2500 50  0001 C CNN
	1    3600 2500
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x06_Odd_Even J19
U 1 1 5B11C38E
P 3600 3700
F 0 "J19" H 3650 4000 50  0000 C CNN
F 1 "pwr" H 3650 3300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x06_Pitch2.54mm" H 3600 3700 50  0001 C CNN
F 3 "" H 3600 3700 50  0001 C CNN
	1    3600 3700
	1    0    0    -1  
$EndComp
Text GLabel 4250 6850 0    60   Input ~ 0
1-cam-out
Text GLabel 4750 6850 2    60   Input ~ 0
1-cam-out
Text GLabel 4250 7550 0    60   Input ~ 0
2-cam-out
Text GLabel 4750 7550 2    60   Input ~ 0
2-cam-out
Text GLabel 4300 8200 0    60   Input ~ 0
3-cam-out
Text GLabel 4800 8200 2    60   Input ~ 0
3-cam-out
Text GLabel 4250 6150 0    60   Input ~ 0
4-cam-out
Text GLabel 4750 6150 2    60   Input ~ 0
4-cam-out
$Comp
L Conn_02x12_Counter_Clockwise J23
U 1 1 5B9700CA
P 10450 2450
F 0 "J23" H 10500 3050 50  0000 C CNN
F 1 "transformer" H 10500 1750 50  0000 C CNN
F 2 "psw-library:psw-network-transformator" H 10450 2450 50  0001 C CNN
F 3 "" H 10450 2450 50  0001 C CNN
	1    10450 2450
	-1   0    0    1   
$EndComp
$Comp
L Conn_02x12_Counter_Clockwise J9
U 1 1 5B971C6E
P 10450 4500
F 0 "J9" H 10500 5100 50  0000 C CNN
F 1 "transformer" H 10500 3800 50  0000 C CNN
F 2 "psw-library:psw-network-transformator" H 10450 4500 50  0001 C CNN
F 3 "" H 10450 4500 50  0001 C CNN
	1    10450 4500
	-1   0    0    1   
$EndComp
$Comp
L Conn_02x12_Counter_Clockwise J7
U 1 1 5B9720D0
P 10100 7050
F 0 "J7" H 10150 7650 50  0000 C CNN
F 1 "transformer" H 10150 6350 50  0000 C CNN
F 2 "psw-library:psw-network-transformator" H 10100 7050 50  0001 C CNN
F 3 "" H 10100 7050 50  0001 C CNN
	1    10100 7050
	-1   0    0    1   
$EndComp
$Comp
L Conn_02x12_Counter_Clockwise J8
U 1 1 5B972598
P 10100 9100
F 0 "J8" H 10150 9700 50  0000 C CNN
F 1 "transformer" H 10150 8400 50  0000 C CNN
F 2 "psw-library:psw-network-transformator" H 10100 9100 50  0001 C CNN
F 3 "" H 10100 9100 50  0001 C CNN
	1    10100 9100
	-1   0    0    1   
$EndComp
Text GLabel 13700 9350 3    60   Input ~ 0
3.3v
Text GLabel 12600 9400 3    60   Input ~ 0
3.3v
Text GLabel 11650 6850 0    60   Input ~ 0
3.3v
Text GLabel 13000 5650 0    60   Input ~ 0
3.3v
Wire Wire Line
	14900 6550 12800 6550
Connection ~ 13300 5600
Wire Wire Line
	13000 5600 13000 5650
Wire Wire Line
	13300 5600 13000 5600
Wire Wire Line
	13300 6050 13300 5500
Connection ~ 11750 7050
Wire Wire Line
	11750 6850 11650 6850
Wire Wire Line
	11750 6850 11750 7100
Wire Wire Line
	12350 7050 11750 7050
Connection ~ 12850 9200
Wire Wire Line
	12600 9200 12600 9400
Wire Wire Line
	12600 9200 12900 9200
Wire Wire Line
	12900 9200 12900 8550
Wire Wire Line
	13700 9050 13700 9350
Wire Wire Line
	13900 8550 13900 9200
Wire Wire Line
	12350 7650 12800 7650
Wire Wire Line
	12350 7550 12800 7550
Connection ~ 12300 6450
Wire Wire Line
	12300 6450 12800 6450
Wire Wire Line
	12350 6550 12300 6550
Wire Wire Line
	12300 6550 12300 6400
Connection ~ 13750 5650
Connection ~ 13750 6550
Wire Wire Line
	13750 5650 13750 6550
Wire Wire Line
	13800 5650 13600 5650
Wire Wire Line
	13800 6050 13800 5650
Connection ~ 14150 6550
Wire Wire Line
	14150 5800 14150 6550
Wire Wire Line
	14000 5800 14150 5800
Wire Wire Line
	14000 6050 14000 5800
Connection ~ 13400 7950
Wire Wire Line
	14400 7950 14400 8550
Connection ~ 13400 8550
Connection ~ 12800 7650
Wire Wire Line
	13400 7950 13400 8600
Wire Wire Line
	12800 7950 14400 7950
Connection ~ 12800 7550
Connection ~ 12800 6550
Wire Wire Line
	12800 6450 12800 7950
Connection ~ 5400 9550
Wire Wire Line
	4900 9550 5500 9550
Wire Wire Line
	5400 9100 5400 9550
Wire Wire Line
	3900 9100 5400 9100
Wire Wire Line
	3900 9100 3900 9650
Wire Wire Line
	3900 9650 4400 9650
Connection ~ 2450 9550
Wire Wire Line
	2450 9600 2450 9550
Wire Wire Line
	2650 9550 2050 9550
Wire Wire Line
	2650 9050 2650 9550
Wire Wire Line
	1000 9050 2650 9050
Wire Wire Line
	1000 9050 1000 9650
Wire Wire Line
	1000 9650 1550 9650
Wire Wire Line
	9650 9300 9650 9850
Wire Wire Line
	9650 7250 9650 7800
Wire Wire Line
	10000 4700 10000 5250
Wire Wire Line
	10000 2650 10000 3200
Wire Wire Line
	10950 2950 10650 2950
Wire Notes Line
	6500 9150 3700 9150
Wire Notes Line
	6500 11950 6500 9150
Wire Notes Line
	3700 11950 6500 11950
Wire Notes Line
	3700 9150 3700 11950
Wire Wire Line
	4950 11650 4900 11650
Wire Wire Line
	4950 11500 4950 11650
Wire Wire Line
	4900 11500 5450 11500
Connection ~ 5450 11500
Connection ~ 4950 11500
Wire Wire Line
	5450 11500 5450 11600
Wire Wire Line
	4950 10650 4900 10650
Wire Wire Line
	4950 10500 4950 10650
Wire Wire Line
	4900 10500 5450 10500
Connection ~ 5450 10500
Connection ~ 4950 10500
Wire Wire Line
	5450 10500 5450 10600
Wire Notes Line
	3650 9150 850  9150
Wire Notes Line
	3650 11950 3650 9150
Wire Notes Line
	850  11950 3650 11950
Wire Notes Line
	850  9150 850  11950
Wire Wire Line
	2100 11650 2050 11650
Wire Wire Line
	2100 11500 2100 11650
Wire Wire Line
	2050 11500 2600 11500
Connection ~ 2600 11500
Connection ~ 2100 11500
Wire Wire Line
	2600 11500 2600 11600
Wire Wire Line
	2100 10650 2050 10650
Wire Wire Line
	2100 10500 2100 10650
Wire Wire Line
	2050 10500 2600 10500
Connection ~ 2600 10500
Connection ~ 2100 10500
Wire Wire Line
	2600 10500 2600 10600
Connection ~ 14400 8550
Wire Wire Line
	14400 8550 14900 8550
Wire Wire Line
	14900 8550 14900 8050
Wire Wire Line
	11950 5950 11800 5950
Connection ~ 11800 5950
Connection ~ 14900 6550
Connection ~ 14400 6050
Wire Wire Line
	14300 6050 14750 6050
Wire Wire Line
	14900 6550 14900 6650
Wire Wire Line
	10950 2650 10950 2950
Wire Wire Line
	11650 1600 11650 5250
Connection ~ 11650 3200
Connection ~ 11650 3650
Wire Wire Line
	10000 1600 10250 1600
Wire Wire Line
	10000 3200 10250 3200
Wire Wire Line
	10000 3650 10250 3650
Wire Wire Line
	11650 5250 10550 5250
Wire Wire Line
	11650 3650 10550 3650
Wire Wire Line
	10000 3650 10000 4400
Wire Wire Line
	10000 5250 10250 5250
Connection ~ 10000 4100
Connection ~ 10000 5000
Wire Wire Line
	10950 5000 10650 5000
Wire Wire Line
	10000 4100 10150 4100
Wire Wire Line
	10000 4400 10150 4400
Wire Wire Line
	10000 4700 10150 4700
Wire Wire Line
	10150 5000 10000 5000
Connection ~ 10750 4100
Wire Wire Line
	10650 4100 10900 4100
Wire Wire Line
	10750 4400 10750 4100
Wire Wire Line
	10650 4400 10750 4400
Connection ~ 10950 5000
Wire Wire Line
	10950 4700 10650 4700
Wire Wire Line
	10950 5000 10950 4700
Connection ~ 11650 3450
Wire Wire Line
	11650 3200 10550 3200
Wire Wire Line
	10550 1600 11650 1600
Wire Wire Line
	10000 1600 10000 2350
Connection ~ 10000 2050
Connection ~ 10000 2950
Wire Wire Line
	10000 2050 10150 2050
Wire Wire Line
	10000 2350 10150 2350
Wire Wire Line
	10000 2650 10150 2650
Wire Wire Line
	10150 2950 10000 2950
Connection ~ 10750 2050
Wire Wire Line
	10650 2050 10900 2050
Wire Wire Line
	10750 2350 10750 2050
Wire Wire Line
	10650 2350 10750 2350
Connection ~ 10950 2950
Wire Wire Line
	10950 2650 10650 2650
Wire Wire Line
	10600 7250 10600 7550
Wire Wire Line
	11300 6200 11300 9850
Connection ~ 11300 7800
Connection ~ 11300 8250
Wire Wire Line
	9650 6200 9900 6200
Wire Wire Line
	9650 7800 9900 7800
Wire Wire Line
	9650 8250 9900 8250
Wire Wire Line
	11300 9850 10200 9850
Wire Wire Line
	11300 8250 10200 8250
Wire Wire Line
	9650 8250 9650 9000
Wire Wire Line
	9650 9850 9900 9850
Connection ~ 9650 8700
Connection ~ 9650 9600
Wire Wire Line
	10600 9600 10300 9600
Wire Wire Line
	9650 8700 9800 8700
Wire Wire Line
	9650 9000 9800 9000
Wire Wire Line
	9650 9300 9800 9300
Wire Wire Line
	9800 9600 9650 9600
Connection ~ 10400 8700
Wire Wire Line
	10300 8700 10550 8700
Wire Wire Line
	10400 9000 10400 8700
Wire Wire Line
	10300 9000 10400 9000
Connection ~ 10600 9600
Wire Wire Line
	10600 9300 10300 9300
Wire Wire Line
	10600 9600 10600 9300
Connection ~ 11300 8050
Wire Wire Line
	11300 7800 10200 7800
Wire Wire Line
	10200 6200 11300 6200
Wire Wire Line
	9650 6200 9650 6950
Connection ~ 9650 6650
Connection ~ 9650 7550
Wire Wire Line
	10600 7550 10300 7550
Wire Wire Line
	9650 6650 9800 6650
Wire Wire Line
	9650 6950 9800 6950
Wire Wire Line
	9650 7250 9800 7250
Wire Wire Line
	9800 7550 9650 7550
Connection ~ 10400 6650
Wire Wire Line
	10300 6650 10550 6650
Wire Wire Line
	10400 6950 10400 6650
Wire Wire Line
	10300 6950 10400 6950
Connection ~ 10600 7550
Wire Wire Line
	10600 7250 10300 7250
Wire Wire Line
	13900 9050 13700 9050
Connection ~ 13900 9050
Text GLabel 14900 7250 2    60   Input ~ 0
3.3v
Text GLabel 14900 7650 2    60   Input ~ 0
l0
Text GLabel 14900 7550 2    60   Input ~ 0
l1
Text GLabel 14900 7450 2    60   Input ~ 0
l2
Text GLabel 14900 7350 2    60   Input ~ 0
l3
Text GLabel 14900 7150 2    60   Input ~ 0
l4
Text GLabel 14900 7050 2    60   Input ~ 0
l5
Text GLabel 14900 6950 2    60   Input ~ 0
l6
Text GLabel 14900 6850 2    60   Input ~ 0
l7
Text GLabel 14900 6750 2    60   Input ~ 0
l8
$Comp
L Conn_01x09 J12
U 1 1 5B992C60
P 17050 7300
F 0 "J12" H 17050 7800 50  0000 C CNN
F 1 "Conn_01x09" H 17050 6800 50  0000 C CNN
F 2 "psw-library:psw-qfn64-led" H 17050 7300 50  0001 C CNN
F 3 "" H 17050 7300 50  0001 C CNN
	1    17050 7300
	-1   0    0    1   
$EndComp
Text GLabel 17250 7700 2    60   Input ~ 0
l0
Text GLabel 17250 7600 2    60   Input ~ 0
l1
Text GLabel 17250 7500 2    60   Input ~ 0
l2
Text GLabel 17250 7400 2    60   Input ~ 0
l3
Text GLabel 17250 7300 2    60   Input ~ 0
l4
Text GLabel 17250 7200 2    60   Input ~ 0
l5
Text GLabel 17250 7100 2    60   Input ~ 0
l6
Text GLabel 17250 7000 2    60   Input ~ 0
l7
Text GLabel 17250 6900 2    60   Input ~ 0
l8
$EndSCHEMATC
