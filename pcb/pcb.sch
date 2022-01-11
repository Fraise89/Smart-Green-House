EESchema Schematic File Version 4
EELAYER 30 0
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
L power:+5V #PWR?
U 1 1 61A8B6F5
P 3600 700
F 0 "#PWR?" H 3600 550 50  0001 C CNN
F 1 "+5V" H 3615 873 50  0000 C CNN
F 2 "" H 3600 700 50  0001 C CNN
F 3 "" H 3600 700 50  0001 C CNN
	1    3600 700 
	1    0    0    -1  
$EndComp
NoConn ~ 850  1700
NoConn ~ 850  1800
NoConn ~ 850  1900
NoConn ~ 850  2100
NoConn ~ 850  2300
NoConn ~ 850  2200
NoConn ~ 850  2500
NoConn ~ 850  2600
NoConn ~ 850  2700
NoConn ~ 850  2800
NoConn ~ 850  2900
NoConn ~ 850  3000
NoConn ~ 2450 3100
NoConn ~ 2450 3000
NoConn ~ 2450 2800
NoConn ~ 2450 2700
NoConn ~ 2450 2600
NoConn ~ 2450 2500
NoConn ~ 2450 2400
NoConn ~ 2450 2200
NoConn ~ 2450 2100
NoConn ~ 2450 2000
NoConn ~ 2450 1800
NoConn ~ 2450 1700
NoConn ~ 2450 1500
NoConn ~ 2450 1400
$Comp
L 2088RGB-5:2088RGB-5 U?
U 1 1 61A7ACE9
P 7100 1200
F 0 "U?" H 7125 1265 50  0000 C CNN
F 1 "2088RGB-5" H 7125 1174 50  0000 C CNN
F 2 "" H 7100 1200 50  0001 C CNN
F 3 "" H 7100 1200 50  0001 C CNN
	1    7100 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 61A7FB7A
P 8250 3350
F 0 "R1" H 8320 3396 50  0000 L CNN
F 1 "220" H 8320 3305 50  0000 L CNN
F 2 "" V 8180 3350 50  0001 C CNN
F 3 "~" H 8250 3350 50  0001 C CNN
	1    8250 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	7950 1850 7950 1950
Connection ~ 7950 1950
Wire Wire Line
	7950 1950 7950 2050
Connection ~ 7950 2050
Wire Wire Line
	7950 2050 7950 2150
Connection ~ 7950 2150
Wire Wire Line
	7950 2150 7950 2250
Connection ~ 7950 2250
Wire Wire Line
	7950 2250 7950 2350
Connection ~ 7950 2350
Wire Wire Line
	7950 2350 7950 2450
Connection ~ 7950 2450
Wire Wire Line
	7950 2450 7950 2550
Wire Wire Line
	6300 1450 6300 1550
Connection ~ 6300 1550
Wire Wire Line
	6300 1550 6300 1650
Connection ~ 6300 1650
Wire Wire Line
	6300 1650 6300 1750
Connection ~ 6300 1750
Wire Wire Line
	6300 1750 6300 1850
Connection ~ 6300 1850
Wire Wire Line
	6300 1850 6300 1950
Connection ~ 6300 1950
Wire Wire Line
	6300 1950 6300 2050
Connection ~ 6300 2050
Wire Wire Line
	6300 2050 6300 2150
$Comp
L Device:R R?
U 1 1 61A9323F
P 6550 3700
F 0 "R?" H 6480 3654 50  0000 R CNN
F 1 "47" H 6480 3745 50  0000 R CNN
F 2 "" V 6480 3700 50  0001 C CNN
F 3 "~" H 6550 3700 50  0001 C CNN
	1    6550 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 2950 6300 2850
Connection ~ 6300 2350
Wire Wire Line
	6300 2350 6300 2250
Connection ~ 6300 2450
Wire Wire Line
	6300 2450 6300 2350
Connection ~ 6300 2550
Wire Wire Line
	6300 2550 6300 2450
Connection ~ 6300 2650
Wire Wire Line
	6300 2650 6300 2550
Connection ~ 6300 2750
Wire Wire Line
	6300 2750 6300 2650
Connection ~ 6300 2850
Wire Wire Line
	6300 2850 6300 2750
Wire Wire Line
	6300 2950 6150 2950
Connection ~ 6300 2950
Wire Wire Line
	7950 2950 7950 2850
Connection ~ 7950 2750
Wire Wire Line
	7950 2750 7950 2650
Connection ~ 7950 2850
Wire Wire Line
	7950 2850 7950 2750
Wire Wire Line
	7950 1450 7950 1550
