* - description: Bitte geben Sie hier die maximale Thermische Leistung der Brennstoffzelle an.
* - type: Float
* - identifier: Maximale Thermische Leistung
* - unit: [MW]
* - domain: (0,)
* - default: 0.08
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_FC_max(set_tech_SS_FC) Maximale Thermische Leistung des Durchlauferhitzers
$LOAD par_P_SS_FC_max

* - description: Bitte geben Sie hier die minimale Thermische Leistung der Brennstoffzelles an.
* - type: Float
* - identifier: Minimale Thermische Leistung
* - unit: [MW]
* - domain: (0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_FC_min(set_tech_SS_FC) Maximale Thermische Leistung des Durchlauferhitzers
$LOAD par_P_SS_FC_min

* - description: Bitte geben Sie hier den Wirkungsgrad der Brennstoffzelles an.
* - type: Float
* - identifier: Wirkungsgrad Brennstoffzelle
* - unit:
* - domain: (0,1]
* - default: 0.99
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_FC(set_tech_SS_FC) Wirkungsgrad des Boilermodells
$LOAD par_Eta_SS_FC
