EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 2 2
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
L MUX509:MUX509 U?
U 1 1 5E5984BE
P 6400 2200
AR Path="/5E4DF891/5E5984BE" Ref="U?"  Part="1" 
AR Path="/5E5984BE" Ref="U?"  Part="1" 
AR Path="/5E4E6D39/5E5984BE" Ref="U?"  Part="1" 
F 0 "U?" V 6400 2600 50  0000 R CNN
F 1 "MUX509" V 6400 2150 50  0000 R CNN
F 2 "MUX509.:SOP-16" H 6400 2950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/mux509.pdf" H 6300 2350 50  0001 C CNN
	1    6400 2200
	0    -1   -1   0   
$EndComp
$Comp
L SamacSys_Parts:INA149AID U?
U 1 1 5E5984CA
P 7550 2200
AR Path="/5E4DF891/5E5984CA" Ref="U?"  Part="1" 
AR Path="/5E5984CA" Ref="U?"  Part="1" 
AR Path="/5E4E6D39/5E5984CA" Ref="U?"  Part="1" 
F 0 "U?" H 7550 2550 50  0000 C CNN
F 1 "INA149AID" H 7550 2450 50  0000 C CNN
F 2 "SOIC127P600X175-8N" H 7150 1700 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina149.pdf" H 7150 1600 50  0001 L CNN
F 4 "Texas Instruments INA149AID, Differential Amplifier 8-Pin SOIC" H 7150 1500 50  0001 L CNN "Description"
F 5 "1.75" H 7150 1400 50  0001 L CNN "Height"
F 6 "595-INA149AID" H 7150 1300 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=595-INA149AID" H 7150 1200 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 7150 1100 50  0001 L CNN "Manufacturer_Name"
F 9 "INA149AID" H 7150 1000 50  0001 L CNN "Manufacturer_Part_Number"
	1    7550 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E5984D0
P 7050 2350
AR Path="/5E4DF891/5E5984D0" Ref="#PWR?"  Part="1" 
AR Path="/5E5984D0" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E5984D0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 2100 50  0001 C CNN
F 1 "GNDREF" H 7055 2177 50  0000 C CNN
F 2 "" H 7050 2350 50  0001 C CNN
F 3 "" H 7050 2350 50  0001 C CNN
	1    7050 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E5984D6
P 7050 2050
AR Path="/5E4DF891/5E5984D6" Ref="#PWR?"  Part="1" 
AR Path="/5E5984D6" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E5984D6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 1800 50  0001 C CNN
F 1 "GNDREF" H 7055 1877 50  0000 C CNN
F 2 "" H 7050 2050 50  0001 C CNN
F 3 "" H 7050 2050 50  0001 C CNN
	1    7050 2050
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E5984DC
P 8050 2350
AR Path="/5E4DF891/5E5984DC" Ref="#PWR?"  Part="1" 
AR Path="/5E5984DC" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E5984DC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8050 2100 50  0001 C CNN
F 1 "GNDREF" H 8055 2177 50  0000 C CNN
F 2 "" H 8050 2350 50  0001 C CNN
F 3 "" H 8050 2350 50  0001 C CNN
	1    8050 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2150 6850 2150
Wire Wire Line
	6850 2150 6850 1850
Wire Wire Line
	7050 2250 6850 2250
Wire Wire Line
	6850 2250 6850 2550
$Comp
L SamacSys_Parts:PS2801-4-F3-A U?
U 1 1 5E5984ED
P 4000 2200
AR Path="/5E4DF891/5E5984ED" Ref="U?"  Part="1" 
AR Path="/5E5984ED" Ref="U?"  Part="1" 
AR Path="/5E4E6D39/5E5984ED" Ref="U?"  Part="1" 
F 0 "U?" H 4000 2750 50  0000 C CNN
F 1 "PS2801-4-F3-A" H 4000 2650 50  0000 C CNN
F 2 "SOIC127P700X230-16N" H 3350 1550 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/PS2801-4-F3-A.pdf" H 4700 2550 50  0001 L CNN
F 4 "Transistor Output Optocouplers Hi-Iso Photo 4-Ch" H 3350 1450 50  0001 L CNN "Description"
F 5 "2.3" H 3350 1350 50  0001 L CNN "Height"
F 6 "551-PS2801-4-F3-A" H 3350 1250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=551-PS2801-4-F3-A" H 3350 1150 50  0001 L CNN "Mouser Price/Stock"
F 8 "CEL" H 3350 1050 50  0001 L CNN "Manufacturer_Name"
F 9 "PS2801-4-F3-A" H 3350 950 50  0001 L CNN "Manufacturer_Part_Number"
	1    4000 2200
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ERJ-UP6J103v R?
U 1 1 5E5984FA
P 5800 1850
AR Path="/5E4DF891/5E5984FA" Ref="R?"  Part="1" 
AR Path="/5E5984FA" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E5984FA" Ref="R?"  Part="1" 
F 0 "R?" H 5900 1750 50  0000 C CNN
F 1 "ERJ-UP6J103v" H 5650 1650 50  0001 L CNN
F 2 "RESC2012X70N" H 5650 1550 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-UP6J103V.pdf" H 5650 1450 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 0.5W 5% 10KOhm Anti-sulfur AEC-Q200" H 5650 1350 50  0001 L CNN "Description"
F 5 "0.7" H 5650 1250 50  0001 L CNN "Height"
F 6 "667-ERJ-UP6J103V" H 5650 1150 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-UP6J103V" H 5650 1050 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 5650 950 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-UP6J103V" H 5650 850 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "10 k" H 5800 1850 50  0000 C CNN "Resistance"
	1    5800 1850
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:ERJ-UP6J103v R?
U 1 1 5E598507
P 5550 2200
AR Path="/5E4DF891/5E598507" Ref="R?"  Part="1" 
AR Path="/5E598507" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E598507" Ref="R?"  Part="1" 
F 0 "R?" H 5650 2100 50  0000 C CNN
F 1 "ERJ-UP6J103v" H 5400 2000 50  0001 L CNN
F 2 "RESC2012X70N" H 5400 1900 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-UP6J103V.pdf" H 5400 1800 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 0.5W 5% 10KOhm Anti-sulfur AEC-Q200" H 5400 1700 50  0001 L CNN "Description"
F 5 "0.7" H 5400 1600 50  0001 L CNN "Height"
F 6 "667-ERJ-UP6J103V" H 5400 1500 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-UP6J103V" H 5400 1400 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 5400 1300 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-UP6J103V" H 5400 1200 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "10 k" H 5550 2200 50  0000 C CNN "Resistance"
	1    5550 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 2550 6150 2650
$Comp
L SamacSys_Parts:ERJ-UP6J103v R?
U 1 1 5E598518
P 5350 2100
AR Path="/5E4DF891/5E598518" Ref="R?"  Part="1" 
AR Path="/5E598518" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E598518" Ref="R?"  Part="1" 
F 0 "R?" H 5450 2000 50  0000 C CNN
F 1 "ERJ-UP6J103v" H 5200 1900 50  0001 L CNN
F 2 "RESC2012X70N" H 5200 1800 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-UP6J103V.pdf" H 5200 1700 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 0.5W 5% 10KOhm Anti-sulfur AEC-Q200" H 5200 1600 50  0001 L CNN "Description"
F 5 "0.7" H 5200 1500 50  0001 L CNN "Height"
F 6 "667-ERJ-UP6J103V" H 5200 1400 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-UP6J103V" H 5200 1300 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 5200 1200 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-UP6J103V" H 5200 1100 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "10 k" H 5350 2100 50  0000 C CNN "Resistance"
	1    5350 2100
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E59851E
P 5800 2200
AR Path="/5E4DF891/5E59851E" Ref="#PWR?"  Part="1" 
AR Path="/5E59851E" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E59851E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5800 1950 50  0001 C CNN
F 1 "GNDREF" H 5805 2027 50  0000 C CNN
F 2 "" H 5800 2200 50  0001 C CNN
F 3 "" H 5800 2200 50  0001 C CNN
	1    5800 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E598524
P 5350 1750
AR Path="/5E4DF891/5E598524" Ref="#PWR?"  Part="1" 
AR Path="/5E598524" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E598524" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5350 1500 50  0001 C CNN
F 1 "GNDREF" H 5355 1577 50  0000 C CNN
F 2 "" H 5350 1750 50  0001 C CNN
F 3 "" H 5350 1750 50  0001 C CNN
	1    5350 1750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 1750 5550 1750
Wire Wire Line
	5550 1750 5550 1850
Wire Wire Line
	6050 2550 5550 2550
Wire Wire Line
	4900 2550 4900 2350
Wire Wire Line
	4900 2350 4800 2350
Wire Wire Line
	6150 2650 5350 2650
Wire Wire Line
	5150 2450 5150 2150
Wire Wire Line
	5150 2150 4800 2150
Wire Wire Line
	4900 2550 5550 2550
Connection ~ 5550 2550
Wire Wire Line
	5350 2450 5150 2450
Connection ~ 5350 2450
Wire Wire Line
	6050 1850 6050 1500
Wire Wire Line
	6050 1500 5800 1500
Wire Wire Line
	5150 1950 4800 1950
Connection ~ 5800 1500
Wire Wire Line
	5800 1500 5150 1500
Wire Wire Line
	6850 2550 6750 2550
Wire Wire Line
	6850 1850 6750 1850
NoConn ~ 4800 2450
NoConn ~ 4800 2550
NoConn ~ 3200 2550
NoConn ~ 3200 2450
$Comp
L power:GNDREF #PWR?
U 1 1 5E598545
P 6350 1500
AR Path="/5E4DF891/5E598545" Ref="#PWR?"  Part="1" 
AR Path="/5E598545" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E598545" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6350 1250 50  0001 C CNN
F 1 "GNDREF" H 6355 1327 50  0000 C CNN
F 2 "" H 6350 1500 50  0001 C CNN
F 3 "" H 6350 1500 50  0001 C CNN
	1    6350 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 1850 6350 1500
Wire Wire Line
	6350 1500 6150 1500
Wire Wire Line
	6150 1500 6150 1850
Connection ~ 6350 1500
$Comp
L power:GNDREF #PWR?
U 1 1 5E59854F
P 6150 2750
AR Path="/5E4DF891/5E59854F" Ref="#PWR?"  Part="1" 
AR Path="/5E59854F" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E59854F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6150 2500 50  0001 C CNN
F 1 "GNDREF" V 6155 2622 50  0000 R CNN
F 2 "" H 6150 2750 50  0001 C CNN
F 3 "" H 6150 2750 50  0001 C CNN
	1    6150 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 2750 6250 2750
Wire Wire Line
	6250 2750 6250 2550
