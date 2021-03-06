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
P 6350 2800
F 0 "#PWR?" H 6350 2650 50  0001 C CNN
F 1 "+5V" H 6365 2973 50  0000 C CNN
F 2 "" H 6350 2800 50  0001 C CNN
F 3 "" H 6350 2800 50  0001 C CNN
	1    6350 2800
	1    0    0    -1  
$EndComp
$Comp
L 2088RGB-5:2088RGB-5 U?
U 1 1 61A7ACE9
P 4550 3700
F 0 "U?" H 4575 3765 50  0000 C CNN
F 1 "2088RGB-5" H 4575 3674 50  0000 C CNN
F 2 "" H 4550 3700 50  0001 C CNN
F 3 "" H 4550 3700 50  0001 C CNN
	1    4550 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 61A7FB7A
P 5700 5850
F 0 "R1" H 5770 5896 50  0000 L CNN
F 1 "220" H 5770 5805 50  0000 L CNN
F 2 "" V 5630 5850 50  0001 C CNN
F 3 "~" H 5700 5850 50  0001 C CNN
	1    5700 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5400 4350 5400 4450
Connection ~ 5400 4450
Wire Wire Line
	5400 4450 5400 4550
Connection ~ 5400 4550
Wire Wire Line
	5400 4550 5400 4650
Connection ~ 5400 4650
Wire Wire Line
	5400 4650 5400 4750
Connection ~ 5400 4750
Wire Wire Line
	5400 4750 5400 4850
Connection ~ 5400 4850
Wire Wire Line
	5400 4850 5400 4950
Connection ~ 5400 4950
Wire Wire Line
	5400 4950 5400 5050
Wire Wire Line
	3750 3950 3750 4050
Connection ~ 3750 4050
Wire Wire Line
	3750 4050 3750 4150
Connection ~ 3750 4150
Wire Wire Line
	3750 4150 3750 4250
Connection ~ 3750 4250
Wire Wire Line
	3750 4250 3750 4350
Connection ~ 3750 4350
Wire Wire Line
	3750 4350 3750 4450
Connection ~ 3750 4450
Wire Wire Line
	3750 4450 3750 4550
Connection ~ 3750 4550
Wire Wire Line
	3750 4550 3750 4650
$Comp
L Device:R R?
U 1 1 61A9323F
P 3100 5850
F 0 "R?" H 3030 5804 50  0000 R CNN
F 1 "47" H 3030 5895 50  0000 R CNN
F 2 "" V 3030 5850 50  0001 C CNN
F 3 "~" H 3100 5850 50  0001 C CNN
	1    3100 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 5450 3750 5350
Connection ~ 3750 4850
Wire Wire Line
	3750 4850 3750 4750
Connection ~ 3750 4950
Wire Wire Line
	3750 4950 3750 4850
Connection ~ 3750 5050
Wire Wire Line
	3750 5050 3750 4950
Connection ~ 3750 5150
Wire Wire Line
	3750 5150 3750 5050
Connection ~ 3750 5250
Wire Wire Line
	3750 5250 3750 5150
Connection ~ 3750 5350
Wire Wire Line
	3750 5350 3750 5250
Wire Wire Line
	3750 5450 3600 5450
Connection ~ 3750 5450
Wire Wire Line
	5400 5450 5400 5350
Connection ~ 5400 5250
Wire Wire Line
	5400 5250 5400 5150
Connection ~ 5400 5350
Wire Wire Line
	5400 5350 5400 5250
Wire Wire Line
	5400 3950 5400 4050
Connection ~ 5400 4050
Wire Wire Line
	5400 4050 5400 4150
Connection ~ 5400 4150
Wire Wire Line
	5400 4150 5400 4250
Wire Wire Line
	5400 5150 5500 5150
Wire Wire Line
	5500 5150 5500 4250
Wire Wire Line
	5500 4250 5400 4250
Connection ~ 5400 5150
Connection ~ 5400 4250
Wire Wire Line
	5650 5400 5650 5650
Wire Wire Line
	5650 5650 4000 5650
Wire Wire Line
	3600 5650 3600 5600
Wire Wire Line
	5650 4650 5650 3700
Wire Wire Line
	5650 3700 3750 3700
Wire Wire Line
	3750 3700 3750 3950
