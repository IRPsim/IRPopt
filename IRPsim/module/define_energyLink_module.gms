set_energyLink(set_sector,set_fromPss,set_toPss)=No;

set_energyLink('E','EMarket',set_grid_NS_E)$(par_X_E_MS_fromEMarket_NS_toEGrid_energyLink('EMarket',set_grid_NS_E)=1 and par_X_pss_model('EMarket')=1 and par_X_pss_model(set_grid_NS_E)=1) = yes;

set_energyLink('E',set_grid_NS_E,set_load_DS_E)$(par_X_E_NS_EGrid_DS_ELoad_energyLink(set_grid_NS_E,set_load_DS_E)=1 and par_X_pss_model(set_load_DS_E)=1) = yes;
set_energyLink('E',set_grid_NS_E,'EMarket')$(par_X_E_NS_fromEGrid_MS_toEMarket_energyLink(set_grid_NS_E,'EMarket')=1 and par_X_pss_model('EMarket')=1 and par_X_pss_model(set_grid_NS_E)=1) = yes;
set_energyLink('E',set_grid_NS_E,set_tech_DES_ES)$(par_X_E_NS_fromEGrid_DES_toES_energyLink(set_grid_NS_E,set_tech_DES_ES)=1 and par_X_pss_model(set_tech_DES_ES)=1) = yes;
set_energyLink('E',set_grid_NS_E,set_tech_DES_HP)$(par_X_E_NS_EGrid_DES_HP_energyLink(set_grid_NS_E,set_tech_DES_HP)=1 and par_X_pss_model(set_tech_DES_HP)=1) = yes;
set_energyLink('E',set_grid_NS_E,set_tech_DES_EB)$(par_X_E_NS_EGrid_DES_EB_energyLink(set_grid_NS_E,set_tech_DES_EB)=1 and par_X_pss_model(set_tech_DES_EB)=1) = yes;
set_energyLink('E',set_grid_NS_E,set_tech_DES_CR)$(par_X_E_NS_EGrid_DES_CR_energyLink(set_grid_NS_E,set_tech_DES_CR)=1 and par_X_pss_model(set_tech_DES_CR)=1) = yes;
set_energyLink('E',set_grid_NS_E,set_tech_DES_EY)$(par_X_E_NS_EGrid_DES_EY_energyLink(set_grid_NS_E,set_tech_DES_EY)=1 and par_X_pss_model(set_tech_DES_EY)=1) = yes;

set_energyLink('E',set_tech_DES_ES,set_load_DS_E)$(par_X_E_DES_ES_DS_ELoad_energyLink(set_tech_DES_ES,set_load_DS_E)=1 and par_X_pss_model(set_load_DS_E)=1 and par_X_pss_model(set_tech_DES_ES)=1) = yes;
set_energyLink('E',set_tech_DES_ES,set_tech_DES_HP)$(par_X_E_DES_ES_DES_HP_energyLink(set_tech_DES_ES,set_tech_DES_HP)=1 and par_X_pss_model(set_tech_DES_HP)=1 and par_X_pss_model(set_tech_DES_ES)=1) = yes;
set_energyLink('E',set_tech_DES_ES,set_tech_DES_EB)$(par_X_E_DES_ES_DES_EB_energyLink(set_tech_DES_ES,set_tech_DES_EB)=1 and par_X_pss_model(set_tech_DES_EB)=1 and par_X_pss_model(set_tech_DES_ES)=1) = yes;
set_energyLink('E',set_tech_DES_ES,set_grid_NS_E)$(par_X_E_DES_fromES_NS_toEGrid_energyLink(set_tech_DES_ES,set_grid_NS_E)=1 and par_X_pss_model(set_tech_DES_ES)=1) = yes;
set_energyLink('E',set_tech_DES_ES,set_tech_DES_CR)$(par_X_E_DES_ES_DES_CR_energyLink(set_tech_DES_ES,set_tech_DES_CR)=1 and par_X_pss_model(set_tech_DES_CR)=1 and par_X_pss_model(set_tech_DES_ES)=1) = yes;
set_energyLink('E',set_tech_DES_fromES,set_tech_DES_toES)$(par_X_E_DES_fromES_DES_toES_energyLink(set_tech_DES_fromES,set_tech_DES_toES)=1 and par_X_pss_model(set_tech_DES_fromES)=1 and par_X_pss_model(set_tech_DES_toES)=1)= yes;
set_energyLink('E',set_tech_DES_ES,set_tech_DES_EY)$(par_X_E_DES_ES_DES_EY_energyLink(set_tech_DES_ES,set_tech_DES_EY)=1 and par_X_pss_model(set_tech_DES_EY)=1 and par_X_pss_model(set_tech_DES_ES)=1) = yes;

set_energyLink('E',set_tech_DES_PV,set_load_DS_E)$(par_X_E_DES_PV_DS_ELoad_energyLink(set_tech_DES_PV,set_load_DS_E)=1 and par_X_pss_model(set_tech_DES_PV)=1 and par_X_pss_model(set_load_DS_E)=1) = yes;
set_energyLink('E',set_tech_DES_PV,set_tech_DES_ES)$(par_X_E_DES_PV_DES_ES_energyLink(set_tech_DES_PV,set_tech_DES_ES)=1 and par_X_pss_model(set_tech_DES_PV)=1 and par_X_pss_model(set_tech_DES_ES)=1) = yes;
set_energyLink('E',set_tech_DES_PV,set_tech_DES_EB)$(par_X_E_DES_PV_DES_EB_energyLink(set_tech_DES_PV,set_tech_DES_EB)=1 and par_X_pss_model(set_tech_DES_PV)=1 and par_X_pss_model(set_tech_DES_EB)=1) = yes;
set_energyLink('E',set_tech_DES_PV,set_tech_DES_HP)$(par_X_E_DES_PV_DES_HP_energyLink(set_tech_DES_PV,set_tech_DES_HP)=1 and par_X_pss_model(set_tech_DES_PV)=1 and par_X_pss_model(set_tech_DES_HP)=1) = yes;
set_energyLink('E',set_tech_DES_PV,set_grid_NS_E)$(par_X_E_DES_PV_NS_EGrid_energyLink(set_tech_DES_PV,set_grid_NS_E)=1 and par_X_pss_model(set_tech_DES_PV)=1) = yes;
set_energyLink('E',set_tech_DES_PV,set_tech_DES_CR)$(par_X_E_DES_PV_DES_CR_energyLink(set_tech_DES_PV,set_tech_DES_CR)=1 and par_X_pss_model(set_tech_DES_PV)=1 and par_X_pss_model(set_tech_DES_CR)=1) = yes;
set_energyLink('E',set_tech_DES_PV,set_tech_DES_EY)$(par_X_E_DES_PV_DES_EY_energyLink(set_tech_DES_PV,set_tech_DES_EY)=1 and par_X_pss_model(set_tech_DES_PV)=1 and par_X_pss_model(set_tech_DES_EY)=1) = yes;

set_energyLink('E',set_tech_DES_CHP,set_load_DS_E)$(par_X_E_DES_CHP_DS_ELoad_energyLink(set_tech_DES_CHP,set_load_DS_E)=1 and par_X_pss_model(set_tech_DES_CHP)=1 and par_X_pss_model(set_load_DS_E)=1) = yes;
set_energyLink('E',set_tech_DES_CHP,set_tech_DES_ES)$(par_X_E_DES_CHP_DES_ES_energyLink(set_tech_DES_CHP,set_tech_DES_ES)=1 and par_X_pss_model(set_tech_DES_CHP)=1 and par_X_pss_model(set_tech_DES_ES)=1) = yes;
set_energyLink('E',set_tech_DES_CHP,set_tech_DES_EB)$(par_X_E_DES_CHP_DES_EB_energyLink(set_tech_DES_CHP,set_tech_DES_EB)=1 and par_X_pss_model(set_tech_DES_CHP)=1 and par_X_pss_model(set_tech_DES_EB)=1) = yes;
set_energyLink('E',set_tech_DES_CHP,set_tech_DES_HP)$(par_X_E_DES_CHP_DES_HP_energyLink(set_tech_DES_CHP,set_tech_DES_HP)=1 and par_X_pss_model(set_tech_DES_CHP)=1 and par_X_pss_model(set_tech_DES_HP)=1) = yes;
set_energyLink('E',set_tech_DES_CHP,set_grid_NS_E)$(par_X_E_DES_CHP_NS_EGrid_energyLink(set_tech_DES_CHP,set_grid_NS_E)=1 and par_X_pss_model(set_tech_DES_CHP)=1) = yes;
set_energyLink('E',set_tech_DES_CHP,set_tech_DES_CR)$(par_X_E_DES_CHP_DES_CR_energyLink(set_tech_DES_CHP,set_tech_DES_CR)=1 and par_X_pss_model(set_tech_DES_CHP)=1 and par_X_pss_model(set_tech_DES_CR)=1) = yes;
set_energyLink('E',set_tech_DES_CHP,set_tech_DES_EY)$(par_X_E_DES_CHP_DES_EY_energyLink(set_tech_DES_CHP,set_tech_DES_EY)=1 and par_X_pss_model(set_tech_DES_CHP)=1 and par_X_pss_model(set_tech_DES_EY)=1) = yes;


set_energyLink('C','CMarket',set_grid_NS_C)$(par_X_pss_model(set_grid_NS_C)=1)= yes;
set_energyLink('C',set_grid_NS_C,set_load_DS_C)$(par_X_C_NS_CGrid_DS_CLoad_energyLink(set_grid_NS_C,set_load_DS_C)=1 and par_X_pss_model(set_load_DS_C)=1) = yes;
set_energyLink('C',set_grid_NS_C,set_tech_DES_CS)$(par_X_C_NS_fromCGrid_DES_toCS_energyLink(set_grid_NS_C,set_tech_DES_CS)=1 and par_X_pss_model(set_tech_DES_CS)=1) = yes;
set_energyLink('C',set_tech_DES_CS,set_load_DS_C)$(par_X_C_DES_CS_DS_CLoad_energyLink(set_tech_DES_CS,set_load_DS_C)=1 and par_X_pss_model(set_tech_DES_CS)=1 and par_X_pss_model(set_load_DS_C)=1) = yes;
set_energyLink('C',set_tech_DES_CS,set_grid_NS_C)$(par_X_C_DES_fromCS_NS_toCGrid_energyLink(set_tech_DES_CS,set_grid_NS_C)=1 and par_X_pss_model(set_tech_DES_CS)=1 and par_X_pss_model(set_grid_NS_C)=1) = yes;
set_energyLink('C',set_tech_DES_CR,set_load_DS_C)$(par_X_C_DES_CR_DS_CLoad_energyLink(set_tech_DES_CR,set_load_DS_C)=1 and par_X_pss_model(set_tech_DES_CR)=1 and par_X_pss_model(set_load_DS_C)=1) = yes;
set_energyLink('C',set_tech_DES_CR,set_tech_DES_CS)$(par_X_C_DES_CR_DES_CS_energyLink(set_tech_DES_CR,set_tech_DES_CS)=1 and par_X_pss_model(set_tech_DES_CR)=1 and par_X_pss_model(set_tech_DES_CS)=1) = yes;
set_energyLink('C',set_tech_DES_CR,set_grid_NS_C)$(par_X_C_DES_CR_NS_CGrid_energyLink(set_tech_DES_CR,set_grid_NS_C)=1 and par_X_pss_model(set_tech_DES_CR)=1 and par_X_pss_model(set_grid_NS_C)=1) = yes;
set_energyLink('C',set_tech_DES_SC,set_load_DS_C)$(par_X_C_DES_SC_DS_CLoad_energyLink(set_tech_DES_SC,set_load_DS_C)=1 and par_X_pss_model(set_tech_DES_SC)=1 and par_X_pss_model(set_load_DS_C)=1) = yes;
set_energyLink('C',set_tech_DES_SC,set_tech_DES_CS)$(par_X_C_DES_SC_DES_CS_energyLink(set_tech_DES_SC,set_tech_DES_CS)=1 and par_X_pss_model(set_tech_DES_SC)=1 and par_X_pss_model(set_tech_DES_CS)=1) = yes;
set_energyLink('C',set_tech_DES_SC,set_grid_NS_C)$(par_X_C_DES_SC_NS_CGrid_energyLink(set_tech_DES_SC,set_grid_NS_C)=1 and par_X_pss_model(set_tech_DES_SC)=1 and par_X_pss_model(set_grid_NS_C)=1) = yes;


