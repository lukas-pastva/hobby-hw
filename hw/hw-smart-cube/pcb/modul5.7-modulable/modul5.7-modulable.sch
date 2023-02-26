EESchema Schematic File Version 2
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:cmos4000
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intel
LIBS:interface
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:linear
LIBS:logic_programmable
LIBS:maxim
LIBS:mechanical
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:modules
LIBS:motor_drivers
LIBS:motorola
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:modul5.6-modulable-cache
EELAYER 25 0
EELAYER END
$Descr A0 33110 46811 portrait
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
L relays:SANYOU_SRD_Form_C K1
U 1 1 5AAEAC51
P 4150 7250
F 0 "K1" H 4600 7400 50  0000 L CNN
F 1 "relay" H 4600 7300 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 5600 7200 50  0001 C CNN
F 3 "" H 4150 7250 50  0001 C CNN
	1    4150 7250
	1    0    0    -1  
$EndComp
$Comp
L conn:Jack-DC J4
U 1 1 5AAEAC57
P 6100 7900
F 0 "J4" H 6100 8110 50  0000 C CNN
F 1 "dc" H 6100 7725 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 6150 7860 50  0001 C CNN
F 3 "" H 6150 7860 50  0001 C CNN
	1    6100 7900
	-1   0    0    1   
$EndComp
$Comp
L transistors:2N3904 Q1
U 1 1 5AAEAC5D
P 3100 7200
F 0 "Q1" H 3300 7275 50  0000 L CNN
F 1 "T1" H 3300 7200 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 3300 7125 50  0001 L CIN
F 3 "" H 3100 7200 50  0001 L CNN
	1    3100 7200
	1    0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5AAEAC63
P 2750 7200
F 0 "R1" V 2830 7200 50  0000 C CNN
F 1 "R" V 2750 7200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2680 7200 50  0001 C CNN
F 3 "" H 2750 7200 50  0001 C CNN
	1    2750 7200
	0    1    1    0   
$EndComp
$Comp
L Device:D D2-1
U 1 1 5AAEAC69
P 3500 7250
F 0 "D2-1" H 3500 7350 50  0000 C CNN
F 1 "D" H 3500 7150 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 3500 7250 50  0001 C CNN
F 3 "" H 3500 7250 50  0001 C CNN
	1    3500 7250
	0    1    1    0   
$EndComp
$Comp
L conn:RJ45 J3
U 1 1 5AAEAC75
P 6100 6900
F 0 "J3" H 6300 7400 50  0000 C CNN
F 1 "net" H 5950 7400 50  0000 C CNN
F 2 "psw-library:psw-rj45-190128" H 6100 6900 50  0001 C CNN
F 3 "" H 6100 6900 50  0001 C CNN
	1    6100 6900
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse nc1
U 1 1 5AAEAC7B
P 2650 7900
F 0 "nc1" V 2730 7900 50  0000 C CNN
F 1 "fuse1" V 2575 7900 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 2580 7900 50  0001 C CNN
F 3 "" H 2650 7900 50  0001 C CNN
	1    2650 7900
	0    1    1    0   
$EndComp
Text GLabel 6450 7450 3    60   Input ~ 0
2-gnd
Text GLabel 5800 7800 0    60   Input ~ 0
2-gnd
Text GLabel 5800 7900 0    60   Input ~ 0
2-gnd
Text GLabel 3200 7000 1    60   Input ~ 0
2-gnd
Text GLabel 2600 7200 0    60   Input ~ 0
2-out
Wire Wire Line
	3500 7100 3500 6950
Wire Wire Line
	3500 6950 3950 6950
Wire Wire Line
	3200 7550 3200 7400
Wire Wire Line
	3500 7400 3500 7550
Connection ~ 3500 7550
Connection ~ 3950 6950
Text GLabel 3000 5550 0    60   Input ~ 0
2-5v
Text GLabel 3000 5650 0    60   Input ~ 0
2-12v
Text GLabel 5800 8500 0    60   Input ~ 0
2-r-out
Text GLabel 4250 6950 1    60   Input ~ 0
2-r-out1
Text GLabel 4450 6950 1    60   Input ~ 0
2-r-out2
Text GLabel 3000 5850 0    60   Input ~ 0
2-gnd
Text GLabel 5800 8400 0    60   Input ~ 0
2-gnd
$Comp
L conn:Conn_01x02_Male J1-1
U 1 1 5AAEACE0
P 6000 8500
F 0 "J1-1" H 6000 8600 50  0000 C CNN
F 1 "power" H 6000 8300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6000 8500 50  0001 C CNN
F 3 "" H 6000 8500 50  0001 C CNN
	1    6000 8500
	-1   0    0    1   
$EndComp
Text GLabel 2500 7900 0    60   Input ~ 0
2-r-out1
Text GLabel 2500 8150 0    60   Input ~ 0
2-r-out2
Text GLabel 2800 7900 2    60   Input ~ 0
2-r-out
$Comp
L Device:Fuse no1
U 1 1 5AAEACE9
P 2650 8150
F 0 "no1" V 2730 8150 50  0000 C CNN
F 1 "fuse2" V 2575 8150 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 2580 8150 50  0001 C CNN
F 3 "" H 2650 8150 50  0001 C CNN
	1    2650 8150
	0    1    1    0   
$EndComp
Text GLabel 2800 8150 2    60   Input ~ 0
2-r-out
Text GLabel 3000 5750 0    60   Input ~ 0
2-gnd
Text GLabel 3000 5950 0    60   Input ~ 0
2-out
Text GLabel 5800 8000 0    60   Input ~ 0
2-r-out
Wire Notes Line
	1350 5350 8450 5350
Wire Notes Line
	8450 5350 8450 9250
Wire Notes Line
	8450 9250 1350 9250
Wire Notes Line
	1350 9250 1350 5350
Text Notes 1500 5600 0    118  ~ 24
power\n
Wire Wire Line
	3200 7550 3950 7550
Text GLabel 3500 5850 2    60   Input ~ 0
2-gnd
Text GLabel 3500 5750 2    60   Input ~ 0
2-gnd
Text GLabel 3500 5650 2    60   Input ~ 0
2-12v
Text GLabel 3500 5550 2    60   Input ~ 0
2-12v
NoConn ~ 3500 5950
Text GLabel 4150 8100 3    60   Input ~ 0
2-5v
Text GLabel 4250 8100 3    60   Input ~ 0
2-12v
$Comp
L Device:R input-5v1
U 1 1 5AAED30E
P 4150 7950
F 0 "input-5v1" V 4230 7950 50  0000 C CNN
F 1 "R" V 4150 7950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4080 7950 50  0001 C CNN
F 3 "" H 4150 7950 50  0001 C CNN
	1    4150 7950
	-1   0    0    1   
$EndComp
$Comp
L Device:R input12v1
U 1 1 5AAED3BA
P 4250 7950
F 0 "input12v1" V 4330 7950 50  0000 C CNN
F 1 "R" V 4250 7950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4180 7950 50  0001 C CNN
F 3 "" H 4250 7950 50  0001 C CNN
	1    4250 7950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 7800 4250 7800
Wire Wire Line
	4250 7550 4350 7550
Wire Wire Line
	4250 7800 4250 7550
Connection ~ 4250 7800
Text GLabel 5650 6550 0    60   Input ~ 0
2-r-out
Text GLabel 5650 6650 0    60   Input ~ 0
2-r-out
Text GLabel 5650 7150 0    60   Input ~ 0
2-r-out
Text GLabel 5650 7250 0    60   Input ~ 0
2-r-out
Text GLabel 5650 7050 0    60   Input ~ 0
2-gnd
Text GLabel 5650 6950 0    60   Input ~ 0
2-gnd
Text GLabel 5650 6850 0    60   Input ~ 0
2-gnd
Text GLabel 5650 6750 0    60   Input ~ 0
2-gnd
$Comp
L relays:SANYOU_SRD_Form_C K3
U 1 1 5AAF2F40
P 5200 12450
F 0 "K3" H 5650 12600 50  0000 L CNN
F 1 "relay" H 5650 12500 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 6650 12400 50  0001 C CNN
F 3 "" H 5200 12450 50  0001 C CNN
	1    5200 12450
	1    0    0    -1  
$EndComp
$Comp
L transistors:2N3904 Q3
U 1 1 5AAF2F4C
P 3400 12400
F 0 "Q3" H 3600 12475 50  0000 L CNN
F 1 "T" H 3600 12400 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 3600 12325 50  0001 L CIN
F 3 "" H 3400 12400 50  0001 L CNN
	1    3400 12400
	1    0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5AAF2F52
P 3050 12400
F 0 "R5" V 3130 12400 50  0000 C CNN
F 1 "R" V 3050 12400 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 2980 12400 50  0001 C CNN
F 3 "" H 3050 12400 50  0001 C CNN
	1    3050 12400
	0    1    1    0   
$EndComp
$Comp
L Device:D D2
U 1 1 5AAF2F58
P 4550 12450
F 0 "D2" H 4550 12550 50  0000 C CNN
F 1 "D" H 4550 12350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 4550 12450 50  0001 C CNN
F 3 "" H 4550 12450 50  0001 C CNN
	1    4550 12450
	0    1    1    0   
$EndComp
$Comp
L opto:PC817 U2
U 1 1 5AAF2F5E
P 5300 10800
F 0 "U2" H 5100 11000 50  0000 L CNN
F 1 "U" H 5300 11000 50  0000 L CNN
F 2 "psw-library:psw-optocoupler" H 5100 10600 50  0001 L CIN
F 3 "" H 5300 10800 50  0001 L CNN
	1    5300 10800
	-1   0    0    1   
$EndComp
$Comp
L conn:RJ45 J7
U 1 1 5AAF2F64
P 7650 11350
F 0 "J7" H 7850 11850 50  0000 C CNN
F 1 "net" H 7500 11850 50  0000 C CNN
F 2 "psw-library:psw-rj45-190128" H 7650 11350 50  0001 C CNN
F 3 "" H 7650 11350 50  0001 C CNN
	1    7650 11350
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F5
U 1 1 5AAF2F6A
P 6250 12800
F 0 "F5" V 6330 12800 50  0000 C CNN
F 1 "fuse1" V 6175 12800 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 6180 12800 50  0001 C CNN
F 3 "" H 6250 12800 50  0001 C CNN
	1    6250 12800
	0    1    1    0   
$EndComp
$Comp
L Device:R R2-1
U 1 1 5AAF2F75
P 5750 10900
F 0 "R2-1" V 5830 10900 50  0000 C CNN
F 1 "R" V 5750 10900 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 5680 10900 50  0001 C CNN
F 3 "" H 5750 10900 50  0001 C CNN
	1    5750 10900
	0    1    1    0   
$EndComp
Text GLabel 7200 11300 0    60   Input ~ 0
3-gnd
Text GLabel 5000 10900 0    60   Input ~ 0
3-5v
$Comp
L Device:R R1-1
U 1 1 5AAF2F7F
P 4900 10500
F 0 "R1-1" V 4980 10500 50  0000 C CNN
F 1 "R" V 4900 10500 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4830 10500 50  0001 C CNN
F 3 "" H 4900 10500 50  0001 C CNN
	1    4900 10500
	-1   0    0    1   
$EndComp
Text GLabel 5400 12950 0    60   Input ~ 0
3-12v
Text GLabel 4500 10700 0    60   Input ~ 0
3-in
Wire Wire Line
	4550 12300 4550 12150
Wire Wire Line
	4550 12150 5000 12150
Wire Wire Line
	3500 12750 5000 12750
Wire Wire Line
	3500 12750 3500 12600
Wire Wire Line
	4550 12750 4550 12600
Connection ~ 4550 12750
Wire Wire Line
	5400 12950 5400 12750
Wire Wire Line
	4500 10700 5000 10700
Wire Wire Line
	4900 10700 4900 10650
Connection ~ 4900 10700
Wire Wire Line
	5900 10900 7050 10900
Connection ~ 5000 12150
Text GLabel 3050 10600 0    60   Input ~ 0
3-5v
Text GLabel 5300 12150 1    60   Input ~ 0
3-r-out1
Text GLabel 5500 12150 1    60   Input ~ 0
3-r-out2
Text GLabel 6100 12800 0    60   Input ~ 0
3-r-out1
Text GLabel 6100 13050 0    60   Input ~ 0
3-r-out2
Text GLabel 6400 12800 2    60   Input ~ 0
3-r-out
$Comp
L Device:Fuse F6
U 1 1 5AAF2FD8
P 6250 13050
F 0 "F6" V 6330 13050 50  0000 C CNN
F 1 "fuse2" V 6175 13050 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 6180 13050 50  0001 C CNN
F 3 "" H 6250 13050 50  0001 C CNN
	1    6250 13050
	0    1    1    0   
$EndComp
Text GLabel 6400 13050 2    60   Input ~ 0
3-r-out
Wire Wire Line
	7050 10900 7050 11500