Connection ~ 3750 3950
$Comp
L 2088RGB-5:PiFace_Relay_Extra U?
U 1 1 61B72DC7
P 1650 4400
F 0 "U?" H 1675 4425 50  0000 C CNN
F 1 "PiFace_Relay_Extra" H 1675 4334 50  0000 C CNN
F 2 "" H 1650 4400 50  0001 C CNN
F 3 "" H 1650 4400 50  0001 C CNN
	1    1650 4400
	1    0    0    -1  
$EndComp
$Comp
L 2088RGB-5:2088RGB-5 U?
U 1 1 61AA424E
P 6750 3700
F 0 "U?" H 6775 3765 50  0000 C CNN
F 1 "2088RGB-5" H 6775 3674 50  0000 C CNN
F 2 "" H 6750 3700 50  0001 C CNN
F 3 "" H 6750 3700 50  0001 C CNN
	1    6750 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4250 7600 4150
Wire Wire Line
	7600 4150 7600 4050
Connection ~ 7600 4050
Wire Wire Line
	7600 4050 7600 3950
Wire Wire Line
	7600 3750 7600 3950
Connection ~ 7600 4150
Wire Wire Line
	7600 5450 7600 5350
Wire Wire Line
	7600 5350 7600 5250
Connection ~ 7600 5250
Wire Wire Line
	7600 5250 7600 5200
Connection ~ 7600 5350
Connection ~ 7600 4250
Connection ~ 7600 3950
Wire Wire Line
	7600 5050 7600 4950
Wire Wire Line
	7600 4950 7600 4900
Connection ~ 7600 4450
Wire Wire Line
	7600 4450 7600 4350
Wire Wire Line
	7600 4550 7600 4450
Connection ~ 7600 4550
Connection ~ 7600 4650
Wire Wire Line
	7600 4650 7600 4550
Wire Wire Line
	7600 4750 7600 4650
Connection ~ 7600 4750
Connection ~ 7600 4850
Wire Wire Line
	7600 4850 7600 4750
Wire Wire Line
	7600 4900 7600 4850
Connection ~ 7600 4950
Wire Wire Line
	5950 3950 5950 4050
Wire Wire Line
	5950 4050 5950 4150
Connection ~ 5950 4050
Connection ~ 5950 4150
Wire Wire Line
	5950 4150 5950 4250
Wire Wire Line
	5950 4250 5950 4350
Connection ~ 5950 4250
Connection ~ 5950 4350
Wire Wire Line
	5950 4350 5950 4450
Wire Wire Line
	5950 4450 5950 4550
Connection ~ 5950 4450
Connection ~ 5950 4550
Wire Wire Line
	5950 4550 5950 4650
Wire Wire Line
	5950 4750 5950 4850
Wire Wire Line
	5950 4850 5950 4950
Connection ~ 5950 4850
Connection ~ 5950 4950
Wire Wire Line
	5950 4950 5950 5050
Wire Wire Line
	5950 5050 5950 5150
Connection ~ 5950 5050
Connection ~ 5950 5150
Wire Wire Line
	5950 5150 5950 5250
Wire Wire Line
	5950 5250 5950 5350
Connection ~ 5950 5250
Connection ~ 5950 5350
Wire Wire Line
	5950 5350 5950 5400
Connection ~ 5950 4650
Wire Wire Line
	7750 5700 5700 5700
Wire Wire Line
	7750 4900 7750 5700
Wire Wire Line
	5950 4650 5650 4650
Connection ~ 7600 4900
Wire Wire Line
	7600 4900 7750 4900
Wire Wire Line
	5950 5400 5950 5450
Connection ~ 5950 5400
Wire Wire Line
	5950 5400 5650 5400
Wire Wire Line
	7600 5200 7600 5150
Connection ~ 7600 5200
Wire Wire Line
	7700 4250 7600 4250
Wire Wire Line
	7700 5200 7700 4250
Wire Wire Line
	7600 5200 7700 5200
Text GLabel 3450 1300 0    50   Input ~ 0
Rx-Tx
Text GLabel 3450 1200 0    50   Input ~ 0
Tx-Rx
Text GLabel 3450 2300 0    50   Input ~ 0
Color
Wire Wire Line
	4000 5650 4000 5750
$Comp
L Device:R R?
U 1 1 61A921B2
P 3450 5600
F 0 "R?" H 3520 5646 50  0000 L CNN
F 1 "47" H 3520 5555 50  0000 L CNN
F 2 "" V 3380 5600 50  0001 C CNN
F 3 "~" H 3450 5600 50  0001 C CNN
	1    3450 5600
	0    -1   -1   0   
