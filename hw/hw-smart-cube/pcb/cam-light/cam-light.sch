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
LIBS:cam-light-cache
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
L relays:SANYOU_SRD_Form_C K6
U 1 1 5AB046DE
P 4700 3050
F 0 "K6" H 5150 3200 50  0000 L CNN
F 1 "relay" H 5150 3100 50  0000 L CNN
F 2 "Relays_THT:Relay_SPDT_SANYOU_SRD_Series_Form_C" H 6150 3000 50  0001 C CNN
F 3 "" H 4700 3050 50  0001 C CNN
	1    4700 3050
	1    0    0    -1  
$EndComp
$Comp
L transistors:2N3904 Q6
U 1 1 5AB046EA
P 3650 3000
F 0 "Q6" H 3850 3075 50  0000 L CNN
F 1 "T" H 3850 3000 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 3850 2925 50  0001 L CIN
F 3 "" H 3650 3000 50  0001 L CNN
	1    3650 3000
	1    0    0    1   
$EndComp
$Comp
L Device:R R16
U 1 1 5AB046F0
P 3750 2650
F 0 "R16" V 3830 2650 50  0000 C CNN
F 1 "R" V 3750 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 3680 2650 50  0001 C CNN
F 3 "" H 3750 2650 50  0001 C CNN
	1    3750 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:D D5
U 1 1 5AB046F6
P 4050 3050
F 0 "D5" H 4050 3150 50  0000 C CNN
F 1 "D" H 4050 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 4050 3050 50  0001 C CNN
F 3 "" H 4050 3050 50  0001 C CNN
	1    4050 3050
	0    1    1    0   
$EndComp
$Comp
L conn:RJ45 J11
U 1 1 5AB04702
P 6650 1550
F 0 "J11" H 6850 2050 50  0000 C CNN
F 1 "net" H 6500 2050 50  0000 C CNN
F 2 "psw-library:psw-rj45-190128" H 6650 1550 50  0001 C CNN
F 3 "" H 6650 1550 50  0001 C CNN
	1    6650 1550
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F9
U 1 1 5AB04708
P 6400 2650
F 0 "F9" V 6480 2650 50  0000 C CNN
F 1 "fuse1" V 6325 2650 50  0000 C CNN
F 2 "Inductors_SMD:L_1812_HandSoldering" V 6330 2650 50  0001 C CNN
F 3 "" H 6400 2650 50  0001 C CNN
	1    6400 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 2900 4050 2750
Wire Wire Line
	4050 2750 4500 2750
Wire Wire Line
	3750 3350 3750 3200
Wire Wire Line
	4050 3200 4050 3350
Connection ~ 4050 3350
Connection ~ 4500 2750
Text GLabel 6200 1200 0    60   Input ~ 0
eth3-1
Text GLabel 6200 1300 0    60   Input ~ 0
eth3-2
Text GLabel 6200 1400 0    60   Input ~ 0
eth3-3
Text GLabel 6200 1700 0    60   Input ~ 0
eth3-4
Text GLabel 6250 2650 0    60   Input ~ 0
r-out1
Text GLabel 6200 1900 0    60   Input ~ 0
r-out
Text GLabel 6200 1800 0    60   Input ~ 0
r-out
Text Notes 1050 1100 0    118  ~ 24
universal
Wire Wire Line
	3750 3350 4500 3350
Text GLabel 6200 1500 0    60   Input ~ 0
gnd
Text GLabel 6200 1600 0    60   Input ~ 0
gnd
Text GLabel 7000 2100 3    60   Input ~ 0
gnd
Text GLabel 4900 3350 3    60   Input ~ 0
12V
Text GLabel 3450 3000 0    60   Input ~ 0
gnd
Text GLabel 4500 2750 1    60   Input ~ 0
12V
Text GLabel 3750 2500 1    60   Input ~ 0
out
Text GLabel 5000 2750 1    60   Input ~ 0
r-out1
Text GLabel 6550 2650 2    60   Input ~ 0
r-out
$Comp
L LED D1
U 1 1 5C8009EC
P 1200 4200
F 0 "D1" H 1200 4300 50  0000 C CNN
F 1 "LED" H 1200 4100 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 1200 4200 50  0001 C CNN
F 3 "" H 1200 4200 50  0001 C CNN
	1    1200 4200
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 5C800A3C
P 1500 4200
F 0 "D2" H 1500 4300 50  0000 C CNN
F 1 "LED" H 1500 4100 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 1500 4200 50  0001 C CNN
F 3 "" H 1500 4200 50  0001 C CNN
	1    1500 4200
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 5C800AA3
P 1800 4200
F 0 "D3" H 1800 4300 50  0000 C CNN
F 1 "LED" H 1800 4100 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 1800 4200 50  0001 C CNN
F 3 "" H 1800 4200 50  0001 C CNN
	1    1800 4200
	1    0    0    -1  
$EndComp
Text GLabel 1050 4200 0    60   Input ~ 0
gnd
$Comp
L R R1
U 1 1 5C801043
P 2100 4200
F 0 "R1" V 2180 4200 50  0000 C CNN
F 1 "R" V 2100 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2030 4200 50  0001 C CNN
F 3 "" H 2100 4200 50  0001 C CNN
	1    2100 4200
	0    1    1    0   
