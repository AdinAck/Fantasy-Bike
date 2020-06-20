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
Text HLabel 3050 3950 0    50   Input ~ 0
9v
$Comp
L power:GNDREF #PWR027
U 1 1 5EDC2FF4
P 4350 3850
F 0 "#PWR027" H 4350 3600 50  0001 C CNN
F 1 "GNDREF" V 4355 3722 50  0000 R CNN
F 2 "" H 4350 3850 50  0001 C CNN
F 3 "" H 4350 3850 50  0001 C CNN
	1    4350 3850
	0    -1   -1   0   
$EndComp
$Comp
L SamacSys_Parts:08053C334KAT2A C1
U 1 1 5EDC443E
P 3050 3600
F 0 "C1" V 3096 3472 50  0000 R CNN
F 1 "08053C334KAT2A" H 2900 3200 50  0001 L CNN
F 2 "CAPC2012X140N" H 2900 3300 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/08053C334KAT2A.pdf" H 3150 3550 50  0001 L CNN
F 4 "AVX 0805 Standard 0.33uF Ceramic Multilayer Capacitor, 25 V dc, +125" H 2900 3100 50  0001 L CNN "Description"
F 5 "1.4" H 2900 3000 50  0001 L CNN "Height"
F 6 "581-08053C334KAT2A" H 2900 2900 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=581-08053C334KAT2A" H 2900 2800 50  0001 L CNN "Mouser Price/Stock"
F 8 "AVX" H 2900 2700 50  0001 L CNN "Manufacturer_Name"
F 9 "08053C334KAT2A" H 2900 2600 50  0001 L CNN "Manufacturer_Part_Number"
F 10 ".33 uF" V 3005 3472 50  0000 R CNN "Capacitance"
	1    3050 3600
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR023
U 1 1 5EDCAB36
P 3050 3350
F 0 "#PWR023" H 3050 3100 50  0001 C CNN
F 1 "GNDREF" H 3055 3177 50  0000 C CNN
F 2 "" H 3050 3350 50  0001 C CNN
F 3 "" H 3050 3350 50  0001 C CNN
	1    3050 3350
	-1   0    0    1   
$EndComp
$Comp
L SamacSys_Parts:0805ZC104MAT2A C2
U 1 1 5EDCAD67
P 3050 4200
F 0 "C2" V 3004 4328 50  0000 L CNN
F 1 "0805ZC104MAT2A" H 2600 3850 50  0001 L CNN
F 2 "CAPC2012X94N" H 2600 3750 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/0805ZC104MAT2A.pdf" H 2600 3650 50  0001 L CNN
F 4 "Capacitor 0805 0.1UF +/-20% 10V" H 2600 3550 50  0001 L CNN "Description"
F 5 "581-0805ZC104MAT2A" H 2600 3350 50  0001 L CNN "Mouser Part Number"
F 6 "https://www.mouser.com/Search/Refine.aspx?Keyword=581-0805ZC104MAT2A" H 2600 3250 50  0001 L CNN "Mouser Price/Stock"
F 7 "AVX" H 3150 3650 50  0001 L CNN "Manufacturer_Name"
F 8 "0805ZC104MAT2A" H 2600 3050 50  0001 L CNN "Manufacturer_Part_Number"
F 9 "100nF" V 3095 4328 50  0000 L CNN "Capacitance"
	1    3050 4200
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR024
U 1 1 5EDCBEE5
P 3050 4450
F 0 "#PWR024" H 3050 4200 50  0001 C CNN
F 1 "GNDREF" H 3055 4277 50  0000 C CNN
F 2 "" H 3050 4450 50  0001 C CNN
F 3 "" H 3050 4450 50  0001 C CNN
	1    3050 4450
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:LM1117MPX-5.0_NOPB PS2
U 1 1 5EDD1B75
P 3700 5200
F 0 "PS2" H 3700 5565 50  0000 C CNN
F 1 "LM1117MPX-5.0_NOPB" H 3250 4750 50  0001 L CNN
F 2 "SOT230P700X180-4N" H 3250 4650 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/lm1117" H 3250 4650 50  0001 L CNN
F 4 "Space saving 800-mA low-dropout linear regulator with internal current limit" H 3250 4550 50  0001 L CNN "Description"
F 5 "1.8" H 3250 4450 50  0001 L CNN "Height"
F 6 "926-LM1117MPX5.0NOPB" H 3250 4350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=926-LM1117MPX5.0NOPB" H 3250 4250 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 3250 4150 50  0001 L CNN "Manufacturer_Name"
F 9 "LM1117MPX-5.0/NOPB" H 3250 4050 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "5v 800mA" H 3700 5474 50  0000 C CNN "Voltage, Current"
	1    3700 5200
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:UA78M09CKVURG3 PS1
U 1 1 5EDD40DA
P 3700 3900
F 0 "PS1" H 3700 4215 50  0000 C CNN
F 1 "UA78M09CKVURG3" H 3250 3450 50  0001 L CNN
F 2 "UA78M09CKVURG3" H 3250 3350 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/ua78m" H 4200 3950 50  0001 L CNN
F 4 "500-mA, 25-V linear voltage regulator" H 3250 3250 50  0001 L CNN "Description"
F 5 "2.52" H 3250 3150 50  0001 L CNN "Height"
F 6 "595-UA78M09CKVURG3" H 3250 3050 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=595-UA78M09CKVURG3" H 3250 2950 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 3250 2850 50  0001 L CNN "Manufacturer_Name"
F 9 "UA78M09CKVURG3" H 3250 2750 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "9v 500mA" H 3700 4124 50  0000 C CNN "Voltage, Current"
	1    3700 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR025
