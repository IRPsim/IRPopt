* - description: Bitte geben Sie hier die Stromproduktion der Kraft-W�rme-Kopplungsanlage als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: Stromproduktion Kraft-W�rme-Kopplungsanlage
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_CHP_schedule(set_ii, set_tech_SS_CHP) Stromproduktion Kraft-W�rme-Kopplungsanlage
$LOAD par_E_SS_CHP_schedule

* - description: Bitte geben Sie hier die W�rmeproduktion der Kraft-W�rme-Kopplungsanlage als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: W�rmeproduktion Kraft-W�rme-Kopplungsanlage
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_W_SS_CHP_schedule(set_ii, set_tech_SS_CHP) W�rmeproduktion Kraft-W�rme-Kopplungsanlage
$LOAD par_W_SS_CHP_schedule

* - description: Bitte geben Sie hier die Vorhaltung von positiver Minutenreserve der Kraft-W�rme-Kopplungsanlage als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung positive Minutenreserve Kraft-W�rme-Kopplungsanlage
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_CHP_respos_schedule(set_ii, set_tech_SS_CHP) Vorhaltung positive Minutenreserve aus Kraftw�rmekopplung
$LOAD par_E_SS_CHP_respos_schedule

* - description: Bitte geben Sie hier die Vorhaltung negative Minutenreserve der Kraft-W�rme-Kopplungsanlage als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung negative Minutenreserve Kraft-W�rme-Kopplungsanlage
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_CHP_resneg_schedule(set_ii, set_tech_SS_CHP) Vorhaltung negative Minutenreserve aus Kraftw�rmekopplung
$LOAD par_E_SS_CHP_resneg_schedule

* - description: Bitte geben Sie hier den Bedarf an Prim�renergie der Kraft-W�rme-Kopplungsanlage als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: Bedarf Prim�renergie Kraft-W�rme-Kopplungsanlage
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_SS_CHP_fuel_schedule(set_ii, set_tech_SS_CHP) Bedarf Erdgas f�r Kraft-W�rme-Kopplungsanlagen
$LOAD par_L_SS_CHP_fuel_schedule

* - description: Bitte geben Sie hier die spezifischen CO2-Emissionen der Kraft-W�rme-Kopplungsanlage an.
* - type: Float
* - identifier: CO2 Emissionen Kraft-W�rme-Kopplungsanlage
* - unit: [tCO2 / MWh]
* - domain:[0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_Emis_SS_CHP_CO2(set_tech_SS_CHP) CO2 Emissionen der Kraftw�rmekopplung
$LOAD par_Emis_SS_CHP_CO2