$EndComp
NoConn ~ 4800 2750
Text GLabel 2350 4200 2    60   Input ~ 0
r-out
Wire Wire Line
	2250 4200 2350 4200
$Comp
L LED D4
U 1 1 5C802AC6
P 1200 4650
F 0 "D4" H 1200 4750 50  0000 C CNN
F 1 "LED" H 1200 4550 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 1200 4650 50  0001 C CNN
F 3 "" H 1200 4650 50  0001 C CNN
	1    1200 4650
	1    0    0    -1  
$EndComp
$Comp
L LED D8
U 1 1 5C802ACC
P 1500 4650
F 0 "D8" H 1500 4750 50  0000 C CNN
F 1 "LED" H 1500 4550 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 1500 4650 50  0001 C CNN
F 3 "" H 1500 4650 50  0001 C CNN
	1    1500 4650
	1    0    0    -1  
$EndComp
$Comp
L LED D11
U 1 1 5C802AD2
P 1800 4650
F 0 "D11" H 1800 4750 50  0000 C CNN
F 1 "LED" H 1800 4550 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 1800 4650 50  0001 C CNN
F 3 "" H 1800 4650 50  0001 C CNN
	1    1800 4650
	1    0    0    -1  
$EndComp
Text GLabel 1050 4650 0    60   Input ~ 0
gnd
$Comp
L R R2
U 1 1 5C802AD9
P 2100 4650
F 0 "R2" V 2180 4650 50  0000 C CNN
F 1 "R" V 2100 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2030 4650 50  0001 C CNN
F 3 "" H 2100 4650 50  0001 C CNN
	1    2100 4650
	0    1    1    0   
$EndComp
Text GLabel 2350 4650 2    60   Input ~ 0
r-out
Wire Wire Line
	2250 4650 2350 4650
$Comp
L LED D6
U 1 1 5C802E45
P 1200 5100
F 0 "D6" H 1200 5200 50  0000 C CNN
F 1 "LED" H 1200 5000 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 1200 5100 50  0001 C CNN
F 3 "" H 1200 5100 50  0001 C CNN
	1    1200 5100
	1    0    0    -1  
$EndComp
$Comp
L LED D9
U 1 1 5C802E4B
P 1500 5100
F 0 "D9" H 1500 5200 50  0000 C CNN
F 1 "LED" H 1500 5000 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 1500 5100 50  0001 C CNN
F 3 "" H 1500 5100 50  0001 C CNN
	1    1500 5100
	1    0    0    -1  
$EndComp
$Comp
L LED D12
U 1 1 5C802E51
P 1800 5100
F 0 "D12" H 1800 5200 50  0000 C CNN
F 1 "LED" H 1800 5000 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 1800 5100 50  0001 C CNN
F 3 "" H 1800 5100 50  0001 C CNN
	1    1800 5100
	1    0    0    -1  
$EndComp
Text GLabel 1050 5100 0    60   Input ~ 0
gnd
$Comp
L R R3
U 1 1 5C802E58
P 2100 5100
F 0 "R3" V 2180 5100 50  0000 C CNN
F 1 "R" V 2100 5100 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2030 5100 50  0001 C CNN
F 3 "" H 2100 5100 50  0001 C CNN
	1    2100 5100
	0    1    1    0   
$EndComp
Text GLabel 2350 5100 2    60   Input ~ 0
r-out
Wire Wire Line
	2250 5100 2350 5100
$Comp
L LED D7
U 1 1 5C802E60
P 1200 5550
F 0 "D7" H 1200 5650 50  0000 C CNN
F 1 "LED" H 1200 5450 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 1200 5550 50  0001 C CNN
F 3 "" H 1200 5550 50  0001 C CNN
	1    1200 5550
	1    0    0    -1  
$EndComp
$Comp
L LED D10
U 1 1 5C802E66
P 1500 5550
F 0 "D10" H 1500 5650 50  0000 C CNN
F 1 "LED" H 1500 5450 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 1500 5550 50  0001 C CNN
F 3 "" H 1500 5550 50  0001 C CNN
	1    1500 5550
	1    0    0    -1  
$EndComp
$Comp
L LED D13
U 1 1 5C802E6C
P 1800 5550
F 0 "D13" H 1800 5650 50  0000 C CNN
F 1 "LED" H 1800 5450 50  0000 C CNN
F 2 "LEDs:LED_D5.0mm" H 1800 5550 50  0001 C CNN
F 3 "" H 1800 5550 50  0001 C CNN
	1    1800 5550
	1    0    0    -1  
$EndComp
Text GLabel 1050 5550 0    60   Input ~ 0
gnd
$Comp
L R R4
U 1 1 5C802E73
P 2100 5550
F 0 "R4" V 2180 5550 50  0000 C CNN
F 1 "R" V 2100 5550 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 2030 5550 50  0001 C CNN
F 3 "" H 2100 5550 50  0001 C CNN
	1    2100 5550
	0    1    1    0   
$EndComp
Text GLabel 2350 5550 2    60   Input ~ 0
r-out
Wire Wire Line
	2250 5550 2350 5550
$EndSCHEMATC
