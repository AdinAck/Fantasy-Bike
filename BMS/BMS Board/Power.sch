EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 3 6
Title "Power"
Date ""
Rev ""
Comp ""
Comment1 "Adin Ackerman"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3050 3650 0    50   Input ~ 0
9v
$Comp
L power:GNDREF #PWR027
U 1 1 5EDC2FF4
P 4350 3550
F 0 "#PWR027" H 4350 3300 50  0001 C CNN
F 1 "GNDREF" V 4355 3422 50  0000 R CNN
F 2 "" H 4350 3550 50  0001 C CNN
F 3 "" H 4350 3550 50  0001 C CNN
	1    4350 3550
	0    -1   -1   0   
$EndComp
$Comp
L SamacSys_Parts:08053C334KAT2A C1
U 1 1 5EDC443E
P 3050 3300
F 0 "C1" V 3096 3172 50  0000 R CNN
F 1 "08053C334KAT2A" H 2900 2900 50  0001 L CNN
F 2 "CAPC2012X140N" H 2900 3000 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/08053C334KAT2A.pdf" H 3150 3250 50  0001 L CNN
F 4 "AVX 0805 Standard 0.33uF Ceramic Multilayer Capacitor, 25 V dc, +125" H 2900 2800 50  0001 L CNN "Description"
F 5 "1.4" H 2900 2700 50  0001 L CNN "Height"
F 6 "581-08053C334KAT2A" H 2900 2600 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=581-08053C334KAT2A" H 2900 2500 50  0001 L CNN "Mouser Price/Stock"
F 8 "AVX" H 2900 2400 50  0001 L CNN "Manufacturer_Name"
F 9 "08053C334KAT2A" H 2900 2300 50  0001 L CNN "Manufacturer_Part_Number"
F 10 ".33 uF" V 3005 3172 50  0000 R CNN "Capacitance"
	1    3050 3300
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR023
U 1 1 5EDCAB36
P 3050 3050
F 0 "#PWR023" H 3050 2800 50  0001 C CNN
F 1 "GNDREF" H 3055 2877 50  0000 C CNN
F 2 "" H 3050 3050 50  0001 C CNN
F 3 "" H 3050 3050 50  0001 C CNN
	1    3050 3050
	-1   0    0    1   
$EndComp
$Comp
L SamacSys_Parts:0805ZC104MAT2A C2
U 1 1 5EDCAD67
P 3050 3900
F 0 "C2" V 3004 4028 50  0000 L CNN
F 1 "0805ZC104MAT2A" H 2600 3550 50  0001 L CNN
F 2 "CAPC2012X94N" H 2600 3450 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/0805ZC104MAT2A.pdf" H 2600 3350 50  0001 L CNN
F 4 "Capacitor 0805 0.1UF +/-20% 10V" H 2600 3250 50  0001 L CNN "Description"
F 5 "581-0805ZC104MAT2A" H 2600 3050 50  0001 L CNN "Mouser Part Number"
F 6 "https://www.mouser.com/Search/Refine.aspx?Keyword=581-0805ZC104MAT2A" H 2600 2950 50  0001 L CNN "Mouser Price/Stock"
F 7 "AVX" H 3150 3350 50  0001 L CNN "Manufacturer_Name"
F 8 "0805ZC104MAT2A" H 2600 2750 50  0001 L CNN "Manufacturer_Part_Number"
F 9 "100nF" V 3095 4028 50  0000 L CNN "Capacitance"
	1    3050 3900
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR024
U 1 1 5EDCBEE5
P 3050 4150
F 0 "#PWR024" H 3050 3900 50  0001 C CNN
F 1 "GNDREF" H 3055 3977 50  0000 C CNN
F 2 "" H 3050 4150 50  0001 C CNN
F 3 "" H 3050 4150 50  0001 C CNN
	1    3050 4150
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:LM1117MPX-5.0_NOPB PS2
U 1 1 5EDD1B75
P 3700 4900
F 0 "PS2" H 3700 5265 50  0000 C CNN
F 1 "LM1117MPX-5.0_NOPB" H 3250 4450 50  0001 L CNN
F 2 "SOT230P700X180-4N" H 3250 4350 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/lm1117" H 3250 4350 50  0001 L CNN
F 4 "Space saving 800-mA low-dropout linear regulator with internal current limit" H 3250 4250 50  0001 L CNN "Description"
F 5 "1.8" H 3250 4150 50  0001 L CNN "Height"
F 6 "926-LM1117MPX5.0NOPB" H 3250 4050 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=926-LM1117MPX5.0NOPB" H 3250 3950 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 3250 3850 50  0001 L CNN "Manufacturer_Name"
F 9 "LM1117MPX-5.0/NOPB" H 3250 3750 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "5v 800mA" H 3700 5174 50  0000 C CNN "Voltage, Current"
	1    3700 4900
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:UA78M09CKVURG3 PS1
U 1 1 5EDD40DA
P 3700 3600
F 0 "PS1" H 3700 3915 50  0000 C CNN
F 1 "UA78M09CKVURG3" H 3250 3150 50  0001 L CNN
F 2 "UA78M09CKVURG3" H 3250 3050 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/ua78m" H 4200 3650 50  0001 L CNN
F 4 "500-mA, 25-V linear voltage regulator" H 3250 2950 50  0001 L CNN "Description"
F 5 "2.52" H 3250 2850 50  0001 L CNN "Height"
F 6 "595-UA78M09CKVURG3" H 3250 2750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=595-UA78M09CKVURG3" H 3250 2650 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 3250 2550 50  0001 L CNN "Manufacturer_Name"
F 9 "UA78M09CKVURG3" H 3250 2450 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "9v 500mA" H 3700 3824 50  0000 C CNN "Voltage, Current"
	1    3700 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR025
