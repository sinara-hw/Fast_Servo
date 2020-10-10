designFile = "C:/Users/piotr/Downloads/temp/PCB/PDNAnalyzer_Output/Fast_Servo/odb.tgz"

powerNets = ["P2V5A", "P1V8A", "P3V3", "P5V5", "P1V8", "P12V0", "P12V0FIL", "P3V3A", "P5V0A", "N2V5A", "N5V0A", "N5V5", "P13V0S", "P13V0FIL", "P13V0", "P12V0A", "N13V0S", "N13V0FIL", "N13V0", "N12V0A"]

groundNets = ["GND"]

excitation = [
{
"id": "0",
"type": "load",
"power_pins": [ ("IC3", "10"), ("IC3", "9"), ("IC3", "4"), ("IC3", "3") ],
"ground_pins": [ ("IC3", "25") ],
"current": 0.13,
"Rpin": 1.23076923076923,
}
,
{
"id": "1",
"type": "load",
"power_pins": [ ("R106", "2") ],
"ground_pins": [ ("LD6", "1") ],
"current": 0.01,
"Rpin": 10,
}
,
{
"id": "2",
"type": "load",
"power_pins": [ ("IC20", "18"), ("IC20", "21"), ("IC20", "26"), ("IC20", "29"), ("IC20", "32"), ("IC20", "34"), ("IC20", "39"), ("IC20", "40") ],
"ground_pins": [ ("IC20", "45") ],
"current": 0.115,
"Rpin": 1.54589371980676,
}
,
{
"id": "3",
"type": "load",
"power_pins": [ ("IC2", "15"), ("IC2", "16"), ("IC2", "51"), ("IC2", "52") ],
"ground_pins": [ ("IC2", "53"), ("IC2", "2"), ("IC2", "5"), ("IC2", "13"), ("IC2", "22"), ("IC2", "33"), ("IC2", "45"), ("IC2", "47"), ("IC2", "49") ],
"current": 0.23,
"Rpin": 2.40802675585284,
}
,
{
"id": "4",
"type": "load",
"power_pins": [ ("JB1", "16"), ("JB1", "14"), ("JB1", "12"), ("JB1", "10"), ("JB1", "6"), ("JB1", "4"), ("JB1", "2") ],
"ground_pins": [ ("JB1", "F1"), ("JB1", "F2"), ("JB1", "54"), ("JB1", "53"), ("JB1", "43"), ("JB1", "33"), ("JB1", "30"), ("JB1", "25"), ("JB1", "19"), ("JB1", "7"), ("JB1", "1"), ("JB1", "63"), ("JB1", "64"), ("JB1", "73"), ("JB1", "74"), ("JB1", "83"), ("JB1", "89"), ("JB1", "90") ],
"current": 0.5,
"Rpin": 2.016,
}
,
{
"id": "5",
"type": "load",
"power_pins": [ ("JB2", "7"), ("JB2", "5"), ("JB2", "3"), ("JB2", "1") ],
"ground_pins": [ ("JB2", "F1"), ("JB2", "F2"), ("JB2", "60"), ("JB2", "59"), ("JB2", "50"), ("JB2", "49"), ("JB2", "40"), ("JB2", "39"), ("JB2", "29"), ("JB2", "19"), ("JB2", "69"), ("JB2", "70"), ("JB2", "79"), ("JB2", "80"), ("JB2", "89") ],
"current": 0.5,
"Rpin": 1.26315789473684,
}
,
{
"id": "6",
"type": "load",
"power_pins": [ ("IC4", "5") ],
"ground_pins": [ ("IC4", "3") ],
"current": 0.001,
"Rpin": 100,
}
,
{
"id": "7",
"type": "load",
"power_pins": [ ("IC5", "5") ],
"ground_pins": [ ("IC5", "3") ],
"current": 0.001,
"Rpin": 100,
}
,
{
"id": "8",
"type": "load",
"power_pins": [ ("IC15", "4") ],
"ground_pins": [ ("IC15", "2") ],
"current": 0.016,
"Rpin": 6.25,
}
,
{
"id": "9",
"type": "load",
"power_pins": [ ("IC6", "21"), ("IC6", "17") ],
"ground_pins": [ ("IC6", "11"), ("IC6", "2"), ("IC6", "25") ],
"current": 0.005,
"Rpin": 48,
}
,
{
"id": "10",
"type": "load",
"power_pins": [ ("IC1", "3"), ("IC1", "2") ],
"ground_pins": [ ("IC1", "9"), ("IC1", "1") ],
"current": 0.001,
"Rpin": 200,
}
,
{
"id": "11",
"type": "load",
"power_pins": [ ("J4", "34") ],
"ground_pins": [ ("J4", "10"), ("J4", "7"), ("J4", "4"), ("J4", "1"), ("J4", "19"), ("J4", "16"), ("J4", "13"), ("J4", "30"), ("J4", "25"), ("J4", "22") ],
"current": 0.1,
"Rpin": 1.81818181818182,
}
,
{
"id": "12",
"type": "load",
"power_pins": [ ("U6", "32"), ("U6", "31") ],
"ground_pins": [ ("U6", "33"), ("U6", "29"), ("U6", "19"), ("U6", "6"), ("U6", "5"), ("U6", "1") ],
"current": 0.006,
"Rpin": 50,
}
,
{
"id": "13",
"type": "load",
"power_pins": [ ("U7", "14") ],
"ground_pins": [ ("U7", "25"), ("U7", "15"), ("U7", "18"), ("U7", "19"), ("U7", "20"), ("U7", "21"), ("U7", "1") ],
"current": 0.005,
"Rpin": 35,
}
,
{
"id": "14",
"type": "load",
"power_pins": [ ("IC2", "34") ],
"ground_pins": [ ("IC2", "33") ],
"current": 0.04,
"Rpin": 2.5,
}
,
{
"id": "15",
"type": "load",
"power_pins": [ ("IC6", "5") ],
"ground_pins": [ ("IC6", "11"), ("IC6", "2"), ("IC6", "25") ],
"current": 0.005,
"Rpin": 30,
}
,
{
"id": "16",
"type": "load",
"power_pins": [ ("JB2", "6"), ("JB2", "4"), ("JB2", "2") ],
"ground_pins": [ ("JB2", "F1"), ("JB2", "F2"), ("JB2", "60"), ("JB2", "59"), ("JB2", "50"), ("JB2", "49"), ("JB2", "40"), ("JB2", "39"), ("JB2", "29"), ("JB2", "19"), ("JB2", "69"), ("JB2", "70"), ("JB2", "79"), ("JB2", "80"), ("JB2", "89") ],
"current": 0.5,
"Rpin": 1,
}
,
{
"id": "17",
"type": "load",
"power_pins": [ ("J15", "1") ],
"ground_pins": [ ("JB3", "F2"), ("JB3", "F1"), ("JB3", "5"), ("JB3", "6"), ("JB3", "11"), ("JB3", "12"), ("JB3", "17"), ("JB3", "18"), ("JB3", "23"), ("JB3", "24"), ("JB3", "29"), ("JB3", "30"), ("JB3", "35"), ("JB3", "36"), ("JB3", "45"), ("JB3", "46"), ("JB3", "55") ],
"current": 0.1,
"Rpin": 1.88888888888889,
}
,
{
"id": "18",
"type": "source",
"power_pins": [ ("T5", "3"), ("T5", "2"), ("T5", "1") ],
"ground_pins": [ ("IC12", "10"), ("IC12", "7") ],
"voltage": 12,
"Rpin": 0,
}
,
{
"id": "19",
"type": "load",
"power_pins": [ ("U5A", "2"), ("U5A", "10"), ("U5A", "11") ],
"ground_pins": [ ("U5A", "3"), ("U5A", "9"), ("U5A", "12"), ("U5A", "17") ],
"current": 0.018,
"Rpin": 19.0476190476191,
}
,
{
"id": "20",
"type": "load",
"power_pins": [ ("U5B", "11"), ("U5B", "10"), ("U5B", "2") ],
"ground_pins": [ ("U5B", "17"), ("U5B", "12"), ("U5B", "9"), ("U5B", "3") ],
"current": 0.018,
"Rpin": 19.0476190476191,
}
,
{
"id": "21",
"type": "load",
"power_pins": [ ("U6", "3") ],
"ground_pins": [ ("U6", "33"), ("U6", "29"), ("U6", "19"), ("U6", "6"), ("U6", "5"), ("U6", "1") ],
"current": 0.007,
"Rpin": 24.4897959183673,
}
,
{
"id": "22",
"type": "load",
"power_pins": [ ("IC20", "8"), ("IC20", "9") ],
"ground_pins": [ ("IC20", "45") ],
"current": 0.12,
"Rpin": 1.11111111111111,
}
,
{
"id": "23",
"type": "load",
"power_pins": [ ("U1", "17"), ("U1", "26") ],
"ground_pins": [ ("U1", "6") ],
"current": 0.07,
"Rpin": 1.9047619047619,
}
,
{
"id": "24",
"type": "load",
"power_pins": [ ("U4A", "6") ],
"ground_pins": [ ("U4A", "17") ],
"current": 0.059,
"Rpin": 1.69491525423729,
}
,
{
"id": "25",
"type": "load",
"power_pins": [ ("U4B", "6") ],
"ground_pins": [ ("U4B", "17") ],
"current": 0.059,
"Rpin": 1.69491525423729,
}
,
{
"id": "26",
"type": "load",
"power_pins": [ ("IC3", "22"), ("IC3", "21"), ("IC3", "16"), ("IC3", "15") ],
"ground_pins": [ ("IC3", "25") ],
"current": -0.13,
"Rpin": 1.23076923076923,
}
,
{
"id": "27",
"type": "load",
"power_pins": [ ("U4A", "12"), ("U4A", "4") ],
"ground_pins": [ ("U4A", "17") ],
"current": -0.059,
"Rpin": 2.25988700564972,
}
,
{
"id": "28",
"type": "load",
"power_pins": [ ("U4B", "12"), ("U4B", "4") ],
"ground_pins": [ ("U4B", "17") ],
"current": -0.059,
"Rpin": 2.25988700564972,
}
,
{
"id": "29",
"type": "load",
"power_pins": [ ("J16", "15") ],
"ground_pins": [ ("J16", "13"), ("J16", "1"), ("J16", "4"), ("J16", "7"), ("J16", "10") ],
"current": 0.1,
"Rpin": 1.66666666666667,
}
,
{
"id": "30",
"type": "load",
"power_pins": [ ("J3", "25") ],
"ground_pins": [ ("J3", "21"), ("J3", "23"), ("J3", "24"), ("J3", "11"), ("J3", "12"), ("J3", "14"), ("J3", "15"), ("J3", "18"), ("J3", "17"), ("J3", "20"), ("J3", "2"), ("J3", "3"), ("J3", "6"), ("J3", "5"), ("J3", "8"), ("J3", "9") ],
"current": 0.1,
"Rpin": 1.88235294117647,
}
,
{
"id": "31",
"type": "load",
"power_pins": [ ("J3", "26") ],
"ground_pins": [ ("J3", "21"), ("J3", "23"), ("J3", "24"), ("J3", "11"), ("J3", "12"), ("J3", "14"), ("J3", "15"), ("J3", "18"), ("J3", "17"), ("J3", "20"), ("J3", "2"), ("J3", "3"), ("J3", "6"), ("J3", "5"), ("J3", "8"), ("J3", "9") ],
"current": -0.1,
"Rpin": 1.88235294117647,
}
,
{
"id": "32",
"type": "load",
"power_pins": [ ("J16", "16") ],
"ground_pins": [ ("J16", "13"), ("J16", "1"), ("J16", "4"), ("J16", "7"), ("J16", "10") ],
"current": -0.1,
"Rpin": 1.66666666666667,
}
,
{
"id": "33",
"type": "load",
"power_pins": [ ("IC10", "5"), ("IC10", "6"), ("IC10", "7"), ("IC10", "8"), ("IC10", "9"), ("IC10", "10"), ("IC10", "11") ],
"ground_pins": [ ("IC9", "8"), ("IC9", "11") ],
"current": 0.0001,
"Rpin": 7000,
}
,
{
"id": "34",
"type": "load",
"power_pins": [ ("IC10", "5"), ("IC10", "6"), ("IC10", "7"), ("IC10", "8"), ("IC10", "9"), ("IC10", "10"), ("IC10", "11") ],
"ground_pins": [ ("IC16", "11"), ("IC16", "8") ],
"current": 0.0001,
"Rpin": 7000,
}
,
{
"id": "35",
"type": "load",
"power_pins": [ ("IC18", "6"), ("IC18", "2"), ("IC18", "1") ],
"ground_pins": [ ("IC18", "11"), ("IC18", "8"), ("IC18", "5") ],
"current": 0.0001,
"Rpin": 3000,
}
,
{
"id": "36",
"type": "load",
"power_pins": [ ("IC19", "1"), ("IC19", "2") ],
"ground_pins": [ ("IC19", "8"), ("IC19", "11") ],
"current": 0.0001,
"Rpin": 2000,
}
,
{
"id": "37",
"type": "load",
"power_pins": [ ("IC17", "2") ],
"ground_pins": [ ("IC17", "1") ],
"current": -0.0001,
"Rpin": 1000,
}
,
{
"id": "38",
"type": "load",
"power_pins": [ ("IC8", "2") ],
"ground_pins": [ ("IC8", "1") ],
"current": -0.0001,
"Rpin": 1000,
}
,
{
"id": "39",
"type": "load",
"power_pins": [ ("IC21", "2"), ("IC21", "1") ],
"ground_pins": [ ("IC21", "11"), ("IC21", "8"), ("IC21", "5") ],
"current": 0.0001,
"Rpin": 2000,
}
,
{
"id": "40",
"type": "load",
"power_pins": [ ("IC23", "2") ],
"ground_pins": [ ("IC23", "1") ],
"current": -0.0001,
"Rpin": 1000,
}
,
{
"id": "41",
"type": "source",
"power_pins": [ ("IC10", "5"), ("IC10", "6"), ("IC10", "7"), ("IC10", "8"), ("IC10", "9"), ("IC10", "10"), ("IC10", "11") ],
"ground_pins": [ ("IC10", "26"), ("IC10", "13"), ("IC10", "14"), ("IC10", "15"), ("IC10", "16"), ("IC10", "17"), ("IC10", "18"), ("IC10", "32"), ("IC10", "39") ],
"voltage": 3.3,
"Rpin": 0,
}
,
{
"id": "42",
"type": "load",
"power_pins": [ ("IC10", "20"), ("IC10", "21"), ("IC10", "19"), ("IC10", "33") ],
"ground_pins": [ ("IC10", "26"), ("IC10", "13"), ("IC10", "14"), ("IC10", "15"), ("IC10", "16"), ("IC10", "17"), ("IC10", "18"), ("IC10", "32"), ("IC10", "39") ],
"current": 1.08098302766511,
"Rpin": 0.512354162527829,
}
,
{
"id": "43",
"type": "source",
"power_pins": [ ("U10", "5"), ("U10", "6"), ("U10", "15"), ("U10", "7") ],
"ground_pins": [ ("U10", "21"), ("U10", "3"), ("U10", "4"), ("U10", "19"), ("U10", "17") ],
"voltage": 1.8,
"Rpin": 0,
}
,
{
"id": "44",
"type": "load",
"power_pins": [ ("U10", "1"), ("U10", "2"), ("U10", "18") ],
"ground_pins": [ ("U10", "21"), ("U10", "3"), ("U10", "4"), ("U10", "19"), ("U10", "17") ],
"current": 0.234699322283207,
"Rpin": 1.59778901937984,
}
,
{
"id": "45",
"type": "source",
"power_pins": [ ("R139", "2") ],
"ground_pins": [ ("IC11", "9") ],
"voltage": 5.5,
"Rpin": 0,
}
,
{
"id": "46",
"type": "load",
"power_pins": [ ("IC11", "pdna_pin_8_1"), ("IC11", "pdna_pin_8_2"), ("IC11", "pdna_pin_8_3"), ("IC11", "pdna_pin_8_4") ],
"ground_pins": [ ("IC11", "9") ],
"current": 0.899418155255292,
"Rpin": 0.177892784424154,
}
,
{
"id": "47",
"type": "source",
"power_pins": [ ("U9", "H2"), ("U9", "H1"), ("U9", "G2"), ("U9", "G1"), ("U9", "F2"), ("U9", "F1"), ("U9", "E5"), ("U9", "E4"), ("U9", "E3"), ("U9", "E2"), ("U9", "E1"), ("U9", "D5"), ("U9", "D4"), ("U9", "D3"), ("U9", "D2"), ("U9", "D1"), ("U9", "C2"), ("U9", "C1") ],
"ground_pins": [ ("U9", "H5"), ("U9", "H4"), ("U9", "H3"), ("U9", "G5"), ("U9", "G4"), ("U9", "G3"), ("U9", "F5"), ("U9", "F4"), ("U9", "F3") ],
"voltage": -5.5,
"Rpin": 0,
}
,
{
"id": "48",
"type": "load",
"power_pins": [ ("U9", "B5"), ("U9", "B4"), ("U9", "A5"), ("U9", "A4") ],
"ground_pins": [ ("U9", "H5"), ("U9", "H4"), ("U9", "H3"), ("U9", "G5"), ("U9", "G4"), ("U9", "G3"), ("U9", "F5"), ("U9", "F4"), ("U9", "F3") ],
"current": 0.133877340850683,
"Rpin": 4.13696709485643,
}
,
{
"id": "49",
"type": "source",
"power_pins": [ ("IC22", "7") ],
"ground_pins": [ ("IC22", "5") ],
"voltage": 13,
"Rpin": 0,
}
,
{
"id": "50",
"type": "load",
"power_pins": [ ("IC22", "1") ],
"ground_pins": [ ("IC22", "3") ],
"current": 0.255313071863969,
"Rpin": 0.391675989286126,
}
,
{
"id": "51",
"type": "source",
"power_pins": [ ("IC22", "4") ],
"ground_pins": [ ("IC22", "5") ],
"voltage": -13,
"Rpin": 0,
}
,
{
"id": "52",
"type": "load",
"power_pins": [ ("IC22", "1") ],
"ground_pins": [ ("IC22", "3") ],
"current": 0.255313071863969,
"Rpin": 0.391675989286126,
}
]


