* - description: Bitte geben Sie an, ob der Stromspeicher auf die Anzahl der Mitglieder der ihm zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Stromspeicher
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_E_DES_ES_scaling(set_tech_DES_ES) Skalierungsoption
$LOAD par_X_E_DES_ES_scaling

* - description: Bitte geben Sie an, ob der Wasserstoffspeicher auf die Anzahl der Mitglieder der ihm zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Wasserstoffspeicher
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_H_DES_HS_scaling(set_tech_DES_HS) Skalierungsoption
$LOAD par_X_H_DES_HS_scaling

* - description: Bitte geben Sie an, ob der Chlorspeicher auf die Anzahl der Mitglieder der ihm zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Chlorspeicher
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_CL_DES_CLS_scaling(set_tech_DES_CLS) Skalierungsoption
$LOAD par_X_CL_DES_CLS_scaling

* - description: Bitte geben Sie an, ob der Gasspeicher auf die Anzahl der Mitglieder der ihm zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Gasspeicher
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_G_DES_GS_scaling(set_tech_DES_GS) Skalierungsoption
$LOAD par_X_G_DES_GS_scaling

* - description: Bitte geben Sie an, ob der Wärmespeicher auf die Anzahl der Mitglieder der ihm zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Wärmespeicher
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_W_DES_TS_scaling(set_tech_DES_TS) Skalierungsoption
$LOAD par_X_W_DES_TS_scaling

* - description: Bitte geben Sie an, ob der Kältespeicher auf die Anzahl der Mitglieder der ihm zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Kältespeicher
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_C_DES_CS_scaling(set_tech_DES_CS) Skalierungsoption
$LOAD par_X_C_DES_CS_scaling


* - description: Bitte geben Sie an, ob die Kältemaschine auf die Anzahl der Mitglieder der ihr zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Kältemaschine
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_C_DES_CR_scaling(set_tech_DES_CR) Skalierungsoption
$LOAD par_X_C_DES_CR_scaling

* - description: Bitte geben Sie an, ob die Kältemaschine auf die Anzahl der Mitglieder der ihr zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Kältemaschine
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_C_DES_SC_scaling(set_tech_DES_SC) Skalierungsoption
$LOAD par_X_C_DES_SC_scaling

* - description: Bitte geben Sie an, ob der Gasboiler auf die Anzahl der Mitglieder der ihm zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Gasboiler
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_W_DES_NGB_scaling(set_tech_DES_NGB) Skalierungsoption
$LOAD par_X_W_DES_NGB_scaling

* - description: Bitte geben Sie an, ob die Brennstoffzelle auf die Anzahl der Mitglieder der ihm zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Brennstoffzelle
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_H_DES_FC_scaling(set_tech_DES_FC) Skalierungsoption
$LOAD par_X_H_DES_FC_scaling

* - description: Bitte geben Sie an, ob die Elektrolyseur auf die Anzahl der Mitglieder der ihm zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Elektrolyseur
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_H_DES_EY_scaling(set_tech_DES_EY) Skalierungsoption
$LOAD par_X_H_DES_EY_scaling

* - description: Bitte geben Sie an, ob der Durchlauferhitzer auf die Anzahl der Mitglieder der ihm zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Durchlauferhitzer
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_W_DES_EB_scaling(set_tech_DES_EB) Skalierungsoption
$LOAD par_X_W_DES_EB_scaling

* - description: Bitte geben Sie an, ob die PV-Anlage auf die Anzahl der Mitglieder der ihr zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung  PV-Anlage
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_E_DES_PV_scaling(set_tech_DES_PV) Skalierungsoption
$LOAD par_X_E_DES_PV_scaling

* - description: Bitte geben Sie an, ob die Kraft-Wärme-Kopplungsanlage auf die Anzahl der Mitglieder der ihr zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Kraft-Wärme-Kopplungsanlage
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_DES_CHP_scaling(set_tech_DES_CHP) Skalierungsoption
$LOAD par_X_DES_CHP_scaling

* - description: Bitte geben Sie an, ob die Solarthermie-Anlage auf die Anzahl der Mitglieder der ihr zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Solarthermie-Anlage
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_W_DES_ST_scaling(set_tech_DES_ST) Skalierungsoption
$LOAD par_X_W_DES_ST_scaling

* - description: Bitte geben Sie an, ob die Wärmepumpe auf die Anzahl der Mitglieder der ihr zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Wärmepumpe
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_W_DES_HP_scaling(set_tech_DES_HP) Skalierungsoption
$LOAD par_X_W_DES_HP_scaling

* - description: Bitte geben Sie an, ob die Stromlast auf die Anzahl der Mitglieder der ihr zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Stromlast
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_DS_E_scaling(set_load_DS_E) Skalierungsoption
$LOAD par_X_DS_E_scaling

* - description: Bitte geben Sie an, ob die Wärmelast auf die Anzahl der Mitglieder der ihr zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Wärmelast
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_DS_W_scaling(set_load_DS_W) Skalierungsoption
$LOAD par_X_DS_W_scaling

* - description: Bitte geben Sie an, ob die Gaslast auf die Anzahl der Mitglieder der ihr zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Gaslast
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_DS_G_scaling(set_load_DS_G) Skalierungsoption
$LOAD par_X_DS_G_scaling

* - description: Bitte geben Sie an, ob die Kältelast auf die Anzahl der Mitglieder der ihr zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Kältelast
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_DS_C_scaling(set_load_DS_C) Skalierungsoption
$LOAD par_X_DS_C_scaling

* - description: Bitte geben Sie an, ob die Wasserstofflast auf die Anzahl der Mitglieder der ihr zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Wasserstofflast
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_DS_H_scaling(set_load_DS_H) Skalierungsoption
$LOAD par_X_DS_H_scaling

* - description: Bitte geben Sie an, ob die Chlorlast auf die Anzahl der Mitglieder der ihr zugeordneten Prosumergruppe skaliert werden soll
* - type: Boolean
* - identifier: Skalierung Chlorlast
* - unit:
* - domain: [0|1]
* - default: 1
PARAMETER par_X_DS_CL_scaling(set_load_DS_CL) Skalierungsoption
$LOAD par_X_DS_CL_scaling