U 1 1 5EDD729F
P 3050 4800
F 0 "#PWR025" H 3050 4550 50  0001 C CNN
F 1 "GNDREF" V 3055 4672 50  0000 R CNN
F 2 "" H 3050 4800 50  0001 C CNN
F 3 "" H 3050 4800 50  0001 C CNN
	1    3050 4800
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:TPSC107K010R0150 C3
U 1 1 5EDD8F3F
P 4350 5150
F 0 "C3" V 4304 5280 50  0000 L CNN
F 1 "TPSC107K010R0150" H 4100 4850 50  0001 L CNN
F 2 "CAPPM6032X280N" H 4100 4750 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/TPSC107K010R0150.pdf" H 4450 5100 50  0001 L CNN
F 4 "Cap Tant Solid 100uF 10V C CASE 10% (6 X 3.2 X 2.6mm) SMD 6032-28 0.15 Ohm 125C T/R" H 4100 4650 50  0001 L CNN "Description"
F 5 "2.8" H 4100 4550 50  0001 L CNN "Height"
F 6 "581-TPSC107K010R0150" H 4100 4450 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=581-TPSC107K010R0150" H 4100 4350 50  0001 L CNN "Mouser Price/Stock"
F 8 "AVX" H 4100 4250 50  0001 L CNN "Manufacturer_Name"
F 9 "TPSC107K010R0150" H 4100 4150 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "100 uF" V 4395 5280 50  0000 L CNN "Capacitance"
	1    4350 5150
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR028
U 1 1 5EDDA6C5
P 4350 5400
F 0 "#PWR028" H 4350 5150 50  0001 C CNN
F 1 "GNDREF" H 4355 5227 50  0000 C CNN
F 2 "" H 4350 5400 50  0001 C CNN
F 3 "" H 4350 5400 50  0001 C CNN
	1    4350 5400
	1    0    0    -1  