$Comp
L SamacSys_Parts:ERJ-6ENF1001V R?
U 1 1 5E598562
P 2750 1850
AR Path="/5E4DF891/5E598562" Ref="R?"  Part="1" 
AR Path="/5E598562" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E598562" Ref="R?"  Part="1" 
F 0 "R?" H 2650 1950 50  0000 C CNN
F 1 "ERJ-6ENF1001V" H 2600 1950 50  0001 L CNN
F 2 "RESC2012X70N" H 2450 2250 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-6ENF1001V.pdf" H 2600 1550 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 1Kohms 1% AEC-Q200" H 2600 1450 50  0001 L CNN "Description"
F 5 "0.7" H 2600 1350 50  0001 L CNN "Height"
F 6 "667-ERJ-6ENF1001V" H 2600 1250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-6ENF1001V" H 2600 1150 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 2600 1050 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-6ENF1001V" H 2600 950 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "1 k" H 2750 1850 50  0000 C CNN "Resistance"
	1    2750 1850
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ERJ-6ENF1001V R?
U 1 1 5E59856F
P 2750 2050
AR Path="/5E4DF891/5E59856F" Ref="R?"  Part="1" 
AR Path="/5E59856F" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E59856F" Ref="R?"  Part="1" 
F 0 "R?" H 2650 2150 50  0000 C CNN
F 1 "ERJ-6ENF1001V" H 2600 2150 50  0001 L CNN
F 2 "RESC2012X70N" H 2450 2450 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-6ENF1001V.pdf" H 2600 1750 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 1Kohms 1% AEC-Q200" H 2600 1650 50  0001 L CNN "Description"
F 5 "0.7" H 2600 1550 50  0001 L CNN "Height"
F 6 "667-ERJ-6ENF1001V" H 2600 1450 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-6ENF1001V" H 2600 1350 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 2600 1250 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-6ENF1001V" H 2600 1150 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "1 k" H 2750 2050 50  0000 C CNN "Resistance"
	1    2750 2050
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ERJ-6ENF1001V R?
U 1 1 5E59857C
P 2750 2250
AR Path="/5E4DF891/5E59857C" Ref="R?"  Part="1" 
AR Path="/5E59857C" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E59857C" Ref="R?"  Part="1" 
F 0 "R?" H 2650 2350 50  0000 C CNN
F 1 "ERJ-6ENF1001V" H 2600 2350 50  0001 L CNN
F 2 "RESC2012X70N" H 2450 2650 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-6ENF1001V.pdf" H 2600 1950 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 1Kohms 1% AEC-Q200" H 2600 1850 50  0001 L CNN "Description"
F 5 "0.7" H 2600 1750 50  0001 L CNN "Height"
F 6 "667-ERJ-6ENF1001V" H 2600 1650 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-6ENF1001V" H 2600 1550 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 2600 1450 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-6ENF1001V" H 2600 1350 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "1 k" H 2750 2250 50  0000 C CNN "Resistance"
	1    2750 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E598582
P 3200 1950
AR Path="/5E4DF891/5E598582" Ref="#PWR?"  Part="1" 
AR Path="/5E598582" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E598582" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 1700 50  0001 C CNN
F 1 "GNDREF" V 3205 1822 50  0000 R CNN
F 2 "" H 3200 1950 50  0001 C CNN
F 3 "" H 3200 1950 50  0001 C CNN
	1    3200 1950
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E598588
P 3200 2150
AR Path="/5E4DF891/5E598588" Ref="#PWR?"  Part="1" 
AR Path="/5E598588" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E598588" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 1900 50  0001 C CNN
F 1 "GNDREF" V 3205 2022 50  0000 R CNN
F 2 "" H 3200 2150 50  0001 C CNN
F 3 "" H 3200 2150 50  0001 C CNN
	1    3200 2150
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E59858E
P 3200 2350
AR Path="/5E4DF891/5E59858E" Ref="#PWR?"  Part="1" 
AR Path="/5E59858E" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E59858E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 2100 50  0001 C CNN
F 1 "GNDREF" V 3205 2222 50  0000 R CNN
F 2 "" H 3200 2350 50  0001 C CNN
F 3 "" H 3200 2350 50  0001 C CNN
	1    3200 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 1850 3200 1850
Wire Wire Line
	3200 2050 3100 2050
Wire Wire Line
	3100 2250 3200 2250
Wire Wire Line
	5350 2650 5350 2450
Connection ~ 5350 1750
Wire Wire Line
	5150 1500 5150 1950
$Comp
L MUX509:MUX509 U?
U 1 1 5E59859A
P 6400 3800
AR Path="/5E4DF891/5E59859A" Ref="U?"  Part="1" 
AR Path="/5E59859A" Ref="U?"  Part="1" 
AR Path="/5E4E6D39/5E59859A" Ref="U?"  Part="1" 
F 0 "U?" V 6400 4200 50  0000 R CNN
F 1 "MUX509" V 6400 3750 50  0000 R CNN
F 2 "MUX509.:SOP-16" H 6400 4550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/mux509.pdf" H 6300 3950 50  0001 C CNN
	1    6400 3800
	0    -1   -1   0   
$EndComp
$Comp
L SamacSys_Parts:INA149AID U?
U 1 1 5E5985A6
P 7550 3800
AR Path="/5E4DF891/5E5985A6" Ref="U?"  Part="1" 
AR Path="/5E5985A6" Ref="U?"  Part="1" 
AR Path="/5E4E6D39/5E5985A6" Ref="U?"  Part="1" 
F 0 "U?" H 7550 4150 50  0000 C CNN
F 1 "INA149AID" H 7550 4050 50  0000 C CNN
F 2 "SOIC127P600X175-8N" H 7150 3300 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina149.pdf" H 7150 3200 50  0001 L CNN
F 4 "Texas Instruments INA149AID, Differential Amplifier 8-Pin SOIC" H 7150 3100 50  0001 L CNN "Description"
F 5 "1.75" H 7150 3000 50  0001 L CNN "Height"
F 6 "595-INA149AID" H 7150 2900 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=595-INA149AID" H 7150 2800 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 7150 2700 50  0001 L CNN "Manufacturer_Name"
F 9 "INA149AID" H 7150 2600 50  0001 L CNN "Manufacturer_Part_Number"
	1    7550 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E5985AC
P 7050 3950
AR Path="/5E4DF891/5E5985AC" Ref="#PWR?"  Part="1" 
AR Path="/5E5985AC" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E5985AC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 3700 50  0001 C CNN
F 1 "GNDREF" H 7055 3777 50  0000 C CNN
F 2 "" H 7050 3950 50  0001 C CNN
F 3 "" H 7050 3950 50  0001 C CNN
	1    7050 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E5985B2
P 7050 3650
AR Path="/5E4DF891/5E5985B2" Ref="#PWR?"  Part="1" 
AR Path="/5E5985B2" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E5985B2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 3400 50  0001 C CNN
F 1 "GNDREF" H 7055 3477 50  0000 C CNN
F 2 "" H 7050 3650 50  0001 C CNN
F 3 "" H 7050 3650 50  0001 C CNN
	1    7050 3650
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E5985B8
P 8050 3950
AR Path="/5E4DF891/5E5985B8" Ref="#PWR?"  Part="1" 
AR Path="/5E5985B8" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E5985B8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8050 3700 50  0001 C CNN
F 1 "GNDREF" H 8055 3777 50  0000 C CNN
F 2 "" H 8050 3950 50  0001 C CNN
F 3 "" H 8050 3950 50  0001 C CNN
	1    8050 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3750 6850 3750
Wire Wire Line
	6850 3750 6850 3450
Wire Wire Line
	7050 3850 6850 3850
Wire Wire Line
	6850 3850 6850 4150
$Comp
L SamacSys_Parts:PS2801-4-F3-A U?
U 1 1 5E5985C9
P 4000 3800
AR Path="/5E4DF891/5E5985C9" Ref="U?"  Part="1" 
AR Path="/5E5985C9" Ref="U?"  Part="1" 
AR Path="/5E4E6D39/5E5985C9" Ref="U?"  Part="1" 
F 0 "U?" H 4000 4350 50  0000 C CNN
F 1 "PS2801-4-F3-A" H 4000 4250 50  0000 C CNN
F 2 "SOIC127P700X230-16N" H 3350 3150 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/PS2801-4-F3-A.pdf" H 4700 4150 50  0001 L CNN
F 4 "Transistor Output Optocouplers Hi-Iso Photo 4-Ch" H 3350 3050 50  0001 L CNN "Description"
F 5 "2.3" H 3350 2950 50  0001 L CNN "Height"
F 6 "551-PS2801-4-F3-A" H 3350 2850 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=551-PS2801-4-F3-A" H 3350 2750 50  0001 L CNN "Mouser Price/Stock"
F 8 "CEL" H 3350 2650 50  0001 L CNN "Manufacturer_Name"
F 9 "PS2801-4-F3-A" H 3350 2550 50  0001 L CNN "Manufacturer_Part_Number"
	1    4000 3800
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ERJ-UP6J103v R?
U 1 1 5E5985D6
P 5800 3450
AR Path="/5E4DF891/5E5985D6" Ref="R?"  Part="1" 
AR Path="/5E5985D6" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E5985D6" Ref="R?"  Part="1" 
F 0 "R?" H 5900 3350 50  0000 C CNN
F 1 "ERJ-UP6J103v" H 5650 3250 50  0001 L CNN
F 2 "RESC2012X70N" H 5650 3150 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-UP6J103V.pdf" H 5650 3050 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 0.5W 5% 10KOhm Anti-sulfur AEC-Q200" H 5650 2950 50  0001 L CNN "Description"
F 5 "0.7" H 5650 2850 50  0001 L CNN "Height"
F 6 "667-ERJ-UP6J103V" H 5650 2750 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-UP6J103V" H 5650 2650 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 5650 2550 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-UP6J103V" H 5650 2450 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "10 k" H 5800 3450 50  0000 C CNN "Resistance"
	1    5800 3450
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:ERJ-UP6J103v R?
U 1 1 5E5985E3
P 5550 3800
AR Path="/5E4DF891/5E5985E3" Ref="R?"  Part="1" 
AR Path="/5E5985E3" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E5985E3" Ref="R?"  Part="1" 
F 0 "R?" H 5650 3700 50  0000 C CNN
F 1 "ERJ-UP6J103v" H 5400 3600 50  0001 L CNN
F 2 "RESC2012X70N" H 5400 3500 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-UP6J103V.pdf" H 5400 3400 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 0.5W 5% 10KOhm Anti-sulfur AEC-Q200" H 5400 3300 50  0001 L CNN "Description"
F 5 "0.7" H 5400 3200 50  0001 L CNN "Height"
F 6 "667-ERJ-UP6J103V" H 5400 3100 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-UP6J103V" H 5400 3000 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 5400 2900 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-UP6J103V" H 5400 2800 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "10 k" H 5550 3800 50  0000 C CNN "Resistance"
	1    5550 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 4150 6150 4250
