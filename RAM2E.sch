EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "RAM2E"
Date "2019-07-15"
Rev "0.5"
Comp "Garrett's Workshop"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:C_Small C4
U 1 1 5C4F04D1
P 2300 7500
F 0 "C4" H 2350 7550 50  0000 L CNN
F 1 "100n" H 2350 7450 50  0000 L CNN
F 2 "stdpads:C_0805" H 2300 7500 50  0001 C CNN
F 3 "~" H 2300 7500 50  0001 C CNN
	1    2300 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5CB37AA0
P 2700 7500
F 0 "C5" H 2750 7550 50  0000 L CNN
F 1 "100n" H 2750 7450 50  0000 L CNN
F 2 "stdpads:C_0805" H 2700 7500 50  0001 C CNN
F 3 "~" H 2700 7500 50  0001 C CNN
	1    2700 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5CB37AAE
P 3500 7500
F 0 "C7" H 3550 7550 50  0000 L CNN
F 1 "100n" H 3550 7450 50  0000 L CNN
F 2 "stdpads:C_0805" H 3500 7500 50  0001 C CNN
F 3 "~" H 3500 7500 50  0001 C CNN
	1    3500 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 7400 3100 7400
Wire Wire Line
	3500 7400 3900 7400
Wire Wire Line
	3900 7600 3500 7600
Wire Wire Line
	3100 7600 2700 7600
Connection ~ 2700 7400
Connection ~ 2700 7600
$Comp
L Device:C_Small C8
U 1 1 5CC13922
P 3900 7500
F 0 "C8" H 3950 7550 50  0000 L CNN
F 1 "100n" H 3950 7450 50  0000 L CNN
F 2 "stdpads:C_0805" H 3900 7500 50  0001 C CNN
F 3 "~" H 3900 7500 50  0001 C CNN
	1    3900 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5D140E8E
P 3100 7500
F 0 "C6" H 3150 7550 50  0000 L CNN
F 1 "100n" H 3150 7450 50  0000 L CNN
F 2 "stdpads:C_0805" H 3100 7500 50  0001 C CNN
F 3 "~" H 3100 7500 50  0001 C CNN
	1    3100 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 7400 1900 7400
Wire Wire Line
	1500 7600 1900 7600
$Comp
L Device:C_Small C3
U 1 1 5D14D1AA
P 1900 7500
F 0 "C3" H 1950 7550 50  0000 L CNN
F 1 "100n" H 1950 7450 50  0000 L CNN
F 2 "stdpads:C_0805" H 1900 7500 50  0001 C CNN
F 3 "~" H 1900 7500 50  0001 C CNN
	1    1900 7500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5D14D1B0
P 1500 7500
F 0 "C2" H 1550 7550 50  0000 L CNN
F 1 "100n" H 1550 7450 50  0000 L CNN
F 2 "stdpads:C_0805" H 1500 7500 50  0001 C CNN
F 3 "~" H 1500 7500 50  0001 C CNN
	1    1500 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 7600 1500 7600
Wire Wire Line
	1500 7400 1100 7400
Connection ~ 1900 7400
Wire Wire Line
	1900 7400 2300 7400
Connection ~ 1900 7600
Wire Wire Line
	1900 7600 2300 7600
Connection ~ 2300 7400
Wire Wire Line
	2300 7400 2700 7400
Connection ~ 2300 7600
Wire Wire Line
	2300 7600 2700 7600
$Comp
L power:GND #PWR0105
U 1 1 5D1550D4
P 3900 7600
F 0 "#PWR0105" H 3900 7350 50  0001 C CNN
F 1 "GND" H 3900 7450 50  0000 C CNN
F 2 "" H 3900 7600 50  0001 C CNN
F 3 "" H 3900 7600 50  0001 C CNN
	1    3900 7600
	1    0    0    -1  
$EndComp
Connection ~ 1500 7400
Connection ~ 1500 7600
Wire Wire Line
	3100 7400 3500 7400
Connection ~ 3100 7400
Connection ~ 3500 7400
Wire Wire Line
	3100 7600 3500 7600
Connection ~ 3500 7600
Connection ~ 3100 7600
Connection ~ 3900 7600
Connection ~ 1100 7400
$Comp
L power:+5V #PWR0120
U 1 1 5C293BD7
P 1100 7400
F 0 "#PWR0120" H 1100 7250 50  0001 C CNN
F 1 "+5V" H 1100 7550 50  0000 C CNN
F 2 "" H 1100 7400 50  0001 C CNN
F 3 "" H 1100 7400 50  0001 C CNN
	1    1100 7400
	1    0    0    -1  
$EndComp
Wire Bus Line
	4650 2750 10150 2750
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
	5600 2950 5600 3050
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
	9650 2450 10100 2450
Wire Wire Line
	9950 2250 10100 2250
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
	5150 2250 5050 2250
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
	5300 2300 5600 2300
Wire Wire Line
	5600 2300 5600 2400
Wire Wire Line
	5750 2250 6050 2250
Wire Wire Line
	6200 2400 6200 2300
Wire Wire Line
	5600 2400 6200 2400