Wire Wire Line
	7050 11200 7200 11200
Text GLabel 3050 11000 0    60   Input ~ 0
3-out
Text GLabel 3550 11000 2    60   Input ~ 0
3-in
Text GLabel 7200 11000 0    60   Input ~ 0
3-r-out
Text GLabel 7200 11100 0    60   Input ~ 0
3-r-out
Wire Notes Line
	1350 9500 8450 9500
Wire Notes Line
	8450 9500 8450 13400
Wire Notes Line
	8450 13400 1350 13400
Wire Notes Line
	1350 13400 1350 9500
Text Notes 1500 9750 0    118  ~ 24
alarm
Text GLabel 7200 11400 0    60   Input ~ 0
3-gnd
Text GLabel 8000 11900 3    60   Input ~ 0
3-gnd
Text GLabel 3050 10900 0    60   Input ~ 0
3-gnd
Text GLabel 3050 10800 0    60   Input ~ 0
3-gnd
Text GLabel 3550 10800 2    60   Input ~ 0
3-gnd
Text GLabel 3550 10900 2    60   Input ~ 0
3-gnd
Text GLabel 5600 10700 2    60   Input ~ 0
3-gnd
Text GLabel 4900 10350 1    60   Input ~ 0
3-gnd
Text GLabel 3500 12200 1    60   Input ~ 0
3-gnd
Text GLabel 2900 12400 0    60   Input ~ 0
3-out
Text GLabel 3050 10700 0    60   Input ~ 0
3-12v
Text GLabel 3550 10700 2    60   Input ~ 0
3-12v
Text GLabel 3550 10600 2    60   Input ~ 0
3-12v
Text GLabel 3950 6650 1    60   Input ~ 0
2-5v
Text GLabel 3850 6650 1    60   Input ~ 0
2-12v
$Comp
L Device:R 5v1
U 1 1 5AAFB93A
P 3950 6800
F 0 "5v1" V 4150 6800 50  0000 C CNN
F 1 "R" V 3950 6800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3880 6800 50  0001 C CNN
F 3 "" H 3950 6800 50  0001 C CNN
	1    3950 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:R 12v1
U 1 1 5AAFB940
P 3850 6800
F 0 "12v1" V 3700 6800 50  0000 C CNN
F 1 "R" V 3850 6800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3780 6800 50  0001 C CNN
F 3 "" H 3850 6800 50  0001 C CNN
	1    3850 6800
	1    0    0    -1  
$EndComp
Connection ~ 3850 6950
Text GLabel 5000 11850 1    60   Input ~ 0
3-5v
Text GLabel 4900 11850 1    60   Input ~ 0
3-12v
$Comp
L Device:R R9
U 1 1 5AAFD850
P 5000 12000
F 0 "R9" V 5080 12000 50  0000 C CNN
F 1 "R" V 5000 12000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4930 12000 50  0001 C CNN
F 3 "" H 5000 12000 50  0001 C CNN
	1    5000 12000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5AAFD856
P 4900 12000
F 0 "R8" V 4980 12000 50  0000 C CNN
F 1 "R" V 4900 12000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4830 12000 50  0001 C CNN
F 3 "" H 4900 12000 50  0001 C CNN
	1    4900 12000
	1    0    0    -1  
$EndComp
Connection ~ 4900 12150
Wire Wire Line
	7050 11500 7200 11500
Connection ~ 7050 11200
$Comp
L relays:SANYOU_SRD_Form_C K5
U 1 1 5AAF87A3
P 5200 16750
F 0 "K5" H 5650 16900 50  0000 L CNN
F 1 "relay" H 5650 16800 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 6650 16700 50  0001 C CNN
F 3 "" H 5200 16750 50  0001 C CNN
	1    5200 16750
	1    0    0    -1  
$EndComp
$Comp
L transistors:2N3904 Q5
U 1 1 5AAF87A9
P 4150 16700
F 0 "Q5" H 4350 16775 50  0000 L CNN
F 1 "T" H 4350 16700 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 4350 16625 50  0001 L CIN
F 3 "" H 4150 16700 50  0001 L CNN
	1    4150 16700
	1    0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5AAF87AF
P 3800 16700
F 0 "R11" V 3880 16700 50  0000 C CNN
F 1 "R" V 3800 16700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3730 16700 50  0001 C CNN
F 3 "" H 3800 16700 50  0001 C CNN
	1    3800 16700
	0    1    1    0   
$EndComp
$Comp
L Device:D D4
U 1 1 5AAF87B5
P 4550 16750
F 0 "D4" H 4550 16850 50  0000 C CNN
F 1 "D" H 4550 16650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 4550 16750 50  0001 C CNN
F 3 "" H 4550 16750 50  0001 C CNN
	1    4550 16750
	0    1    1    0   
$EndComp
$Comp
L conn:RJ45 J9
U 1 1 5AAF87C1
P 7650 15650
F 0 "J9" H 7850 16150 50  0000 C CNN
F 1 "net" H 7500 16150 50  0000 C CNN
F 2 "psw-library:psw-rj45-190128" H 7650 15650 50  0001 C CNN
F 3 "" H 7650 15650 50  0001 C CNN
	1    7650 15650
	0    1    1    0   
$EndComp
Text GLabel 5400 17050 3    60   Input ~ 0
4-12v
Wire Wire Line
	4550 16600 4550 16450
Wire Wire Line
	4550 16450 5000 16450
Wire Wire Line
	4250 17050 4250 16900
Wire Wire Line
	4550 16900 4550 17050
Connection ~ 4550 17050
Connection ~ 5000 16450
Text GLabel 1850 14250 0    60   Input ~ 0
4-5v
Text GLabel 6350 16850 0    60   Input ~ 0
4-r-down-r
$Comp
L Device:Fuse F8
U 1 1 5AAF87EF
P 6500 16850
F 0 "F8" V 6580 16850 50  0000 C CNN
F 1 "fuse2" V 6425 16850 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 6430 16850 50  0001 C CNN
F 3 "" H 6500 16850 50  0001 C CNN
	1    6500 16850
	0    1    1    0   
$EndComp
Text GLabel 6650 16850 2    60   Input ~ 0
4-r-down
Text GLabel 1850 14650 0    60   Input ~ 0
4-up
Text GLabel 2350 14650 2    60   Input ~ 0
4-down
Wire Notes Line
	1350 13800 8450 13800
Wire Notes Line
	8450 13800 8450 17700
Wire Notes Line
	8450 17700 1350 17700
Wire Notes Line
	1350 17700 1350 13800
Text Notes 1500 14050 0    118  ~ 24
zaluzie
Text GLabel 2350 14450 2    60   Input ~ 0
4-gnd
Text GLabel 4250 16500 1    60   Input ~ 0
4-gnd
Text GLabel 3650 16700 0    60   Input ~ 0
4-down
Text GLabel 2350 14250 2    60   Input ~ 0
4-12v
$Comp
L Device:R R15
U 1 1 5AAF8819
P 5000 16300
F 0 "R15" V 5080 16300 50  0000 C CNN
F 1 "R" V 5000 16300 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4930 16300 50  0001 C CNN
F 3 "" H 5000 16300 50  0001 C CNN
	1    5000 16300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5AAF881F
P 4900 16300
F 0 "R13" V 4980 16300 50  0000 C CNN
F 1 "R" V 4900 16300 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4830 16300 50  0001 C CNN
F 3 "" H 4900 16300 50  0001 C CNN
	1    4900 16300
	1    0    0    -1  
$EndComp
Connection ~ 4900 16450
Wire Wire Line
	4250 17050 5000 17050
$Comp
L relays:SANYOU_SRD_Form_C K4
U 1 1 5AAFE405
P 5200 14900
F 0 "K4" H 5650 15050 50  0000 L CNN
F 1 "relay" H 5650 14950 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 6650 14850 50  0001 C CNN
F 3 "" H 5200 14900 50  0001 C CNN
	1    5200 14900
	1    0    0    -1  
$EndComp
$Comp
L transistors:2N3904 Q4
U 1 1 5AAFE40B
P 4150 14850
F 0 "Q4" H 4350 14925 50  0000 L CNN
F 1 "T" H 4350 14850 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 4350 14775 50  0001 L CIN
F 3 "" H 4150 14850 50  0001 L CNN
	1    4150 14850
	1    0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5AAFE411
P 3800 14850
F 0 "R10" V 3880 14850 50  0000 C CNN
F 1 "R" V 3800 14850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3730 14850 50  0001 C CNN
F 3 "" H 3800 14850 50  0001 C CNN
	1    3800 14850
	0    1    1    0   
$EndComp
$Comp
L Device:D D3
U 1 1 5AAFE417
P 4550 14900
F 0 "D3" H 4550 15000 50  0000 C CNN
F 1 "D" H 4550 14800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 4550 14900 50  0001 C CNN
F 3 "" H 4550 14900 50  0001 C CNN
	1    4550 14900
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 14750 4550 14600
Wire Wire Line
	4550 14600 5000 14600
Wire Wire Line
	4250 15200 4250 15050
Wire Wire Line
	4550 15050 4550 15200
Connection ~ 4550 15200
Connection ~ 5000 14600
Text GLabel 5300 14600 1    60   Input ~ 0
4-r-up-r
$Comp
L Device:R R14
U 1 1 5AAFE42A
P 5000 14450
F 0 "R14" V 5080 14450 50  0000 C CNN
F 1 "R" V 5000 14450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4930 14450 50  0001 C CNN
F 3 "" H 5000 14450 50  0001 C CNN
	1    5000 14450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5AAFE430
P 4900 14450
F 0 "R12" V 4980 14450 50  0000 C CNN
F 1 "R" V 4900 14450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4830 14450 50  0001 C CNN
F 3 "" H 4900 14450 50  0001 C CNN
	1    4900 14450
	1    0    0    -1  
$EndComp
Connection ~ 4900 14600
Wire Wire Line
	4250 15200 5000 15200
Text GLabel 2350 14550 2    60   Input ~ 0
4-gnd
Text GLabel 1850 14550 0    60   Input ~ 0
4-gnd
Text GLabel 1850 14450 0    60   Input ~ 0
4-gnd
Text GLabel 2350 14350 2    60   Input ~ 0
4-12v
Text GLabel 1850 14350 0    60   Input ~ 0
4-12v
Text GLabel 4250 14650 1    60   Input ~ 0
4-gnd
Text GLabel 3650 14850 0    60   Input ~ 0
4-up
Text GLabel 4900 14300 1    60   Input ~ 0
4-12v
Text GLabel 5000 14300 1    60   Input ~ 0
4-5v
Text GLabel 4900 16150 1    60   Input ~ 0
4-12v
Text GLabel 5000 16150 1    60   Input ~ 0
4-5v
Text GLabel 5500 16450 1    60   Input ~ 0
4-r-bypass
Text GLabel 8000 16200 3    60   Input ~ 0
4-gnd
Text GLabel 5300 16450 1    60   Input ~ 0
4-r-down-r
Text GLabel 5400 15200 3    60   Input ~ 0
4-r-bypass
Text GLabel 7200 16000 0    60   Input ~ 0
4-r-down
Text GLabel 7200 15900 0    60   Input ~ 0
4-r-down
NoConn ~ 5500 14600
Text GLabel 6350 16500 0    60   Input ~ 0
4-r-up-r
$Comp
L Device:Fuse F7
U 1 1 5AAFA794
P 6500 16500
F 0 "F7" V 6580 16500 50  0000 C CNN
F 1 "fuse2" V 6425 16500 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 6430 16500 50  0001 C CNN
F 3 "" H 6500 16500 50  0001 C CNN
	1    6500 16500
	0    1    1    0   
$EndComp
Text GLabel 6650 16500 2    60   Input ~ 0
4-r-up
Text GLabel 7200 15300 0    60   Input ~ 0
4-r-up
Text GLabel 7200 15400 0    60   Input ~ 0
4-r-up
Text GLabel 7200 15500 0    60   Input ~ 0
4-gnd
Text GLabel 7200 15600 0    60   Input ~ 0
4-gnd
Text GLabel 7200 15700 0    60   Input ~ 0
4-gnd
Text GLabel 7200 15800 0    60   Input ~ 0
4-gnd
$Comp
L relays:SANYOU_SRD_Form_C K6
U 1 1 5AB046DE
P 12900 3450
F 0 "K6" H 13350 3600 50  0000 L CNN
F 1 "relay" H 13350 3500 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 14350 3400 50  0001 C CNN
F 3 "" H 12900 3450 50  0001 C CNN
	1    12900 3450
	1    0    0    -1  
$EndComp
$Comp
L transistors:2N3904 Q6
U 1 1 5AB046EA
P 11850 3400
F 0 "Q6" H 12050 3475 50  0000 L CNN
F 1 "T" H 12050 3400 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 12050 3325 50  0001 L CIN
F 3 "" H 11850 3400 50  0001 L CNN
	1    11850 3400
	1    0    0    1   