$Comp
L SamacSys_Parts:ERJ-UP6J103v R?
U 1 1 5E5985F4
P 5350 3700
AR Path="/5E4DF891/5E5985F4" Ref="R?"  Part="1" 
AR Path="/5E5985F4" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E5985F4" Ref="R?"  Part="1" 
F 0 "R?" H 5450 3600 50  0000 C CNN
F 1 "ERJ-UP6J103v" H 5200 3500 50  0001 L CNN
F 2 "RESC2012X70N" H 5200 3400 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-UP6J103V.pdf" H 5200 3300 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 0.5W 5% 10KOhm Anti-sulfur AEC-Q200" H 5200 3200 50  0001 L CNN "Description"
F 5 "0.7" H 5200 3100 50  0001 L CNN "Height"
F 6 "667-ERJ-UP6J103V" H 5200 3000 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-UP6J103V" H 5200 2900 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 5200 2800 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-UP6J103V" H 5200 2700 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "10 k" H 5350 3700 50  0000 C CNN "Resistance"
	1    5350 3700
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E5985FA
P 5350 3350
AR Path="/5E4DF891/5E5985FA" Ref="#PWR?"  Part="1" 
AR Path="/5E5985FA" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E5985FA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5350 3100 50  0001 C CNN
F 1 "GNDREF" H 5355 3177 50  0000 C CNN
F 2 "" H 5350 3350 50  0001 C CNN
F 3 "" H 5350 3350 50  0001 C CNN
	1    5350 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 3350 5550 3350
Wire Wire Line
	5550 3350 5550 3450
Wire Wire Line
	6050 4150 5550 4150
Wire Wire Line
	4900 4150 4900 3950
Wire Wire Line
	4900 3950 4800 3950
Wire Wire Line
	6150 4250 5350 4250
Wire Wire Line
	5150 4050 5150 3750
Wire Wire Line
	5150 3750 4800 3750
Wire Wire Line
	4900 4150 5550 4150
Connection ~ 5550 4150
Wire Wire Line
	5350 4050 5150 4050
Connection ~ 5350 4050
Wire Wire Line
	6050 3450 6050 3100
Wire Wire Line
	6050 3100 5800 3100
Wire Wire Line
	5150 3550 4800 3550
Connection ~ 5800 3100
Wire Wire Line
	5800 3100 5150 3100
Wire Wire Line
	6850 4150 6750 4150
Wire Wire Line
	6850 3450 6750 3450
NoConn ~ 4800 4050
NoConn ~ 4800 4150
NoConn ~ 3200 4150
NoConn ~ 3200 4050
Wire Wire Line
	6150 4350 6250 4350
Wire Wire Line
	6250 4350 6250 4150
$Comp
L SamacSys_Parts:ERJ-6ENF1001V R?
U 1 1 5E598628
P 2750 3450
AR Path="/5E4DF891/5E598628" Ref="R?"  Part="1" 
AR Path="/5E598628" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E598628" Ref="R?"  Part="1" 
F 0 "R?" H 2650 3550 50  0000 C CNN
F 1 "ERJ-6ENF1001V" H 2600 3550 50  0001 L CNN
F 2 "RESC2012X70N" H 2450 3850 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-6ENF1001V.pdf" H 2600 3150 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 1Kohms 1% AEC-Q200" H 2600 3050 50  0001 L CNN "Description"
F 5 "0.7" H 2600 2950 50  0001 L CNN "Height"
F 6 "667-ERJ-6ENF1001V" H 2600 2850 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-6ENF1001V" H 2600 2750 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 2600 2650 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-6ENF1001V" H 2600 2550 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "1 k" H 2750 3450 50  0000 C CNN "Resistance"
	1    2750 3450
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ERJ-6ENF1001V R?
U 1 1 5E598635
P 2750 3650
AR Path="/5E4DF891/5E598635" Ref="R?"  Part="1" 
AR Path="/5E598635" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E598635" Ref="R?"  Part="1" 
F 0 "R?" H 2650 3750 50  0000 C CNN
F 1 "ERJ-6ENF1001V" H 2600 3750 50  0001 L CNN
F 2 "RESC2012X70N" H 2450 4050 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-6ENF1001V.pdf" H 2600 3350 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 1Kohms 1% AEC-Q200" H 2600 3250 50  0001 L CNN "Description"
F 5 "0.7" H 2600 3150 50  0001 L CNN "Height"
F 6 "667-ERJ-6ENF1001V" H 2600 3050 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-6ENF1001V" H 2600 2950 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 2600 2850 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-6ENF1001V" H 2600 2750 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "1 k" H 2750 3650 50  0000 C CNN "Resistance"
	1    2750 3650
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ERJ-6ENF1001V R?
U 1 1 5E598642
P 2750 3850
AR Path="/5E4DF891/5E598642" Ref="R?"  Part="1" 
AR Path="/5E598642" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E598642" Ref="R?"  Part="1" 
F 0 "R?" H 2650 3950 50  0000 C CNN
F 1 "ERJ-6ENF1001V" H 2600 3950 50  0001 L CNN
F 2 "RESC2012X70N" H 2450 4250 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-6ENF1001V.pdf" H 2600 3550 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 1Kohms 1% AEC-Q200" H 2600 3450 50  0001 L CNN "Description"
F 5 "0.7" H 2600 3350 50  0001 L CNN "Height"
F 6 "667-ERJ-6ENF1001V" H 2600 3250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-6ENF1001V" H 2600 3150 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 2600 3050 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-6ENF1001V" H 2600 2950 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "1 k" H 2750 3850 50  0000 C CNN "Resistance"
	1    2750 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E598648
P 3200 3550
AR Path="/5E4DF891/5E598648" Ref="#PWR?"  Part="1" 
AR Path="/5E598648" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E598648" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 3300 50  0001 C CNN
F 1 "GNDREF" V 3205 3422 50  0000 R CNN
F 2 "" H 3200 3550 50  0001 C CNN
F 3 "" H 3200 3550 50  0001 C CNN
	1    3200 3550
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E59864E
P 3200 3750
AR Path="/5E4DF891/5E59864E" Ref="#PWR?"  Part="1" 
AR Path="/5E59864E" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E59864E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 3500 50  0001 C CNN
F 1 "GNDREF" V 3205 3622 50  0000 R CNN
F 2 "" H 3200 3750 50  0001 C CNN
F 3 "" H 3200 3750 50  0001 C CNN
	1    3200 3750
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E598654
P 3200 3950
AR Path="/5E4DF891/5E598654" Ref="#PWR?"  Part="1" 
AR Path="/5E598654" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E598654" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 3700 50  0001 C CNN
F 1 "GNDREF" V 3205 3822 50  0000 R CNN
F 2 "" H 3200 3950 50  0001 C CNN
F 3 "" H 3200 3950 50  0001 C CNN
	1    3200 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 3450 3200 3450
Wire Wire Line
	3200 3650 3100 3650
Wire Wire Line
	3100 3850 3200 3850
Wire Wire Line
	5350 4250 5350 4050
Connection ~ 5350 3350
Wire Wire Line
	5150 3100 5150 3550
$Comp
L MUX509:MUX509 U?
U 1 1 5E598660
P 6400 5400
AR Path="/5E4DF891/5E598660" Ref="U?"  Part="1" 
AR Path="/5E598660" Ref="U?"  Part="1" 
AR Path="/5E4E6D39/5E598660" Ref="U?"  Part="1" 
F 0 "U?" V 6400 5800 50  0000 R CNN
F 1 "MUX509" V 6400 5350 50  0000 R CNN
F 2 "MUX509.:SOP-16" H 6400 6150 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/mux509.pdf" H 6300 5550 50  0001 C CNN
	1    6400 5400
	0    -1   -1   0   
$EndComp
$Comp
L SamacSys_Parts:INA149AID U?
U 1 1 5E59866C
P 7550 5400
AR Path="/5E4DF891/5E59866C" Ref="U?"  Part="1" 
AR Path="/5E59866C" Ref="U?"  Part="1" 
AR Path="/5E4E6D39/5E59866C" Ref="U?"  Part="1" 
F 0 "U?" H 7550 5750 50  0000 C CNN
F 1 "INA149AID" H 7550 5650 50  0000 C CNN
F 2 "SOIC127P600X175-8N" H 7150 4900 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina149.pdf" H 7150 4800 50  0001 L CNN
F 4 "Texas Instruments INA149AID, Differential Amplifier 8-Pin SOIC" H 7150 4700 50  0001 L CNN "Description"
F 5 "1.75" H 7150 4600 50  0001 L CNN "Height"
F 6 "595-INA149AID" H 7150 4500 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=595-INA149AID" H 7150 4400 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 7150 4300 50  0001 L CNN "Manufacturer_Name"
F 9 "INA149AID" H 7150 4200 50  0001 L CNN "Manufacturer_Part_Number"
	1    7550 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E598672
P 7050 5550
AR Path="/5E4DF891/5E598672" Ref="#PWR?"  Part="1" 
AR Path="/5E598672" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E598672" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 5300 50  0001 C CNN
F 1 "GNDREF" H 7055 5377 50  0000 C CNN
F 2 "" H 7050 5550 50  0001 C CNN
F 3 "" H 7050 5550 50  0001 C CNN
	1    7050 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E598678
P 7050 5250
AR Path="/5E4DF891/5E598678" Ref="#PWR?"  Part="1" 
AR Path="/5E598678" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E598678" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 5000 50  0001 C CNN
F 1 "GNDREF" H 7055 5077 50  0000 C CNN
F 2 "" H 7050 5250 50  0001 C CNN
F 3 "" H 7050 5250 50  0001 C CNN
	1    7050 5250
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E59867E
P 8050 5550
AR Path="/5E4DF891/5E59867E" Ref="#PWR?"  Part="1" 
AR Path="/5E59867E" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E59867E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8050 5300 50  0001 C CNN
F 1 "GNDREF" H 8055 5377 50  0000 C CNN
F 2 "" H 8050 5550 50  0001 C CNN
F 3 "" H 8050 5550 50  0001 C CNN
	1    8050 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 5350 6850 5350
Wire Wire Line
	6850 5350 6850 5050
Wire Wire Line
	7050 5450 6850 5450
Wire Wire Line
	6850 5450 6850 5750
