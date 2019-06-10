EESchema Schematic File Version 4
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
Text Label 5200 3800 0    50   ~ 0
~OE~
$Comp
L power:GND #PWR0157
U 1 1 5C27FF04
P 5400 3800
F 0 "#PWR0157" H 5400 3550 50  0001 C CNN
F 1 "GND" H 5400 3650 50  0000 C CNN
F 2 "" H 5400 3800 50  0001 C CNN
F 3 "" H 5400 3800 50  0001 C CNN
	1    5400 3800
	1    0    0    -1  
$EndComp
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
Connection ~ 9300 6250
Wire Wire Line
	8900 6250 9300 6250
Wire Wire Line
	9300 6250 9700 6250
Wire Wire Line
	9300 6450 9700 6450
Wire Wire Line
	9300 6450 8900 6450
Connection ~ 9300 6450
Wire Wire Line
	8500 6450 8100 6450
Connection ~ 8100 6250
Connection ~ 8100 6450
$Comp
L power:+5V #PWR0135
U 1 1 5CBD2E73
P 2300 3400
F 0 "#PWR0135" H 2300 3250 50  0001 C CNN
F 1 "+5V" H 2300 3550 50  0000 C CNN
F 2 "" H 2300 3400 50  0001 C CNN
F 3 "" H 2300 3400 50  0001 C CNN
	1    2300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 3400 2900 3400
$Comp
L power:GND #PWR0136
U 1 1 5CBD373F
P 3000 7500
F 0 "#PWR0136" H 3000 7250 50  0001 C CNN
F 1 "GND" H 3000 7350 50  0000 C CNN
F 2 "" H 3000 7500 50  0001 C CNN
F 3 "" H 3000 7500 50  0001 C CNN
	1    3000 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 7500 2900 7500
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
L Device:C_Small C9
U 1 1 5CC13929
P 9700 6350
F 0 "C9" H 9750 6400 50  0000 L CNN
F 1 "100n" H 9750 6300 50  0000 L CNN
F 2 "stdpads:C_0805" H 9700 6350 50  0001 C CNN
F 3 "~" H 9700 6350 50  0001 C CNN
	1    9700 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 7500 2800 7500
Connection ~ 2900 7500
Wire Wire Line
	2800 7500 2700 7500
Connection ~ 2800 7500
Wire Wire Line
	2700 7500 2600 7500
Connection ~ 2700 7500
Wire Wire Line
	2600 7500 2500 7500
Connection ~ 2600 7500
Wire Wire Line
	2500 7500 2400 7500
Connection ~ 2500 7500
Wire Wire Line
	2400 7500 2300 7500
Connection ~ 2400 7500
Connection ~ 3000 7500
Wire Wire Line
	2800 3400 2700 3400
Wire Wire Line
	2700 3400 2600 3400
Connection ~ 2700 3400
Wire Wire Line
	2600 3400 2500 3400
Connection ~ 2600 3400
Wire Wire Line
	2500 3400 2400 3400
Connection ~ 2500 3400
Wire Wire Line
	2400 3400 2300 3400
Connection ~ 2400 3400
Connection ~ 9700 6450
$Comp
L Mechanical:MountingHole FID1
U 1 1 5CC47A28
P 8900 4900
F 0 "FID1" H 9000 4946 50  0000 L CNN
F 1 "Fiducial" H 9000 4855 50  0000 L CNN
F 2 "stdpads:Fiducial" H 8900 4900 50  0001 C CNN
F 3 "~" H 8900 4900 50  0001 C CNN
	1    8900 4900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole FID2
U 1 1 5CC4921D
P 9400 4900
F 0 "FID2" H 9500 4946 50  0000 L CNN
F 1 "Fiducial" H 9500 4855 50  0000 L CNN
F 2 "stdpads:Fiducial" H 9400 4900 50  0001 C CNN
F 3 "~" H 9400 4900 50  0001 C CNN
	1    9400 4900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole FID3
U 1 1 5CC4DBD8
P 8900 5100
F 0 "FID3" H 9000 5146 50  0000 L CNN
F 1 "Fiducial" H 9000 5055 50  0000 L CNN
F 2 "stdpads:Fiducial" H 8900 5100 50  0001 C CNN
F 3 "~" H 8900 5100 50  0001 C CNN
	1    8900 5100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole FID4