$EndComp
Connection ~ 4000 5650
Wire Wire Line
	4000 5650 3600 5650
Text GLabel 3100 6100 3    50   Input ~ 0
Color
Connection ~ 3750 4650
Text GLabel 3100 4650 0    50   Input ~ 0
Color
Wire Wire Line
	3700 4650 3750 4650
$Comp
L Device:R R?
U 1 1 61A8BDF9
P 3550 4650
F 0 "R?" V 3757 4650 50  0000 C CNN
F 1 "47" V 3666 4650 50  0000 C CNN
F 2 "" V 3480 4650 50  0001 C CNN
F 3 "~" H 3550 4650 50  0001 C CNN
	1    3550 4650
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 61A88411
P 3250 4650
F 0 "R2" V 3457 4650 50  0000 C CNN
F 1 "100" V 3366 4650 50  0000 C CNN
F 2 "" V 3180 4650 50  0001 C CNN
F 3 "~" H 3250 4650 50  0001 C CNN
	1    3250 4650
	0    -1   -1   0   
$EndComp
Text GLabel 5700 6100 3    50   Input ~ 0
Color
Wire Wire Line
	5700 5700 5700 4850
Wire Wire Line
	5700 4850 5400 4850
Connection ~ 5700 5700
$Comp
L 2088RGB-5:VMA311 U?
U 1 1 61AEFC0C
P 1550 1500
F 0 "U?" H 1678 1301 50  0000 L CNN
F 1 "VMA311" H 1678 1210 50  0000 L CNN
F 2 "" H 1550 1500 50  0001 C CNN
F 3 "" H 1550 1500 50  0001 C CNN
	1    1550 1500
	1    0    0    -1  
$EndComp
$Comp
L 2088RGB-5:SSHU001 U?
U 1 1 61B0DF58
P 1600 700
F 0 "U?" H 1778 551 50  0000 L CNN
F 1 "SSHU001" H 1778 460 50  0000 L CNN
F 2 "" H 1600 700 50  0001 C CNN
F 3 "" H 1600 700 50  0001 C CNN
	1    1600 700 
	1    0    0    -1  
$EndComp
Text GLabel 3550 800  0    50   Input ~ 0
Vcc
Wire Wire Line
	3850 800  3550 800 
Text GLabel 6350 2800 3    50   Input ~ 0
Vcc
$Comp
L power:GND #PWR?
U 1 1 61A8A9F2
P 6150 2850
F 0 "#PWR?" H 6150 2600 50  0001 C CNN
F 1 "GND" H 6155 2677 50  0000 C CNN
F 2 "" H 6150 2850 50  0001 C CNN
F 3 "" H 6150 2850 50  0001 C CNN
	1    6150 2850
	1    0    0    -1  
$EndComp
Text GLabel 1350 1850 0    50   Input ~ 0
Gnd
Text GLabel 1400 1000 0    50   Input ~ 0
Gnd
NoConn ~ 4450 1200
NoConn ~ 4450 2500
NoConn ~ 4450 2600
NoConn ~ 4450 2300
NoConn ~ 4450 2200
NoConn ~ 4450 2100
NoConn ~ 4450 2000
Text GLabel 1400 900  0    50   Input ~ 0
Vcc
Text GLabel 1350 1750 0    50   Input ~ 0
Vcc
Text GLabel 5500 4750 2    50   Input ~ 0
Vcc
Text GLabel 1300 4900 0    50   Input ~ 0
PumpOn
Text GLabel 1650 3600 3    50   Input ~ 0
Gnd
Text GLabel 1650 2700 1    50   Input ~ 0
Vcc
$Comp
L Transistor_FET:IRF540N Q?
U 1 1 61B57A13
P 1550 2900
F 0 "Q?" H 1754 2946 50  0000 L CNN
F 1 "IRF540N" H 1754 2855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 1800 2825 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irf540n.pdf" H 1550 2900 50  0001 L CNN
	1    1550 2900
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 61B2EEC7
P 1650 3300
F 0 "M?" H 1808 3296 50  0000 L CNN
F 1 "Motor_DC" H 1808 3205 50  0000 L CNN
F 2 "" H 1650 3210 50  0001 C CNN
F 3 "~" H 1650 3210 50  0001 C CNN
	1    1650 3300
	1    0    0    -1  
