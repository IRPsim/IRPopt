* - description: Bitte geben Sie hier die maximale Leistung der Windkraftanlage an.
* - type: Float
* - identifier: Maximale Leistung Windkraftanlage
* - unit: [MW]
* - domain: [0,)
* - default: 50
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_WT_max(set_tech_SS_WT) Leistung Windkraftanlage
$LOAD par_P_SS_WT_max

* - description: Bitte geben Sie hier den als konstant angenommenen Leistungswert der Windkraftanlage an.
* - type: Float
* - identifier: Konstant angenommener Leistungswert Windkraftanlage
* - validation:
* - hidden:
* - processing:
PARAMETER par_CP_SS_WT_max(set_tech_SS_WT) Konstant angenommener Leistungswert
$LOAD par_CP_SS_WT_max

* - description: Bitte geben Sie hier den Generator-Wirkungsgrad der Windkraftanlage an.
* - type: Float
* - identifier: Generator-Wirkungsgrad Windkraftanlage
* - unit:
* - domain: (0,1]
* - default: 0.8
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_WT_generator(set_tech_SS_WT) Wirkungsgrad Generator Windkraftanlage
$LOAD  par_Eta_SS_WT_generator

* - description: Bitte geben Sie hier den Triebstrang-Wirkungsgrad der Windkraftanlage an.
* - type: Float
* - identifier: Triebstrang-Wirkungsgrad Windkraftanlage
* - unit:
* - domain: (0,1]
* - default: 0.8
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_WT_drivetrain(set_tech_SS_WT) Wirkungsgrad Triebstrang Windkraftanlage
$LOAD  par_Eta_SS_WT_drivetrain

* - description: Bitte geben Sie hier den Rotordurchmesser der Windkraftanlage an.
* - type: Float
* - identifier: Rotordurchmesser Windkraftanlage
* - unit: [m]
* - domain: [0,)
* - default: 25
* - validation:
* - hidden:
* - processing:
PARAMETER par_R_SS_WT_diameter(set_tech_SS_WT) Rotordurchmesser Windkraftanlage
$LOAD par_R_SS_WT_diameter

* - description: Bitte geben Sie hier die Nabenhöhe der Windkraftanlage an.
* - type: Float
* - identifier: Nabenhöhe Windkraftanlage
* - unit: [m]
* - domain: [0,)
* - default: 50
* - validation:
* - hidden:
* - processing:
PARAMETER par_Hub_SS_WT_height(set_tech_SS_WT) Nabenhöhe Windkraftanlage
$LOAD par_Hub_SS_WT_height

* - description: Bitte geben Sie hier die Luftdichte in Nabenhöhe der Windkraftanlage an.
* - type: Float
* - identifier: Luftdichte Nabenhöhe Windkraftanlage
* - unit: [kg/m3]
* - domain: [0,)
* - default: 50
* - validation:
* - hidden:
* - processing:
PARAMETER par_Rho_SS_WT_height(set_tech_SS_WT) Luftdichte Nabenhöhe Windkraftanlage
$LOAD par_Rho_SS_WT_height

* - description: Bitte geben Sie hier die Mindestwindgeschwindigkeit bei Nennleistung der Windkraftanlage an.
* - type: float
* - identifier: Nennleistungswindgeschwindigkeit Windkraftanlage
* - unit: [m / s]
* - domain: [0,120]
PARAMETER par_V_SS_WT_max(set_tech_SS_WT) Nennleistungswindgeschwindigkeit
$LOAD par_V_SS_WT_max

* - description: Bitte geben Sie hier die Mindestwindgeschwindigkeit zum Anlaufen der Windkraftanlage an.
* - type: float
* - identifier: Anlaufwindgeschwindigkeit Windkraftanlage
* - unit: [m / s]
* - domain: [0,120]
PARAMETER par_V_SS_WT_up(set_tech_SS_WT) Anlaufwindgeschwindigkeit
$LOAD par_V_SS_WT_up

* - description: Bitte geben Sie hier der Abschaltwindgeschwindigkeit der Windkraftanlage an.
* - type: float
* - identifier: Abschaltwindgeschwindigkeit Windkraftanlage
* - unit: [m / s]
* - domain: [0,120]
PARAMETER par_V_SS_WT_down(set_tech_SS_WT) Abschaltwindgeschwindigkeit
$LOAD par_V_SS_WT_down

* - description: Bitte geben Sie hier die technische Verfügbarkeit der Windkraftanlage nach Berücksichtigung von Wartungen etc. als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Verfügbarkeit Windkraftanlage
* - unit:
* - default: 1
* - domain: [0,1]
* - hidden:
* - processing:
PARAMETER par_X_E_SS_WT_avail(set_ii,set_tech_SS_WT) Verfügbarkeit Windkraftanlage;
$LOAD par_X_E_SS_WT_avail