Connection ~ 7950 1550
Wire Wire Line
	7950 1550 7950 1650
Connection ~ 7950 1650
Wire Wire Line
	7950 1650 7950 1750
Wire Wire Line
	7950 2650 8050 2650
Wire Wire Line
	8050 2650 8050 1750
Wire Wire Line
	8050 1750 7950 1750
Connection ~ 7950 2650
Connection ~ 7950 1750
Wire Wire Line
	8200 2900 8200 3150
Wire Wire Line
	8200 3150 6550 3150
Wire Wire Line
	6150 3150 6150 2950
Wire Wire Line
	8200 2150 8200 1200
Wire Wire Line
	8200 1200 6300 1200
Wire Wire Line
	6300 1200 6300 1450
Connection ~ 6300 1450
$Comp
L 2088RGB-5:PiFace_Relay_Extra U?
U 1 1 61B72DC7
P 3700 4150
F 0 "U?" H 3725 4175 50  0000 C CNN
F 1 "PiFace_Relay_Extra" H 3725 4084 50  0000 C CNN
F 2 "" H 3700 4150 50  0001 C CNN
F 3 "" H 3700 4150 50  0001 C CNN
	1    3700 4150
	1    0    0    -1  
$EndComp
$Comp
L 2088RGB-5:2088RGB-5 U?
U 1 1 61AA424E
P 9300 1200
F 0 "U?" H 9325 1265 50  0000 C CNN
F 1 "2088RGB-5" H 9325 1174 50  0000 C CNN
F 2 "" H 9300 1200 50  0001 C CNN
F 3 "" H 9300 1200 50  0001 C CNN
	1    9300 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1750 10150 1650
Wire Wire Line
	10150 1650 10150 1550
Connection ~ 10150 1550
Wire Wire Line
	10150 1550 10150 1450
Wire Wire Line
	10150 1250 10150 1450
Connection ~ 10150 1650
Wire Wire Line
	10150 2950 10150 2850
Wire Wire Line
	10150 2850 10150 2750
Connection ~ 10150 2750
Wire Wire Line
	10150 2750 10150 2700
Connection ~ 10150 2850
Connection ~ 10150 1750
Connection ~ 10150 1450
Wire Wire Line
	10150 2550 10150 2450
Wire Wire Line
	10150 2450 10150 2400
Connection ~ 10150 1950
Wire Wire Line
	10150 1950 10150 1850
Wire Wire Line
	10150 2050 10150 1950
Connection ~ 10150 2050
Connection ~ 10150 2150
Wire Wire Line
	10150 2150 10150 2050
Wire Wire Line
	10150 2250 10150 2150
Connection ~ 10150 2250
Connection ~ 10150 2350
Wire Wire Line
	10150 2350 10150 2250
Wire Wire Line
	10150 2400 10150 2350
Connection ~ 10150 2450
Wire Wire Line
	8500 1450 8500 1550
Wire Wire Line
	8500 1550 8500 1650
Connection ~ 8500 1550
Connection ~ 8500 1650
Wire Wire Line
	8500 1650 8500 1750
Wire Wire Line
	8500 1750 8500 1850
Connection ~ 8500 1750
Connection ~ 8500 1850
Wire Wire Line
	8500 1850 8500 1950
Wire Wire Line
	8500 1950 8500 2050
Connection ~ 8500 1950
Connection ~ 8500 2050
Wire Wire Line
	8500 2050 8500 2150
Wire Wire Line
	8500 2250 8500 2350
Wire Wire Line
	8500 2350 8500 2450
Connection ~ 8500 2350
Connection ~ 8500 2450
Wire Wire Line
	8500 2450 8500 2550
Wire Wire Line
	8500 2550 8500 2650
Connection ~ 8500 2550
Connection ~ 8500 2650
Wire Wire Line
	8500 2650 8500 2750
Wire Wire Line
	8500 2750 8500 2850
Connection ~ 8500 2750
Connection ~ 8500 2850
Wire Wire Line
	8500 2850 8500 2900
Connection ~ 8500 2150
Wire Wire Line
	10300 3200 8250 3200
Wire Wire Line
	10300 2400 10300 3200
Wire Wire Line
	8500 2150 8200 2150
Connection ~ 10150 2400
Wire Wire Line
	10150 2400 10300 2400
Wire Wire Line
	8500 2900 8500 2950
Connection ~ 8500 2900
Wire Wire Line
	8500 2900 8200 2900
Wire Wire Line
	10150 2700 10150 2650
Connection ~ 10150 2700
Wire Wire Line
	10250 1750 10150 1750
Wire Wire Line
	10250 2700 10250 1750
Wire Wire Line
	10150 2700 10250 2700