$EndComp
Text HLabel 4350 4900 2    50   Input ~ 0
5v
Text HLabel 3050 4900 0    50   Input ~ 0
5v
Text HLabel 3050 3550 0    50   Input ~ 0
CELL_4
Text HLabel 3050 5000 0    50   Input ~ 0
CELL_4
$Comp
L SamacSys_Parts:G5PZ-1A_DC12 K1
U 1 1 5F4A1D5B
P 4050 6900
F 0 "K1" H 4050 7215 50  0000 C CNN
F 1 "G5PZ-1A_DC12" H 4050 7124 50  0000 C CNN
F 2 "G5PZ1ADC12" H 3600 6600 50  0001 L CNN
F 3 "https://www.mouser.dk/datasheet/2/307/Omron_(ENG)G5PZ_E-1843616.pdf" H 3600 6500 50  0001 L CNN
F 4 "General Purpose Relays PCB Power Relay Compact 20A, 12 VDC" H 3600 6400 50  0001 L CNN "Description"
F 5 "25" H 3600 6300 50  0001 L CNN "Height"
F 6 "653-G5PZ-1ADC12" H 3600 6200 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Omron-Electronics/G5PZ-1A-DC12?qs=vLWxofP3U2yqASFzOg0VVA%3D%3D" H 3600 6100 50  0001 L CNN "Mouser Price/Stock"
F 8 "Omron Electronics" H 3600 6000 50  0001 L CNN "Manufacturer_Name"
F 9 "G5PZ-1A DC12" H 3600 5900 50  0001 L CNN "Manufacturer_Part_Number"
	1    4050 6900
	1    0    0    -1  
$EndComp
Text HLabel 3400 6850 0    50   Input ~ 0
CELL_4
$Comp
L BMS-Board-rescue:AO3402-MOSFET M21
U 1 1 5F4C2875
P 5200 7500
AR Path="/5F4C2875" Ref="M21"  Part="1" 
AR Path="/5E9A2B9F/5F4C2875" Ref="M21"  Part="1" 
F 0 "M21" H 5428 7546 50  0000 L CNN
F 1 "AO3402" H 5428 7455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5200 6850 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1808131821_Alpha-Omega-Semicon-AO3402_C14385.pdf" H 5050 7700 50  0001 C CNN
	1    5200 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 6850 5200 6850
Wire Wire Line
	5200 6850 5200 7100
$Comp
L power:GNDREF #PWR029
U 1 1 5F4C4B44
P 5200 7900
F 0 "#PWR029" H 5200 7650 50  0001 C CNN
F 1 "GNDREF" H 5205 7727 50  0000 C CNN
F 2 "" H 5200 7900 50  0001 C CNN
F 3 "" H 5200 7900 50  0001 C CNN
	1    5200 7900
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:STD12N60DM2AG Q1
U 1 1 5EEA5745
P 4000 7700
F 0 "Q1" H 4180 7746 50  0000 L CNN
F 1 "STD12N60DM2AG" H 4180 7655 50  0001 L CNN
F 2 "STD13N60DM2" H 3750 7050 50  0001 L CNN
F 3 "https://www.st.com/resource/en/datasheet/std12n60dm2ag.pdf" H 3750 6950 50  0001 L CNN
F 4 "Automotive-grade N-channel 600 V, 0.380  typ., 10 A MDmesh DM2 Power MOSFET in a DPAK package" H 3750 6850 50  0001 L CNN "Description"
F 5 "2" H 3750 6750 50  0001 L CNN "Height"
F 6 "511-STD12N60DM2AG" H 3750 6650 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/STMicroelectronics/STD12N60DM2AG?qs=%252BEew9%252B0nqrDrPnRRL16y%2Fg%3D%3D" H 3750 6550 50  0001 L CNN "Mouser Price/Stock"
F 8 "STMicroelectronics" H 3750 6450 50  0001 L CNN "Manufacturer_Name"
F 9 "STD12N60DM2AG" H 3750 6350 50  0001 L CNN "Manufacturer_Part_Number"
	1    4000 7700
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ERJ-S06F2002V R101
U 1 1 5EEA8A24
P 3750 8150
F 0 "R101" V 3704 8238 50  0000 L CNN
F 1 "ERJ-S06F2002V" H 3600 7850 50  0001 L CNN
F 2 "RESC2012X70N" H 3600 7750 50  0001 L CNN
F 3 "https://www.mouser.com/datasheet/2/315/AOA0000C334-1314047.pdf" H 3600 7750 50  0001 L CNN
F 4 "Thick Film Resistors 0805 20Kohms 1% Anti-Sulfur" H 3600 7650 50  0001 L CNN "Description"
F 5 "0.7" H 3600 7550 50  0001 L CNN "Height"
F 6 "667-ERJ-S06F2002V" H 3600 7450 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/ProductDetail/Panasonic/ERJ-S06F2002V?qs=sGAEpiMZZMvdGkrng054t59%2FMXCyyixe0yzNlTwRWTk%3D" H 3600 7350 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 3600 7250 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-S06F2002V" H 3600 7150 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "20 k" V 3795 8238 50  0000 L CNN "Resistance"
	1    3750 8150
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:Power_Pad P3
U 1 1 5EEB4497
P 2900 7950
F 0 "P3" H 2900 8100 50  0001 C CNN
F 1 "Power_Pad" H 2900 8050 50  0001 C CNN
F 2 "SamacSys_Parts:Power_Pad" H 2900 7750 50  0001 C CNN
F 3 "" H 2900 8350 50  0001 C CNN
	1    2900 7950
	-1   0    0    1   