$EndComp
$Comp
L Device:R R16
U 1 1 5AB046F0
P 11950 3050
F 0 "R16" V 12030 3050 50  0000 C CNN
F 1 "R" V 11950 3050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 11880 3050 50  0001 C CNN
F 3 "" H 11950 3050 50  0001 C CNN
	1    11950 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:D D5
U 1 1 5AB046F6
P 12250 3450
F 0 "D5" H 12250 3550 50  0000 C CNN
F 1 "D" H 12250 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 12250 3450 50  0001 C CNN
F 3 "" H 12250 3450 50  0001 C CNN
	1    12250 3450
	0    1    1    0   
$EndComp
$Comp
L conn:RJ45 J11
U 1 1 5AB04702
P 14850 1950
F 0 "J11" H 15050 2450 50  0000 C CNN
F 1 "net" H 14700 2450 50  0000 C CNN
F 2 "psw-library:psw-rj45-190128" H 14850 1950 50  0001 C CNN
F 3 "" H 14850 1950 50  0001 C CNN
	1    14850 1950
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F9
U 1 1 5AB04708
P 14600 3050
F 0 "F9" V 14680 3050 50  0000 C CNN
F 1 "fuse1" V 14525 3050 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 14530 3050 50  0001 C CNN
F 3 "" H 14600 3050 50  0001 C CNN
	1    14600 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	12250 3300 12250 3150
Wire Wire Line
	12250 3150 12700 3150
Wire Wire Line
	11950 3750 11950 3600
Wire Wire Line
	12250 3600 12250 3750
Connection ~ 12250 3750
Connection ~ 12700 3150
Text GLabel 12850 1600 0    60   Input ~ 0
5-5v
Text GLabel 12850 1700 0    60   Input ~ 0
5-12v
Text GLabel 14400 1600 0    60   Input ~ 0
5-eth3-1
Text GLabel 14400 1700 0    60   Input ~ 0
5-eth3-2
Text GLabel 14400 1800 0    60   Input ~ 0
5-eth3-3
Text GLabel 14400 2100 0    60   Input ~ 0
5-eth3-4
Text GLabel 14450 3050 0    60   Input ~ 0
5-r-out1
Text GLabel 14450 3300 0    60   Input ~ 0
5-r-out2
$Comp
L Device:Fuse F10
U 1 1 5AB04776
P 14600 3300
F 0 "F10" V 14680 3300 50  0000 C CNN
F 1 "fuse2" V 14525 3300 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 14530 3300 50  0001 C CNN
F 3 "" H 14600 3300 50  0001 C CNN
	1    14600 3300
	0    1    1    0   
$EndComp
Text GLabel 12850 2000 0    60   Input ~ 0
5-out
Text GLabel 14400 2300 0    60   Input ~ 0
5-r-out
Text GLabel 14400 2200 0    60   Input ~ 0
5-r-out
Wire Notes Line
	9100 1250 16200 1250
Wire Notes Line
	16200 1250 16200 13400
Wire Notes Line
	9100 1250 9100 13400
Text Notes 9250 1500 0    118  ~ 24
universal
Wire Notes Line
	9100 13400 16200 13400
NoConn ~ 13350 2000
Wire Wire Line
	11950 3750 12700 3750
Text GLabel 12850 1800 0    60   Input ~ 0
5-gnd
Text GLabel 13350 1700 2    60   Input ~ 0
5-12v
Text GLabel 13350 1600 2    60   Input ~ 0
5-12v
Text GLabel 12850 1900 0    60   Input ~ 0
5-gnd
Text GLabel 13350 1800 2    60   Input ~ 0
5-gnd
Text GLabel 13350 1900 2    60   Input ~ 0
5-gnd
Text GLabel 14400 1900 0    60   Input ~ 0
5-gnd
Text GLabel 14400 2000 0    60   Input ~ 0
5-gnd
Text GLabel 15200 2500 3    60   Input ~ 0
5-gnd
Text GLabel 13100 3750 3    60   Input ~ 0
5-12v
Text GLabel 11650 3400 0    60   Input ~ 0
5-gnd
Text GLabel 12550 2850 1    60   Input ~ 0
5-5v
Text GLabel 12700 2850 1    60   Input ~ 0
5-12v
$Comp
L Device:R R18
U 1 1 5AB131A4
P 12700 3000
F 0 "R18" V 12780 3000 50  0000 C CNN
F 1 "R" V 12700 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12630 3000 50  0001 C CNN
F 3 "" H 12700 3000 50  0001 C CNN
	1    12700 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R17
U 1 1 5AB13442
P 12550 3000
F 0 "R17" V 12630 3000 50  0000 C CNN
F 1 "R" V 12550 3000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12480 3000 50  0001 C CNN
F 3 "" H 12550 3000 50  0001 C CNN
	1    12550 3000
	-1   0    0    1   
$EndComp
Connection ~ 12550 3150
Text GLabel 11950 2900 1    60   Input ~ 0
5-out
Text GLabel 13200 3150 1    60   Input ~ 0
5-r-out2
Text GLabel 13000 3150 1    60   Input ~ 0
5-r-out1
Text GLabel 14750 3050 2    60   Input ~ 0
5-r-out
Text GLabel 14750 3300 2    60   Input ~ 0
5-r-out
$Comp
L relays:SANYOU_SRD_Form_C K2
U 1 1 5AB285A0
P 13150 6450
F 0 "K2" H 13600 6600 50  0000 L CNN
F 1 "relay" H 13600 6500 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 14600 6400 50  0001 C CNN
F 3 "" H 13150 6450 50  0001 C CNN
	1    13150 6450
	1    0    0    -1  
$EndComp
$Comp
L transistors:2N3904 Q2
U 1 1 5AB285A6
P 12100 6400
F 0 "Q2" H 12300 6475 50  0000 L CNN
F 1 "T" H 12300 6400 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 12300 6325 50  0001 L CIN
F 3 "" H 12100 6400 50  0001 L CNN
	1    12100 6400
	1    0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5AB285AC
P 12200 6050
F 0 "R2" V 12280 6050 50  0000 C CNN
F 1 "R" V 12200 6050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12130 6050 50  0001 C CNN
F 3 "" H 12200 6050 50  0001 C CNN
	1    12200 6050
	-1   0    0    1   
$EndComp
$Comp
L Device:D D1
U 1 1 5AB285B2
P 12500 6450
F 0 "D1" H 12500 6550 50  0000 C CNN
F 1 "D" H 12500 6350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 12500 6450 50  0001 C CNN
F 3 "" H 12500 6450 50  0001 C CNN
	1    12500 6450
	0    1    1    0   
$EndComp
$Comp
L conn:RJ45 J12
U 1 1 5AB285B8
P 15100 4950
F 0 "J12" H 15300 5450 50  0000 C CNN
F 1 "net" H 14950 5450 50  0000 C CNN
F 2 "psw-library:psw-rj45-190128" H 15100 4950 50  0001 C CNN
F 3 "" H 15100 4950 50  0001 C CNN
	1    15100 4950
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5AB285BE
P 14850 6050
F 0 "F1" V 14930 6050 50  0000 C CNN
F 1 "fuse1" V 14775 6050 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 14780 6050 50  0001 C CNN
F 3 "" H 14850 6050 50  0001 C CNN
	1    14850 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	12500 6300 12500 6150
Wire Wire Line
	12500 6150 12950 6150
Wire Wire Line
	12200 6750 12200 6600
Wire Wire Line
	12500 6600 12500 6750
Connection ~ 12500 6750
Connection ~ 12950 6150
Text GLabel 13100 4600 0    60   Input ~ 0
6-5v
Text GLabel 13100 4700 0    60   Input ~ 0
6-12v
Text GLabel 14650 4600 0    60   Input ~ 0
6-eth3-1
Text GLabel 14650 4700 0    60   Input ~ 0
6-eth3-2
Text GLabel 14650 4800 0    60   Input ~ 0
6-eth3-3
Text GLabel 14650 5100 0    60   Input ~ 0
6-eth3-4
Text GLabel 14700 6050 0    60   Input ~ 0
6-r-out1
Text GLabel 14700 6300 0    60   Input ~ 0
6-r-out2
$Comp
L Device:Fuse F4
U 1 1 5AB285D2
P 14850 6300
F 0 "F4" V 14930 6300 50  0000 C CNN
F 1 "fuse2" V 14775 6300 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 14780 6300 50  0001 C CNN
F 3 "" H 14850 6300 50  0001 C CNN
	1    14850 6300
	0    1    1    0   
$EndComp
Text GLabel 13100 5000 0    60   Input ~ 0
6-out
Text GLabel 14650 5300 0    60   Input ~ 0
6-r-out
Text GLabel 14650 5200 0    60   Input ~ 0
6-r-out
NoConn ~ 13600 5000
Wire Wire Line
	12200 6750 12950 6750
Text GLabel 13600 4800 2    60   Input ~ 0
6-gnd
$Comp
L Device:R R22
U 1 1 5AB285F6
P 12950 6000
F 0 "R22" V 13030 6000 50  0000 C CNN
F 1 "R" V 12950 6000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12880 6000 50  0001 C CNN
F 3 "" H 12950 6000 50  0001 C CNN
	1    12950 6000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R20
U 1 1 5AB285FC
P 12800 6000
F 0 "R20" V 12880 6000 50  0000 C CNN
F 1 "R" V 12800 6000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12730 6000 50  0001 C CNN
F 3 "" H 12800 6000 50  0001 C CNN
	1    12800 6000
	-1   0    0    1   
$EndComp
Connection ~ 12800 6150
Text GLabel 13450 6150 1    60   Input ~ 0
6-r-out2
Text GLabel 13250 6150 1    60   Input ~ 0
6-r-out1
Text GLabel 15000 6050 2    60   Input ~ 0
6-r-out
Text GLabel 15000 6300 2    60   Input ~ 0
6-r-out
$Comp
L relays:SANYOU_SRD_Form_C K7
U 1 1 5AB2960C
P 13150 9300
F 0 "K7" H 13600 9450 50  0000 L CNN
F 1 "relay" H 13600 9350 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 14600 9250 50  0001 C CNN
F 3 "" H 13150 9300 50  0001 C CNN
	1    13150 9300
	1    0    0    -1  
$EndComp
$Comp
L transistors:2N3904 Q7
U 1 1 5AB29612
P 12100 9250
F 0 "Q7" H 12300 9325 50  0000 L CNN
F 1 "T" H 12300 9250 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 12300 9175 50  0001 L CIN
F 3 "" H 12100 9250 50  0001 L CNN
	1    12100 9250
	1    0    0    1   
$EndComp
$Comp
L Device:R R19
U 1 1 5AB29618
P 12200 8900
F 0 "R19" V 12280 8900 50  0000 C CNN
F 1 "R" V 12200 8900 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12130 8900 50  0001 C CNN
F 3 "" H 12200 8900 50  0001 C CNN
	1    12200 8900
	-1   0    0    1   
$EndComp
$Comp
L Device:D D6
U 1 1 5AB2961E
P 12500 9300
F 0 "D6" H 12500 9400 50  0000 C CNN
F 1 "D" H 12500 9200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 12500 9300 50  0001 C CNN
F 3 "" H 12500 9300 50  0001 C CNN
	1    12500 9300
	0    1    1    0   
$EndComp
$Comp
L conn:RJ45 J13
U 1 1 5AB29624
P 15100 7800
F 0 "J13" H 15300 8300 50  0000 C CNN
F 1 "net" H 14950 8300 50  0000 C CNN
F 2 "psw-library:psw-rj45-190128" H 15100 7800 50  0001 C CNN
F 3 "" H 15100 7800 50  0001 C CNN
	1    15100 7800
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F11
U 1 1 5AB2962A
P 14850 8900
F 0 "F11" V 14930 8900 50  0000 C CNN
F 1 "fuse1" V 14775 8900 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 14780 8900 50  0001 C CNN
F 3 "" H 14850 8900 50  0001 C CNN
	1    14850 8900
	0    1    1    0   
$EndComp
Wire Wire Line
	12500 9150 12500 9000
Wire Wire Line
	12500 9000 12950 9000
Wire Wire Line
	12200 9600 12200 9450
Wire Wire Line
	12500 9450 12500 9600
Connection ~ 12500 9600
Connection ~ 12950 9000
Text GLabel 13100 7450 0    60   Input ~ 0
7-5v
Text GLabel 13100 7550 0    60   Input ~ 0
7-12v
Text GLabel 14650 7450 0    60   Input ~ 0
7-eth3-1
Text GLabel 14650 7550 0    60   Input ~ 0
7-eth3-2
Text GLabel 14650 7650 0    60   Input ~ 0
7-eth3-3
Text GLabel 14650 7950 0    60   Input ~ 0
7-eth3-4
Text GLabel 14700 8900 0    60   Input ~ 0
7-r-out1
Text GLabel 14700 9150 0    60   Input ~ 0
7-r-out2
$Comp
L Device:Fuse F12
U 1 1 5AB2963E
P 14850 9150
F 0 "F12" V 14930 9150 50  0000 C CNN
F 1 "fuse2" V 14775 9150 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 14780 9150 50  0001 C CNN
F 3 "" H 14850 9150 50  0001 C CNN
	1    14850 9150
	0    1    1    0   