set_energyLink('W','WMarket',set_grid_NS_W)$(par_X_W_MS_WMarket_NS_WGrid_energyLink('WMarket',set_grid_NS_W)=1 and par_X_pss_model('WMarket')=1 and par_X_pss_model(set_grid_NS_W)=1) = yes;
set_energyLink('W',set_grid_NS_W,'WMarket')$(par_X_W_NS_WGrid_MS_WMarket_energyLink(set_grid_NS_W,'WMarket')=1 and par_X_pss_model('WMarket')=1 and par_X_pss_model(set_grid_NS_W)=1) = yes;
set_energyLink('W',set_grid_NS_W,set_load_DS_W)$(par_X_W_NS_WGrid_DS_WLoad_energyLink(set_grid_NS_W,set_load_DS_W)=1 and par_X_pss_model(set_load_DS_W)=1) = yes;
set_energyLink('W',set_grid_NS_W,set_tech_DES_TS)$(par_X_W_NS_fromWGrid_DES_toTS_energyLink(set_grid_NS_W,set_tech_DES_TS)=1 and par_X_pss_model(set_tech_DES_TS)=1) = yes;
set_energyLink('W',set_grid_NS_W,set_tech_DES_CR)$(par_X_W_NS_WGrid_DES_CR_energyLink(set_grid_NS_W,set_tech_DES_CR)=1 and par_X_pss_model(set_tech_DES_CR)=1) = yes;
set_energyLink('W','WMarket',set_load_DS_W)$(sum(set_grid_NS_W$set_energyLink('W',set_grid_NS_W,set_load_DS_W),1)=0 AND sum(set_side$par_OH_DS_WL_side(set_side,set_load_DS_W),1)=1 and par_X_pss_model(set_load_DS_W)=1) = yes;

set_energyLink('W',set_tech_DES_TS,set_load_DS_W)$(par_X_W_DES_TS_DS_WLoad_energyLink(set_tech_DES_TS,set_load_DS_W)=1 and par_X_pss_model(set_tech_DES_TS)=1 and par_X_pss_model(set_load_DS_W)=1) = yes;
set_energyLink('W',set_tech_DES_TS,set_grid_NS_W)$(par_X_W_DES_fromTS_NS_toWGrid_energyLink(set_tech_DES_TS,set_grid_NS_W)=1 and par_X_pss_model(set_tech_DES_TS)=1) = yes;
set_energyLink('W',set_tech_DES_TS,set_tech_DES_CR)$(par_X_W_DES_TS_DES_CR_energyLink(set_tech_DES_TS,set_tech_DES_CR)=1 and par_X_pss_model(set_tech_DES_TS)=1 and par_X_pss_model(set_tech_DES_CR)=1) = yes;
set_energyLink('W',set_tech_DES_TS,set_tech_DES_SC)$(par_X_W_DES_TS_DES_SC_energyLink(set_tech_DES_TS,set_tech_DES_SC)=1 and par_X_pss_model(set_tech_DES_TS)=1 and par_X_pss_model(set_tech_DES_SC)=1) = yes;

set_energyLink('W',set_tech_DES_EB,set_load_DS_W)$(par_X_W_DES_EB_DS_WLoad_energyLink(set_tech_DES_EB,set_load_DS_W)=1 and par_X_pss_model(set_tech_DES_EB)=1 and par_X_pss_model(set_load_DS_W)=1) = yes;
set_energyLink('W',set_tech_DES_EB,set_tech_DES_TS)$(par_X_W_DES_EB_DES_TS_energyLink(set_tech_DES_EB,set_tech_DES_TS)=1 and par_X_pss_model(set_tech_DES_EB)=1 and par_X_pss_model(set_tech_DES_TS)=1) = yes;
set_energyLink('W',set_tech_DES_EB,set_tech_DES_SC)$(par_X_W_DES_EB_DES_SC_energyLink(set_tech_DES_EB,set_tech_DES_SC)=1 and par_X_pss_model(set_tech_DES_EB)=1 and par_X_pss_model(set_tech_DES_SC)=1) = yes;
set_energyLink('W',set_tech_DES_EB,set_grid_NS_W)$(par_X_W_DES_EB_NS_WGrid_energyLink(set_tech_DES_EB,set_grid_NS_W)=1 and par_X_pss_model(set_tech_DES_EB)=1 and par_X_pss_model(set_grid_NS_W)=1) = yes;

set_energyLink('W',set_tech_DES_NGB,set_load_DS_W)$(par_X_W_DES_NGB_DS_WLoad_energyLink(set_tech_DES_NGB,set_load_DS_W)=1 and par_X_pss_model(set_tech_DES_NGB)=1 and par_X_pss_model(set_load_DS_W)=1) = yes;
set_energyLink('W',set_tech_DES_NGB,set_tech_DES_TS)$(par_X_W_DES_NGB_DES_TS_energyLink(set_tech_DES_NGB,set_tech_DES_TS)=1 and par_X_pss_model(set_tech_DES_NGB)=1 and par_X_pss_model(set_tech_DES_TS)=1) = yes;
set_energyLink('W',set_tech_DES_NGB,set_tech_DES_SC)$(par_X_W_DES_NGB_DES_SC_energyLink(set_tech_DES_NGB,set_tech_DES_SC)=1 and par_X_pss_model(set_tech_DES_NGB)=1 and par_X_pss_model(set_tech_DES_SC)=1) = yes;
set_energyLink('W',set_tech_DES_NGB,set_grid_NS_W)$(par_X_W_DES_NGB_NS_WGrid_energyLink(set_tech_DES_NGB,set_grid_NS_W)=1 and par_X_pss_model(set_tech_DES_NGB)=1 and par_X_pss_model(set_grid_NS_W)=1) = yes;


set_energyLink('H',set_tech_DES_NGB,set_grid_NS_H)$(par_X_H_DES_NGB_NS_HGrid_energyLink(set_tech_DES_NGB,set_grid_NS_H)=1 and par_X_pss_model(set_tech_DES_NGB)=1 and par_X_pss_model(set_grid_NS_H)=1) = yes;
set_energyLink('H',set_tech_DES_NGB,set_tech_DES_HS)$(par_X_H_DES_NGB_DES_HS_energyLink(set_tech_DES_NGB,set_tech_DES_HS)=1 and par_X_pss_model(set_tech_DES_NGB)=1 and par_X_pss_model(set_tech_DES_HS)=1) = yes;
set_energyLink('H',set_tech_DES_NGB,set_load_DS_H)$(par_X_H_DES_NGB_DS_H_energyLink(set_tech_DES_NGB,set_load_DS_H)=1 and par_X_pss_model(set_tech_DES_NGB)=1 and par_X_pss_model(set_load_DS_H)=1) = yes;

set_energyLink('W',set_tech_DES_HP,set_load_DS_W)$(par_X_W_DES_HP_DS_WLoad_energyLink(set_tech_DES_HP,set_load_DS_W)=1 and par_X_pss_model(set_tech_DES_HP)=1 and par_X_pss_model(set_load_DS_W)=1) = yes;
set_energyLink('W',set_tech_DES_HP,set_tech_DES_TS)$(par_X_W_DES_HP_DES_TS_energyLink(set_tech_DES_HP,set_tech_DES_TS)=1 and par_X_pss_model(set_tech_DES_HP)=1 and par_X_pss_model(set_tech_DES_TS)=1) = yes;
set_energyLink('W',set_tech_DES_HP,set_tech_DES_SC)$(par_X_W_DES_HP_DES_SC_energyLink(set_tech_DES_HP,set_tech_DES_SC)=1 and par_X_pss_model(set_tech_DES_HP)=1 and par_X_pss_model(set_tech_DES_SC)=1) = yes;
set_energyLink('W',set_tech_DES_HP,set_grid_NS_W)$(par_X_W_DES_HP_NS_WGrid_energyLink(set_tech_DES_HP,set_grid_NS_W)=1 and par_X_pss_model(set_tech_DES_HP)=1 and par_X_pss_model(set_grid_NS_W)=1) = yes;

set_energyLink('W',set_tech_DES_ST,set_load_DS_W)$(par_X_W_DES_ST_DS_WLoad_energyLink(set_tech_DES_ST,set_load_DS_W)=1 and par_X_pss_model(set_tech_DES_ST)=1 and par_X_pss_model(set_load_DS_W)=1) = yes;
set_energyLink('W',set_tech_DES_ST,set_tech_DES_TS)$(par_X_W_DES_ST_DES_TS_energyLink(set_tech_DES_ST,set_tech_DES_TS)=1 and par_X_pss_model(set_tech_DES_ST)=1 and par_X_pss_model(set_tech_DES_TS)=1) = yes;
set_energyLink('W',set_tech_DES_ST,set_tech_DES_CR)$(par_X_W_DES_ST_DES_CR_energyLink(set_tech_DES_ST,set_tech_DES_CR)=1 and par_X_pss_model(set_tech_DES_ST)=1 and par_X_pss_model(set_tech_DES_CR)=1) = yes;
set_energyLink('W',set_tech_DES_ST,set_tech_DES_SC)$(par_X_W_DES_ST_DES_SC_energyLink(set_tech_DES_ST,set_tech_DES_SC)=1 and par_X_pss_model(set_tech_DES_ST)=1 and par_X_pss_model(set_tech_DES_SC)=1) = yes;

set_energyLink('W',set_tech_DES_CHP,set_load_DS_W)$(par_X_W_DES_CHP_DS_WLoad_energyLink(set_tech_DES_CHP,set_load_DS_W)=1 and par_X_pss_model(set_tech_DES_CHP)=1 and par_X_pss_model(set_load_DS_W)=1) = yes;
set_energyLink('W',set_tech_DES_CHP,set_tech_DES_TS)$(par_X_W_DES_CHP_DES_TS_energyLink(set_tech_DES_CHP,set_tech_DES_TS)=1 and par_X_pss_model(set_tech_DES_CHP)=1 and par_X_pss_model(set_tech_DES_TS)=1) = yes;
set_energyLink('W',set_tech_DES_CHP,set_grid_NS_W)$(par_X_W_DES_CHP_NS_WGrid_energyLink(set_tech_DES_CHP,set_grid_NS_W)=1 and par_X_pss_model(set_tech_DES_CHP)=1 and par_X_pss_model(set_grid_NS_W)=1) = yes;
set_energyLink('W',set_tech_DES_CHP,set_tech_DES_CR)$(par_X_DES_CHP_W_DES_CR_energyLink(set_tech_DES_CHP,set_tech_DES_CR)=1 and par_X_pss_model(set_tech_DES_CHP)=1 and par_X_pss_model(set_tech_DES_CR)=1) = yes;
set_energyLink('W',set_tech_DES_CHP,set_tech_DES_SC)$(par_X_W_DES_CHP_DES_SC_energyLink(set_tech_DES_CHP,set_tech_DES_SC)=1 and par_X_pss_model(set_tech_DES_CHP)=1 and par_X_pss_model(set_tech_DES_SC)=1) = yes;

set_energyLink('G',set_grid_NS_G,set_tech_DES_CHP)$(par_X_G_NS_GGrid_DES_CHP_energyLink(set_grid_NS_G,set_tech_DES_CHP)=1 and par_X_pss_model(set_tech_DES_CHP)=1) = yes;
set_energyLink('G',set_grid_NS_G,set_tech_DES_NGB)$(par_X_G_NS_GGrid_DES_NGB_energyLink(set_grid_NS_G,set_tech_DES_NGB)=1 and par_X_pss_model(set_tech_DES_NGB)=1) = yes;
set_energyLink('G',set_grid_NS_G,set_tech_DES_CHP)$(par_X_G_NS_GGrid_DES_CHP_energyLink(set_grid_NS_G,set_tech_DES_CHP)=1 and par_X_pss_model(set_tech_DES_CHP)=1) = yes;

