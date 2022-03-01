* - description: Bitte geben Sie hier die Stromproduktion des Kondensationskraftwerks als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Stromproduktion Kondensationskraftwerk
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_TPS_schedule(set_ii, set_tech_SS_TPS) Stromproduktion Kondensationskraftwerk
$LOAD par_E_SS_TPS_schedule

* - description: Bitte geben Sie hier die Vorhaltung von positiver Minutenreserve des Kondensationskraftwerks als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung positive Minutenreserve aus Kondensationskraftwerk
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_TPS_respos_schedule(set_ii, set_tech_SS_TPS) Vorhaltung positive Minutenreserve aus Kondensationskraftwerk
$LOAD par_E_SS_TPS_respos_schedule

* - description: Bitte geben Sie hier die Vorhaltung von negativer Minutenreserve des Kondensationskraftwerks als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung negative Minutenreserve aus Kondensationskraftwerk
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_TPS_resneg_schedule(set_ii, set_tech_SS_TPS) Vorhaltung negative Minutenreserve aus Kondensationskraftwerk
$LOAD par_E_SS_TPS_resneg_schedule

* - description: Bitte geben Sie hier den Bedarf an Primärenergie des Kondensationskraftwerks als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Bedarf Primärenergie für Kondensationskraftwerk
* - unit: [kW]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_SS_TPS_fuel_schedule(set_ii, set_tech_SS_TPS) Bedarf Erdgas für Kraft-Wärme-Kopplungsanlagen
$LOAD par_L_SS_TPS_fuel_schedule

