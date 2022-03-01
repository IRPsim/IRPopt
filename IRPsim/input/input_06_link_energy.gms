* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Stromspeicher zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Stromspeicher zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_fromES_NS_toEGrid_energyLink(set_tech_DES_ES,set_grid_NS_E) Energieverbindung
$LOAD par_X_E_DES_fromES_NS_toEGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Stromspeicher zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Stromspeicher zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_fromES_DES_toES_energyLink(set_tech_DES_ES,set_tech_DES_ES) Energieverbindung
$LOAD par_X_E_DES_fromES_DES_toES_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Stromspeicher zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Stromspeicher zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_DES_ES_NS_RGrid_energyLink(set_tech_DES_ES,set_grid_NS_R) Energieverbindung
$LOAD par_X_R_DES_ES_NS_RGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Wärmepumpe zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Wärmepumpe zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_DES_HP_NS_RGrid_energyLink(set_tech_DES_HP,set_grid_NS_R) Energieverbindung
$LOAD par_X_R_DES_HP_NS_RGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_DES_CHP_NS_RGrid_energyLink(set_tech_DES_CHP,set_grid_NS_R) Energieverbindung
$LOAD par_X_R_DES_CHP_NS_RGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Durchlauferhitzer zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Durchlauferhitzer zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_DES_EB_NS_RGrid_energyLink(set_tech_DES_EB,set_grid_NS_R) Energieverbindung
$LOAD par_X_R_DES_EB_NS_RGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Stromspeicher zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Stromspeicher zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_ES_DS_ELoad_energyLink(set_tech_DES_ES,set_load_DS_E) Energieverbindung
$LOAD par_X_E_DES_ES_DS_ELoad_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Stromspeicher zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Stromspeicher zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_ES_DES_HP_energyLink(set_tech_DES_ES,set_tech_DES_HP) Energieverbindung
$LOAD par_X_E_DES_ES_DES_HP_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Stromspeicher zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Stromspeicher zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_ES_DES_EB_energyLink(set_tech_DES_ES,set_tech_DES_EB) Energieverbindung
$LOAD par_X_E_DES_ES_DES_EB_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der PV-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von PV-Anlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_PV_DES_ES_energyLink(set_tech_DES_PV,set_tech_DES_ES) Energieverbindung
$LOAD par_X_E_DES_PV_DES_ES_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der PV-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von PV-Anlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_PV_DES_EB_energyLink(set_tech_DES_PV,set_tech_DES_EB) Energieverbindung
$LOAD par_X_E_DES_PV_DES_EB_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der PV-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von PV-Anlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_PV_DES_HP_energyLink(set_tech_DES_PV,set_tech_DES_HP) Energieverbindung
$LOAD par_X_E_DES_PV_DES_HP_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der PV-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von PV-Anlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_PV_DS_ELoad_energyLink(set_tech_DES_PV,set_load_DS_E) Energieverbindung
$LOAD par_X_E_DES_PV_DS_ELoad_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der PV-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von PV-Anlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_PV_NS_EGrid_energyLink(set_tech_DES_PV,set_grid_NS_E) Energieverbindung
$LOAD par_X_E_DES_PV_NS_EGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_CHP_DES_ES_energyLink(set_tech_DES_CHP,set_tech_DES_ES) Energieverbindung
$LOAD par_X_E_DES_CHP_DES_ES_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_CHP_DES_EB_energyLink(set_tech_DES_CHP,set_tech_DES_EB) Energieverbindung
$LOAD par_X_E_DES_CHP_DES_EB_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_CHP_DES_HP_energyLink(set_tech_DES_CHP,set_tech_DES_HP) Energieverbindung
$LOAD par_X_E_DES_CHP_DES_HP_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_CHP_DS_ELoad_energyLink(set_tech_DES_CHP,set_load_DS_E) Energieverbindung
$LOAD par_X_E_DES_CHP_DS_ELoad_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_CHP_NS_EGrid_energyLink(set_tech_DES_CHP,set_grid_NS_E) Energieverbindung
$LOAD par_X_E_DES_CHP_NS_EGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Stromnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Stromnetz zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_NS_fromEGrid_DES_toES_energyLink(set_grid_NS_E,set_tech_DES_ES) Energieverbindung
$LOAD par_X_E_NS_fromEGrid_DES_toES_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Stromnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Stromnetz zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_NS_EGrid_DES_HP_energyLink(set_grid_NS_E,set_tech_DES_HP) Energieverbindung
$LOAD par_X_E_NS_EGrid_DES_HP_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Stromnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Stromnetz zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_NS_EGrid_DES_EB_energyLink(set_grid_NS_E,set_tech_DES_EB) Energieverbindung
$LOAD par_X_E_NS_EGrid_DES_EB_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Durchlauferhitzer zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Durchlauferhitzer zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_DES_EB_DS_WLoad_energyLink(set_tech_DES_EB,set_load_DS_W) Energieverbindung
$LOAD par_X_W_DES_EB_DS_WLoad_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Heizkessel zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Heizkessel zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_DES_NGB_DS_WLoad_energyLink(set_tech_DES_NGB,set_load_DS_W) Energieverbindung
$LOAD par_X_W_DES_NGB_DS_WLoad_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Wärmepumpe zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Wärmepumpe zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_DES_HP_DS_WLoad_energyLink(set_tech_DES_HP,set_load_DS_W) Energieverbindung
$LOAD par_X_W_DES_HP_DS_WLoad_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Solarthermie-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Solarthermie-Anlage zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_DES_ST_DS_WLoad_energyLink(set_tech_DES_ST,set_load_DS_W) Energieverbindung
$LOAD par_X_W_DES_ST_DS_WLoad_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_DES_CHP_DS_WLoad_energyLink(set_tech_DES_CHP,set_load_DS_W) Energieverbindung
$LOAD par_X_W_DES_CHP_DS_WLoad_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Durchlauferhitzer zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Durchlauferhitzer zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_W_DES_EB_DES_TS_energyLink(set_tech_DES_EB,set_tech_DES_TS) Energieverbindung
$LOAD par_X_W_DES_EB_DES_TS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Heizkessel zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Heizkessel zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_W_DES_NGB_DES_TS_energyLink(set_tech_DES_NGB,set_tech_DES_TS) Energieverbindung
$LOAD par_X_W_DES_NGB_DES_TS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Wärmepumpe zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Wärmepumpe zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_W_DES_HP_DES_TS_energyLink(set_tech_DES_HP,set_tech_DES_TS) Energieverbindung
$LOAD par_X_W_DES_HP_DES_TS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Solarthermie-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Solarthermie-Anlage zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_W_DES_ST_DES_TS_energyLink(set_tech_DES_ST,set_tech_DES_TS) Energieverbindung
$LOAD par_X_W_DES_ST_DES_TS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_W_DES_CHP_DES_TS_energyLink(set_tech_DES_CHP,set_tech_DES_TS) Energieverbindung
$LOAD par_X_W_DES_CHP_DES_TS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Fernwärmenetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Fernwärmenetz zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_NS_fromWGrid_DES_toTS_energyLink(set_grid_NS_W,set_tech_DES_TS) Energieverbindung
$LOAD par_X_W_NS_fromWGrid_DES_toTS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Wärmespeicher zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Wärmespeicher zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_DES_TS_DS_WLoad_energyLink(set_tech_DES_TS,set_load_DS_W) Energieverbindung
$LOAD par_X_W_DES_TS_DS_WLoad_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Wärmespeicher zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Wärmespeicher zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_DES_fromTS_NS_toWGrid_energyLink(set_tech_DES_TS,set_grid_NS_W) Energieverbindung
$LOAD par_X_W_DES_fromTS_NS_toWGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Erdgasnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Erdgasnetz zu Prosumstorer
* - domain: [0|1]
* - color: DarkSlateGrey
PARAMETER par_X_G_NS_GGrid_DES_NGB_energyLink(set_grid_NS_G,set_tech_DES_NGB) Energieverbindung
$LOAD par_X_G_NS_GGrid_DES_NGB_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Ölmarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Ölmarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_O_MS_OMarket_DES_NGB_energyLink(set_market_MS_O,set_tech_DES_NGB) Energieverbindung
$LOAD par_X_O_MS_OMarket_DES_NGB_energyLink


* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Gasmarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Gasmarkt zu Prosumstorer
* - domain: [0|1]
* - color: DarkSlateGrey
PARAMETER par_X_G_MS_GMarket_DES_CHP_energyLink(set_market_MS_G,set_tech_DES_CHP) Energieverbindung
$LOAD par_X_G_MS_GMarket_DES_CHP_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Gasmarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Gasmarkt zu Prosumstorer
* - domain: [0|1]
* - color: DarkSlateGrey
PARAMETER par_X_G_MS_GMarket_DS_GLoad_energyLink(set_market_MS_G,set_load_DS_G) Energieverbindung
$LOAD par_X_G_MS_GMarket_DS_GLoad_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Gasmarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Gasmarkt zu Prosumstorer
* - domain: [0|1]
* - color: DarkSlateGrey
PARAMETER par_X_G_MS_GMarket_DES_NGB_energyLink(set_market_MS_G,set_tech_DES_NGB) Energieverbindung
$LOAD par_X_G_MS_GMarket_DES_NGB_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Erdgasnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Erdgasnetz zu Prosumstorer
* - domain: [0|1]
* - color: DarkSlateGrey
PARAMETER par_X_G_NS_GGrid_DES_CHP_energyLink(set_grid_NS_G,set_tech_DES_CHP) Energieverbindung
$LOAD par_X_G_NS_GGrid_DES_CHP_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Fernwärmenetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Fernwärmenetz zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_NS_WGrid_DS_WLoad_energyLink(set_grid_NS_W,set_load_DS_W) Energieverbindung
$LOAD par_X_W_NS_WGrid_DS_WLoad_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Stromnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Stromnetz zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_NS_EGrid_DS_ELoad_energyLink(set_grid_NS_E,set_load_DS_E) Energieverbindung
$LOAD par_X_E_NS_EGrid_DS_ELoad_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Windkraftanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Windkraftanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_WT_NS_EGrid_energyLink(set_tech_SS_WT,set_grid_NS_E) Energieverbindung
$LOAD par_X_E_SS_WT_NS_EGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_CHP_NS_EGrid_energyLink(set_tech_SS_CHP,set_grid_NS_E) Energieverbindung
$LOAD par_X_E_SS_CHP_NS_EGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Laufwasserkraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Laufwasserkraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_RH_NS_EGrid_energyLink(set_tech_SS_RH,set_grid_NS_E) Energieverbindung
$LOAD par_X_E_SS_RH_NS_EGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der PV-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von PV-Anlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_PV_NS_EGrid_energyLink(set_tech_SS_PV,set_grid_NS_E) Energieverbindung
$LOAD par_X_E_SS_PV_NS_EGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Windkraftanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Windkraftanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_WT_MS_EMarket_energyLink(set_tech_SS_WT,set_market_MS_E) Energieverbindung
$LOAD par_X_E_SS_WT_MS_EMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_CHP_MS_EMarket_energyLink(set_tech_SS_CHP,set_market_MS_E) Energieverbindung
$LOAD par_X_E_SS_CHP_MS_EMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Laufwasserkraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Laufwasserkraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_RH_MS_EMarket_energyLink(set_tech_SS_RH,set_market_MS_E) Energieverbindung
$LOAD par_X_E_SS_RH_MS_EMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der PV-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von PV-Anlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_PV_MS_EMarket_energyLink(set_tech_SS_PV,set_market_MS_E) Energieverbindung
$LOAD par_X_E_SS_PV_MS_EMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kehrrichtverwertungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Müllverwertungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_RC_MS_EMarket_energyLink(set_tech_SS_RC,set_market_MS_E) Energieverbindung
$LOAD par_X_E_SS_RC_MS_EMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Pumpspeicherkraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Pumpspeicherkraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_fromPHS_NS_toEGrid_energyLink(set_tech_SS_PHS,set_grid_NS_E) Energieverbindung
$LOAD par_X_E_SS_fromPHS_NS_toEGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Stromnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Stromnetz zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_NS_fromEGrid_SS_toPHS_energyLink(set_grid_NS_E,set_tech_SS_PHS) Energieverbindung
$LOAD par_X_E_NS_fromEGrid_SS_toPHS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Pumpspeicherkraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Pumpspeicherkraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_fromPHS_MS_toEMarket_energyLink(set_tech_SS_PHS,set_market_MS_E) Energieverbindung
$LOAD par_X_E_SS_fromPHS_MS_toEMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Strommarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Strommarkt zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_MS_fromEMarket_SS_toPHS_energyLink(set_market_MS_E,set_tech_SS_PHS) Energieverbindung
$LOAD par_X_E_MS_fromEMarket_SS_toPHS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Müllverwertungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Müllverwertungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_SS_RC_NS_WGrid_energyLink(set_tech_SS_RC,set_grid_NS_W) Energieverbindung
$LOAD par_X_W_SS_RC_NS_WGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Müllverwertungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Müllverwertungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_RC_NS_EGrid_energyLink(set_tech_SS_RC,set_grid_NS_E) Energieverbindung;
$LOAD par_X_E_SS_RC_NS_EGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_SS_CHP_NS_WGrid_energyLink(set_tech_SS_CHP,set_grid_NS_W) Energieverbindung
$LOAD par_X_W_SS_CHP_NS_WGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Gasnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Gasnetz zu Prosumstorer
* - domain: [0|1]
* - color: DarkSlateGrey
PARAMETER par_X_G_NS_GGrid_SS_RC_energyLink(set_grid_NS_G,set_tech_SS_RC) Energieverbindung
$LOAD par_X_G_NS_GGrid_SS_RC_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Gasnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Gasnetz zu Prosumstorer
* - domain: [0|1]
* - color: DarkSlateGrey
PARAMETER par_X_G_NS_G_SS_CHP_energyLink(set_grid_NS_G,set_tech_SS_CHP) Energieverbindung
$LOAD par_X_G_NS_G_SS_CHP_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Windkraftanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Windkraftanlage zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_SS_WT_NS_RGrid_energyLink(set_tech_SS_WT,set_grid_NS_R) Energieverbindung
$LOAD par_X_R_SS_WT_NS_RGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_SS_CHP_NS_RGrid_energyLink(set_tech_SS_CHP,set_grid_NS_R) Energieverbindung
$LOAD par_X_R_SS_CHP_NS_RGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Laufwasserkraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Laufwasserkraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_SS_RH_NS_RGrid_energyLink(set_tech_SS_RH,set_grid_NS_R) Energieverbindung
$LOAD par_X_R_SS_RH_NS_RGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der PV-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von PV-Anlage zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_SS_PV_NS_RGrid_energyLink(set_tech_SS_PV,set_grid_NS_R) Energieverbindung
$LOAD par_X_R_SS_PV_NS_RGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Müllverwertungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Müllverwertungsanlagen zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_SS_RC_NS_RGrid_energyLink(set_tech_SS_RC,set_grid_NS_R) Energieverbindung
$LOAD par_X_R_SS_RC_NS_RGrid_energyLink


* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Pumpspeicherkraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Pumpspeicherkraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_SS_PHS_NS_RGrid_energyLink(set_tech_SS_PHS,set_grid_NS_R) Energieverbindung
$LOAD par_X_R_SS_PHS_NS_RGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Gasnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Gasnetz zu Prosumstorer
* - domain: [0|1]
* - color: DarkSlateGrey
PARAMETER par_X_G_NS_GGrid_DS_GLoad_energyLink(set_grid_NS_G,set_load_DS_G) Energieverbindung
$LOAD par_X_G_NS_GGrid_DS_GLoad_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Kondensationskraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kondensationskraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_E_SS_TPS_NS_RGrid_energyLink(set_tech_SS_TPS,set_grid_NS_R) Energieverbindung
$LOAD par_X_E_SS_TPS_NS_RGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Biomassekraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Biomassekraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_B_SS_BGP_NS_RGrid_energyLink(set_tech_SS_BGP,set_grid_NS_R) Energieverbindung
$LOAD par_X_B_SS_BGP_NS_RGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Kondensationskraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kondensationskraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_TPS_MS_EMarket_energyLink(set_tech_SS_TPS,set_market_MS_E) Energieverbindung
$LOAD par_X_E_SS_TPS_MS_EMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Biomassekraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Biomassekraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_B_SS_BGP_MS_EMarket_energyLink(set_tech_SS_BGP,set_market_MS_E) Energieverbindung
$LOAD par_X_B_SS_BGP_MS_EMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Biomassekraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Biomassekraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_B_SS_BGP_MS_WMarket_energyLink(set_tech_SS_BGP,set_market_MS_W) Energieverbindung
$LOAD par_X_B_SS_BGP_MS_WMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Kondensationskraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kondensationskraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_TPS_NS_EGrid_energyLink(set_tech_SS_TPS,set_grid_NS_E) Energieverbindung
$LOAD par_X_E_SS_TPS_NS_EGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Biomassekraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Biomassekraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_B_SS_BGP_NS_EGrid_energyLink(set_tech_SS_BGP,set_grid_NS_E) Energieverbindung
$LOAD par_X_B_SS_BGP_NS_EGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Kondensationskraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kondensationskraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_SS_TPS_NS_WGrid_energyLink(set_tech_SS_TPS,set_grid_NS_W) Energieverbindung
$LOAD par_X_W_SS_TPS_NS_WGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Biomassekraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Biomassekraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_B_SS_BGP_NS_WGrid_energyLink(set_tech_SS_BGP,set_grid_NS_W) Energieverbindung
$LOAD par_X_B_SS_BGP_NS_WGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Elektrodenheizkessel zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Elektrodenheizkessel zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_SS_ETB_NS_WGrid_energyLink(set_tech_SS_ETB,set_grid_NS_W) Energieverbindung
$LOAD par_X_W_SS_ETB_NS_WGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Spitzenlastkessel zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Spitzenlastkessel zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_SS_PLB_NS_WGrid_energyLink(set_tech_SS_PLB,set_grid_NS_W) Energieverbindung
$LOAD par_X_W_SS_PLB_NS_WGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Gasnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Gasnetz zu Prosumstorer
* - domain: [0|1]
* - color: DarkSlateGrey
PARAMETER par_X_G_NS_G_SS_TPS_energyLink(set_grid_NS_G,set_tech_SS_TPS) Energieverbindung
$LOAD par_X_G_NS_G_SS_TPS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Windkraftanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Windkraftanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_WT_SS_ETB_energyLink(set_tech_SS_WT,set_tech_SS_ETB) Energieverbindung
$LOAD par_X_E_SS_WT_SS_ETB_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Windkraftanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Windkraftanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_WT_SS_PHS_energyLink(set_tech_SS_WT,set_tech_SS_PHS) Energieverbindung
$LOAD par_X_E_SS_WT_SS_PHS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der PV-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von PV-Anlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_PV_SS_PHS_energyLink(set_tech_SS_PV,set_tech_SS_PHS) Energieverbindung
$LOAD par_X_E_SS_PV_SS_PHS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der PV-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von PV-Anlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_PV_SS_ETB_energyLink(set_tech_SS_PV,set_tech_SS_ETB) Energieverbindung
$LOAD par_X_E_SS_PV_SS_ETB_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Stromnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Stromnetz zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_NS_EGrid_SS_ETB_energyLink(set_grid_NS_E,set_tech_SS_ETB) Energieverbindung
$LOAD par_X_E_NS_EGrid_SS_ETB_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Pumpspeicherkraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Pumpspeicherkraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_PHS_SS_PHS_energyLink(set_tech_SS_PHS,set_tech_SS_PHS) Energieverbindung
$LOAD par_X_E_SS_PHS_SS_PHS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Pumpspeicherkraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Pumpspeicherkraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_PHS_SS_ETB_energyLink(set_tech_SS_PHS,set_tech_SS_ETB) Energieverbindung
$LOAD par_X_E_SS_PHS_SS_ETB_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Laufwasserkraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Laufwasserkraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_RH_SS_ETB_energyLink(set_tech_SS_RH,set_tech_SS_ETB) Energieverbindung
$LOAD par_X_E_SS_RH_SS_ETB_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Laufwasserkraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Laufwasserkraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_RH_SS_PHS_energyLink(set_tech_SS_RH,set_tech_SS_PHS) Energieverbindung
$LOAD par_X_E_SS_RH_SS_PHS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Kondensationskraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kondensationskraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_TPS_SS_ETB_energyLink(set_tech_SS_TPS,set_tech_SS_ETB) Energieverbindung
$LOAD par_X_E_SS_TPS_SS_ETB_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Kondensationskraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kondensationskraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_TPS_SS_PHS_energyLink(set_tech_SS_TPS,set_tech_SS_PHS) Energieverbindung
$LOAD par_X_E_SS_TPS_SS_PHS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Biomassekraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Biomassekraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_B_SS_BGP_SS_ETB_energyLink(set_tech_SS_BGP,set_tech_SS_ETB) Energieverbindung
$LOAD par_X_B_SS_BGP_SS_ETB_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Biomassekraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Biomassekraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_B_SS_BGP_SS_PHS_energyLink(set_tech_SS_BGP,set_tech_SS_PHS) Energieverbindung
$LOAD par_X_B_SS_BGP_SS_PHS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_CHP_SS_ETB_energyLink(set_tech_SS_CHP,set_tech_SS_ETB) Energieverbindung
$LOAD par_X_E_SS_CHP_SS_ETB_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_CHP_SS_PHS_energyLink(set_tech_SS_CHP,set_tech_SS_PHS) Energieverbindung
$LOAD par_X_E_SS_CHP_SS_PHS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Erdgasnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Erdgasnetz zu Prosumstorer
* - domain: [0|1]
* - color: DarkSlateGrey
PARAMETER par_X_G_NS_G_SS_PLB_energyLink(set_grid_NS_G,set_tech_SS_PLB) Energieverbindung
$LOAD par_X_G_NS_G_SS_PLB_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Gasmarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Gasmarkt zu Prosumstorer
* - domain: [0|1]
* - color: DarkSlateGrey
PARAMETER par_X_G_MS_GMarket_SS_PLB_energyLink(set_market_MS_G,set_tech_SS_PLB) Energieverbindung
$LOAD par_X_G_MS_GMarket_SS_PLB_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Gasmarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Gasmarkt zu Prosumstorer
* - domain: [0|1]
* - color: DarkSlateGrey
PARAMETER par_X_G_MS_GMarket_SS_TPS_energyLink(set_market_MS_G,set_tech_SS_TPS) Energieverbindung
$LOAD par_X_G_MS_GMarket_SS_TPS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Gasmarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Gasmarkt zu Prosumstorer
* - domain: [0|1]
* - color: DarkSlateGrey
PARAMETER par_X_G_MS_GMarket_SS_CHP_energyLink(set_market_MS_G,set_tech_SS_CHP) Energieverbindung
$LOAD par_X_G_MS_GMarket_SS_CHP_energyLink


* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Ölmarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Ölmarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_O_MS_OMarket_SS_PLB_energyLink(set_market_MS_O,set_tech_SS_PLB) Energieverbindung
$LOAD par_X_O_MS_OMarket_SS_PLB_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Ölmarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Ölmarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_O_MS_OMarket_SS_TPS_energyLink(set_market_MS_O,set_tech_SS_TPS) Energieverbindung
$LOAD par_X_O_MS_OMarket_SS_TPS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Ölmarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Ölmarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_O_MS_OMarket_SS_CHP_energyLink(set_market_MS_O,set_tech_SS_CHP) Energieverbindung
$LOAD par_X_O_MS_OMarket_SS_CHP_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Biomassemarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Biomassemarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_B_MS_BMarket_SS_CHP_energyLink(set_market_MS_B,set_tech_SS_CHP) Energieverbindung
$LOAD par_X_B_MS_BMarket_SS_CHP_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Biomassemarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Biomassemarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_B_MS_BMarket_SS_TPS_energyLink(set_market_MS_B,set_tech_SS_TPS) Energieverbindung
$LOAD par_X_B_MS_BMarket_SS_TPS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Biomassemarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Biomassemarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_B_MS_BMarket_SS_BGP_energyLink(set_market_MS_B,set_tech_SS_BGP) Energieverbindung
$LOAD par_X_B_MS_BMarket_SS_BGP_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Abfallmarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Abfallmarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_RF_MS_RFMarket_SS_RC_energyLink(set_market_MS_RF,set_tech_SS_RC) Energieverbindung
$LOAD par_X_RF_MS_RFMarket_SS_RC_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Gasmarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Gasmarkt zu Prosumstorer
* - domain: [0|1]
* - color: DarkSlateGrey
PARAMETER par_X_G_MS_GMarket_SS_RC_energyLink(set_market_MS_G,set_tech_SS_RC) Energieverbindung
$LOAD par_X_G_MS_GMarket_SS_RC_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Ölmarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Ölmarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_O_MS_OMarket_SS_RC_energyLink(set_market_MS_O,set_tech_SS_RC) Energieverbindung
$LOAD par_X_O_MS_OMarket_SS_RC_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Steinkohlemarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Steinkohlemarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_HC_MS_HCMarket_SS_RC_energyLink(set_market_MS_HC,set_tech_SS_RC) Energieverbindung
$LOAD par_X_HC_MS_HCMarket_SS_RC_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Steinkohlemarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Braunkohlemarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_L_MS_LMarket_SS_RC_energyLink(set_market_MS_L,set_tech_SS_RC) Energieverbindung
$LOAD par_X_L_MS_LMarket_SS_RC_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Steinkohlemarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Steinkohlemarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_HC_MS_HCMarket_SS_TPS_energyLink(set_market_MS_HC,set_tech_SS_TPS) Energieverbindung
$LOAD par_X_HC_MS_HCMarket_SS_TPS_energyLink



* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Steinkohlemarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Steinkohlemarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_HC_MS_HCMarket_DES_CHP_energyLink(set_market_MS_HC,set_tech_DES_CHP) Energieverbindung
$LOAD par_X_HC_MS_HCMarket_DES_CHP_energyLink



* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Braunkohle zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Braunkohlemarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_L_MS_LMarket_SS_TPS_energyLink(set_market_MS_L,set_tech_SS_TPS) Energieverbindung
$LOAD par_X_L_MS_LMarket_SS_TPS_energyLink


* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Steinkohlemarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Steinkohlemarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_HC_MS_HCMarket_SS_CHP_energyLink(set_market_MS_HC,set_tech_SS_CHP) Energieverbindung
$LOAD par_X_HC_MS_HCMarket_SS_CHP_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Braunkohlemarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Braunkohlemarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_L_MS_LMarket_SS_CHP_energyLink(set_market_MS_L,set_tech_SS_CHP) Energieverbindung
$LOAD par_X_L_MS_LMarket_SS_CHP_energyLink


* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Braunkohlemarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Braunkohlemarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_L_MS_LMarket_DES_CHP_energyLink(set_market_MS_L,set_tech_DES_CHP) Energieverbindung
$LOAD par_X_L_MS_LMarket_DES_CHP_energyLink



* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_SS_CHP_MS_WMarket_energyLink(set_tech_SS_CHP,set_market_MS_W) Energieverbindung
$LOAD par_X_W_SS_CHP_MS_WMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Müllverwertungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Müllverwertungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_SS_RC_MS_WMarket_energyLink(set_tech_SS_RC,set_market_MS_W) Energieverbindung
$LOAD par_X_W_SS_RC_MS_WMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Elektrodenboiler zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Elektrodenboiler zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_SS_ETB_MS_WMarket_energyLink(set_tech_SS_ETB,set_market_MS_W) Energieverbindung
$LOAD par_X_W_SS_ETB_MS_WMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Spitzenlastkessel zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Spitzenlastkessel zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_SS_PLB_MS_WMarket_energyLink(set_tech_SS_PLB,set_market_MS_W) Energieverbindung
$LOAD par_X_W_SS_PLB_MS_WMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Solarthermie-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Solarthermie-Anlage zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_SS_TC_NS_WGrid_energyLink(set_tech_SS_TC,set_grid_NS_W) Energieverbindung
$LOAD par_X_W_SS_TC_NS_WGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Solarthermie-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Solarthermie-Anlage zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_SS_TC_MS_WMarket_energyLink(set_tech_SS_TC,set_market_MS_W) Energieverbindung
$LOAD par_X_W_SS_TC_MS_WMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Elektrodenboiler zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Elektrodenboiler zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_W_SS_ETB_NS_RGrid_energyLink(set_tech_SS_ETB,set_grid_NS_R) Energieverbindung
$LOAD par_X_W_SS_ETB_NS_RGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_SS_CHP_MS_RMarket_energyLink(set_tech_SS_CHP,set_market_MS_R) Energieverbindung
$LOAD par_X_R_SS_CHP_MS_RMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Müllverwertungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Müllverwertungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_SS_RC_MS_RMarket_energyLink(set_tech_SS_RC,set_market_MS_R) Energieverbindung
$LOAD par_X_R_SS_RC_MS_RMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Elektrodenboiler zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Elektrodenboiler zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_SS_ETB_MS_RMarket_energyLink(set_tech_SS_ETB,set_market_MS_R) Energieverbindung
$LOAD par_X_R_SS_ETB_MS_RMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Kondensationskraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll   Einlesen Energieverbindung von Kondensationskraftwerk zu Prosumstorer
* - type: Boolean
* - identifier: Energieverbindung von Kondensationskraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_SS_TPS_MS_RMarket_energyLink(set_tech_SS_TPS,set_market_MS_R) Energieverbindung
$LOAD par_X_R_SS_TPS_MS_RMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Pumpspeicherkraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll   Einlesen Energieverbindung von Pumpspeicherkraftwerk zu Prosumstorer
* - type: Boolean
* - identifier: Energieverbindung von Pumpspeicherkraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_SS_PHS_MS_RMarket_energyLink(set_tech_SS_PHS,set_market_MS_R) Energieverbindung
$LOAD par_X_R_SS_PHS_MS_RMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der PV-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von PV-Anlage zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_SS_PV_MS_RMarket_energyLink(set_tech_SS_PV,set_market_MS_R) Energieverbindung
$LOAD par_X_R_SS_PV_MS_RMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Windkraftanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Windkraftanlage zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_SS_WT_MS_RMarket_energyLink(set_tech_SS_WT,set_market_MS_R) Energieverbindung
$LOAD par_X_R_SS_WT_MS_RMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Biomassekraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Biomassekraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_SS_BGP_MS_RMarket_energyLink(set_tech_SS_BGP,set_market_MS_R) Energieverbindung
$LOAD par_X_R_SS_BGP_MS_RMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Laufwasserkraftwerk zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Laufwasserkraftwerk zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_SS_RH_MS_RMarket_energyLink(set_tech_SS_RH,set_market_MS_R) Energieverbindung
$LOAD par_X_R_SS_RH_MS_RMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Biomassemarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Biomassemarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_B_MS_BMarket_SS_PLB_energyLink(set_market_MS_B,set_tech_SS_PLB) Energieverbindung
$LOAD par_X_B_MS_BMarket_SS_PLB_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der PV-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von PV-Anlage zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_DES_PV_NS_RGrid_energyLink(set_tech_DES_PV,set_grid_NS_R) Energieverbindung
$LOAD par_X_R_DES_PV_NS_RGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_DES_CHP_NS_WGrid_energyLink(set_tech_DES_CHP,set_grid_NS_W) Energieverbindung
$LOAD par_X_W_DES_CHP_NS_WGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Strommarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Strommarkt zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_MS_fromEMarket_NS_toEGrid_energyLink(set_market_MS_E,set_grid_NS_E) Energieverbindung
$LOAD par_X_E_MS_fromEMarket_NS_toEGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Wärmemarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Wärmemarkt zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_MS_WMarket_NS_WGrid_energyLink(set_market_MS_W,set_grid_NS_W) Energieverbindung
$LOAD par_X_W_MS_WMarket_NS_WGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Stromnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Stromnetz zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_NS_fromEGrid_MS_toEMarket_energyLink(set_grid_NS_E,set_market_MS_E) Energieverbindung
$LOAD par_X_E_NS_fromEGrid_MS_toEMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Wärmemarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Wärmemarkt zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_NS_WGrid_MS_WMarket_energyLink(set_grid_NS_W,set_market_MS_W) Energieverbindung
$LOAD par_X_W_NS_WGrid_MS_WMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Reservemarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Reservemarkt zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_NS_RGrid_MS_RMarket_energyLink(set_grid_NS_R,set_market_MS_R) Energieverbindung
$LOAD par_X_R_NS_RGrid_MS_RMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Kältenetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kältenetz zu Prosumstorer
* - domain: [0|1]
* - color: LightSteelBlue
PARAMETER par_X_C_NS_CGrid_DS_CLoad_energyLink(set_grid_NS_C,set_load_DS_C) Energieverbindung
$LOAD par_X_C_NS_CGrid_DS_CLoad_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Kältemarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kältemarkt zu Prosumstorer
* - domain: [0|1]
* - color: LightSteelBlue
PARAMETER par_X_C_MS_CMarket_NS_CGrid_energyLink(set_market_MS_C,set_grid_NS_C) Energieverbindung
$LOAD par_X_C_MS_CMarket_NS_CGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kompressionskältemaschine zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kompressionskältemaschine zu Prosumstorer
* - domain: [0|1]
* - color: LightSteelBlue
PARAMETER par_X_C_DES_CR_NS_CGrid_energyLink(set_tech_DES_CR,set_grid_NS_C) Energieverbindung
$LOAD par_X_C_DES_CR_NS_CGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kompressionskältemaschine zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kompressionskältemaschine zu Prosumstorer
* - domain: [0|1]
* - color: LightSteelBlue
PARAMETER par_X_C_DES_CR_DS_CLoad_energyLink(set_tech_DES_CR,set_load_DS_C) Energieverbindung
$LOAD par_X_C_DES_CR_DS_CLoad_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Gasmarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Gasmarkt zu Prosumstorer
* - domain: [0|1]
* - color: DarkSlateGrey
PARAMETER par_X_G_MS_GMarket_NS_GGrid_energyLink(set_market_MS_G,set_grid_NS_G) Energieverbindung
$LOAD par_X_G_MS_GMarket_NS_GGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kompressionskältemaschine zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kompressionskältemaschine zu Prosumstorer
* - domain: [0|1]
* - color: LightSteelBlue
PARAMETER par_X_C_DES_CR_DES_CS_energyLink(set_tech_DES_CR,set_tech_DES_CS) Energieverbindung
$LOAD par_X_C_DES_CR_DES_CS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Absorptionskältemaschine zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Absorptionskältemaschine zu Prosumstorer
* - domain: [0|1]
* - color: LightSteelBlue
PARAMETER par_X_C_DES_SC_DES_CS_energyLink(set_tech_DES_SC,set_tech_DES_CS) Energieverbindung
$LOAD par_X_C_DES_SC_DES_CS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Käktenetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kältenetz zu Prosumstorer
* - domain: [0|1]
* - color: LightSteelBlue
PARAMETER par_X_C_NS_fromCGrid_DES_toCS_energyLink(set_grid_NS_C,set_tech_DES_CS) Energieverbindung
$LOAD par_X_C_NS_fromCGrid_DES_toCS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Kältespeicher zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kältespeicher zu Prosumstorer
* - domain: [0|1]
* - color: LightSteelBlue
PARAMETER par_X_C_DES_CS_DS_CLoad_energyLink(set_tech_DES_CS,set_load_DS_C) Energieverbindung
$LOAD par_X_C_DES_CS_DS_CLoad_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Kältespeicher zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kältespeicher zu Prosumstorer
* - domain: [0|1]
* - color: LightSteelBlue
PARAMETER par_X_C_DES_fromCS_NS_toCGrid_energyLink(set_tech_DES_CS,set_grid_NS_C) Energieverbindung
$LOAD par_X_C_DES_fromCS_NS_toCGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Stromspeicher zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Stromspeicher zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_ES_DES_CR_energyLink(set_tech_DES_ES,set_tech_DES_CR) Energieverbindung
$LOAD par_X_E_DES_ES_DES_CR_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der PV-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von PV-Anlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_PV_DES_CR_energyLink(set_tech_DES_PV,set_tech_DES_CR) Energieverbindung
$LOAD par_X_E_DES_PV_DES_CR_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kompressionskältemaschine zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kompressionskältemaschine zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_C_DES_CR_NS_RGrid_energyLink(set_tech_DES_CR,set_grid_NS_R) Energieverbindung
$LOAD par_X_C_DES_CR_NS_RGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_CHP_DES_CR_energyLink(set_tech_DES_CHP,set_tech_DES_CR) Energieverbindung
$LOAD par_X_E_DES_CHP_DES_CR_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Stromnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Stromnetz zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_NS_EGrid_DES_CR_energyLink(set_grid_NS_E,set_tech_DES_CR) Energieverbindung
$LOAD par_X_E_NS_EGrid_DES_CR_energyLink

