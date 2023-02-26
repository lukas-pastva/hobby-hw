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
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:xilinx
LIBS:zetex
LIBS:Zilog
LIBS:power-source-big-v1.2-reg-cache
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
L Conn_01x11 buck1
U 1 1 5C45FD10
P 3100 1350
F 0 "buck1" H 3100 1950 50  0000 C CNN
F 1 "buck" H 3100 750 50  0000 C CNN
F 2 "psw-library:psw-reg-big-buck" H 3100 1350 50  0001 C CNN
F 3 "" H 3100 1350 50  0001 C CNN
	1    3100 1350
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x05 boost1
U 1 1 5C45FE1D
P 1800 1100
F 0 "boost1" H 1800 1400 50  0000 C CNN
F 1 "boost" H 1800 800 50  0000 C CNN
F 2 "psw-library:psw-reg-big-boost" H 1800 1100 50  0001 C CNN
F 3 "" H 1800 1100 50  0001 C CNN
	1    1800 1100
	-1   0    0    1   
$EndComp
Text GLabel 2550 2300 0    60   Input ~ 0
reg-v-1
Text GLabel 2550 2400 0    60   Input ~ 0
reg-v-2
Text GLabel 2550 2500 0    60   Input ~ 0
reg-v-3
Text GLabel 2550 2600 0    60   Input ~ 0
reg-a-1
Text GLabel 2550 2700 0    60   Input ~ 0
reg-a-2
Text GLabel 2550 2800 0    60   Input ~ 0
reg-a-3
Text GLabel 2000 1100 2    60   Input ~ 0
gnd
Text GLabel 2000 1000 2    60   Input ~ 0
12V
Text GLabel 2900 950  0    60   Input ~ 0
gnd-reg
Text GLabel 4000 750  0    60   Input ~ 0
gnd-reg
$Comp
L Conn_01x01 gnd-reg1
U 1 1 5C461AE1
P 4200 750
F 0 "gnd-reg1" H 4200 850 50  0000 C CNN
F 1 "gnd-reg" H 4200 650 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.7mm_Pad_Via" H 4200 750 50  0001 C CNN
F 3 "" H 4200 750 50  0001 C CNN
	1    4200 750 
	1    0    0    -1  
$EndComp
Text GLabel 2900 850  0    60   Input ~ 0
12V-reg
Text GLabel 4000 1050 0    60   Input ~ 0
12V-reg
$Comp
L Conn_01x01 12V-reg1
U 1 1 5C461D3C
P 4200 1050
F 0 "12V-reg1" H 4200 1150 50  0000 C CNN
F 1 "12V-reg" H 4200 950 50  0000 C CNN
F 2 "" H 4200 1050 50  0001 C CNN
F 3 "" H 4200 1050 50  0001 C CNN
	1    4200 1050
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 12V-out1
U 1 1 5C461FF4
P 5000 750
F 0 "12V-out1" H 5000 850 50  0000 C CNN
F 1 "12V-out" H 5000 650 50  0000 C CNN
F 2 "" H 5000 750 50  0001 C CNN
F 3 "" H 5000 750 50  0001 C CNN
	1    5000 750 
	1    0    0    -1  
$EndComp
Text GLabel 4800 750  0    60   Input ~ 0
12V
Text GLabel 2900 1450 0    60   Input ~ 0
reg-v-1
Text GLabel 2900 1350 0    60   Input ~ 0
reg-v-2
Text GLabel 2900 1250 0    60   Input ~ 0
reg-v-3
Text GLabel 2900 1550 0    60   Input ~ 0
reg-a-1
Text GLabel 2900 1650 0    60   Input ~ 0
reg-a-2
Text GLabel 2900 1750 0    60   Input ~ 0
reg-a-3
Text GLabel 5900 850  0    60   Input ~ 0
gnd
Text GLabel 7850 850  0    60   Input ~ 0
12V
Wire Wire Line
	2000 1300 2400 1300
Wire Wire Line
	2400 1300 2400 1150
Wire Wire Line
	2400 1150 2900 1150