Text Notes 5000 2400 2    50   ~ 0
nRefCAS
Text Notes 8050 4100 0    50   ~ 0
nRAS <= GateCRAS ? nRefRAS : nPRAS\nnCAS <= GateCRAS ? nRefCAS : Q3\nnRWE <= GateWE | RW80\nRA[7:0] <= HoldRow ? RowAddr[7:0] : MA[7:0]\nRA[10:8] <= PHI1 ? 0 : HoldRow ? BA[5:3] : BA[2:0]\nRA[11] <= PHI1 ? 0 : BA[5]\n\nVDR[7:0] <= RD[7:0] @ PHI0\nVD[7:0] <= PHI1 ? 8’bZ : VDR[7:0]\nD[7:0] <= (EN80 & R~W~80) ? RD[7:0] : 8’bZ\nRD[7:0] <= (EN80 & ~R~W80) ? D[7:0] : 8’bZ
$Comp
L Device:C_Small C1
U 1 1 5D136B08
P 1100 7500
F 0 "C1" H 1150 7550 50  0000 L CNN
F 1 "100n" H 1150 7450 50  0000 L CNN
F 2 "stdpads:C_0805" H 1100 7500 50  0001 C CNN
F 3 "~" H 1100 7500 50  0001 C CNN
	1    1100 7500
	1    0    0    -1  
$EndComp
Text Notes 4700 3950 0    50   ~ 0
State = { PHI0, C7M, nPRAS, nPCAS, Q3 }\nGateCRAS <= state == 10100 | 01111 | 00011 | 01011 @ C14M↑\nnRefRAS <= ~state == 01111 | 01011 | 00001~ @ C14M↑\nnRefCAS <= ~state == 01111 | 00011~ @ C14M↓\nGateWE <= state == 10100 | 00011 @ C14M↑\nHoldRow <= state == 01011 | 10011 @ C14M↓\n\nRowAddr[7:0] <= MA[7:0] @ nPRAS↓\nBA[5:0] <= (state==10100 & RowAddr==73 & C07X) ? D[5:0] : BA[5:0] @ C14M↑
Text Label 4700 5700 2    50   ~ 0
RA5
Text Label 4700 5800 2    50   ~ 0
RA3
Text Label 4700 5900 2    50   ~ 0
RA1
Text Label 4700 5600 2    50   ~ 0
RA6
Text Label 4700 5500 2    50   ~ 0
RA4
Text Label 4700 5400 2    50   ~ 0
RA2
Text Label 4700 6000 2    50   ~ 0
RA7
Text Label 4700 6100 2    50   ~ 0
RA8
Text Label 4700 6200 2    50   ~ 0
RA9
Text Label 4700 5300 2    50   ~ 0
RA0
Text Label 5500 6500 0    50   ~ 0
R~WE~
$Comp
L power:GND #PWR0157
U 1 1 5C27FF04
P 5500 6600
F 0 "#PWR0157" H 5500 6350 50  0001 C CNN
F 1 "GND" H 5500 6450 50  0000 C CNN
F 2 "" H 5500 6600 50  0001 C CNN
F 3 "" H 5500 6600 50  0001 C CNN
	1    5500 6600
	1    0    0    -1  
$EndComp
Text Label 5500 5500 0    50   ~ 0
RD0
Text Label 5500 6200 0    50   ~ 0
RD7
Text Label 5500 6400 0    50   ~ 0
~RAS~
Text Label 5500 6300 0    50   ~ 0
~CAS~
Text Label 5500 6600 0    50   ~ 0
~OE~
Text Label 4700 6300 2    50   ~ 0
RA10
Text Label 5500 5800 0    50   ~ 0
RD3
Text Label 5500 6000 0    50   ~ 0
RD5
Text Label 5500 5900 0    50   ~ 0
RD4
Text Label 4700 6400 2    50   ~ 0
RA11
Text Label 5500 5700 0    50   ~ 0
RD2
Text Label 5500 5600 0    50   ~ 0
RD1
Text Label 5500 6100 0    50   ~ 0
RD6
$Comp
L power:GND #PWR0101
U 1 1 5DCDF099
P 4700 6600
F 0 "#PWR0101" H 4700 6350 50  0001 C CNN
F 1 "GND" H 4700 6450 50  0000 C CNN
F 2 "" H 4700 6600 50  0001 C CNN
F 3 "" H 4700 6600 50  0001 C CNN
	1    4700 6600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5DCDF4F4
P 5500 5300
F 0 "#PWR0102" H 5500 5150 50  0001 C CNN
F 1 "+5V" H 5500 5450 50  0000 C CNN
F 2 "" H 5500 5300 50  0001 C CNN
F 3 "" H 5500 5300 50  0001 C CNN
	1    5500 5300
	1    0    0    -1  
$EndComp
Wire Notes Line
	5000 4100 5000 4200
Wire Notes Line
	5000 4200 5200 4200
Wire Notes Line
	5200 4200 5200 4100
Wire Notes Line
	5100 4100 5100 4200
Wire Notes Line
	5000 4100 5200 4100
Wire Notes Line
	5050 4100 5050 4200
Wire Notes Line
	5000 4150 5200 4150
Wire Notes Line
	5150 4100 5150 4200
Wire Wire Line
	5800 7350 5800 7650
