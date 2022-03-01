* - description: Bitte geben Sie hier die Stromproduktion des Kondensationskraftwerks als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: Stromproduktion Kondensationskraftwerk
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_TPS_schedule(set_ii, set_tech_SS_TPS) Stromproduktion Kondensationskraftwerk
$LOAD par_E_SS_TPS_schedule

* - description: Bitte geben Sie hier die Vorhaltung von positiver Minutenreserve des Kondensationskraftwerks als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung positive Minutenreserve aus Kondensationskraftwerk
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_TPS_respos_schedule(set_ii, set_tech_SS_TPS) Vorhaltung positive Minutenreserve aus Kondensationskraftwerk
$LOAD par_E_SS_TPS_respos_schedule

* - description: Bitte geben Sie hier die Vorhaltung von negativer Minutenreserve des Kondensationskraftwerks als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung negative Minutenreserve aus Kondensationskraftwerk
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_TPS_resneg_schedule(set_ii, set_tech_SS_TPS) Vorhaltung negative Minutenreserve aus Kondensationskraftwerk
$LOAD par_E_SS_TPS_resneg_schedule

* - description: Bitte geben Sie hier den Bedarf an Prim�renergie des Kondensationskraftwerks als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: Bedarf Prim�renergie f�r Kondensationskraftwerk
* - unit: [kW]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_SS_TPS_fuel_schedule(set_ii, set_tech_SS_TPS) Bedarf Erdgas f�r Kraft-W�rme-Kopplungsanlagen
$LOAD par_L_SS_TPS_fuel_schedule

