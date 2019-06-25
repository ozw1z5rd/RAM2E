EESchema Schematic File Version 4
LIBS:ramiie-cache
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
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
L Device:C_Small C4
U 1 1 5C4F04D1
P 7700 6350
F 0 "C4" H 7750 6400 50  0000 L CNN
F 1 "100n" H 7750 6300 50  0000 L CNN
F 2 "stdpads:C_0805" H 7700 6350 50  0001 C CNN
F 3 "~" H 7700 6350 50  0001 C CNN
	1    7700 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5CB37AA0
P 8100 6350
F 0 "C5" H 8150 6400 50  0000 L CNN
F 1 "100n" H 8150 6300 50  0000 L CNN
F 2 "stdpads:C_0805" H 8100 6350 50  0001 C CNN
F 3 "~" H 8100 6350 50  0001 C CNN
	1    8100 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5CB37AAE
P 8900 6350
F 0 "C7" H 8950 6400 50  0000 L CNN
F 1 "100n" H 8950 6300 50  0000 L CNN
F 2 "stdpads:C_0805" H 8900 6350 50  0001 C CNN
F 3 "~" H 8900 6350 50  0001 C CNN
	1    8900 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 6250 8500 6250
Wire Wire Line
	8900 6250 9300 6250
Wire Wire Line
	9300 6450 8900 6450
Wire Wire Line
	8500 6450 8100 6450
Connection ~ 8100 6250
Connection ~ 8100 6450
$Comp
L Device:C_Small C8
U 1 1 5CC13922
P 9300 6350
F 0 "C8" H 9350 6400 50  0000 L CNN
F 1 "100n" H 9350 6300 50  0000 L CNN
F 2 "stdpads:C_0805" H 9300 6350 50  0001 C CNN
F 3 "~" H 9300 6350 50  0001 C CNN
	1    9300 6350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole FID1
U 1 1 5CC47A28
P 5000 6600
F 0 "FID1" H 5100 6646 50  0000 L CNN
F 1 "Fiducial" H 5100 6555 50  0000 L CNN
F 2 "stdpads:Fiducial" H 5000 6600 50  0001 C CNN
F 3 "~" H 5000 6600 50  0001 C CNN
	1    5000 6600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole FID2
U 1 1 5CC4921D
P 5500 6600
F 0 "FID2" H 5600 6646 50  0000 L CNN
F 1 "Fiducial" H 5600 6555 50  0000 L CNN
F 2 "stdpads:Fiducial" H 5500 6600 50  0001 C CNN
F 3 "~" H 5500 6600 50  0001 C CNN
	1    5500 6600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole FID3
U 1 1 5CC4DBD8
P 5000 6800
F 0 "FID3" H 5100 6846 50  0000 L CNN
F 1 "Fiducial" H 5100 6755 50  0000 L CNN
F 2 "stdpads:Fiducial" H 5000 6800 50  0001 C CNN
F 3 "~" H 5000 6800 50  0001 C CNN
	1    5000 6800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole FID4
U 1 1 5CC4DBDF
P 5500 6800
F 0 "FID4" H 5600 6846 50  0000 L CNN
F 1 "Fiducial" H 5600 6755 50  0000 L CNN
F 2 "stdpads:Fiducial" H 5500 6800 50  0001 C CNN
F 3 "~" H 5500 6800 50  0001 C CNN
	1    5500 6800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5CC53461
P 5000 6300
F 0 "H1" H 5100 6351 50  0000 L CNN
F 1 " " H 5100 6260 50  0000 L CNN
F 2 "stdpads:PasteHole_1.1mm_PTH" H 5000 6300 50  0001 C CNN
F 3 "~" H 5000 6300 50  0001 C CNN
	1    5000 6300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5CC795A2
P 5300 6300
F 0 "H2" H 5400 6351 50  0000 L CNN
F 1 " " H 5400 6260 50  0000 L CNN
F 2 "stdpads:PasteHole_1.1mm_PTH" H 5300 6300 50  0001 C CNN
F 3 "~" H 5300 6300 50  0001 C CNN
	1    5300 6300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5CC7E0B9
P 5600 6300
F 0 "H3" H 5700 6351 50  0000 L CNN
F 1 " " H 5700 6260 50  0000 L CNN
F 2 "stdpads:PasteHole_1.1mm_PTH" H 5600 6300 50  0001 C CNN
F 3 "~" H 5600 6300 50  0001 C CNN
	1    5600 6300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5CC7E0C0
P 5900 6300
F 0 "H4" H 6000 6351 50  0000 L CNN
F 1 " " H 6000 6260 50  0000 L CNN
F 2 "stdpads:PasteHole_1.1mm_PTH" H 5900 6300 50  0001 C CNN
F 3 "~" H 5900 6300 50  0001 C CNN
	1    5900 6300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 5CC8BAFD
P 5900 6400
F 0 "#PWR0132" H 5900 6150 50  0001 C CNN
F 1 "GND" H 5905 6227 50  0000 C CNN
F 2 "" H 5900 6400 50  0001 C CNN
F 3 "" H 5900 6400 50  0001 C CNN
	1    5900 6400
	1    0    0    -1  
$EndComp
Connection ~ 5300 6400
Wire Wire Line
	5300 6400 5000 6400
Connection ~ 5600 6400
Wire Wire Line
	5600 6400 5300 6400
Wire Wire Line
	5900 6400 5600 6400
$Comp
L Device:C_Small C6
U 1 1 5D140E8E
P 8500 6350
F 0 "C6" H 8550 6400 50  0000 L CNN
F 1 "100n" H 8550 6300 50  0000 L CNN
F 2 "stdpads:C_0805" H 8500 6350 50  0001 C CNN
F 3 "~" H 8500 6350 50  0001 C CNN
	1    8500 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 6250 7300 6250