$Comp
L SamacSys_Parts:PS2801-4-F3-A U?
U 1 1 5E59868F
P 4000 5400
AR Path="/5E4DF891/5E59868F" Ref="U?"  Part="1" 
AR Path="/5E59868F" Ref="U?"  Part="1" 
AR Path="/5E4E6D39/5E59868F" Ref="U?"  Part="1" 
F 0 "U?" H 4000 5950 50  0000 C CNN
F 1 "PS2801-4-F3-A" H 4000 5850 50  0000 C CNN
F 2 "SOIC127P700X230-16N" H 3350 4750 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/PS2801-4-F3-A.pdf" H 4700 5750 50  0001 L CNN
F 4 "Transistor Output Optocouplers Hi-Iso Photo 4-Ch" H 3350 4650 50  0001 L CNN "Description"
F 5 "2.3" H 3350 4550 50  0001 L CNN "Height"
F 6 "551-PS2801-4-F3-A" H 3350 4450 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=551-PS2801-4-F3-A" H 3350 4350 50  0001 L CNN "Mouser Price/Stock"
F 8 "CEL" H 3350 4250 50  0001 L CNN "Manufacturer_Name"
F 9 "PS2801-4-F3-A" H 3350 4150 50  0001 L CNN "Manufacturer_Part_Number"
	1    4000 5400
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ERJ-UP6J103v R?
U 1 1 5E59869C
P 5800 5050
AR Path="/5E4DF891/5E59869C" Ref="R?"  Part="1" 
AR Path="/5E59869C" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E59869C" Ref="R?"  Part="1" 
F 0 "R?" H 5900 4950 50  0000 C CNN
F 1 "ERJ-UP6J103v" H 5650 4850 50  0001 L CNN
F 2 "RESC2012X70N" H 5650 4750 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-UP6J103V.pdf" H 5650 4650 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 0.5W 5% 10KOhm Anti-sulfur AEC-Q200" H 5650 4550 50  0001 L CNN "Description"
F 5 "0.7" H 5650 4450 50  0001 L CNN "Height"
F 6 "667-ERJ-UP6J103V" H 5650 4350 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-UP6J103V" H 5650 4250 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 5650 4150 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-UP6J103V" H 5650 4050 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "10 k" H 5800 5050 50  0000 C CNN "Resistance"
	1    5800 5050
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:ERJ-UP6J103v R?
U 1 1 5E5986A9
P 5550 5400
AR Path="/5E4DF891/5E5986A9" Ref="R?"  Part="1" 
AR Path="/5E5986A9" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E5986A9" Ref="R?"  Part="1" 
F 0 "R?" H 5650 5300 50  0000 C CNN
F 1 "ERJ-UP6J103v" H 5400 5200 50  0001 L CNN
F 2 "RESC2012X70N" H 5400 5100 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-UP6J103V.pdf" H 5400 5000 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 0.5W 5% 10KOhm Anti-sulfur AEC-Q200" H 5400 4900 50  0001 L CNN "Description"
F 5 "0.7" H 5400 4800 50  0001 L CNN "Height"
F 6 "667-ERJ-UP6J103V" H 5400 4700 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-UP6J103V" H 5400 4600 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 5400 4500 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-UP6J103V" H 5400 4400 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "10 k" H 5550 5400 50  0000 C CNN "Resistance"
	1    5550 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 5750 6150 5850
$Comp
L SamacSys_Parts:ERJ-UP6J103v R?
U 1 1 5E5986BA
P 5350 5300
AR Path="/5E4DF891/5E5986BA" Ref="R?"  Part="1" 
AR Path="/5E5986BA" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E5986BA" Ref="R?"  Part="1" 
F 0 "R?" H 5450 5200 50  0000 C CNN
F 1 "ERJ-UP6J103v" H 5200 5100 50  0001 L CNN
F 2 "RESC2012X70N" H 5200 5000 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-UP6J103V.pdf" H 5200 4900 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 0.5W 5% 10KOhm Anti-sulfur AEC-Q200" H 5200 4800 50  0001 L CNN "Description"
F 5 "0.7" H 5200 4700 50  0001 L CNN "Height"
F 6 "667-ERJ-UP6J103V" H 5200 4600 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-UP6J103V" H 5200 4500 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 5200 4400 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-UP6J103V" H 5200 4300 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "10 k" H 5350 5300 50  0000 C CNN "Resistance"
	1    5350 5300
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E5986C0
P 5800 5400
AR Path="/5E4DF891/5E5986C0" Ref="#PWR?"  Part="1" 
AR Path="/5E5986C0" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E5986C0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5800 5150 50  0001 C CNN
F 1 "GNDREF" H 5805 5227 50  0000 C CNN
F 2 "" H 5800 5400 50  0001 C CNN
F 3 "" H 5800 5400 50  0001 C CNN
	1    5800 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E5986C6
P 5350 4950
AR Path="/5E4DF891/5E5986C6" Ref="#PWR?"  Part="1" 
AR Path="/5E5986C6" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E5986C6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5350 4700 50  0001 C CNN
F 1 "GNDREF" H 5355 4777 50  0000 C CNN
F 2 "" H 5350 4950 50  0001 C CNN
F 3 "" H 5350 4950 50  0001 C CNN
	1    5350 4950
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 4950 5550 4950
Wire Wire Line
	5550 4950 5550 5050
Wire Wire Line
	6050 5750 5550 5750
Wire Wire Line
	4900 5750 4900 5550
Wire Wire Line
	4900 5550 4800 5550
Wire Wire Line
	6150 5850 5350 5850
Wire Wire Line
	5150 5650 5150 5350
Wire Wire Line
	5150 5350 4800 5350
Wire Wire Line
	4900 5750 5550 5750
Connection ~ 5550 5750
Wire Wire Line
	5350 5650 5150 5650
Connection ~ 5350 5650
Wire Wire Line
	6050 5050 6050 4700
Wire Wire Line
	6050 4700 5800 4700
Wire Wire Line
	5150 5150 4800 5150
Connection ~ 5800 4700
Wire Wire Line
	5800 4700 5150 4700
Wire Wire Line
	6850 5750 6750 5750
Wire Wire Line
	6850 5050 6750 5050
NoConn ~ 4800 5650
NoConn ~ 4800 5750
NoConn ~ 3200 5750
NoConn ~ 3200 5650
Wire Wire Line
	6150 5950 6250 5950
Wire Wire Line
	6250 5950 6250 5750
$Comp
L SamacSys_Parts:ERJ-6ENF1001V R?
U 1 1 5E5986F4
P 2750 5050
AR Path="/5E4DF891/5E5986F4" Ref="R?"  Part="1" 
AR Path="/5E5986F4" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E5986F4" Ref="R?"  Part="1" 
F 0 "R?" H 2650 5150 50  0000 C CNN
F 1 "ERJ-6ENF1001V" H 2600 5150 50  0001 L CNN
F 2 "RESC2012X70N" H 2450 5450 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-6ENF1001V.pdf" H 2600 4750 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 1Kohms 1% AEC-Q200" H 2600 4650 50  0001 L CNN "Description"
F 5 "0.7" H 2600 4550 50  0001 L CNN "Height"
F 6 "667-ERJ-6ENF1001V" H 2600 4450 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-6ENF1001V" H 2600 4350 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 2600 4250 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-6ENF1001V" H 2600 4150 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "1 k" H 2750 5050 50  0000 C CNN "Resistance"
	1    2750 5050
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ERJ-6ENF1001V R?
U 1 1 5E598701
P 2750 5250
AR Path="/5E4DF891/5E598701" Ref="R?"  Part="1" 
AR Path="/5E598701" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E598701" Ref="R?"  Part="1" 
F 0 "R?" H 2650 5350 50  0000 C CNN
F 1 "ERJ-6ENF1001V" H 2600 5350 50  0001 L CNN
F 2 "RESC2012X70N" H 2450 5650 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-6ENF1001V.pdf" H 2600 4950 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 1Kohms 1% AEC-Q200" H 2600 4850 50  0001 L CNN "Description"
F 5 "0.7" H 2600 4750 50  0001 L CNN "Height"
F 6 "667-ERJ-6ENF1001V" H 2600 4650 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-6ENF1001V" H 2600 4550 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 2600 4450 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-6ENF1001V" H 2600 4350 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "1 k" H 2750 5250 50  0000 C CNN "Resistance"
	1    2750 5250
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ERJ-6ENF1001V R?
U 1 1 5E59870E
P 2750 5450
AR Path="/5E4DF891/5E59870E" Ref="R?"  Part="1" 
AR Path="/5E59870E" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E59870E" Ref="R?"  Part="1" 
F 0 "R?" H 2650 5550 50  0000 C CNN
F 1 "ERJ-6ENF1001V" H 2600 5550 50  0001 L CNN
F 2 "RESC2012X70N" H 2450 5850 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-6ENF1001V.pdf" H 2600 5150 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 1Kohms 1% AEC-Q200" H 2600 5050 50  0001 L CNN "Description"
F 5 "0.7" H 2600 4950 50  0001 L CNN "Height"
F 6 "667-ERJ-6ENF1001V" H 2600 4850 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-6ENF1001V" H 2600 4750 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 2600 4650 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-6ENF1001V" H 2600 4550 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "1 k" H 2750 5450 50  0000 C CNN "Resistance"
	1    2750 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E598714
P 3200 5150
AR Path="/5E4DF891/5E598714" Ref="#PWR?"  Part="1" 
AR Path="/5E598714" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E598714" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 4900 50  0001 C CNN
F 1 "GNDREF" V 3205 5022 50  0000 R CNN
F 2 "" H 3200 5150 50  0001 C CNN
F 3 "" H 3200 5150 50  0001 C CNN
	1    3200 5150
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E59871A
P 3200 5350
AR Path="/5E4DF891/5E59871A" Ref="#PWR?"  Part="1" 
AR Path="/5E59871A" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E59871A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 5100 50  0001 C CNN
F 1 "GNDREF" V 3205 5222 50  0000 R CNN
F 2 "" H 3200 5350 50  0001 C CNN
F 3 "" H 3200 5350 50  0001 C CNN
	1    3200 5350
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E598720
P 3200 5550
AR Path="/5E4DF891/5E598720" Ref="#PWR?"  Part="1" 
AR Path="/5E598720" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E598720" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 5300 50  0001 C CNN
F 1 "GNDREF" V 3205 5422 50  0000 R CNN
F 2 "" H 3200 5550 50  0001 C CNN
F 3 "" H 3200 5550 50  0001 C CNN
	1    3200 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 5050 3200 5050
Wire Wire Line
	3200 5250 3100 5250
Wire Wire Line
	3100 5450 3200 5450
Wire Wire Line
	5350 5850 5350 5650
Connection ~ 5350 4950
Wire Wire Line
	5150 4700 5150 5150
$Comp
L MUX509:MUX509 U?
U 1 1 5E59872C
P 6400 7000
AR Path="/5E4DF891/5E59872C" Ref="U?"  Part="1" 
AR Path="/5E59872C" Ref="U?"  Part="1" 
AR Path="/5E4E6D39/5E59872C" Ref="U?"  Part="1" 
F 0 "U?" V 6400 7400 50  0000 R CNN
F 1 "MUX509" V 6400 6950 50  0000 R CNN
F 2 "MUX509.:SOP-16" H 6400 7750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/mux509.pdf" H 6300 7150 50  0001 C CNN
	1    6400 7000
	0    -1   -1   0   
