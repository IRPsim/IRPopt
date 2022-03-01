* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die Energiemärkte besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Energiemärkte
* - domain: [0|1]
PARAMETER par_COH_MS_market_side(set_side_orga,set_market_MS) Optimierungshoheit
$LOAD par_COH_MS_market_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die Übertragungsnetze besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Übertragungsnetze
* - domain: [0|1]
PARAMETER par_COH_NS_grid_side(set_side_orga,set_grid_NS) Optimierungshoheit
$LOAD par_COH_NS_grid_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die elektrischen Lastgänge besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Elektrische Lastgänge
* - domain: [0|1]
PARAMETER par_COH_DS_EL_side(set_side,set_load_DS_E) Optimierungshoheit
$LOAD par_COH_DS_EL_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die Wasserstofflastgang besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Wasserstofflastgang
* - domain: [0|1]
PARAMETER par_COH_DS_HL_side(set_side,set_load_DS_H) Optimierungshoheit
$LOAD par_COH_DS_HL_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die Chlorlastgang besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Chlorlastgang
* - domain: [0|1]
PARAMETER par_COH_DS_CLL_side(set_side,set_load_DS_CL) Optimierungshoheit
$LOAD par_COH_DS_CLL_side


* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die Gaslastgänge besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Gaslastgänge
* - domain: [0|1]
PARAMETER par_COH_DS_GL_side(set_side,set_load_DS_G) Optimierungshoheit
$LOAD par_COH_DS_GL_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die Kältelastgänge besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Kältelastgänge
* - domain: [0|1]
PARAMETER par_COH_DS_CL_side(set_side,set_load_DS_C) Optimierungshoheit
$LOAD par_COH_DS_CL_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die Wärmelastgänge besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Wärmelastgänge
* - domain: [0|1]
PARAMETER par_COH_DS_WL_side(set_side,set_load_DS_W) Optimierungshoheit
$LOAD par_COH_DS_WL_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über den Stromspeicher besitzen soll
* - type: Boolean
* - identifier: Einlesen Bilanzierungshoheit Stromspeicher
* - domain: [0|1]
PARAMETER par_COH_DES_ES_side(set_side,set_tech_DES_ES) Bilanzierungshoheit
$LOAD par_COH_DES_ES_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über den Wärmespeicher besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Wärmespeicher
* - domain: [0|1]
PARAMETER par_COH_DES_TS_side(set_side,set_tech_DES_TS) Bilanzierungshoheit
$LOAD par_COH_DES_TS_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über den Kältespeicher besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Kältespeicher
* - domain: [0|1]
PARAMETER par_COH_DES_CS_side(set_side,set_tech_DES_CS) Bilanzierungshoheit
$LOAD par_COH_DES_CS_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über den Heizkessel besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Heizkessel
* - domain: [0|1]
PARAMETER par_COH_DES_NGB_side(set_side,set_tech_DES_NGB) Bilanzierungshoheit
$LOAD par_COH_DES_NGB_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die Kältemaschine besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Kältemaschine
* - domain: [0|1]
PARAMETER par_COH_DES_CR_side(set_side,set_tech_DES_CR) Bilanzierungshoheit
$LOAD par_COH_DES_CR_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die Kältemaschine besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Kältemaschine
* - domain: [0|1]
PARAMETER par_COH_DES_SC_side(set_side,set_tech_DES_SC) Bilanzierungshoheit
$LOAD par_COH_DES_SC_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über den Durchlauferhitzer besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Durchlauferhitzer
* - domain: [0|1]
PARAMETER par_COH_DES_EB_side(set_side,set_tech_DES_EB) Bilanzierungshoheit
$LOAD par_COH_DES_EB_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über den Wasserstoffspeicher besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Wasserstoffspeicher
* - domain: [0|1]
PARAMETER par_COH_DES_HS_side(set_side,set_tech_DES_HS) Bilanzierungshoheit
$LOAD par_COH_DES_HS_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über den Chlorspeicher besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Chlorspeicher
* - domain: [0|1]
PARAMETER par_COH_DES_CLS_side(set_side,set_tech_DES_CLS) Bilanzierungshoheit
$LOAD par_COH_DES_CLS_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die Brennstoffzelle besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Brennstoffzelle
* - domain: [0|1]
PARAMETER par_COH_DES_FC_side(set_side,set_tech_DES_FC) Bilanzierungshoheit
$LOAD par_COH_DES_FC_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über den Elektrolyseur besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Elektrolyseur
* - domain: [0|1]
PARAMETER par_COH_DES_EY_side(set_side,set_tech_DES_EY) Bilanzierungshoheit
$LOAD par_COH_DES_EY_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über den Gasspeicher besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Gasspeicher
* - domain: [0|1]
PARAMETER par_COH_DES_GS_side(set_side,set_tech_DES_GS) Bilanzierungshoheit
$LOAD par_COH_DES_GS_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die PV-Anlage besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit PV-Anlagen
* - domain: [0|1]
PARAMETER par_COH_DES_PV_side(set_side,set_tech_DES_PV) Bilanzierungshoheit
$LOAD par_COH_DES_PV_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die Kraft-Wärme-Kopplungsanlage besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Kraft-Wärme-Kopplungsanlage
* - domain: [0|1]
PARAMETER par_COH_DES_CHP_side(set_side,set_tech_DES_CHP) Optimierungshoheit
$LOAD par_COH_DES_CHP_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die Solarthermie-Anlage besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Solarthermie-Anlage
* - domain: [0|1]
PARAMETER par_COH_DES_ST_side(set_side,set_tech_DES_ST) Optimierungshoheit
$LOAD par_COH_DES_ST_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die Wärmepumpe besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Wärmepumpe
* - domain: [0|1]
PARAMETER par_COH_DES_HP_side(set_side,set_tech_DES_HP) Bilanzierungshoheit
$LOAD par_COH_DES_HP_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die Windkraftanlage besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Windkraftanlage
* - domain: [0|1]
PARAMETER par_COH_SS_WT_side(set_side_orga,set_tech_SS_WT)
$LOAD par_COH_SS_WT_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die Kraft-Wärme-Kopplungsanlage besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Kraft-Wärme-Kopplungsanlage
* - domain: [0|1]
PARAMETER par_COH_SS_CHP_side(set_side_orga,set_tech_SS_CHP)
$LOAD par_COH_SS_CHP_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über das Pumpspeicherkraftwerk besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Pumpspeicherkraftwerk
* - domain: [0|1]
PARAMETER par_COH_SS_PHS_side(set_side_orga,set_tech_SS_PHS)
$LOAD par_COH_SS_PHS_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über das Laufwasserkraftwerk besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Laufwasserkraftwerke
* - domain: [0|1]
PARAMETER par_COH_SS_RH_side(set_side_orga,set_tech_SS_RH)
$LOAD par_COH_SS_RH_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die PV-Anlage besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit PV-Anlage
* - domain: [0|1]
PARAMETER par_COH_SS_PV_side(set_side_orga,set_tech_SS_PV)
$LOAD par_COH_SS_PV_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die Müllverwertungsanlage besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Müllverwertungsanlage
* - domain: [0|1]
PARAMETER par_COH_SS_RC_side(set_side_orga,set_tech_SS_RC)
$LOAD par_COH_SS_RC_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über das Kondensationskraftwerk besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Kondensationskraftwerk
* - domain: [0|1]
PARAMETER par_COH_SS_TPS_side(set_side_orga,set_tech_SS_TPS)
$LOAD par_COH_SS_TPS_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über das Biomassekraftwerk besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Biomassekraftwerk
* - domain: [0|1]
PARAMETER par_COH_SS_BGP_side(set_side_orga,set_tech_SS_BGP)
$LOAD par_COH_SS_BGP_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die Holzverbrennungsanlage besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Holzverbrennungsanlage
* - domain: [0|1]
PARAMETER par_COH_SS_TC_side(set_side_orga,set_tech_SS_TC)
$LOAD par_COH_SS_TC_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über den Elektrodenheizkessel besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Elektrodenheizkessel
* - domain: [0|1]
PARAMETER par_COH_SS_ETB_side(set_side_orga,set_tech_SS_ETB)
$LOAD par_COH_SS_ETB_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über den Spitzenlastkessel besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Spitzenlastkessel
* - domain: [0|1]
PARAMETER par_COH_SS_PLB_side(set_side_orga,set_tech_SS_PLB)
$LOAD par_COH_SS_PLB_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die Brennstoffzelle besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Brennstoffzelle
* - domain: [0|1]
PARAMETER par_COH_SS_FC_side(set_side_orga,set_tech_SS_FC)
$LOAD par_COH_SS_FC_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über den Elektrolyseur besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Elektrolyseur
* - domain: [0|1]
PARAMETER par_COH_SS_EY_side(set_side_orga,set_tech_SS_EY)
$LOAD par_COH_SS_EY_side

* - description: Bitte markieren Sie hier den Aktuer mit "Ja", der die Bilanzierungshoheit über die Methanisierungsanlage besitzen soll
* - type: Boolean
* - identifier: Bilanzierungshoheit Methanisierungsanlage
* - domain: [0|1]
PARAMETER par_COH_SS_MT_side(set_side_orga,set_tech_SS_MT)
$LOAD par_COH_SS_MT_side





