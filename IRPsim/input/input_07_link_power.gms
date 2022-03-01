***-----------------------------------------------------------------------------
*** #IRPsim 2015#
*** ##input_link_power - Leistungsmessung##
***-----------------------------------------------------------------------------

$Label(BlockStart)->***Leistungsmessung***

* - description: Bitte wählen Sie hier aus, ob eine Leistungsmessung im Modell berücksichtigt werden soll
* - type: Boolean
* - identifier: Berücksichtigung Leistungsmessung
* - unit:
* - domain: [0|1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_power_model(set_power) Berücksichtigung Leistungsmessung
$LOAD par_X_power_model

* - description: Bitte wählen Sie hier aus, ob eine Leistungsbegrenzung im Modell berücksichtigt werden soll
* - type: Boolean
* - identifier: Berücksichtigung Leistungsbegrenzung
* - unit:
* - domain: [0|1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_power_max(set_power) Berücksichtigung Leistungsmessung
$LOAD par_X_power_max

* - description: Bitte legen Sie hier die Leistungsbegrenzung der Leistungsmessung der elektrischen Last fest
* - type: Float
* - identifier: Elektrische Leistungsbegrenzung
* - domain: [0,)
* - unit: [MW]
* - default: 1
PARAMETER par_P_powerLinkE_max(set_power_E) Gleichzeitigkeitsfaktor
$LOAD par_P_powerLinkE_max

* - description: Bitte legen Sie hier den Gleichzeitigkeitsfaktor der Leistungsmessung der elektrischen Last fest
* - type: Float
* - identifier: Elektrische Leistungsmessung Gleichzeitigkeitsfaktor
* - domain: (0,1]
* - unit:
* - default: 1
PARAMETER par_DF_powerLinkE(set_power_E) Gleichzeitigkeitsfaktor
$LOAD par_DF_powerLinkE

* - description: Bitte legen Sie hier den Gleichzeitigkeitsfaktor der Leistungsmessung der thermischen Last fest
* - type: Float
* - identifier: Thermische Leistungsmessung Gleichzeitigkeitsfaktor
* - domain: (0,1]
* - unit:
* - default: 1
PARAMETER par_DF_powerLinkW(set_power_W) Gleichzeitigkeitsfaktor
$LOAD par_DF_powerLinkW

* - description: Bitte legen Sie hier den Gleichzeitigkeitsfaktor der Leistungsmessung der Gaslast fest
* - type: Float
* - identifier: Gas-Leistungsmessung Gleichzeitigkeitsfaktor
* - domain: (0,1]
* - unit:
* - default: 1
PARAMETER par_DF_powerLinkG(set_power_G) Gleichzeitigkeitsfaktor
$LOAD par_DF_powerLinkG

* - description: Bitte legen Sie hier den Gleichzeitigkeitsfaktor der Leistungsmessung der Wasserstofflast fest
* - type: Float
* - identifier: Wasserstoff-Leistungsmessung Gleichzeitigkeitsfaktor
* - domain: (0,1]
* - unit:
* - default: 1
PARAMETER par_DF_powerLinkH(set_power_H) Gleichzeitigkeitsfaktor
$LOAD par_DF_powerLinkH


* - description: Bitte geben Sie hier eine Leistungsuntergrenze der Leistungsmessung der elektrischen Last an
* - type: Float
* - identifier: Elektrische Leistungsmessung Leistungsuntergrenze
* - domain:
* - unit: [MW]
* - default: 0
PARAMETER par_P_powerLinkE_lowerbound(set_power_E) Leistungsmessung Untere Grenze
$LOAD par_P_powerLinkE_lowerbound

* - description: Bitte geben Sie hier eine Leistungsuntergrenze der Leistungsmessung der thermischen Last an
* - type: Float
* - identifier: Thermische Leistungsmessung Leistungsuntergrenze
* - domain:
* - unit: [MW]
* - default: 0
PARAMETER par_Q_powerLinkW_lowerbound(set_power_W) Leistungsmessung Untere Grenze
$LOAD par_Q_powerLinkW_lowerbound

* - description: Bitte geben Sie hier eine Leistungsuntergrenze der Leistungsmessung der Wasserstofflast an
* - type: Float
* - identifier: Wasserstoff Leistungsmessung Leistungsuntergrenze
* - domain:
* - unit: [MW]
* - default: 0
PARAMETER par_H_powerLinkH_lowerbound(set_power_H) Leistungsmessung Untere Grenze
$LOAD par_H_powerLinkH_lowerbound

* - description: Bitte geben Sie hier eine Leistungsuntergrenze der Leistungsmessung der Gaslast an
* - type: Float
* - identifier: Gas Leistungsmessung Leistungsuntergrenze
* - domain:
* - unit: [MW]
* - default: 0
PARAMETER par_G_powerLinkG_lowerbound(set_power_G) Leistungsmessung Untere Grenze
$LOAD par_G_powerLinkG_lowerbound

* - description: Bitte entscheiden Sie, ob es bei der elektrischen Leistungsmessung eine absolute Leistungsuntergrenze geben soll
* - type: Boolean
* - identifier: Elektrische Leistungsmessung absolute Leistungsuntergrenze
* - rule: IF (par_X_powerLinkE_lowerbound_absolute(set_power_E) == 1, par_X_powerLinkE_lowerbound_forecast(set_power_E) = 0)
* - rule: IF (par_X_powerLinkE_lowerbound_forecast(set_power_E) == 0, par_X_powerLinkE_lowerbound_absolute(set_power_E) = 1)
* - domain: [0|1]
PARAMETER par_X_powerLinkE_lowerbound_absolute(set_power_E) Leistungsmessung Untere Grenze
$LOAD par_X_powerLinkE_lowerbound_absolute

* - description: Bitte entscheiden Sie, ob es bei der thermischen Leistungsmessung eine absolute Leistungsuntergrenze geben soll
* - type: Boolean
* - identifier: Thermische Leistungsmessung absolute Leistungsuntergrenze
* - rule: IF (par_X_powerLinkW_lowerbound_absolute(set_power_W) == 1, par_X_powerLinkW_lowerbound_forecast(set_power_W) = 0)
* - rule: IF (par_X_powerLinkW_lowerbound_forecast(set_power_W) == 0, par_X_powerLinkW_lowerbound_absolute(set_power_W) = 1)
* - domain: [0|1]
PARAMETER par_X_powerLinkW_lowerbound_absolute(set_power_W) Leistungsmessung Untere Grenze
$LOAD par_X_powerLinkW_lowerbound_absolute

* - description: Bitte entscheiden Sie, ob es bei der Gas-Leistungsmessung eine absolute Leistungsuntergrenze geben soll
* - type: Boolean
* - identifier: Gas Leistungsmessung absolute Leistungsuntergrenze
* - rule: IF (par_X_powerLinkG_lowerbound_absolute(set_power_G) == 1, par_X_powerLinkG_lowerbound_forecast(set_power_G) = 0)
* - rule: IF (par_X_powerLinkG_lowerbound_forecast(set_power_G) == 0, par_X_powerLinkG_lowerbound_absolute(set_power_G) = 1)
* - domain: [0|1]
PARAMETER par_X_powerLinkG_lowerbound_absolute(set_power_G) Leistungsmessung Untere Grenze
$LOAD par_X_powerLinkG_lowerbound_absolute

* - description: Bitte entscheiden Sie, ob es bei der Wasserstoff-Leistungsmessung eine absolute Leistungsuntergrenze geben soll
* - type: Boolean
* - identifier: Wasserstoff Leistungsmessung absolute Leistungsuntergrenze
* - rule: IF (par_X_powerLinkH_lowerbound_absolute(set_power_H) == 1, par_X_powerLinkH_lowerbound_forecast(set_power_H) = 0)
* - rule: IF (par_X_powerLinkH_lowerbound_forecast(set_power_H) == 0, par_X_powerLinkH_lowerbound_absolute(set_power_H) = 1)
* - domain: [0|1]
PARAMETER par_X_powerLinkH_lowerbound_absolute(set_power_H) Leistungsmessung Untere Grenze
$LOAD par_X_powerLinkH_lowerbound_absolute

* - description: Bitte entscheiden Sie, ob es bei der elektrischen Leistungsmessung eine prognostizierte Leistungsuntergrenze geben soll
* - type: Boolean
* - identifier: Elektrische Leistungsmessung prognostizierte Leistungsuntergrenze
* - rule: IF (par_X_powerLinkE_lowerbound_absolute(set_power_E) == 1, par_X_powerLinkE_lowerbound_forecast(set_power_E) = 0)
* - rule: IF (par_X_powerLinkE_lowerbound_forecast(set_power_E) == 0, par_X_powerLinkE_lowerbound_absolute(set_power_E) = 1)
* - domain: [0|1]
PARAMETER par_X_powerLinkE_lowerbound_forecast(set_power_E) Leistungsmessung Untere Grenze
$LOAD par_X_powerLinkE_lowerbound_forecast

* - description: Bitte entscheiden Sie, ob es bei der thermischen Leistungsmessung eine prognostizierte Leistungsuntergrenze geben soll
* - type: Boolean
* - identifier: Thermische Leistungsmessung prognostizierte Leistungsuntergrenze
* - rule: IF (par_X_powerLinkW_lowerbound_absolute(set_power_W) == 1, par_X_powerLinkW_lowerbound_forecast(set_power_W) = 0)
* - rule: IF (par_X_powerLinkW_lowerbound_forecast(set_power_W) == 0, par_X_powerLinkW_lowerbound_absolute(set_power_W) = 1)
* - domain: [0|1]
PARAMETER par_X_powerLinkW_lowerbound_forecast(set_power_W) Leistungsmessung Untere Grenze
$LOAD par_X_powerLinkW_lowerbound_forecast

* - description: Bitte entscheiden Sie, ob es bei der Gas-Leistungsmessung eine prognostizierte Leistungsuntergrenze geben soll
* - type: Boolean
* - identifier: Gas Leistungsmessung prognostizierte Leistungsuntergrenze
* - rule: IF (par_X_powerLinkG_lowerbound_absolute(set_power_G) == 1, par_X_powerLinkG_lowerbound_forecast(set_power_G) = 0)
* - rule: IF (par_X_powerLinkG_lowerbound_forecast(set_power_G) == 0, par_X_powerLinkG_lowerbound_absolute(set_power_G) = 1)
* - domain: [0|1]
PARAMETER par_X_powerLinkG_lowerbound_forecast(set_power_G) Leistungsmessung Untere Grenze
$LOAD par_X_powerLinkG_lowerbound_forecast

* - description: Bitte entscheiden Sie, ob es bei der Wasserstoff-Leistungsmessung eine prognostizierte Leistungsuntergrenze geben soll
* - type: Boolean
* - identifier: Wasserstoff Leistungsmessung prognostizierte Leistungsuntergrenze
* - rule: IF (par_X_powerLinkH_lowerbound_absolute(set_power_H) == 1, par_X_powerLinkH_lowerbound_forecast(set_power_H) = 0)
* - rule: IF (par_X_powerLinkH_lowerbound_forecast(set_power_H) == 0, par_X_powerLinkH_lowerbound_absolute(set_power_H) = 1)
* - domain: [0|1]
PARAMETER par_X_powerLinkH_lowerbound_forecast(set_power_H) Leistungsmessung Untere Grenze
$LOAD par_X_powerLinkH_lowerbound_forecast



* - description: Bitte geben Sie an, ob an den Stromspeichern eine Messung der elektrische Leistung stattfinden soll
* - type: Boolean
* - identifier: Elektrische Leistungsmessung Stromspeicher
* - domain: [0|1]
PARAMETER par_X_E_DES_ES_powerLinkE(set_tech_DES_ES,set_power_E) Leistungsmessung
$LOAD par_X_E_DES_ES_powerLinkE

* - description: Bitte geben Sie an, ob an den Durchlauferhitzern eine Messung der elektrische Leistung stattfinden soll
* - type: Boolean
* - identifier: Elektrische Leistungsmessung Durchlauferhitzer
* - domain: [0|1]
PARAMETER par_X_W_DES_EB_powerLinkE(set_tech_DES_EB,set_power_E) Leistungsmessung
$LOAD par_X_W_DES_EB_powerLinkE

* - description: Bitte geben Sie an, ob an den Wärmepumpen eine Messung der elektrische Leistung stattfinden soll
* - type: Boolean
* - identifier: Elektrische Leistungsmessung Wärmepumpen
* - domain: [0|1]
PARAMETER par_X_W_DES_HP_powerLinkE(set_tech_DES_HP,set_power_E) Leistungsmessung
$LOAD par_X_W_DES_HP_powerLinkE

* - description: Bitte geben Sie an, ob an den PV-Anlagen eine Messung der elektrische Leistung stattfinden soll
* - type: Boolean
* - identifier: Elektrische Leistungsmessung PV-Anlagen
* - domain: [0|1]
PARAMETER par_X_E_DES_PV_powerLinkE(set_tech_DES_PV,set_power_E) Leistungsmessung
$LOAD par_X_E_DES_PV_powerLinkE

* - description: Bitte geben Sie an, ob an den Kraft-Wärme-Kopplungsanlagen eine Messung der elektrische Leistung stattfinden soll
* - type: Boolean
* - identifier: Elektrische Leistungsmessung Kraft-Wärme-Kopplungsanlage
* - domain: [0|1]
PARAMETER par_X_DES_CHP_powerLinkE(set_tech_DES_CHP,set_power_E) Leistungsmessung
$LOAD par_X_DES_CHP_powerLinkE

* - description: Bitte geben Sie an, ob an den Kompressionskältemaschinen eine Messung der thermischen Leistung stattfinden soll
* - type: Boolean
* - identifier: Elektrische Leistungsmessung Kompressionskältemaschine
* - domain: [0|1]
PARAMETER par_X_C_DES_CR_powerLinkE(set_tech_DES_CR,set_power_E) Leistungsmessung
$LOAD par_X_C_DES_CR_powerLinkE

* - description: Bitte geben Sie an, ob an den Druchlauferhitzern eine Messung der thermischen Leistung stattfinden soll
* - type: Boolean
* - identifier: Thermische Leistungsmessung Durchlauferhitzer
* - domain: [0|1]
PARAMETER par_X_W_DES_EB_powerLinkW(set_tech_DES_EB,set_power_W) Leistungsmessung
$LOAD par_X_W_DES_EB_powerLinkW

* - description: Bitte geben Sie an, ob an den Solarthermie-Anlagen eine Messung der thermischen Leistung stattfinden soll
* - type: Boolean
* - identifier: Thermische Leistungsmessung Solarthermie-Anlage
* - domain: [0|1]
PARAMETER par_X_W_DES_ST_powerLinkW(set_tech_DES_ST,set_power_W) Leistungsmessung
$LOAD par_X_W_DES_ST_powerLinkW

* - description: Bitte geben Sie an, ob an den Kraft-Wärme-Kopplungsanlagen eine Messung der thermischen Leistung stattfinden soll
* - type: Boolean
* - identifier: Thermische Leistungsmessung Kraft-Wärme-Kopplungsanlage
* - domain: [0|1]
PARAMETER par_X_DES_CHP_powerLinkW(set_tech_DES_CHP,set_power_W) Leistungsmessung
$LOAD par_X_DES_CHP_powerLinkW

* - description: Bitte geben Sie an, ob an den Wärmepumpen eine Messung der thermischen Leistung stattfinden soll
* - type: Boolean
* - identifier: Thermische Leistungsmessung Wärmepumpe
* - domain: [0|1]
PARAMETER par_X_W_DES_HP_powerLinkW(set_tech_DES_HP,set_power_W) Leistungsmessung
$LOAD par_X_W_DES_HP_powerLinkW

* - description: Bitte geben Sie an, ob an den Gaskesseln eine Messung der thermischen Leistung stattfinden soll
* - type: Boolean
* - identifier: Thermische Leistungsmessung Gaskessel
* - domain: [0|1]
PARAMETER par_X_W_DES_NGB_powerLinkW(set_tech_DES_NGB,set_power_W) Leistungsmessung
$LOAD par_X_W_DES_NGB_powerLinkW

* - description: Einlesen Thermische Leistungsmessung Absorptionskältemaschine
* - type: Boolean
* - identifier: Thermische Leistungsmessung Absorptionskältemaschine
* - domain: [0|1]
PARAMETER par_X_C_DES_SC_powerLinkW(set_tech_DES_SC,set_power_W) Leistungsmessung
$LOAD par_X_C_DES_SC_powerLinkW

* - description: Bitte geben Sie an, ob an den Wärmespeichern eine Messung der thermischen Leistung stattfinden soll
* - type: Boolean
* - identifier: Thermische Leistungsmessung Wärmespeicher
* - domain: [0|1]
PARAMETER par_X_W_DES_TS_powerLinkW(set_tech_DES_TS,set_power_W) Leistungsmessung
$LOAD par_X_W_DES_TS_powerLinkW

* - description: Bitte geben Sie an, ob an den Gaskesseln eine Messung der Gas-Leistung stattfinden soll
* - type: Boolean
* - identifier: Gas-Leistungsmessung Gaskessel
* - domain: [0|1]
PARAMETER par_X_W_DES_NGB_powerLinkG(set_tech_DES_NGB,set_power_G) Leistungsmessung
$LOAD par_X_W_DES_NGB_powerLinkG

* - description: Bitte geben Sie an, ob an den Kraft-Wärme-Kopplungsanlagen eine Messung der Gas-Leistung stattfinden soll
* - type: Boolean
* - identifier: Gas-Leistungsmessung Kraft-Wärme-Kopplungsanlage
* - domain: [0|1]
PARAMETER par_X_DES_CHP_powerLinkG(set_tech_DES_CHP,set_power_G) Leistungsmessung
$LOAD par_X_DES_CHP_powerLinkG

* - description: Bitte geben Sie an, ob an der Stromlast eine Messung der elektrischen Leistung stattfinden soll
* - type: Boolean
* - identifier: Elektrische Leistungsmessung Stromlast
* - domain: [0|1]
PARAMETER par_X_DS_E_powerLinkE(set_load_DS_E,set_power_E) Leistungsmessung
$LOAD par_X_DS_E_powerLinkE

* - description: Bitte geben Sie an, ob an der Wärmelast eine Messung der thermischen Leistung stattfinden soll
* - type: Boolean
* - identifier: Thermische Leistungsmessung Wärmelast
* - domain: [0|1]
PARAMETER par_X_DS_W_powerLinkW(set_load_DS_W,set_power_W) Leistungsmessung
$LOAD par_X_DS_W_powerLinkW

* - description: Bitte geben Sie an, ob an der Gaslast eine Messung der Gas-Leistung stattfinden soll
* - type: Boolean
* - identifier: Erdgas Leistungsmessung Erdgaslast
* - domain: [0|1]
PARAMETER par_X_DS_G_powerLinkG(set_load_DS_G,set_power_G) Leistungsmessung
$LOAD par_X_DS_G_powerLinkG

* - description: Bitte geben Sie an, ob am Strommarkt eine Messung der elektrischen Leistung stattfinden soll
* - type: Boolean
* - identifier: Elektrische Leistungsmessung Strommarkt
* - domain: [0|1]
PARAMETER par_X_E_MS_E_powerLinkE(set_market_MS_E,set_power_E) Leistungsmessung
$LOAD par_X_E_MS_E_powerLinkE

* - description: Bitte geben Sie an, ob am Reservemarkt eine Messung der elektrischen Leistung stattfinden soll
* - type: Boolean
* - identifier: Elektrische Leistungsmessung Reservemarkt
* - domain: [0|1]
PARAMETER par_X_MS_R_powerLinkE(set_market_MS_R,set_power_E) Leistungsmessung
$LOAD par_X_MS_R_powerLinkE

* - description: Bitte geben Sie an, ob am Gasmarkt eine Messung der Gas-Leistung stattfinden soll
* - type: Boolean
* - identifier: Erdgas Leistungsmessung Gasmarkt
* - domain: [0|1]
PARAMETER par_X_G_MS_G_powerLinkG(set_market_MS_G,set_power_G) Leistungsmessung
$LOAD par_X_G_MS_G_powerLinkG

$Label(BlockEnd)->***Leistungsmessung***