voltage_regulators = [
{
"id": "53",
"type": "linear",

"in": [ ("IC10", "5"), ("IC10", "6"), ("IC10", "7"), ("IC10", "8"), ("IC10", "9"), ("IC10", "10"), ("IC10", "11") ],
"out": [ ("IC9", "9"), ("IC9", "10") ],
"ref": [ ("IC9", "8"), ("IC9", "11") ],

"v2": -0.797639946900001,
"i1": 0,
"Ro": 0,
"Rpin": 0,
}
,
{
"id": "54",
"type": "linear",

"in": [ ("IC10", "5"), ("IC10", "6"), ("IC10", "7"), ("IC10", "8"), ("IC10", "9"), ("IC10", "10"), ("IC10", "11") ],
"out": [ ("IC16", "10"), ("IC16", "9") ],
"ref": [ ("IC16", "11"), ("IC16", "8") ],

"v2": -1.49764299425,
"i1": 0,
"Ro": 0,
"Rpin": 0,
}
,
{
"id": "55",
"type": "linear",

"in": [ ("IC18", "6"), ("IC18", "2"), ("IC18", "1") ],
"out": [ ("IC18", "10"), ("IC18", "9") ],
"ref": [ ("IC18", "11"), ("IC18", "8"), ("IC18", "5") ],

"v2": -2.1927260031,
"i1": 0,
"Ro": 0,
"Rpin": 0,
}
,
{
"id": "56",
"type": "linear",

"in": [ ("IC19", "1"), ("IC19", "2") ],
"out": [ ("IC19", "9"), ("IC19", "10") ],
"ref": [ ("IC19", "8"), ("IC19", "11") ],

"v2": -0.49296513845,
"i1": 0,
"Ro": 0,
"Rpin": 0,
}
,
{
"id": "57",
"type": "linear",

"in": [ ("IC17", "2") ],
"out": [ ("IC17", "5") ],
"ref": [ ("IC17", "1") ],

"v2": 0.4955848487,
"i1": 0,
"Ro": 0,
"Rpin": 0,
}
,
{
"id": "58",
"type": "linear",

"in": [ ("IC8", "2") ],
"out": [ ("IC8", "5") ],
"ref": [ ("IC8", "1") ],

"v2": 2.9956731008,
"i1": 0,
"Ro": 0,
"Rpin": 0,
}
,
{
"id": "59",
"type": "linear",

"in": [ ("IC21", "2"), ("IC21", "1") ],
"out": [ ("IC21", "10"), ("IC21", "9") ],
"ref": [ ("IC21", "11"), ("IC21", "8"), ("IC21", "5") ],

"v2": -0.999042210533334,
"i1": 0,
"Ro": 0,
"Rpin": 0,
}
,
{
"id": "60",
"type": "linear",

"in": [ ("IC23", "2") ],
"out": [ ("IC23", "5") ],
"ref": [ ("IC23", "1") ],

"v2": 0.998903662760001,
"i1": 0,
"Ro": 0,
"Rpin": 0,
}
,
{
"id": "61",
"type": "linear",

"in": [ ("L12", "1") ],
"out": [ ("L12", "2") ],
"ref": [],

"v2": 0,
"i1": 0,
"Ro": 1E-06,
"Rpin": 5E-07,
}
,
{
"id": "62",
"type": "linear",

"in": [ ("L10", "1") ],
"out": [ ("L10", "2") ],
"ref": [],

"v2": 0,
"i1": 0,
"Ro": 1E-06,
"Rpin": 5E-07,
}
,
{
"id": "63",
"type": "linear",

"in": [ ("L11", "1") ],
"out": [ ("L11", "2") ],
"ref": [],

"v2": 0,
"i1": 0,
"Ro": 1E-06,
"Rpin": 5E-07,
}
,
{
"id": "64",
"type": "linear",

"in": [ ("L13", "1") ],
"out": [ ("L13", "2") ],
"ref": [],

"v2": 0,
"i1": 0,
"Ro": 1E-06,
"Rpin": 5E-07,
}
,
{
"id": "65",
"type": "linear",

"in": [ ("L14", "1") ],
"out": [ ("L14", "2") ],
"ref": [],

"v2": 0,
"i1": 0,
"Ro": 1E-06,
"Rpin": 5E-07,
}
]