Wire Wire Line
	6900 6450 7300 6450
$Comp
L Device:C_Small C3
U 1 1 5D14D1AA
P 7300 6350
F 0 "C3" H 7350 6400 50  0000 L CNN
F 1 "100n" H 7350 6300 50  0000 L CNN
F 2 "stdpads:C_0805" H 7300 6350 50  0001 C CNN
F 3 "~" H 7300 6350 50  0001 C CNN
	1    7300 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5D14D1B0
P 6900 6350
F 0 "C2" H 6950 6400 50  0000 L CNN
F 1 "100n" H 6950 6300 50  0000 L CNN
F 2 "stdpads:C_0805" H 6900 6350 50  0001 C CNN
F 3 "~" H 6900 6350 50  0001 C CNN
	1    6900 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 6450 6900 6450
Wire Wire Line
	6900 6250 6500 6250
Connection ~ 7300 6250
Wire Wire Line
	7300 6250 7700 6250
Connection ~ 7300 6450
Wire Wire Line
	7300 6450 7700 6450
Connection ~ 7700 6250
Wire Wire Line
	7700 6250 8100 6250
Connection ~ 7700 6450
Wire Wire Line
	7700 6450 8100 6450
$Comp
L power:GND #PWR0105
U 1 1 5D1550D4
P 9300 6450
F 0 "#PWR0105" H 9300 6200 50  0001 C CNN
F 1 "GND" H 9300 6300 50  0000 C CNN
F 2 "" H 9300 6450 50  0001 C CNN
F 3 "" H 9300 6450 50  0001 C CNN
	1    9300 6450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x30_Counter_Clockwise J1
U 1 1 5CFB6FE3
P 3900 6250
F 0 "J1" H 3950 7867 50  0000 C CNN
F 1 "AppleIIeAux" H 3950 7776 50  0000 C CNN
F 2 "stdpads:AppleIIeAux_Edge" H 3900 6250 50  0001 C CNN
F 3 "~" H 3900 6250 50  0001 C CNN
	1    3900 6250
	1    0    0    -1  
$EndComp
Text Label 3700 4850 2    50   ~ 0
3.58M
Text Label 3700 4950 2    50   ~ 0
Vid7M
Text Label 3700 5050 2    50   ~ 0
~SYNC~
Text Label 3700 5250 2    50   ~ 0
VC
Text Label 3700 5350 2    50   ~ 0
~C07X~
Text Label 3700 5450 2    50   ~ 0
~WNDW~
Text Label 3700 5550 2    50   ~ 0
SEGA
Text Label 3700 5650 2    50   ~ 0
RA7
Text Label 3700 5750 2    50   ~ 0
RA1
Text Label 3700 5850 2    50   ~ 0
ROMEN1
Text Label 3700 5950 2    50   ~ 0
ROMEN2
Text Label 3700 6050 2    50   ~ 0
RA4
Text Label 3700 6150 2    50   ~ 0
RA5
Text Label 3700 6250 2    50   ~ 0
V7
Text Label 3700 6450 2    50   ~ 0
MD6
Text Label 3700 6550 2    50   ~ 0
V6
Text Label 3700 6750 2    50   ~ 0
MD5
Text Label 3700 6850 2    50   ~ 0
MD4
Text Label 3700 6950 2    50   ~ 0
V4
Text Label 3700 6650 2    50   ~ 0
V5
Text Label 3700 7050 2    50   ~ 0
PHI0
Text Label 3700 7150 2    50   ~ 0
~CLRGAT~
Text Label 3700 7250 2    50   ~ 0
~80VID~
Text Label 3700 7350 2    50   ~ 0
~EN80~
Text Label 3700 7450 2    50   ~ 0
~ALTVID~
Text Label 3700 7550 2    50   ~ 0
~SEROUT~
Text Label 3700 7650 2    50   ~ 0
~ENVID~
$Comp
L power:+5V #PWR0106
U 1 1 5CFDC1A5
P 3700 7750
F 0 "#PWR0106" H 3700 7600 50  0001 C CNN
F 1 "+5V" V 3700 7900 50  0000 L CNN
F 2 "" H 3700 7750 50  0001 C CNN
F 3 "" H 3700 7750 50  0001 C CNN
	1    3700 7750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5CFDD282
P 4200 7750
F 0 "#PWR0107" H 4200 7500 50  0001 C CNN
F 1 "GND" H 4200 7600 50  0000 C CNN
F 2 "" H 4200 7750 50  0001 C CNN
F 3 "" H 4200 7750 50  0001 C CNN
	1    4200 7750
	1    0    0    -1  
$EndComp
Text Label 4200 7650 0    50   ~ 0
14M
Text Label 4200 7550 0    50   ~ 0
~PCAS~
Text Label 4200 7450 0    50   ~ 0
~LDPS~
Text Label 4200 7350 0    50   ~ 0
R~W~80
Text Label 4200 7250 0    50   ~ 0
PHI1
Text Label 4200 7150 0    50   ~ 0
~CASEN~
Text Label 4200 7050 0    50   ~ 0
V3
Text Label 4200 6950 0    50   ~ 0
MD3
Text Label 4200 6850 0    50   ~ 0
MD2
Text Label 4200 6750 0    50   ~ 0
V2
Text Label 4200 6650 0    50   ~ 0
V1
Text Label 4200 6550 0    50   ~ 0
MD1
Text Label 4200 6450 0    50   ~ 0
MD0
Text Label 4200 6350 0    50   ~ 0
V0
Text Label 4200 6250 0    50   ~ 0
RA6
Text Label 4200 6150 0    50   ~ 0
H0
Text Label 4200 6050 0    50   ~ 0
RA3
Text Label 4200 5950 0    50   ~ 0
RA2
Text Label 4200 5850 0    50   ~ 0
AN3
Text Label 4200 5750 0    50   ~ 0
RA0
Text Label 4200 5650 0    50   ~ 0
R~W~
Text Label 4200 5550 0    50   ~ 0
Q3
Text Label 4200 5450 0    50   ~ 0
SEGB
Text Label 4200 5350 0    50   ~ 0
~FRCTXT~
Text Label 4200 5250 0    50   ~ 0
~RA9~
Text Label 4200 5150 0    50   ~ 0
~RA10~
Text Label 4200 5050 0    50   ~ 0
GR
Text Label 4200 4950 0    50   ~ 0
7M
Text Label 4200 4850 0    50   ~ 0
~ENTMG~
Text Label 3700 6350 2    50   ~ 0
MD7
Text Label 5000 7250 0    50   ~ 0
~FRCTXT~
Text Label 5000 7550 0    50   ~ 0
AN3
Connection ~ 6900 6250
Connection ~ 6900 6450
Wire Wire Line
	8500 6250 8900 6250