$EndComp
Text GLabel 13100 7850 0    60   Input ~ 0
7-out
Text GLabel 14650 8150 0    60   Input ~ 0
7-r-out
Text GLabel 14650 8050 0    60   Input ~ 0
7-r-out
NoConn ~ 13600 7850
Wire Wire Line
	12200 9600 12950 9600
Text GLabel 13100 7650 0    60   Input ~ 0
7-gnd
$Comp
L Device:R R23
U 1 1 5AB29662
P 12950 8850
F 0 "R23" V 13030 8850 50  0000 C CNN
F 1 "R" V 12950 8850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12880 8850 50  0001 C CNN
F 3 "" H 12950 8850 50  0001 C CNN
	1    12950 8850
	-1   0    0    1   
$EndComp
$Comp
L Device:R R21
U 1 1 5AB29668
P 12800 8850
F 0 "R21" V 12880 8850 50  0000 C CNN
F 1 "R" V 12800 8850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12730 8850 50  0001 C CNN
F 3 "" H 12800 8850 50  0001 C CNN
	1    12800 8850
	-1   0    0    1   
$EndComp
Connection ~ 12800 9000
Text GLabel 13450 9000 1    60   Input ~ 0
7-r-out2
Text GLabel 13250 9000 1    60   Input ~ 0
7-r-out1
Text GLabel 15000 8900 2    60   Input ~ 0
7-r-out
Text GLabel 15000 9150 2    60   Input ~ 0
7-r-out
Text GLabel 13600 4700 2    60   Input ~ 0
6-12v
Text GLabel 13600 4600 2    60   Input ~ 0
6-12v
Text GLabel 13600 4900 2    60   Input ~ 0
6-gnd
Text GLabel 13100 4900 0    60   Input ~ 0
6-gnd
Text GLabel 13100 4800 0    60   Input ~ 0
6-gnd
Text GLabel 15450 5500 3    60   Input ~ 0
6-gnd
Text GLabel 14650 5000 0    60   Input ~ 0
6-gnd
Text GLabel 14650 4900 0    60   Input ~ 0
6-gnd
Text GLabel 11900 6400 0    60   Input ~ 0
6-gnd
Text GLabel 12800 5850 1    60   Input ~ 0
6-5v
Text GLabel 12950 5850 1    60   Input ~ 0
6-12v
Text GLabel 12200 5900 1    60   Input ~ 0
6-out
Text GLabel 13350 6750 3    60   Input ~ 0
6-12v
Text GLabel 13600 7550 2    60   Input ~ 0
7-12v
Text GLabel 13600 7450 2    60   Input ~ 0
7-12v
Text GLabel 13100 7750 0    60   Input ~ 0
7-gnd
Text GLabel 13600 7650 2    60   Input ~ 0
7-gnd
Text GLabel 13600 7750 2    60   Input ~ 0
7-gnd
Text GLabel 14650 7750 0    60   Input ~ 0
7-gnd
Text GLabel 14650 7850 0    60   Input ~ 0
7-gnd
Text GLabel 15450 8350 3    60   Input ~ 0
7-gnd
Text GLabel 11900 9250 0    60   Input ~ 0
7-gnd
Text GLabel 12200 8750 1    60   Input ~ 0
7-out
Text GLabel 12800 8700 1    60   Input ~ 0
7-5v
Text GLabel 12950 8700 1    60   Input ~ 0
7-12v
Text GLabel 13350 9600 3    60   Input ~ 0
7-12v
Text GLabel 10400 7100 2    60   Input ~ 0
5-eth3-1
Text GLabel 10400 7200 2    60   Input ~ 0
5-eth3-2
Text GLabel 9900 7100 0    60   Input ~ 0
5-eth3-3
Text GLabel 9900 7200 0    60   Input ~ 0
5-eth3-4
Text GLabel 9900 6400 0    60   Input ~ 0
5-gnd
Text GLabel 10400 6400 2    60   Input ~ 0
5-5v
Text GLabel 10400 6900 2    60   Input ~ 0
6-eth3-1
Text GLabel 10400 7000 2    60   Input ~ 0
6-eth3-2
Text GLabel 9900 6900 0    60   Input ~ 0
6-eth3-3
Text GLabel 9900 7000 0    60   Input ~ 0
6-eth3-4
Text GLabel 10400 6700 2    60   Input ~ 0
7-eth3-1
Text GLabel 10400 6800 2    60   Input ~ 0
7-eth3-2
Text GLabel 9900 6700 0    60   Input ~ 0
7-eth3-3
Text GLabel 9900 6800 0    60   Input ~ 0
7-eth3-4
$Comp
L relays:SANYOU_SRD_Form_C K8
U 1 1 5AB33D92
P 13000 12450
F 0 "K8" H 13450 12600 50  0000 L CNN
F 1 "relay" H 13450 12500 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 14450 12400 50  0001 C CNN
F 3 "" H 13000 12450 50  0001 C CNN
	1    13000 12450
	1    0    0    -1  
$EndComp
$Comp
L transistors:2N3904 Q8
U 1 1 5AB33D98
P 11950 12400
F 0 "Q8" H 12150 12475 50  0000 L CNN
F 1 "T" H 12150 12400 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 12150 12325 50  0001 L CIN
F 3 "" H 11950 12400 50  0001 L CNN
	1    11950 12400
	1    0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5AB33D9E
P 12050 12050
F 0 "R3" V 12130 12050 50  0000 C CNN
F 1 "R" V 12050 12050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 11980 12050 50  0001 C CNN
F 3 "" H 12050 12050 50  0001 C CNN
	1    12050 12050
	-1   0    0    1   
$EndComp
$Comp
L Device:D D7
U 1 1 5AB33DA4
P 12350 12450
F 0 "D7" H 12350 12550 50  0000 C CNN
F 1 "D" H 12350 12350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 12350 12450 50  0001 C CNN
F 3 "" H 12350 12450 50  0001 C CNN
	1    12350 12450
	0    1    1    0   
$EndComp
$Comp
L conn:RJ45 J16
U 1 1 5AB33DAA
P 14950 10950
F 0 "J16" H 15150 11450 50  0000 C CNN
F 1 "net" H 14800 11450 50  0000 C CNN
F 2 "psw-library:psw-rj45-190128" H 14950 10950 50  0001 C CNN
F 3 "" H 14950 10950 50  0001 C CNN
	1    14950 10950
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F2
U 1 1 5AB33DB0
P 14700 12050
F 0 "F2" V 14780 12050 50  0000 C CNN
F 1 "fuse1" V 14625 12050 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 14630 12050 50  0001 C CNN
F 3 "" H 14700 12050 50  0001 C CNN
	1    14700 12050
	0    1    1    0   
$EndComp
Wire Wire Line
	12350 12300 12350 12150
Wire Wire Line
	12350 12150 12800 12150
Wire Wire Line
	12050 12750 12050 12600
Wire Wire Line
	12350 12600 12350 12750
Connection ~ 12350 12750
Connection ~ 12800 12150
Text GLabel 12950 10600 0    60   Input ~ 0
8-5v
Text GLabel 12950 10700 0    60   Input ~ 0
8-12v
Text GLabel 14500 10600 0    60   Input ~ 0
8-eth3-1
Text GLabel 14500 10700 0    60   Input ~ 0
8-eth3-2
Text GLabel 14500 10800 0    60   Input ~ 0
8-eth3-3
Text GLabel 14500 11100 0    60   Input ~ 0
8-eth3-4
Text GLabel 14550 12050 0    60   Input ~ 0
8-r-out1
Text GLabel 14550 12300 0    60   Input ~ 0
8-r-out2
$Comp
L Device:Fuse F3
U 1 1 5AB33DC4
P 14700 12300
F 0 "F3" V 14780 12300 50  0000 C CNN
F 1 "fuse2" V 14625 12300 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 14630 12300 50  0001 C CNN
F 3 "" H 14700 12300 50  0001 C CNN
	1    14700 12300
	0    1    1    0   
$EndComp
Text GLabel 14500 11300 0    60   Input ~ 0
8-r-out
Text GLabel 14500 11200 0    60   Input ~ 0
8-r-out
NoConn ~ 13450 11000
Wire Wire Line
	12050 12750 12800 12750
$Comp
L Device:R R6
U 1 1 5AB33DD9
P 12800 12000
F 0 "R6" V 12880 12000 50  0000 C CNN
F 1 "R" V 12800 12000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12730 12000 50  0001 C CNN
F 3 "" H 12800 12000 50  0001 C CNN
	1    12800 12000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5AB33DDF
P 12650 12000
F 0 "R4" V 12730 12000 50  0000 C CNN
F 1 "R" V 12650 12000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12580 12000 50  0001 C CNN
F 3 "" H 12650 12000 50  0001 C CNN
	1    12650 12000
	-1   0    0    1   
$EndComp
Connection ~ 12650 12150
Text GLabel 13300 12150 1    60   Input ~ 0
8-r-out2
Text GLabel 13100 12150 1    60   Input ~ 0
8-r-out1
Text GLabel 14850 12050 2    60   Input ~ 0
8-r-out
Text GLabel 14850 12300 2    60   Input ~ 0
8-r-out
Text GLabel 11750 12400 0    60   Input ~ 0
8-gnd
Text GLabel 12050 11900 1    60   Input ~ 0
8-out
Text GLabel 12950 11000 0    60   Input ~ 0
8-out
Text GLabel 14500 10900 0    60   Input ~ 0
8-gnd
Text GLabel 14500 11000 0    60   Input ~ 0
8-gnd
Text GLabel 15300 11500 3    60   Input ~ 0
8-gnd
Text GLabel 13450 10900 2    60   Input ~ 0
8-gnd
Text GLabel 13450 10800 2    60   Input ~ 0
8-gnd
Text GLabel 12650 11850 1    60   Input ~ 0
8-5v
Text GLabel 13450 10700 2    60   Input ~ 0
8-12v
Text GLabel 13450 10600 2    60   Input ~ 0
8-12v
Text GLabel 13200 12750 3    60   Input ~ 0
8-12v
Text GLabel 12800 11850 1    60   Input ~ 0
8-12v
Text GLabel 12950 10900 0    60   Input ~ 0
8-gnd
Text GLabel 12950 10800 0    60   Input ~ 0
8-gnd
Text GLabel 10400 6500 2    60   Input ~ 0
8-eth3-1
Text GLabel 10400 6600 2    60   Input ~ 0
8-eth3-2
Text GLabel 9900 6500 0    60   Input ~ 0
8-eth3-3
Text GLabel 9900 6600 0    60   Input ~ 0
8-eth3-4
NoConn ~ 7200 11700
NoConn ~ 7200 11600
$Comp
L relays:SANYOU_SRD_Form_C K10
U 1 1 5ACC19A7
P 12950 16750
F 0 "K10" H 13400 16900 50  0000 L CNN
F 1 "relay" H 13400 16800 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 14400 16700 50  0001 C CNN
F 3 "" H 12950 16750 50  0001 C CNN
	1    12950 16750
	1    0    0    -1  
$EndComp
$Comp
L transistors:2N3904 Q10
U 1 1 5ACC19AD
P 11150 16700
F 0 "Q10" H 11350 16775 50  0000 L CNN
F 1 "T" H 11350 16700 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 11350 16625 50  0001 L CIN
F 3 "" H 11150 16700 50  0001 L CNN
	1    11150 16700
	1    0    0    1   
$EndComp
$Comp
L Device:R R24
U 1 1 5ACC19B3
P 10800 16700
F 0 "R24" V 10880 16700 50  0000 C CNN
F 1 "R" V 10800 16700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 10730 16700 50  0001 C CNN
F 3 "" H 10800 16700 50  0001 C CNN
	1    10800 16700
	0    1    1    0   
$EndComp
$Comp
L Device:D D9
U 1 1 5ACC19B9
P 12300 16750
F 0 "D9" H 12300 16850 50  0000 C CNN
F 1 "D" H 12300 16650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 12300 16750 50  0001 C CNN
F 3 "" H 12300 16750 50  0001 C CNN
	1    12300 16750
	0    1    1    0   
$EndComp
$Comp
L opto:PC817 U3
U 1 1 5ACC19BF
P 13050 15100
F 0 "U3" H 12850 15300 50  0000 L CNN
F 1 "U" H 13050 15300 50  0000 L CNN
F 2 "psw-library:psw-optocoupler" H 12850 14900 50  0001 L CIN
F 3 "" H 13050 15100 50  0001 L CNN
	1    13050 15100
	-1   0    0    1   