Text Label 5800 7650 0    50   ~ 0
AN3
Text Label 5800 7350 0    50   ~ 0
~FRCTXT~
Connection ~ 5500 7200
Wire Wire Line
	5500 7200 5200 7200
Wire Wire Line
	5200 7200 4900 7200
Connection ~ 5200 7200
Wire Wire Line
	4900 7200 4600 7200
Connection ~ 4900 7200
$Comp
L power:GND #PWR0132
U 1 1 5CC8BAFD
P 5500 7200
F 0 "#PWR0132" H 5500 6950 50  0001 C CNN
F 1 "GND" H 5505 7027 50  0000 C CNN
F 2 "" H 5500 7200 50  0001 C CNN
F 3 "" H 5500 7200 50  0001 C CNN
	1    5500 7200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5CC7E0C0
P 5500 7100
F 0 "H4" H 5600 7151 50  0000 L CNN
F 1 " " H 5600 7060 50  0000 L CNN
F 2 "stdpads:PasteHole_1.1mm_PTH" H 5500 7100 50  0001 C CNN
F 3 "~" H 5500 7100 50  0001 C CNN
	1    5500 7100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5CC7E0B9
P 5200 7100
F 0 "H3" H 5300 7151 50  0000 L CNN
F 1 " " H 5300 7060 50  0000 L CNN
F 2 "stdpads:PasteHole_1.1mm_PTH" H 5200 7100 50  0001 C CNN
F 3 "~" H 5200 7100 50  0001 C CNN
	1    5200 7100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5CC795A2
P 4900 7100
F 0 "H2" H 5000 7151 50  0000 L CNN
F 1 " " H 5000 7060 50  0000 L CNN
F 2 "stdpads:PasteHole_1.1mm_PTH" H 4900 7100 50  0001 C CNN
F 3 "~" H 4900 7100 50  0001 C CNN
	1    4900 7100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5CC53461
P 4600 7100
F 0 "H1" H 4700 7151 50  0000 L CNN
F 1 " " H 4700 7060 50  0000 L CNN
F 2 "stdpads:PasteHole_1.1mm_PTH" H 4600 7100 50  0001 C CNN
F 3 "~" H 4600 7100 50  0001 C CNN
	1    4600 7100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID4
U 1 1 5CC4DBDF
P 5100 7600
F 0 "FID4" H 5200 7646 50  0000 L CNN
F 1 "Fiducial" H 5200 7555 50  0000 L CNN
F 2 "stdpads:Fiducial" H 5100 7600 50  0001 C CNN
F 3 "~" H 5100 7600 50  0001 C CNN
	1    5100 7600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID3
U 1 1 5CC4DBD8
P 4600 7600
F 0 "FID3" H 4700 7646 50  0000 L CNN
F 1 "Fiducial" H 4700 7555 50  0000 L CNN
F 2 "stdpads:Fiducial" H 4600 7600 50  0001 C CNN
F 3 "~" H 4600 7600 50  0001 C CNN
	1    4600 7600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID2
U 1 1 5CC4921D
P 5100 7400
F 0 "FID2" H 5200 7446 50  0000 L CNN
F 1 "Fiducial" H 5200 7355 50  0000 L CNN
F 2 "stdpads:Fiducial" H 5100 7400 50  0001 C CNN
F 3 "~" H 5100 7400 50  0001 C CNN
	1    5100 7400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID1
U 1 1 5CC47A28
P 4600 7400
F 0 "FID1" H 4700 7446 50  0000 L CNN
F 1 "Fiducial" H 4700 7355 50  0000 L CNN
F 2 "stdpads:Fiducial" H 4600 7400 50  0001 C CNN
F 3 "~" H 4600 7400 50  0001 C CNN
	1    4600 7400
	1    0    0    -1  
$EndComp
Text Label 1200 4200 2    50   ~ 0
~PRAS~
Text Label 1200 5400 2    50   ~ 0
MD7
Text Label 1700 3900 0    50   ~ 0
~ENTMG~
Text Label 1700 4000 0    50   ~ 0
7M
Text Label 1700 4100 0    50   ~ 0
GR
Text Label 1700 4200 0    50   ~ 0
~RA10~
Text Label 1700 4300 0    50   ~ 0
~RA9~
Text Label 1700 4400 0    50   ~ 0
~FRCTXT~
Text Label 1700 4500 0    50   ~ 0
SEGB
Text Label 1700 4600 0    50   ~ 0
Q3
Text Label 1700 4700 0    50   ~ 0
R~W~
Text Label 1700 4800 0    50   ~ 0
RA0
Text Label 1700 4900 0    50   ~ 0
AN3
Text Label 1700 5000 0    50   ~ 0
RA2
Text Label 1700 5100 0    50   ~ 0
RA3
Text Label 1700 5200 0    50   ~ 0
H0
Text Label 1700 5300 0    50   ~ 0
RA6
Text Label 1700 5400 0    50   ~ 0
V0
Text Label 1700 5500 0    50   ~ 0
MD0
Text Label 1700 5600 0    50   ~ 0
MD1
Text Label 1700 5700 0    50   ~ 0
V1
Text Label 1700 5800 0    50   ~ 0
V2
Text Label 1700 5900 0    50   ~ 0
MD2
Text Label 1700 6000 0    50   ~ 0
MD3
Text Label 1700 6100 0    50   ~ 0
V3
Text Label 1700 6200 0    50   ~ 0
~CASEN~
Text Label 1700 6300 0    50   ~ 0
PHI1
Text Label 1700 6400 0    50   ~ 0
R~W~80
Text Label 1700 6500 0    50   ~ 0
~LDPS~
Text Label 1700 6600 0    50   ~ 0
~PCAS~
Text Label 1700 6700 0    50   ~ 0
14M
$Comp
L power:GND #PWR0107
U 1 1 5CFDD282
P 1700 6800
F 0 "#PWR0107" H 1700 6550 50  0001 C CNN
F 1 "GND" H 1700 6650 50  0000 C CNN
F 2 "" H 1700 6800 50  0001 C CNN
F 3 "" H 1700 6800 50  0001 C CNN
	1    1700 6800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5CFDC1A5
