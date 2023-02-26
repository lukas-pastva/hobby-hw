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
LIBS:module-ethernet-1.6-cache
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
Text GLabel 3850 3300 2    60   Input ~ 0
eth1-1
Text GLabel 3850 3400 2    60   Input ~ 0
eth1-2
Text GLabel 3350 3300 0    60   Input ~ 0
eth1-3
Text GLabel 3350 3400 0    60   Input ~ 0
eth1-4
Text GLabel 3850 3500 2    60   Input ~ 0
eth2-1
Text GLabel 3850 3600 2    60   Input ~ 0
eth2-2
Text GLabel 3350 3500 0    60   Input ~ 0
eth2-3
Text GLabel 3350 3600 0    60   Input ~ 0
eth2-4
Text GLabel 3850 3700 2    60   Input ~ 0
eth3-1
Text GLabel 3850 3800 2    60   Input ~ 0
eth3-2
Text GLabel 3350 3700 0    60   Input ~ 0
eth3-3
Text GLabel 3350 3800 0    60   Input ~ 0
eth3-4
Text GLabel 3850 3200 2    60   Input ~ 0
eth4-2
Text GLabel 3350 3100 0    60   Input ~ 0
eth4-3
Text GLabel 3350 3200 0    60   Input ~ 0
eth4-4
$Comp
L Conn_01x01 J3
U 1 1 5A9F2F39
P 7300 3400
F 0 "J3" H 7300 3500 50  0000 C CNN
F 1 "5V" H 7300 3300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 7300 3400 50  0001 C CNN
F 3 "" H 7300 3400 50  0001 C CNN
	1    7300 3400
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x01 J5
U 1 1 5A9F2FCC
P 7300 3700
F 0 "J5" H 7300 3800 50  0000 C CNN
F 1 "GND" H 7300 3600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 7300 3700 50  0001 C CNN
F 3 "" H 7300 3700 50  0001 C CNN
	1    7300 3700
	1    0    0    -1  
$EndComp
Text GLabel 3350 1850 0    60   Input ~ 0
gnd
Text GLabel 3350 3000 0    60   Input ~ 0
gnd
Text GLabel 3850 1850 2    60   Input ~ 0
5v
Text GLabel 3850 3000 2    60   Input ~ 0
5v
Text GLabel 3850 3100 2    60   Input ~ 0
eth4-1
Text GLabel 5200 2300 0    60   Input ~ 0
eth1-1
Text GLabel 5700 2300 2    60   Input ~ 0
eth1-2
Text GLabel 5200 2400 0    60   Input ~ 0
eth1-3
Text GLabel 5700 2500 2    60   Input ~ 0
eth1-4
Text GLabel 8800 3350 2    60   Input ~ 0
eth2-4
Text GLabel 5700 3400 2    60   Input ~ 0
eth4-4
Text GLabel 7900 1850 2    60   Input ~ 0
eth6-4
Text GLabel 7900 1100 2    60   Input ~ 0
eth5-4
Text GLabel 8800 3150 2    60   Input ~ 0
eth2-2
Text GLabel 5700 3200 2    60   Input ~ 0
eth4-2
Text GLabel 7900 1650 2    60   Input ~ 0
eth6-2
Text GLabel 7900 900  2    60   Input ~ 0
eth5-2
Text GLabel 8300 3250 0    60   Input ~ 0
eth2-3
Text GLabel 5200 3300 0    60   Input ~ 0
eth4-3
Text GLabel 7400 1750 0    60   Input ~ 0
eth6-3
Text GLabel 3350 2150 0    60   Input ~ 0
eth5-3
Text GLabel 8300 3150 0    60   Input ~ 0
eth2-1
Text GLabel 5200 3200 0    60   Input ~ 0
eth4-1
Text GLabel 7400 1650 0    60   Input ~ 0
eth6-1
Text GLabel 7400 900  0    60   Input ~ 0
eth5-1
Text GLabel 7100 3400 0    60   Input ~ 0
5v
Text GLabel 7100 3700 0    60   Input ~ 0
gnd
$Comp
L Conn_02x09_Odd_Even J2
U 1 1 5AB4CDE9
P 3550 3400
F 0 "J2" H 3600 3900 50  0000 C CNN
F 1 "net" H 3600 2900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x09_Pitch2.54mm" H 3550 3400 50  0001 C CNN
F 3 "" H 3550 3400 50  0001 C CNN
	1    3550 3400
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x09_Odd_Even J1
U 1 1 5AB4D62C
P 3550 2250
F 0 "J1" H 3600 2750 50  0000 C CNN
F 1 "net" H 3600 1750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x09_Pitch2.54mm" H 3550 2250 50  0001 C CNN
F 3 "" H 3550 2250 50  0001 C CNN
	1    3550 2250
	1    0    0    -1  