$EndComp
$Comp
L conn:RJ45 J19
U 1 1 5ACC19C5
P 15400 15650
F 0 "J19" H 15600 16150 50  0000 C CNN
F 1 "net" H 15250 16150 50  0000 C CNN
F 2 "psw-library:psw-rj45-190128" H 15400 15650 50  0001 C CNN
F 3 "" H 15400 15650 50  0001 C CNN
	1    15400 15650
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F15
U 1 1 5ACC19CB
P 14000 17100
F 0 "F15" V 14080 17100 50  0000 C CNN
F 1 "fuse1" V 13925 17100 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 13930 17100 50  0001 C CNN
F 3 "" H 14000 17100 50  0001 C CNN
	1    14000 17100
	0    1    1    0   
$EndComp
$Comp
L Device:R R2-3
U 1 1 5ACC19D1
P 13500 15200
F 0 "R2-3" V 13580 15200 50  0000 C CNN
F 1 "R" V 13500 15200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 13430 15200 50  0001 C CNN
F 3 "" H 13500 15200 50  0001 C CNN
	1    13500 15200
	0    1    1    0   
$EndComp
Text GLabel 14950 15300 0    60   Input ~ 0
9-gnd
Text GLabel 12750 15200 0    60   Input ~ 0
9-5v
$Comp
L Device:R R1-3
U 1 1 5ACC19D9
P 12650 14800
F 0 "R1-3" V 12730 14800 50  0000 C CNN
F 1 "R" V 12650 14800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12580 14800 50  0001 C CNN
F 3 "" H 12650 14800 50  0001 C CNN
	1    12650 14800
	-1   0    0    1   
$EndComp
Text GLabel 13150 17250 0    60   Input ~ 0
9-12v
Text GLabel 12250 15000 0    60   Input ~ 0
9-in
Wire Wire Line
	12300 16600 12300 16450
Wire Wire Line
	12300 16450 12750 16450
Wire Wire Line
	11250 17050 12750 17050
Wire Wire Line
	11250 17050 11250 16900
Wire Wire Line
	12300 17050 12300 16900
Connection ~ 12300 17050
Wire Wire Line
	13150 17250 13150 17050
Wire Wire Line
	12250 15000 12750 15000
Wire Wire Line
	12650 15000 12650 14950
Connection ~ 12650 15000
Wire Wire Line
	13650 15200 14800 15200
Connection ~ 12750 16450
Text GLabel 10800 14900 0    60   Input ~ 0
9-5v
Text GLabel 13050 16450 1    60   Input ~ 0
9-r-out1
Text GLabel 13250 16450 1    60   Input ~ 0
9-r-out2
Text GLabel 13850 17100 0    60   Input ~ 0
9-r-out1
Text GLabel 13850 17350 0    60   Input ~ 0
9-r-out2
Text GLabel 14150 17100 2    60   Input ~ 0
9-r-out
$Comp
L Device:Fuse F16
U 1 1 5ACC19F3
P 14000 17350
F 0 "F16" V 14080 17350 50  0000 C CNN
F 1 "fuse2" V 13925 17350 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 13930 17350 50  0001 C CNN
F 3 "" H 14000 17350 50  0001 C CNN
	1    14000 17350
	0    1    1    0   
$EndComp
Text GLabel 14150 17350 2    60   Input ~ 0
9-r-out
Text GLabel 10800 15300 0    60   Input ~ 0
9-out
Text GLabel 11300 15300 2    60   Input ~ 0
9-in
Text GLabel 14950 15500 0    60   Input ~ 0
9-r-out
Wire Notes Line
	9100 13800 16200 13800
Wire Notes Line
	16200 13800 16200 21300
Wire Notes Line
	9100 13800 9100 21300
Text Notes 9250 14050 0    118  ~ 24
alarm dual
Text GLabel 15750 16200 3    60   Input ~ 0
9-gnd
Text GLabel 10800 15200 0    60   Input ~ 0
9-gnd
Text GLabel 10800 15100 0    60   Input ~ 0
9-gnd
Text GLabel 11300 15100 2    60   Input ~ 0
9-gnd
Text GLabel 11300 15200 2    60   Input ~ 0
9-gnd
Text GLabel 13350 15000 2    60   Input ~ 0
9-gnd
Text GLabel 12650 14650 1    60   Input ~ 0
9-gnd
Text GLabel 11250 16500 1    60   Input ~ 0
9-gnd
Text GLabel 10650 16700 0    60   Input ~ 0
9-out
Text GLabel 10800 15000 0    60   Input ~ 0
9-12v
Text GLabel 11300 15000 2    60   Input ~ 0
9-12v
Text GLabel 11300 14900 2    60   Input ~ 0
9-12v
Text GLabel 12750 16150 1    60   Input ~ 0
9-5v
Text GLabel 12650 16150 1    60   Input ~ 0
9-12v
$Comp
L Device:R R28
U 1 1 5ACC1A1D
P 12750 16300
F 0 "R28" V 12830 16300 50  0000 C CNN
F 1 "R" V 12750 16300 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12680 16300 50  0001 C CNN
F 3 "" H 12750 16300 50  0001 C CNN
	1    12750 16300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R27
U 1 1 5ACC1A23
P 12650 16300
F 0 "R27" V 12730 16300 50  0000 C CNN
F 1 "R" V 12650 16300 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12580 16300 50  0001 C CNN
F 3 "" H 12650 16300 50  0001 C CNN
	1    12650 16300
	1    0    0    -1  
$EndComp
Connection ~ 12650 16450
Wire Notes Line
	9100 21300 16200 21300
$Comp
L relays:SANYOU_SRD_Form_C K9
U 1 1 5ACE270A
P 12800 20150
F 0 "K9" H 13250 20300 50  0000 L CNN
F 1 "relay" H 13250 20200 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 14250 20100 50  0001 C CNN
F 3 "" H 12800 20150 50  0001 C CNN
	1    12800 20150
	1    0    0    -1  
$EndComp
$Comp
L transistors:2N3904 Q9
U 1 1 5ACE2710
P 11000 20100
F 0 "Q9" H 11200 20175 50  0000 L CNN
F 1 "T" H 11200 20100 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 11200 20025 50  0001 L CIN
F 3 "" H 11000 20100 50  0001 L CNN
	1    11000 20100
	1    0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5ACE2716
P 10650 20100
F 0 "R7" V 10730 20100 50  0000 C CNN
F 1 "R" V 10650 20100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 10580 20100 50  0001 C CNN
F 3 "" H 10650 20100 50  0001 C CNN
	1    10650 20100
	0    1    1    0   
$EndComp
$Comp
L Device:D D8
U 1 1 5ACE271C
P 12150 20150
F 0 "D8" H 12150 20250 50  0000 C CNN
F 1 "D" H 12150 20050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 12150 20150 50  0001 C CNN
F 3 "" H 12150 20150 50  0001 C CNN
	1    12150 20150
	0    1    1    0   
$EndComp
$Comp
L opto:PC817 U1
U 1 1 5ACE2722
P 12900 18500
F 0 "U1" H 12700 18700 50  0000 L CNN
F 1 "U" H 12900 18700 50  0000 L CNN
F 2 "psw-library:psw-optocoupler" H 12700 18300 50  0001 L CIN
F 3 "" H 12900 18500 50  0001 L CNN
	1    12900 18500
	-1   0    0    1   
$EndComp
$Comp
L Device:Fuse F13
U 1 1 5ACE272E
P 13850 20500
F 0 "F13" V 13930 20500 50  0000 C CNN
F 1 "fuse1" V 13775 20500 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 13780 20500 50  0001 C CNN
F 3 "" H 13850 20500 50  0001 C CNN
	1    13850 20500
	0    1    1    0   
$EndComp
$Comp
L Device:R R2-2
U 1 1 5ACE2734
P 13350 18600
F 0 "R2-2" V 13430 18600 50  0000 C CNN
F 1 "R" V 13350 18600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 13280 18600 50  0001 C CNN
F 3 "" H 13350 18600 50  0001 C CNN
	1    13350 18600
	0    1    1    0   
$EndComp
Text GLabel 12600 18600 0    60   Input ~ 0
10-5v
$Comp
L Device:R R1-2
U 1 1 5ACE273C
P 12500 18200
F 0 "R1-2" V 12580 18200 50  0000 C CNN
F 1 "R" V 12500 18200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12430 18200 50  0001 C CNN
F 3 "" H 12500 18200 50  0001 C CNN
	1    12500 18200
	-1   0    0    1   
$EndComp
Text GLabel 13000 20650 0    60   Input ~ 0
10-12v
Text GLabel 12100 18400 0    60   Input ~ 0
10-in
Wire Wire Line
	12150 20000 12150 19850
Wire Wire Line
	12150 19850 12600 19850
Wire Wire Line
	11100 20450 12600 20450
Wire Wire Line
	11100 20450 11100 20300
Wire Wire Line
	12150 20450 12150 20300
Connection ~ 12150 20450
Wire Wire Line
	13000 20650 13000 20450
Wire Wire Line
	12100 18400 12600 18400
Wire Wire Line
	12500 18400 12500 18350
Connection ~ 12500 18400
Wire Wire Line
	13500 18600 14950 18600
Connection ~ 12600 19850
Text GLabel 10650 18300 0    60   Input ~ 0
10-5v
Text GLabel 12900 19850 1    60   Input ~ 0
10-r-out1
Text GLabel 13100 19850 1    60   Input ~ 0
10-r-out2
Text GLabel 13700 20500 0    60   Input ~ 0
10-r-out1
Text GLabel 13700 20750 0    60   Input ~ 0
10-r-out2
Text GLabel 14000 20500 2    60   Input ~ 0
10-r-out
$Comp
L Device:Fuse F14
U 1 1 5ACE2756
P 13850 20750
F 0 "F14" V 13930 20750 50  0000 C CNN
F 1 "fuse2" V 13775 20750 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 13780 20750 50  0001 C CNN
F 3 "" H 13850 20750 50  0001 C CNN
	1    13850 20750
	0    1    1    0   
$EndComp
Text GLabel 14000 20750 2    60   Input ~ 0
10-r-out
Text GLabel 10650 18700 0    60   Input ~ 0
10-out
Text GLabel 11150 18700 2    60   Input ~ 0
10-in
Text GLabel 14950 15900 0    60   Input ~ 0
10-r-out
Text GLabel 10650 18600 0    60   Input ~ 0
10-gnd
Text GLabel 10650 18500 0    60   Input ~ 0
10-gnd
Text GLabel 11150 18500 2    60   Input ~ 0
10-gnd
Text GLabel 11150 18600 2    60   Input ~ 0
10-gnd
Text GLabel 13200 18400 2    60   Input ~ 0
10-gnd
Text GLabel 12500 18050 1    60   Input ~ 0
10-gnd
Text GLabel 11100 19900 1    60   Input ~ 0
10-gnd
Text GLabel 10500 20100 0    60   Input ~ 0
10-out
Text GLabel 10650 18400 0    60   Input ~ 0
10-12v
Text GLabel 11150 18400 2    60   Input ~ 0
10-12v
Text GLabel 11150 18300 2    60   Input ~ 0
10-12v
Text GLabel 12600 19550 1    60   Input ~ 0
10-5v
Text GLabel 12500 19550 1    60   Input ~ 0
10-12v
$Comp
L Device:R R26
U 1 1 5ACE277B
P 12600 19700
F 0 "R26" V 12680 19700 50  0000 C CNN
F 1 "R" V 12600 19700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12530 19700 50  0001 C CNN
F 3 "" H 12600 19700 50  0001 C CNN
	1    12600 19700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R25
U 1 1 5ACE2781
P 12500 19700
F 0 "R25" V 12580 19700 50  0000 C CNN
F 1 "R" V 12500 19700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 12430 19700 50  0001 C CNN
F 3 "" H 12500 19700 50  0001 C CNN
	1    12500 19700
	1    0    0    -1  
$EndComp
Connection ~ 12500 19850
Wire Wire Line
	14800 15200 14800 15600
Text GLabel 14950 15700 0    60   Input ~ 0
10-gnd
Wire Wire Line
	14800 15600 14950 15600
Wire Wire Line
	14950 18600 14950 16000
Text GLabel 14950 15400 0    60   Input ~ 0
9-r-out
Text GLabel 14950 15800 0    60   Input ~ 0
10-r-out
$Comp
L relays:SANYOU_SRD_Form_C K12
U 1 1 5AEB1396
P 5150 21150
F 0 "K12" H 5600 21300 50  0000 L CNN
F 1 "relay" H 5600 21200 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 6600 21100 50  0001 C CNN
F 3 "" H 5150 21150 50  0001 C CNN
	1    5150 21150
	1    0    0    -1  
$EndComp
$Comp
L transistors:2N3904 Q12
U 1 1 5AEB139C
P 4100 21100
F 0 "Q12" H 4300 21175 50  0000 L CNN
F 1 "T" H 4300 21100 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 4300 21025 50  0001 L CIN
F 3 "" H 4100 21100 50  0001 L CNN
	1    4100 21100
	1    0    0    1   
