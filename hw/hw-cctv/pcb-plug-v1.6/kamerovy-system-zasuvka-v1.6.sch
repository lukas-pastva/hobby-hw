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
LIBS:kamerovy-system-zasuvka-v1.6-cache
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
Wire Notes Line
	1050 9400 7900 9400
Wire Notes Line
	7900 9400 7900 13450
Wire Notes Line
	7900 13450 1050 13450
Wire Notes Line
	1050 13450 1050 9400
$EndSCHEMATC