Text GLabel 850  1400 0    50   Input ~ 0
Rx-Tx
Text GLabel 3200 1900 0    50   Input ~ 0
Rx-Tx
Text GLabel 850  1500 0    50   Input ~ 0
Tx-Rx
Text GLabel 3200 1800 0    50   Input ~ 0
Tx-Rx
Text GLabel 3200 2900 0    50   Input ~ 0
Color
Wire Wire Line
	6550 3150 6550 3250
$Comp
L Device:R R?
U 1 1 61A921B2
P 6550 3400
F 0 "R?" H 6620 3446 50  0000 L CNN
F 1 "47" H 6620 3355 50  0000 L CNN
F 2 "" V 6480 3400 50  0001 C CNN
F 3 "~" H 6550 3400 50  0001 C CNN
	1    6550 3400
	1    0    0    -1  
$EndComp
Connection ~ 6550 3150
Wire Wire Line
	6550 3150 6150 3150
Text GLabel 6550 3850 3    50   Input ~ 0
Color
Connection ~ 6300 2150
Text GLabel 5650 2150 0    50   Input ~ 0
Color
Wire Wire Line
	6250 2150 6300 2150
$Comp
L Device:R R?
U 1 1 61A8BDF9
P 6100 2150
F 0 "R?" V 6307 2150 50  0000 C CNN
F 1 "47" V 6216 2150 50  0000 C CNN
F 2 "" V 6030 2150 50  0001 C CNN
F 3 "~" H 6100 2150 50  0001 C CNN
	1    6100 2150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 61A88411
P 5800 2150
F 0 "R2" V 6007 2150 50  0000 C CNN
F 1 "100" V 5916 2150 50  0000 C CNN
F 2 "" V 5730 2150 50  0001 C CNN
F 3 "~" H 5800 2150 50  0001 C CNN
	1    5800 2150
	0    -1   -1   0   
$EndComp
Text GLabel 8250 3500 3    50   Input ~ 0
Color
Wire Wire Line
	8250 3200 8250 2350
Wire Wire Line
	8250 2350 7950 2350
Connection ~ 8250 3200
$Comp
L 2088RGB-5:VMA311 U?
U 1 1 61AEFC0C
P 1750 4350
F 0 "U?" H 1878 4151 50  0000 L CNN
F 1 "VMA311" H 1878 4060 50  0000 L CNN
F 2 "" H 1750 4350 50  0001 C CNN
F 3 "" H 1750 4350 50  0001 C CNN
	1    1750 4350
	1    0    0    -1  
$EndComp
$Comp
L 2088RGB-5:SSHU001 U?
U 1 1 61B0DF58
P 1750 4050
F 0 "U?" H 1928 3901 50  0000 L CNN
F 1 "SSHU001" H 1928 3810 50  0000 L CNN
F 2 "" H 1750 4050 50  0001 C CNN
F 3 "" H 1750 4050 50  0001 C CNN
	1    1750 4050
	1    0    0    -1  
$EndComp
Text GLabel 3300 1400 0    50   Input ~ 0
Vcc
Wire Wire Line
	3600 1400 3300 1400
Text GLabel 1450 750  1    50   Input ~ 0
Vcc
Wire Wire Line
	1450 750  1450 1000
NoConn ~ 1550 1000
NoConn ~ 1750 1000
NoConn ~ 1850 1000
Text GLabel 3600 700  3    50   Input ~ 0
Vcc
$Comp
L power:GND #PWR?
U 1 1 61A8A9F2
P 3400 750
F 0 "#PWR?" H 3400 500 50  0001 C CNN
F 1 "GND" H 3405 577 50  0000 C CNN
F 2 "" H 3400 750 50  0001 C CNN
F 3 "" H 3400 750 50  0001 C CNN
	1    3400 750 
	1    0    0    -1  
$EndComp
Text GLabel 1550 4700 0    50   Input ~ 0
Gnd
Text GLabel 1550 4350 0    50   Input ~ 0
Gnd
Text GLabel 1250 3600 3    50   Input ~ 0
Gnd
NoConn ~ 4200 1800
NoConn ~ 4200 3100
NoConn ~ 4200 3200
NoConn ~ 4200 2900
NoConn ~ 4200 2800
NoConn ~ 4200 2700
NoConn ~ 4200 2600
Text GLabel 1550 4250 0    50   Input ~ 0
Vcc
Text GLabel 1550 4600 0    50   Input ~ 0
Vcc
Text GLabel 8050 2250 2    50   Input ~ 0
Vcc
Text GLabel 3350 4650 0    50   Input ~ 0
PumpOn
Text GLabel 1750 6050 3    50   Input ~ 0
Gnd
Text GLabel 1750 5150 1    50   Input ~ 0
Vcc
$Comp
L Transistor_FET:IRF540N Q?
U 1 1 61B57A13
P 1650 5350
F 0 "Q?" H 1854 5396 50  0000 L CNN
F 1 "IRF540N" H 1854 5305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1900 5275 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 1650 5350 50  0001 L CNN
	1    1650 5350
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 61B2EEC7
P 1750 5750
F 0 "M?" H 1908 5746 50  0000 L CNN
F 1 "Motor_DC" H 1908 5655 50  0000 L CNN
F 2 "" H 1750 5660 50  0001 C CNN
F 3 "~" H 1750 5660 50  0001 C CNN
	1    1750 5750
	1    0    0    -1  