U 1 1 5CC4DBDF
P 9400 5100
F 0 "FID4" H 9500 5146 50  0000 L CNN
F 1 "Fiducial" H 9500 5055 50  0000 L CNN
F 2 "stdpads:Fiducial" H 9400 5100 50  0001 C CNN
F 3 "~" H 9400 5100 50  0001 C CNN
	1    9400 5100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5CC53461
P 8900 4600
F 0 "H1" H 9000 4651 50  0000 L CNN
F 1 " " H 9000 4560 50  0000 L CNN
F 2 "stdpads:PasteHole_1.1mm_PTH" H 8900 4600 50  0001 C CNN
F 3 "~" H 8900 4600 50  0001 C CNN
	1    8900 4600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5CC795A2
P 9200 4600
F 0 "H2" H 9300 4651 50  0000 L CNN
F 1 " " H 9300 4560 50  0000 L CNN
F 2 "stdpads:PasteHole_1.1mm_PTH" H 9200 4600 50  0001 C CNN
F 3 "~" H 9200 4600 50  0001 C CNN
	1    9200 4600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5CC7E0B9
P 9500 4600
F 0 "H3" H 9600 4651 50  0000 L CNN
F 1 " " H 9600 4560 50  0000 L CNN
F 2 "stdpads:PasteHole_1.1mm_PTH" H 9500 4600 50  0001 C CNN
F 3 "~" H 9500 4600 50  0001 C CNN
	1    9500 4600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5CC7E0C0
P 9800 4600
F 0 "H4" H 9900 4651 50  0000 L CNN
F 1 " " H 9900 4560 50  0000 L CNN
F 2 "stdpads:PasteHole_1.1mm_PTH" H 9800 4600 50  0001 C CNN
F 3 "~" H 9800 4600 50  0001 C CNN
	1    9800 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0132
U 1 1 5CC8BAFD
P 9800 4700
F 0 "#PWR0132" H 9800 4450 50  0001 C CNN
F 1 "GND" H 9805 4527 50  0000 C CNN
F 2 "" H 9800 4700 50  0001 C CNN
F 3 "" H 9800 4700 50  0001 C CNN
	1    9800 4700
	1    0    0    -1  
$EndComp
Connection ~ 9200 4700
Wire Wire Line
	9200 4700 8900 4700
Connection ~ 9500 4700
Wire Wire Line
	9500 4700 9200 4700
Wire Wire Line
	9800 4700 9500 4700
Text Label 1900 5500 2    50   ~ 0
RD0
Text Label 1900 5600 2    50   ~ 0
RD1
Text Label 1900 5700 2    50   ~ 0
RD2
Text Label 1900 5800 2    50   ~ 0
RD3
Text Label 1900 5000 2    50   ~ 0
RD4
Text Label 1900 5100 2    50   ~ 0
RD5
Text Label 1900 5200 2    50   ~ 0
RD6
Wire Wire Line
	2800 3400 2900 3400
Connection ~ 2800 3400
Connection ~ 2900 3400
Connection ~ 2300 3400
Text Label 4500 3300 2    50   ~ 0
RD0
Text Label 4500 3400 2    50   ~ 0
RD1
Text Label 5000 3300 0    50   ~ 0
RD7
Text Label 5000 3400 0    50   ~ 0
RD6
Text Label 4500 3800 2    50   ~ 0
~RAS~
Text Label 5000 3700 0    50   ~ 0
~CAS~
Text Label 5000 3800 0    50   ~ 0
~OE~
$Comp
L power:GND #PWR0101
U 1 1 5D0C89A0
P 5000 3200
F 0 "#PWR0101" H 5000 2950 50  0001 C CNN
F 1 "GND" V 5100 3150 50  0000 C CNN
F 2 "" H 5000 3200 50  0001 C CNN
F 3 "" H 5000 3200 50  0001 C CNN
	1    5000 3200
	0    -1   -1   0   
