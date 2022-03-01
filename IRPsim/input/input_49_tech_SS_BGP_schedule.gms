* - description: Bitte geben Sie hier die Stromproduktion des Biomassekraftwerks als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: Stromproduktion Biomassekraftwerk
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_BGP_schedule(set_ii, set_tech_SS_BGP) Stromproduktion Biomassekraftwerk
$LOAD par_E_SS_BGP_schedule

* - description: Bitte geben Sie hier die W�rmeproduktion des Biomassekraftwerks als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: W�rmeproduktion Biomassekraftwerk
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_W_SS_BGP_schedule(set_ii, set_tech_SS_BGP) W�rmeproduktion Biomassekraftwerk
$LOAD par_W_SS_BGP_schedule

* - description: Bitte geben Sie hier die Vorhaltung positiver Minutenreserve des Biomassekraftwerks als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung positive Minutenreserve aus Biomassekraftwerk
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_BGP_respos_schedule(set_ii, set_tech_SS_BGP) Vorhaltung positive Minutenreserve aus Biomassekraftwerk
$LOAD par_E_SS_BGP_respos_schedule

* - description: Bitte geben Sie hier die Vorhaltung negativer Minutenreserve des Biomassekraftwerks als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung negative Minutenreserve aus Biomassekraftwerk
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_BGP_resneg_schedule(set_ii, set_tech_SS_BGP) Vorhaltung negative Minutenreserve aus Biomassekraftwerk
$LOAD par_E_SS_BGP_resneg_schedule

* - description: Bitte geben Sie hier den Erdgasbedarf des Biomassekraftwerks als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: Bedarf Erdgas f�r Kraft-W�rme-Kopplungsanlagen
* - unit: [kW]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_SS_BGP_fuel_schedule(set_ii, set_tech_SS_BGP) Bedarf Erdgas f�r Kraft-W�rme-Kopplungsanlagen
$LOAD par_L_SS_BGP_fuel_schedule