$EndComp
Text GLabel 3200 2800 0    50   Input ~ 0
VentilatorOn
Text GLabel 1450 5350 0    50   Input ~ 0
VentilatorOn
Text GLabel 3200 2600 0    50   Input ~ 0
PumpOn
Text GLabel 1550 4150 0    50   Input ~ 0
GroundHumidityOn
Text GLabel 4200 2400 2    50   Input ~ 0
GroundHumidityOn
Text GLabel 4200 2500 2    50   Input ~ 0
HumidityOn
Text GLabel 1550 4500 0    50   Input ~ 0
HumidityOn
Text GLabel 3350 4850 0    50   Input ~ 0
Vcc
Text GLabel 3350 4750 0    50   Input ~ 0
Gnd
Text GLabel 4100 5350 2    50   Input ~ 0
Vcc
Text Notes 8550 7500 2    50   ~ 0
Smart green house schematic\n
Text Notes 8800 6700 2    50   ~ 0
Schematic for the smart green house project
Text GLabel 4100 5450 2    50   Input ~ 0
PumpOut
NoConn ~ 4100 4350
NoConn ~ 4100 4450
NoConn ~ 4100 4550
NoConn ~ 4100 4650
NoConn ~ 4100 4750
NoConn ~ 4100 4850
NoConn ~ 4100 4950
NoConn ~ 4100 5050
NoConn ~ 4100 5150
NoConn ~ 4100 5250
NoConn ~ 3350 4350
NoConn ~ 3350 4450
NoConn ~ 3350 4550
NoConn ~ 3350 4950
NoConn ~ 3350 5050
NoConn ~ 3350 5150
NoConn ~ 3350 5250
NoConn ~ 3350 5350
NoConn ~ 3350 5450
NoConn ~ 3350 5550
NoConn ~ 3350 5650
NoConn ~ 3350 5750
NoConn ~ 3350 5850
NoConn ~ 3200 3100
NoConn ~ 3200 3000
NoConn ~ 3200 2700
NoConn ~ 3200 2500
NoConn ~ 3200 2400
NoConn ~ 3200 2300
NoConn ~ 3200 2200
NoConn ~ 3200 2100
NoConn ~ 3200 2000
NoConn ~ 3800 1400
NoConn ~ 3900 1400
$Comp
L Connector:Raspberry_Pi_2_3 J1
U 1 1 61A783AB
P 1650 2300
F 0 "J1" H 1650 3781 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 1650 3690 50  0000 C CNN
F 2 "" H 1650 2300 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 1650 2300 50  0001 C CNN
	1    1650 2300
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 61A7ABFD
P 3700 2400
F 0 "A1" H 3700 3581 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 3700 3490 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 3700 2400 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 3700 2400 50  0001 C CNN
	1    3700 2400
	1    0    0    -1  
$EndComp
Text GLabel 3600 3500 3    50   Input ~ 0
Gnd
NoConn ~ 3800 3500
NoConn ~ 3700 3500
NoConn ~ 1950 3600
NoConn ~ 1850 3600
NoConn ~ 1750 3600
NoConn ~ 1650 3600
NoConn ~ 1550 3600
NoConn ~ 1450 3600
NoConn ~ 1350 3600
Text GLabel 3400 750  1    50   Input ~ 0
Gnd
NoConn ~ 4200 2200
NoConn ~ 4200 2000
Text Notes 7750 900  0    157  ~ 0
RGB Matrix
Text Notes 3400 6400 0    157  ~ 0
RELAY\n
Text Notes 1250 6550 0    157  ~ 0
Ventilator\n
Text GLabel 10150 1250 1    50   Input ~ 0
Vcc
Text Notes 1300 3950 0    79   ~ 0
Ground Humidity
Text Notes 1050 4900 0    79   ~ 0
Humidity & temperature
$EndSCHEMATC