P 1200 6800
F 0 "#PWR0106" H 1200 6650 50  0001 C CNN
F 1 "+5V" V 1200 6950 50  0000 L CNN
F 2 "" H 1200 6800 50  0001 C CNN
F 3 "" H 1200 6800 50  0001 C CNN
	1    1200 6800
	0    -1   -1   0   
$EndComp
Text Label 1200 6700 2    50   ~ 0
~ENVID~
Text Label 1200 6600 2    50   ~ 0
~SEROUT~
Text Label 1200 6500 2    50   ~ 0
~ALTVID~
Text Label 1200 6400 2    50   ~ 0
~EN80~
Text Label 1200 6300 2    50   ~ 0
~80VID~
Text Label 1200 6200 2    50   ~ 0
~CLRGAT~
Text Label 1200 6100 2    50   ~ 0
PHI0
Text Label 1200 5700 2    50   ~ 0
V5
Text Label 1200 6000 2    50   ~ 0
V4
Text Label 1200 5900 2    50   ~ 0
MD4
Text Label 1200 5800 2    50   ~ 0
MD5
Text Label 1200 5600 2    50   ~ 0
V6
Text Label 1200 5500 2    50   ~ 0
MD6
Text Label 1200 5300 2    50   ~ 0
V7
Text Label 1200 5200 2    50   ~ 0
RA5
Text Label 1200 5100 2    50   ~ 0
RA4
Text Label 1200 5000 2    50   ~ 0
ROMEN2
Text Label 1200 4900 2    50   ~ 0
ROMEN1
Text Label 1200 4800 2    50   ~ 0
RA1
Text Label 1200 4700 2    50   ~ 0
RA7
Text Label 1200 4600 2    50   ~ 0
SEGA
Text Label 1200 4500 2    50   ~ 0
~WNDW~
Text Label 1200 4400 2    50   ~ 0
~C07X~
Text Label 1200 4300 2    50   ~ 0
VC
Text Label 1200 4100 2    50   ~ 0
~SYNC~
Text Label 1200 4000 2    50   ~ 0
Vid7M
Text Label 1200 3900 2    50   ~ 0
3.58M
$Comp
L Connector_Generic:Conn_02x30_Counter_Clockwise J1
U 1 1 5CFB6FE3
P 1400 5300
F 0 "J1" H 1450 6917 50  0000 C CNN
F 1 "AppleIIeAux" H 1450 6826 50  0000 C CNN
F 2 "stdpads:AppleIIeAux_Edge" H 1400 5300 50  0001 C CNN
F 3 "~" H 1400 5300 50  0001 C CNN
	1    1400 5300
	1    0    0    -1  
$EndComp
Text Label 2500 3300 2    50   ~ 0
3.58M
Text Label 2500 3400 2    50   ~ 0
7M
Wire Wire Line
	4050 3900 4000 3900
Wire Wire Line
	4050 3500 4000 3500
Wire Wire Line
	4000 3600 4050 3600
Wire Wire Line
	4050 3700 4000 3700
Wire Wire Line
	4000 3800 4050 3800
Text Label 2500 3500 2    50   ~ 0
~PRAS~
Wire Wire Line
	2500 3900 2500 4000
Text Label 2500 3900 2    50   ~ 0
Q3
$Comp
L power:+5V #PWR0135
U 1 1 5CBD2E73
P 3600 2900
F 0 "#PWR0135" H 3600 2750 50  0001 C CNN
F 1 "+5V" H 3600 3050 50  0000 C CNN
F 2 "" H 3600 2900 50  0001 C CNN
F 3 "" H 3600 2900 50  0001 C CNN
	1    3600 2900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2900 2900 3000 2900
$Comp
L power:GND #PWR0136
U 1 1 5CBD373F
P 2900 7000
F 0 "#PWR0136" H 2900 6750 50  0001 C CNN
F 1 "GND" H 2900 6850 50  0000 C CNN
F 2 "" H 2900 7000 50  0001 C CNN
F 3 "" H 2900 7000 50  0001 C CNN
	1    2900 7000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2900 7000 3000 7000
Wire Wire Line
	3000 7000 3100 7000
Connection ~ 3000 7000
Wire Wire Line
	3100 7000 3200 7000
Connection ~ 3100 7000
Wire Wire Line
	3200 7000 3300 7000
Connection ~ 3200 7000
Wire Wire Line
	3300 7000 3400 7000