$EndComp
Text GLabel 7400 1000 0    60   Input ~ 0
eth5-3
Text GLabel 3850 2150 2    60   Input ~ 0
eth5-1
Text GLabel 3850 2250 2    60   Input ~ 0
eth5-2
Text GLabel 3350 2250 0    60   Input ~ 0
eth5-4
Text GLabel 3350 2450 0    60   Input ~ 0
eth6-4
Text GLabel 3850 2450 2    60   Input ~ 0
eth6-2
Text GLabel 3350 2350 0    60   Input ~ 0
eth6-3
Text GLabel 3850 2350 2    60   Input ~ 0
eth6-1
$Comp
L Conn_02x04_Odd_Even J4
U 1 1 5BC04DFF
P 8550 2550
F 0 "J4" H 8600 2750 50  0000 C CNN
F 1 "e3" H 8600 2250 50  0000 C CNN
F 2 "psw-library:rj-45-big-pins" H 8550 2550 50  0001 C CNN
F 3 "" H 8550 2550 50  0001 C CNN
	1    8550 2550
	1    0    0    -1  
$EndComp
Text GLabel 8350 2450 0    60   Input ~ 0
eth3-1
Text GLabel 8850 2450 2    60   Input ~ 0
eth3-2
Text GLabel 8350 2550 0    60   Input ~ 0
eth3-3
Text GLabel 8850 2650 2    60   Input ~ 0
eth3-4
$Comp
L Conn_02x04_Odd_Even J8
U 1 1 5BC054CE
P 7300 2600
F 0 "J8" H 7350 2800 50  0000 C CNN
F 1 "e7" H 7350 2300 50  0000 C CNN
F 2 "psw-library:rj-45-big-pins" H 7300 2600 50  0001 C CNN
F 3 "" H 7300 2600 50  0001 C CNN
	1    7300 2600
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x04_Odd_Even J11
U 1 1 5BC0600E
P 8500 3250
F 0 "J11" H 8550 3450 50  0000 C CNN
F 1 "e2" H 8550 2950 50  0000 C CNN
F 2 "psw-library:rj-45-big-pins" H 8500 3250 50  0001 C CNN
F 3 "" H 8500 3250 50  0001 C CNN
	1    8500 3250
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x04_Odd_Even J6
U 1 1 5BC06FA0
P 5400 2400
F 0 "J6" H 5450 2600 50  0000 C CNN
F 1 "e1" H 5450 2100 50  0000 C CNN
F 2 "psw-library:rj-45-big-pins" H 5400 2400 50  0001 C CNN
F 3 "" H 5400 2400 50  0001 C CNN
	1    5400 2400
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x04_Odd_Even J9
U 1 1 5BC07647
P 7600 1000
F 0 "J9" H 7650 1200 50  0000 C CNN
F 1 "e5" H 7650 700 50  0000 C CNN
F 2 "psw-library:rj-45-big-pins" H 7600 1000 50  0001 C CNN
F 3 "" H 7600 1000 50  0001 C CNN
	1    7600 1000
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x04_Odd_Even J10
U 1 1 5BC078CE
P 7600 1750
F 0 "J10" H 7650 1950 50  0000 C CNN
F 1 "e6" H 7650 1450 50  0000 C CNN
F 2 "psw-library:rj-45-big-pins" H 7600 1750 50  0001 C CNN
F 3 "" H 7600 1750 50  0001 C CNN
	1    7600 1750
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x04_Odd_Even J7
U 1 1 5BC07C33
P 5400 3300
F 0 "J7" H 5450 3500 50  0000 C CNN
F 1 "e6" H 5450 3000 50  0000 C CNN
F 2 "psw-library:rj-45-big-pins" H 5400 3300 50  0001 C CNN
F 3 "" H 5400 3300 50  0001 C CNN
	1    5400 3300
	1    0    0    -1  
$EndComp
Text GLabel 3850 2550 2    60   Input ~ 0
eth7-1
Text GLabel 3850 2650 2    60   Input ~ 0
eth7-2
Text GLabel 3350 2550 0    60   Input ~ 0
eth7-3
Text GLabel 3350 2650 0    60   Input ~ 0
eth7-4
Text GLabel 7100 2500 0    60   Input ~ 0
eth7-1
Text GLabel 7600 2500 2    60   Input ~ 0
eth7-2
Text GLabel 7100 2600 0    60   Input ~ 0
eth7-3
Text GLabel 7600 2700 2    60   Input ~ 0
eth7-4
$EndSCHEMATC