$EndComp
$Comp
L SamacSys_Parts:INA149AID U?
U 1 1 5E598738
P 7550 7000
AR Path="/5E4DF891/5E598738" Ref="U?"  Part="1" 
AR Path="/5E598738" Ref="U?"  Part="1" 
AR Path="/5E4E6D39/5E598738" Ref="U?"  Part="1" 
F 0 "U?" H 7550 7350 50  0000 C CNN
F 1 "INA149AID" H 7550 7250 50  0000 C CNN
F 2 "SOIC127P600X175-8N" H 7150 6500 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina149.pdf" H 7150 6400 50  0001 L CNN
F 4 "Texas Instruments INA149AID, Differential Amplifier 8-Pin SOIC" H 7150 6300 50  0001 L CNN "Description"
F 5 "1.75" H 7150 6200 50  0001 L CNN "Height"
F 6 "595-INA149AID" H 7150 6100 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=595-INA149AID" H 7150 6000 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 7150 5900 50  0001 L CNN "Manufacturer_Name"
F 9 "INA149AID" H 7150 5800 50  0001 L CNN "Manufacturer_Part_Number"
	1    7550 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E59873E
P 7050 7150
AR Path="/5E4DF891/5E59873E" Ref="#PWR?"  Part="1" 
AR Path="/5E59873E" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E59873E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 6900 50  0001 C CNN
F 1 "GNDREF" H 7055 6977 50  0000 C CNN
F 2 "" H 7050 7150 50  0001 C CNN
F 3 "" H 7050 7150 50  0001 C CNN
	1    7050 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E598744
P 7050 6850
AR Path="/5E4DF891/5E598744" Ref="#PWR?"  Part="1" 
AR Path="/5E598744" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E598744" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 6600 50  0001 C CNN
F 1 "GNDREF" H 7055 6677 50  0000 C CNN
F 2 "" H 7050 6850 50  0001 C CNN
F 3 "" H 7050 6850 50  0001 C CNN
	1    7050 6850
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E59874A
P 8050 7150
AR Path="/5E4DF891/5E59874A" Ref="#PWR?"  Part="1" 
AR Path="/5E59874A" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E59874A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8050 6900 50  0001 C CNN
F 1 "GNDREF" H 8055 6977 50  0000 C CNN
F 2 "" H 8050 7150 50  0001 C CNN
F 3 "" H 8050 7150 50  0001 C CNN
	1    8050 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 6950 6850 6950
Wire Wire Line
	6850 6950 6850 6650
Wire Wire Line
	7050 7050 6850 7050
Wire Wire Line
	6850 7050 6850 7350
$Comp
L SamacSys_Parts:PS2801-4-F3-A U?
U 1 1 5E59875B
P 4000 7000
AR Path="/5E4DF891/5E59875B" Ref="U?"  Part="1" 
AR Path="/5E59875B" Ref="U?"  Part="1" 
AR Path="/5E4E6D39/5E59875B" Ref="U?"  Part="1" 
F 0 "U?" H 4000 7550 50  0000 C CNN
F 1 "PS2801-4-F3-A" H 4000 7450 50  0000 C CNN
F 2 "SOIC127P700X230-16N" H 3350 6350 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/PS2801-4-F3-A.pdf" H 4700 7350 50  0001 L CNN
F 4 "Transistor Output Optocouplers Hi-Iso Photo 4-Ch" H 3350 6250 50  0001 L CNN "Description"
F 5 "2.3" H 3350 6150 50  0001 L CNN "Height"
F 6 "551-PS2801-4-F3-A" H 3350 6050 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=551-PS2801-4-F3-A" H 3350 5950 50  0001 L CNN "Mouser Price/Stock"
F 8 "CEL" H 3350 5850 50  0001 L CNN "Manufacturer_Name"
F 9 "PS2801-4-F3-A" H 3350 5750 50  0001 L CNN "Manufacturer_Part_Number"
	1    4000 7000
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ERJ-UP6J103v R?
U 1 1 5E598768
P 5800 6650
AR Path="/5E4DF891/5E598768" Ref="R?"  Part="1" 
AR Path="/5E598768" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E598768" Ref="R?"  Part="1" 
F 0 "R?" H 5900 6550 50  0000 C CNN
F 1 "ERJ-UP6J103v" H 5650 6450 50  0001 L CNN
F 2 "RESC2012X70N" H 5650 6350 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-UP6J103V.pdf" H 5650 6250 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 0.5W 5% 10KOhm Anti-sulfur AEC-Q200" H 5650 6150 50  0001 L CNN "Description"
F 5 "0.7" H 5650 6050 50  0001 L CNN "Height"
F 6 "667-ERJ-UP6J103V" H 5650 5950 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-UP6J103V" H 5650 5850 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 5650 5750 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-UP6J103V" H 5650 5650 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "10 k" H 5800 6650 50  0000 C CNN "Resistance"
	1    5800 6650
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:ERJ-UP6J103v R?
U 1 1 5E598775
P 5550 7000
AR Path="/5E4DF891/5E598775" Ref="R?"  Part="1" 
AR Path="/5E598775" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E598775" Ref="R?"  Part="1" 
F 0 "R?" H 5650 6900 50  0000 C CNN
F 1 "ERJ-UP6J103v" H 5400 6800 50  0001 L CNN
F 2 "RESC2012X70N" H 5400 6700 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-UP6J103V.pdf" H 5400 6600 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 0.5W 5% 10KOhm Anti-sulfur AEC-Q200" H 5400 6500 50  0001 L CNN "Description"
F 5 "0.7" H 5400 6400 50  0001 L CNN "Height"
F 6 "667-ERJ-UP6J103V" H 5400 6300 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-UP6J103V" H 5400 6200 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 5400 6100 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-UP6J103V" H 5400 6000 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "10 k" H 5550 7000 50  0000 C CNN "Resistance"
	1    5550 7000
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 7350 6150 7450
$Comp
L SamacSys_Parts:ERJ-UP6J103v R?
U 1 1 5E598783
P 5350 6900
AR Path="/5E4DF891/5E598783" Ref="R?"  Part="1" 
AR Path="/5E598783" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E598783" Ref="R?"  Part="1" 
F 0 "R?" H 5450 6800 50  0000 C CNN
F 1 "ERJ-UP6J103v" H 5200 6700 50  0001 L CNN
F 2 "RESC2012X70N" H 5200 6600 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-UP6J103V.pdf" H 5200 6500 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 0.5W 5% 10KOhm Anti-sulfur AEC-Q200" H 5200 6400 50  0001 L CNN "Description"
F 5 "0.7" H 5200 6300 50  0001 L CNN "Height"
F 6 "667-ERJ-UP6J103V" H 5200 6200 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-UP6J103V" H 5200 6100 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 5200 6000 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-UP6J103V" H 5200 5900 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "10 k" H 5350 6900 50  0000 C CNN "Resistance"
	1    5350 6900
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E598789
P 5800 7000
AR Path="/5E4DF891/5E598789" Ref="#PWR?"  Part="1" 
AR Path="/5E598789" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E598789" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5800 6750 50  0001 C CNN
F 1 "GNDREF" H 5805 6827 50  0000 C CNN
F 2 "" H 5800 7000 50  0001 C CNN
F 3 "" H 5800 7000 50  0001 C CNN
	1    5800 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E59878F
P 5350 6550
AR Path="/5E4DF891/5E59878F" Ref="#PWR?"  Part="1" 
AR Path="/5E59878F" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E59878F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5350 6300 50  0001 C CNN
F 1 "GNDREF" H 5355 6377 50  0000 C CNN
F 2 "" H 5350 6550 50  0001 C CNN
F 3 "" H 5350 6550 50  0001 C CNN
	1    5350 6550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 6550 5550 6550
Wire Wire Line
	5550 6550 5550 6650
Wire Wire Line
	6050 7350 5550 7350
Wire Wire Line
	4900 7350 4900 7150
Wire Wire Line
	4900 7150 4800 7150
Wire Wire Line
	6150 7450 5350 7450
Wire Wire Line
	5150 7250 5150 6950
Wire Wire Line
	5150 6950 4800 6950
Wire Wire Line
	4900 7350 5550 7350
Connection ~ 5550 7350
Wire Wire Line
	5350 7250 5150 7250
Connection ~ 5350 7250
Wire Wire Line
	6050 6650 6050 6300
Wire Wire Line
	6050 6300 5800 6300
Wire Wire Line
	5150 6750 4800 6750
Connection ~ 5800 6300
Wire Wire Line
	5800 6300 5150 6300
Wire Wire Line
	6850 7350 6750 7350
Wire Wire Line
	6850 6650 6750 6650
NoConn ~ 4800 7250
NoConn ~ 4800 7350
NoConn ~ 3200 7350
NoConn ~ 3200 7250
Wire Wire Line
	6150 7550 6250 7550
Wire Wire Line
	6250 7550 6250 7350
$Comp
L SamacSys_Parts:ERJ-6ENF1001V R?
U 1 1 5E5987BD
P 2750 6650
AR Path="/5E4DF891/5E5987BD" Ref="R?"  Part="1" 
AR Path="/5E5987BD" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E5987BD" Ref="R?"  Part="1" 
F 0 "R?" H 2650 6750 50  0000 C CNN
F 1 "ERJ-6ENF1001V" H 2600 6750 50  0001 L CNN
F 2 "RESC2012X70N" H 2450 7050 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-6ENF1001V.pdf" H 2600 6350 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 1Kohms 1% AEC-Q200" H 2600 6250 50  0001 L CNN "Description"
F 5 "0.7" H 2600 6150 50  0001 L CNN "Height"
F 6 "667-ERJ-6ENF1001V" H 2600 6050 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-6ENF1001V" H 2600 5950 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 2600 5850 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-6ENF1001V" H 2600 5750 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "1 k" H 2750 6650 50  0000 C CNN "Resistance"
	1    2750 6650
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ERJ-6ENF1001V R?
U 1 1 5E5987CA
P 2750 6850
AR Path="/5E4DF891/5E5987CA" Ref="R?"  Part="1" 
AR Path="/5E5987CA" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E5987CA" Ref="R?"  Part="1" 
F 0 "R?" H 2650 6950 50  0000 C CNN
F 1 "ERJ-6ENF1001V" H 2600 6950 50  0001 L CNN
F 2 "RESC2012X70N" H 2450 7250 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-6ENF1001V.pdf" H 2600 6550 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 1Kohms 1% AEC-Q200" H 2600 6450 50  0001 L CNN "Description"
F 5 "0.7" H 2600 6350 50  0001 L CNN "Height"
F 6 "667-ERJ-6ENF1001V" H 2600 6250 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-6ENF1001V" H 2600 6150 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 2600 6050 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-6ENF1001V" H 2600 5950 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "1 k" H 2750 6850 50  0000 C CNN "Resistance"
	1    2750 6850
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ERJ-6ENF1001V R?
U 1 1 5E5987D7
P 2750 7050
AR Path="/5E4DF891/5E5987D7" Ref="R?"  Part="1" 
AR Path="/5E5987D7" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E5987D7" Ref="R?"  Part="1" 
F 0 "R?" H 2650 7150 50  0000 C CNN
F 1 "ERJ-6ENF1001V" H 2600 7150 50  0001 L CNN
F 2 "RESC2012X70N" H 2450 7450 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-6ENF1001V.pdf" H 2600 6750 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 1Kohms 1% AEC-Q200" H 2600 6650 50  0001 L CNN "Description"
F 5 "0.7" H 2600 6550 50  0001 L CNN "Height"
F 6 "667-ERJ-6ENF1001V" H 2600 6450 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-6ENF1001V" H 2600 6350 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 2600 6250 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-6ENF1001V" H 2600 6150 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "1 k" H 2750 7050 50  0000 C CNN "Resistance"
	1    2750 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E5987DD