Connection ~ 3300 7000
Wire Wire Line
	3400 7000 3500 7000
Connection ~ 3400 7000
Wire Wire Line
	3500 7000 3600 7000
Connection ~ 3500 7000
Connection ~ 2900 7000
Wire Wire Line
	3100 2900 3200 2900
Wire Wire Line
	3200 2900 3300 2900
Connection ~ 3200 2900
Wire Wire Line
	3300 2900 3400 2900
Connection ~ 3300 2900
Wire Wire Line
	3400 2900 3500 2900
Connection ~ 3400 2900
Wire Wire Line
	3500 2900 3600 2900
Connection ~ 3500 2900
Text Label 4000 5000 0    50   ~ 0
RD0
Text Label 4000 5100 0    50   ~ 0
RD1
Text Label 4000 5200 0    50   ~ 0
RD2
Text Label 4000 5300 0    50   ~ 0
RD3
Text Label 4000 4500 0    50   ~ 0
RD4
Text Label 4000 4600 0    50   ~ 0
RD5
Text Label 4000 4700 0    50   ~ 0
RD6
Wire Wire Line
	3100 2900 3000 2900
Connection ~ 3100 2900
Connection ~ 3000 2900
Connection ~ 3600 2900
$Comp
L stdparts:EPM7128SL84 U1
U 1 1 5CFBB2C9
P 3250 4900
F 0 "U1" H 3250 7081 50  0000 C CNN
F 1 "EPM7128SL84" H 3250 6990 50  0000 C CNN
F 2 "stdpads:PLCC-84" H 3100 5100 50  0001 C CNN
F 3 "" H 3100 5100 50  0001 C CNN
	1    3250 4900
	-1   0    0    -1  
$EndComp
Text Label 4000 5500 0    50   ~ 0
~RAS~
Text Label 4000 4400 0    50   ~ 0
~CAS~
Text Label 4000 5700 0    50   ~ 0
RA8
Text Label 4000 5600 0    50   ~ 0
RA9
Text Label 4000 4200 0    50   ~ 0
RA10
Text Label 4000 5400 0    50   ~ 0
R~WE~
Text Label 2500 4300 2    50   ~ 0
~PCAS~
Text Label 4000 4300 0    50   ~ 0
RA11
Text Label 4000 4800 0    50   ~ 0
RD7
Text Label 2500 6700 2    50   ~ 0
V7
Text Label 2500 6500 2    50   ~ 0
V0
Text Label 2500 5900 2    50   ~ 0
V1
Text Label 2500 5600 2    50   ~ 0
V2
Text Label 2500 5000 2    50   ~ 0
V3
Text Label 2500 5300 2    50   ~ 0
V4
Text Label 2500 5800 2    50   ~ 0
V5
Text Label 2500 6200 2    50   ~ 0
V6
Text Label 2500 6400 2    50   ~ 0
MD0
Text Label 2500 6100 2    50   ~ 0
MD1
Text Label 2500 5500 2    50   ~ 0
MD2
Text Label 2500 5100 2    50   ~ 0
MD3
Text Label 2500 6600 2    50   ~ 0
MD7
Text Label 2500 5400 2    50   ~ 0
MD4
Text Label 2500 5700 2    50   ~ 0
MD5
Text Label 2500 6300 2    50   ~ 0
MD6
Text Label 2500 4500 2    50   ~ 0
PHI1
Text Label 2500 4100 2    50   ~ 0
14M
Text Label 2500 4700 2    50   ~ 0
~EN80~
Text Label 2500 3600 2    50   ~ 0
~C07X~
Text Label 2500 4400 2    50   ~ 0
R~W~80
Text Label 2500 4600 2    50   ~ 0
~CASEN~
Text Label 2500 4800 2    50   ~ 0
PHI0
Text Label 2500 3800 2    50   ~ 0
AN3
Text Label 2500 3700 2    50   ~ 0
R~W~
Wire Wire Line
	2500 4200 2500 4100
Wire Wire Line
	4000 3400 4050 3400
Wire Wire Line
	4050 3200 4000 3200
NoConn ~ 4000 3300
NoConn ~ 4000 4100
NoConn ~ 2500 6000
NoConn ~ 2500 5200
Text Notes 5250 4200 0    50   ~ 0
= don’t care
Text Notes 4950 1600 2    50   ~ 0
nPRAS
Wire Wire Line
	9650 1900 8750 1900
Wire Wire Line
	8450 1750 9650 1750
Wire Wire Line
	7550 1800 8750 1800
Wire Wire Line
	7550 1650 8450 1650
Wire Wire Line
	6350 1750 7550 1750
Wire Wire Line
	6650 1900 7550 1900
Wire Wire Line
	7550 1800 7550 1900
Wire Wire Line
	7550 1750 7550 1650
Wire Wire Line
	9650 1800 10100 1800
Wire Wire Line
	9650 1650 10100 1650
Wire Wire Line
	9350 1500 10100 1500
Wire Wire Line
	9650 1900 9650 1800
Wire Wire Line
	9650 1750 9650 1650
Wire Wire Line
	7850 1600 9350 1600
Wire Wire Line
	9350 1600 9350 1500
Wire Wire Line
	8750 1800 8750 1900