Text GLabel 6800 1550 0    60   Input ~ 0
12V-reg
Text GLabel 6800 1200 0    60   Input ~ 0
12V-reg
Text GLabel 6800 850  0    60   Input ~ 0
12V-reg
$Comp
L Conn_01x01 12V12
U 1 1 5C464435
P 7000 1550
F 0 "12V12" H 7000 1650 50  0000 C CNN
F 1 "12V" H 7000 1450 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad" H 7000 1550 50  0001 C CNN
F 3 "" H 7000 1550 50  0001 C CNN
	1    7000 1550
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 12V11
U 1 1 5C46442E
P 7000 1200
F 0 "12V11" H 7000 1300 50  0000 C CNN
F 1 "12V" H 7000 1100 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad" H 7000 1200 50  0001 C CNN
F 3 "" H 7000 1200 50  0001 C CNN
	1    7000 1200
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 12V10
U 1 1 5C464427
P 7000 850
F 0 "12V10" H 7000 950 50  0000 C CNN
F 1 "12V" H 7000 750 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad" H 7000 850 50  0001 C CNN
F 3 "" H 7000 850 50  0001 C CNN
	1    7000 850 
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x06 conn-reg-v-a1
U 1 1 5C46047C
P 2750 2500
F 0 "conn-reg-v-a1" H 2750 2800 50  0000 C CNN
F 1 "conn-reg-v-a" H 2750 2100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 2750 2500 50  0001 C CNN
F 3 "" H 2750 2500 50  0001 C CNN
	1    2750 2500
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 gnd1
U 1 1 5E7B403E
P 6100 850
F 0 "gnd1" H 6100 950 50  0000 C CNN
F 1 "gnd" H 6100 750 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad" H 6100 850 50  0001 C CNN
F 3 "" H 6100 850 50  0001 C CNN
	1    6100 850 
	1    0    0    -1  
$EndComp
Text GLabel 5900 1200 0    60   Input ~ 0
gnd
$Comp
L Conn_01x01 gnd2
U 1 1 5E7B40EE
P 6100 1200
F 0 "gnd2" H 6100 1300 50  0000 C CNN
F 1 "gnd" H 6100 1100 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad" H 6100 1200 50  0001 C CNN
F 3 "" H 6100 1200 50  0001 C CNN
	1    6100 1200
	1    0    0    -1  
$EndComp
Text GLabel 5900 1550 0    60   Input ~ 0
gnd
$Comp
L Conn_01x01 gnd3
U 1 1 5E7B4122
P 6100 1550
F 0 "gnd3" H 6100 1650 50  0000 C CNN
F 1 "gnd" H 6100 1450 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad" H 6100 1550 50  0001 C CNN
F 3 "" H 6100 1550 50  0001 C CNN
	1    6100 1550
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 12V1
U 1 1 5E7B4275
P 8050 850
F 0 "12V1" H 8050 950 50  0000 C CNN
F 1 "12V" H 8050 750 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad" H 8050 850 50  0001 C CNN
F 3 "" H 8050 850 50  0001 C CNN
	1    8050 850 
	1    0    0    -1  
$EndComp
Text GLabel 7850 1200 0    60   Input ~ 0
12V
$Comp
L Conn_01x01 12V2
U 1 1 5E7B44BE
P 8050 1200
F 0 "12V2" H 8050 1300 50  0000 C CNN
F 1 "12V" H 8050 1100 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad" H 8050 1200 50  0001 C CNN
F 3 "" H 8050 1200 50  0001 C CNN
	1    8050 1200
	1    0    0    -1  
$EndComp
Text GLabel 7850 1550 0    60   Input ~ 0
12V
$Comp
L Conn_01x01 12V3
U 1 1 5E7B44F6
P 8050 1550
F 0 "12V3" H 8050 1650 50  0000 C CNN
F 1 "12V" H 8050 1450 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_2.2mm_M2_Pad" H 8050 1550 50  0001 C CNN
F 3 "" H 8050 1550 50  0001 C CNN
	1    8050 1550
	1    0    0    -1  
$EndComp
Text GLabel 2000 1200 2    60   Input ~ 0
gnd
Text GLabel 2900 1050 0    60   Input ~ 0
gnd
$EndSCHEMATC
