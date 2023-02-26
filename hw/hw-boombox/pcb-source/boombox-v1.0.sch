EESchema Schematic File Version 2
LIBS:74xGxx
LIBS:74xx
LIBS:Audio
LIBS:Battery_Management
LIBS:Device
LIBS:Diode
LIBS:Interface
LIBS:Logic_Programmable
LIBS:Mechanical
LIBS:power
LIBS:Power_Management
LIBS:pspice
LIBS:Triac_Thyristor
LIBS:Video
LIBS:74xgxx
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
LIBS:powerint
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
LIBS:boombox-v1.0-cache
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
Wire Notes Line
	3100 7750 600  7750
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 6037B5DE
P 6400 1950
F 0 "J2" H 6400 2050 50  0000 C CNN
F 1 "5V-BATT" H 6400 1850 50  0000 C CNN
F 2 "psw:psw-kontakt-smd-velky" H 6400 1950 50  0001 C CNN
F 3 "" H 6400 1950 50  0001 C CNN
	1    6400 1950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J3
U 1 1 6037B673
P 6400 1450
F 0 "J3" H 6400 1550 50  0000 C CNN
F 1 "GND-BATT" H 6400 1350 50  0000 C CNN
F 2 "psw:psw-kontakt-smd-velky" H 6400 1450 50  0001 C CNN
F 3 "" H 6400 1450 50  0001 C CNN
	1    6400 1450
	1    0    0    -1  
$EndComp
$Comp
L SW_DIP_x01 SW1
U 1 1 6037B86E
P 4600 1950
F 0 "SW1" H 4600 2100 50  0000 C CNN
F 1 "SW_DIP_x01" H 4600 1800 50  0000 C CNN
F 2 "psw:psw-switch-240V" H 4600 1950 50  0001 C CNN
F 3 "" H 4600 1950 50  0001 C CNN
	1    4600 1950
	1    0    0    -1  
$EndComp
$Comp
L Fuse F1
U 1 1 6037B8B1
P 5800 1950
F 0 "F1" V 5880 1950 50  0000 C CNN
F 1 "Fuse" V 5725 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5730 1950 50  0001 C CNN
F 3 "" H 5800 1950 50  0001 C CNN
	1    5800 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 1950 5950 1950
Wire Wire Line
	6100 1950 6100 1750
Wire Wire Line
	6100 1750 5500 1750
Wire Wire Line
	5500 1750 5500 2700
Wire Wire Line
	4900 1950 5650 1950
Connection ~ 6100 1950
Connection ~ 5500 1950
$Comp
L Conn_01x04 J1
U 1 1 6037B951
P 2900 2050
F 0 "J1" H 2900 2250 50  0000 C CNN
F 1 "boost" H 2900 1750 50  0000 C CNN
F 2 "psw:psw-dc-dc-lm2596-HOLE" H 2900 2050 50  0001 C CNN
F 3 "" H 2900 2050 50  0001 C CNN
	1    2900 2050
	-1   0    0    1   
$EndComp
$Comp
L Conn_01x04 J4
U 1 1 6037BA58
P 2900 2800
F 0 "J4" H 2900 3000 50  0000 C CNN
F 1 "charger" H 2900 2500 50  0000 C CNN
F 2 "psw:psw-charger-18650-usb-c" H 2900 2800 50  0001 C CNN
F 3 "" H 2900 2800 50  0001 C CNN
	1    2900 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 1950 4050 1950
Wire Wire Line
	4050 1950 4050 2150
Wire Wire Line
	4050 2150 3100 2150
Wire Wire Line
	6200 1450 3950 1450
Wire Wire Line
	3950 1450 3950 2600
Wire Wire Line
	3950 2050 3100 2050
Wire Wire Line
	5500 2700 3100 2700
Wire Wire Line
	3950 2600 3100 2600
Connection ~ 3950 2050
$Comp
L Conn_01x06 J5
U 1 1 6037BC88
P 2900 1300
F 0 "J5" H 2900 1600 50  0000 C CNN
F 1 "amp" H 2900 900 50  0000 C CNN
F 2 "psw:psw-d-class-amp-bluetooth" H 2900 1300 50  0001 C CNN
F 3 "" H 2900 1300 50  0001 C CNN
	1    2900 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3100 1950 3300 1950
Wire Wire Line
	3300 1950 3300 1400
Wire Wire Line
	3300 1400 3100 1400
Wire Wire Line
	3100 1850 3200 1850
Wire Wire Line
	3200 1850 3200 1500
Wire Wire Line
	3200 1500 3100 1500
NoConn ~ 3100 1000
NoConn ~ 3100 1100
NoConn ~ 3100 1200
NoConn ~ 3100 1300
NoConn ~ 3100 2800
NoConn ~ 3100 2900
$EndSCHEMATC