$EndComp
$Comp
L Device:R R30
U 1 1 5AEB13A2
P 3750 21100
F 0 "R30" V 3830 21100 50  0000 C CNN
F 1 "R" V 3750 21100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3680 21100 50  0001 C CNN
F 3 "" H 3750 21100 50  0001 C CNN
	1    3750 21100
	0    1    1    0   
$EndComp
$Comp
L Device:D D11
U 1 1 5AEB13A8
P 4500 21150
F 0 "D11" H 4500 21250 50  0000 C CNN
F 1 "D" H 4500 21050 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 4500 21150 50  0001 C CNN
F 3 "" H 4500 21150 50  0001 C CNN
	1    4500 21150
	0    1    1    0   
$EndComp
$Comp
L conn:RJ45 J23
U 1 1 5AEB13AE
P 7550 23200
F 0 "J23" H 7750 23700 50  0000 C CNN
F 1 "net" H 7400 23700 50  0000 C CNN
F 2 "psw-library:psw-rj45-190128" H 7550 23200 50  0001 C CNN
F 3 "" H 7550 23200 50  0001 C CNN
	1    7550 23200
	0    1    1    0   
$EndComp
Text GLabel 5350 21450 3    60   Input ~ 0
11-12v
Wire Wire Line
	4500 21000 4500 20850
Wire Wire Line
	4500 20850 4950 20850
Wire Wire Line
	4200 21450 4200 21300
Wire Wire Line
	4500 21300 4500 21450
Connection ~ 4500 21450
Connection ~ 4950 20850
Text GLabel 1800 18650 0    60   Input ~ 0
11-5v
Text GLabel 6300 21250 0    60   Input ~ 0
11-r-down-r
$Comp
L Device:Fuse F18
U 1 1 5AEB13BD
P 6450 21250
F 0 "F18" V 6530 21250 50  0000 C CNN
F 1 "fuse2" V 6375 21250 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 6380 21250 50  0001 C CNN
F 3 "" H 6450 21250 50  0001 C CNN
	1    6450 21250
	0    1    1    0   
$EndComp
Text GLabel 6600 21250 2    60   Input ~ 0
11-r-down
Text GLabel 1800 19050 0    60   Input ~ 0
11-up
Text GLabel 2300 19050 2    60   Input ~ 0
11-down
Wire Notes Line
	1300 18200 8400 18200
Text Notes 1450 18450 0    118  ~ 24
zaluzie trojity
Text GLabel 2300 18850 2    60   Input ~ 0
11-gnd
Text GLabel 4200 20900 1    60   Input ~ 0
11-gnd
Text GLabel 3600 21100 0    60   Input ~ 0
11-down
Text GLabel 2300 18650 2    60   Input ~ 0
11-12v
$Comp
L Device:R R42
U 1 1 5AEB13D5
P 4950 20700
F 0 "R42" V 5030 20700 50  0000 C CNN
F 1 "R" V 4950 20700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4880 20700 50  0001 C CNN
F 3 "" H 4950 20700 50  0001 C CNN
	1    4950 20700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R36
U 1 1 5AEB13DB
P 4850 20700
F 0 "R36" V 4930 20700 50  0000 C CNN
F 1 "R" V 4850 20700 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4780 20700 50  0001 C CNN
F 3 "" H 4850 20700 50  0001 C CNN
	1    4850 20700
	1    0    0    -1  
$EndComp
Connection ~ 4850 20850
Wire Wire Line
	4200 21450 4950 21450
$Comp
L relays:SANYOU_SRD_Form_C K11
U 1 1 5AEB13E9
P 5150 19300
F 0 "K11" H 5600 19450 50  0000 L CNN
F 1 "relay" H 5600 19350 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 6600 19250 50  0001 C CNN
F 3 "" H 5150 19300 50  0001 C CNN
	1    5150 19300
	1    0    0    -1  
$EndComp
$Comp
L transistors:2N3904 Q11
U 1 1 5AEB13EF
P 4100 19250
F 0 "Q11" H 4300 19325 50  0000 L CNN
F 1 "T" H 4300 19250 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 4300 19175 50  0001 L CIN
F 3 "" H 4100 19250 50  0001 L CNN
	1    4100 19250
	1    0    0    1   
$EndComp
$Comp
L Device:R R29
U 1 1 5AEB13F5
P 3750 19250
F 0 "R29" V 3830 19250 50  0000 C CNN
F 1 "R" V 3750 19250 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3680 19250 50  0001 C CNN
F 3 "" H 3750 19250 50  0001 C CNN
	1    3750 19250
	0    1    1    0   
$EndComp
$Comp
L Device:D D10
U 1 1 5AEB13FB
P 4500 19300
F 0 "D10" H 4500 19400 50  0000 C CNN
F 1 "D" H 4500 19200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 4500 19300 50  0001 C CNN
F 3 "" H 4500 19300 50  0001 C CNN
	1    4500 19300
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 19150 4500 19000
Wire Wire Line
	4500 19000 4950 19000
Wire Wire Line
	4200 19600 4200 19450
Wire Wire Line
	4500 19450 4500 19600
Connection ~ 4500 19600
Connection ~ 4950 19000
Text GLabel 5250 19000 1    60   Input ~ 0
11-r-up-r
$Comp
L Device:R R41
U 1 1 5AEB1408
P 4950 18850
F 0 "R41" V 5030 18850 50  0000 C CNN
F 1 "R" V 4950 18850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4880 18850 50  0001 C CNN
F 3 "" H 4950 18850 50  0001 C CNN
	1    4950 18850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R35
U 1 1 5AEB140E
P 4850 18850
F 0 "R35" V 4930 18850 50  0000 C CNN
F 1 "R" V 4850 18850 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4780 18850 50  0001 C CNN
F 3 "" H 4850 18850 50  0001 C CNN
	1    4850 18850
	1    0    0    -1  
$EndComp
Connection ~ 4850 19000
Wire Wire Line
	4200 19600 4950 19600
Text GLabel 2300 18950 2    60   Input ~ 0
11-gnd
Text GLabel 1800 18950 0    60   Input ~ 0
11-gnd
Text GLabel 1800 18850 0    60   Input ~ 0
11-gnd
Text GLabel 2300 18750 2    60   Input ~ 0
11-12v
Text GLabel 1800 18750 0    60   Input ~ 0
11-12v
Text GLabel 4200 19050 1    60   Input ~ 0
11-gnd
Text GLabel 3600 19250 0    60   Input ~ 0
11-up
Text GLabel 4850 18700 1    60   Input ~ 0
11-12v
Text GLabel 4950 18700 1    60   Input ~ 0
11-5v
Text GLabel 4850 20550 1    60   Input ~ 0
11-12v
Text GLabel 4950 20550 1    60   Input ~ 0
11-5v
Text GLabel 5450 20850 1    60   Input ~ 0
11-r-bypass
Text GLabel 7900 23750 3    60   Input ~ 0
11-gnd
Text GLabel 5250 20850 1    60   Input ~ 0
11-r-down-r
Text GLabel 5350 19600 3    60   Input ~ 0
11-r-bypass
Text GLabel 7100 23150 0    60   Input ~ 0
11-r-down
NoConn ~ 5450 19000
Text GLabel 6300 20900 0    60   Input ~ 0
11-r-up-r
$Comp
L Device:Fuse F17
U 1 1 5AEB1429
P 6450 20900
F 0 "F17" V 6530 20900 50  0000 C CNN
F 1 "fuse2" V 6375 20900 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 6380 20900 50  0001 C CNN
F 3 "" H 6450 20900 50  0001 C CNN
	1    6450 20900
	0    1    1    0   
$EndComp
Text GLabel 6600 20900 2    60   Input ~ 0
11-r-up
Text GLabel 7100 23050 0    60   Input ~ 0
11-r-up
Text GLabel 7100 22850 0    60   Input ~ 0
11-gnd
Text GLabel 7100 22950 0    60   Input ~ 0
11-gnd
$Comp
L relays:SANYOU_SRD_Form_C K14
U 1 1 5AEB1E00
P 5150 25050
F 0 "K14" H 5600 25200 50  0000 L CNN
F 1 "relay" H 5600 25100 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 6600 25000 50  0001 C CNN
F 3 "" H 5150 25050 50  0001 C CNN
	1    5150 25050
	1    0    0    -1  
$EndComp
$Comp
L transistors:2N3904 Q14
U 1 1 5AEB1E06
P 4100 25000
F 0 "Q14" H 4300 25075 50  0000 L CNN
F 1 "T" H 4300 25000 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 4300 24925 50  0001 L CIN
F 3 "" H 4100 25000 50  0001 L CNN
	1    4100 25000
	1    0    0    1   
$EndComp
$Comp
L Device:R R32
U 1 1 5AEB1E0C
P 3750 25000
F 0 "R32" V 3830 25000 50  0000 C CNN
F 1 "R" V 3750 25000 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3680 25000 50  0001 C CNN
F 3 "" H 3750 25000 50  0001 C CNN
	1    3750 25000
	0    1    1    0   
$EndComp
$Comp
L Device:D D13
U 1 1 5AEB1E12
P 4500 25050
F 0 "D13" H 4500 25150 50  0000 C CNN
F 1 "D" H 4500 24950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 4500 25050 50  0001 C CNN
F 3 "" H 4500 25050 50  0001 C CNN
	1    4500 25050
	0    1    1    0   
$EndComp
Text GLabel 5350 25350 3    60   Input ~ 0
12-12v
Wire Wire Line
	4500 24900 4500 24750
Wire Wire Line
	4500 24750 4950 24750
Wire Wire Line
	4200 25350 4200 25200
Wire Wire Line
	4500 25200 4500 25350
Connection ~ 4500 25350
Connection ~ 4950 24750
Text GLabel 1800 22550 0    60   Input ~ 0
12-5v
Text GLabel 6300 25150 0    60   Input ~ 0
12-r-down-r
$Comp
L Device:Fuse F20
U 1 1 5AEB1E27
P 6450 25150
F 0 "F20" V 6530 25150 50  0000 C CNN
F 1 "fuse2" V 6375 25150 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 6380 25150 50  0001 C CNN
F 3 "" H 6450 25150 50  0001 C CNN
	1    6450 25150
	0    1    1    0   
$EndComp
Text GLabel 6600 25150 2    60   Input ~ 0
12-r-down
Text GLabel 1800 22950 0    60   Input ~ 0
12-up
Text GLabel 2300 22950 2    60   Input ~ 0
12-down
Text GLabel 4200 24800 1    60   Input ~ 0
12-gnd
Text GLabel 3600 25000 0    60   Input ~ 0
12-down
$Comp
L Device:R R44
U 1 1 5AEB1E3F
P 4950 24600
F 0 "R44" V 5030 24600 50  0000 C CNN
F 1 "R" V 4950 24600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4880 24600 50  0001 C CNN
F 3 "" H 4950 24600 50  0001 C CNN
	1    4950 24600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R38
U 1 1 5AEB1E45
P 4850 24600
F 0 "R38" V 4930 24600 50  0000 C CNN
F 1 "R" V 4850 24600 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4780 24600 50  0001 C CNN
F 3 "" H 4850 24600 50  0001 C CNN
	1    4850 24600
	1    0    0    -1  
$EndComp
Connection ~ 4850 24750
Wire Wire Line
	4200 25350 4950 25350
$Comp
L relays:SANYOU_SRD_Form_C K13
U 1 1 5AEB1E53
P 5150 23200
F 0 "K13" H 5600 23350 50  0000 L CNN
F 1 "relay" H 5600 23250 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 6600 23150 50  0001 C CNN
F 3 "" H 5150 23200 50  0001 C CNN
	1    5150 23200
	1    0    0    -1  
$EndComp
$Comp
L transistors:2N3904 Q13
U 1 1 5AEB1E59
P 4100 23150
F 0 "Q13" H 4300 23225 50  0000 L CNN
F 1 "T" H 4300 23150 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 4300 23075 50  0001 L CIN
F 3 "" H 4100 23150 50  0001 L CNN
	1    4100 23150
	1    0    0    1   
$EndComp
$Comp
L Device:R R31
U 1 1 5AEB1E5F
P 3750 23150
F 0 "R31" V 3830 23150 50  0000 C CNN
F 1 "R" V 3750 23150 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3680 23150 50  0001 C CNN
F 3 "" H 3750 23150 50  0001 C CNN
	1    3750 23150
	0    1    1    0   
$EndComp
$Comp
L Device:D D12
U 1 1 5AEB1E65
P 4500 23200
F 0 "D12" H 4500 23300 50  0000 C CNN
F 1 "D" H 4500 23100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 4500 23200 50  0001 C CNN
F 3 "" H 4500 23200 50  0001 C CNN
	1    4500 23200
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 23050 4500 22900
Wire Wire Line
	4500 22900 4950 22900
Wire Wire Line
	4200 23500 4200 23350