P 3200 6750
AR Path="/5E4DF891/5E5987DD" Ref="#PWR?"  Part="1" 
AR Path="/5E5987DD" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E5987DD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 6500 50  0001 C CNN
F 1 "GNDREF" V 3205 6622 50  0000 R CNN
F 2 "" H 3200 6750 50  0001 C CNN
F 3 "" H 3200 6750 50  0001 C CNN
	1    3200 6750
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E5987E3
P 3200 6950
AR Path="/5E4DF891/5E5987E3" Ref="#PWR?"  Part="1" 
AR Path="/5E5987E3" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E5987E3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 6700 50  0001 C CNN
F 1 "GNDREF" V 3205 6822 50  0000 R CNN
F 2 "" H 3200 6950 50  0001 C CNN
F 3 "" H 3200 6950 50  0001 C CNN
	1    3200 6950
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E5987E9
P 3200 7150
AR Path="/5E4DF891/5E5987E9" Ref="#PWR?"  Part="1" 
AR Path="/5E5987E9" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E5987E9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 6900 50  0001 C CNN
F 1 "GNDREF" V 3205 7022 50  0000 R CNN
F 2 "" H 3200 7150 50  0001 C CNN
F 3 "" H 3200 7150 50  0001 C CNN
	1    3200 7150
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 6650 3200 6650
Wire Wire Line
	3200 6850 3100 6850
Wire Wire Line
	3100 7050 3200 7050
Wire Wire Line
	5350 7450 5350 7250
Connection ~ 5350 6550
Wire Wire Line
	5150 6300 5150 6750
$Comp
L MUX509:MUX509 U?
U 1 1 5E5987F5
P 6400 8600
AR Path="/5E4DF891/5E5987F5" Ref="U?"  Part="1" 
AR Path="/5E5987F5" Ref="U?"  Part="1" 
AR Path="/5E4E6D39/5E5987F5" Ref="U?"  Part="1" 
F 0 "U?" V 6400 9000 50  0000 R CNN
F 1 "MUX509" V 6400 8550 50  0000 R CNN
F 2 "MUX509.:SOP-16" H 6400 9350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/mux509.pdf" H 6300 8750 50  0001 C CNN
	1    6400 8600
	0    -1   -1   0   
$EndComp
$Comp
L SamacSys_Parts:INA149AID U?
U 1 1 5E598801
P 7550 8600
AR Path="/5E4DF891/5E598801" Ref="U?"  Part="1" 
AR Path="/5E598801" Ref="U?"  Part="1" 
AR Path="/5E4E6D39/5E598801" Ref="U?"  Part="1" 
F 0 "U?" H 7550 8950 50  0000 C CNN
F 1 "INA149AID" H 7550 8850 50  0000 C CNN
F 2 "SOIC127P600X175-8N" H 7150 8100 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina149.pdf" H 7150 8000 50  0001 L CNN
F 4 "Texas Instruments INA149AID, Differential Amplifier 8-Pin SOIC" H 7150 7900 50  0001 L CNN "Description"
F 5 "1.75" H 7150 7800 50  0001 L CNN "Height"
F 6 "595-INA149AID" H 7150 7700 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=595-INA149AID" H 7150 7600 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 7150 7500 50  0001 L CNN "Manufacturer_Name"
F 9 "INA149AID" H 7150 7400 50  0001 L CNN "Manufacturer_Part_Number"
	1    7550 8600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E598807
P 7050 8750
AR Path="/5E4DF891/5E598807" Ref="#PWR?"  Part="1" 
AR Path="/5E598807" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E598807" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 8500 50  0001 C CNN
F 1 "GNDREF" H 7055 8577 50  0000 C CNN
F 2 "" H 7050 8750 50  0001 C CNN
F 3 "" H 7050 8750 50  0001 C CNN
	1    7050 8750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E59880D
P 7050 8450
AR Path="/5E4DF891/5E59880D" Ref="#PWR?"  Part="1" 
AR Path="/5E59880D" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E59880D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 8200 50  0001 C CNN
F 1 "GNDREF" H 7055 8277 50  0000 C CNN
F 2 "" H 7050 8450 50  0001 C CNN
F 3 "" H 7050 8450 50  0001 C CNN
	1    7050 8450
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E598813
P 8050 8750
AR Path="/5E4DF891/5E598813" Ref="#PWR?"  Part="1" 
AR Path="/5E598813" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E598813" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8050 8500 50  0001 C CNN
F 1 "GNDREF" H 8055 8577 50  0000 C CNN
F 2 "" H 8050 8750 50  0001 C CNN
F 3 "" H 8050 8750 50  0001 C CNN
	1    8050 8750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 8550 6850 8550
Wire Wire Line
	6850 8550 6850 8250
Wire Wire Line
	7050 8650 6850 8650
Wire Wire Line
	6850 8650 6850 8950
$Comp
L SamacSys_Parts:PS2801-4-F3-A U?
U 1 1 5E598824
P 4000 8600
AR Path="/5E4DF891/5E598824" Ref="U?"  Part="1" 
AR Path="/5E598824" Ref="U?"  Part="1" 
AR Path="/5E4E6D39/5E598824" Ref="U?"  Part="1" 
F 0 "U?" H 4000 9150 50  0000 C CNN
F 1 "PS2801-4-F3-A" H 4000 9050 50  0000 C CNN
F 2 "SOIC127P700X230-16N" H 3350 7950 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/PS2801-4-F3-A.pdf" H 4700 8950 50  0001 L CNN
F 4 "Transistor Output Optocouplers Hi-Iso Photo 4-Ch" H 3350 7850 50  0001 L CNN "Description"
F 5 "2.3" H 3350 7750 50  0001 L CNN "Height"
F 6 "551-PS2801-4-F3-A" H 3350 7650 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=551-PS2801-4-F3-A" H 3350 7550 50  0001 L CNN "Mouser Price/Stock"
F 8 "CEL" H 3350 7450 50  0001 L CNN "Manufacturer_Name"
F 9 "PS2801-4-F3-A" H 3350 7350 50  0001 L CNN "Manufacturer_Part_Number"
	1    4000 8600
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ERJ-UP6J103v R?
U 1 1 5E598831
P 5800 8250
AR Path="/5E4DF891/5E598831" Ref="R?"  Part="1" 
AR Path="/5E598831" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E598831" Ref="R?"  Part="1" 
F 0 "R?" H 5900 8150 50  0000 C CNN
F 1 "ERJ-UP6J103v" H 5650 8050 50  0001 L CNN
F 2 "RESC2012X70N" H 5650 7950 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-UP6J103V.pdf" H 5650 7850 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 0.5W 5% 10KOhm Anti-sulfur AEC-Q200" H 5650 7750 50  0001 L CNN "Description"
F 5 "0.7" H 5650 7650 50  0001 L CNN "Height"
F 6 "667-ERJ-UP6J103V" H 5650 7550 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-UP6J103V" H 5650 7450 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 5650 7350 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-UP6J103V" H 5650 7250 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "10 k" H 5800 8250 50  0000 C CNN "Resistance"
	1    5800 8250
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:ERJ-UP6J103v R?
U 1 1 5E59883E
P 5550 8600
AR Path="/5E4DF891/5E59883E" Ref="R?"  Part="1" 
AR Path="/5E59883E" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E59883E" Ref="R?"  Part="1" 
F 0 "R?" H 5650 8500 50  0000 C CNN
F 1 "ERJ-UP6J103v" H 5400 8400 50  0001 L CNN
F 2 "RESC2012X70N" H 5400 8300 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-UP6J103V.pdf" H 5400 8200 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 0.5W 5% 10KOhm Anti-sulfur AEC-Q200" H 5400 8100 50  0001 L CNN "Description"
F 5 "0.7" H 5400 8000 50  0001 L CNN "Height"
F 6 "667-ERJ-UP6J103V" H 5400 7900 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-UP6J103V" H 5400 7800 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 5400 7700 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-UP6J103V" H 5400 7600 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "10 k" H 5550 8600 50  0000 C CNN "Resistance"
	1    5550 8600
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 8950 6150 9050
$Comp
L SamacSys_Parts:ERJ-UP6J103v R?
U 1 1 5E59884F
P 5350 8500
AR Path="/5E4DF891/5E59884F" Ref="R?"  Part="1" 
AR Path="/5E59884F" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E59884F" Ref="R?"  Part="1" 
F 0 "R?" H 5450 8400 50  0000 C CNN
F 1 "ERJ-UP6J103v" H 5200 8300 50  0001 L CNN
F 2 "RESC2012X70N" H 5200 8200 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-UP6J103V.pdf" H 5200 8100 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 0.5W 5% 10KOhm Anti-sulfur AEC-Q200" H 5200 8000 50  0001 L CNN "Description"
F 5 "0.7" H 5200 7900 50  0001 L CNN "Height"
F 6 "667-ERJ-UP6J103V" H 5200 7800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-UP6J103V" H 5200 7700 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 5200 7600 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-UP6J103V" H 5200 7500 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "10 k" H 5350 8500 50  0000 C CNN "Resistance"
	1    5350 8500
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E598855
P 5800 8600
AR Path="/5E4DF891/5E598855" Ref="#PWR?"  Part="1" 
AR Path="/5E598855" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E598855" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5800 8350 50  0001 C CNN
F 1 "GNDREF" H 5805 8427 50  0000 C CNN
F 2 "" H 5800 8600 50  0001 C CNN
F 3 "" H 5800 8600 50  0001 C CNN
	1    5800 8600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E59885B
P 5350 8150
AR Path="/5E4DF891/5E59885B" Ref="#PWR?"  Part="1" 
AR Path="/5E59885B" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E59885B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5350 7900 50  0001 C CNN
F 1 "GNDREF" H 5355 7977 50  0000 C CNN
F 2 "" H 5350 8150 50  0001 C CNN
F 3 "" H 5350 8150 50  0001 C CNN
	1    5350 8150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5350 8150 5550 8150
