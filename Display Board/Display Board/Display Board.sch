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
L MCU_Module:ItsyBitzy_M4 MCU1
U 1 1 5EF26AA1
P 5000 3950
F 0 "MCU1" H 5000 3027 50  0000 C CNN
F 1 "ItsyBitzy_M4" H 5000 2936 50  0000 C CNN
F 2 "Module:Adafruit_ItsyBitsy_M4" H 5000 3000 50  0001 C CNN
F 3 "https://www.adafruit.com/product/3800" H 5400 4550 50  0001 C CNN
	1    5000 3950
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:SSD1322 D1
U 1 1 5EF2A030
P 7000 4000
F 0 "D1" H 7228 4051 50  0000 L CNN
F 1 "SSD1322" H 7228 3960 50  0000 L CNN
F 2 "SamacSys_Parts:SSD1322" H 7000 5250 50  0001 C CNN
F 3 "https://www.buydisplay.com/download/manual/ER-OLED032-1_Series_Datasheet.pdf" H 7000 4550 50  0001 C CNN
	1    7000 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR0101
U 1 1 5EF2BA53
P 6700 3250
F 0 "#PWR0101" H 6700 3000 50  0001 C CNN
F 1 "GNDREF" V 6705 3122 50  0000 R CNN
F 2 "" H 6700 3250 50  0001 C CNN
F 3 "" H 6700 3250 50  0001 C CNN
	1    6700 3250
	0    1    1    0   
$EndComp
Text GLabel 6700 3350 0    50   Input ~ 0
3v3
Text GLabel 5550 4550 2    50   Output ~ 0
3v3
Text GLabel 6700 3550 0    50   Input ~ 0
SCK
Text GLabel 5550 3650 2    50   Output ~ 0
SCK
Text GLabel 6700 3650 0    50   Input ~ 0
MOSI
Text GLabel 5550 3550 2    50   Output ~ 0
MOSI
Text GLabel 4450 3950 0    50   Output ~ 0
dc
Text GLabel 6700 4550 0    50   Input ~ 0
dc
Text GLabel 4450 4050 0    50   Output ~ 0
RST
Text GLabel 6700 4650 0    50   Input ~ 0
RST
Text GLabel 4450 3850 0    50   Output ~ 0
CS
Text GLabel 6700 4750 0    50   Input ~ 0
CS
$Comp
L SamacSys_Parts:10129379-904002BLF J1
U 1 1 5EF33EAF
P 3150 4500
F 0 "J1" H 3042 4085 50  0000 C CNN
F 1 "10129379-904002BLF" H 3042 4176 50  0000 C CNN
F 2 "HDRRA4W67P0X254_1X4_1016X254X241P" H 2900 4000 50  0001 L CNN
F 3 "https://cdn.amphenol-icc.com/media/wysiwyg/files/drawing/10129379.pdf" H 2900 3900 50  0001 L CNN
F 4 "Headers & Wire Housings ECONOSTIK HEADER SR RA TH 1X4" H 2900 3800 50  0001 L CNN "Description"
F 5 "2.41" H 2900 3700 50  0001 L CNN "Height"
F 6 "649-1012937990402BLF" H 2900 3600 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Amphenol-FCI/10129379-904002BLF?qs=0lQeLiL1qybYsOE3kPCMFA%3D%3D" H 2900 3500 50  0001 L CNN "Mouser Price/Stock"
F 8 "Amphenol" H 2900 3400 50  0001 L CNN "Manufacturer_Name"
F 9 "10129379-904002BLF" H 2900 3300 50  0001 L CNN "Manufacturer_Part_Number"
	1    3150 4500
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR0102
U 1 1 5EF3901D
P 3550 4350
F 0 "#PWR0102" H 3550 4100 50  0001 C CNN
F 1 "GNDREF" V 3555 4222 50  0000 R CNN
F 2 "" H 3550 4350 50  0001 C CNN
F 3 "" H 3550 4350 50  0001 C CNN
	1    3550 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 4650 4450 4650
Text GLabel 3550 4450 2    50   BiDi ~ 0
SDA
Text GLabel 3550 4550 2    50   Output ~ 0
SCL
Text GLabel 4450 3550 0    50   BiDi ~ 0
SDA
Text GLabel 4450 3650 0    50   Input ~ 0
SCL
$Comp
L Mechanical:MountingHole H1
U 1 1 5EF3CE25
P 8000 5000
F 0 "H1" H 8100 5046 50  0000 L CNN
F 1 "MountingHole" H 8100 4955 50  0000 L CNN
F 2 "MountingHole:MountingHole_4mm_Pad_Better" H 8000 5000 50  0001 C CNN
F 3 "~" H 8000 5000 50  0001 C CNN
	1    8000 5000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5EF3E717
P 8000 5200
F 0 "H2" H 8100 5246 50  0000 L CNN
F 1 "MountingHole" H 8100 5155 50  0000 L CNN
F 2 "MountingHole:MountingHole_4mm_Pad_Better" H 8000 5200 50  0001 C CNN
F 3 "~" H 8000 5200 50  0001 C CNN
	1    8000 5200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5EF3E960
P 8000 5400
F 0 "H3" H 8100 5446 50  0000 L CNN
F 1 "MountingHole" H 8100 5355 50  0000 L CNN
F 2 "MountingHole:MountingHole_4mm_Pad_Better" H 8000 5400 50  0001 C CNN
F 3 "~" H 8000 5400 50  0001 C CNN
	1    8000 5400
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5EF3EADC
P 8000 5600
F 0 "H4" H 8100 5646 50  0000 L CNN
F 1 "MountingHole" H 8100 5555 50  0000 L CNN
F 2 "MountingHole:MountingHole_4mm_Pad_Better" H 8000 5600 50  0001 C CNN
F 3 "~" H 8000 5600 50  0001 C CNN
	1    8000 5600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
