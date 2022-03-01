***-----------------------------------------------------------------------------
***Interne Definition set_powerLink
***-----------------------------------------------------------------------------
set_powerLink(set_power_E,'Pos','E','EGrid',set_load_DS_E)$(par_X_DS_E_powerLinkE(set_load_DS_E,set_power_E)=1)=yes;
set_powerLink(set_power_E,'Neg','E',set_tech_DES_PV,'EGrid')$(par_X_E_DES_PV_powerLinkE(set_tech_DES_PV,set_power_E)=1)=yes;
set_powerLink(set_power_E,'Pos','E','EGrid',set_tech_DES_ES)$(par_X_E_DES_ES_powerLinkE(set_tech_DES_ES,set_power_E)=1)=yes;
set_powerLink(set_power_E,'Pos','E','EGrid',set_tech_DES_EB)$(par_X_W_DES_EB_powerLinkE(set_tech_DES_EB,set_power_E)=1)=yes;
set_powerLink(set_power_E,'Pos','E','EGrid',set_tech_DES_HP)$(par_X_W_DES_HP_powerLinkE(set_tech_DES_HP,set_power_E)=1)=yes;
set_powerLink(set_power_E,'Neg','E',set_tech_DES_CHP,'EGrid')$(par_X_DES_CHP_powerLinkE(set_tech_DES_CHP,set_power_E)=1)=yes;
set_powerLink(set_power_E,'Pos','E','EGrid',set_tech_DES_CR)$(par_X_C_DES_CR_powerLinkE(set_tech_DES_CR,set_power_E)=1)=yes;
set_powerLink(set_power_E,'Pos','E',set_market_MS_E,'EGrid')$(par_X_E_MS_E_powerLinkE(set_market_MS_E,set_power_E)=1)=yes;

*Setzen der Notenergieverbindungen, wenn die Leistungsmessungsbegrenzung auf Kundenseite zu gering für die nachgefragte Last ist
set_energyLink('E','EMarket',set_load_DS_E)$(SUM(set_power_E$set_powerLink(set_power_E,'Pos','E','EGrid',set_load_DS_E),1 AND par_X_power_max(set_power_E))>0 AND par_X_pss_model(set_load_DS_E)=1) = yes;
set_energyLink('E','EMarket',set_tech_DES_ES)$(SUM(set_power_E$set_powerLink(set_power_E,'Pos','E','EGrid',set_tech_DES_ES),1 AND par_X_power_max(set_power_E))>0 AND par_X_pss_model(set_tech_DES_ES)=1) = yes;
set_energyLink('E','EMarket',set_tech_DES_EB)$(SUM(set_power_E$set_powerLink(set_power_E,'Pos','E','EGrid',set_tech_DES_EB),1 AND par_X_power_max(set_power_E))>0 AND par_X_pss_model(set_tech_DES_EB)=1) = yes;
set_energyLink('E','EMarket',set_tech_DES_HP)$(SUM(set_power_E$set_powerLink(set_power_E,'Pos','E','EGrid',set_tech_DES_HP),1 AND par_X_power_max(set_power_E))>0 AND par_X_pss_model(set_tech_DES_HP)=1) = yes;
set_energyLink('E','EMarket',set_tech_DES_CR)$(SUM(set_power_E$set_powerLink(set_power_E,'Pos','E','EGrid',set_tech_DES_CR),1 AND par_X_power_max(set_power_E))>0 AND par_X_pss_model(set_tech_DES_CR)=1) = yes;

set_powerLink(set_power_W,'Pos','W','WGrid',set_load_DS_W)$(par_X_DS_W_powerLinkW(set_load_DS_W,set_power_W)=1)=yes;
set_powerLink(set_power_W,'Pos','W','WGrid',set_tech_DES_TS)$(par_X_W_DES_TS_powerLinkW(set_tech_DES_TS,set_power_W)=1)=yes;
set_powerLink(set_power_W,'Pos','W','WGrid',set_tech_DES_SC)$(par_X_C_DES_SC_powerLinkW(set_tech_DES_SC,set_power_W)=1)=yes;
set_powerLink(set_power_W,'Neg','W',set_tech_DES_HP,'WGrid')$(par_X_W_DES_HP_powerLinkW(set_tech_DES_HP,set_power_W)=1)=yes;
set_powerLink(set_power_W,'Neg','W',set_tech_DES_TS,'WGrid')$(par_X_W_DES_TS_powerLinkW(set_tech_DES_TS,set_power_W)=1)=yes;
set_powerLink(set_power_W,'Neg','W',set_tech_DES_EB,'WGrid')$(par_X_W_DES_EB_powerLinkW(set_tech_DES_EB,set_power_W)=1)=yes;
set_powerLink(set_power_W,'Neg','W',set_tech_DES_NGB,'WGrid')$(par_X_W_DES_NGB_powerLinkW(set_tech_DES_NGB,set_power_W)=1)=yes;
set_powerLink(set_power_W,'Neg','W',set_tech_DES_ST,'WGrid')$(par_X_W_DES_ST_powerLinkW(set_tech_DES_ST,set_power_W)=1)=yes;

set_powerLink(set_power_G,'Pos','G','GGrid',set_load_DS_G)$(par_X_DS_G_powerLinkG(set_load_DS_G,set_power_G)=1)=yes;
set_powerLink(set_power_G,'Pos','G','GGrid',set_tech_DES_NGB)$(par_X_W_DES_NGB_powerLinkG(set_tech_DES_NGB,set_power_G)=1)=yes;
set_powerLink(set_power_G,'Pos','G','GGrid',set_tech_DES_CHP)$(par_X_DES_CHP_powerLinkG(set_tech_DES_CHP,set_power_G)=1)=yes;

set_powerLink(set_power_G,'Pos','G','GMarket','GGrid')$(par_X_G_MS_G_powerLinkG('GMarket',set_power_G)=1)=yes;
set_powerLink(set_power_E_MS,'Pos','E','EMarket','EGrid')=yes;

par_DF_powerLink(set_power_E)=par_DF_powerLinkE(set_power_E);
par_DF_powerLink(set_power_W)=par_DF_powerLinkW(set_power_W);
par_DF_powerLink(set_power_G)=par_DF_powerLinkG(set_power_G);
par_DF_powerLink(set_power_H)=par_DF_powerLinkH(set_power_H);
par_DF_powerLink(set_power_E_MS)=1;
par_DF_powerLink(set_power_G_MS)=1;
