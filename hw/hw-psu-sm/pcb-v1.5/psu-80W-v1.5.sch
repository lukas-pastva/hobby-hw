EESchema Schematic File Version 2
LIBS:4xxx
LIBS:4xxx_IEEE
LIBS:74xGxx
LIBS:74xx
LIBS:74xx_IEEE
LIBS:Amplifier_Audio
LIBS:Amplifier_Buffer
LIBS:Amplifier_Current
LIBS:Amplifier_Difference
LIBS:Amplifier_Instrumentation
LIBS:Amplifier_Operational
LIBS:Amplifier_Video
LIBS:Analog
LIBS:Analog_ADC
LIBS:Analog_DAC
LIBS:Analog_Switch
LIBS:Audio
LIBS:Battery_Management
LIBS:Comparator
LIBS:Connector
LIBS:Connector_Generic
LIBS:Connector_Generic_MountingPin
LIBS:Connector_Generic_Shielded
LIBS:Converter_ACDC
LIBS:Converter_DCDC
LIBS:CPLD_Altera
LIBS:CPLD_Xilinx
LIBS:CPU
LIBS:CPU_NXP_6800
LIBS:CPU_NXP_68000
LIBS:CPU_PowerPC
LIBS:Device
LIBS:Diode
LIBS:Diode_Bridge
LIBS:Diode_Laser
LIBS:Display_Character
LIBS:Display_Graphic
LIBS:Driver_Display
LIBS:Driver_FET
LIBS:Driver_LED
LIBS:Driver_Motor
LIBS:Driver_Relay
LIBS:DSP_AnalogDevices
LIBS:DSP_Freescale
LIBS:DSP_Microchip_DSPIC33
LIBS:DSP_Motorola
LIBS:DSP_Texas
LIBS:Filter
LIBS:FPGA_Lattice
LIBS:FPGA_Microsemi
LIBS:FPGA_Xilinx
LIBS:FPGA_Xilinx_Artix7
LIBS:FPGA_Xilinx_Kintex7
LIBS:FPGA_Xilinx_Spartan6
LIBS:FPGA_Xilinx_Virtex5
LIBS:FPGA_Xilinx_Virtex6
LIBS:FPGA_Xilinx_Virtex7
LIBS:GPU
LIBS:Graphic
LIBS:Interface
LIBS:Interface_CAN_LIN
LIBS:Interface_CurrentLoop
LIBS:Interface_Ethernet
LIBS:Interface_Expansion
LIBS:Interface_HID
LIBS:Interface_LineDriver
LIBS:Interface_Optical
LIBS:Interface_Telecom
LIBS:Interface_UART
LIBS:Interface_USB
LIBS:Isolator
LIBS:Isolator_Analog
LIBS:Jumper
LIBS:LED
LIBS:Logic_LevelTranslator
LIBS:Logic_Programmable
LIBS:MCU_AnalogDevices
LIBS:MCU_Cypress
LIBS:MCU_Espressif
LIBS:MCU_Intel
LIBS:MCU_Microchip_8051
LIBS:MCU_Microchip_ATmega
LIBS:MCU_Microchip_ATtiny
LIBS:MCU_Microchip_AVR
LIBS:MCU_Microchip_PIC10
LIBS:MCU_Microchip_PIC12
LIBS:MCU_Microchip_PIC16
LIBS:MCU_Microchip_PIC18
LIBS:MCU_Microchip_PIC24
LIBS:MCU_Microchip_PIC32
LIBS:MCU_Microchip_SAME
LIBS:MCU_Microchip_SAML
LIBS:MCU_Module
LIBS:MCU_Nordic
LIBS:MCU_NXP_ColdFire
LIBS:MCU_NXP_HC11
LIBS:MCU_NXP_HC12
LIBS:MCU_NXP_HCS12
LIBS:MCU_NXP_Kinetis
LIBS:MCU_NXP_LPC
LIBS:MCU_NXP_MAC7100
LIBS:MCU_NXP_MCore
LIBS:MCU_NXP_S08
LIBS:MCU_Parallax
LIBS:MCU_SiFive
LIBS:MCU_SiliconLabs
LIBS:MCU_ST_STM8
LIBS:MCU_ST_STM32F0
LIBS:MCU_ST_STM32F1
LIBS:MCU_ST_STM32F2
LIBS:MCU_ST_STM32F3
LIBS:MCU_ST_STM32F4
LIBS:MCU_ST_STM32F7
LIBS:MCU_ST_STM32H7
LIBS:MCU_ST_STM32L0
LIBS:MCU_ST_STM32L1
LIBS:MCU_ST_STM32L4
LIBS:MCU_ST_STM32L4+
LIBS:MCU_Texas
LIBS:MCU_Texas_MSP430
LIBS:Mechanical
LIBS:Memory_Controller
LIBS:Memory_EEPROM
LIBS:Memory_EPROM
LIBS:Memory_Flash
LIBS:Memory_NVRAM
LIBS:Memory_RAM
LIBS:Memory_ROM
LIBS:Memory_UniqueID
LIBS:Motor
LIBS:Oscillator
LIBS:Potentiometer_Digital
LIBS:power
LIBS:Power_Management
LIBS:Power_Protection
LIBS:Power_Supervisor
LIBS:pspice
LIBS:Reference_Current
LIBS:Reference_Voltage
LIBS:Regulator_Controller
LIBS:Regulator_Current
LIBS:Regulator_Linear
LIBS:Regulator_SwitchedCapacitor
LIBS:Regulator_Switching
LIBS:Relay
LIBS:Relay_SolidState
LIBS:RF
LIBS:RF_AM_FM
LIBS:RF_Amplifier
LIBS:RF_Bluetooth
LIBS:RF_GPS
LIBS:RF_Mixer
LIBS:RF_Module
LIBS:RF_RFID
LIBS:RF_Switch
LIBS:RF_WiFi
LIBS:RF_ZigBee
LIBS:Sensor
LIBS:Sensor_Audio
LIBS:Sensor_Current
LIBS:Sensor_Gas
LIBS:Sensor_Humidity
LIBS:Sensor_Magnetic
LIBS:Sensor_Motion
LIBS:Sensor_Optical
LIBS:Sensor_Pressure
LIBS:Sensor_Proximity
LIBS:Sensor_Temperature
LIBS:Sensor_Touch
LIBS:Sensor_Voltage
LIBS:Switch
LIBS:Timer
LIBS:Timer_PLL
LIBS:Timer_RTC
LIBS:Transformer
LIBS:Transistor_Array
LIBS:Transistor_BJT
LIBS:Transistor_FET
LIBS:Transistor_IGBT
LIBS:Triac_Thyristor
LIBS:Valve
LIBS:Video
LIBS:psu-small-80W-v1.5-cache
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
Text GLabel 3250 1400 0    60   Input ~ 0
12v-reg
$Comp
L Conn_01x05 front-1
U 1 1 5C6A9679
P 3450 1300
F 0 "front-1" H 3450 1600 50  0000 C CNN
F 1 "front-1" H 3450 1000 50  0000 C CNN
F 2 "psw-library:psw-conn-regulators" H 3450 1300 50  0001 C CNN
F 3 "" H 3450 1300 50  0001 C CNN
	1    3450 1300
	1    0    0    -1  