Wire Wire Line
	4500 23350 4500 23500
Connection ~ 4500 23500
Connection ~ 4950 22900
Text GLabel 5250 22900 1    60   Input ~ 0
12-r-up-r
$Comp
L Device:R R43
U 1 1 5AEB1E72
P 4950 22750
F 0 "R43" V 5030 22750 50  0000 C CNN
F 1 "R" V 4950 22750 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4880 22750 50  0001 C CNN
F 3 "" H 4950 22750 50  0001 C CNN
	1    4950 22750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R37
U 1 1 5AEB1E78
P 4850 22750
F 0 "R37" V 4930 22750 50  0000 C CNN
F 1 "R" V 4850 22750 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4780 22750 50  0001 C CNN
F 3 "" H 4850 22750 50  0001 C CNN
	1    4850 22750
	1    0    0    -1  
$EndComp
Connection ~ 4850 22900
Wire Wire Line
	4200 23500 4950 23500
Text GLabel 1800 22750 0    60   Input ~ 0
12-gnd
Text GLabel 1800 22650 0    60   Input ~ 0
12-12v
Text GLabel 4850 22600 1    60   Input ~ 0
12-12v
Text GLabel 4950 22600 1    60   Input ~ 0
12-5v
Text GLabel 4850 24450 1    60   Input ~ 0
12-12v
Text GLabel 4950 24450 1    60   Input ~ 0
12-5v
Text GLabel 5450 24750 1    60   Input ~ 0
12-r-bypass
Text GLabel 5250 24750 1    60   Input ~ 0
12-r-down-r
Text GLabel 5350 23500 3    60   Input ~ 0
12-r-bypass
NoConn ~ 5450 22900
Text GLabel 6300 24800 0    60   Input ~ 0
12-r-up-r
$Comp
L Device:Fuse F19
U 1 1 5AEB1E93
P 6450 24800
F 0 "F19" V 6530 24800 50  0000 C CNN
F 1 "fuse2" V 6375 24800 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 6380 24800 50  0001 C CNN
F 3 "" H 6450 24800 50  0001 C CNN
	1    6450 24800
	0    1    1    0   
$EndComp
Text GLabel 6600 24800 2    60   Input ~ 0
12-r-up
$Comp
L relays:SANYOU_SRD_Form_C K16
U 1 1 5AEB278E
P 5150 29250
F 0 "K16" H 5600 29400 50  0000 L CNN
F 1 "relay" H 5600 29300 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 6600 29200 50  0001 C CNN
F 3 "" H 5150 29250 50  0001 C CNN
	1    5150 29250
	1    0    0    -1  
$EndComp
$Comp
L transistors:2N3904 Q16
U 1 1 5AEB2794
P 4100 29200
F 0 "Q16" H 4300 29275 50  0000 L CNN
F 1 "T" H 4300 29200 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 4300 29125 50  0001 L CIN
F 3 "" H 4100 29200 50  0001 L CNN
	1    4100 29200
	1    0    0    1   
$EndComp
$Comp
L Device:R R34
U 1 1 5AEB279A
P 3750 29200
F 0 "R34" V 3830 29200 50  0000 C CNN
F 1 "R" V 3750 29200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3680 29200 50  0001 C CNN
F 3 "" H 3750 29200 50  0001 C CNN
	1    3750 29200
	0    1    1    0   
$EndComp
$Comp
L Device:D D15
U 1 1 5AEB27A0
P 4500 29250
F 0 "D15" H 4500 29350 50  0000 C CNN
F 1 "D" H 4500 29150 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 4500 29250 50  0001 C CNN
F 3 "" H 4500 29250 50  0001 C CNN
	1    4500 29250
	0    1    1    0   
$EndComp
Text GLabel 5350 29550 3    60   Input ~ 0
13-12v
Wire Wire Line
	4500 29100 4500 28950
Wire Wire Line
	4500 28950 4950 28950
Wire Wire Line
	4200 29550 4200 29400
Wire Wire Line
	4500 29400 4500 29550
Connection ~ 4500 29550
Connection ~ 4950 28950
Text GLabel 1800 26750 0    60   Input ~ 0
13-5v
Text GLabel 6300 29350 0    60   Input ~ 0
13-r-down-r
$Comp
L Device:Fuse F22
U 1 1 5AEB27B5
P 6450 29350
F 0 "F22" V 6530 29350 50  0000 C CNN
F 1 "fuse2" V 6375 29350 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 6380 29350 50  0001 C CNN
F 3 "" H 6450 29350 50  0001 C CNN
	1    6450 29350
	0    1    1    0   
$EndComp
Text GLabel 6600 29350 2    60   Input ~ 0
13-r-down
Text GLabel 1800 27150 0    60   Input ~ 0
13-up
Text GLabel 2300 27150 2    60   Input ~ 0
13-down
Wire Notes Line
	1300 30200 8400 30200
Text GLabel 2300 26950 2    60   Input ~ 0
13-gnd
Text GLabel 4200 29000 1    60   Input ~ 0
13-gnd
Text GLabel 3600 29200 0    60   Input ~ 0
13-down
Text GLabel 2300 26750 2    60   Input ~ 0
13-12v
$Comp
L Device:R R46
U 1 1 5AEB27CD
P 4950 28800
F 0 "R46" V 5030 28800 50  0000 C CNN
F 1 "R" V 4950 28800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4880 28800 50  0001 C CNN
F 3 "" H 4950 28800 50  0001 C CNN
	1    4950 28800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R40
U 1 1 5AEB27D3
P 4850 28800
F 0 "R40" V 4930 28800 50  0000 C CNN
F 1 "R" V 4850 28800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4780 28800 50  0001 C CNN
F 3 "" H 4850 28800 50  0001 C CNN
	1    4850 28800
	1    0    0    -1  
$EndComp
Connection ~ 4850 28950
Wire Wire Line
	4200 29550 4950 29550
$Comp
L relays:SANYOU_SRD_Form_C K15
U 1 1 5AEB27E1
P 5150 27400
F 0 "K15" H 5600 27550 50  0000 L CNN
F 1 "relay" H 5600 27450 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 6600 27350 50  0001 C CNN
F 3 "" H 5150 27400 50  0001 C CNN
	1    5150 27400
	1    0    0    -1  
$EndComp
$Comp
L transistors:2N3904 Q15
U 1 1 5AEB27E7
P 4100 27350
F 0 "Q15" H 4300 27425 50  0000 L CNN
F 1 "T" H 4300 27350 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 4300 27275 50  0001 L CIN
F 3 "" H 4100 27350 50  0001 L CNN
	1    4100 27350
	1    0    0    1   
$EndComp
$Comp
L Device:R R33
U 1 1 5AEB27ED
P 3750 27350
F 0 "R33" V 3830 27350 50  0000 C CNN
F 1 "R" V 3750 27350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 3680 27350 50  0001 C CNN
F 3 "" H 3750 27350 50  0001 C CNN
	1    3750 27350
	0    1    1    0   
$EndComp
$Comp
L Device:D D14
U 1 1 5AEB27F3
P 4500 27400
F 0 "D14" H 4500 27500 50  0000 C CNN
F 1 "D" H 4500 27300 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 4500 27400 50  0001 C CNN
F 3 "" H 4500 27400 50  0001 C CNN
	1    4500 27400
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 27250 4500 27100
Wire Wire Line
	4500 27100 4950 27100
Wire Wire Line
	4200 27700 4200 27550
Wire Wire Line
	4500 27550 4500 27700
Connection ~ 4500 27700
Connection ~ 4950 27100
Text GLabel 5250 27100 1    60   Input ~ 0
13-r-up-r
$Comp
L Device:R R45
U 1 1 5AEB2800
P 4950 26950
F 0 "R45" V 5030 26950 50  0000 C CNN
F 1 "R" V 4950 26950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4880 26950 50  0001 C CNN
F 3 "" H 4950 26950 50  0001 C CNN
	1    4950 26950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R39
U 1 1 5AEB2806
P 4850 26950
F 0 "R39" V 4930 26950 50  0000 C CNN
F 1 "R" V 4850 26950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4780 26950 50  0001 C CNN
F 3 "" H 4850 26950 50  0001 C CNN
	1    4850 26950
	1    0    0    -1  
$EndComp
Connection ~ 4850 27100
Wire Wire Line
	4200 27700 4950 27700
Text GLabel 2300 27050 2    60   Input ~ 0
13-gnd
Text GLabel 1800 27050 0    60   Input ~ 0
13-gnd
Text GLabel 1800 26950 0    60   Input ~ 0
13-gnd
Text GLabel 2300 26850 2    60   Input ~ 0
13-12v
Text GLabel 1800 26850 0    60   Input ~ 0
13-12v
Text GLabel 4200 27150 1    60   Input ~ 0
13-gnd
Text GLabel 3600 27350 0    60   Input ~ 0
13-up
Text GLabel 4850 26800 1    60   Input ~ 0
13-12v
Text GLabel 4950 26800 1    60   Input ~ 0
13-5v
Text GLabel 4850 28650 1    60   Input ~ 0
13-12v
Text GLabel 4950 28650 1    60   Input ~ 0
13-5v
Text GLabel 5450 28950 1    60   Input ~ 0
13-r-bypass
Text GLabel 5250 28950 1    60   Input ~ 0
13-r-down-r
Text GLabel 5350 27700 3    60   Input ~ 0
13-r-bypass
NoConn ~ 5450 27100
Text GLabel 6300 29000 0    60   Input ~ 0
13-r-up-r
$Comp
L Device:Fuse F21
U 1 1 5AEB2821
P 6450 29000
F 0 "F21" V 6530 29000 50  0000 C CNN
F 1 "fuse2" V 6375 29000 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 6380 29000 50  0001 C CNN
F 3 "" H 6450 29000 50  0001 C CNN
	1    6450 29000
	0    1    1    0   
$EndComp
Text GLabel 6600 29000 2    60   Input ~ 0
13-r-up
Text GLabel 1800 22850 0    60   Input ~ 0
12-gnd
Text GLabel 2300 22850 2    60   Input ~ 0
12-gnd
Text GLabel 2300 22750 2    60   Input ~ 0
12-gnd
Text GLabel 2300 22650 2    60   Input ~ 0
12-12v
Text GLabel 2300 22550 2    60   Input ~ 0
12-12v
Text GLabel 3600 23150 0    60   Input ~ 0
12-up
Text GLabel 4200 22950 1    60   Input ~ 0
12-gnd
Text GLabel 7100 23250 0    60   Input ~ 0
12-r-up
Text GLabel 7100 23450 0    60   Input ~ 0
13-r-up
Text GLabel 7100 23350 0    60   Input ~ 0
12-r-down
Text GLabel 7100 23550 0    60   Input ~ 0
13-r-down
$Comp
L conn:RJ45 J27
U 1 1 5AEE6DD7
P 15500 23750
F 0 "J27" H 15700 24250 50  0000 C CNN
F 1 "net" H 15350 24250 50  0000 C CNN
F 2 "psw-library:psw-rj45-190128" H 15500 23750 50  0001 C CNN
F 3 "" H 15500 23750 50  0001 C CNN
	1    15500 23750
	0    1    1    0   
$EndComp
Text GLabel 11350 22450 0    60   Input ~ 0
14-5v
$Comp
L Device:Fuse F24
U 1 1 5AEE6DE6
P 13000 23900
F 0 "F24" V 13080 23900 50  0000 C CNN
F 1 "fuse2" V 12925 23900 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 12930 23900 50  0001 C CNN
F 3 "" H 13000 23900 50  0001 C CNN
	1    13000 23900
	-1   0    0    1   
$EndComp
Text GLabel 11350 22850 0    60   Input ~ 0
14-up
Text GLabel 11850 22850 2    60   Input ~ 0
14-down
Wire Notes Line
	9200 21900 16300 21900
Wire Notes Line
	16300 21900 16300 25800
Wire Notes Line
	16300 25800 9200 25800
Wire Notes Line
	9200 25800 9200 21900
Text Notes 9350 22150 0    118  ~ 24
relay-latching
Text GLabel 11850 22650 2    60   Input ~ 0
14-gnd
Text GLabel 11850 24350 2    60   Input ~ 0
14-down
Text GLabel 11850 22450 2    60   Input ~ 0
14-12v
Text GLabel 11850 22750 2    60   Input ~ 0
14-gnd
Text GLabel 11350 22750 0    60   Input ~ 0
14-gnd
Text GLabel 11350 22650 0    60   Input ~ 0
14-gnd
Text GLabel 11850 22550 2    60   Input ~ 0
14-12v
Text GLabel 11350 22550 0    60   Input ~ 0
14-12v
Text GLabel 11850 24250 2    60   Input ~ 0
14-up
Text GLabel 15850 24300 3    60   Input ~ 0
14-gnd
Text GLabel 15050 24100 0    60   Input ~ 0
14-r-down
Text GLabel 15050 24000 0    60   Input ~ 0
14-r-down
$Comp
L Device:Fuse F23
U 1 1 5AEE6E52
P 12900 23900
F 0 "F23" V 12980 23900 50  0000 C CNN
F 1 "fuse2" V 12825 23900 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 12830 23900 50  0001 C CNN
F 3 "" H 12900 23900 50  0001 C CNN
	1    12900 23900
	-1   0    0    1   