$EndComp
$Comp
L SamacSys_Parts:Power_Pad P4
U 1 1 5EEB4AB9
P 2900 8150
F 0 "P4" H 2900 8300 50  0001 C CNN
F 1 "Power_Pad" H 2900 8250 50  0001 C CNN
F 2 "SamacSys_Parts:Power_Pad" H 2900 7950 50  0001 C CNN
F 3 "" H 2900 8550 50  0001 C CNN
	1    2900 8150
	-1   0    0    1   
$EndComp
$Comp
L SamacSys_Parts:Power_Pad P2
U 1 1 5EEB4E06
P 2900 7800
F 0 "P2" H 2900 7950 50  0001 C CNN
F 1 "Power_Pad" H 2900 7900 50  0001 C CNN
F 2 "SamacSys_Parts:Power_Pad" H 2900 7600 50  0001 C CNN
F 3 "" H 2900 8200 50  0001 C CNN
	1    2900 7800
	-1   0    0    1   
$EndComp
$Comp
L SamacSys_Parts:Power_Pad P5
U 1 1 5EEB5080
P 2900 8350
F 0 "P5" H 2900 8500 50  0001 C CNN
F 1 "Power_Pad" H 2900 8450 50  0001 C CNN
F 2 "SamacSys_Parts:Power_Pad" H 2900 8150 50  0001 C CNN
F 3 "" H 2900 8750 50  0001 C CNN
	1    2900 8350
	-1   0    0    1   
$EndComp
$Comp
L SamacSys_Parts:Power_Pad P1
U 1 1 5EEB5D30
P 2900 7650
F 0 "P1" H 2900 7800 50  0001 C CNN
F 1 "Power_Pad" H 2900 7750 50  0001 C CNN
F 2 "SamacSys_Parts:Power_Pad" H 2900 7450 50  0001 C CNN
F 3 "" H 2900 8050 50  0001 C CNN
	1    2900 7650
	-1   0    0    1   
$EndComp
$Comp
L SamacSys_Parts:Power_Pad P6
U 1 1 5EEB601B
P 2900 8550
F 0 "P6" H 2900 8700 50  0001 C CNN
F 1 "Power_Pad" H 2900 8650 50  0001 C CNN
F 2 "SamacSys_Parts:Power_Pad" H 2900 8350 50  0001 C CNN
F 3 "" H 2900 8950 50  0001 C CNN
	1    2900 8550
	-1   0    0    1   
$EndComp
Text HLabel 4500 7500 0    50   Input ~ 0
C_SIG
Text HLabel 3750 7800 0    50   Input ~ 0
P_SIG
Text Notes 2700 7650 0    50   ~ 0
B+
Text Notes 2700 8550 0    50   ~ 0
B-
Text Notes 2700 7800 0    50   ~ 0
C+
Text Notes 2700 8350 0    50   ~ 0
C-
Text Notes 2700 7950 0    50   ~ 0
P+
Text Notes 2700 8150 0    50   ~ 0
P-
Text GLabel 3050 8550 2    50   Input ~ 0
B-
Text GLabel 4050 8000 3    50   Input ~ 0
B-
Text GLabel 3400 6950 0    50   Input ~ 0
B-
Text GLabel 4700 6950 2    50   Input ~ 0
C-
Text GLabel 3050 8350 2    50   Input ~ 0
C-
Connection ~ 3050 7800
Wire Wire Line
	3050 7800 3050 7950
