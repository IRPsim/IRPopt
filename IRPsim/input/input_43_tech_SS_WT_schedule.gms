* - description: Bitte geben Sie hier die Stromproduktion der Windkraftanlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Stromproduktion Windkraftanlage
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_WT_schedule(set_ii, set_tech_SS_WT) Stromproduktion Windkraftanlagen
$LOAD par_E_SS_WT_schedule

* - description: Bitte geben Sie hier die Vorhaltung von positiver Minutenreserve der Windkraftanlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung positive Minutenreserve Windkraftanlage
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_WT_respos_schedule(set_ii, set_tech_SS_WT) Vorhaltung positive Minutenreserve aus Windkraftanlage
$LOAD par_E_SS_WT_respos_schedule

* - description: Bitte geben Sie hier die Vorhaltung von negativer Minutenreserve der Windkraftanlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung negative Minutenreserve Windkraftanlage
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_WT_resneg_schedule(set_ii, set_tech_SS_WT)  Vorhaltung negative Minutenreserve aus Windkraftanlage
$LOAD par_E_SS_WT_resneg_schedule
