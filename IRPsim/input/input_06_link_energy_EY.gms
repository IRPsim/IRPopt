* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Elektrolyseur zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Elektrolyseur zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_H_DES_EY_DES_FC_energyLink(set_tech_DES_EY,set_tech_DES_FC) Energieverbindung
$LOAD par_X_H_DES_EY_DES_FC_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Elektrolyseur zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Elektrolyseur zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_H_DES_EY_NS_HGrid_energyLink(set_tech_DES_EY,set_grid_NS_H) Energieverbindung
$LOAD par_X_H_DES_EY_NS_HGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Wasserstoffspeicher zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Wasserstoffspeicher zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_H_DES_HS_MS_HMarket_energyLink(set_tech_DES_HS,set_market_MS_H) Energieverbindung
$LOAD par_X_H_DES_HS_MS_HMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Wasserstoffmarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Wasserstoffmarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_H_MS_HMarket_DES_HS_energyLink(set_market_MS_H,set_tech_DES_HS) Energieverbindung
$LOAD par_X_H_MS_HMarket_DES_HS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Elektrolyseur zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Elektrolyseur zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_H_DES_EY_DES_HS_energyLink(set_tech_DES_EY,set_tech_DES_HS) Energieverbindung
$LOAD par_X_H_DES_EY_DES_HS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Elektrolyseur zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Elektrolyseur zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_H_DES_EY_DS_HLoad_energyLink(set_tech_DES_EY,set_load_DS_H) Energieverbindung
$LOAD par_X_H_DES_EY_DS_HLoad_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Elektrolyseur zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Elektrolyseur zu Prosumstorer
* - domain: [0|1]
* - color: LightSlateGrey
PARAMETER par_X_R_DES_EY_NS_RGrid_energyLink(set_tech_DES_EY,set_grid_NS_R) Energieverbindung
$LOAD par_X_R_DES_EY_NS_RGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Stromspeicher zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Stromspeicher zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_ES_DES_EY_energyLink(set_tech_DES_ES,set_tech_DES_EY) Energieverbindung
$LOAD par_X_E_DES_ES_DES_EY_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der PV-Anlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von PV-Anlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_PV_DES_EY_energyLink(set_tech_DES_PV,set_tech_DES_EY) Energieverbindung
$LOAD par_X_E_DES_PV_DES_EY_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Kraft-Wärme-Kopplungsanlage zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_DES_CHP_DES_EY_energyLink(set_tech_DES_CHP,set_tech_DES_EY) Energieverbindung
$LOAD par_X_E_DES_CHP_DES_EY_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Stromnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Stromnetz zu Prosumstorer
* - domain: [0|1]
* - color: DarkCyan
PARAMETER par_X_E_NS_EGrid_DES_EY_energyLink(set_grid_NS_E,set_tech_DES_EY) Energieverbindung
$LOAD par_X_E_NS_EGrid_DES_EY_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Wasserstoffspeicher zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung vom Wasserstoffspeicher zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_H_DES_HS_DS_HLoad_energyLink(set_tech_DES_HS,set_load_DS_H) Energieverbindung
$LOAD par_X_H_DES_HS_DS_HLoad_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Wasserstoffspeicher zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung vom Wasserstoffspeicher zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_H_DES_HS_DES_FC_energyLink(set_tech_DES_HS,set_tech_DES_FC) Energieverbindung
$LOAD par_X_H_DES_HS_DES_FC_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Wasserstoffnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung vom Wasserstoffnetz zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_H_NS_fromHGrid_DES_toHS_energyLink(set_grid_NS_H,set_tech_DES_HS) Energieverbindung
$LOAD par_X_H_NS_fromHGrid_DES_toHS_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Wasserstoffspeicher zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung vom Wasserstoffspeicher zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_H_DES_fromHS_NS_toHGrid_energyLink(set_tech_DES_HS,set_grid_NS_H) Energieverbindung
$LOAD par_X_H_DES_fromHS_NS_toHGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Wasserstoffnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung vom Wasserstoffnetz zu Prosumstorer
* - domain: [0|1]
* - color: DodgerBlue
PARAMETER par_X_H_NS_HGrid_DS_HLoad_energyLink(set_grid_NS_H,set_load_DS_H) Energieverbindung
$LOAD par_X_H_NS_HGrid_DS_HLoad_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Wasserstoffmarkt zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Wasserstoffmarkt zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_H_MS_HMarket_NS_HGrid_energyLink(set_market_MS_H,set_grid_NS_H) Energieverbindung
$LOAD par_X_H_MS_HMarket_NS_HGrid_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Wasserstoffnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Wasserstoffnetz zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_H_NS_HGrid_MS_HMarket_energyLink(set_grid_NS_H,set_market_MS_H) Energieverbindung
$LOAD par_X_H_NS_HGrid_MS_HMarket_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung vom Wasserstoffnetz zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von Wasserstoffnetz zu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_H_NS_HGrid_DES_FC_energyLink(set_grid_NS_H,set_tech_DES_FC) Energieverbindung
$LOAD par_X_H_NS_HGrid_DES_FC_energyLink

* - description: Bitte legen Sie hier fest, ob eine Energieverbindung von der Brennstoffzelle  zu folgendem Prosumstorer (Technologie, Last, Netz, Markt etc.) bestehen soll
* - type: Boolean
* - identifier: Energieverbindung von der Brennstoffzellezu Prosumstorer
* - domain: [0|1]
PARAMETER par_X_E_DES_FC_NS_EGrid_energyLink(set_tech_DES_FC,set_grid_NS_E) Energieverbindung
$LOAD par_X_E_DES_FC_NS_EGrid_energyLink