Text GLabel 3050 8150 2    50   Input ~ 0
P-
Text GLabel 4050 7400 1    50   Input ~ 0
P-
Wire Notes Line
	2650 7550 3250 7550
Wire Notes Line
	3250 7550 3250 8650
Wire Notes Line
	3250 8650 2650 8650
Wire Notes Line
	2650 7550 2650 8650
Text Notes 2650 7550 0    50   ~ 0
Power Pads
Wire Notes Line
	2550 6150 5800 6150
Wire Notes Line
	5800 9050 2550 9050
Text Notes 2550 6150 0    50   ~ 0
External Power Connections and Control
Wire Notes Line
	2550 5750 2550 2750
Wire Notes Line
	2550 2750 5800 2750
Wire Notes Line
	5800 2750 5800 5750
Wire Notes Line
	5800 5750 2550 5750
Text Notes 2550 2750 0    50   ~ 0
Regulators
$Comp
L SamacSys_Parts:ERJ-S06F2002V R122
U 1 1 5EEC9298
P 4800 7850
F 0 "R122" V 4754 7938 50  0000 L CNN
F 1 "ERJ-S06F2002V" H 4650 7550 50  0001 L CNN
F 2 "RESC2012X70N" H 4650 7450 50  0001 L CNN
F 3 "https://www.mouser.com/datasheet/2/315/AOA0000C334-1314047.pdf" H 4650 7450 50  0001 L CNN
F 4 "Thick Film Resistors 0805 20Kohms 1% Anti-Sulfur" H 4650 7350 50  0001 L CNN "Description"
F 5 "0.7" H 4650 7250 50  0001 L CNN "Height"
F 6 "667-ERJ-S06F2002V" H 4650 7150 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/ProductDetail/Panasonic/ERJ-S06F2002V?qs=sGAEpiMZZMvdGkrng054t59%2FMXCyyixe0yzNlTwRWTk%3D" H 4650 7050 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 4650 6950 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-S06F2002V" H 4650 6850 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "20 k" V 4845 7938 50  0000 L CNN "Resistance"
	1    4800 7850
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR0136
U 1 1 5EECA02E
P 4800 8200
F 0 "#PWR0136" H 4800 7950 50  0001 C CNN
F 1 "GNDREF" H 4805 8027 50  0000 C CNN
F 2 "" H 4800 8200 50  0001 C CNN
F 3 "" H 4800 8200 50  0001 C CNN
	1    4800 8200
	1    0    0    -1  
$EndComp
Text GLabel 3750 8500 3    50   Input ~ 0
B-
$Comp
L SamacSys_Parts:S1G D2
U 1 1 5EF4840C
P 4050 6500
F 0 "D2" H 4050 6765 50  0000 C CNN
F 1 "S1G" H 4050 6674 50  0000 C CNN
F 2 "DIOM5227X250N" H 3750 6150 50  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/S1M-D.pdf" H 3750 6050 50  0001 L CNN
F 4 "ON Semi 400V 1A, Diode, 2-Pin DO-214AC S1G" H 3750 5950 50  0001 L CNN "Description"
F 5 "2.5" H 3750 5850 50  0001 L CNN "Height"
F 6 "512-S1G" H 3750 5750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/ON-Semiconductor-Fairchild/S1G?qs=RJwZ8kJo1mjiLbqXClupXw%3D%3D" H 3750 5650 50  0001 L CNN "Mouser Price/Stock"
F 8 "ON Semiconductor" H 3750 5550 50  0001 L CNN "Manufacturer_Name"
F 9 "S1G" H 3750 5450 50  0001 L CNN "Manufacturer_Part_Number"
	1    4050 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 6500 3400 6500
Wire Wire Line
	3400 6500 3400 6850