Wire Wire Line
	8450 1650 8450 1750
Text Notes 4950 1900 2    50   ~ 0
Q3
Wire Wire Line
	6350 1650 6350 1750
Wire Wire Line
	6650 1800 6650 1900
Text Notes 4950 1750 2    50   ~ 0
nPCAS
Wire Wire Line
	7250 1500 7850 1500
Wire Wire Line
	7850 1500 7850 1600
Wire Wire Line
	5750 1600 7250 1600
Wire Wire Line
	7250 1600 7250 1500
Wire Wire Line
	5750 1500 5750 1600
Text Notes 5000 2100 2    50   ~ 0
GateCRAS
Wire Wire Line
	6650 2000 6650 2100
Wire Wire Line
	6350 2150 6350 2250
Wire Wire Line
	6050 2150 6350 2150
Wire Wire Line
	6050 2250 6050 2150
Wire Wire Line
	5750 2150 5750 2250
Wire Wire Line
	5450 2000 5450 2100
Wire Notes Line
	6950 2150 6950 2250
Wire Notes Line
	7000 2150 7000 2250
Wire Notes Line
	7050 2150 7050 2250
Wire Notes Line
	7100 2150 7100 2250
Wire Notes Line
	7150 2150 7150 2250
Wire Notes Line
	7200 2150 7200 2250
Wire Notes Line
	7250 2150 7250 2250
Wire Notes Line
	7300 2150 7300 2250
Wire Notes Line
	7350 2150 7350 2250
Wire Notes Line
	7400 2150 7400 2250
Wire Notes Line
	7450 2150 7450 2250
Wire Notes Line
	7500 2150 7500 2250
Wire Wire Line
	5450 2100 5050 2100
Wire Notes Line
	5050 2150 5150 2150
Wire Notes Line
	5150 2150 5150 2250
Wire Notes Line
	5050 2250 5050 2150
Wire Notes Line
	5050 2200 5150 2200
Wire Notes Line
	5100 2150 5100 2250
Wire Wire Line
	9950 2150 9350 2150
Wire Notes Line
	8450 2150 8450 2250
Wire Notes Line
	8500 2150 8500 2250
Wire Notes Line
	8550 2150 8550 2250
Wire Notes Line
	8600 2150 8600 2250
Wire Notes Line
	8650 2150 8650 2250
Wire Notes Line
	8700 2150 8700 2250
Wire Notes Line
	8750 2150 8750 2250
Wire Notes Line
	8800 2150 8800 2250
Wire Notes Line
	8850 2150 8850 2250
Wire Notes Line
	8900 2150 8900 2250
Wire Notes Line
	8950 2150 8950 2250
Wire Notes Line
	9000 2150 9000 2250
Wire Notes Line
	9050 2150 9050 2250
Wire Notes Line
	9100 2150 9100 2250
Wire Notes Line
	9150 2150 9150 2250
Wire Notes Line
	9200 2150 9200 2250
Wire Notes Line
	9250 2150 9250 2250
Wire Notes Line
	9300 2150 9300 2250
Wire Notes Line
	9350 2250 9350 2150
Wire Notes Line
	7950 2150 7950 2250
Wire Notes Line
	8000 2150 8000 2250
Wire Notes Line
	8050 2150 8050 2250
Wire Notes Line
	8100 2150 8100 2250
Wire Notes Line
	8150 2150 8150 2250
Wire Notes Line
	8200 2150 8200 2250
Wire Notes Line
	8250 2150 8250 2250
Wire Notes Line
	8300 2150 8300 2250
Wire Notes Line
	8350 2150 8350 2250
Wire Notes Line
	8400 2150 8400 2250
Wire Notes Line
	7850 2150 7850 2250
Wire Notes Line
	7800 2150 7800 2250
Wire Notes Line
	7750 2150 7750 2250
Wire Notes Line
	7700 2150 7700 2250
Wire Notes Line
	7650 2150 7650 2250
Wire Notes Line
	7600 2150 7600 2250
Wire Notes Line
	7900 2150 7900 2250
Wire Wire Line
	9950 2150 9950 2250
Wire Wire Line
	9650 2100 9650 2000
Wire Wire Line
	9650 2000 10100 2000
Text Notes 5000 2250 2    50   ~ 0
nRefRAS
Wire Wire Line
	5050 1500 5750 1500
Wire Wire Line
	5050 1750 5450 1750
Wire Wire Line
	5450 1750 5450 1650
Wire Wire Line
	5450 1650 6350 1650
Wire Wire Line
	6650 1800 5450 1800
Wire Wire Line
	5450 1800 5450 1900
Wire Wire Line
	5450 1900 5050 1900
Wire Wire Line
	5450 2000 6650 2000
Wire Wire Line
	6650 2100 9650 2100
Wire Notes Line
	9350 2200 6950 2200
Wire Notes Line
	6950 2150 9350 2150
Wire Wire Line
	5750 2150 5150 2150
Wire Bus Line
	5450 1000 5450 3100
Wire Bus Line
	7550 1000 7550 3100
Wire Bus Line
	9650 1000 9650 3100
Wire Bus Line
	10150 1950 4650 1950
