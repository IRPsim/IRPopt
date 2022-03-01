* - description: Bitte geben Sie hier die Wärmeproduktion des Elektrodenboilers als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Wärmeproduktion Elektrodenboiler
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_W_SS_ETB_schedule(set_ii, set_tech_SS_ETB) Stromproduktion Elektrodenboiler
$LOAD par_W_SS_ETB_schedule

* - description: Bitte geben Sie hier den Strombezug des Elektrodenboiler als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Strombezug Elektrodenboiler
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_SS_ETB_E_schedule(set_ii, set_tech_SS_ETB) Stromproduktion Elektrodenboiler
$LOAD par_L_SS_ETB_E_schedule

* - description: Bitte geben Sie hier die Vorhaltung von positiver Minutenreserve des Elektrodenboiler als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung positive Minutenreserve aus Elektrodenboiler
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_ETB_respos_schedule(set_ii, set_tech_SS_ETB) Vorhaltung positive Minutenreserve aus Biomassekraftwerk
$LOAD par_E_SS_ETB_respos_schedule

* - description: Bitte geben Sie hier die Vorhaltung von negativer Minutenreserve des Elektrodenboiler als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung negative Minutenreserve aus Elektrodenboiler
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_ETB_resneg_schedule(set_ii, set_tech_SS_ETB) Vorhaltung negative Minutenreserve aus Biomassekraftwerk
$LOAD par_E_SS_ETB_resneg_schedule