Connection ~ 8500 6250
Connection ~ 8900 6250
Wire Wire Line
	8500 6450 8900 6450
Connection ~ 8900 6450
Connection ~ 8500 6450
Connection ~ 5900 6400
Text Label 3700 5150 2    50   ~ 0
~PRAS~
Wire Wire Line
	5000 7250 5000 7550
Connection ~ 9300 6450
Wire Wire Line
	5400 1150 5400 1050
Wire Wire Line
	5400 1050 5550 1050
Wire Wire Line
	5550 1150 5700 1150
Wire Wire Line
	5700 1150 5700 1050
Wire Wire Line
	5550 1050 5550 1150
Wire Wire Line
	5700 1050 5850 1050
Wire Wire Line
	6300 1050 6450 1050
Wire Wire Line
	6000 1050 6150 1050
Wire Wire Line
	6150 1050 6150 1150
Wire Wire Line
	6300 1150 6300 1050
Wire Wire Line
	6150 1150 6300 1150
Wire Wire Line
	5850 1050 5850 1150
Wire Wire Line
	6000 1150 6000 1050
Wire Wire Line
	5850 1150 6000 1150
Wire Wire Line
	6450 1150 6600 1150
Wire Wire Line
	6600 1150 6600 1050
Wire Wire Line
	6450 1050 6450 1150
Wire Wire Line
	6600 1050 6750 1050
Wire Wire Line
	6750 1150 6900 1150
Wire Wire Line
	6900 1150 6900 1050
Wire Wire Line
	6750 1050 6750 1150
Wire Wire Line
	6900 1050 7050 1050
Wire Wire Line
	7500 1050 7650 1050
Wire Wire Line
	7200 1050 7350 1050
Wire Wire Line
	7350 1050 7350 1150
Wire Wire Line
	7500 1150 7500 1050
Wire Wire Line
	7350 1150 7500 1150
Wire Wire Line
	7050 1050 7050 1150
Wire Wire Line
	7200 1150 7200 1050
Wire Wire Line
	7050 1150 7200 1150
Wire Wire Line
	7650 1150 7800 1150
Wire Wire Line
	7800 1150 7800 1050
Wire Wire Line
	7650 1050 7650 1150
Wire Wire Line
	7800 1050 7950 1050
Wire Wire Line
	7950 1150 8100 1150
Wire Wire Line
	8100 1150 8100 1050
Wire Wire Line
	7950 1050 7950 1150
Wire Wire Line
	8100 1050 8250 1050
Wire Wire Line
	8700 1050 8850 1050
Wire Wire Line
	8400 1050 8550 1050
Wire Wire Line
	8550 1050 8550 1150
Wire Wire Line
	8700 1150 8700 1050
Wire Wire Line
	8550 1150 8700 1150
Wire Wire Line
	8250 1050 8250 1150
Wire Wire Line
	8400 1150 8400 1050
Wire Wire Line
	8250 1150 8400 1150
Wire Wire Line
	8850 1150 9000 1150
Wire Wire Line
	9000 1150 9000 1050
Wire Wire Line
	8850 1050 8850 1150
Wire Wire Line
	9000 1050 9150 1050
Wire Wire Line
	9150 1150 9300 1150
Wire Wire Line
	9300 1150 9300 1050
Wire Wire Line
	9150 1050 9150 1150
Wire Wire Line
	9300 1050 9450 1050
Wire Wire Line
	9450 1050 9450 1150
Wire Wire Line
	9600 1150 9600 1050
Wire Wire Line
	9450 1150 9600 1150
Text Notes 4950 1150 2    50   ~ 0
C14M
Wire Wire Line
	9900 1050 10050 1050
Wire Wire Line
	9600 1050 9750 1050
Wire Wire Line
	9750 1050 9750 1150
Wire Wire Line
	9900 1150 9900 1050
Wire Wire Line
	9750 1150 9900 1150
Wire Wire Line
	10050 1050 10050 1150
Wire Wire Line
	10050 1150 10100 1150
Text Notes 4950 1300 2    50   ~ 0
PHI0
Wire Wire Line
	5450 1200 5450 1300
Wire Wire Line
	5450 1300 7550 1300
Wire Wire Line
	7550 1300 7550 1200
Wire Wire Line
	7550 1200 9650 1200
Wire Wire Line
	9650 1200 9650 1300
Wire Wire Line
	9650 1300 10100 1300
Text Notes 8200 1450 0    40   ~ 0
10011
Text Notes 7900 1450 0    40   ~ 0
11011
Text Notes 7600 1450 0    40   ~ 0
10111
Text Notes 5500 1450 0    40   ~ 0
01111
Text Notes 5800 1450 0    40   ~ 0
00011
Text Notes 6100 1450 0    40   ~ 0
01011
Text Notes 6400 1450 0    40   ~ 0
00001
Text Notes 6700 1450 0    40   ~ 0
01000
Text Notes 7000 1450 0    40   ~ 0
00000
Text Notes 7300 1450 0    40   ~ 0
01100
Wire Wire Line
	9950 1450 10100 1450
