* - description: Bitte geben Sie hier die maximalen Turbinenleistung des Pumpspeichers an.
* - type: Float
* - identifier: Maximale Turbinenleistung Pumpspeicher
* - unit: [MW]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_PHS_turbine_max(set_tech_SS_PHS) Maximale Turbinenleistung Pumpspeicher
$LOAD par_P_SS_PHS_turbine_max

* - description: Bitte geben Sie hier die maximalen Pumpleistung des Pumpspeichers an.
* - type: Float
* - identifier: Maximale Pumpleistung Pumpspeicher
* - unit: [MW]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_PHS_pump_max(set_tech_SS_PHS) Maximale Pumpleistung Pumpspeicher
$LOAD par_P_SS_PHS_pump_max

* - description: Bitte geben Sie hier die maximalen Speichervolumen des Pumpspeichers an.
* - type: Float
* - identifier: Kapazität Pumpspeicher
* - unit: [MWh]
* - domain: (0,)
* - default: 10
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOC_SS_PHS_cap(set_tech_SS_PHS) Maximaler Füllstand
$LOAD par_SOC_SS_PHS_cap

* - description: Bitte geben Sie hier den maximalen Füllstand des Pumpspeichers an.
* - type: Float
* - identifier: Maximaler Füllstand Pumpspeicher
* - domain: [0,1]
* - default: 1
* - validation: par_SOC_SS_PHS_max(set_tech_SS_PHS) >= par_SOC_SS_PHS_min(set_tech_SS_PHS)
* - hidden:
* - processing:
PARAMETER par_SOC_SS_PHS_max(set_tech_SS_PHS) Maximaler Füllstand
$LOAD par_SOC_SS_PHS_max

* - description: Bitte geben Sie hier den minimalen Füllstand des Pumpspeichers an.
* - type: Float
* - identifier: Minimaler Füllstand Pumpspeicher
* - domain: [0,1]
* - default: 0.2
* - validation: par_SOC_SS_PHS_min(set_tech_SS_PHS) <= par_SOC_SS_PHS_max(set_tech_SS_PHS)
* - hidden:
* - processing:
PARAMETER par_SOC_SS_PHS_min(set_tech_SS_PHS) Minimaler Füllstand
$LOAD par_SOC_SS_PHS_min

* - description: Bitte geben Sie hier den Pump-Wirkungsgrad des Pumpspeichers an.
* - type: Float
* - identifier: Pump-Wirkungsgrad Pumpspeicher
* - unit:
* - domain: (0,1]
* - default: 0.9
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_PHS_pump(set_tech_SS_PHS) Pump-Wirkungsgrad Pumpspeicher
$LOAD par_Eta_SS_PHS_pump

* - description: Bitte geben Sie hier den Turbinen-Wirkungsgrad des Pumpspeichers an.
* - type: Float
* - identifier: Turbinen-Wirkungsgrad Pumpspeicher
* - unit:
* - domain: (0,1]
* - default: 0.95
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_PHS_turbine(set_tech_SS_PHS) Turbinen-Wirkungsgrad Pumpspeicher
$LOAD par_Eta_SS_PHS_turbine

* - description: Bitte geben Sie hier die technische Verfügbarkeit des Pumpspeichers nach Berücksichtigung von Wartungen etc. als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Verfügbarkeit Pumpspeicher
* - unit:
* - default: 1
* - domain: [0,1]
* - hidden:
* - processing:
PARAMETER par_X_E_SS_PHS_avail(set_ii,set_tech_SS_PHS) Verfügbarkeit Windkraftanlage;
$LOAD par_X_E_SS_PHS_avail

* - description: Wählen Sie "Ja", falls die Modellrestriktion für simultanes Laden und Entladen berücksichtigt werden soll. Dies erhöht die Rechendauer signifikant.
* - type: Boolean
* - identifier: Restriktion simultanes Laden und Entladen
* - unit:
* - domain: [0|1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_E_SS_PHS_sim(set_tech_SS_PHS) Simultanes Laden und Entladen
$LOAD par_X_E_SS_PHS_sim
