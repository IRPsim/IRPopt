* - description: Bitte geben Sie hier die Stromproduktion der Kehrrichtverwertungsanlage als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: Stromproduktion M�llverwertung
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_RC_schedule(set_ii, set_tech_SS_RC) Stromproduktion M�llverwertung
$LOAD par_E_SS_RC_schedule

* - description: Bitte geben Sie hier die W�rmeproduktion der Kehrrichtverwertungsanlage als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: W�rmeproduktion M�llverwertung
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_W_SS_RC_schedule(set_ii, set_tech_SS_RC) W�rmeproduktion M�llverwertung
$LOAD par_W_SS_RC_schedule

* - description: Bitte geben Sie hier die Vorhaltung von positiver Minutenreserve der Kehrrichtverwertungsanlage als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung positive Minutenreserve aus M�llverwertung
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_RC_respos_schedule(set_ii, set_tech_SS_RC) Vorhaltung positive Minutenreserve aus M�llverwertung
$LOAD par_E_SS_RC_respos_schedule

* - description: Bitte geben Sie hier die Vorhaltung von negativer Minutenreserve aus Kehrrichtverwertungsanlage als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung negative Minutenreserve aus M�llverwertung
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_RC_resneg_schedule(set_ii, set_tech_SS_RC)  Vorhaltung negative Minutenreserve aus M�llverwertung
$LOAD par_E_SS_RC_resneg_schedule

* - description: Bitte geben Sie hier den Bedarf an Prim�renergie f�r die Kehrrichtverwertungsanlage als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: Bedarf Prim�renergie f�r M�llverwertung
* - unit: [kW]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_SS_RC_fuel_schedule(set_ii, set_tech_SS_RC) Bedarf Erdgas f�r M�llverwertung
$LOAD par_L_SS_RC_fuel_schedule

* - description: Bitte geben Sie hier die Menge an Entsorgungsabf�llen pro Energieeinheit der Kehrrichtverbrennungsanlage an.
* - type: Float
* - identifier: Menge an Entsorgungsabf�llen pro Energieeinheit
* - unit: [t / MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_Disposal_SS_RC(set_tech_SS_RC) Menge an Entsorgungsabf�llen pro Energieeinheit
$LOAD par_Disposal_SS_RC