Wire Wire Line
	9950 1350 9950 1450
Wire Wire Line
	9650 1350 9950 1350
Wire Wire Line
	9650 1450 9650 1350
Wire Wire Line
	9350 1450 9650 1450
Wire Wire Line
	9350 1350 9350 1450
Wire Wire Line
	9050 1350 9350 1350
Wire Wire Line
	9050 1450 9050 1350
Wire Wire Line
	8750 1450 9050 1450
Wire Wire Line
	8750 1350 8750 1450
Wire Wire Line
	8450 1350 8750 1350
Wire Wire Line
	8450 1450 8450 1350
Wire Wire Line
	8150 1450 8450 1450
Wire Wire Line
	8150 1350 8150 1450
Wire Wire Line
	7850 1350 8150 1350
Wire Wire Line
	7850 1450 7850 1350
Wire Wire Line
	7550 1450 7850 1450
Wire Wire Line
	7550 1350 7550 1450
Wire Wire Line
	7250 1350 7550 1350
Wire Wire Line
	7250 1450 7250 1350
Wire Wire Line
	6950 1450 7250 1450
Wire Wire Line
	6650 1350 6950 1350
Wire Wire Line
	6650 1450 6650 1350
Wire Wire Line
	6350 1450 6650 1450
Wire Wire Line
	6350 1350 6350 1450
Wire Wire Line
	6050 1350 6350 1350
Wire Wire Line
	6050 1450 6050 1350
Wire Wire Line
	5750 1450 6050 1450
Wire Wire Line
	5750 1350 5750 1450
Wire Wire Line
	5450 1350 5750 1350
Wire Wire Line
	5450 1450 5450 1350
Text Notes 4950 1450 2    50   ~ 0
C7M
Wire Wire Line
	6950 1350 6950 1450
Text Notes 8500 1450 0    40   ~ 0
11001
Text Notes 8800 1450 0    40   ~ 0
10000
Text Notes 9100 1450 0    40   ~ 0
11000
Text Notes 9400 1450 0    40   ~ 0
10100
Wire Wire Line
	5100 1150 5050 1150
Wire Wire Line
	5100 1050 5100 1150
Wire Wire Line
	5250 1050 5100 1050
Wire Wire Line
	5250 1150 5400 1150
Wire Wire Line
	5250 1050 5250 1150
Wire Wire Line
	5050 1200 5450 1200
Wire Wire Line
	5150 1450 5150 1350
Wire Wire Line
	5150 1350 5050 1350
Wire Wire Line
	5150 1450 5450 1450
Text Notes 5200 1450 0    40   ~ 0
10100
Text Notes 9700 1450 0    40   ~ 0
01111
NoConn ~ 2400 5900
NoConn ~ 2400 6700
NoConn ~ 900  4800
NoConn ~ 900  4000
Wire Wire Line
	850  3900 900  3900
Wire Wire Line
	850  4100 850  3900
Wire Wire Line
	900  4100 850  4100
Wire Wire Line
	2400 4900 2400 4800
Text Label 900  6700 2    50   ~ 0
RA1
Text Label 900  6800 2    50   ~ 0
RA2
Text Label 2400 4400 0    50   ~ 0
R~W~
Text Label 2400 4500 0    50   ~ 0
AN3
Text Label 2400 5500 0    50   ~ 0
PHI0
Text Label 2400 5300 0    50   ~ 0
~CASEN~
Text Label 2400 5100 0    50   ~ 0
R~W~80
Text Label 2400 4300 0    50   ~ 0
~C07X~
Text Label 2400 5400 0    50   ~ 0
~EN80~
Text Label 2400 4800 0    50   ~ 0
14M
Text Label 2400 5200 0    50   ~ 0
PHI1
Text Label 2400 7000 0    50   ~ 0
MD6
Text Label 2400 6400 0    50   ~ 0
MD5
Text Label 2400 6100 0    50   ~ 0
MD4
Text Label 2400 7300 0    50   ~ 0
MD7
Text Label 2400 5800 0    50   ~ 0
MD3
Text Label 2400 6200 0    50   ~ 0
MD2
Text Label 2400 6800 0    50   ~ 0
MD1
Text Label 2400 7100 0    50   ~ 0
MD0
Text Label 2400 6900 0    50   ~ 0
V6
Text Label 2400 6500 0    50   ~ 0
V5
Text Label 2400 6000 0    50   ~ 0
V4
Text Label 2400 5700 0    50   ~ 0
V3
Text Label 2400 6300 0    50   ~ 0
V2
Text Label 2400 6600 0    50   ~ 0
V1
Text Label 2400 7200 0    50   ~ 0
V0
Text Label 2400 7400 0    50   ~ 0
V7
Text Label 900  5500 2    50   ~ 0
RD7
Text Label 900  6500 2    50   ~ 0
RA7
Text Label 900  5000 2    50   ~ 0
RA11
Text Label 900  6600 2    50   ~ 0
RA0
Text Label 2400 5000 0    50   ~ 0
~PCAS~
Text Label 900  6100 2    50   ~ 0
R~WE~
Text Label 900  4900 2    50   ~ 0
RA10
Text Label 900  6300 2    50   ~ 0
RA9
Text Label 900  6400 2    50   ~ 0
RA8
Text Label 900  7200 2    50   ~ 0
RA6
Text Label 900  7100 2    50   ~ 0
RA5
Text Label 900  7000 2    50   ~ 0
RA4
Text Label 900  6900 2    50   ~ 0
RA3
Text Label 900  5100 2    50   ~ 0
~CAS~
Text Label 900  6200 2    50   ~ 0
~RAS~
$Comp
L stdparts:EPM7128SL84 U1
U 1 1 5CFBB2C9
P 1650 5600
F 0 "U1" H 1650 7781 50  0000 C CNN
F 1 "EPM7128SL84" H 1650 7690 50  0000 C CNN
F 2 "stdpads:PLCC-84" H 1500 5800 50  0001 C CNN
F 3 "" H 1500 5800 50  0001 C CNN
	1    1650 5600
	1    0    0    -1  