set_energyLink('O',set_market_MS_O,set_tech_DES_NGB)$(par_X_O_MS_OMarket_DES_NGB_energyLink(set_market_MS_O,set_tech_DES_NGB)=1 and par_X_pss_model(set_tech_DES_NGB)=1) = yes;
set_energyLink('G',set_market_MS_G,set_tech_DES_CHP)$(par_X_G_MS_GMarket_DES_CHP_energyLink(set_market_MS_G,set_tech_DES_CHP)=1 and par_X_pss_model(set_tech_DES_CHP)=1) = yes;
set_energyLink('G',set_market_MS_G,set_tech_DES_NGB)$(par_X_G_MS_GMarket_DES_NGB_energyLink(set_market_MS_G,set_tech_DES_NGB)=1 and par_X_pss_model(set_tech_DES_NGB)=1) = yes;

set_energyLink('G',set_grid_NS_G,set_load_DS_G)$(par_X_G_NS_GGrid_DS_GLoad_energyLink(set_grid_NS_G,set_load_DS_G)=1 and par_X_pss_model(set_load_DS_G)=1) = yes;
set_energyLink('G',set_market_MS_G,set_load_DS_G)$(par_X_G_MS_GMarket_DS_GLoad_energyLink(set_market_MS_G,set_load_DS_G)=1 and par_X_pss_model(set_load_DS_G)=1) = yes;

set_energyLink('G','GMarket',set_grid_NS_G)$(par_X_pss_model(set_grid_NS_G)=1)= yes;

set_energyLink('H','HMarket',set_load_DS_H)$(sum(set_side$par_OH_DS_HL_side(set_side,set_load_DS_H),1)=1 and par_X_pss_model(set_load_DS_H)=1) = yes;
set_energyLink('H',set_tech_DES_EY,set_load_DS_H)$(par_X_H_DES_EY_DS_HLoad_energyLink(set_tech_DES_EY,set_load_DS_H)=1 and par_X_pss_model(set_tech_DES_EY)=1 and par_X_pss_model(set_load_DS_H)=1) = yes;
set_energyLink('H',set_tech_DES_EY,set_tech_DES_HS)$(par_X_H_DES_EY_DES_HS_energyLink(set_tech_DES_EY,set_tech_DES_HS)=1 and par_X_pss_model(set_tech_DES_EY)=1 and par_X_pss_model(set_tech_DES_HS)=1) = yes;
set_energyLink('H',set_tech_DES_EY,set_tech_DES_FC)$(par_X_H_DES_EY_DES_FC_energyLink(set_tech_DES_EY,set_tech_DES_FC)=1 and par_X_pss_model(set_tech_DES_EY)=1 and par_X_pss_model(set_tech_DES_FC)=1) = yes;
set_energyLink('H',set_tech_DES_EY,set_grid_NS_H)$(par_X_H_DES_EY_NS_HGrid_energyLink(set_tech_DES_EY,set_grid_NS_H)=1 and par_X_pss_model(set_tech_DES_EY)=1 and par_X_pss_model(set_grid_NS_H)=1) = yes;
set_energyLink('H',set_grid_NS_H,set_load_DS_H)$(par_X_H_NS_HGrid_DS_HLoad_energyLink(set_grid_NS_H,set_load_DS_H)=1 and par_X_pss_model(set_load_DS_H)=1) = yes;
set_energyLink('H',set_grid_NS_H,set_tech_DES_HS)$(par_X_H_NS_fromHGrid_DES_toHS_energyLink(set_grid_NS_H,set_tech_DES_HS)=1 and par_X_pss_model(set_tech_DES_HS)=1) = yes;
set_energyLink('H',set_tech_DES_HS,set_load_DS_H)$(par_X_H_DES_HS_DS_HLoad_energyLink(set_tech_DES_HS,set_load_DS_H)=1 and par_X_pss_model(set_tech_DES_HS)=1 and par_X_pss_model(set_load_DS_H)=1) = yes;
set_energyLink('H',set_tech_DES_HS,set_grid_NS_H)$(par_X_H_DES_fromHS_NS_toHGrid_energyLink(set_tech_DES_HS,set_grid_NS_H)=1 and par_X_pss_model(set_tech_DES_HS)=1) = yes;
set_energyLink('H',set_tech_DES_HS,set_tech_DES_FC)$(par_X_H_DES_HS_DES_FC_energyLink(set_tech_DES_HS,set_tech_DES_FC)=1 and par_X_pss_model(set_tech_DES_HS)=1 and par_X_pss_model(set_tech_DES_FC)=1) = yes;
set_energyLink('H',set_grid_NS_H,set_market_MS_H)$(par_X_H_NS_HGrid_MS_HMarket_energyLink(set_grid_NS_H,set_market_MS_H)=1 and par_X_pss_model(set_grid_NS_H)=1 and par_X_pss_model(set_market_MS_H)=1) = yes;
set_energyLink('H',set_market_MS_H,set_grid_NS_H)$(par_X_H_MS_HMarket_NS_HGrid_energyLink(set_market_MS_H,set_grid_NS_H)=1 and par_X_pss_model(set_grid_NS_H)=1 and par_X_pss_model(set_market_MS_H)=1) = yes;
set_energyLink('H',set_grid_NS_H,set_tech_DES_FC)$(par_X_H_NS_HGrid_DES_FC_energyLink(set_grid_NS_H,set_tech_DES_FC)=1 and par_X_pss_model(set_grid_NS_H)=1 and par_X_pss_model(set_tech_DES_FC)=1) = yes;
set_energyLink('E',set_tech_DES_FC,set_grid_NS_E)$(par_X_E_DES_FC_NS_EGrid_energyLink(set_tech_DES_FC,set_grid_NS_E)=1 and par_X_pss_model(set_grid_NS_E)=1 and par_X_pss_model(set_tech_DES_FC)=1) = yes;
set_energyLink('H',set_tech_DES_HS,set_market_MS_H)$(par_X_H_DES_HS_MS_HMarket_energyLink(set_tech_DES_HS,set_market_MS_H)=1 and par_X_pss_model(set_tech_DES_HS)=1 and par_X_pss_model(set_market_MS_H)=1) = yes;
set_energyLink('H',set_market_MS_H,set_tech_DES_HS)$(par_X_H_MS_HMarket_DES_HS_energyLink(set_market_MS_H,set_tech_DES_HS)=1 and par_X_pss_model(set_tech_DES_HS)=1 and par_X_pss_model(set_market_MS_H)=1) = yes;


set_energyLink('Cl',set_tech_DES_EY,set_load_DS_CL)$(par_X_CL_DES_EY_DS_CLLoad_energyLink(set_tech_DES_EY,set_load_DS_CL)=1 and par_X_pss_model(set_tech_DES_EY)=1 and par_X_pss_model(set_load_DS_CL)=1) = yes;
set_energyLink('Cl',set_tech_DES_EY,set_tech_DES_CLS)$(par_X_CL_DES_EY_DES_CLS_energyLink(set_tech_DES_EY,set_tech_DES_CLS)=1 and par_X_pss_model(set_tech_DES_EY)=1 and par_X_pss_model(set_tech_DES_CLS)=1) = yes;

set_energyLink('CL','CLMarket',set_load_DS_CL)$(sum(set_side$par_OH_DS_CLL_side(set_side,set_load_DS_CL),1)=1 and par_X_pss_model(set_load_DS_CL)=1) = yes;
set_energyLink('CL',set_tech_DES_CLS,'CLMarket')$(sum(set_side$par_OH_DES_CLS_side(set_side,set_tech_DES_CLS),1)=1 AND par_X_pss_model(set_tech_DES_CLS)=1 AND par_X_CL_DES_CLS_tank(set_tech_DES_CLS)=1) = yes;

set_energyLink('CL',set_tech_DES_CLS,set_load_DS_CL)$(par_X_CL_DES_CLS_DS_CLLoad_energyLink(set_tech_DES_CLS,set_load_DS_CL)=1 and par_X_pss_model(set_tech_DES_CLS)=1 and par_X_pss_model(set_load_DS_CL)=1) = yes;
set_energyLink('CL',set_tech_DES_fromCLS,set_tech_DES_toCLS)$(par_X_CL_DES_fromCLS_DES_toCLS_energyLink(set_tech_DES_fromCLS,set_tech_DES_toCLS)=1 and par_X_pss_model(set_tech_DES_fromCLS)=1 and par_X_pss_model(set_tech_DES_toCLS)=1) = yes;
set_energyLink('CL',set_tech_SS_EY,set_market_MS_CL)$(par_X_CL_SS_EY_MS_CLMarket_energyLink(set_tech_SS_EY,set_market_MS_CL)=1 and (par_X_pss_schedule(set_tech_SS_EY)=1 or par_X_pss_model(set_tech_SS_EY)=1)) = yes;
set_energyLink('CL',set_tech_SS_EY,set_load_DS_CL)$(par_X_CL_SS_EY_DS_CLLoad_energyLink(set_tech_SS_EY,set_load_DS_CL)=1 and par_X_pss_model(set_tech_SS_EY)=1 and par_X_pss_model(set_load_DS_CL)=1) = yes;
set_energyLink('CL',set_tech_SS_EY,set_tech_DES_CLS)$(par_X_CL_SS_EY_DES_CLS_energyLink(set_tech_SS_EY,set_tech_DES_CLS)=1 and par_X_pss_model(set_tech_SS_EY)=1 and par_X_pss_model(set_tech_DES_CLS)=1) = yes;

set_energyLink('E',set_tech_SS_WT,set_grid_NS_E)$(par_X_E_SS_WT_NS_EGrid_energyLink(set_tech_SS_WT,set_grid_NS_E)=1 and (par_X_pss_schedule(set_tech_SS_WT)=1 or par_X_pss_model(set_tech_SS_WT)=1)) = yes;
set_energyLink('E',set_tech_SS_CHP,set_grid_NS_E)$(par_X_E_SS_CHP_NS_EGrid_energyLink(set_tech_SS_CHP,set_grid_NS_E)=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_model(set_tech_SS_CHP)=1)) = yes;
set_energyLink('E',set_tech_SS_RH,set_grid_NS_E)$(par_X_E_SS_RH_NS_EGrid_energyLink(set_tech_SS_RH,set_grid_NS_E)=1 and (par_X_pss_schedule(set_tech_SS_RH)=1 or par_X_pss_model(set_tech_SS_RH)=1)) = yes;
set_energyLink('E',set_tech_SS_PV,set_grid_NS_E)$(par_X_E_SS_PV_NS_EGrid_energyLink(set_tech_SS_PV,set_grid_NS_E)=1 and (par_X_pss_schedule(set_tech_SS_PV)=1 or par_X_pss_model(set_tech_SS_PV)=1)) = yes;
set_energyLink('E',set_tech_SS_RC,set_grid_NS_E)$(par_X_E_SS_RC_NS_EGrid_energyLink(set_tech_SS_RC,set_grid_NS_E)=1 and (par_X_pss_schedule(set_tech_SS_RC)=1 or par_X_pss_model(set_tech_SS_RC)=1)) = yes;
set_energyLink('E',set_tech_SS_PHS,set_grid_NS_E)$(par_X_E_SS_fromPHS_NS_toEGrid_energyLink(set_tech_SS_PHS,set_grid_NS_E)=1 and (par_X_pss_schedule(set_tech_SS_PHS)=1 or par_X_pss_model(set_tech_SS_PHS)=1)) = yes;

