* - description: Bitte geben Sie hier die maximale Thermische Leistung der Methanisierungsanlage an.
* - type: Float
* - identifier: Maximale Thermische Leistung
* - unit: [MW]
* - domain: (0,)
* - default: 0.08
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_MT_max(set_tech_SS_MT) Maximale Thermische Leistung des Durchlauferhitzers
$LOAD par_P_SS_MT_max

* - description: Bitte geben Sie hier die minimale Thermische Leistung der Methanisierungsanlage an.
* - type: Float
* - identifier: Minimale Thermische Leistung
* - unit: [MW]
* - domain: (0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_MT_min(set_tech_SS_MT) Maximale Thermische Leistung des Durchlauferhitzers
$LOAD par_P_SS_MT_min

* - description: Bitte geben Sie hier den Wirkungsgrad der Methanisierungsanlage an.
* - type: Float
* - identifier: Wirkungsgrad Methanisierungsanlage
* - unit:
* - domain: (0,1]
* - default: 0.99
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_MT(set_tech_SS_MT) Wirkungsgrad des Boilermodells
$LOAD par_Eta_SS_MT