* - description:  Bitte legen Sie hier fest, ob eine Energieverbindung vom Wärmenetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Wärmenetz zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_NS_WGrid_DES_CR_energyLink(set_grid_NS_W,set_tech_DES_CR) Energieverbindung
$LOAD par_X_W_NS_WGrid_DES_CR_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von Solarthermie-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Solarthermie-Anlage zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_DES_ST_DES_CR_energyLink(set_tech_DES_ST,set_tech_DES_CR) Energieverbindung
$LOAD par_X_W_DES_ST_DES_CR_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von Solarthermie-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage (Wärme) zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_DES_CHP_W_DES_CR_energyLink(set_tech_DES_CHP,set_tech_DES_CR) Energieverbindung
$LOAD par_X_DES_CHP_W_DES_CR_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von Wärmespeicher zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Wärmespeicher zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_DES_TS_DES_CR_energyLink(set_tech_DES_TS,set_tech_DES_CR) Energieverbindung
$LOAD par_X_W_DES_TS_DES_CR_energyLink

* - description: Einlesen Energieverbindung von Wärmenetzen zu Prosumstorer
* - type: Boolean
* - identifier: Energieverbindung von Wärmenetzen zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_NS_WGrid_DES_SC_energyLink(set_grid_NS_W,set_tech_DES_SC) Energieverbindung
$LOAD par_X_W_NS_WGrid_DES_SC_energyLink

* - description: Einlesen Energieverbindung von Solarthermie-Anlagen zu Prosumstorer
* - type: Boolean
* - identifier: Energieverbindung von Solarthermie-Anlagen zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_DES_ST_DES_SC_energyLink(set_tech_DES_ST,set_tech_DES_SC) Energieverbindung
$LOAD par_X_W_DES_ST_DES_SC_energyLink

* - description: Einlesen Energieverbindung von Kraft-Wärme-Kopplungsanlagen zu Prosumstorer
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlagen zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_DES_CHP_DES_SC_energyLink(set_tech_DES_CHP,set_tech_DES_SC) Energieverbindung
$LOAD par_X_W_DES_CHP_DES_SC_energyLink