$EndComp
Connection ~ 1300 3600
Connection ~ 1900 3600
Connection ~ 1800 3600
Wire Wire Line
	1800 3600 1900 3600
Text Label 900  5400 2    50   ~ 0
RD6
Text Label 900  5300 2    50   ~ 0
RD5
Text Label 900  5200 2    50   ~ 0
RD4
Text Label 900  6000 2    50   ~ 0
RD3
Text Label 900  5900 2    50   ~ 0
RD2
Text Label 900  5800 2    50   ~ 0
RD1
Text Label 900  5700 2    50   ~ 0
RD0
Connection ~ 1400 3600
Wire Wire Line
	1400 3600 1300 3600
Connection ~ 1500 3600
Wire Wire Line
	1500 3600 1400 3600
Connection ~ 1600 3600
Wire Wire Line
	1600 3600 1500 3600
Connection ~ 1700 3600
Wire Wire Line
	1700 3600 1600 3600
Wire Wire Line
	1800 3600 1700 3600
Connection ~ 2000 7700
Connection ~ 1400 7700
Wire Wire Line
	1400 7700 1300 7700
Connection ~ 1500 7700
Wire Wire Line
	1500 7700 1400 7700
Connection ~ 1600 7700
Wire Wire Line
	1600 7700 1500 7700
Connection ~ 1700 7700
Wire Wire Line
	1700 7700 1600 7700
Connection ~ 1800 7700
Wire Wire Line
	1800 7700 1700 7700
Connection ~ 1900 7700
Wire Wire Line
	1900 7700 1800 7700
Wire Wire Line
	2000 7700 1900 7700
$Comp
L power:GND #PWR0136
U 1 1 5CBD373F
P 2000 7700
F 0 "#PWR0136" H 2000 7450 50  0001 C CNN
F 1 "GND" H 2000 7550 50  0000 C CNN
F 2 "" H 2000 7700 50  0001 C CNN
F 3 "" H 2000 7700 50  0001 C CNN
	1    2000 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3600 1900 3600
$Comp
L power:+5V #PWR0135
U 1 1 5CBD2E73
P 1300 3600
F 0 "#PWR0135" H 1300 3450 50  0001 C CNN
F 1 "+5V" H 1300 3750 50  0000 C CNN
F 2 "" H 1300 3600 50  0001 C CNN
F 3 "" H 1300 3600 50  0001 C CNN
	1    1300 3600
	1    0    0    -1  
$EndComp
Connection ~ 6500 6250
Wire Wire Line
	2250 2300 1950 2300
Text Label 1450 2800 2    50   ~ 0
RA4
Text Label 1950 2800 0    50   ~ 0
RA3
Text Label 1950 2900 0    50   ~ 0
RA5
Text Label 1450 2700 2    50   ~ 0
RA2
Text Label 1950 2700 0    50   ~ 0
RA1
Text Label 1450 2900 2    50   ~ 0
RA6
Text Label 1950 1900 0    50   ~ 0
RD6
Text Label 1450 1900 2    50   ~ 0
RD1
Text Label 1450 2000 2    50   ~ 0
RD2
Text Label 1450 2400 2    50   ~ 0
RA11
Text Label 1450 2200 2    50   ~ 0
R~WE~
Text Label 1950 2100 0    50   ~ 0
RD4
Text Label 1950 2000 0    50   ~ 0
RD5
Text Label 1450 2100 2    50   ~ 0
RD3
$Comp
L Connector_Generic:Conn_02x14_Counter_Clockwise U2
U 1 1 5D0D3629
P 1650 2300
F 0 "U2" H 1700 3117 50  0000 C CNN
F 1 "2M x 8" H 1700 3026 50  0000 C CNN
F 2 "stdpads:SOJ-28-300mil" H 1650 2300 50  0001 C CNN
F 3 "~" H 1650 2300 50  0001 C CNN
	1    1650 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5D0C89BF
P 1450 1700
F 0 "#PWR0104" H 1450 1550 50  0001 C CNN
F 1 "+5V" V 1550 1750 50  0000 C CNN
F 2 "" H 1450 1700 50  0001 C CNN
F 3 "" H 1450 1700 50  0001 C CNN
	1    1450 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5D0C89B9
P 1450 3000
F 0 "#PWR0103" H 1450 2850 50  0001 C CNN
F 1 "+5V" V 1350 3050 50  0000 C CNN
F 2 "" H 1450 3000 50  0001 C CNN
F 3 "" H 1450 3000 50  0001 C CNN
	1    1450 3000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5D0C89B1
P 1950 3000
F 0 "#PWR0102" H 1950 2750 50  0001 C CNN
F 1 "GND" V 1850 2950 50  0000 C CNN
F 2 "" H 1950 3000 50  0001 C CNN
F 3 "" H 1950 3000 50  0001 C CNN
	1    1950 3000
	0    -1   -1   0   
$EndComp
Text Label 1450 2500 2    50   ~ 0
RA10
Text Label 1450 2600 2    50   ~ 0
RA0
Text Label 1950 2400 0    50   ~ 0
RA9
Text Label 1950 2500 0    50   ~ 0
RA8
Text Label 1950 2600 0    50   ~ 0
RA7
$Comp
L power:GND #PWR0101
U 1 1 5D0C89A0
P 1950 1700
F 0 "#PWR0101" H 1950 1450 50  0001 C CNN
F 1 "GND" V 2050 1650 50  0000 C CNN
F 2 "" H 1950 1700 50  0001 C CNN
F 3 "" H 1950 1700 50  0001 C CNN
	1    1950 1700
	0    -1   -1   0   