set_energyLink('H',set_tech_SS_EY,set_load_DS_H)$(par_X_H_SS_EY_DS_HLoad_energyLink(set_tech_SS_EY,set_load_DS_H)=1 and par_X_pss_model(set_tech_SS_EY)=1 and par_X_pss_model(set_load_DS_H)=1) = yes;
set_energyLink('H',set_tech_SS_EY,set_tech_DES_HS)$(par_X_H_SS_EY_DES_HS_energyLink(set_tech_SS_EY,set_tech_DES_HS)=1 and par_X_pss_model(set_tech_SS_EY)=1 and par_X_pss_model(set_tech_DES_HS)=1) = yes;
set_energyLink('H',set_tech_SS_EY,set_tech_SS_FC)$(par_X_H_SS_EY_SS_FC_energyLink(set_tech_SS_EY,set_tech_SS_FC)=1 and par_X_pss_model(set_tech_SS_EY)=1 and par_X_pss_model(set_tech_SS_FC)=1) = yes;
set_energyLink('H',set_tech_SS_EY,set_grid_NS_H)$(par_X_H_SS_EY_NS_HGrid_energyLink(set_tech_SS_EY,set_grid_NS_H)=1 and par_X_pss_model(set_tech_SS_EY)=1 and par_X_pss_model(set_grid_NS_H)=1) = yes;
set_energyLink('H',set_tech_DES_HS,set_tech_SS_FC)$(par_X_H_DES_HS_SS_FC_energyLink(set_tech_DES_HS,set_tech_SS_FC)=1 and par_X_pss_model(set_tech_DES_HS)=1 and par_X_pss_model(set_tech_SS_FC)=1) = yes;
set_energyLink('E',set_tech_SS_CHP,set_tech_SS_EY)$(par_X_E_SS_CHP_SS_EY_energyLink(set_tech_SS_CHP,set_tech_SS_EY)=1 and par_X_pss_model(set_tech_SS_CHP)=1 and par_X_pss_model(set_tech_SS_EY)=1) = yes;
set_energyLink('E',set_tech_SS_PV,set_tech_SS_EY)$(par_X_E_SS_PV_SS_EY_energyLink(set_tech_SS_PV,set_tech_SS_EY)=1 and par_X_pss_model(set_tech_SS_PV)=1 and par_X_pss_model(set_tech_SS_EY)=1) = yes;
set_energyLink('E',set_tech_DES_ES,set_tech_SS_EY)$(par_X_E_DES_ES_SS_EY_energyLink(set_tech_DES_ES,set_tech_SS_EY)=1 and par_X_pss_model(set_tech_SS_EY)=1 and par_X_pss_model(set_tech_DES_ES)=1) = yes;
set_energyLink('E',set_grid_NS_E,set_tech_SS_EY)$(par_X_E_NS_EGrid_SS_EY_energyLink(set_grid_NS_E,set_tech_SS_EY)=1 and par_X_pss_model(set_tech_SS_EY)=1) = yes;
set_energyLink('E',set_tech_SS_WT,set_tech_SS_EY)$(par_X_E_SS_WT_SS_EY_energyLink(set_tech_SS_WT,set_tech_SS_EY)=1 and par_X_pss_model(set_tech_SS_WT)=1 and par_X_pss_model(set_tech_SS_EY)=1) = yes;

set_energyLink('E',set_tech_SS_CHP,set_tech_DES_HP)$(par_X_E_SS_CHP_DES_HP_energyLink(set_tech_SS_CHP,set_tech_DES_HP)=1 and par_X_pss_model(set_tech_SS_CHP)=1 and par_X_pss_model(set_tech_DES_HP)=1) = yes;
set_energyLink('E',set_tech_SS_CHP,set_tech_DES_EB)$(par_X_E_SS_CHP_DES_EB_energyLink(set_tech_SS_CHP,set_tech_DES_EB)=1 and par_X_pss_model(set_tech_SS_CHP)=1 and par_X_pss_model(set_tech_DES_EB)=1) = yes;
set_energyLink('W',set_tech_SS_CHP,set_load_DS_W)$(par_X_W_SS_CHP_DS_W_energyLink(set_tech_SS_CHP,set_load_DS_W)=1 and par_X_pss_model(set_tech_SS_CHP)=1 and par_X_pss_model(set_load_DS_W)=1) = yes;
set_energyLink('W',set_tech_SS_CHP,set_tech_DES_TS)$(par_X_W_SS_CHP_DES_TS_energyLink(set_tech_SS_CHP,set_tech_DES_TS)=1 and par_X_pss_model(set_tech_SS_CHP)=1 and par_X_pss_model(set_tech_DES_TS)=1) = yes;
set_energyLink('W',set_tech_SS_RC,set_tech_DES_TS)$(par_X_W_SS_RC_DES_TS_energyLink(set_tech_SS_RC,set_tech_DES_TS)=1 and par_X_pss_model(set_tech_SS_RC)=1 and par_X_pss_model(set_tech_DES_TS)=1) = yes;
set_energyLink('W',set_tech_SS_RC,set_tech_DES_TS)$(par_X_W_SS_RC_DES_TS_energyLink(set_tech_SS_RC,set_tech_DES_TS)=1 and par_X_pss_schedule(set_tech_SS_RC)=1 and par_X_pss_model(set_tech_DES_TS)=1) = yes;


set_energyLink('E',set_tech_SS_TPS,set_grid_NS_E)$(par_X_E_SS_TPS_NS_EGrid_energyLink(set_tech_SS_TPS,set_grid_NS_E)=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS)=1)) = yes;
*set_energyLink('E',set_tech_SS_BGP,set_grid_NS_E)$(par_X_B_SS_BGP_NS_EGrid_energyLink(set_tech_SS_BGP,set_grid_NS_E)=1 and (par_X_pss_schedule(set_tech_SS_BGP)=1 or par_X_pss_model(set_tech_SS_BGP)=1)) = yes;


set_energyLink('E',set_tech_SS_WT,set_market_MS_E)$(par_X_E_SS_WT_MS_EMarket_energyLink(set_tech_SS_WT,set_market_MS_E)=1 and (par_X_pss_schedule(set_tech_SS_WT)=1 or par_X_pss_model(set_tech_SS_WT)=1)) = yes;
*set_energyLink('E',set_tech_SS_WT,set_tech_SS_ETB)$(par_X_E_SS_WT_SS_ETB_energyLink(set_tech_SS_WT,set_tech_SS_ETB)=1 and (par_X_pss_schedule(set_tech_SS_WT)=1 or par_X_pss_model(set_tech_SS_WT)=1)) = yes;
*set_energyLink('E',set_tech_SS_WT,set_tech_SS_PLB)$(par_X_E_SS_WT_SS_PLB_energyLink(set_tech_SS_WT,set_tech_SS_PLB)=1 and (par_X_pss_schedule(set_tech_SS_WT)=1 or par_X_pss_model(set_tech_SS_WT)=1)) = yes;
set_energyLink('E',set_tech_SS_WT,set_tech_SS_PHS)$(par_X_E_SS_WT_SS_PHS_energyLink(set_tech_SS_WT,set_tech_SS_PHS)=1 and (par_X_pss_schedule(set_tech_SS_WT)=1 or par_X_pss_model(set_tech_SS_WT)=1)) = yes;

set_energyLink('E',set_tech_SS_CHP,set_market_MS_E)$(par_X_E_SS_CHP_MS_EMarket_energyLink(set_tech_SS_CHP,set_market_MS_E)=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_model(set_tech_SS_CHP)=1)) = yes;
*set_energyLink('E',set_tech_SS_CHP,set_tech_SS_ETB)$(par_X_E_SS_CHP_SS_ETB_energyLink(set_tech_SS_CHP,set_tech_SS_ETB)=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_model(set_tech_SS_CHP)=1)) = yes;
*set_energyLink('E',set_tech_SS_CHP,set_tech_SS_PLB)$(par_X_E_SS_CHP_SS_PLB_energyLink(set_tech_SS_CHP,set_tech_SS_PLB) and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_model(set_tech_SS_CHP)=1)) = yes;
set_energyLink('E',set_tech_SS_CHP,set_tech_SS_PHS)$(par_X_E_SS_CHP_SS_PHS_energyLink(set_tech_SS_CHP,set_tech_SS_PHS)=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_model(set_tech_SS_CHP)=1)) = yes;

set_energyLink('E',set_tech_SS_RH,set_market_MS_E)$(par_X_E_SS_RH_MS_EMarket_energyLink(set_tech_SS_RH,set_market_MS_E)=1 and (par_X_pss_schedule(set_tech_SS_RH)=1 or par_X_pss_model(set_tech_SS_RH)=1)) = yes;
*set_energyLink('E',set_tech_SS_RH,set_tech_SS_ETB)$(par_X_E_SS_RH_SS_ETB_energyLink(set_tech_SS_RH,set_tech_SS_ETB)=1 and (par_X_pss_schedule(set_tech_SS_RH)=1 or par_X_pss_model(set_tech_SS_RH)=1)) = yes;
*set_energyLink('E',set_tech_SS_RH,set_tech_SS_PLB)$(par_X_E_SS_RH_SS_PLB_energyLink(set_tech_SS_RH,set_tech_SS_PLB)=1 and (par_X_pss_schedule(set_tech_SS_RH)=1 or par_X_pss_model(set_tech_SS_RH)=1)) = yes;
set_energyLink('E',set_tech_SS_RH,set_tech_SS_PHS)$(par_X_E_SS_RH_SS_PHS_energyLink(set_tech_SS_RH,set_tech_SS_PHS)=1 and (par_X_pss_schedule(set_tech_SS_RH)=1 or par_X_pss_model(set_tech_SS_RH)=1)) = yes;

set_energyLink('E',set_tech_SS_PV,set_market_MS_E)$(par_X_E_SS_PV_MS_EMarket_energyLink(set_tech_SS_PV,set_market_MS_E)=1 and (par_X_pss_schedule(set_tech_SS_PV)=1 or par_X_pss_model(set_tech_SS_PV)=1)) = yes;
set_energyLink('E',set_tech_SS_PV,set_tech_SS_PHS)$(par_X_E_SS_PV_SS_PHS_energyLink(set_tech_SS_PV,set_tech_SS_PHS)=1 and (par_X_pss_schedule(set_tech_SS_PV)=1 or par_X_pss_model(set_tech_SS_PV)=1)) = yes;
*set_energyLink('E',set_tech_SS_PV,set_tech_SS_ETB)$(par_X_E_SS_PV_SS_ETB_energyLink(set_tech_SS_PV,set_tech_SS_ETB)=1 and (par_X_pss_schedule(set_tech_SS_PV)=1 or par_X_pss_model(set_tech_SS_PV)=1)) = yes;
*set_energyLink('E',set_tech_SS_PV,set_tech_SS_PLB)$(par_X_E_SS_PV_SS_PLB_energyLink(set_tech_SS_PV,set_tech_SS_PLB)=1 and (par_X_pss_schedule(set_tech_SS_PV)=1 or par_X_pss_model(set_tech_SS_PV)=1)) = yes;

set_energyLink('E',set_tech_SS_RC,set_market_MS_E)$(par_X_E_SS_RC_MS_EMarket_energyLink(set_tech_SS_RC,set_market_MS_E)=1 and (par_X_pss_schedule(set_tech_SS_RC)=1 or par_X_pss_model(set_tech_SS_RC)=1)) = yes;

set_energyLink('E',set_tech_SS_PHS,set_market_MS_E)$(par_X_E_SS_fromPHS_MS_toEMarket_energyLink(set_tech_SS_PHS,set_market_MS_E)=1 and (par_X_pss_schedule(set_tech_SS_PHS)=1 or par_X_pss_model(set_tech_SS_PHS)=1)) = yes;
set_energyLink('E',set_tech_SS_PHS,set_tech_SS_PHS)$(par_X_E_SS_PHS_SS_PHS_energyLink(set_tech_SS_PHS,set_tech_SS_PHS)=1 and (par_X_pss_schedule(set_tech_SS_PHS)=1 or par_X_pss_model(set_tech_SS_PHS)=1)) = yes;
*set_energyLink('E',set_tech_SS_PHS,set_tech_SS_ETB)$(par_X_E_SS_PHS_SS_ETB_energyLink(set_tech_SS_PHS,set_tech_SS_ETB)=1 and (par_X_pss_schedule(set_tech_SS_PHS)=1 or par_X_pss_model(set_tech_SS_PHS)=1)) = yes;
*set_energyLink('E',set_tech_SS_PHS,set_tech_SS_PLB)$(par_X_E_SS_PHS_SS_PLB_energyLink(set_tech_SS_PHS,set_tech_SS_PLB)=1 and (par_X_pss_schedule(set_tech_SS_PHS)=1 or par_X_pss_model(set_tech_SS_PHS)=1)) = yes;