* - description: Einlesen Energieverbindung von Wärmespeicher zu Prosumstorer
* - type: Boolean
* - identifier: Energieverbindung von Wärmespeicher zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_DES_TS_DES_SC_energyLink(set_tech_DES_TS,set_tech_DES_SC) Energieverbindung
$LOAD par_X_W_DES_TS_DES_SC_energyLink

* - description: Einlesen Energieverbindung von Absorptionskältemaschine zu Prosumstorer
* - type: Boolean
* - identifier: Energieverbindung von Absorptionskältemaschine zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_C_DES_SC_NS_CGrid_energyLink(set_tech_DES_SC,set_grid_NS_C) Energieverbindung
$LOAD par_X_C_DES_SC_NS_CGrid_energyLink

* - description: Einlesen Energieverbindung von Absorptionskältemaschine zu Prosumstorer
* - type: Boolean
* - identifier: Energieverbindung von Absorptionskältemaschine zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_C_DES_SC_DS_CLoad_energyLink(set_tech_DES_SC,set_load_DS_C) Energieverbindung
$LOAD par_X_C_DES_SC_DS_CLoad_energyLink

* - description: Einlesen Energieverbindung von Heizkessel zu Prosumstorer
* - type: Boolean
* - identifier: Energieverbindung von Heizkessel zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_DES_NGB_DES_SC_energyLink(set_tech_DES_NGB,set_tech_DES_SC) Energieverbindung
$LOAD par_X_W_DES_NGB_DES_SC_energyLink

* - description: Einlesen Energieverbindung von Durchlauferhitzer zu Prosumstorer
* - type: Boolean
* - identifier: Energieverbindung von Durchlauferhitzer zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_DES_EB_DES_SC_energyLink(set_tech_DES_EB,set_tech_DES_SC) Energieverbindung
$LOAD par_X_W_DES_EB_DES_SC_energyLink

* - description: Einlesen Energieverbindung von Durchlauferhitzer zu Prosumstorer
* - type: Boolean
* - identifier: Energieverbindung von Durchlauferhitzer zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_DES_EB_NS_WGrid_energyLink(set_tech_DES_EB,set_grid_NS_W) Energieverbindung
$LOAD par_X_W_DES_EB_NS_WGrid_energyLink

* - description: Einlesen Energieverbindung von Wärmepumpe zu Prosumstorer
* - type: Boolean
* - identifier: Energieverbindung von Wärmepumpe zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_DES_HP_DES_SC_energyLink(set_tech_DES_HP,set_tech_DES_SC) Energieverbindung
$LOAD par_X_W_DES_HP_DES_SC_energyLink

* - description: Einlesen Energieverbindung von Wärmepumpe zu Prosumstorer
* - type: Boolean
* - identifier: Energieverbindung von Wärmepumpe zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_DES_HP_NS_WGrid_energyLink(set_tech_DES_HP,set_grid_NS_W) Energieverbindung
$LOAD par_X_W_DES_HP_NS_WGrid_energyLink

* - description: Einlesen Energieverbindung von Heizkessel zu Prosumstorer
* - type: Boolean
* - identifier: Energieverbindung von Heizkessel zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_W_DES_NGB_NS_WGrid_energyLink(set_tech_DES_NGB,set_grid_NS_W) Energieverbindung
$LOAD par_X_W_DES_NGB_NS_WGrid_energyLink




* - description: Einlesen Energieverbindung von Heizkessel zu Prosumstorer
* - type: Boolean
* - identifier: Energieverbindung von Heizkessel zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_H_DES_NGB_NS_HGrid_energyLink(set_tech_DES_NGB,set_grid_NS_H) Energieverbindung
$LOAD par_X_H_DES_NGB_NS_HGrid_energyLink

* - description: Einlesen Energieverbindung von Heizkessel zu Prosumstorer
* - type: Boolean
* - identifier: Energieverbindung von Heizkessel zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_H_DES_NGB_DES_HS_energyLink(set_tech_DES_NGB,set_tech_DES_HS) Energieverbindung
$LOAD par_X_H_DES_NGB_DES_HS_energyLink

* - description: Einlesen Energieverbindung von Heizkessel zu Prosumstorer
* - type: Boolean
* - identifier: Energieverbindung von Heizkessel zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_H_DES_NGB_DS_H_energyLink(set_tech_DES_NGB,set_load_DS_H) Energieverbindung
$LOAD par_X_H_DES_NGB_DS_H_energyLink





* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_CHP_DES_EB_energyLink(set_tech_SS_CHP,set_tech_DES_EB) Energieverbindung
$LOAD par_X_E_SS_CHP_DES_EB_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_SS_CHP_DES_HP_energyLink(set_tech_SS_CHP,set_tech_DES_HP) Energieverbindung
$LOAD par_X_E_SS_CHP_DES_HP_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_W_SS_CHP_DS_W_energyLink(set_tech_SS_CHP,set_load_DS_W) Energieverbindung
$LOAD par_X_W_SS_CHP_DS_W_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_W_SS_CHP_DES_TS_energyLink(set_tech_SS_CHP,set_tech_DES_TS) Energieverbindung
$LOAD par_X_W_SS_CHP_DES_TS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kehrrichtverwertungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Müllverwertungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_W_SS_RC_DES_TS_energyLink(set_tech_SS_RC,set_tech_DES_TS) Energieverbindung
$LOAD par_X_W_SS_RC_DES_TS_energyLink


* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Biomassemarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Biomassemarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_B_MS_BMarket_DES_CHP_energyLink(set_market_MS_B,set_tech_DES_CHP) Energieverbindung
$LOAD par_X_B_MS_BMarket_DES_CHP_energyLink













