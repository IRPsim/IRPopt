*dependencies: set_pss = set_toPss = set_fromPss
*projections: [set_sector:'F', set_fromPss:[set_load_DS_E,set_tech_DES_PV], set_toPss:[set_tech_DES_ES], Identifier: XYZ, Einheit: EUR, Wertebereich: [MWh])
*projection:  [set_sector:'G', set_fromPss:[set_load_DS_E,set_tech_DES_PV], set_toPss:[set_tech_DES_ES]]
*Identifier: Energiefluss von [set_sector] zu [set_toPss]
*Einheit: [CHF]
*
*
*
set set_energyLink(set_sector,set_fromPss,set_toPss);
*1Schritt: Eingabeparameter

par_X_E_LoadDSE_techDESES(set_Load_DS_E,set_tech_DES_ES);


*Identifier: Energiefluss von [set_Load_DS_E] zu [set_tech_DES_ES]
*Identfier: Energiefluss von Elektrische Lastgänge zu Elektische Speicher

*
*Identifier: Energiefluss von [set_sector] zu [set_toPss]
*
*
*
*


*
*Identifier: Energiefluss von [set_sector] zu [set_toPss]
*
*
*
*
par_energyLink_G_LoadDSE_techDESES(set_Load_DS_E,set_tech_DES_ES);
par_energyLink_E_LoadDSE_techDESES(set_Load_DS_G,set_tech_DES_ES);
par_energyLink_G_LoadDSE_techDESES(set_Load_DS_G,set_tech_DES_ES);


*Zuweisung
*Abfrage
set_energyLink(set_sector,set_fromPss,set_toPss)=No
set_energyLink('E',set_Load_DS_E,set_tech_DES_ES)=YES$par_energyLink_E_LoadDSE_techDESES(set_Load_DS_E,set_tech_DES_ES);


*Übergabe des Werts
par_energyLink('E',set_Load_DS_E,set_tech_DES_ES)=par_energyLink_E_LoadDSE_techDESES(set_Load_DS_E,set_tech_DES_ES);