* - description: Bitte geben Sie hier die maximale Leistung der PV-Anlage an.
* - type: Float
* - identifier: Maximale Leistung PV-Anlage
* - unit: [MW]
* - domain: [0,)
* - default: 0.2
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_PV_max(set_tech_SS_PV) Leistung PV-Anlage
$LOAD par_P_SS_PV_max

* - description: Bitte geben Sie hier die gesamte Modulfläche der PV-Anlage an.
* - type: Float
* - identifier: Modulfläche PV-Anlage
* - unit: [m2]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_A_SS_PV(set_tech_SS_PV) Modulfläche PV-Anlage
$LOAD par_A_SS_PV

* - description: Bitte geben Sie hier den Modulwirkungsgrad der PV-Anlage an.
* - type: Float
* - identifier: Modul-Wirkungsgrad PV-Anlage
* - unit:
* - domain: (0,1]
* - default: 0.17
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_PV_module(set_tech_SS_PV) Modul-Wirkungsgrad PV-Anlage
$LOAD  par_Eta_SS_PV_module

* - description: Bitte geben Sie hier den optischen Wirkungsgrad der PV-Anlage an.
* - type: Float
* - identifier: Optischer-Wirkungsgrad PV-Anlage
* - unit:
* - domain: (0,1]
* - default: 0.85
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_PV_optic(set_tech_SS_PV) Optischer-Wirkungsgrad PV-Anlage
$LOAD  par_Eta_SS_PV_optic

* - description: Bitte geben Sie hier den Emissionsfaktor der PV-Anlage an.
* - type: Float
* - identifier: Emissionsfaktor PV-Anlage
* - unit:
* - domain: (0,1]
* - default: 0.7
* - validation:
* - hidden:
* - processing:
PARAMETER par_Emiss_SS_PV(set_tech_SS_PV) Emissionsfaktor PV-Anlage
$LOAD par_Emiss_SS_PV

* - description: Bitte geben Sie hier den Temperaturkoeffizient der PV-Anlage an.
* - type: Float
* - identifier: Temperaturkoeffizient PV-Anlage
* - unit: [1/°C]
* - default: -0.0037
* - validation:
* - hidden:
* - processing:
PARAMETER par_TC_SS_PV(set_tech_SS_PV) Temperaturkoeffizient PV-Anlage
$LOAD  par_TC_SS_PV

* - description: Bitte geben Sie hier den Eurowirkungsgrad des Wechselrichters (mit MPP-Tracker) an.
* - type: Float
* - identifier: Eurowirkungsgrad des Wechselrichters (mit MPP-Tracker) PV-Anlage
* - domain: (0,1]
* - unit:
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_PV_euro(set_tech_SS_PV) Eurowirkungsgrad des Wechselrichters
$LOAD  par_Eta_SS_PV_euro

* - description: Bitte geben Sie hier den allgemeinen Verlustfaktor an.
* - type: Float
* - identifier: Allgemeiner Verlustfaktor PV-Anlage
* - domain: (0,1]
* - unit:
* - default: 0.9
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_PV_general(set_tech_SS_PV) Allgemeiner Verlustfaktor
$LOAD  par_Eta_SS_PV_general

* - description: Bitte geben Sie hier den Jahresdurchschnitt der Modultemperatur an.
* - type: Float
* - identifier: Jahresdurchschnitt der Modultemperatur PV-Anlage
* - domain: [-50,50]
* - unit: [°C]
* - default: 20
* - validation:
* - hidden:
* - processing:
PARAMETER par_T_SS_PV_module_avg(set_tech_SS_PV)
$LOAD  par_T_SS_PV_module_avg

* - description: Bitte geben Sie hier die technische Verfügbarkeit der PV-Anlage nach Berücksichtigung von Wartungen etc. als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Verfügbarkeit PV-Anlage
* - unit:
* - default: 1
* - domain: [0,1]
* - hidden:
* - processing:
PARAMETER par_X_E_SS_PV_avail(set_ii,set_tech_SS_PV) Verfügbarkeit Windkraftanlage;
$LOAD par_X_E_SS_PV_avail