set_energyLink('E',set_tech_SS_TPS,set_market_MS_E)$(par_X_E_SS_TPS_MS_EMarket_energyLink(set_tech_SS_TPS,set_market_MS_E)=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS)=1)) = yes;
*set_energyLink('E',set_tech_SS_TPS,set_tech_SS_ETB)$(par_X_E_SS_TPS_SS_ETB_energyLink(set_tech_SS_TPS,set_tech_SS_ETB)=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS)=1)) = yes;
*set_energyLink('E',set_tech_SS_TPS,set_tech_SS_PLB)$(par_X_E_SS_TPS_SS_PLB_energyLink(set_tech_SS_TPS,set_tech_SS_PLB)=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS)=1)) = yes;
set_energyLink('E',set_tech_SS_TPS,set_tech_SS_PHS)$(par_X_E_SS_TPS_SS_PHS_energyLink(set_tech_SS_TPS,set_tech_SS_PHS)=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS)=1)) = yes;

*set_energyLink('E',set_tech_SS_BGP,set_market_MS_E)$(par_X_B_SS_BGP_MS_EMarket_energyLink(set_tech_SS_BGP,set_market_MS_E)=1 and (par_X_pss_schedule(set_tech_SS_BGP)=1 or par_X_pss_model(set_tech_SS_BGP)=1)) = yes;
*set_energyLink('E',set_tech_SS_BGP,set_tech_SS_PLB)$(par_X_B_SS_BGP_SS_PLB_energyLink(setB_energyLink(set_tech_SS_BGP,set_tech_SS_ETB)=1  and (par_X_pss_schedule(set_tech_SS_BGP)=1 or par_X_pss_model(set_tech_SS_BGP)=1)) = yes;
*set_energyLink('E',set_tech_SS_BGP,set_tech_SS_PHS)$(par_X_B_SS_BGP_SS_PH_tech_SS_BGP,set_tech_SS_PLB)=1  and (par_X_pss_schedule(set_tech_SS_BGP)=1 or par_X_pss_model(set_tech_SS_BGP)=1)) = yes;
*set_energyLink('E',set_tech_SS_BGP,set_tech_SS_ETB)$(par_X_B_SS_BGP_SS_ETS_energyLink(set_tech_SS_BGP,set_tech_SS_PHS)=1 and (par_X_pss_schedule(set_tech_SS_BGP)=1 or par_X_pss_model(set_tech_SS_BGP)=1)) = yes;

set_energyLink('E',set_grid_NS_E,set_tech_SS_PHS)$(par_X_E_NS_fromEGrid_SS_toPHS_energyLink(set_grid_NS_E,set_tech_SS_PHS)=1 and (par_X_pss_schedule(set_tech_SS_PHS)=1 or par_X_pss_model(set_tech_SS_PHS)=1)) = yes;

set_energyLink('E',set_market_MS_E,set_tech_SS_PHS)$(par_X_E_MS_fromEMarket_SS_toPHS_energyLink(set_market_MS_E,set_tech_SS_PHS)=1 and (par_X_pss_schedule(set_tech_SS_PHS)=1 or par_X_pss_model(set_tech_SS_PHS)=1)) = yes;

set_energyLink('W',set_tech_SS_RC,set_grid_NS_W)$(par_X_W_SS_RC_NS_WGrid_energyLink(set_tech_SS_RC,set_grid_NS_W)=1 and (par_X_pss_schedule(set_tech_SS_RC)=1 or par_X_pss_model(set_tech_SS_RC)=1)) = yes;
set_energyLink('W',set_tech_SS_CHP,set_grid_NS_W)$(par_X_W_SS_CHP_NS_WGrid_energyLink(set_tech_SS_CHP,set_grid_NS_W)=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_model(set_tech_SS_CHP)=1)) = yes;
set_energyLink('W',set_tech_SS_TPS,set_grid_NS_W)$(par_X_W_SS_TPS_NS_WGrid_energyLink(set_tech_SS_TPS,set_grid_NS_W)=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS)=1)) = yes;
*set_energyLink('W',set_tech_SS_BGP,set_grid_NS_W)$(par_X_B_SS_BGP_NS_WGrid_energyLink(set_tech_SS_BGP,set_grid_NS_W)=1 and (par_X_pss_schedule(set_tech_SS_BGP)=1 or par_X_pss_model(set_tech_SS_BGP)=1)) = yes;

*set_energyLink('W',set_tech_SS_ETB,set_grid_NS_W)$(par_X_W_SS_ETB_NS_WGrid_energyLink(set_tech_SS_ETB,set_grid_NS_W)=1 and (par_X_pss_schedule(set_tech_SS_ETB)=1 or par_X_pss_model(set_tech_SS_ETB)=1)) = yes;

*set_energyLink('W',set_tech_SS_PLB,set_grid_NS_W)$(par_X_W_SS_PLB_NS_WGrid_energyLink(set_tech_SS_PLB,set_grid_NS_W)=1 and (par_X_pss_schedule(set_tech_SS_PLB)=1 or par_X_pss_model(set_tech_SS_PLB)=1)) = yes;

set_energyLink('W',set_tech_SS_CHP,set_market_MS_W)$(par_X_W_SS_CHP_MS_WMarket_energyLink(set_tech_SS_CHP,set_market_MS_W)=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_model(set_tech_SS_CHP)=1)) = yes;
set_energyLink('W',set_tech_SS_TC,set_market_MS_W)$(par_X_W_SS_TC_MS_WMarket_energyLink(set_tech_SS_TC,set_market_MS_W)=1 and (par_X_pss_schedule(set_tech_SS_TC)=1 or par_X_pss_model(set_tech_SS_TC)=1)) = yes;
set_energyLink('W',set_tech_SS_TC,set_grid_NS_W)$(par_X_W_SS_TC_NS_WGrid_energyLink(set_tech_SS_TC,set_grid_NS_W)=1 and (par_X_pss_schedule(set_tech_SS_TC)=1 or par_X_pss_schedule(set_tech_SS_TC)=1)) = yes;
*set_energyLink('W',set_tech_SS_PLB,set_market_MS_W)$(par_X_W_SS_PLB_MS_WMarket_energyLink(set_tech_SS_PLB,set_market_MS_W)=1 and (par_X_pss_schedule(set_tech_SS_PLB)=1 or par_X_pss_model(set_tech_SS_PLB)=1)) = yes;
set_energyLink('W',set_tech_SS_RC,set_market_MS_W)$(par_X_W_SS_RC_MS_WMarket_energyLink(set_tech_SS_RC,set_market_MS_W)=1 and (par_X_pss_schedule(set_tech_SS_RC)=1 or par_X_pss_model(set_tech_SS_RC)=1)) = yes;
*set_energyLink('W',set_tech_SS_ETB,set_market_MS_W)$(par_X_W_SS_ETB_MS_WMarket_energyLink(set_tech_SS_ETB,set_market_MS_W)=1 and (par_X_pss_schedule(set_tech_SS_ETB)=1 or par_X_pss_model(set_tech_SS_ETB)=1)) = yes;
*set_energyLink('W',set_tech_SS_BGP,set_market_MS_W)$(par_X_B_SS_BGP_MS_WMarket_energyLink(set_tech_SS_BGP,set_market_MS_W)=1 and (par_X_pss_schedule(set_tech_SS_BGP)=1 or par_X_pss_model(set_tech_SS_BGP)=1)) = yes;

set_energyLink('G',set_grid_NS_G,set_tech_SS_RC)$(par_X_G_NS_GGrid_SS_RC_energyLink(set_grid_NS_G,set_tech_SS_RC)=1 and (par_X_pss_schedule(set_tech_SS_RC)=1 or par_X_pss_model(set_tech_SS_RC)=1)) = yes;
set_energyLink('G',set_grid_NS_G,set_tech_SS_CHP)$(par_X_G_NS_G_SS_CHP_energyLink(set_grid_NS_G,set_tech_SS_CHP)=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_model(set_tech_SS_CHP)=1)) = yes;
set_energyLink('G',set_grid_NS_G,set_tech_SS_TPS)$(par_X_G_NS_G_SS_TPS_energyLink(set_grid_NS_G,set_tech_SS_TPS)=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS)=1)) = yes;
*set_energyLink('G',set_grid_NS_G,set_tech_SS_PLB)$(par_X_G_NS_G_SS_PLB_energyLink(set_grid_NS_G,set_tech_SS_PLB)=1 and (par_X_pss_schedule(set_tech_SS_PLB)=1 or par_X_pss_model(set_tech_SS_PLB)=1)) = yes;

set_energyLink('G',set_market_MS_G,set_tech_SS_PLB)$(par_X_G_MS_GMarket_SS_PLB_energyLink(set_market_MS_G,set_tech_SS_PLB)=1 and (par_X_pss_schedule(set_tech_SS_PLB)=1 or par_X_pss_model(set_tech_SS_PLB)=1)) = yes;
set_energyLink('G',set_market_MS_G,set_tech_SS_TPS)$(par_X_G_MS_GMarket_SS_TPS_energyLink(set_market_MS_G,set_tech_SS_TPS)=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS)=1)) = yes;
set_energyLink('G',set_market_MS_G,set_tech_SS_CHP)$(par_X_G_MS_GMarket_SS_CHP_energyLink(set_market_MS_G,set_tech_SS_CHP)=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_model(set_tech_SS_CHP)=1)) = yes;
set_energyLink('G',set_market_MS_G,set_tech_SS_RC)$(par_X_G_MS_GMarket_SS_RC_energyLink(set_market_MS_G,set_tech_SS_RC)=1 and (par_X_pss_schedule(set_tech_SS_RC)=1 or par_X_pss_model(set_tech_SS_RC)=1)) = yes;

set_energyLink('O',set_market_MS_O,set_tech_SS_TPS)$(par_X_O_MS_OMarket_SS_TPS_energyLink(set_market_MS_O,set_tech_SS_TPS)=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS)=1)) = yes;
set_energyLink('O',set_market_MS_O,set_tech_SS_CHP)$(par_X_O_MS_OMarket_SS_CHP_energyLink(set_market_MS_O,set_tech_SS_CHP)=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_model(set_tech_SS_CHP)=1)) = yes;
set_energyLink('O',set_market_MS_O,set_tech_SS_PLB)$(par_X_O_MS_OMarket_SS_PLB_energyLink(set_market_MS_O,set_tech_SS_PLB)=1 and (par_X_pss_schedule(set_tech_SS_PLB)=1 or par_X_pss_model(set_tech_SS_PLB)=1)) = yes;

*set_energyLink('B',set_market_MS_B,set_tech_SS_BGP)$(par_X_B_MS_BMarket_SS_BGP_energyLink(set_market_MS_B,set_tech_SS_BGP)=1 and (par_X_pss_schedule(set_tech_SS_BGP)=1 or par_X_pss_model(set_tech_SS_BGP)=1)) = yes;
set_energyLink('B',set_market_MS_B,set_tech_SS_PLB)$(par_X_B_MS_BMarket_SS_PLB_energyLink(set_market_MS_B,set_tech_SS_PLB)=1 and (par_X_pss_schedule(set_market_MS_B)=1 or par_X_pss_model(set_tech_SS_PLB)=1)) = yes;
set_energyLink('B',set_market_MS_B,set_tech_SS_CHP)$(par_X_B_MS_BMarket_SS_CHP_energyLink(set_market_MS_B,set_tech_SS_CHP)=1 and (par_X_pss_schedule(set_market_MS_B)=1 or par_X_pss_model(set_tech_SS_CHP)=1)) = yes;
set_energyLink('B',set_market_MS_B,set_tech_DES_CHP)$(par_X_B_MS_BMarket_DES_CHP_energyLink(set_market_MS_B,set_tech_DES_CHP)=1 and (par_X_pss_schedule(set_market_MS_B)=1 or par_X_pss_model(set_tech_DES_CHP)=1)) = yes;
set_energyLink('B',set_market_MS_B,set_tech_SS_TPS)$(par_X_B_MS_BMarket_SS_TPS_energyLink(set_market_MS_B,set_tech_SS_TPS)=1 and (par_X_pss_schedule(set_market_MS_B)=1 or par_X_pss_model(set_tech_SS_TPS)=1)) = yes;