Wire Wire Line
	5550 8150 5550 8250
Wire Wire Line
	6050 8950 5550 8950
Wire Wire Line
	4900 8950 4900 8750
Wire Wire Line
	4900 8750 4800 8750
Wire Wire Line
	6150 9050 5350 9050
Wire Wire Line
	5150 8850 5150 8550
Wire Wire Line
	5150 8550 4800 8550
Wire Wire Line
	4900 8950 5550 8950
Connection ~ 5550 8950
Wire Wire Line
	5350 8850 5150 8850
Connection ~ 5350 8850
Wire Wire Line
	6050 8250 6050 7900
Wire Wire Line
	6050 7900 5800 7900
Wire Wire Line
	5150 8350 4800 8350
Connection ~ 5800 7900
Wire Wire Line
	5800 7900 5150 7900
Wire Wire Line
	6850 8950 6750 8950
Wire Wire Line
	6850 8250 6750 8250
NoConn ~ 4800 8850
NoConn ~ 4800 8950
NoConn ~ 3200 8950
NoConn ~ 3200 8850
Wire Wire Line
	6150 9150 6250 9150
Wire Wire Line
	6250 9150 6250 8950
$Comp
L SamacSys_Parts:ERJ-6ENF1001V R?
U 1 1 5E598889
P 2750 8250
AR Path="/5E4DF891/5E598889" Ref="R?"  Part="1" 
AR Path="/5E598889" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E598889" Ref="R?"  Part="1" 
F 0 "R?" H 2650 8350 50  0000 C CNN
F 1 "ERJ-6ENF1001V" H 2600 8350 50  0001 L CNN
F 2 "RESC2012X70N" H 2450 8650 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-6ENF1001V.pdf" H 2600 7950 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 1Kohms 1% AEC-Q200" H 2600 7850 50  0001 L CNN "Description"
F 5 "0.7" H 2600 7750 50  0001 L CNN "Height"
F 6 "667-ERJ-6ENF1001V" H 2600 7650 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-6ENF1001V" H 2600 7550 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 2600 7450 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-6ENF1001V" H 2600 7350 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "1 k" H 2750 8250 50  0000 C CNN "Resistance"
	1    2750 8250
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ERJ-6ENF1001V R?
U 1 1 5E598896
P 2750 8450
AR Path="/5E4DF891/5E598896" Ref="R?"  Part="1" 
AR Path="/5E598896" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E598896" Ref="R?"  Part="1" 
F 0 "R?" H 2650 8550 50  0000 C CNN
F 1 "ERJ-6ENF1001V" H 2600 8550 50  0001 L CNN
F 2 "RESC2012X70N" H 2450 8850 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-6ENF1001V.pdf" H 2600 8150 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 1Kohms 1% AEC-Q200" H 2600 8050 50  0001 L CNN "Description"
F 5 "0.7" H 2600 7950 50  0001 L CNN "Height"
F 6 "667-ERJ-6ENF1001V" H 2600 7850 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-6ENF1001V" H 2600 7750 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 2600 7650 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-6ENF1001V" H 2600 7550 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "1 k" H 2750 8450 50  0000 C CNN "Resistance"
	1    2750 8450
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:ERJ-6ENF1001V R?
U 1 1 5E5988A3
P 2750 8650
AR Path="/5E4DF891/5E5988A3" Ref="R?"  Part="1" 
AR Path="/5E5988A3" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E5988A3" Ref="R?"  Part="1" 
F 0 "R?" H 2650 8750 50  0000 C CNN
F 1 "ERJ-6ENF1001V" H 2600 8750 50  0001 L CNN
F 2 "RESC2012X70N" H 2450 9050 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-6ENF1001V.pdf" H 2600 8350 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 1Kohms 1% AEC-Q200" H 2600 8250 50  0001 L CNN "Description"
F 5 "0.7" H 2600 8150 50  0001 L CNN "Height"
F 6 "667-ERJ-6ENF1001V" H 2600 8050 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-6ENF1001V" H 2600 7950 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 2600 7850 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-6ENF1001V" H 2600 7750 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "1 k" H 2750 8650 50  0000 C CNN "Resistance"
	1    2750 8650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E5988A9
P 3200 8350
AR Path="/5E4DF891/5E5988A9" Ref="#PWR?"  Part="1" 
AR Path="/5E5988A9" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E5988A9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 8100 50  0001 C CNN
F 1 "GNDREF" V 3205 8222 50  0000 R CNN
F 2 "" H 3200 8350 50  0001 C CNN
F 3 "" H 3200 8350 50  0001 C CNN
	1    3200 8350
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E5988AF
P 3200 8550
AR Path="/5E4DF891/5E5988AF" Ref="#PWR?"  Part="1" 
AR Path="/5E5988AF" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E5988AF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 8300 50  0001 C CNN
F 1 "GNDREF" V 3205 8422 50  0000 R CNN
F 2 "" H 3200 8550 50  0001 C CNN
F 3 "" H 3200 8550 50  0001 C CNN
	1    3200 8550
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E5988B5
P 3200 8750
AR Path="/5E4DF891/5E5988B5" Ref="#PWR?"  Part="1" 
AR Path="/5E5988B5" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E5988B5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3200 8500 50  0001 C CNN
F 1 "GNDREF" V 3205 8622 50  0000 R CNN
F 2 "" H 3200 8750 50  0001 C CNN
F 3 "" H 3200 8750 50  0001 C CNN
	1    3200 8750
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 8250 3200 8250
Wire Wire Line
	3200 8450 3100 8450
Wire Wire Line
	3100 8650 3200 8650
Wire Wire Line
	5350 9050 5350 8850
Connection ~ 5350 8150
Wire Wire Line
	5150 7900 5150 8350
$Comp
L SamacSys_Parts:ADS1248IPWR U?
U 1 1 5E5988CE
P 11150 5400
AR Path="/5E4DF891/5E5988CE" Ref="U?"  Part="1" 
AR Path="/5E5988CE" Ref="U?"  Part="1" 
AR Path="/5E4E6D39/5E5988CE" Ref="U?"  Part="1" 
F 0 "U?" H 11150 4485 50  0000 C CNN
F 1 "ADS1248IPWR" H 11150 4576 50  0000 C CNN
F 2 "SOP65P640X120-28N" H 10250 4400 50  0001 L CNN
F 3 "http://www.ti.com/lit/gpn/ADS1248" H 10250 4300 50  0001 L CNN
F 4 "24-Bit, 2kSPS, 8-Ch Delta-Sigma ADC for Precision Sensor Measurement" H 10250 4200 50  0001 L CNN "Description"
F 5 "1.2" H 12100 5850 50  0001 L CNN "Height"
F 6 "595-ADS1248IPWR" H 10250 4000 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=595-ADS1248IPWR" H 10250 3900 50  0001 L CNN "Mouser Price/Stock"
F 8 "Texas Instruments" H 10250 3800 50  0001 L CNN "Manufacturer_Name"
F 9 "ADS1248IPWR" H 10250 3700 50  0001 L CNN "Manufacturer_Part_Number"
	1    11150 5400
	-1   0    0    1   
$EndComp
Text GLabel 12250 4950 2    50   Input ~ 0
SENSE_1-4
Text GLabel 10050 4950 0    50   Input ~ 0
SENSE_5-8
Text GLabel 10050 5050 0    50   Input ~ 0
SENSE_9-12
Text GLabel 12250 4850 2    50   Input ~ 0
SENSE_13-16
Text GLabel 12250 4750 2    50   Input ~ 0
SENSE_17-20
$Comp
L SamacSys_Parts:ERJ-UP6J103v R?
U 1 1 5E5988E2
P 9700 5150
AR Path="/5E4DF891/5E5988E2" Ref="R?"  Part="1" 
AR Path="/5E5988E2" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E5988E2" Ref="R?"  Part="1" 
F 0 "R?" H 10000 5050 50  0000 C CNN
F 1 "ERJ-UP6J103v" H 9550 4950 50  0001 L CNN
F 2 "RESC2012X70N" H 9550 4850 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-UP6J103V.pdf" H 9550 4750 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 0.5W 5% 10KOhm Anti-sulfur AEC-Q200" H 9550 4650 50  0001 L CNN "Description"
F 5 "0.7" H 9550 4550 50  0001 L CNN "Height"
F 6 "667-ERJ-UP6J103V" H 9550 4450 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-UP6J103V" H 9550 4350 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 9550 4250 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-UP6J103V" H 9550 4150 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "10 k" H 9700 5150 50  0000 C CNN "Resistance"
	1    9700 5150
	-1   0    0    1   
$EndComp
$Comp
L SamacSys_Parts:ERJ-UP6J103v R?
U 1 1 5E5988EF
P 9700 5250
AR Path="/5E4DF891/5E5988EF" Ref="R?"  Part="1" 
AR Path="/5E5988EF" Ref="R?"  Part="1" 
AR Path="/5E4E6D39/5E5988EF" Ref="R?"  Part="1" 
F 0 "R?" H 10000 5350 50  0000 C CNN
F 1 "ERJ-UP6J103v" H 9550 5050 50  0001 L CNN
F 2 "RESC2012X70N" H 9550 4950 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/ERJ-UP6J103V.pdf" H 9550 4850 50  0001 L CNN
F 4 "Thick Film Resistors - SMD 0805 0.5W 5% 10KOhm Anti-sulfur AEC-Q200" H 9550 4750 50  0001 L CNN "Description"
F 5 "0.7" H 9550 4650 50  0001 L CNN "Height"
F 6 "667-ERJ-UP6J103V" H 9550 4550 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=667-ERJ-UP6J103V" H 9550 4450 50  0001 L CNN "Mouser Price/Stock"
F 8 "Panasonic" H 9550 4350 50  0001 L CNN "Manufacturer_Name"
F 9 "ERJ-UP6J103V" H 9550 4250 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "10 k" H 9700 5250 50  0000 C CNN "Resistance"
	1    9700 5250
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E5988F5
P 9350 5150
AR Path="/5E4DF891/5E5988F5" Ref="#PWR?"  Part="1" 
AR Path="/5E5988F5" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E5988F5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9350 4900 50  0001 C CNN
F 1 "GNDREF" V 9355 5022 50  0000 R CNN
F 2 "" H 9350 5150 50  0001 C CNN
F 3 "" H 9350 5150 50  0001 C CNN
	1    9350 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	9350 5250 9350 5150
