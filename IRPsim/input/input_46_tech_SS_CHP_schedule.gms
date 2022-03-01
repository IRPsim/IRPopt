* - description: Bitte geben Sie hier die Stromproduktion der Kraft-Wärme-Kopplungsanlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Stromproduktion Kraft-Wärme-Kopplungsanlage
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_CHP_schedule(set_ii, set_tech_SS_CHP) Stromproduktion Kraft-Wärme-Kopplungsanlage
$LOAD par_E_SS_CHP_schedule

* - description: Bitte geben Sie hier die Wärmeproduktion der Kraft-Wärme-Kopplungsanlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Wärmeproduktion Kraft-Wärme-Kopplungsanlage
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_W_SS_CHP_schedule(set_ii, set_tech_SS_CHP) Wärmeproduktion Kraft-Wärme-Kopplungsanlage
$LOAD par_W_SS_CHP_schedule

* - description: Bitte geben Sie hier die Vorhaltung von positiver Minutenreserve der Kraft-Wärme-Kopplungsanlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung positive Minutenreserve Kraft-Wärme-Kopplungsanlage
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_CHP_respos_schedule(set_ii, set_tech_SS_CHP) Vorhaltung positive Minutenreserve aus Kraftwärmekopplung
$LOAD par_E_SS_CHP_respos_schedule

* - description: Bitte geben Sie hier die Vorhaltung negative Minutenreserve der Kraft-Wärme-Kopplungsanlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung negative Minutenreserve Kraft-Wärme-Kopplungsanlage
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_CHP_resneg_schedule(set_ii, set_tech_SS_CHP) Vorhaltung negative Minutenreserve aus Kraftwärmekopplung
$LOAD par_E_SS_CHP_resneg_schedule

* - description: Bitte geben Sie hier den Bedarf an Primärenergie der Kraft-Wärme-Kopplungsanlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Bedarf Primärenergie Kraft-Wärme-Kopplungsanlage
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_SS_CHP_fuel_schedule(set_ii, set_tech_SS_CHP) Bedarf Erdgas für Kraft-Wärme-Kopplungsanlagen
$LOAD par_L_SS_CHP_fuel_schedule

* - description: Bitte geben Sie hier die spezifischen CO2-Emissionen der Kraft-Wärme-Kopplungsanlage an.
* - type: Float
* - identifier: CO2 Emissionen Kraft-Wärme-Kopplungsanlage
* - unit: [tCO2 / MWh]
* - domain:[0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_Emis_SS_CHP_CO2(set_tech_SS_CHP) CO2 Emissionen der Kraftwärmekopplung
$LOAD par_Emis_SS_CHP_CO2