$EndComp
Text GLabel 3450 2200 0    50   Input ~ 0
VentilatorOn
Text GLabel 1350 2900 0    50   Input ~ 0
VentilatorOn
Text GLabel 3450 2000 0    50   Input ~ 0
PumpOn
Text GLabel 1400 800  0    50   Input ~ 0
GroundHumidityOn
Text GLabel 4450 1800 2    50   Input ~ 0
GroundHumidityOn
Text GLabel 4450 1900 2    50   Input ~ 0
vmaData
Text GLabel 1350 1650 0    50   Input ~ 0
vmaData
Text GLabel 1300 5100 0    50   Input ~ 0
Vcc
Text GLabel 1300 5000 0    50   Input ~ 0
Gnd
Text GLabel 2050 5600 2    50   Input ~ 0
Vcc
Text Notes 8550 7500 2    50   ~ 0
Smart green house schematic\n
Text Notes 8800 6700 2    50   ~ 0
Schematic for the smart green house project
Text GLabel 2050 5700 2    50   Input ~ 0
PumpOut
NoConn ~ 2050 4600
NoConn ~ 2050 4700
NoConn ~ 2050 4800
NoConn ~ 2050 4900
NoConn ~ 2050 5000
NoConn ~ 2050 5100
NoConn ~ 2050 5200
NoConn ~ 2050 5300
NoConn ~ 2050 5400
NoConn ~ 2050 5500
NoConn ~ 1300 4600
NoConn ~ 1300 4700
NoConn ~ 1300 4800
NoConn ~ 1300 5200
NoConn ~ 1300 5300
NoConn ~ 1300 5400
NoConn ~ 1300 5500
NoConn ~ 1300 5600
NoConn ~ 1300 5700
NoConn ~ 1300 5800
NoConn ~ 1300 5900
NoConn ~ 1300 6000
NoConn ~ 1300 6100
NoConn ~ 3450 2500
NoConn ~ 3450 2400
NoConn ~ 3450 2100
NoConn ~ 3450 1900
NoConn ~ 3450 1800
NoConn ~ 3450 1700
NoConn ~ 3450 1600
NoConn ~ 3450 1500
NoConn ~ 3450 1400
NoConn ~ 4050 800 
NoConn ~ 4150 800 
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 61A7ABFD
P 3950 1800
F 0 "A1" H 3950 2981 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 3950 2890 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 3950 1800 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 3950 1800 50  0001 C CNN
	1    3950 1800
	1    0    0    -1  
$EndComp
Text GLabel 3850 2900 3    50   Input ~ 0
Gnd
NoConn ~ 4050 2900
NoConn ~ 3950 2900
Text GLabel 6150 2850 1    50   Input ~ 0
Gnd
NoConn ~ 4450 1600
NoConn ~ 4450 1400
Text Notes 4150 6250 0    157  ~ 0
RGB Matrix
Text Notes 1350 6650 0    157  ~ 0
RELAY\n
Text Notes 1150 4100 0    157  ~ 0
Ventilator\n
Text GLabel 7600 3750 1    50   Input ~ 0
Vcc
Text Notes 1050 1300 0    79   ~ 0
Ground Humidity
Text Notes 850  2050 0    79   ~ 0
Humidity & temperature
Wire Notes Line
	500  6800 2750 6800
Wire Notes Line
	2750 4300 500  4300
Wire Notes Line
	500  2350 2750 2350
Wire Notes Line
	2750 1450 500  1450
Wire Notes Line
	2750 500  2750 6800
Wire Notes Line
	500  500  500  6800
Text Notes 3650 3350 0    126  ~ 0
Arduino
Wire Notes Line
	5300 500  5300 3500
Wire Notes Line
	500  500  5300 500 
Connection ~ 3600 5600
Wire Wire Line
	3600 5600 3600 5450
Wire Wire Line
	3300 5600 3100 5600
Wire Wire Line
	3100 5600 3100 5700
Wire Wire Line
	5700 6100 5700 6000
Wire Wire Line
	3100 6100 3100 6000
Wire Notes Line
	2750 6450 7950 6450
Wire Notes Line
	7950 6450 7950 3500
Wire Notes Line
	2750 3500 7950 3500
Text Notes 8150 7650 0    59   ~ 0
01/12/2021
$EndSCHEMATC