$EndComp
Text GLabel 4450 1450 0    60   Input ~ 0
12v-reg
$Comp
L Conn_01x05 front-2
U 1 1 5C6A972A
P 4650 1350
F 0 "front-2" H 4650 1650 50  0000 C CNN
F 1 "front-2" H 4650 1050 50  0000 C CNN
F 2 "psw-library:psw-conn-regulators" H 4650 1350 50  0001 C CNN
F 3 "" H 4650 1350 50  0001 C CNN
	1    4650 1350
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 USB1
U 1 1 5C6AA854
P 4800 2550
F 0 "USB1" H 4800 2650 50  0000 C CNN
F 1 "USB" H 4800 2350 50  0000 C CNN
F 2 "psw-library:psw-usb-charger-double" H 4800 2550 50  0001 C CNN
F 3 "" H 4800 2550 50  0001 C CNN
	1    4800 2550
	1    0    0    -1  
$EndComp
Text GLabel 4600 2550 0    60   Input ~ 0
12V
Text GLabel 1850 1450 0    60   Input ~ 0
12V-reg
Text GLabel 1850 1550 0    60   Input ~ 0
gnd-reg
Text GLabel 1850 1650 0    60   Input ~ 0
gnd
Text GLabel 1850 1750 0    60   Input ~ 0
12V
Text GLabel 1850 2050 0    60   Input ~ 0
cc1
Text GLabel 1850 1950 0    60   Input ~ 0
cc2
Text GLabel 1850 1850 0    60   Input ~ 0
cc3
Text GLabel 1850 2350 0    60   Input ~ 0
cv1
Text GLabel 1850 2250 0    60   Input ~ 0
cv2
Text GLabel 1850 2150 0    60   Input ~ 0
cv3
$Comp
L Conn_01x11 stab-big1
U 1 1 5C433A88
P 2050 1950
F 0 "stab-big1" H 2050 2550 50  0000 C CNN
F 1 "stab-big" H 2050 1350 50  0000 C CNN
F 2 "psw-library:psw-reg-big-buck-boost" H 2050 1950 50  0001 C CNN
F 3 "" H 2050 1950 50  0001 C CNN
	1    2050 1950
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 V/A1
U 1 1 5C6AAF85
P 5950 2150
F 0 "V/A1" H 5950 2350 50  0000 C CNN
F 1 "V/A" H 5950 1950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 5950 2150 50  0001 C CNN
F 3 "" H 5950 2150 50  0001 C CNN
	1    5950 2150
	1    0    0    -1  