Wire Wire Line
	4350 6500 4700 6500
Wire Wire Line
	4700 6500 4700 6850
Connection ~ 4700 6850
$Comp
L SamacSys_Parts:S1G D1
U 1 1 5EF4C90F
P 3400 8100
F 0 "D1" V 3354 8228 50  0000 L CNN
F 1 "S1G" V 3445 8228 50  0000 L CNN
F 2 "DIOM5227X250N" H 3100 7750 50  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/S1M-D.pdf" H 3100 7650 50  0001 L CNN
F 4 "ON Semi 400V 1A, Diode, 2-Pin DO-214AC S1G" H 3100 7550 50  0001 L CNN "Description"
F 5 "2.5" H 3100 7450 50  0001 L CNN "Height"
F 6 "512-S1G" H 3100 7350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/ON-Semiconductor-Fairchild/S1G?qs=RJwZ8kJo1mjiLbqXClupXw%3D%3D" H 3100 7250 50  0001 L CNN "Mouser Price/Stock"
F 8 "ON Semiconductor" H 3100 7150 50  0001 L CNN "Manufacturer_Name"
F 9 "S1G" H 3100 7050 50  0001 L CNN "Manufacturer_Part_Number"
	1    3400 8100
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 7650 3050 7800
Wire Wire Line
	3400 7800 3050 7800
Text GLabel 3400 8400 3    50   Input ~ 0
P-
$Comp
L SamacSys_Parts:ERJ-P06F2200V R143
U 1 1 5EF455EC
P 4500 7850
F 0 "R143" V 4454 7938 50  0000 L CNN
F 1 "ERJ-P06F2200V" H 4350 7600 50  0001 L CNN
F 2 "RESC2012X70N" H 4350 7500 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-P06F2200V.pdf" H 4700 7800 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 220ohms 0.5W 1% AEC-Q200" H 4350 7400 50  0001 L CNN "Description"
F 5 "0.7" H 4350 7300 50  0001 L CNN "Height"
F 6 "667-ERJ-P06F2200V" H 4350 7200 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-P06F2200V" H 4350 7100 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 4350 7000 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-P06F2200V" H 4350 6900 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "220" V 4545 7938 50  0000 L CNN "Resistance"
	1    4500 7850
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:HSMG-C170 LED3
U 1 1 5EF477B4
P 4500 8450
F 0 "LED3" V 4496 8322 50  0000 R CNN
F 1 "HSMG-C170" V 4405 8322 50  0000 R CNN
F 2 "LEDC2012X80N" H 4250 8050 50  0001 L BNN
F 3 "" H 4650 8500 50  0001 L BNN
F 4 "Green LED, 15 mcd 170 , 2-pin 0805 SMD Package" H 4250 7950 50  0001 L BNN "Description"
F 5 "0.8" H 4250 7850 50  0001 L BNN "Height"
F 6 "630-HSMG-C170" H 4250 7750 50  0001 L BNN "Mouser Part Number"
F 7 "https://www.mouser.co.uk/ProductDetail/Broadcom-Avago/HSMG-C170?qs=YDL0qNrpDT4lm8ArMPkMEA%3D%3D" H 4250 7650 50  0001 L BNN "Mouser Price/Stock"
F 8 "Avago Technologies" H 4250 7550 50  0001 L BNN "Manufacturer_Name"
F 9 "HSMG-C170" H 4250 7450 50  0001 L BNN "Manufacturer_Part_Number"
	1    4500 8450
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR0155
U 1 1 5EF48294
P 4500 8800
F 0 "#PWR0155" H 4500 8550 50  0001 C CNN
F 1 "GNDREF" H 4505 8627 50  0000 C CNN
F 2 "" H 4500 8800 50  0001 C CNN
F 3 "" H 4500 8800 50  0001 C CNN
	1    4500 8800
	1    0    0    -1  
$EndComp
Wire Notes Line
	2550 9050 2550 6150
Wire Notes Line
	5800 6150 5800 9050
Wire Wire Line
	4500 7500 4800 7500
Connection ~ 4800 7500
$EndSCHEMATC