$EndComp
Text Label 5000 4200 0    50   ~ 0
RA6
Text Label 5000 4100 0    50   ~ 0
RA7
Text Label 5000 4000 0    50   ~ 0
RA8
Text Label 5000 3900 0    50   ~ 0
RA9
Text Label 4500 4300 2    50   ~ 0
RA2
Text Label 4500 4200 2    50   ~ 0
RA1
Text Label 4500 4100 2    50   ~ 0
RA0
Text Label 4500 4000 2    50   ~ 0
RA10
Text Label 4500 4400 2    50   ~ 0
RA3
$Comp
L power:GND #PWR0102
U 1 1 5D0C89B1
P 5000 4500
F 0 "#PWR0102" H 5000 4250 50  0001 C CNN
F 1 "GND" V 4900 4450 50  0000 C CNN
F 2 "" H 5000 4500 50  0001 C CNN
F 3 "" H 5000 4500 50  0001 C CNN
	1    5000 4500
	0    -1   -1   0   
$EndComp
Text Label 5000 4300 0    50   ~ 0
RA5
$Comp
L power:+5V #PWR0103
U 1 1 5D0C89B9
P 4500 4500
F 0 "#PWR0103" H 4500 4350 50  0001 C CNN
F 1 "+5V" V 4400 4550 50  0000 C CNN
F 2 "" H 4500 4500 50  0001 C CNN
F 3 "" H 4500 4500 50  0001 C CNN
	1    4500 4500
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5D0C89BF
P 4500 3200
F 0 "#PWR0104" H 4500 3050 50  0001 C CNN
F 1 "+5V" V 4600 3250 50  0000 C CNN
F 2 "" H 4500 3200 50  0001 C CNN
F 3 "" H 4500 3200 50  0001 C CNN
	1    4500 3200
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_02x14_Counter_Clockwise U101
U 1 1 5D0D3629
P 4700 3800
F 0 "U101" H 4750 4617 50  0000 C CNN
F 1 "2M x 8" H 4750 4526 50  0000 C CNN
F 2 "stdpads:SOJ-28-300mil" H 4700 3800 50  0001 C CNN
F 3 "~" H 4700 3800 50  0001 C CNN
	1    4700 3800
	1    0    0    -1  
$EndComp
Text Label 5000 4400 0    50   ~ 0
RA4
Text Label 4500 3500 2    50   ~ 0
RD2
Text Label 4500 3600 2    50   ~ 0
RD3
Text Label 5000 3500 0    50   ~ 0
RD5
Text Label 5000 3600 0    50   ~ 0
RD4
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
P 9700 6450
F 0 "#PWR0105" H 9700 6200 50  0001 C CNN
F 1 "GND" H 9700 6300 50  0000 C CNN
F 2 "" H 9700 6450 50  0001 C CNN
F 3 "" H 9700 6450 50  0001 C CNN
	1    9700 6450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x30_Counter_Clockwise J1
U 1 1 5CFB6FE3
P 8100 2350
F 0 "J1" H 8150 3967 50  0000 C CNN
F 1 "AppleIIeAux" H 8150 3876 50  0000 C CNN
F 2 "stdpads:AppleIIeAux_Edge" H 8100 2350 50  0001 C CNN
F 3 "~" H 8100 2350 50  0001 C CNN
	1    8100 2350
	1    0    0    -1  
$EndComp
$Comp
L stdparts:EPM7128SL84 U1
U 1 1 5CFBB2C9
P 2650 5400
F 0 "U1" H 2650 7581 50  0000 C CNN
F 1 "EPM7128SL84" H 2650 7490 50  0000 C CNN
F 2 "stdpads:PLCC-84" H 2500 5600 50  0001 C CNN
F 3 "" H 2500 5600 50  0001 C CNN
	1    2650 5400
	1    0    0    -1  