$EndComp
Text GLabel 15050 23400 0    60   Input ~ 0
14-r-up
Text GLabel 15050 23500 0    60   Input ~ 0
14-r-up
Text GLabel 15050 23600 0    60   Input ~ 0
14-gnd
Text GLabel 15050 23700 0    60   Input ~ 0
14-gnd
Text GLabel 15050 23800 0    60   Input ~ 0
14-gnd
Text GLabel 15050 23900 0    60   Input ~ 0
14-gnd
Text GLabel 12900 24050 3    60   Input ~ 0
14-12v
Text GLabel 13000 24050 3    60   Input ~ 0
14-5v
$Comp
L conn:Conn_02x04_Top_Bottom J25
U 1 1 5AF188DA
P 11550 24250
F 0 "J25" H 11600 24450 50  0000 C CNN
F 1 "H-bridge" H 11600 23950 50  0000 C CNN
F 2 "smt-soic:8" H 11550 24250 50  0001 C CNN
F 3 "" H 11550 24250 50  0001 C CNN
	1    11550 24250
	1    0    0    -1  
$EndComp
Text GLabel 13850 24100 3    60   Input ~ 0
14-r-up
Text GLabel 13850 23600 1    60   Input ~ 0
14-r-up
Text GLabel 13950 23600 1    60   Input ~ 0
14-r-down
Text GLabel 13950 24100 3    60   Input ~ 0
14-r-down
Text GLabel 11850 24450 2    60   Input ~ 0
14-gnd
Text GLabel 11850 24150 2    60   Input ~ 0
14-gnd
Text GLabel 11350 24350 0    60   Input ~ 0
14-5v-out
Text GLabel 11500 23800 0    60   Input ~ 0
14-5v
Text GLabel 11350 24150 0    60   Input ~ 0
14-r-plus
Text GLabel 11350 24450 0    60   Input ~ 0
14-r-minus
Text GLabel 13550 24100 3    60   Input ~ 0
14-r-minus
Text GLabel 13650 24100 3    60   Input ~ 0
14-r-minus
Text GLabel 13550 23600 1    60   Input ~ 0
14-r-plus
Text GLabel 13650 23600 1    60   Input ~ 0
14-r-plus
$Comp
L conn:Conn_02x05_Odd_Even J26
U 1 1 5AF2EA25
P 13750 23900
F 0 "J26" H 13800 24200 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 13800 23600 50  0000 C CNN
F 2 "psw-library:psw-latching-relay" H 13750 23900 50  0001 C CNN
F 3 "" H 13750 23900 50  0001 C CNN
	1    13750 23900
	0    -1   -1   0   
$EndComp
Text GLabel 12950 23750 1    60   Input ~ 0
14-r-in
Text GLabel 13750 24100 3    60   Input ~ 0
14-r-in
Text GLabel 13750 23600 1    60   Input ~ 0
14-r-in
$Comp
L conn:Jack-DC J28
U 1 1 5AF3B367
P 15200 24550
F 0 "J28" H 15200 24760 50  0000 C CNN
F 1 "dc" H 15200 24375 50  0000 C CNN
F 2 "Connectors:BARREL_JACK" H 15250 24510 50  0001 C CNN
F 3 "" H 15250 24510 50  0001 C CNN
	1    15200 24550
	-1   0    0    1   
$EndComp
$Comp
L conn:Conn_01x02_Male J1-2
U 1 1 5AF3B36D
P 15100 25150
F 0 "J1-2" H 15100 25250 50  0000 C CNN
F 1 "power" H 15100 24950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 15100 25150 50  0001 C CNN
F 3 "" H 15100 25150 50  0001 C CNN
	1    15100 25150
	-1   0    0    1   
$EndComp
Text GLabel 14900 24450 0    60   Input ~ 0
14-gnd
Text GLabel 14900 24550 0    60   Input ~ 0
14-gnd
Text GLabel 14900 24650 0    60   Input ~ 0
14-r-up
Text GLabel 14900 25050 0    60   Input ~ 0
14-gnd
Text GLabel 14900 25150 0    60   Input ~ 0
14-r-up
$Comp
L Device:R R47
U 1 1 5AEB7A65
P 11650 23800
F 0 "R47" V 11730 23800 50  0000 C CNN
F 1 "R" V 11650 23800 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 11580 23800 50  0001 C CNN
F 3 "" H 11650 23800 50  0001 C CNN
	1    11650 23800
	0    1    1    0   
$EndComp
Text GLabel 11350 24250 0    60   Input ~ 0
14-5v-out
Text GLabel 11800 23800 2    60   Input ~ 0
14-5v-out
$Comp
L conn:Conn_02x05_Odd_Even J29
U 1 1 5B94B905
P 3200 5750
F 0 "J29" H 3250 6050 50  0000 C CNN
F 1 "power" H 3250 5450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 3200 5750 50  0001 C CNN
F 3 "" H 3200 5750 50  0001 C CNN
	1    3200 5750
	1    0    0    -1  
$EndComp
$Comp
L conn:Conn_02x05_Odd_Even J10
U 1 1 5B94F19E
P 3250 10800
F 0 "J10" H 3300 11100 50  0000 C CNN
F 1 "power" H 3300 10500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 3250 10800 50  0001 C CNN
F 3 "" H 3250 10800 50  0001 C CNN
	1    3250 10800
	1    0    0    -1  
$EndComp
$Comp
L conn:Conn_02x05_Odd_Even J8
U 1 1 5B950911
P 2050 14450
F 0 "J8" H 2100 14750 50  0000 C CNN
F 1 "power" H 2100 14150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 2050 14450 50  0001 C CNN
F 3 "" H 2050 14450 50  0001 C CNN
	1    2050 14450
	1    0    0    -1  
$EndComp
$Comp
L conn:Conn_02x05_Odd_Even J2
U 1 1 5B9522E7
P 2000 18850
F 0 "J2" H 2050 19150 50  0000 C CNN
F 1 "power" H 2050 18550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 2000 18850 50  0001 C CNN
F 3 "" H 2000 18850 50  0001 C CNN
	1    2000 18850
	1    0    0    -1  
$EndComp
$Comp
L conn:Conn_02x05_Odd_Even J5
U 1 1 5B953623
P 2000 22750
F 0 "J5" H 2050 23050 50  0000 C CNN
F 1 "power" H 2050 22450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 2000 22750 50  0001 C CNN
F 3 "" H 2000 22750 50  0001 C CNN
	1    2000 22750
	1    0    0    -1  
$EndComp
$Comp
L conn:Conn_02x05_Odd_Even J6
U 1 1 5B955584
P 2000 26950
F 0 "J6" H 2050 27250 50  0000 C CNN
F 1 "power" H 2050 26650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 2000 26950 50  0001 C CNN
F 3 "" H 2000 26950 50  0001 C CNN
	1    2000 26950
	1    0    0    -1  
$EndComp
$Comp
L conn:Conn_02x05_Odd_Even J18
U 1 1 5B9576FE
P 11550 22650
F 0 "J18" H 11600 22950 50  0000 C CNN
F 1 "power" H 11600 22350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 11550 22650 50  0001 C CNN
F 3 "" H 11550 22650 50  0001 C CNN
	1    11550 22650
	1    0    0    -1  
$EndComp
$Comp
L conn:Conn_02x05_Odd_Even J15
U 1 1 5B95AB3D
P 10850 18500
F 0 "J15" H 10900 18800 50  0000 C CNN
F 1 "power" H 10900 18200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 10850 18500 50  0001 C CNN
F 3 "" H 10850 18500 50  0001 C CNN
	1    10850 18500
	1    0    0    -1  
$EndComp
$Comp
L conn:Conn_02x05_Odd_Even J21
U 1 1 5B95C1B0
P 13150 10800
F 0 "J21" H 13200 11100 50  0000 C CNN
F 1 "power" H 13200 10500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 13150 10800 50  0001 C CNN
F 3 "" H 13150 10800 50  0001 C CNN
	1    13150 10800
	1    0    0    -1  
$EndComp
$Comp
L conn:Conn_02x05_Odd_Even J17
U 1 1 5B95FFBF
P 11000 15100
F 0 "J17" H 11050 15400 50  0000 C CNN
F 1 "power" H 11050 14800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 11000 15100 50  0001 C CNN
F 3 "" H 11000 15100 50  0001 C CNN
	1    11000 15100
	1    0    0    -1  
$EndComp
$Comp
L conn:Conn_02x05_Odd_Even J22
U 1 1 5B960991
P 13300 7650
F 0 "J22" H 13350 7950 50  0000 C CNN
F 1 "power" H 13350 7350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 13300 7650 50  0001 C CNN
F 3 "" H 13300 7650 50  0001 C CNN
	1    13300 7650
	1    0    0    -1  
$EndComp
$Comp
L conn:Conn_02x05_Odd_Even J20
U 1 1 5B965258
P 13050 1800
F 0 "J20" H 13100 2100 50  0000 C CNN
F 1 "power" H 13100 1500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 13050 1800 50  0001 C CNN
F 3 "" H 13050 1800 50  0001 C CNN
	1    13050 1800
	1    0    0    -1  
$EndComp
$Comp
L conn:Conn_02x09_Odd_Even J14
U 1 1 5AB3D564
P 10100 6800
F 0 "J14" H 10150 7300 50  0000 C CNN
F 1 "net" H 10150 6300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x09_Pitch2.54mm" H 10100 6800 50  0001 C CNN
F 3 "" H 10100 6800 50  0001 C CNN
	1    10100 6800
	1    0    0    -1  
$EndComp
Wire Notes Line
	8400 30200 8400 18200
Wire Notes Line
	1300 18200 1300 30200
Wire Wire Line
	12900 23750 13000 23750
$Comp
L conn:Conn_02x05_Odd_Even J1
U 1 1 5C4F767A
P 13300 4800
F 0 "J1" H 13350 5100 50  0000 C CNN
F 1 "power" H 13350 4500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 13300 4800 50  0001 C CNN
F 3 "" H 13300 4800 50  0001 C CNN
	1    13300 4800
	1    0    0    -1  
$EndComp
Text GLabel 11350 26800 0    60   Input ~ 0
15-5v
$Comp
L Device:Fuse F25
U 1 1 5C4FBC6F
P 11700 27700
F 0 "F25" V 11780 27700 50  0000 C CNN
F 1 "fuse2" V 11625 27700 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 11630 27700 50  0001 C CNN
F 3 "" H 11700 27700 50  0001 C CNN
	1    11700 27700
	0    1    1    0   
$EndComp
Wire Notes Line
	9200 26150 16300 26150
Wire Notes Line
	16300 26150 16300 30050
Wire Notes Line
	16300 30050 9200 30050
Wire Notes Line
	9200 30050 9200 26150
Text Notes 9350 26400 0    118  ~ 24
12V-5V-reg
Text GLabel 11350 27000 0    60   Input ~ 0
15-gnd
Text GLabel 11350 26900 0    60   Input ~ 0
15-12v
Text GLabel 11350 27100 0    60   Input ~ 0
15-gnd
Text GLabel 11850 27000 2    60   Input ~ 0
15-gnd
Text GLabel 11850 27100 2    60   Input ~ 0
15-gnd
Text GLabel 11850 26800 2    60   Input ~ 0
15-12v
Text GLabel 11850 26900 2    60   Input ~ 0
15-12v
Text GLabel 11550 27700 0    60   Input ~ 0
15-12v
Text GLabel 11850 27700 2    60   Input ~ 0
15-12v-out
$Comp
L Conn_01x04 J30
U 1 1 5C50CD64
P 13750 27250
F 0 "J30" H 13750 27450 50  0000 C CNN
F 1 "reg" H 13750 26950 50  0000 C CNN
F 2 "psw-library:psw-dc-dc-lm2596-HOLE" H 13750 27250 50  0001 C CNN
F 3 "" H 13750 27250 50  0001 C CNN
	1    13750 27250
	1    0    0    -1  
$EndComp
Text GLabel 13550 27150 0    60   Input ~ 0
15-5v
Text GLabel 13550 27250 0    60   Input ~ 0
15-gnd
Text GLabel 13550 27450 0    60   Input ~ 0
15-gnd
Text GLabel 13550 27350 0    60   Input ~ 0
15-12v-out
$Comp
L conn:Conn_02x05_Odd_Even J24
U 1 1 5C51315A
P 11550 27000
F 0 "J24" H 11600 27300 50  0000 C CNN
F 1 "power" H 11600 26700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 11550 27000 50  0001 C CNN
F 3 "" H 11550 27000 50  0001 C CNN
	1    11550 27000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
