* - description: Bitte geben Sie hier die Stromproduktion der Kehrrichtverwertungsanlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Stromproduktion Müllverwertung
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_RC_schedule(set_ii, set_tech_SS_RC) Stromproduktion Müllverwertung
$LOAD par_E_SS_RC_schedule

* - description: Bitte geben Sie hier die Wärmeproduktion der Kehrrichtverwertungsanlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Wärmeproduktion Müllverwertung
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_W_SS_RC_schedule(set_ii, set_tech_SS_RC) Wärmeproduktion Müllverwertung
$LOAD par_W_SS_RC_schedule

* - description: Bitte geben Sie hier die Vorhaltung von positiver Minutenreserve der Kehrrichtverwertungsanlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung positive Minutenreserve aus Müllverwertung
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_RC_respos_schedule(set_ii, set_tech_SS_RC) Vorhaltung positive Minutenreserve aus Müllverwertung
$LOAD par_E_SS_RC_respos_schedule

* - description: Bitte geben Sie hier die Vorhaltung von negativer Minutenreserve aus Kehrrichtverwertungsanlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung negative Minutenreserve aus Müllverwertung
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_RC_resneg_schedule(set_ii, set_tech_SS_RC)  Vorhaltung negative Minutenreserve aus Müllverwertung
$LOAD par_E_SS_RC_resneg_schedule

* - description: Bitte geben Sie hier den Bedarf an Primärenergie für die Kehrrichtverwertungsanlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Bedarf Primärenergie für Müllverwertung
* - unit: [kW]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_SS_RC_fuel_schedule(set_ii, set_tech_SS_RC) Bedarf Erdgas für Müllverwertung
$LOAD par_L_SS_RC_fuel_schedule

* - description: Bitte geben Sie hier die Menge an Entsorgungsabfällen pro Energieeinheit der Kehrrichtverbrennungsanlage an.
* - type: Float
* - identifier: Menge an Entsorgungsabfällen pro Energieeinheit
* - unit: [t / MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_Disposal_SS_RC(set_tech_SS_RC) Menge an Entsorgungsabfällen pro Energieeinheit
$LOAD par_Disposal_SS_RC

