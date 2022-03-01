* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber den Stromspeicher besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Stromspeicher
* - domain: [0|1]
PARAMETER par_OH_DES_ES_side(set_side,set_tech_DES_ES) Optimierungshoheit
$LOAD par_OH_DES_ES_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber den W�rmespeicher besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit W�rmespeicher
* - domain: [0|1]
PARAMETER par_OH_DES_TS_side(set_side,set_tech_DES_TS) Optimierungshoheit
$LOAD par_OH_DES_TS_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber den K�ltespeicher besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit K�ltespeicher
* - domain: [0|1]
PARAMETER par_OH_DES_CS_side(set_side,set_tech_DES_CS) Optimierungshoheit
$LOAD par_OH_DES_CS_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber den K�ltelastgang besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit K�ltelastg�nge
* - domain: [0|1]
PARAMETER par_OH_DS_CL_side(set_side,set_load_DS_C) Optimierungshoheit
$LOAD par_OH_DS_CL_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber den Wasserstofflastgang besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Wasserstofflastgang
* - domain: [0|1]
PARAMETER par_OH_DS_HL_side(set_side,set_load_DS_H) Optimierungshoheit
$LOAD par_OH_DS_HL_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber den Chlorlastgang besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Chlorlastgang
* - domain: [0|1]
PARAMETER par_OH_DS_CLL_side(set_side,set_load_DS_CL) Optimierungshoheit
$LOAD par_OH_DS_CLL_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber den Heizkessel besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Heizkessel
* - domain: [0|1]
PARAMETER par_OH_DES_NGB_side(set_side,set_tech_DES_NGB) Optimierungshoheit
$LOAD par_OH_DES_NGB_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber die K�ltemaschine besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit K�ltemaschine
* - domain: [0|1]
PARAMETER par_OH_DES_CR_side(set_side,set_tech_DES_CR) Optimierungshoheit
$LOAD par_OH_DES_CR_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber die K�ltemaschine besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit K�ltemaschine
* - domain: [0|1]
PARAMETER par_OH_DES_SC_side(set_side,set_tech_DES_SC) Optimierungshoheit
$LOAD par_OH_DES_SC_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber den Durchlauferhitzer besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Durchlauferhitzer
* - domain: [0|1]
PARAMETER par_OH_DES_EB_side(set_side,set_tech_DES_EB) Optimierungshoheit
$LOAD par_OH_DES_EB_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber den Durchlauferhitzer besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Wasserstoffspeicher
* - domain: [0|1]
PARAMETER par_OH_DES_HS_side(set_side,set_tech_DES_HS) Optimierungshoheit
$LOAD par_OH_DES_HS_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber den Chlorspeicher besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Chlorspeicher
* - domain: [0|1]
PARAMETER par_OH_DES_CLS_side(set_side,set_tech_DES_CLS) Optimierungshoheit
$LOAD par_OH_DES_CLS_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber den Durchlauferhitzer besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Brennstoffzelle
* - domain: [0|1]
PARAMETER par_OH_DES_FC_side(set_side,set_tech_DES_FC) Optimierungshoheit
$LOAD par_OH_DES_FC_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber den Durchlauferhitzer besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Elektrolyseur
* - domain: [0|1]
PARAMETER par_OH_DES_EY_side(set_side,set_tech_DES_EY) Optimierungshoheit
$LOAD par_OH_DES_EY_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber den Durchlauferhitzer besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Gasspeicher
* - domain: [0|1]
PARAMETER par_OH_DES_GS_side(set_side,set_tech_DES_GS) Optimierungshoheit
$LOAD par_OH_DES_GS_side


* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber die PV-Anlage besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit PV-Anlage
* - domain: [0|1]
PARAMETER par_OH_DES_PV_side(set_side,set_tech_DES_PV) Optimierungshoheit
$LOAD par_OH_DES_PV_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber die W�rmepumpe besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit W�rmepumpe
* - domain: [0|1]
PARAMETER par_OH_DES_HP_side(set_side,set_tech_DES_HP) Optimierungshoheit
$LOAD par_OH_DES_HP_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber die Kraft-W�rme-Kopplungsanlage besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Kraft-W�rme-Kopplungsanlage
* - domain: [0|1]
PARAMETER par_OH_DES_CHP_side(set_side,set_tech_DES_CHP) Optimierungshoheit
$LOAD par_OH_DES_CHP_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber die Solarthermie-Anlage besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Solarthermie-Anlage
* - domain: [0|1]
PARAMETER par_OH_DES_ST_side(set_side,set_tech_DES_ST) Optimierungshoheit
$LOAD par_OH_DES_ST_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber den elektrischen Lastgang besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Elektrische Lastg�nge
* - domain: [0|1]
PARAMETER par_OH_DS_EL_side(set_side,set_load_DS_E) Optimierungshoheit
$LOAD par_OH_DS_EL_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber den Gaslastgang besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Gaslastg�nge
* - domain: [0|1]
PARAMETER par_OH_DS_GL_side(set_side,set_load_DS_G) Optimierungshoheit
$LOAD par_OH_DS_GL_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber den thermischen Lastgang besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Thermische Lastg�nge
* - domain: [0|1]
PARAMETER par_OH_DS_WL_side(set_side,set_load_DS_W) Optimierungshoheit
$LOAD par_OH_DS_WL_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber die Windkraftanlage besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Windkraftanlage
* - domain: [0|1]
PARAMETER par_OH_SS_WT_side(set_side_orga,set_tech_SS_WT) Optimierungshoheit
$LOAD par_OH_SS_WT_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber die Kraft-W�rme-Kopplungsanlage besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Kraft-W�rme-Kopplungsanlage
* - domain: [0|1]
PARAMETER par_OH_SS_CHP_side(set_side_orga,set_tech_SS_CHP) Optimierungshoheit
$LOAD par_OH_SS_CHP_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber das Pumpspeicherkraftwerk besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Pumpspeicherkraftwerke
* - domain: [0|1]
PARAMETER par_OH_SS_PHS_side(set_side_orga,set_tech_SS_PHS) Optimierungshoheit
$LOAD par_OH_SS_PHS_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber das Laufwasserkraftwerk besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Laufwasserkraftwerk
* - domain: [0|1]
PARAMETER par_OH_SS_RH_side(set_side_orga,set_tech_SS_RH) Optimierungshoheit
$LOAD par_OH_SS_RH_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber die PV-Anlage besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit PV-Anlage
* - domain: [0|1]
PARAMETER par_OH_SS_PV_side(set_side_orga,set_tech_SS_PV) Optimierungshoheit
$LOAD par_OH_SS_PV_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber die M�llverwertungsanlage besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit M�llverwertungsanlage
* - domain: [0|1]
PARAMETER par_OH_SS_RC_side(set_side_orga,set_tech_SS_RC) Optimierungshoheit
$LOAD par_OH_SS_RC_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber das Kondensationskraftwerk besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Kondensationskraftwerk
* - domain: [0|1]
PARAMETER par_OH_SS_TPS_side(set_side_orga,set_tech_SS_TPS) Optimierungshoheit
$LOAD par_OH_SS_TPS_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber das Biomassekraftwerk besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Biomassekraftwerk
* - domain: [0|1]
PARAMETER par_OH_SS_BGP_side(set_side_orga,set_tech_SS_BGP) Optimierungshoheit
$LOAD par_OH_SS_BGP_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber die Holzverbrennungsanlage besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Holzverbrennungsanlage
* - domain: [0|1]
PARAMETER par_OH_SS_TC_side(set_side_orga,set_tech_SS_TC) Optimierungshoheit
$LOAD par_OH_SS_TC_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber den Elektrodenheizkessel besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Elektrodenheizkessel
* - domain: [0|1]
PARAMETER par_OH_SS_ETB_side(set_side_orga,set_tech_SS_ETB) Optimierungshoheit
$LOAD par_OH_SS_ETB_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber den Spitzenlastkessel besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Spitzenlastkessel
* - domain: [0|1]
PARAMETER par_OH_SS_PLB_side(set_side_orga,set_tech_SS_PLB) Optimierungshoheit
$LOAD par_OH_SS_PLB_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber die Brennstoffzelle besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Brennstoffzelle
* - domain: [0|1]
PARAMETER par_OH_SS_FC_side(set_side_orga,set_tech_SS_FC) Optimierungshoheit
$LOAD par_OH_SS_FC_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber den Elektrolyseur besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Elektrolyseur
* - domain: [0|1]
PARAMETER par_OH_SS_EY_side(set_side_orga,set_tech_SS_EY) Optimierungshoheit
$LOAD par_OH_SS_EY_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber die Methanisierungsanlage besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Methanisierungsanlage
* - domain: [0|1]
PARAMETER par_OH_SS_MT_side(set_side_orga,set_tech_SS_MT) Optimierungshoheit
$LOAD par_OH_SS_MT_side


* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber die Energiem�rkte besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Energiem�rkte
* - domain: [0|1]
PARAMETER par_OH_MS_market_side(set_side_orga,set_market_MS) Optimierungshoheit
$LOAD par_OH_MS_market_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber das Stromnetz besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit �bertragungsnetze
* - domain: [0|1]
PARAMETER par_OH_NS_grid_side(set_side_orga,set_grid_NS) Optimierungshoheit
$LOAD par_OH_NS_grid_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber die Strom-Leistungsmessung besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Strom-Leistungsmessung
* - domain: [0|1]
PARAMETER par_OH_DS_powerE_side(set_side,set_power_E) Optimierungshoheit
$LOAD par_OH_DS_powerE_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber die W�rme-Leistungsmessung besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit W�rme-Leistungsmessung
* - domain: [0|1]
PARAMETER par_OH_DS_powerW_side(set_side,set_power_W) Optimierungshoheit
$LOAD par_OH_DS_powerW_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber die Erdgas-Leistungsmessung besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Erdgas-Leistungsmessung
* - domain: [0|1]
PARAMETER par_OH_DS_powerG_side(set_side,set_power_G) Optimierungshoheit
$LOAD par_OH_DS_powerG_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Optimierungshoheit �ber die Wasserstoff-Leistungsmessung besitzen soll
* - type: Boolean
* - identifier: Optimierungshoheit Wasserstoff-Leistungsmessung
* - domain: [0|1]
PARAMETER par_OH_DS_powerH_side(set_side,set_power_H) Optimierungshoheit
$LOAD par_OH_DS_powerH_side