set_energyLink('RF',set_market_MS_RF,set_tech_SS_RC)$(par_X_RF_MS_RFMarket_SS_RC_energyLink(set_market_MS_RF,set_tech_SS_RC)=1 and (par_X_pss_schedule(set_tech_SS_RC)=1 or par_X_pss_model(set_tech_SS_RC)=1 and par_X_pss_model(set_market_MS_RF)=1)) = yes;

set_energyLink('HC',set_market_MS_HC,set_tech_SS_TPS)$(par_X_HC_MS_HCMarket_SS_TPS_energyLink(set_market_MS_HC,set_tech_SS_TPS)=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS)=1)) = yes;
set_energyLink('HC',set_market_MS_HC,set_tech_SS_CHP)$(par_X_HC_MS_HCMarket_SS_CHP_energyLink(set_market_MS_HC,set_tech_SS_CHP)=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_model(set_tech_SS_CHP)=1)) = yes;
set_energyLink('HC',set_market_MS_HC,set_tech_DES_CHP)$(par_X_HC_MS_HCMarket_DES_CHP_energyLink(set_market_MS_HC,set_tech_DES_CHP)=1 and  par_X_pss_model(set_tech_DES_CHP)=1 and par_X_pss_model(set_market_MS_HC)=1 ) = yes;
set_energyLink('L',set_market_MS_L,set_tech_SS_TPS)$(par_X_L_MS_LMarket_SS_TPS_energyLink(set_market_MS_L,set_tech_SS_TPS)=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS)=1)) = yes;
set_energyLink('L',set_market_MS_L,set_tech_SS_CHP)$(par_X_L_MS_LMarket_SS_CHP_energyLink(set_market_MS_L,set_tech_SS_CHP)=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_model(set_tech_SS_CHP)=1)) = yes;
set_energyLink('L',set_market_MS_L,set_tech_DES_CHP)$(par_X_L_MS_LMarket_DES_CHP_energyLink(set_market_MS_L,set_tech_DES_CHP)=1 and par_X_pss_model(set_tech_DES_CHP)=1 and par_X_pss_model(set_market_MS_L)=1 ) = yes;

set_energyLink('PR',set_tech_DES_ES,set_grid_NS_R)$(par_X_R_DES_ES_NS_RGrid_energyLink(set_tech_DES_ES,set_grid_NS_R)=1 and par_X_pss_model(set_tech_DES_ES)=1 and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('PR',set_tech_DES_CHP,set_grid_NS_R)$(par_X_R_DES_CHP_NS_RGrid_energyLink(set_tech_DES_CHP,set_grid_NS_R)=1 and par_X_pss_model(set_tech_DES_CHP)=1 and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('NR',set_tech_DES_TS,set_tech_DES_CHP)$(sum(set_grid_NS_R$set_energyLink('PR',set_tech_DES_CHP,set_grid_NS_R),1)>0 and set_energyLink('W',set_tech_DES_CHP,set_tech_DES_TS) and par_X_pss_model(set_tech_DES_TS)=1 and par_X_pss_model(set_tech_DES_CHP)=1) = yes;
set_energyLink('PR',set_tech_DES_HP,set_grid_NS_R)$(par_X_R_DES_HP_NS_RGrid_energyLink(set_tech_DES_HP,set_grid_NS_R)=1 and par_X_pss_model(set_tech_DES_HP)=1 and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('PR',set_tech_DES_EB,set_grid_NS_R)$(par_X_R_DES_EB_NS_RGrid_energyLink(set_tech_DES_EB,set_grid_NS_R)=1 and par_X_pss_model(set_tech_DES_EB)=1 and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('PR',set_tech_DES_CR,set_grid_NS_R)$(par_X_C_DES_CR_NS_RGrid_energyLink(set_tech_DES_CR,set_grid_NS_R)=1 and par_X_pss_model(set_tech_DES_CR)=1 and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('PR',set_tech_DES_EY,set_grid_NS_R)$(par_X_R_DES_EY_NS_RGrid_energyLink(set_tech_DES_EY,set_grid_NS_R)=1 and par_X_pss_model(set_tech_DES_EY)=1 and par_X_pss_model(set_grid_NS_R)=1) = yes;

set_energyLink('PR',set_tech_DES_TS,set_tech_DES_HP)$(sum(set_grid_NS_R$set_energyLink('PR',set_tech_DES_HP,set_grid_NS_R),1)>0 and set_energyLink('W',set_tech_DES_HP,set_tech_DES_TS) and par_X_pss_model(set_tech_DES_TS)=1 and par_X_pss_model(set_tech_DES_HP)=1) = yes;
set_energyLink('PR',set_tech_DES_TS,set_tech_DES_EB)$(sum(set_grid_NS_R$set_energyLink('PR',set_tech_DES_EB,set_grid_NS_R),1)>0 and set_energyLink('W',set_tech_DES_EB,set_tech_DES_TS) and par_X_pss_model(set_tech_DES_TS)=1 and par_X_pss_model(set_tech_DES_EB)=1) = yes;
set_energyLink('PR',set_tech_DES_CS,set_tech_DES_CR)$(sum(set_grid_NS_R$set_energyLink('PR',set_tech_DES_CR,set_grid_NS_R),1)>0 and set_energyLink('W',set_tech_DES_CR,set_tech_DES_CS) and par_X_pss_model(set_tech_DES_CS)=1 and par_X_pss_model(set_tech_DES_CR)=1) = yes;
set_energyLink('PR',set_tech_DES_HS,set_tech_DES_EY)$(sum(set_grid_NS_R$set_energyLink('PR',set_tech_DES_EY,set_grid_NS_R),1)>0 and set_energyLink('H',set_tech_DES_EY,set_tech_DES_HS) and par_X_pss_model(set_tech_DES_HS)=1 and par_X_pss_model(set_tech_DES_EY)=1) = yes;
set_energyLink('PR',set_tech_DES_CLS,set_tech_DES_EY)$(sum(set_grid_NS_R$set_energyLink('PR',set_tech_DES_EY,set_grid_NS_R),1)>0 and set_energyLink('Cl',set_tech_DES_EY,set_tech_DES_CLS) and par_X_pss_model(set_tech_DES_CLS)=1 and par_X_pss_model(set_tech_DES_EY)=1) = yes;

set_energyLink('PR',set_tech_SS_CHP,set_grid_NS_R)$(par_X_R_SS_CHP_NS_RGrid_energyLink(set_tech_SS_CHP,set_grid_NS_R)=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_schedule(set_tech_SS_CHP)=1) and par_X_pss_model(set_grid_NS_R)=1) = yes;
*set_energyLink('PR',set_tech_SS_WT,set_grid_NS_R)$(par_X_E_SS_WT_NS_RGrid_energyLink(set_tech_SS_WT,set_grid_NS_R)=1 and (par_X_pss_schedule(set_tech_SS_WT)=1 or par_X_pss_schedule(set_tech_SS_WT)=1)) = yes;
set_energyLink('PR',set_tech_SS_PHS,set_grid_NS_R)$(par_X_R_SS_PHS_NS_RGrid_energyLink(set_tech_SS_PHS,set_grid_NS_R)=1 and (par_X_pss_schedule(set_tech_SS_PHS)=1 or par_X_pss_model(set_tech_SS_PHS)=1) and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('PR',set_tech_SS_RC,set_grid_NS_R)$(par_X_R_SS_RC_NS_RGrid_energyLink(set_tech_SS_RC,set_grid_NS_R)=1 and (par_X_pss_schedule(set_tech_SS_RC)=1 or par_X_pss_model(set_tech_SS_RC)=1) and par_X_pss_model(set_grid_NS_R)=1) = yes;
*set_energyLink('PR',set_tech_SS_PV,set_grid_NS_R)$(par_X_R_SS_PV_NS_RGrid_energyLink(set_tech_SS_PV,set_grid_NS_R)=1 and (par_X_pss_schedule(set_tech_SS_PV)=1 or par_X_pss_model(set_tech_SS_PV)=1)) = yes;
*set_energyLink('PR',set_tech_SS_BGP,set_grid_NS_R)$(par_X_B_SS_BGP_NS_RGrid_energyLink(set_tech_SS_BGP,set_grid_NS_R)=1 and (par_X_pss_schedule(set_tech_SS_BGP)=1 or par_X_pss_model(set_tech_SS_BGP)=1)) = yes;
set_energyLink('PR',set_tech_SS_TPS,set_grid_NS_R)$(par_X_E_SS_TPS_NS_RGrid_energyLink(set_tech_SS_TPS,set_grid_NS_R)=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS)=1) and par_X_pss_model(set_grid_NS_R)=1) = yes;

set_energyLink('PR',set_tech_SS_CHP,'PRPool')$(par_X_R_SS_CHP_MS_RMarket_energyLink(set_tech_SS_CHP,'PPRMarket')=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_schedule(set_tech_SS_CHP)=1)) = yes;
*set_energyLink('PR',set_tech_SS_WT,'PRPool')$(par_X_R_SS_WT_MS_RMarket_energyLink(set_tech_SS_WT,'PPRMarket')=1 and (par_X_pss_schedule(set_tech_SS_WT)=1 or par_X_pss_schedule(set_tech_SS_WT)=1)) = yes;
set_energyLink('PR',set_tech_SS_PHS,'PRPool')$(par_X_R_SS_PHS_MS_RMarket_energyLink(set_tech_SS_PHS,'PPRMarket')=1 and (par_X_pss_schedule(set_tech_SS_PHS)=1 or par_X_pss_model(set_tech_SS_PHS)=1)) = yes;
set_energyLink('PR',set_tech_SS_RC,'PRPool')$(par_X_R_SS_RC_MS_RMarket_energyLink(set_tech_SS_RC,'PPRMarket')=1 and (par_X_pss_schedule(set_tech_SS_RC)=1 or par_X_pss_model(set_tech_SS_RC)=1)) = yes;
*set_energyLink('PR',set_tech_SS_PV,'PRPool')$(par_X_R_SS_PV_MS_RMarket_energyLink(set_tech_SS_PV,'PPRMarket')=1 and (par_X_pss_schedule(set_tech_SS_PV)=1 or par_X_pss_model(set_tech_SS_PV)=1)) = yes;
*set_energyLink('PR',set_tech_SS_BGP,'PRPool')$(par_X_R_SS_BGP_MS_RMarket_energyLink(set_tech_SS_BGP,'PPRMarket')=1 and (par_X_pss_schedule(set_tech_SS_BGP)=1 or par_X_pss_model(set_tech_SS_BGP)=1)) = yes;
set_energyLink('PR',set_tech_SS_TPS,'PRPool')$(par_X_R_SS_TPS_MS_RMarket_energyLink(set_tech_SS_TPS,'PPRMarket')=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS)=1)) = yes;
*set_energyLink('PR',set_tech_SS_ETB,'PRPool')$(par_X_R_SS_ETB_MS_RMarket_energyLink(set_tech_SS_ETB,'PPRMarket')=1 and (par_X_pss_schedule(set_tech_SS_ETB)=1 or par_X_pss_model(set_tech_SS_ETB)=1)) = yes;
set_energyLink('PR',set_tech_SS_CHP,'SRPool')$(par_X_R_SS_CHP_MS_RMarket_energyLink(set_tech_SS_CHP,'PSRMarket')=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_schedule(set_tech_SS_CHP)=1)) = yes;
*set_energyLink('PR',set_tech_SS_WT,'SRPool')$(par_X_R_SS_WT_MS_RMarket_energyLink(set_tech_SS_WT,'PSRMarket')=1 and (par_X_pss_schedule(set_tech_SS_WT)=1 or par_X_pss_schedule(set_tech_SS_WT)=1)) = yes;
set_energyLink('PR',set_tech_SS_PHS,'SRPool')$(par_X_R_SS_PHS_MS_RMarket_energyLink(set_tech_SS_PHS,'PSRMarket')=1 and (par_X_pss_schedule(set_tech_SS_PHS)=1 or par_X_pss_model(set_tech_SS_PHS)=1)) = yes;
set_energyLink('PR',set_tech_SS_RC,'SRPool')$(par_X_R_SS_RC_MS_RMarket_energyLink(set_tech_SS_RC,'PSRMarket')=1 and (par_X_pss_schedule(set_tech_SS_RC)=1 or par_X_pss_model(set_tech_SS_RC)=1)) = yes;
*set_energyLink('PR',set_tech_SS_PV,'SRPool')$(par_X_R_SS_PV_MS_RMarket_energyLink(set_tech_SS_PV,'PSRMarket')=1 and (par_X_pss_schedule(set_tech_SS_PV)=1 or par_X_pss_model(set_tech_SS_PV)=1)) = yes;
*set_energyLink('PR',set_tech_SS_BGP,'SRPool')$(par_X_R_SS_BGP_MS_RMarket_energyLink(set_tech_SS_BGP,'PSRMarket')=1 and (par_X_pss_schedule(set_tech_SS_BGP)=1 or par_X_pss_model(set_tech_SS_BGP)=1)) = yes;
set_energyLink('PR',set_tech_SS_TPS,'SRPool')$(par_X_R_SS_TPS_MS_RMarket_energyLink(set_tech_SS_TPS,'PSRMarket')=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS)=1)) = yes;
set_energyLink('PR',set_tech_SS_CHP,'TRPool')$(par_X_R_SS_CHP_MS_RMarket_energyLink(set_tech_SS_CHP,'PTRMarket')=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_schedule(set_tech_SS_CHP)=1)) = yes;
*set_energyLink('PR',set_tech_SS_WT,'TRPool')$(par_X_R_SS_WT_MS_RMarket_energyLink(set_tech_SS_WT,'PTRMarket')=1 and (par_X_pss_schedule(set_tech_SS_WT)=1 or par_X_pss_schedule(set_tech_SS_WT)=1)) = yes;
set_energyLink('PR',set_tech_SS_PHS,'TRPool')$(par_X_R_SS_PHS_MS_RMarket_energyLink(set_tech_SS_PHS,'PTRMarket')=1 and (par_X_pss_schedule(set_tech_SS_PHS)=1 or par_X_pss_model(set_tech_SS_PHS)=1)) = yes;
set_energyLink('PR',set_tech_SS_RC,'TRPool')$(par_X_R_SS_RC_MS_RMarket_energyLink(set_tech_SS_RC,'PTRMarket')=1 and (par_X_pss_schedule(set_tech_SS_RC)=1 or par_X_pss_model(set_tech_SS_RC)=1)) = yes;
*set_energyLink('PR',set_tech_SS_PV,'TRPool')$(par_X_R_SS_PV_MS_RMarket_energyLink(set_tech_SS_PV,'PTRMarket')=1 and (par_X_pss_schedule(set_tech_SS_PV)=1 or par_X_pss_model(set_tech_SS_PV)=1)) = yes;
*set_energyLink('PR',set_tech_SS_BGP,'TRPool')$(par_X_R_SS_BGP_MS_RMarket_energyLink(set_tech_SS_BGP,'PTRMarket')=1 and (par_X_pss_schedule(set_tech_SS_BGP)=1 or par_X_pss_model(set_tech_SS_BGP)=1)) = yes;
*set_energyLink('PR',set_tech_SS_ETB,'TRPool')$(par_X_R_SS_ETB_MS_RMarket_energyLink(set_tech_SS_ETB,'PTRMarket')=1 and (par_X_pss_schedule(set_tech_SS_ETB)=1 or par_X_pss_model(set_tech_SS_ETB)=1)) = yes;
set_energyLink('PR',set_tech_SS_TPS,'TRPool')$(par_X_R_SS_TPS_MS_RMarket_energyLink(set_tech_SS_TPS,'PTRMarket')=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS)=1)) = yes;
set_energyLink('NR',set_grid_NS_W,set_tech_SS_CHP)$((SUM(set_market_MS_P$set_energyLink('PR',set_tech_SS_CHP,set_market_MS_P),1)>0 OR SUM(set_grid_NS_R$set_energyLink('PR',set_tech_SS_CHP,set_grid_NS_R),1)>0) AND set_energyLink('W',set_tech_SS_CHP,set_grid_NS_W)) = yes;
set_energyLink('NR',set_grid_NS_W,set_tech_SS_RC)$((SUM(set_market_MS_P$set_energyLink('PR',set_tech_SS_RC,set_market_MS_P),1)>0 OR SUM(set_grid_NS_R$set_energyLink('PR',set_tech_SS_RC,set_grid_NS_R),1)>0) AND set_energyLink('W',set_tech_SS_RC,set_grid_NS_W)) = yes;