$EndComp
Text Label 1950 2300 0    50   ~ 0
~OE~
Text Label 1950 2200 0    50   ~ 0
~CAS~
Text Label 1450 2300 2    50   ~ 0
~RAS~
Text Label 1950 1800 0    50   ~ 0
RD7
Text Label 1450 1800 2    50   ~ 0
RD0
$Comp
L power:+5V #PWR0120
U 1 1 5C293BD7
P 6500 6250
F 0 "#PWR0120" H 6500 6100 50  0001 C CNN
F 1 "+5V" H 6500 6400 50  0000 C CNN
F 2 "" H 6500 6250 50  0001 C CNN
F 3 "" H 6500 6250 50  0001 C CNN
	1    6500 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0157
U 1 1 5C27FF04
P 2250 2300
F 0 "#PWR0157" H 2250 2050 50  0001 C CNN
F 1 "GND" H 2250 2150 50  0000 C CNN
F 2 "" H 2250 2300 50  0001 C CNN
F 3 "" H 2250 2300 50  0001 C CNN
	1    2250 2300
	1    0    0    -1  
$EndComp
Text Label 2400 4600 0    50   ~ 0
Q3
Wire Wire Line
	2400 4600 2400 4700
Text Notes 7950 950  0    100  ~ 0
6502 CPU Access
Text Notes 5950 950  0    104  ~ 0
Video Access
Wire Bus Line
	4650 2750 10150 2750
Wire Bus Line
	10150 1950 4650 1950
Wire Bus Line
	9650 1000 9650 3100
Wire Bus Line
	7550 1000 7550 3100
Wire Bus Line
	5450 1000 5450 3100
Wire Wire Line
	9800 3050 10100 3050
Wire Wire Line
	9800 2950 9800 3050
Wire Wire Line
	9650 2950 9800 2950
Wire Wire Line
	9650 3050 9650 2950
Wire Wire Line
	8750 3050 9650 3050
Wire Wire Line
	8750 2950 8750 3050
Wire Wire Line
	7550 2950 8750 2950
Wire Wire Line
	7550 3050 7550 2950
Wire Wire Line
	6650 3050 7550 3050
Wire Wire Line
	6650 2950 6650 3050
Wire Wire Line
	6200 2950 6650 2950
Wire Wire Line
	6200 3050 6200 2950
Wire Wire Line
	5600 3050 6200 3050
Wire Wire Line
	5600 2950 5600 3050
Wire Wire Line
	5050 2950 5600 2950
Wire Wire Line
	7250 2800 7850 2800
Wire Wire Line
	9950 2900 10100 2900
Wire Wire Line
	9950 2800 9950 2900
Wire Wire Line
	9350 2800 9950 2800
Wire Wire Line
	9350 2900 9350 2800
Wire Wire Line
	7850 2900 9350 2900
Wire Wire Line
	7850 2800 7850 2900
Wire Wire Line
	8300 2700 8300 2600
Text Notes 5000 2900 2    50   ~ 0
nRAS
Text Notes 5000 3050 2    50   ~ 0
nCAS
Wire Wire Line
	5050 2800 5750 2800
Wire Wire Line
	5750 2800 5750 2900
Wire Wire Line
	7250 2900 7250 2800
Wire Wire Line
	6350 2900 7250 2900
Wire Wire Line
	6350 2800 6350 2900
Wire Wire Line
	6050 2800 6350 2800
Wire Wire Line
	6050 2900 6050 2800
Wire Wire Line
	5750 2900 6050 2900
Wire Wire Line
	9650 2550 6050 2550
Wire Wire Line
	9650 2550 9650 2450
Wire Wire Line
	8600 2700 10100 2700
Wire Wire Line
	8600 2600 8600 2700
Wire Wire Line
	8300 2600 8600 2600
Wire Wire Line
	8300 2700 6500 2700
Wire Wire Line
	5750 2150 5150 2150
Wire Notes Line
	6950 2150 9350 2150
Wire Notes Line
	9350 2200 6950 2200
Wire Notes Line
	6950 2250 9350 2250
Wire Wire Line
	6350 2250 6950 2250
Text Notes 5000 2700 2    50   ~ 0
HoldRow
Wire Wire Line
	5050 2700 6200 2700
Wire Wire Line
	6200 2600 6200 2700
Wire Wire Line
	6500 2600 6200 2600
Wire Wire Line
	6500 2600 6500 2700
Wire Wire Line
	6650 2100 9650 2100
Wire Wire Line
	5450 2000 6650 2000
Wire Wire Line
	5450 1900 5050 1900
Wire Wire Line
	5450 1800 5450 1900
Wire Wire Line
	6650 1800 5450 1800
Wire Wire Line
	5450 1650 6350 1650
Wire Wire Line
	5450 1750 5450 1650
Wire Wire Line
	5050 1750 5450 1750
Wire Wire Line
	5050 1500 5750 1500
Text Notes 5000 2250 2    50   ~ 0
nRefRAS
Wire Wire Line
	9650 2450 10100 2450
Wire Wire Line
	9650 2000 10100 2000
Wire Wire Line
	9650 2100 9650 2000
Wire Wire Line
	9950 2250 10100 2250
Wire Wire Line
	9950 2150 9950 2250
Wire Wire Line
	9800 2400 10100 2400
Wire Wire Line
	9800 2300 9800 2400
Wire Notes Line
	8700 2300 8700 2400
Wire Notes Line
	9450 2300 9450 2400
Wire Notes Line
	9400 2300 9400 2400
Wire Notes Line
	9350 2300 9350 2400
Wire Notes Line
	9300 2300 9300 2400
Wire Notes Line
	9250 2300 9250 2400
Wire Notes Line
	9200 2300 9200 2400