$EndComp
Text Label 7900 950  2    50   ~ 0
3.58M
Text Label 7900 1050 2    50   ~ 0
Vid7M
Text Label 7900 1150 2    50   ~ 0
~SYNC~
Text Label 7900 1250 2    50   ~ 0
~PRAS~
Text Label 7900 1350 2    50   ~ 0
VC
Text Label 7900 1450 2    50   ~ 0
~C07X~
Text Label 7900 1550 2    50   ~ 0
~WNDW~
Text Label 7900 1650 2    50   ~ 0
SEGA
Text Label 7900 1750 2    50   ~ 0
RA7
Text Label 7900 1850 2    50   ~ 0
RA1
Text Label 7900 1950 2    50   ~ 0
ROMEN1
Text Label 7900 2050 2    50   ~ 0
ROMEN2
Text Label 7900 2150 2    50   ~ 0
RA4
Text Label 7900 2250 2    50   ~ 0
RA5
Text Label 7900 2350 2    50   ~ 0
V7
Text Label 7900 2550 2    50   ~ 0
MD6
Text Label 7900 2650 2    50   ~ 0
V6
Text Label 7900 2850 2    50   ~ 0
MD5
Text Label 7900 2950 2    50   ~ 0
MD4
Text Label 7900 3050 2    50   ~ 0
V4
Text Label 7900 2750 2    50   ~ 0
V5
Text Label 7900 3150 2    50   ~ 0
PHI0
Text Label 7900 3250 2    50   ~ 0
~CLRGAT~
Text Label 7900 3350 2    50   ~ 0
~80VID~
Text Label 7900 3450 2    50   ~ 0
~EN80~
Text Label 7900 3550 2    50   ~ 0
~ALTVID~
Text Label 7900 3650 2    50   ~ 0
~SEROUT~
Text Label 7900 3750 2    50   ~ 0
~ENVID~
$Comp
L power:+5V #PWR0106
U 1 1 5CFDC1A5
P 7900 3850
F 0 "#PWR0106" H 7900 3700 50  0001 C CNN
F 1 "+5V" V 7900 4000 50  0000 L CNN
F 2 "" H 7900 3850 50  0001 C CNN
F 3 "" H 7900 3850 50  0001 C CNN
	1    7900 3850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5CFDD282
P 8400 3850
F 0 "#PWR0107" H 8400 3600 50  0001 C CNN
F 1 "GND" H 8400 3700 50  0000 C CNN
F 2 "" H 8400 3850 50  0001 C CNN
F 3 "" H 8400 3850 50  0001 C CNN
	1    8400 3850
	1    0    0    -1  
$EndComp
Text Label 8400 3750 0    50   ~ 0
14M
Text Label 8400 3650 0    50   ~ 0
~PCAS~
Text Label 8400 3550 0    50   ~ 0
~LDPS~
Text Label 8400 3450 0    50   ~ 0
R~W~80
Text Label 8400 3350 0    50   ~ 0
PHI1
Text Label 8400 3250 0    50   ~ 0
~CASEN~
Text Label 8400 3150 0    50   ~ 0
V3
Text Label 8400 3050 0    50   ~ 0
MD3
Text Label 8400 2950 0    50   ~ 0
MD2
Text Label 8400 2850 0    50   ~ 0
V2
Text Label 8400 2750 0    50   ~ 0
V1
Text Label 8400 2650 0    50   ~ 0
MD1
Text Label 8400 2550 0    50   ~ 0
MD0
Text Label 8400 2450 0    50   ~ 0
V0
Text Label 8400 2350 0    50   ~ 0
RA6
Text Label 8400 2250 0    50   ~ 0
H0
Text Label 8400 2150 0    50   ~ 0
RA3
Text Label 8400 2050 0    50   ~ 0
RA2
Text Label 8400 1950 0    50   ~ 0
AN3
Text Label 8400 1850 0    50   ~ 0
RA0
Text Label 8400 1750 0    50   ~ 0
R~W~
Text Label 8400 1650 0    50   ~ 0
Q3
Text Label 8400 1550 0    50   ~ 0
SEGB
Text Label 8400 1450 0    50   ~ 0
~FRCTXT~
Text Label 8400 1350 0    50   ~ 0
~RA9~
Text Label 8400 1250 0    50   ~ 0
~RA10~
Text Label 8400 1150 0    50   ~ 0
GR
Text Label 8400 1050 0    50   ~ 0
7M
Text Label 8400 950  0    50   ~ 0
~ENTMG~
Text Label 7900 2450 2    50   ~ 0
MD7
$Comp
L Device:Jumper_NO_Small JP101
U 1 1 5D08D8CB
P 2200 2300
F 0 "JP101" V 2154 2348 50  0000 L CNN
F 1 "Jumper_NO_Small" V 2245 2348 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical_SMD_Pin1Left" H 2200 2300 50  0001 C CNN
F 3 "~" H 2200 2300 50  0001 C CNN
	1    2200 2300
	0    1    1    0   