U 1 1 5EDD729F
P 3050 5100
F 0 "#PWR025" H 3050 4850 50  0001 C CNN
F 1 "GNDREF" V 3055 4972 50  0000 R CNN
F 2 "" H 3050 5100 50  0001 C CNN
F 3 "" H 3050 5100 50  0001 C CNN
	1    3050 5100
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:TPSC107K010R0150 C3
U 1 1 5EDD8F3F
P 4350 5450
F 0 "C3" V 4304 5580 50  0000 L CNN
F 1 "TPSC107K010R0150" H 4100 5150 50  0001 L CNN
F 2 "CAPPM6032X280N" H 4100 5050 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/TPSC107K010R0150.pdf" H 4450 5400 50  0001 L CNN
F 4 "Cap Tant Solid 100uF 10V C CASE 10% (6 X 3.2 X 2.6mm) SMD 6032-28 0.15 Ohm 125C T/R" H 4100 4950 50  0001 L CNN "Description"
F 5 "2.8" H 4100 4850 50  0001 L CNN "Height"
F 6 "581-TPSC107K010R0150" H 4100 4750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=581-TPSC107K010R0150" H 4100 4650 50  0001 L CNN "Mouser Price/Stock"
F 8 "AVX" H 4100 4550 50  0001 L CNN "Manufacturer_Name"
F 9 "TPSC107K010R0150" H 4100 4450 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "100 uF" V 4395 5580 50  0000 L CNN "Capacitance"
	1    4350 5450
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR028
U 1 1 5EDDA6C5
P 4350 5700
F 0 "#PWR028" H 4350 5450 50  0001 C CNN
F 1 "GNDREF" H 4355 5527 50  0000 C CNN
F 2 "" H 4350 5700 50  0001 C CNN
F 3 "" H 4350 5700 50  0001 C CNN
	1    4350 5700
	1    0    0    -1  
$EndComp
Text HLabel 4350 5200 2    50   Input ~ 0
5v
Text HLabel 3050 5200 0    50   Input ~ 0
5v
Text HLabel 3050 3850 0    50   Input ~ 0
CELL_4
Text HLabel 3050 5300 0    50   Input ~ 0
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
L MOSFET:AO3402 M21
U 1 1 5F4C2875
P 5200 7500
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
F 1 "STD12N60DM2AG" H 4180 7655 50  0000 L CNN
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
Text HLabel 4800 7500 0    50   Input ~ 0
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
Wire Wire Line
	3050 7650 3050 7800
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
	2550 8800 2550 6500
Wire Notes Line
	2550 6500 5800 6500
Wire Notes Line
	5800 6500 5800 8800
Wire Notes Line
	5800 8800 2550 8800
Text Notes 2550 6500 0    50   ~ 0
External Power Connections and Control
Wire Notes Line
	2550 6050 2550 3050
Wire Notes Line
	2550 3050 5800 3050
Wire Notes Line
	5800 3050 5800 6050
Wire Notes Line
	5800 6050 2550 6050
Text Notes 2550 3050 0    50   ~ 0
Regulators
$Comp
L SamacSys_Parts:ERJ-S06F2002V R?
U 1 1 5EEC9298
P 4800 7850
F 0 "R?" V 4754 7938 50  0000 L CNN
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
L power:GNDREF #PWR?
U 1 1 5EECA02E
P 4800 8200
F 0 "#PWR?" H 4800 7950 50  0001 C CNN
F 1 "GNDREF" H 4805 8027 50  0000 C CNN
F 2 "" H 4800 8200 50  0001 C CNN
F 3 "" H 4800 8200 50  0001 C CNN
	1    4800 8200
	1    0    0    -1  
$EndComp
Text GLabel 3750 8500 3    50   Input ~ 0
B-
$EndSCHEMATC