Text Notes 5950 950  0    104  ~ 0
Video Access
Text Notes 7950 950  0    100  ~ 0
6502 CPU Access
Text Notes 9700 1450 0    40   ~ 0
01111
Text Notes 5200 1450 0    40   ~ 0
10100
Wire Wire Line
	5150 1450 5450 1450
Wire Wire Line
	5150 1350 5050 1350
Wire Wire Line
	5150 1450 5150 1350
Wire Wire Line
	5050 1200 5450 1200
Wire Wire Line
	5250 1050 5250 1150
Wire Wire Line
	5250 1150 5400 1150
Wire Wire Line
	5250 1050 5100 1050
Wire Wire Line
	5100 1050 5100 1150
Wire Wire Line
	5100 1150 5050 1150
Text Notes 9400 1450 0    40   ~ 0
10100
Text Notes 9100 1450 0    40   ~ 0
11000
Text Notes 8800 1450 0    40   ~ 0
10000
Text Notes 8500 1450 0    40   ~ 0
11001
Wire Wire Line
	6950 1350 6950 1450
Text Notes 4950 1450 2    50   ~ 0
C7M
Wire Wire Line
	5450 1450 5450 1350
Wire Wire Line
	5450 1350 5750 1350
Wire Wire Line
	5750 1350 5750 1450
Wire Wire Line
	5750 1450 6050 1450
Wire Wire Line
	6050 1450 6050 1350
Wire Wire Line
	6050 1350 6350 1350
Wire Wire Line
	6350 1350 6350 1450
Wire Wire Line
	6350 1450 6650 1450
Wire Wire Line
	6650 1450 6650 1350
Wire Wire Line
	6650 1350 6950 1350
Wire Wire Line
	6950 1450 7250 1450
Wire Wire Line
	7250 1450 7250 1350
Wire Wire Line
	7250 1350 7550 1350
Wire Wire Line
	7550 1350 7550 1450
Wire Wire Line
	7550 1450 7850 1450
Wire Wire Line
	7850 1450 7850 1350
Wire Wire Line
	7850 1350 8150 1350
Wire Wire Line
	8150 1350 8150 1450
Wire Wire Line
	8150 1450 8450 1450
Wire Wire Line
	8450 1450 8450 1350
Wire Wire Line
	8450 1350 8750 1350
Wire Wire Line
	8750 1350 8750 1450
Wire Wire Line
	8750 1450 9050 1450
Wire Wire Line
	9050 1450 9050 1350
Wire Wire Line
	9050 1350 9350 1350
Wire Wire Line
	9350 1350 9350 1450
Wire Wire Line
	9350 1450 9650 1450
Wire Wire Line
	9650 1450 9650 1350
Wire Wire Line
	9650 1350 9950 1350
Wire Wire Line
	9950 1350 9950 1450
Wire Wire Line
	9950 1450 10100 1450
Text Notes 7300 1450 0    40   ~ 0
01100
Text Notes 7000 1450 0    40   ~ 0
00000
Text Notes 6700 1450 0    40   ~ 0
01000
Text Notes 6400 1450 0    40   ~ 0
00001
Text Notes 6100 1450 0    40   ~ 0
01011
Text Notes 5800 1450 0    40   ~ 0
00011
Text Notes 5500 1450 0    40   ~ 0
01111
Text Notes 7600 1450 0    40   ~ 0
10111
Text Notes 7900 1450 0    40   ~ 0
11011
Text Notes 8200 1450 0    40   ~ 0
10011
Wire Wire Line
	9650 1300 10100 1300
Wire Wire Line
	9650 1200 9650 1300
Wire Wire Line
	7550 1200 9650 1200
Wire Wire Line
	7550 1300 7550 1200
Wire Wire Line
	5450 1300 7550 1300
Wire Wire Line
	5450 1200 5450 1300
Text Notes 4950 1300 2    50   ~ 0
PHI0
Wire Wire Line
	10050 1150 10100 1150
Wire Wire Line
	10050 1050 10050 1150
Wire Wire Line
	9750 1150 9900 1150
Wire Wire Line
	9900 1150 9900 1050
Wire Wire Line
	9750 1050 9750 1150
Wire Wire Line
	9600 1050 9750 1050
Wire Wire Line
	9900 1050 10050 1050
Text Notes 4950 1150 2    50   ~ 0
C14M
Wire Wire Line
	9450 1150 9600 1150
Wire Wire Line
	9600 1150 9600 1050
Wire Wire Line
	9450 1050 9450 1150
Wire Wire Line
	9300 1050 9450 1050
Wire Wire Line
	9150 1050 9150 1150
Wire Wire Line
	9300 1150 9300 1050
Wire Wire Line
	9150 1150 9300 1150
Wire Wire Line
	9000 1050 9150 1050
Wire Wire Line
	8850 1050 8850 1150
Wire Wire Line
	9000 1150 9000 1050
Wire Wire Line
	8850 1150 9000 1150
Wire Wire Line
	8250 1150 8400 1150
Wire Wire Line
	8400 1150 8400 1050
Wire Wire Line
	8250 1050 8250 1150
Wire Wire Line
	8550 1150 8700 1150
Wire Wire Line
	8700 1150 8700 1050
Wire Wire Line
	8550 1050 8550 1150
Wire Wire Line
	8400 1050 8550 1050