$EndComp
$Comp
L R F0.5A1
U 1 1 5C6AB327
P 5600 2450
F 0 "F0.5A1" V 5680 2450 50  0000 C CNN
F 1 "R" V 5600 2450 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5530 2450 50  0001 C CNN
F 3 "" H 5600 2450 50  0001 C CNN
	1    5600 2450
	0    1    1    0   
$EndComp
Text GLabel 5450 2250 0    60   Input ~ 0
12V
Text GLabel 5750 2150 0    60   Input ~ 0
12V-reg
Text GLabel 5750 2050 0    60   Input ~ 0
gnd
Text GLabel 4450 1150 0    60   Input ~ 0
cv1
Text GLabel 4450 1250 0    60   Input ~ 0
cv2
Text GLabel 4450 1350 0    60   Input ~ 0
cv3
Text GLabel 3250 1100 0    60   Input ~ 0
cc1
Text GLabel 3250 1200 0    60   Input ~ 0
cc2
Text GLabel 3250 1300 0    60   Input ~ 0
cc3
$Comp
L Conn_01x01 12V1
U 1 1 5C6ABA86
P 3000 2400
F 0 "12V1" H 3000 2500 50  0000 C CNN
F 1 "12V" H 3000 2300 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 3000 2400 50  0001 C CNN
F 3 "" H 3000 2400 50  0001 C CNN
	1    3000 2400
	1    0    0    -1  
$EndComp
Text GLabel 2800 2400 0    60   Input ~ 0
12V
$Comp
L Conn_01x01 gnd1
U 1 1 5C6ABB40
P 3000 2750
F 0 "gnd1" H 3000 2850 50  0000 C CNN
F 1 "gnd" H 3000 2650 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 3000 2750 50  0001 C CNN
F 3 "" H 3000 2750 50  0001 C CNN
	1    3000 2750
	1    0    0    -1  
$EndComp
Text GLabel 2800 2750 0    60   Input ~ 0
gnd
$Comp
L Conn_01x01 gnd-reg1
U 1 1 5C6ABC79
P 3000 3550
F 0 "gnd-reg1" H 3000 3650 50  0000 C CNN
F 1 "gnd-reg" H 3000 3450 50  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 3000 3550 50  0001 C CNN
F 3 "" H 3000 3550 50  0001 C CNN
	1    3000 3550
	1    0    0    -1  
$EndComp
Text GLabel 2800 3550 0    60   Input ~ 0
gnd-reg
Text GLabel 3250 1500 0    60   Input ~ 0
gnd-ammeter
$Comp
L R F0.5A2
U 1 1 5C6AF087
P 5800 2750
F 0 "F0.5A2" V 5880 2750 50  0000 C CNN
F 1 "R" V 5800 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_1206" V 5730 2750 50  0001 C CNN
F 3 "" H 5800 2750 50  0001 C CNN
	1    5800 2750
	0    1    1    0   
$EndComp
Text GLabel 5650 2950 0    60   Input ~ 0
12V
Text GLabel 5950 3050 0    60   Input ~ 0
gnd
$Comp
L Conn_01x02 fan1
U 1 1 5C6AF176
P 6150 2950
F 0 "fan1" H 6150 3050 50  0000 C CNN
F 1 "fan" H 6150 2750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6150 2950 50  0001 C CNN
F 3 "" H 6150 2950 50  0001 C CNN
	1    6150 2950
	1    0    0    -1  
$EndComp
Text GLabel 4600 2650 0    60   Input ~ 0
gnd
Wire Wire Line
	5950 2950 5950 2750
Wire Wire Line
	5650 2750 5650 2950
Wire Wire Line
	5650 2850 5950 2850
Connection ~ 5950 2850
Connection ~ 5650 2850
Wire Wire Line
	5750 2250 5750 2450
Wire Wire Line
	5450 2450 5450 2250
Wire Wire Line
	5450 2350 5750 2350
Connection ~ 5750 2350
Connection ~ 5450 2350
$EndSCHEMATC