# Resistors / Inductors

passives = []


# Material Properties:

tech = [

        {'name': 'TOPSOLDER', 'DielectricConstant': 3.5, 'Thickness': 1.016E-05},
        {'name': 'TOP', 'Conductivity': 47000000, 'Thickness': 5.801E-05},
        {'name': 'SUBSTRATE-1', 'DielectricConstant': 4.1, 'Thickness': 0.00018},
        {'name': 'GP1_GND_', 'Conductivity': 47000000, 'Thickness': 3.5E-05},
        {'name': 'SUBSTRATE-2', 'DielectricConstant': 4.5, 'Thickness': 0.00046},
        {'name': 'L3', 'Conductivity': 47000000, 'Thickness': 3.5E-05},
        {'name': 'SUBSTRATE-3', 'DielectricConstant': 4.1, 'Thickness': 0.00018},
        {'name': 'L4', 'Conductivity': 47000000, 'Thickness': 3.5E-05},
        {'name': 'SUBSTRATE-4', 'DielectricConstant': 4.5, 'Thickness': 0.00046},
        {'name': 'P3V3', 'Conductivity': 47000000, 'Thickness': 3.5E-05},
        {'name': 'SUBSTRATE-5', 'DielectricConstant': 4.1, 'Thickness': 0.00018},
        {'name': 'BOT', 'Conductivity': 47000000, 'Thickness': 5.801E-05},
        {'name': 'BOTTOMSOLDER', 'DielectricConstant': 3.5, 'Thickness': 1.016E-05}

       ]

special_settings = {'removecutoutsize' : 7.8 }


plating_thickness = 0.7
finished_hole_diameters = False