set_energyLink('NR',set_tech_DES_ES,set_grid_NS_R)$(par_X_R_DES_ES_NS_RGrid_energyLink(set_tech_DES_ES,set_grid_NS_R)=1 and par_X_pss_model(set_tech_DES_ES)=1 and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('NR',set_tech_DES_HP,set_grid_NS_R)$(par_X_R_DES_HP_NS_RGrid_energyLink(set_tech_DES_HP,set_grid_NS_R)=1 and par_X_pss_model(set_tech_DES_HP)=1 and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('NR',set_tech_DES_EB,set_grid_NS_R)$(par_X_R_DES_EB_NS_RGrid_energyLink(set_tech_DES_EB,set_grid_NS_R)=1 and par_X_pss_model(set_tech_DES_EB)=1 and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('NR',set_tech_DES_CR,set_grid_NS_R)$(par_X_C_DES_CR_NS_RGrid_energyLink(set_tech_DES_CR,set_grid_NS_R)=1 and par_X_pss_model(set_tech_DES_CR)=1 and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('NR',set_tech_DES_CHP,set_grid_NS_R)$(par_X_R_DES_CHP_NS_RGrid_energyLink(set_tech_DES_CHP,set_grid_NS_R)=1 and par_X_pss_model(set_tech_DES_CHP)=1 and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('NR',set_tech_DES_PV,set_grid_NS_R)$(par_X_R_DES_PV_NS_RGrid_energyLink(set_tech_DES_PV,set_grid_NS_R)=1 and par_X_pss_model(set_tech_DES_PV)=1 and par_X_pss_model(set_grid_NS_R)=1 and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('PR',set_tech_DES_TS,set_tech_DES_CHP)$(sum(set_grid_NS_R$set_energyLink('NR',set_tech_DES_CHP,set_grid_NS_R),1)>0 and set_energyLink('W',set_tech_DES_CHP,set_tech_DES_TS) and par_X_pss_model(set_tech_DES_TS)=1 and par_X_pss_model(set_tech_DES_CHP)=1) = yes;
set_energyLink('NR',set_tech_DES_TS,set_tech_DES_HP)$(sum(set_grid_NS_R$set_energyLink('NR',set_tech_DES_HP,set_grid_NS_R),1)>0 and set_energyLink('W',set_tech_DES_HP,set_tech_DES_TS) and par_X_pss_model(set_tech_DES_TS)=1 and par_X_pss_model(set_tech_DES_HP)=1) = yes;
set_energyLink('NR',set_tech_DES_TS,set_tech_DES_EB)$(sum(set_grid_NS_R$set_energyLink('NR',set_tech_DES_EB,set_grid_NS_R),1)>0 and set_energyLink('W',set_tech_DES_EB,set_tech_DES_TS) and par_X_pss_model(set_tech_DES_TS)=1 and par_X_pss_model(set_tech_DES_EB)=1) = yes;
set_energyLink('NR',set_tech_DES_CS,set_tech_DES_CR)$(sum(set_grid_NS_R$set_energyLink('NR',set_tech_DES_CR,set_grid_NS_R),1)>0 and set_energyLink('W',set_tech_DES_CR,set_tech_DES_CS) and par_X_pss_model(set_tech_DES_CS)=1 and par_X_pss_model(set_tech_DES_CR)=1) = yes;
set_energyLink('NR',set_tech_DES_EY,set_grid_NS_R)$(par_X_R_DES_EY_NS_RGrid_energyLink(set_tech_DES_EY,set_grid_NS_R)=1 and par_X_pss_model(set_tech_DES_EY)=1 and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('NR',set_tech_DES_HS,set_tech_DES_EY)$(sum(set_grid_NS_R$set_energyLink('NR',set_tech_DES_EY,set_grid_NS_R),1)>0 and set_energyLink('H',set_tech_DES_EY,set_tech_DES_HS) and par_X_pss_model(set_tech_DES_HS)=1 and par_X_pss_model(set_tech_DES_EY)=1) = yes;
set_energyLink('NR',set_tech_DES_CLS,set_tech_DES_EY)$(sum(set_grid_NS_R$set_energyLink('NR',set_tech_DES_EY,set_grid_NS_R),1)>0 and set_energyLink('Cl',set_tech_DES_EY,set_tech_DES_CLS) and par_X_pss_model(set_tech_DES_CLS)=1 and par_X_pss_model(set_tech_DES_EY)=1) = yes;

set_energyLink('NR',set_tech_SS_CHP,set_grid_NS_R)$(par_X_R_SS_CHP_NS_RGrid_energyLink(set_tech_SS_CHP,set_grid_NS_R)=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_schedule(set_tech_SS_CHP)=1) and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('NR',set_tech_SS_WT,set_grid_NS_R)$(par_X_R_SS_WT_NS_RGrid_energyLink(set_tech_SS_WT,set_grid_NS_R)=1 and (par_X_pss_schedule(set_tech_SS_WT)=1 or par_X_pss_schedule(set_tech_SS_WT)=1) and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('NR',set_tech_SS_PHS,set_grid_NS_R)$(par_X_R_SS_PHS_NS_RGrid_energyLink(set_tech_SS_PHS,set_grid_NS_R)=1 and (par_X_pss_schedule(set_tech_SS_PHS)=1 or par_X_pss_model(set_tech_SS_PHS)=1) and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('NR',set_tech_SS_RC,set_grid_NS_R)$(par_X_R_SS_RC_NS_RGrid_energyLink(set_tech_SS_RC,set_grid_NS_R)=1 and (par_X_pss_schedule(set_tech_SS_RC)=1 or par_X_pss_model(set_tech_SS_RC)=1) and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('NR',set_tech_SS_PV,set_grid_NS_R)$(par_X_R_SS_PV_NS_RGrid_energyLink(set_tech_SS_PV,set_grid_NS_R)=1 and (par_X_pss_schedule(set_tech_SS_PV)=1 or par_X_pss_model(set_tech_SS_PV)=1) and par_X_pss_model(set_grid_NS_R)=1) = yes;
*set_energyLink('NR',set_tech_SS_BGP,set_grid_NS_R)$(par_X_B_SS_BGP_NS_RGrid_energyLink(set_tech_SS_BGP,set_grid_NS_R)=1 and (par_X_pss_schedule(set_tech_SS_BGP)=1 or par_X_pss_model(set_tech_SS_BGP)=1)) = yes;
*set_energyLink('NR',set_tech_SS_ETB,set_grid_NS_R)$(par_X_W_SS_ETB_NS_RGrid_energyLink(set_tech_SS_ETB,set_grid_NS_R)=1 and (par_X_pss_schedule(set_tech_SS_ETB)=1 or par_X_pss_model(set_tech_SS_ETB)=1)) = yes;
set_energyLink('NR',set_tech_SS_RH,set_grid_NS_R)$(par_X_R_SS_RH_NS_RGrid_energyLink(set_tech_SS_RH,set_grid_NS_R)=1 and (par_X_pss_schedule(set_tech_SS_RH)=1 or par_X_pss_model(set_tech_SS_RH)=1) and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('NR',set_tech_SS_TPS,set_grid_NS_R)$(par_X_E_SS_TPS_NS_RGrid_energyLink(set_tech_SS_TPS,set_grid_NS_R)=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS)=1) and par_X_pss_model(set_grid_NS_R)=1) = yes;

set_energyLink('NR',set_tech_SS_CHP,'PRPool')$(par_X_R_SS_CHP_MS_RMarket_energyLink(set_tech_SS_CHP,'NPRMarket')=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_schedule(set_tech_SS_CHP)=1)) = yes;
set_energyLink('NR',set_tech_SS_WT,'PRPool')$(par_X_R_SS_WT_MS_RMarket_energyLink(set_tech_SS_WT,'NPRMarket')=1 and (par_X_pss_schedule(set_tech_SS_WT)=1 or par_X_pss_schedule(set_tech_SS_WT)=1)) = yes;
set_energyLink('NR',set_tech_SS_PHS,'PRPool')$(par_X_R_SS_PHS_MS_RMarket_energyLink(set_tech_SS_PHS,'NPRMarket')=1 and (par_X_pss_schedule(set_tech_SS_PHS)=1 or par_X_pss_model(set_tech_SS_PHS)=1)) = yes;
set_energyLink('NR',set_tech_SS_RC,'PRPool')$(par_X_R_SS_RC_MS_RMarket_energyLink(set_tech_SS_RC,'NPRMarket')=1 and (par_X_pss_schedule(set_tech_SS_RC)=1 or par_X_pss_model(set_tech_SS_RC)=1)) = yes;
set_energyLink('NR',set_tech_SS_PV,'PRPool')$(par_X_R_SS_PV_MS_RMarket_energyLink(set_tech_SS_PV,'NPRMarket')=1 and (par_X_pss_schedule(set_tech_SS_PV)=1 or par_X_pss_model(set_tech_SS_PV)=1)) = yes;
set_energyLink('NR',set_tech_SS_RH,'PRPool')$(par_X_R_SS_RH_MS_RMarket_energyLink(set_tech_SS_RH,'NPRMarket')=1 and (par_X_pss_schedule(set_tech_SS_RH)=1 or par_X_pss_model(set_tech_SS_RH)=1)) = yes;
*set_energyLink('NR',set_tech_SS_BGP,'PRPool')$(par_X_R_SS_BGP_MS_RMarket_energyLink(set_tech_SS_BGP,'NPRMarket')=1 and (par_X_pss_schedule(set_tech_SS_BGP)=1 or par_X_pss_model(set_tech_SS_BGP)=1)) = yes;
*set_energyLink('NR',set_tech_SS_ETB,'PRPool')$(par_X_R_SS_ETB_MS_RMarket_energyLink(set_tech_SS_ETB,'NPRMarket')=1 and (par_X_pss_schedule(set_tech_SS_ETB)=1 or par_X_pss_model(set_tech_SS_ETB)=1)) = yes;
set_energyLink('NR',set_tech_SS_TPS,'PRPool')$(par_X_R_SS_TPS_MS_RMarket_energyLink(set_tech_SS_TPS,'NPRMarket')=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS)=1)) = yes;
set_energyLink('NR',set_tech_SS_CHP,'SRPool')$(par_X_R_SS_CHP_MS_RMarket_energyLink(set_tech_SS_CHP,'NPRMarket')=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_schedule(set_tech_SS_CHP)=1)) = yes;
set_energyLink('NR',set_tech_SS_WT,'SRPool')$(par_X_R_SS_WT_MS_RMarket_energyLink(set_tech_SS_WT,'NSRMarket')=1 and (par_X_pss_schedule(set_tech_SS_WT)=1 or par_X_pss_schedule(set_tech_SS_WT)=1)) = yes;
set_energyLink('NR',set_tech_SS_PHS,'SRPool')$(par_X_R_SS_PHS_MS_RMarket_energyLink(set_tech_SS_PHS,'NSRMarket')=1 and (par_X_pss_schedule(set_tech_SS_PHS)=1 or par_X_pss_model(set_tech_SS_PHS)=1)) = yes;
set_energyLink('NR',set_tech_SS_RC,'SRPool')$(par_X_R_SS_RC_MS_RMarket_energyLink(set_tech_SS_RC,'NSRMarket')=1 and (par_X_pss_schedule(set_tech_SS_RC)=1 or par_X_pss_model(set_tech_SS_RC)=1)) = yes;
set_energyLink('NR',set_tech_SS_PV,'SRPool')$(par_X_R_SS_PV_MS_RMarket_energyLink(set_tech_SS_PV,'NSRMarket')=1 and (par_X_pss_schedule(set_tech_SS_PV)=1 or par_X_pss_model(set_tech_SS_PV)=1)) = yes;
set_energyLink('NR',set_tech_SS_RH,'SRPool')$(par_X_R_SS_RH_MS_RMarket_energyLink(set_tech_SS_RH,'NSRMarket')=1 and (par_X_pss_schedule(set_tech_SS_RH)=1 or par_X_pss_model(set_tech_SS_RH)=1)) = yes;
*set_energyLink('NR',set_tech_SS_BGP,'SRPool')$(par_X_R_SS_BGP_MS_RMarket_energyLink(set_tech_SS_BGP,'NSRMarket')=1 and (par_X_pss_schedule(set_tech_SS_BGP)=1 or par_X_pss_model(set_tech_SS_BGP)=1)) = yes;
*set_energyLink('NR',set_tech_SS_ETB,'SRPool')$(par_X_R_SS_ETB_MS_RMarket_energyLink(set_tech_SS_ETB,'NSRMarket')=1 and (par_X_pss_schedule(set_tech_SS_ETB)=1 or par_X_pss_model(set_tech_SS_ETB)=1)) = yes;
set_energyLink('NR',set_tech_SS_TPS,'SRPool')$(par_X_R_SS_TPS_MS_RMarket_energyLink(set_tech_SS_TPS,'NSRMarket')=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS)=1)) = yes;
set_energyLink('NR',set_tech_SS_CHP,'TRPool')$(par_X_R_SS_CHP_MS_RMarket_energyLink(set_tech_SS_CHP,'NTRMarket')=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_schedule(set_tech_SS_CHP)=1)) = yes;
set_energyLink('NR',set_tech_SS_WT,'TRPool')$(par_X_R_SS_WT_MS_RMarket_energyLink(set_tech_SS_WT,'NTRMarket')=1 and (par_X_pss_schedule(set_tech_SS_WT)=1 or par_X_pss_schedule(set_tech_SS_WT)=1)) = yes;
set_energyLink('NR',set_tech_SS_PHS,'TRPool')$(par_X_R_SS_PHS_MS_RMarket_energyLink(set_tech_SS_PHS,'NTRMarket')=1 and (par_X_pss_schedule(set_tech_SS_PHS)=1 or par_X_pss_model(set_tech_SS_PHS)=1)) = yes;
set_energyLink('NR',set_tech_SS_RC,'TRPool')$(par_X_R_SS_RC_MS_RMarket_energyLink(set_tech_SS_RC,'NTRMarket')=1 and (par_X_pss_schedule(set_tech_SS_RC)=1 or par_X_pss_model(set_tech_SS_RC)=1)) = yes;
set_energyLink('NR',set_tech_SS_PV,'TRPool')$(par_X_R_SS_PV_MS_RMarket_energyLink(set_tech_SS_PV,'NTRMarket')=1 and (par_X_pss_schedule(set_tech_SS_PV)=1 or par_X_pss_model(set_tech_SS_PV)=1)) = yes;
*set_energyLink('NR',set_tech_SS_BGP,'TRPool')$(par_X_R_SS_BGP_MS_RMarket_energyLink(set_tech_SS_BGP,'NTRMarket')=1 and (par_X_pss_schedule(set_tech_SS_BGP)=1 or par_X_pss_model(set_tech_SS_BGP)=1)) = yes;
*set_energyLink('NR',set_tech_SS_ETB,'TRPool')$(par_X_R_SS_ETB_MS_RMarket_energyLink(set_tech_SS_ETB,'NTRMarket')=1 and (par_X_pss_schedule(set_tech_SS_ETB)=1 or par_X_pss_model(set_tech_SS_ETB)=1)) = yes;
set_energyLink('NR',set_tech_SS_TPS,'TRPool')$(par_X_R_SS_TPS_MS_RMarket_energyLink(set_tech_SS_TPS,'NTRMarket')=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS)=1)) = yes;
set_energyLink('NR',set_tech_SS_RH,'TRPool')$(par_X_R_SS_RH_MS_RMarket_energyLink(set_tech_SS_RH,'NTRMarket')=1 and (par_X_pss_schedule(set_tech_SS_RH)=1 or par_X_pss_model(set_tech_SS_RH)=1)) = yes;
set_energyLink('PR',set_grid_NS_W,set_tech_SS_CHP)$((SUM(set_market_MS_P$set_energyLink('NR',set_tech_SS_CHP,set_market_MS_P),1)>0 OR SUM(set_grid_NS_R$set_energyLink('NR',set_tech_SS_CHP,set_grid_NS_R),1)>0) AND set_energyLink('W',set_tech_SS_CHP,set_grid_NS_W)) = yes;
set_energyLink('PR',set_grid_NS_W,set_tech_SS_RC)$((SUM(set_market_MS_P$set_energyLink('NR',set_tech_SS_RC,set_market_MS_P),1)>0 OR SUM(set_grid_NS_R$set_energyLink('NR',set_tech_SS_RC,set_grid_NS_R),1)>0) AND set_energyLink('W',set_tech_SS_RC,set_grid_NS_W)) = yes;

