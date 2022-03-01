* - description: Bitte geben Sie hier die Stromproduktion des Pumpspeichers (Turbinieren) als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Turbinenstrom Pumpspeicher Fahrplan
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_PHS_turbine_schedule(set_ii,set_tech_SS_PHS) Pumpenstrom Pumpspeicher Fahrplan
$LOAD par_E_SS_PHS_turbine_schedule

* - description: Bitte geben Sie hier den Strombedarf des Pumpspeichers (Pumpen) als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Pumpstrom Pumpspeicher Fahrplan
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_PHS_pump_schedule(set_ii,set_tech_SS_PHS) Elektrisches Lastprofil Pumpspeicher Fahrplan
$LOAD par_E_SS_PHS_pump_schedule

* - description: Bitte geben Sie hier die Vorhaltung von positiver Minutenreserve des Pumpspeichers als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung positive Minutenreserve Fahrplan
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_PHS_respos_schedule(set_ii,set_tech_SS_PHS) Positive Reserveenergie Pumpspeicher Fahrplan
$LOAD par_E_SS_PHS_respos_schedule

* - description: Bitte geben Sie hier die Vorhaltung von negativer Minutenreserve des Pumpspeichers als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Vorhaltung negative Minutenreserve Fahrplan
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_E_SS_PHS_resneg_schedule(set_ii,set_tech_SS_PHS) Negative Reserveenergie Pumpspeicher Fahrplan
$LOAD par_E_SS_PHS_resneg_schedule