Wire Notes Line
	9150 2300 9150 2400
Wire Notes Line
	9100 2300 9100 2400
Wire Notes Line
	9050 2300 9050 2400
Wire Notes Line
	9000 2300 9000 2400
Wire Notes Line
	8950 2300 8950 2400
Wire Notes Line
	8900 2300 8900 2400
Wire Notes Line
	8850 2300 8850 2400
Wire Notes Line
	8800 2300 8800 2400
Wire Notes Line
	8750 2300 8750 2400
Wire Notes Line
	6800 2350 9500 2350
Wire Notes Line
	6800 2400 9500 2400
Wire Notes Line
	9500 2300 9500 2400
Wire Notes Line
	6800 2300 9500 2300
Wire Notes Line
	7900 2300 7900 2400
Wire Notes Line
	7600 2300 7600 2400
Wire Notes Line
	7650 2300 7650 2400
Wire Notes Line
	7700 2300 7700 2400
Wire Notes Line
	7750 2300 7750 2400
Wire Notes Line
	7800 2300 7800 2400
Wire Notes Line
	7850 2300 7850 2400
Wire Notes Line
	8400 2300 8400 2400
Wire Notes Line
	8350 2300 8350 2400
Wire Notes Line
	8300 2300 8300 2400
Wire Notes Line
	8250 2300 8250 2400
Wire Notes Line
	8200 2300 8200 2400
Wire Notes Line
	8150 2300 8150 2400
Wire Notes Line
	8100 2300 8100 2400
Wire Notes Line
	8050 2300 8050 2400
Wire Notes Line
	8000 2300 8000 2400
Wire Notes Line
	7950 2300 7950 2400
Wire Notes Line
	8650 2300 8650 2400
Wire Notes Line
	8600 2300 8600 2400
Wire Notes Line
	8550 2300 8550 2400
Wire Notes Line
	8500 2300 8500 2400
Wire Notes Line
	8450 2300 8450 2400
Wire Notes Line
	7900 2150 7900 2250
Wire Notes Line
	7600 2150 7600 2250
Wire Notes Line
	7650 2150 7650 2250
Wire Notes Line
	7700 2150 7700 2250
Wire Notes Line
	7750 2150 7750 2250
Wire Notes Line
	7800 2150 7800 2250
Wire Notes Line
	7850 2150 7850 2250
Wire Notes Line
	8400 2150 8400 2250
Wire Notes Line
	8350 2150 8350 2250
Wire Notes Line
	8300 2150 8300 2250
Wire Notes Line
	8250 2150 8250 2250
Wire Notes Line
	8200 2150 8200 2250
Wire Notes Line
	8150 2150 8150 2250
Wire Notes Line
	8100 2150 8100 2250
Wire Notes Line
	8050 2150 8050 2250
Wire Notes Line
	8000 2150 8000 2250
Wire Notes Line
	7950 2150 7950 2250
Wire Notes Line
	9350 2250 9350 2150
Wire Notes Line
	9300 2150 9300 2250
Wire Notes Line
	9250 2150 9250 2250
Wire Notes Line
	9200 2150 9200 2250
Wire Notes Line
	9150 2150 9150 2250
Wire Notes Line
	9100 2150 9100 2250
Wire Notes Line
	9050 2150 9050 2250
Wire Notes Line
	9000 2150 9000 2250
Wire Notes Line
	8950 2150 8950 2250
Wire Notes Line
	8900 2150 8900 2250
Wire Notes Line
	8850 2150 8850 2250
Wire Notes Line
	8800 2150 8800 2250
Wire Notes Line
	8750 2150 8750 2250
Wire Notes Line
	8700 2150 8700 2250
Wire Notes Line
	8650 2150 8650 2250
Wire Notes Line
	8600 2150 8600 2250
Wire Notes Line
	8550 2150 8550 2250
Wire Notes Line
	8500 2150 8500 2250
Wire Notes Line
	8450 2150 8450 2250
Wire Wire Line
	9950 2150 9350 2150
Wire Wire Line
	9500 2300 9800 2300
Wire Notes Line
	5100 2400 5100 2300
Wire Notes Line
	5150 2300 5150 2400
Wire Notes Line
	5200 2400 5200 2300
Wire Notes Line
	5250 2300 5250 2400
Wire Notes Line
	5050 2350 5300 2350
Wire Notes Line
	5050 2400 5050 2300
Wire Notes Line
	5300 2400 5050 2400
Wire Notes Line
	5300 2300 5300 2400
Wire Notes Line
	5050 2300 5300 2300
Wire Notes Line
	5100 2150 5100 2250
Wire Notes Line
	5050 2200 5150 2200
Wire Notes Line
	5050 2250 5050 2150
Wire Notes Line
	5150 2250 5050 2250
Wire Notes Line
	5150 2150 5150 2250
Wire Notes Line
	5050 2150 5150 2150
Wire Wire Line
	5450 2100 5050 2100
Wire Notes Line
	7500 2300 7500 2400
Wire Notes Line
	7450 2300 7450 2400
Wire Notes Line
	7400 2300 7400 2400
Wire Notes Line
	7350 2300 7350 2400
Wire Notes Line
	7300 2300 7300 2400
Wire Notes Line
	7250 2300 7250 2400
Wire Notes Line
	7500 2150 7500 2250
Wire Notes Line
	7450 2150 7450 2250
Wire Notes Line
	7400 2150 7400 2250
Wire Notes Line
	7350 2150 7350 2250
Wire Notes Line
	7300 2150 7300 2250
Wire Notes Line
	7250 2150 7250 2250
Wire Notes Line
	7200 2150 7200 2250
Wire Notes Line
	7150 2150 7150 2250
Wire Notes Line
	7100 2150 7100 2250
Wire Notes Line
	7050 2150 7050 2250