$EndComp
Text Label 2200 2200 0    50   ~ 0
~FRCTXT~
Text Label 2200 2500 0    50   ~ 0
AN3
Wire Wire Line
	2200 2500 2200 2400
Connection ~ 6900 6250
Connection ~ 6900 6450
Connection ~ 6500 6250
Wire Wire Line
	8500 6250 8900 6250
Connection ~ 8500 6250
Connection ~ 8900 6250
Wire Wire Line
	8500 6450 8900 6450
Connection ~ 8900 6450
Connection ~ 8500 6450
Text Label 4500 3700 2    50   ~ 0
R~WE~
Text Label 1900 6000 2    50   ~ 0
~RAS~
Text Label 1900 4900 2    50   ~ 0
~CAS~
Wire Wire Line
	3400 4700 3400 4800
Text Label 1900 6600 2    50   ~ 0
RA1
Text Label 1900 6800 2    50   ~ 0
RA2
Text Label 1900 7000 2    50   ~ 0
RA3
Text Label 1900 6900 2    50   ~ 0
RA4
Text Label 1900 6700 2    50   ~ 0
RA5
Text Label 1900 6500 2    50   ~ 0
RA6
Text Label 1900 6200 2    50   ~ 0
RA8
Text Label 1900 6100 2    50   ~ 0
RA9
Text Label 1900 4700 2    50   ~ 0
RA10
Text Label 1900 5900 2    50   ~ 0
R~WE~
Wire Wire Line
	5400 3800 5200 3800
Text Label 4550 5950 0    50   ~ 0
~PCAS~
Text Label 4550 5850 0    50   ~ 0
~PRAS~
Text Label 1900 6400 2    50   ~ 0
RA0
Text Label 4500 3900 2    50   ~ 0
RA11
Text Label 1900 4800 2    50   ~ 0
RA11
Connection ~ 9800 4700
Text Label 1900 6300 2    50   ~ 0
RA7
Text Label 1900 5300 2    50   ~ 0
RD7
Text Label 3400 7200 0    50   ~ 0
V7
Text Label 3400 7000 0    50   ~ 0
V0
Text Label 3400 6400 0    50   ~ 0
V1
Text Label 3400 6100 0    50   ~ 0
V2
Text Label 3400 5500 0    50   ~ 0
V3
Text Label 3400 5800 0    50   ~ 0
V4
Text Label 3400 6300 0    50   ~ 0
V5
Text Label 3400 6700 0    50   ~ 0
V6
Text Label 3400 6900 0    50   ~ 0
MD0
Text Label 3400 6600 0    50   ~ 0
MD1
Text Label 3400 6000 0    50   ~ 0
MD2
Text Label 3400 5600 0    50   ~ 0
MD3
Text Label 3400 7100 0    50   ~ 0
MD7
Text Label 3400 5900 0    50   ~ 0
MD4
Text Label 3400 6200 0    50   ~ 0
MD5
Text Label 3400 6800 0    50   ~ 0
MD6
Text Label 3400 4500 0    50   ~ 0
PHI1
Text Label 3400 4700 0    50   ~ 0
14M
Text Label 3400 5000 0    50   ~ 0
~EN80~
Text Label 3400 3900 0    50   ~ 0
~C07X~
Text Label 3400 4600 0    50   ~ 0
R~W~80
$Comp
L Device:R_Small R1
U 1 1 5CFF5046
P 3800 4750
F 0 "R1" V 3604 4750 50  0000 C CNN
F 1 "100" V 3695 4750 50  0000 C CNN
F 2 "" H 3800 4750 50  0001 C CNN
F 3 "~" H 3800 4750 50  0001 C CNN
	1    3800 4750
	0    1    1    0   
$EndComp
Text Label 3400 3700 0    50   ~ 0
3.58M
Text Label 3400 3800 0    50   ~ 0
7M
Text Label 3400 4200 0    50   ~ 0
~CASEN~
Text Label 3400 5200 0    50   ~ 0
PHI0
Text Label 3400 4100 0    50   ~ 0
AN3
Text Label 3400 4000 0    50   ~ 0
R~W~
Text Label 3400 4400 0    50   ~ 0
Q3
$EndSCHEMATC
