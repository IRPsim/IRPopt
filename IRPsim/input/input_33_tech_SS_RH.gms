* - description: Bitte geben Sie hier die maximale Leistung des Laufwasserkraftwerks an.
* - type: Float
* - identifier: Maximale Leistung Laufwasserkraftwerke
* - unit: [MW]
* - domain: [0,)
* - default: 0.2
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_RH_max(set_tech_SS_RH) Leistung PV-Anlage
$LOAD par_P_SS_RH_max

* - description: Bitte geben Sie hier die Wasser-Fallhöhe des Laufwasserkraftwerks an.
* - type: Float
* - identifier: Wasser-Fallhöhe Laufwasserkraftwerk
* - unit: [m]
* - domain: [0,)
* - default: 2
* - validation:
* - hidden:
* - processing:
PARAMETER par_WFH_SS_RH(set_tech_SS_RH) Wasser-Fallhöhe Laufwasserkraftwerk
$LOAD par_WFH_SS_RH

* - description: Bitte geben Sie hier den Wassermassenstrom des Laufwasserkraftwerk an.
* - type: Float
* - identifier: Wassermassenstrom Laufwasserkraftwerk
* - unit: [kg/s]
* - domain: [0,)
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_WMF_SS_RH(set_tech_SS_RH) Wasser-Fallhöhe Laufwasserkraftwerk
$LOAD par_WMF_SS_RH

* - description: Bitte geben Sie hier den Turbinenwirkungsgrad des Laufwasserkraftwerks an.
* - type: Float
* - identifier: Turbine-Wirkungsgrad Laufwasserkraftwerk
* - unit:
* - domain: (0,1]
* - default: 0.99
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_RH(set_tech_SS_RH) Turbine-Wirkungsgrad Laufwasserkraftwerk
$LOAD  par_Eta_SS_RH

* - description: Bitte geben Sie hier die technische Verfügbarkeit des Laufwasserkraftwerks nach Berücksichtigung von Wartungen etc. als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Verfügbarkeit Laufwasserkraftwerk
* - unit:
* - default: 1
* - domain: [0,1]
* - hidden:
* - processing:
PARAMETER par_X_E_SS_RH_avail(set_ii,set_tech_SS_RH) Verfügbarkeit Laufwasserkraftwerk;
$LOAD par_X_E_SS_RH_avail