Wire Wire Line
	8700 1050 8850 1050
Wire Wire Line
	8100 1050 8250 1050
Wire Wire Line
	7950 1050 7950 1150
Wire Wire Line
	8100 1150 8100 1050
Wire Wire Line
	7950 1150 8100 1150
Wire Wire Line
	7800 1050 7950 1050
Wire Wire Line
	7650 1050 7650 1150
Wire Wire Line
	7800 1150 7800 1050
Wire Wire Line
	7650 1150 7800 1150
Wire Wire Line
	7050 1150 7200 1150
Wire Wire Line
	7200 1150 7200 1050
Wire Wire Line
	7050 1050 7050 1150
Wire Wire Line
	7350 1150 7500 1150
Wire Wire Line
	7500 1150 7500 1050
Wire Wire Line
	7350 1050 7350 1150
Wire Wire Line
	7200 1050 7350 1050
Wire Wire Line
	7500 1050 7650 1050
Wire Wire Line
	6900 1050 7050 1050
Wire Wire Line
	6750 1050 6750 1150
Wire Wire Line
	6900 1150 6900 1050
Wire Wire Line
	6750 1150 6900 1150
Wire Wire Line
	6600 1050 6750 1050
Wire Wire Line
	6450 1050 6450 1150
Wire Wire Line
	6600 1150 6600 1050
Wire Wire Line
	6450 1150 6600 1150
Wire Wire Line
	5850 1150 6000 1150
Wire Wire Line
	6000 1150 6000 1050
Wire Wire Line
	5850 1050 5850 1150
Wire Wire Line
	6150 1150 6300 1150
Wire Wire Line
	6300 1150 6300 1050
Wire Wire Line
	6150 1050 6150 1150
Wire Wire Line
	6000 1050 6150 1050
Wire Wire Line
	6300 1050 6450 1050
Wire Wire Line
	5700 1050 5850 1050
Wire Wire Line
	5550 1050 5550 1150
Wire Wire Line
	5700 1150 5700 1050
Wire Wire Line
	5550 1150 5700 1150
Wire Wire Line
	5400 1050 5550 1050
Wire Wire Line
	5400 1150 5400 1050
Wire Wire Line
	5600 2950 5450 2950
Wire Wire Line
	5450 2950 5450 3050
Wire Wire Line
	5450 3050 5050 3050
Wire Wire Line
	5150 2800 5150 2900
Wire Wire Line
	5150 2900 5050 2900
Wire Wire Line
	5150 2800 5750 2800
Wire Wire Line
	4050 2650 4050 3200
Wire Wire Line
	4050 3500 4050 3400
Wire Wire Line
	4050 3700 4050 3600
Wire Wire Line
	4050 3900 4050 3800
NoConn ~ 4000 4000
Text Label 4000 6000 0    50   ~ 0
RA1
Text Label 4000 5800 0    50   ~ 0
RA7
Text Label 4000 5900 0    50   ~ 0
RA0
Text Label 4000 6100 0    50   ~ 0
RA2
Text Label 4000 6300 0    50   ~ 0
RA4
Text Label 4000 6400 0    50   ~ 0
RA5
Text Label 4000 6200 0    50   ~ 0
RA3
$Comp
L Device:R_Small R1
U 1 1 5E545933
P 2150 3100
F 0 "R1" H 2100 3150 50  0000 R CNN
F 1 "820" H 2100 3050 50  0000 R CNN
F 2 "stdpads:R_0805" H 2150 3100 50  0001 C CNN
F 3 "~" H 2150 3100 50  0001 C CNN
	1    2150 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3000 2150 2650
Connection ~ 2150 3200
Wire Wire Line
	2150 3200 2500 3200
Wire Wire Line
	2150 2650 4050 2650
$Comp
L power:GND #PWR0103
U 1 1 5E5EB414
P 2150 3400
F 0 "#PWR0103" H 2150 3150 50  0001 C CNN
F 1 "GND" H 2150 3250 50  0000 C CNN
F 2 "" H 2150 3400 50  0001 C CNN
F 3 "" H 2150 3400 50  0001 C CNN
	1    2150 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5E597D43
P 2150 3300
F 0 "C9" H 2200 3350 50  0000 L CNN
F 1 "10p" H 2200 3250 50  0000 L CNN
F 2 "stdpads:C_0805" H 2150 3300 50  0001 C CNN
F 3 "~" H 2150 3300 50  0001 C CNN
	1    2150 3300
	-1   0    0    -1  
$EndComp
Text Label 4000 6500 0    50   ~ 0
RA6
$Comp
L stdparts:DRAM_2Mx8 U2
U 1 1 5DA22C4C
P 5100 5900
F 0 "U2" H 5100 6767 50  0000 C CNN
F 1 "DRAM_2Mx8" H 5100 6676 50  0000 C CNN
F 2 "stdpads:SOJ-28-300mil" H 5100 5050 50  0001 C CNN
F 3 "https://www.alliancememory.com/wp-content/uploads/pdf/AS6C8008.pdf" H 5100 5350 50  0001 C CNN
	1    5100 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3050 5900 3050
Wire Wire Line
	5900 3050 5900 2950
Wire Wire Line
	5900 2950 6650 2950
$EndSCHEMATC