set_energyLink('NR',set_grid_NS_R,set_market_MS_P)$(SUM(set_pss$set_energyLink('NR',set_pss,set_grid_NS_R),1)>0 and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('NR','PRPool','NPRMarket')$(SUM(set_pss$set_energyLink('NR',set_pss,'PRPool'),1)>0 and par_X_pss_model('NPRMarket')=1) = yes;
set_energyLink('NR','SRPool','NSRMarket')$(SUM(set_pss$set_energyLink('NR',set_pss,'SRPool'),1)>0 and par_X_pss_model('NSRMarket')=1) = yes;
set_energyLink('NR','TRPool','NTRMarket')$(SUM(set_pss$set_energyLink('NR',set_pss,'TRPool'),1)>0 and par_X_pss_model('NTRMarket')=1) = yes;
set_energyLink('NR','FXPool','FXNMarket')$(SUM(set_pss$set_energyLink('NR',set_pss,'FXPool'),1)>0 and par_X_pss_model('FXNMarket')=1) = yes;
set_energyLink('NR',set_grid_NS_R,'FXPool')$(NOT set_energyLink('NR','FXPool','FXNMarket'))=NO;

set_energyLink('PR',set_grid_NS_R,set_market_MS_P)$(SUM(set_pss$set_energyLink('PR',set_pss,set_grid_NS_R),1)>0 and par_X_pss_model(set_grid_NS_R)=1) = yes;
set_energyLink('PR','PRPool','PPRMarket')$(SUM(set_pss$set_energyLink('PR',set_pss,'PRPool'),1)>0 and par_X_pss_model('PPRMarket')=1) = yes;
set_energyLink('PR','SRPool','PSRMarket')$(SUM(set_pss$set_energyLink('PR',set_pss,'SRPool'),1)>0 and par_X_pss_model('PSRMarket')=1) = yes;
set_energyLink('PR','TRPool','PTRMarket')$(SUM(set_pss$set_energyLink('PR',set_pss,'TRPool'),1)>0 and par_X_pss_model('PTRMarket')=1) = yes;
set_energyLink('PR','FXPool','FXPMarket')$(SUM(set_pss$set_energyLink('PR',set_pss,'FXPool'),1)>0 and par_X_pss_model('FXPMarket')=1) = yes;
set_energyLink('PR',set_grid_NS_R,'FXPool')$(NOT set_energyLink('PR','FXPool','FXNMarket'))=NO;