Connection ~ 9350 5150
$Comp
L power:GNDREF #PWR?
U 1 1 5E5988FD
P 10050 5350
AR Path="/5E4DF891/5E5988FD" Ref="#PWR?"  Part="1" 
AR Path="/5E5988FD" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E5988FD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10050 5100 50  0001 C CNN
F 1 "GNDREF" V 10055 5222 50  0000 R CNN
F 2 "" H 10050 5350 50  0001 C CNN
F 3 "" H 10050 5350 50  0001 C CNN
	1    10050 5350
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E598903
P 12250 5950
AR Path="/5E4DF891/5E598903" Ref="#PWR?"  Part="1" 
AR Path="/5E598903" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E598903" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12250 5700 50  0001 C CNN
F 1 "GNDREF" V 12255 5822 50  0000 R CNN
F 2 "" H 12250 5950 50  0001 C CNN
F 3 "" H 12250 5950 50  0001 C CNN
	1    12250 5950
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E598909
P 12350 5350
AR Path="/5E4DF891/5E598909" Ref="#PWR?"  Part="1" 
AR Path="/5E598909" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E598909" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12350 5100 50  0001 C CNN
F 1 "GNDREF" V 12355 5222 50  0000 R CNN
F 2 "" H 12350 5350 50  0001 C CNN
F 3 "" H 12350 5350 50  0001 C CNN
	1    12350 5350
	0    -1   -1   0   
$EndComp
$Comp
L SamacSys_Parts:0805ZC104MAT2A C?
U 1 1 5E598916
P 9300 5650
AR Path="/5E4DF891/5E598916" Ref="C?"  Part="1" 
AR Path="/5E598916" Ref="C?"  Part="1" 
AR Path="/5E4E6D39/5E598916" Ref="C?"  Part="1" 
F 0 "C?" H 9300 5500 50  0000 C CNN
F 1 "0805ZC104MAT2A" H 8850 5300 50  0001 L CNN
F 2 "CAPC2012X94N" H 8850 5200 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/0805ZC104MAT2A.pdf" H 8850 5100 50  0001 L CNN
F 4 "Capacitor 0805 0.1UF +/-20% 10V" H 8850 5000 50  0001 L CNN "Description"
F 5 "" H 9400 5400 50  0001 L CNN "Height"
F 6 "581-0805ZC104MAT2A" H 8850 4800 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=581-0805ZC104MAT2A" H 8850 4700 50  0001 L CNN "Mouser Price/Stock"
F 8 "AVX" H 9400 5100 50  0001 L CNN "Manufacturer_Name"
F 9 "0805ZC104MAT2A" H 8850 4500 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "100nF" H 9300 5800 50  0000 C CNN "Capacitance"
	1    9300 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	9550 5650 9550 5450
Wire Wire Line
	10050 5450 9550 5450
$Comp
L power:GNDREF #PWR?
U 1 1 5E59891E
P 9050 5650
AR Path="/5E4DF891/5E59891E" Ref="#PWR?"  Part="1" 
AR Path="/5E59891E" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E59891E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9050 5400 50  0001 C CNN
F 1 "GNDREF" V 9055 5522 50  0000 R CNN
F 2 "" H 9050 5650 50  0001 C CNN
F 3 "" H 9050 5650 50  0001 C CNN
	1    9050 5650
	0    1    1    0   
$EndComp
$Comp
L SamacSys_Parts:0805ZC104MAT2A C?
U 1 1 5E59892B
P 12250 6300
AR Path="/5E4DF891/5E59892B" Ref="C?"  Part="1" 
AR Path="/5E59892B" Ref="C?"  Part="1" 
AR Path="/5E4E6D39/5E59892B" Ref="C?"  Part="1" 
F 0 "C?" H 12250 6150 50  0000 C CNN
F 1 "0805ZC104MAT2A" H 11800 5950 50  0001 L CNN
F 2 "CAPC2012X94N" H 11800 5850 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/0805ZC104MAT2A.pdf" H 11800 5750 50  0001 L CNN
F 4 "Capacitor 0805 0.1UF +/-20% 10V" H 11800 5650 50  0001 L CNN "Description"
F 5 "" H 12350 6050 50  0001 L CNN "Height"
F 6 "581-0805ZC104MAT2A" H 11800 5450 50  0001 L CNN "Mouser Part Number"
F 7 "https://www.mouser.com/Search/Refine.aspx?Keyword=581-0805ZC104MAT2A" H 11800 5350 50  0001 L CNN "Mouser Price/Stock"
F 8 "AVX" H 12350 5750 50  0001 L CNN "Manufacturer_Name"
F 9 "0805ZC104MAT2A" H 11800 5150 50  0001 L CNN "Manufacturer_Part_Number"
F 10 "100nF" H 12250 6450 50  0000 C CNN "Capacitance"
	1    12250 6300
	0    1    1    0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E598931
P 12250 6550
AR Path="/5E4DF891/5E598931" Ref="#PWR?"  Part="1" 
AR Path="/5E598931" Ref="#PWR?"  Part="1" 
AR Path="/5E4E6D39/5E598931" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12250 6300 50  0001 C CNN
F 1 "GNDREF" H 12255 6377 50  0000 C CNN
F 2 "" H 12250 6550 50  0001 C CNN
F 3 "" H 12250 6550 50  0001 C CNN
	1    12250 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	12250 5550 12350 5550
Wire Wire Line
	12350 5550 12350 5350
Wire Wire Line
	12350 5350 12350 5150
Wire Wire Line
	12350 5150 12250 5150
Connection ~ 12350 5350
Wire Wire Line
	12250 5350 12350 5350
Text HLabel 8050 2150 2    50   Input ~ 0
9v
Text HLabel 8050 3750 2    50   Input ~ 0
9v
Text HLabel 8050 5350 2    50   Input ~ 0
9v
Text HLabel 8050 6950 2    50   Input ~ 0
9v
Text HLabel 8050 8550 2    50   Input ~ 0
9v
Text HLabel 4800 1850 2    50   Input ~ 0
CELL4
Text HLabel 4800 2050 2    50   Input ~ 0
CELL4
Text HLabel 4800 2250 2    50   Input ~ 0
CELL4
Text HLabel 6250 1850 1    50   Input ~ 0
CELL4
Text HLabel 6450 1850 1    50   Input ~ 0
CELL1
Text HLabel 6550 1850 1    50   Input ~ 0
CELL2
Text HLabel 6650 1850 1    50   Input ~ 0
CELL3
Text HLabel 6650 2550 3    50   Input ~ 0
CELL4
Text HLabel 6550 2550 3    50   Input ~ 0
CELL3
Text HLabel 6450 2550 3    50   Input ~ 0
CELL2
Text HLabel 6350 2550 3    50   Input ~ 0
CELL1
Text HLabel 4800 3450 2    50   Input ~ 0
CELL8
Text HLabel 4800 3650 2    50   Input ~ 0
CELL8
Text HLabel 4800 3850 2    50   Input ~ 0
CELL8
Text HLabel 6150 3450 1    50   Input ~ 0
CELL4
Text HLabel 5800 3800 3    50   Input ~ 0
CELL4
Text HLabel 6250 3450 1    50   Input ~ 0
CELL8
Text HLabel 6350 3450 1    50   Input ~ 0
CELL4
Text HLabel 6450 3450 1    50   Input ~ 0
CELL5
Text HLabel 6550 3450 1    50   Input ~ 0
CELL6
Text HLabel 6650 3450 1    50   Input ~ 0
CELL7
Text HLabel 6650 4150 3    50   Input ~ 0
CELL8
Text HLabel 6550 4150 3    50   Input ~ 0
CELL7
Text HLabel 6450 4150 3    50   Input ~ 0
CELL6
Text HLabel 6350 4150 3    50   Input ~ 0
CELL5
Text HLabel 6150 4350 0    50   Input ~ 0
CELL4
Text HLabel 6650 5050 1    50   Input ~ 0
CELL11
Text HLabel 6550 5050 1    50   Input ~ 0
CELL10
Text HLabel 6450 5050 1    50   Input ~ 0
CELL9
Text HLabel 6350 5050 1    50   Input ~ 0
CELL8
Text HLabel 6250 5050 1    50   Input ~ 0
CELL12
Text HLabel 6150 5050 1    50   Input ~ 0
CELL8
Text HLabel 4800 5050 2    50   Input ~ 0
CELL12
Text HLabel 4800 5250 2    50   Input ~ 0
CELL12
Text HLabel 4800 5450 2    50   Input ~ 0
CELL12
Text HLabel 6150 5950 0    50   Input ~ 0
CELL8
Text HLabel 6350 5750 3    50   Input ~ 0
CELL9
Text HLabel 6450 5750 3    50   Input ~ 0
CELL10
Text HLabel 6550 5750 3    50   Input ~ 0
CELL11
Text HLabel 6650 5750 3    50   Input ~ 0
CELL12
Text HLabel 9550 5450 0    50   Input ~ 0
5v
Text HLabel 12250 6050 2    50   Input ~ 0
3v
Text HLabel 4800 6650 2    50   Input ~ 0
CELL16
Text HLabel 4800 6850 2    50   Input ~ 0
CELL16
Text HLabel 4800 7050 2    50   Input ~ 0
CELL16
Text HLabel 6150 6650 1    50   Input ~ 0
CELL12
Text HLabel 6250 6650 1    50   Input ~ 0
CELL16
Text HLabel 6350 6650 1    50   Input ~ 0
CELL12
Text HLabel 6450 6650 1    50   Input ~ 0
CELL13
Text HLabel 6550 6650 1    50   Input ~ 0
CELL14
Text HLabel 6650 6650 1    50   Input ~ 0
CELL15
Text HLabel 6650 7350 3    50   Input ~ 0
CELL16
Text HLabel 6550 7350 3    50   Input ~ 0
CELL15
Text HLabel 6450 7350 3    50   Input ~ 0
CELL14
Text HLabel 6350 7350 3    50   Input ~ 0
CELL13
Text HLabel 6150 7550 0    50   Input ~ 0
CELL12
Text HLabel 4800 8250 2    50   Input ~ 0
CELL20
Text HLabel 4800 8450 2    50   Input ~ 0
CELL20
Text HLabel 4800 8650 2    50   Input ~ 0
CELL20
Text HLabel 6150 9150 0    50   Input ~ 0
CELL16
Text HLabel 6150 8250 1    50   Input ~ 0
CELL16
Text HLabel 6250 8250 1    50   Input ~ 0
CELL20
Text HLabel 6350 8250 1    50   Input ~ 0
CELL16
Text HLabel 6450 8250 1    50   Input ~ 0
CELL17
Text HLabel 6550 8250 1    50   Input ~ 0
CELL18
Text HLabel 6650 8250 1    50   Input ~ 0
CELL19
Text HLabel 6650 8950 3    50   Input ~ 0
CELL20
Text HLabel 6550 8950 3    50   Input ~ 0
CELL19
Text HLabel 6450 8950 3    50   Input ~ 0
CELL18
Text HLabel 6350 8950 3    50   Input ~ 0
CELL17
$EndSCHEMATC