Wire Notes Line
	7000 2150 7000 2250
Wire Notes Line
	6950 2150 6950 2250
Wire Notes Line
	7200 2300 7200 2400
Wire Notes Line
	7150 2300 7150 2400
Wire Notes Line
	7100 2300 7100 2400
Wire Notes Line
	7050 2300 7050 2400
Wire Notes Line
	7000 2300 7000 2400
Wire Notes Line
	6950 2300 6950 2400
Wire Notes Line
	6900 2300 6900 2400
Wire Notes Line
	6850 2300 6850 2400
Wire Notes Line
	6800 2300 6800 2400
Wire Wire Line
	6050 2450 6050 2550
Wire Wire Line
	5450 2450 6050 2450
Wire Wire Line
	5450 2550 5450 2450
Wire Wire Line
	5050 2550 5450 2550
Text Notes 5000 2550 2    50   ~ 0
GateWE
Wire Wire Line
	6200 2300 6800 2300
Wire Wire Line
	5450 2000 5450 2100
Wire Wire Line
	5300 2300 5600 2300
Wire Wire Line
	5600 2300 5600 2400
Wire Wire Line
	5750 2150 5750 2250
Wire Wire Line
	5750 2250 6050 2250
Wire Wire Line
	6050 2250 6050 2150
Wire Wire Line
	6050 2150 6350 2150
Wire Wire Line
	6350 2150 6350 2250
Wire Wire Line
	6200 2400 6200 2300
Wire Wire Line
	5600 2400 6200 2400
Wire Wire Line
	6650 2000 6650 2100
Text Notes 5000 2100 2    50   ~ 0
GateCRAS
Wire Wire Line
	5750 1500 5750 1600
Wire Wire Line
	7250 1600 7250 1500
Wire Wire Line
	5750 1600 7250 1600
Wire Wire Line
	7850 1500 7850 1600
Wire Wire Line
	7250 1500 7850 1500
Text Notes 4950 1750 2    50   ~ 0
nPCAS
Wire Wire Line
	6650 1800 6650 1900
Wire Wire Line
	6350 1650 6350 1750
Text Notes 4950 1900 2    50   ~ 0
Q3
Wire Wire Line
	8450 1650 8450 1750
Wire Wire Line
	8750 1800 8750 1900
Wire Wire Line
	9350 1600 9350 1500
Wire Wire Line
	7850 1600 9350 1600
Wire Wire Line
	9650 1750 9650 1650
Wire Wire Line
	9650 1900 9650 1800
Wire Wire Line
	9350 1500 10100 1500
Wire Wire Line
	9650 1650 10100 1650
Wire Wire Line
	9650 1800 10100 1800
Wire Wire Line
	7550 1750 7550 1650
Wire Wire Line
	7550 1800 7550 1900
Wire Wire Line
	6650 1900 7550 1900
Wire Wire Line
	6350 1750 7550 1750
Wire Wire Line
	7550 1650 8450 1650
Wire Wire Line
	7550 1800 8750 1800
Wire Wire Line
	8450 1750 9650 1750
Wire Wire Line
	9650 1900 8750 1900
Text Notes 4950 1600 2    50   ~ 0
nPRAS
Text Notes 5000 2400 2    50   ~ 0
nRefCAS
Text Notes 7950 3650 0    50   ~ 0
nRAS <= GateCRAS ? nRefRAS : nPRAS\nnCAS <= GateCRAS ? nRefCAS : Q3\nnRWE <= GateWE | RW80\nRA[7:0] <= HoldRow ? RowAddr[7:0] : MA[7:0]\nRA[10:8] <= PHI1 ? 0 : HoldRow ? BA[5:3] : BA[2:0]\nRA[11] <= PHI1 ? 0 : BA[5]
Text Notes 7950 4050 0    50   ~ 0
VDR[7:0] <= RD[7:0] @ PHI0\nVD[7:0] <= PHI1 ? 8’bZ : VDR[7:0]\nD[7:0] <= (EN80 & R~W~80) ? RD[7:0] : 8’bZ\nRD[7:0] <= (EN80 & ~R~W80) ? D[7:0] : 8’bZ
$Comp
L Device:C_Small C1
U 1 1 5D136B08
P 6500 6350
F 0 "C1" H 6550 6400 50  0000 L CNN
F 1 "100n" H 6550 6300 50  0000 L CNN
F 2 "stdpads:C_0805" H 6500 6350 50  0001 C CNN
F 3 "~" H 6500 6350 50  0001 C CNN
	1    6500 6350
	1    0    0    -1  
$EndComp
Text Label 2400 4200 0    50   ~ 0
~PRAS~
Wire Wire Line
	900  4500 850  4500
Wire Wire Line
	850  4400 900  4400
Wire Wire Line
	900  4300 850  4300
Wire Wire Line
	850  4300 850  4200
Wire Wire Line
	850  4200 900  4200
Wire Wire Line
	850  4500 850  4400
Wire Wire Line
	900  4700 850  4700
Wire Wire Line
	850  4600 900  4600
Text Label 2400 4100 0    50   ~ 0
7M
Wire Wire Line
	850  4700 850  4600
Text Label 2400 4000 0    50   ~ 0
3.58M
Text Notes 4900 3850 0    50   ~ 0
GateCRAS <= state == 10100 | 01111 | 00011 | 01011 @ C14M\nnRefRAS <= ~state == 01111 | 01011 | 00001~ @ C14M\nnRefCAS <= ~state == 01111 | 00011~ @ ~C14M~\nGateWE <= state == 10100 | 00011 @ C14M\nHoldRow <= state == 01011 | 10011 @ ~C14M~\n\nRowAddr[7:0] <= MA[7:0] @ ~nPRAS~\nBA[5:0] <= D[5:0] @ C14M in state == 10100 & RowAddr == 73 & C07X
$EndSCHEMATC
