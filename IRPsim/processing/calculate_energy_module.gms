***-----------------------------------------------------------------------------
***Übersicht Energieflüsse
***-----------------------------------------------------------------------------
par_out_E_fromPss_toPss(set_ii,set_fromPss,set_toPss)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$set_energyLink_opt('E',set_fromPss,set_toPss);
par_out_W_fromPss_toPss(set_ii,set_fromPss,set_toPss)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'W',set_fromPss,set_toPss)$set_energyLink_opt('W',set_fromPss,set_toPss);
par_out_G_fromPss_toPss(set_ii,set_fromPss,set_toPss)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'G',set_fromPss,set_toPss)$set_energyLink_opt('G',set_fromPss,set_toPss);
par_out_B_fromPss_toPss(set_ii,set_fromPss,set_toPss)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'B',set_fromPss,set_toPss)$set_energyLink_opt('B',set_fromPss,set_toPss);
par_out_O_fromPss_toPss(set_ii,set_fromPss,set_toPss)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'O',set_fromPss,set_toPss)$set_energyLink_opt('O',set_fromPss,set_toPss);
par_out_RF_fromPss_toPss(set_ii,set_fromPss,set_toPss)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'RF',set_fromPss,set_toPss)$set_energyLink_opt('RF',set_fromPss,set_toPss);
par_out_T_fromPss_toPss(set_ii,set_fromPss,set_toPss)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'T',set_fromPss,set_toPss)$set_energyLink_opt('T',set_fromPss,set_toPss);
par_out_C_fromPss_toPss(set_ii,set_fromPss,set_toPss)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'C',set_fromPss,set_toPss)$set_energyLink_opt('C',set_fromPss,set_toPss);
par_out_L_fromPss_toPss(set_ii,set_fromPss,set_toPss)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'L',set_fromPss,set_toPss)$set_energyLink_opt('L',set_fromPss,set_toPss);
par_out_HC_fromPss_toPss(set_ii,set_fromPss,set_toPss)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'HC',set_fromPss,set_toPss)$set_energyLink_opt('HC',set_fromPss,set_toPss);
par_out_PR_fromPss_toPss(set_ii,set_fromPss,set_toPss)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_fromPss,set_toPss)$set_energyLink_opt('PR',set_fromPss,set_toPss);
par_out_NR_fromPss_toPss(set_ii,set_fromPss,set_toPss)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_fromPss,set_toPss)$set_energyLink_opt('NR',set_fromPss,set_toPss);

***-----------------------------------------------------------------------------
***Strom Last
***-----------------------------------------------------------------------------
par_out_E_fromPss_toELoad(set_ii,set_side_opt,set_load_DS_E)$set_t_store(set_ii) = sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E)$set_pssOH(set_side_opt,set_load_DS_E));

par_out_E_fromEGrid_toELoad(set_ii,set_side_opt,set_load_DS_E)$set_t_store(set_ii) = var_energyFlow.l(set_ii,'E','EGrid',set_load_DS_E)$set_energyLink_opt('E','EGrid',set_load_DS_E)$set_pssOH(set_side_opt,set_load_DS_E);
par_out_E_fromES_toELoad(set_ii,set_side_opt,set_load_DS_E)$set_t_store(set_ii) =  sum(set_tech_DES_ES,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_load_DS_E)$set_energyLink_opt('E',set_tech_DES_ES,set_load_DS_E)$set_pssOH(set_side_opt,set_load_DS_E));
par_out_E_fromPV_toELoad(set_ii,set_side_opt,set_load_DS_E)$set_t_store(set_ii) =  sum(set_tech_DES_PV,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_load_DS_E)$set_energyLink_opt('E',set_tech_DES_PV,set_load_DS_E)$set_pssOH(set_side_opt,set_load_DS_E));
par_out_E_fromCHP_toELoad(set_ii,set_side_opt,set_load_DS_E)$set_t_store(set_ii) =  sum(set_tech_DES_CHP,var_energyFlow.l(set_ii,'E',set_tech_DES_CHP,set_load_DS_E)$set_energyLink_opt('E',set_tech_DES_CHP,set_load_DS_E)$set_pssOH(set_side_opt,set_load_DS_E));

***-----------------------------------------------------------------------------
***Fernwärme Last
***-----------------------------------------------------------------------------
par_out_W_fromPss_toWLoad(set_ii,set_side_opt,set_load_DS_W)$set_t_store(set_ii)= sum(set_fromPss,var_energyFlow.l(set_ii,'W',set_fromPss,set_load_DS_W)$set_energyLink_opt('W',set_fromPss,set_load_DS_W)$set_pssOH(set_side_opt,set_load_DS_W));

par_out_W_fromWGrid_toWLoad(set_ii,set_side_opt,set_load_DS_W)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'W','WGrid',set_load_DS_W)$set_energyLink_opt('W','WGrid',set_load_DS_W)$set_pssOH(set_side_opt,set_load_DS_W);
par_out_W_fromEB_toWLoad(set_ii,set_side_opt,set_load_DS_W)$set_t_store(set_ii)= sum(set_tech_DES_EB,var_energyFlow.l(set_ii,'W',set_tech_DES_EB,set_load_DS_W)$set_energyLink_opt('W',set_tech_DES_EB,set_load_DS_W)$set_pssOH(set_side_opt,set_load_DS_W));
par_out_W_fromNGB_toWLoad(set_ii,set_side_opt,set_load_DS_W)$set_t_store(set_ii)= sum(set_tech_DES_NGB,var_energyFlow.l(set_ii,'W',set_tech_DES_NGB,set_load_DS_W)$set_energyLink_opt('W',set_tech_DES_NGB,set_load_DS_W)$set_pssOH(set_side_opt,set_load_DS_W));
par_out_W_fromHP_toWLoad(set_ii,set_side_opt,set_load_DS_W)$set_t_store(set_ii)= sum(set_tech_DES_HP,var_energyFlow.l(set_ii,'W',set_tech_DES_HP,set_load_DS_W)$set_energyLink_opt('W',set_tech_DES_HP,set_load_DS_W)$set_pssOH(set_side_opt,set_load_DS_W));
par_out_W_fromTS_toWLoad(set_ii,set_side_opt,set_load_DS_W)$set_t_store(set_ii)= sum(set_tech_DES_TS,var_energyFlow.l(set_ii,'W',set_tech_DES_TS,set_load_DS_W)$set_energyLink_opt('W',set_tech_DES_TS,set_load_DS_W)$set_pssOH(set_side_opt,set_load_DS_W));
par_out_W_fromCHP_toWLoad(set_ii,set_side_opt,set_load_DS_W)$set_t_store(set_ii)= sum(set_tech_DES_CHP,var_energyFlow.l(set_ii,'W',set_tech_DES_CHP,set_load_DS_W)$set_energyLink_opt('W',set_tech_DES_CHP,set_load_DS_W)$set_pssOH(set_side_opt,set_load_DS_W));
par_out_W_fromST_toWLoad(set_ii,set_side_opt,set_load_DS_W)$set_t_store(set_ii)= sum(set_tech_DES_ST,var_energyFlow.l(set_ii,'W',set_tech_DES_ST,set_load_DS_W)$set_energyLink_opt('W',set_tech_DES_ST,set_load_DS_W)$set_pssOH(set_side_opt,set_load_DS_W));

***-----------------------------------------------------------------------------
***Gas Last
***-----------------------------------------------------------------------------
par_out_G_fromPss_toGLoad(set_ii,set_side_opt,set_load_DS_G)$set_t_store(set_ii)= sum(set_fromPss,var_energyFlow.l(set_ii,'G',set_fromPss,set_load_DS_G)$set_energyLink_opt('G',set_fromPss,set_load_DS_G)$set_pssOH(set_side_opt,set_load_DS_G));
par_out_G_fromGGrid_toGLoad(set_ii,set_side_opt,set_load_DS_G)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'G','GGrid',set_load_DS_G)$set_energyLink_opt('G','GGrid',set_load_DS_G)$set_pssOH(set_side_opt,set_load_DS_G);

***-----------------------------------------------------------------------------
***Stromspeicher
***-----------------------------------------------------------------------------
par_out_E_fromPss_toES(set_ii,set_side_opt,set_tech_DES_ES)$set_t_store(set_ii)= sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_ES)$set_energyLink_opt('E',set_fromPss,set_tech_DES_ES)$set_pssOH(set_side_opt,set_tech_DES_ES));
par_out_E_fromES_toPss(set_ii,set_side_opt,set_tech_DES_ES)$set_t_store(set_ii)= sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_toPss)$set_energyLink_opt('E',set_tech_DES_ES,set_toPss)$set_pssOH(set_side_opt,set_tech_DES_ES));


par_out_E_fromPV_toES(set_ii,set_side_opt,set_tech_DES_ES)$set_t_store(set_ii)= sum(set_tech_DES_PV,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_ES)$set_energyLink_opt('E',set_tech_DES_PV,set_tech_DES_ES)$set_pssOH(set_side_opt,set_tech_DES_ES));
par_out_E_fromEGrid_toES(set_ii,set_side_opt,set_tech_DES_ES)$set_t_store(set_ii) = var_energyFlow.l(set_ii,'E','EGrid',set_tech_DES_ES)$set_energyLink_opt('E','EGrid',set_tech_DES_ES)$set_pssOH(set_side_opt,set_tech_DES_ES);
par_out_E_fromCHP_toES(set_ii,set_side_opt,set_tech_DES_ES)$set_t_store(set_ii)= sum(set_tech_DES_CHP,var_energyFlow.l(set_ii,'E',set_tech_DES_CHP,set_tech_DES_ES)$set_energyLink_opt('E',set_tech_DES_CHP,set_tech_DES_ES)$set_pssOH(set_side_opt,set_tech_DES_ES));

par_out_E_fromES_toELoad(set_ii,set_side_opt,set_tech_DES_ES)$set_t_store(set_ii)= sum(set_load_DS_E,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_load_DS_E)$set_energyLink_opt('E',set_tech_DES_ES,set_load_DS_E)$set_pssOH(set_side_opt,set_tech_DES_ES));
*par_out_E_fromES_toEGrid(set_ii,set_side_opt,set_tech_DES_ES)$set_t_store(set_ii)= sum(set_load_DS_E,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_load_DS_E)$set_energyLink_opt('E',set_tech_DES_ES,set_load_DS_E)$set_pssOH(set_side_opt,set_tech_DES_ES));
par_out_E_fromES_toHP(set_ii,set_side_opt,set_tech_DES_ES)$set_t_store(set_ii)= sum(set_tech_DES_HP,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_tech_DES_HP)$set_energyLink_opt('E',set_tech_DES_ES,set_tech_DES_HP)$set_pssOH(set_side_opt,set_tech_DES_ES));
par_out_E_fromES_toEB(set_ii,set_side_opt,set_tech_DES_ES)$set_t_store(set_ii)= sum(set_tech_DES_EB,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_tech_DES_EB)$set_energyLink_opt('E',set_tech_DES_ES,set_tech_DES_EB)$set_pssOH(set_side_opt,set_tech_DES_ES));
par_out_E_fromES_toPRGrid(set_ii,set_side_opt,set_tech_DES_ES)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_DES_ES,'RGrid')$set_energyLink_opt('PR',set_tech_DES_ES,'RGrid')$set_pssOH(set_side_opt,set_tech_DES_ES);
par_out_E_fromES_toNRGrid(set_ii,set_side_opt,set_tech_DES_ES)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_DES_ES,'RGrid')$set_energyLink_opt('NR',set_tech_DES_ES,'RGrid')$set_pssOH(set_side_opt,set_tech_DES_ES);

***-----------------------------------------------------------------------------
***Wärmespeicher
***-----------------------------------------------------------------------------
par_out_W_fromPss_toTS(set_ii,set_side_opt,set_tech_DES_TS)$set_t_store(set_ii)= sum(set_fromPss,var_energyFlow.l(set_ii,'W',set_fromPss,set_tech_DES_TS)$set_energyLink_opt('W',set_fromPss,set_tech_DES_TS)$set_pssOH(set_side_opt,set_tech_DES_TS));
par_out_W_fromTS_toPss(set_ii,set_side_opt,set_tech_DES_TS)$set_t_store(set_ii)= sum(set_toPss,var_energyFlow.l(set_ii,'W',set_tech_DES_TS,set_toPss)$set_energyLink_opt('W',set_tech_DES_TS,set_toPss)$set_pssOH(set_side_opt,set_tech_DES_TS));

par_out_W_fromEB_toTS(set_ii,set_side_opt,set_tech_DES_TS)$set_t_store(set_ii)= sum(set_tech_DES_EB,var_energyFlow.l(set_ii,'W',set_tech_DES_EB,set_tech_DES_TS)$set_energyLink_opt('W',set_tech_DES_EB,set_tech_DES_TS)$set_pssOH(set_side_opt,set_tech_DES_TS));
par_out_W_fromNGB_toTS(set_ii,set_side_opt,set_tech_DES_TS)$set_t_store(set_ii)= sum(set_tech_DES_NGB,var_energyFlow.l(set_ii,'W',set_tech_DES_NGB,set_tech_DES_TS)$set_energyLink_opt('W',set_tech_DES_NGB,set_tech_DES_TS)$set_pssOH(set_side_opt,set_tech_DES_TS));
par_out_W_fromHP_toTS(set_ii,set_side_opt,set_tech_DES_TS)$set_t_store(set_ii)= sum(set_tech_DES_HP,var_energyFlow.l(set_ii,'W',set_tech_DES_HP,set_tech_DES_TS)$set_energyLink_opt('W',set_tech_DES_HP,set_tech_DES_TS)$set_pssOH(set_side_opt,set_tech_DES_TS));
par_out_W_fromWGrid_toTS(set_ii,set_side_opt,set_tech_DES_TS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'W','WGrid',set_tech_DES_TS)$set_energyLink_opt('W','WGrid',set_tech_DES_TS)$set_pssOH(set_side_opt,set_tech_DES_TS);
par_out_W_fromCHP_toTS(set_ii,set_side_opt,set_tech_DES_TS)$set_t_store(set_ii)= sum(set_tech_DES_CHP,var_energyFlow.l(set_ii,'W',set_tech_DES_CHP,set_tech_DES_TS)$set_energyLink_opt('W',set_tech_DES_CHP,set_tech_DES_TS)$set_pssOH(set_side_opt,set_tech_DES_TS));
par_out_W_fromST_toTS(set_ii,set_side_opt,set_tech_DES_TS)$set_t_store(set_ii)= sum(set_tech_DES_ST,var_energyFlow.l(set_ii,'W',set_tech_DES_ST,set_tech_DES_TS)$set_energyLink_opt('W',set_tech_DES_ST,set_tech_DES_TS)$set_pssOH(set_side_opt,set_tech_DES_TS));

par_out_W_fromTS_toWLoad(set_ii,set_side_opt,set_tech_DES_TS)$set_t_store(set_ii)= sum(set_load_DS_W,var_energyFlow.l(set_ii,'W',set_tech_DES_TS,set_load_DS_W)$set_energyLink_opt('W',set_tech_DES_TS,set_load_DS_W)$set_pssOH(set_side_opt,set_tech_DES_TS));
par_out_W_fromTS_toWGrid(set_ii,set_side_opt,set_tech_DES_TS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'W',set_tech_DES_TS,'WGrid')$set_energyLink_opt('W',set_tech_DES_TS,'WGrid')$set_pssOH(set_side_opt,set_tech_DES_TS);

***-----------------------------------------------------------------------------
***Gaskessel
***-----------------------------------------------------------------------------
par_out_G_fromPss_toNGB(set_ii,set_side_opt,set_tech_DES_NGB)$set_t_store(set_ii)= sum(set_fromPss,var_energyFlow.l(set_ii,'G',set_fromPss,set_tech_DES_NGB)$set_energyLink_opt('G',set_fromPss,set_tech_DES_NGB)$set_pssOH(set_side_opt,set_tech_DES_NGB));
par_out_W_fromNGB_toPss(set_ii,set_side_opt,set_tech_DES_NGB)$set_t_store(set_ii)= sum(set_toPss,var_energyFlow.l(set_ii,'W',set_tech_DES_NGB,set_toPss)$set_energyLink_opt('W',set_tech_DES_NGB,set_toPss)$set_pssOH(set_side_opt,set_tech_DES_NGB));

par_out_G_fromGGrid_toNGB(set_ii,set_side_opt,set_tech_DES_NGB)$set_t_store(set_ii) = var_energyFlow.l(set_ii,'G','GGrid',set_tech_DES_NGB)$set_energyLink_opt('G','GGrid',set_tech_DES_NGB)$set_pssOH(set_side_opt,set_tech_DES_NGB);

par_out_W_fromNGB_toWLoad(set_ii,set_side_opt,set_tech_DES_NGB)$set_t_store(set_ii)= sum(set_load_DS_W,var_energyFlow.l(set_ii,'W',set_tech_DES_NGB,set_load_DS_W)$set_energyLink_opt('W',set_tech_DES_NGB,set_load_DS_W)$set_pssOH(set_side_opt,set_tech_DES_NGB));
par_out_W_fromNGB_toTS(set_ii,set_side_opt,set_tech_DES_NGB)$set_t_store(set_ii)= sum(set_tech_DES_TS,var_energyFlow.l(set_ii,'W',set_tech_DES_NGB,set_tech_DES_TS)$set_energyLink_opt('W',set_tech_DES_NGB,set_tech_DES_TS)$set_pssOH(set_side_opt,set_tech_DES_NGB));

***-----------------------------------------------------------------------------
***Durchlauferhitzer
***-----------------------------------------------------------------------------
par_out_E_fromPss_toEB(set_ii,set_side_opt,set_tech_DES_EB)$set_t_store(set_ii)= sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_EB)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EB)$set_pssOH(set_side_opt,set_tech_DES_EB));
par_out_W_fromEB_toPss(set_ii,set_side_opt,set_tech_DES_EB)$set_t_store(set_ii)= sum(set_toPss,var_energyFlow.l(set_ii,'W',set_tech_DES_EB,set_toPss)$set_energyLink_opt('W',set_tech_DES_EB,set_toPss)$set_pssOH(set_side_opt,set_tech_DES_EB));

par_out_E_fromEGrid_toEB(set_ii,set_side_opt,set_tech_DES_EB)$set_t_store(set_ii) = var_energyFlow.l(set_ii,'E','EGrid',set_tech_DES_EB)$set_energyLink_opt('E','EGrid',set_tech_DES_EB)$set_pssOH(set_side_opt,set_tech_DES_EB);
par_out_E_fromES_toEB(set_ii,set_side_opt,set_tech_DES_EB)$set_t_store(set_ii) = sum(set_tech_DES_ES,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_tech_DES_EB)$set_energyLink_opt('E',set_tech_DES_ES,set_tech_DES_EB)$set_pssOH(set_side_opt,set_tech_DES_EB));
par_out_E_fromPV_toEB(set_ii,set_side_opt,set_tech_DES_EB)$set_t_store(set_ii) = sum(set_tech_DES_PV,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_EB)$set_energyLink_opt('E',set_tech_DES_PV,set_tech_DES_EB)$set_pssOH(set_side_opt,set_tech_DES_EB));
par_out_E_fromCHP_toEB(set_ii,set_side_opt,set_tech_DES_EB)$set_t_store(set_ii) = sum(set_tech_DES_CHP,var_energyFlow.l(set_ii,'E',set_tech_DES_CHP,set_tech_DES_EB)$set_energyLink_opt('E',set_tech_DES_CHP,set_tech_DES_EB)$set_pssOH(set_side_opt,set_tech_DES_EB));

par_out_W_fromEB_toWLoad(set_ii,set_side_opt,set_tech_DES_EB)$set_t_store(set_ii)= sum(set_load_DS_W,var_energyFlow.l(set_ii,'W',set_tech_DES_EB,set_load_DS_W)$set_energyLink_opt('W',set_tech_DES_EB,set_load_DS_W)$set_pssOH(set_side_opt,set_tech_DES_EB));
par_out_W_fromEB_toTS(set_ii,set_side_opt,set_tech_DES_EB)$set_t_store(set_ii)= sum(set_tech_DES_TS,var_energyFlow.l(set_ii,'W',set_tech_DES_EB,set_tech_DES_TS)$set_energyLink_opt('W',set_tech_DES_EB,set_tech_DES_TS)$set_pssOH(set_side_opt,set_tech_DES_EB));

par_out_E_fromEB_toPRGrid(set_ii,set_side_opt,set_tech_DES_EB)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_DES_EB,'RGrid')$set_energyLink_opt('PR',set_tech_DES_EB,'RGrid')$set_pssOH(set_side_opt,set_tech_DES_EB);
par_out_E_fromEB_toNRGrid(set_ii,set_side_opt,set_tech_DES_EB)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_DES_EB,'RGrid')$set_energyLink_opt('NR',set_tech_DES_EB,'RGrid')$set_pssOH(set_side_opt,set_tech_DES_EB);

***-----------------------------------------------------------------------------
***PV-Anlage
***-----------------------------------------------------------------------------
par_out_E_fromPV_toPss(set_ii,set_side_opt,set_tech_DES_PV)$set_t_store(set_ii)= sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss)$set_pssOH(set_side_opt,set_tech_DES_PV));

par_out_E_fromPV_toES(set_ii,set_side_opt,set_tech_DES_PV)$set_t_store(set_ii)= sum(set_tech_DES_ES,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_ES)$set_energyLink_opt('E',set_tech_DES_PV,set_tech_DES_ES)$set_pssOH(set_side_opt,set_tech_DES_PV));
par_out_E_fromPV_toELoad(set_ii,set_side_opt,set_tech_DES_PV)$set_t_store(set_ii)=sum(set_load_DS_E,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_load_DS_E)$set_energyLink_opt('E',set_tech_DES_PV,set_load_DS_E)$set_pssOH(set_side_opt,set_tech_DES_PV));
par_out_E_fromPV_toEGrid(set_ii,set_side_opt,set_tech_DES_PV)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'E',set_tech_DES_PV,'EGrid')$set_energyLink_opt('E',set_tech_DES_PV,'EGrid')$set_pssOH(set_side_opt,set_tech_DES_PV);
par_out_E_fromPV_toHP(set_ii,set_side_opt,set_tech_DES_PV)$set_t_store(set_ii)= sum(set_tech_DES_HP,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_HP)$set_energyLink_opt('E',set_tech_DES_PV,set_tech_DES_HP)$set_pssOH(set_side_opt,set_tech_DES_PV));
par_out_E_fromPV_toEB(set_ii,set_side_opt,set_tech_DES_PV)$set_t_store(set_ii)= sum(set_tech_DES_EB,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_EB)$set_energyLink_opt('E',set_tech_DES_PV,set_tech_DES_EB)$set_pssOH(set_side_opt,set_tech_DES_PV));

***-----------------------------------------------------------------------------
***Wärmepumpe
***-----------------------------------------------------------------------------
par_out_E_fromPss_toHP(set_ii,set_side_opt,set_tech_DES_HP)$set_t_store(set_ii)= sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_HP)$set_energyLink_opt('E',set_fromPss,set_tech_DES_HP)$set_pssOH(set_side_opt,set_tech_DES_HP));
par_out_W_fromHP_toPss(set_ii,set_side_opt,set_tech_DES_HP)$set_t_store(set_ii)= sum(set_toPss,var_energyFlow.l(set_ii,'W',set_tech_DES_HP,set_toPss)$set_energyLink_opt('W',set_tech_DES_HP,set_toPss)$set_pssOH(set_side_opt,set_tech_DES_HP));

par_out_E_fromEGrid_toHP(set_ii,set_side_opt,set_tech_DES_HP)$set_t_store(set_ii) = var_energyFlow.l(set_ii,'E','EGrid',set_tech_DES_HP)$set_energyLink_opt('E','EGrid',set_tech_DES_HP)$set_pssOH(set_side_opt,set_tech_DES_HP);
par_out_E_fromES_toHP(set_ii,set_side_opt,set_tech_DES_HP)$set_t_store(set_ii) = sum(set_tech_DES_ES,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_tech_DES_HP)$set_energyLink_opt('E',set_tech_DES_ES,set_tech_DES_HP)$set_pssOH(set_side_opt,set_tech_DES_HP));
par_out_E_fromPV_toHP(set_ii,set_side_opt,set_tech_DES_HP)$set_t_store(set_ii) = sum(set_tech_DES_PV,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_HP)$set_energyLink_opt('E',set_tech_DES_PV,set_tech_DES_HP)$set_pssOH(set_side_opt,set_tech_DES_HP));
par_out_E_fromCHP_toHP(set_ii,set_side_opt,set_tech_DES_HP)$set_t_store(set_ii) = sum(set_tech_DES_CHP,var_energyFlow.l(set_ii,'E',set_tech_DES_CHP,set_tech_DES_HP)$set_energyLink_opt('E',set_tech_DES_CHP,set_tech_DES_HP)$set_pssOH(set_side_opt,set_tech_DES_HP));

par_out_W_fromHP_toWLoad(set_ii,set_side_opt,set_tech_DES_HP)$set_t_store(set_ii)= sum(set_load_DS_W,var_energyFlow.l(set_ii,'W',set_tech_DES_HP,set_load_DS_W)$set_energyLink_opt('W',set_tech_DES_HP,set_load_DS_W)$set_pssOH(set_side_opt,set_tech_DES_HP));
par_out_W_fromHP_toTS(set_ii,set_side_opt,set_tech_DES_HP)$set_t_store(set_ii)= sum(set_tech_DES_TS,var_energyFlow.l(set_ii,'W',set_tech_DES_HP,set_tech_DES_TS)$set_energyLink_opt('W',set_tech_DES_HP,set_tech_DES_TS)$set_pssOH(set_side_opt,set_tech_DES_HP));

par_out_E_fromHP_toPRGrid(set_ii,set_side_opt,set_tech_DES_HP)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_DES_HP,'RGrid')$set_energyLink_opt('PR',set_tech_DES_HP,'RGrid')$set_pssOH(set_side_opt,set_tech_DES_HP);
par_out_E_fromHP_toNRGrid(set_ii,set_side_opt,set_tech_DES_HP)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_DES_HP,'RGrid')$set_energyLink_opt('NR',set_tech_DES_HP,'RGrid')$set_pssOH(set_side_opt,set_tech_DES_HP);

***-----------------------------------------------------------------------------
***Kraft-Wärme-Kopplung-Anlage
***-----------------------------------------------------------------------------
par_out_E_fromCHP_toPss(set_ii,set_side_opt,set_tech_DES_CHP)$set_t_store(set_ii)= sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('E',set_tech_DES_CHP,set_toPss)$set_pssOH(set_side_opt,set_tech_DES_CHP));

par_out_E_fromCHP_toES(set_ii,set_side_opt,set_tech_DES_CHP)$set_t_store(set_ii)= sum(set_tech_DES_ES,var_energyFlow.l(set_ii,'E',set_tech_DES_CHP,set_tech_DES_ES)$set_energyLink_opt('E',set_tech_DES_CHP,set_tech_DES_ES)$set_pssOH(set_side_opt,set_tech_DES_CHP));
par_out_E_fromCHP_toELoad(set_ii,set_side_opt,set_tech_DES_CHP)$set_t_store(set_ii)=sum(set_load_DS_E,var_energyFlow.l(set_ii,'E',set_tech_DES_CHP,set_load_DS_E)$set_energyLink_opt('E',set_tech_DES_CHP,set_load_DS_E)$set_pssOH(set_side_opt,set_tech_DES_CHP));
par_out_E_fromCHP_toEGrid(set_ii,set_side_opt,set_tech_DES_CHP)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'E',set_tech_DES_CHP,'EGrid')$set_energyLink_opt('E',set_tech_DES_CHP,'EGrid')$set_pssOH(set_side_opt,set_tech_DES_CHP);
par_out_E_fromCHP_toHP(set_ii,set_side_opt,set_tech_DES_CHP)$set_t_store(set_ii)= sum(set_tech_DES_HP,var_energyFlow.l(set_ii,'E',set_tech_DES_CHP,set_tech_DES_HP)$set_energyLink_opt('E',set_tech_DES_CHP,set_tech_DES_HP)$set_pssOH(set_side_opt,set_tech_DES_CHP));
par_out_E_fromCHP_toEB(set_ii,set_side_opt,set_tech_DES_CHP)$set_t_store(set_ii)= sum(set_tech_DES_EB,var_energyFlow.l(set_ii,'E',set_tech_DES_CHP,set_tech_DES_EB)$set_energyLink_opt('E',set_tech_DES_CHP,set_tech_DES_EB)$set_pssOH(set_side_opt,set_tech_DES_CHP));

par_out_G_fromPss_toCHP(set_ii,set_side_opt,set_tech_DES_CHP)$set_t_store(set_ii)= sum(set_fromPss,var_energyFlow.l(set_ii,'G',set_fromPss,set_tech_DES_CHP)$set_energyLink_opt('G',set_fromPss,set_tech_DES_CHP)$set_pssOH(set_side_opt,set_tech_DES_CHP));

par_out_G_fromGGrid_toCHP(set_ii,set_side_opt,set_tech_DES_CHP)$set_t_store(set_ii) = var_energyFlow.l(set_ii,'G','GGrid',set_tech_DES_CHP)$set_energyLink_opt('G','GGrid',set_tech_DES_CHP)$set_pssOH(set_side_opt,set_tech_DES_CHP);

par_out_W_fromCHP_toPss(set_ii,set_side_opt,set_tech_DES_CHP)$set_t_store(set_ii)= sum(set_toPss,var_energyFlow.l(set_ii,'W',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('W',set_tech_DES_CHP,set_toPss)$set_pssOH(set_side_opt,set_tech_DES_CHP));

par_out_W_fromCHP_toWLoad(set_ii,set_side_opt,set_tech_DES_CHP)$set_t_store(set_ii)= sum(set_load_DS_W,var_energyFlow.l(set_ii,'W',set_tech_DES_CHP,set_load_DS_W)$set_energyLink_opt('W',set_tech_DES_CHP,set_load_DS_W)$set_pssOH(set_side_opt,set_tech_DES_CHP));
par_out_W_fromCHP_toTS(set_ii,set_side_opt,set_tech_DES_CHP)$set_t_store(set_ii)= sum(set_tech_DES_TS,var_energyFlow.l(set_ii,'W',set_tech_DES_CHP,set_tech_DES_TS)$set_energyLink_opt('W',set_tech_DES_CHP,set_tech_DES_TS)$set_pssOH(set_side_opt,set_tech_DES_CHP));

***-----------------------------------------------------------------------------
***Solarthermie-Anlage
***-----------------------------------------------------------------------------
par_out_W_fromST_toPss(set_ii,set_side_opt,set_tech_DES_ST)$set_t_store(set_ii)= sum(set_toPss,var_energyFlow.l(set_ii,'W',set_tech_DES_ST,set_toPss)$set_energyLink_opt('W',set_tech_DES_ST,set_toPss)$set_pssOH(set_side_opt,set_tech_DES_ST));

par_out_W_fromST_toWLoad(set_ii,set_side_opt,set_tech_DES_ST)$set_t_store(set_ii)= sum(set_load_DS_W,var_energyFlow.l(set_ii,'W',set_tech_DES_ST,set_load_DS_W)$set_energyLink_opt('W',set_tech_DES_ST,set_load_DS_W)$set_pssOH(set_side_opt,set_tech_DES_ST));
par_out_W_fromST_toTS(set_ii,set_side_opt,set_tech_DES_ST)$set_t_store(set_ii)= sum(set_tech_DES_TS,var_energyFlow.l(set_ii,'W',set_tech_DES_ST,set_tech_DES_TS)$set_energyLink_opt('W',set_tech_DES_ST,set_tech_DES_TS)$set_pssOH(set_side_opt,set_tech_DES_ST));


***-----------------------------------------------------------------------------
***Windturbine
***-----------------------------------------------------------------------------
par_out_E_fromWT_toEGrid(set_ii,set_side_opt,set_tech_SS_WT)$set_t_store(set_ii)= sum(set_grid_NS_E,var_energyFlow.l(set_ii,'E',set_tech_SS_WT,set_grid_NS_E)$set_energyLink_opt('E',set_tech_SS_WT,set_grid_NS_E)$set_pssOH(set_side_opt,set_tech_SS_WT));
par_out_E_fromWT_toEMarket(set_ii,set_side_opt,set_tech_SS_WT)$set_t_store(set_ii)= sum(set_market_MS_E,var_energyFlow.l(set_ii,'E',set_tech_SS_WT,set_market_MS_E)$set_energyLink_opt('E',set_tech_SS_WT,set_market_MS_E)$set_pssOH(set_side_opt,set_tech_SS_WT));

par_out_PR_fromWT_toRMarket(set_ii,set_side_opt,set_tech_SS_WT)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_WT,'PRPool')$set_energyLink_opt('PR',set_tech_SS_WT,'PRPool')$set_pssOH(set_side_opt,set_tech_SS_WT);
par_out_PR_fromWT_toRMarket(set_ii,set_side_opt,set_tech_SS_WT)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_WT,'SRPool')$set_energyLink_opt('PR',set_tech_SS_WT,'SRPool')$set_pssOH(set_side_opt,set_tech_SS_WT);
par_out_PR_fromWT_toRMarket(set_ii,set_side_opt,set_tech_SS_WT)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_WT,'TRPool')$set_energyLink_opt('PR',set_tech_SS_WT,'TRPool')$set_pssOH(set_side_opt,set_tech_SS_WT);

par_out_NR_fromWT_toRMarket(set_ii,set_side_opt,set_tech_SS_WT)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_WT,'PRPool')$set_energyLink_opt('NR',set_tech_SS_WT,'PRPool')$set_pssOH(set_side_opt,set_tech_SS_WT);
par_out_NR_fromWT_toRMarket(set_ii,set_side_opt,set_tech_SS_WT)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_WT,'SRPool')$set_energyLink_opt('NR',set_tech_SS_WT,'SRPool')$set_pssOH(set_side_opt,set_tech_SS_WT);
par_out_NR_fromWT_toRMarket(set_ii,set_side_opt,set_tech_SS_WT)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_WT,'TRPool')$set_energyLink_opt('NR',set_tech_SS_WT,'TRPool')$set_pssOH(set_side_opt,set_tech_SS_WT);

par_out_PR_fromWT_toRGrid(set_ii,set_side_opt,set_tech_SS_WT)$set_t_store(set_ii)= sum(set_grid_NS_R,var_energyFlow.l(set_ii,'PR',set_tech_SS_WT,set_grid_NS_R)$set_energyLink_opt('PR',set_tech_SS_WT,set_grid_NS_R)$set_pssOH(set_side_opt,set_tech_SS_WT));
par_out_NR_fromWT_toRGrid(set_ii,set_side_opt,set_tech_SS_WT)$set_t_store(set_ii)= sum(set_grid_NS_R,var_energyFlow.l(set_ii,'NR',set_tech_SS_WT,set_grid_NS_R)$set_energyLink_opt('NR',set_tech_SS_WT,set_grid_NS_R)$set_pssOH(set_side_opt,set_tech_SS_WT));

par_out_E_fromWT_toPHS(set_ii,set_side_opt,set_tech_SS_WT)$set_t_store(set_ii)= sum(set_tech_SS_PHS,var_energyFlow.l(set_ii,'E',set_tech_SS_WT,set_tech_SS_PHS)$set_energyLink_opt('E',set_tech_SS_WT,set_tech_SS_PHS)$set_pssOH(set_side_opt,set_tech_SS_WT));

***-----------------------------------------------------------------------------
***PV-Anlage
***-----------------------------------------------------------------------------
par_out_E_fromPV_toEGrid(set_ii,set_side_opt,set_tech_SS_PV)$set_t_store(set_ii)= sum(set_grid_NS_E,var_energyFlow.l(set_ii,'E',set_tech_SS_PV,set_grid_NS_E)$set_energyLink_opt('E',set_tech_SS_PV,set_grid_NS_E)$set_pssOH(set_side_opt,set_tech_SS_PV));

par_out_E_fromPV_toEMarket(set_ii,set_side_opt,set_tech_SS_PV)$set_t_store(set_ii)= sum(set_market_MS_E,var_energyFlow.l(set_ii,'E',set_tech_SS_PV,set_market_MS_E)$set_energyLink_opt('E',set_tech_SS_PV,set_market_MS_E)$set_pssOH(set_side_opt,set_tech_SS_PV));

par_out_PR_fromPV_toRMarket(set_ii,set_side_opt,set_tech_SS_PV)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_PV,'PRPool')$set_energyLink_opt('PR',set_tech_SS_PV,'PRPool')$set_pssOH(set_side_opt,set_tech_SS_PV);
par_out_PR_fromPV_toRMarket(set_ii,set_side_opt,set_tech_SS_PV)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_PV,'SRPool')$set_energyLink_opt('PR',set_tech_SS_PV,'SRPool')$set_pssOH(set_side_opt,set_tech_SS_PV);
par_out_PR_fromPV_toRMarket(set_ii,set_side_opt,set_tech_SS_PV)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_PV,'TRPool')$set_energyLink_opt('PR',set_tech_SS_PV,'TRPool')$set_pssOH(set_side_opt,set_tech_SS_PV);

par_out_NR_fromPV_toRMarket(set_ii,set_side_opt,set_tech_SS_PV)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_PV,'PRPool')$set_energyLink_opt('NR',set_tech_SS_PV,'PRPool')$set_pssOH(set_side_opt,set_tech_SS_PV);
par_out_NR_fromPV_toRMarket(set_ii,set_side_opt,set_tech_SS_PV)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_PV,'SRPool')$set_energyLink_opt('NR',set_tech_SS_PV,'SRPool')$set_pssOH(set_side_opt,set_tech_SS_PV);
par_out_NR_fromPV_toRMarket(set_ii,set_side_opt,set_tech_SS_PV)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_PV,'TRPool')$set_energyLink_opt('NR',set_tech_SS_PV,'TRPool')$set_pssOH(set_side_opt,set_tech_SS_PV);

par_out_PR_fromPV_toRGrid(set_ii,set_side_opt,set_tech_SS_PV)$set_t_store(set_ii)= sum(set_grid_NS_R,var_energyFlow.l(set_ii,'PR',set_tech_SS_PV,set_grid_NS_R)$set_energyLink_opt('PR',set_tech_SS_PV,set_grid_NS_R)$set_pssOH(set_side_opt,set_tech_SS_PV));
par_out_NR_fromPV_toRGrid(set_ii,set_side_opt,set_tech_SS_PV)$set_t_store(set_ii)= sum(set_grid_NS_R,var_energyFlow.l(set_ii,'NR',set_tech_SS_PV,set_grid_NS_R)$set_energyLink_opt('NR',set_tech_SS_PV,set_grid_NS_R)$set_pssOH(set_side_opt,set_tech_SS_PV));


par_out_E_fromPV_toPHS(set_ii,set_side_opt,set_tech_SS_PV)$set_t_store(set_ii)= sum(set_tech_SS_PHS,var_energyFlow.l(set_ii,'E',set_tech_SS_PV,set_tech_SS_PHS)$set_energyLink_opt('E',set_tech_SS_PV,set_tech_SS_PHS)$set_pssOH(set_side_opt,set_tech_SS_PV));

***-----------------------------------------------------------------------------
***Laufwasserkraftwerke
***-----------------------------------------------------------------------------
par_out_E_fromRH_toEGrid(set_ii,set_side_opt,set_tech_SS_RH)$set_t_store(set_ii)= sum(set_grid_NS_E,var_energyFlow.l(set_ii,'E',set_tech_SS_RH,set_grid_NS_E)$set_energyLink_opt('E',set_tech_SS_RH,set_grid_NS_E)$set_pssOH(set_side_opt,set_tech_SS_RH));

par_out_E_fromRH_toEMarket(set_ii,set_side_opt,set_tech_SS_RH)$set_t_store(set_ii)= sum(set_market_MS_E,var_energyFlow.l(set_ii,'E',set_tech_SS_RH,set_market_MS_E)$set_energyLink_opt('E',set_tech_SS_RH,set_market_MS_E)$set_pssOH(set_side_opt,set_tech_SS_RH));

par_out_PR_fromRH_toRMarket(set_ii,set_side_opt,set_tech_SS_RH)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_RH,'PRPool')$set_energyLink_opt('PR',set_tech_SS_RH,'PRPool')$set_pssOH(set_side_opt,set_tech_SS_RH);
par_out_PR_fromRH_toRMarket(set_ii,set_side_opt,set_tech_SS_RH)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_RH,'SRPool')$set_energyLink_opt('PR',set_tech_SS_RH,'SRPool')$set_pssOH(set_side_opt,set_tech_SS_RH);
par_out_PR_fromRH_toRMarket(set_ii,set_side_opt,set_tech_SS_RH)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_RH,'TRPool')$set_energyLink_opt('PR',set_tech_SS_RH,'TRPool')$set_pssOH(set_side_opt,set_tech_SS_RH);

par_out_NR_fromRH_toRMarket(set_ii,set_side_opt,set_tech_SS_RH)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_RH,'PRPool')$set_energyLink_opt('NR',set_tech_SS_RH,'PRPool')$set_pssOH(set_side_opt,set_tech_SS_RH);
par_out_NR_fromRH_toRMarket(set_ii,set_side_opt,set_tech_SS_RH)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_RH,'SRPool')$set_energyLink_opt('NR',set_tech_SS_RH,'SRPool')$set_pssOH(set_side_opt,set_tech_SS_RH);
par_out_NR_fromRH_toRMarket(set_ii,set_side_opt,set_tech_SS_RH)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_RH,'TRPool')$set_energyLink_opt('NR',set_tech_SS_RH,'TRPool')$set_pssOH(set_side_opt,set_tech_SS_RH);

par_out_PR_fromRH_toRGrid(set_ii,set_side_opt,set_tech_SS_RH)$set_t_store(set_ii)= sum(set_grid_NS_R,var_energyFlow.l(set_ii,'PR',set_tech_SS_RH,set_grid_NS_R)$set_energyLink_opt('PR',set_tech_SS_RH,set_grid_NS_R)$set_pssOH(set_side_opt,set_tech_SS_RH));
par_out_NR_fromRH_toRGrid(set_ii,set_side_opt,set_tech_SS_RH)$set_t_store(set_ii)= sum(set_grid_NS_R,var_energyFlow.l(set_ii,'NR',set_tech_SS_RH,set_grid_NS_R)$set_energyLink_opt('NR',set_tech_SS_RH,set_grid_NS_R)$set_pssOH(set_side_opt,set_tech_SS_RH));

par_out_E_fromRH_toPHS(set_ii,set_side_opt,set_tech_SS_RH)$set_t_store(set_ii)= sum(set_tech_SS_PHS,var_energyFlow.l(set_ii,'E',set_tech_SS_RH,set_tech_SS_PHS)$set_energyLink_opt('E',set_tech_SS_RH,set_tech_SS_PHS)$set_pssOH(set_side_opt,set_tech_SS_RH));

***-----------------------------------------------------------------------------
***Kraft-Wärme-Kopplungsanlagen
***-----------------------------------------------------------------------------
par_out_G_fromGGrid_toCHP(set_ii,set_side_opt,set_tech_SS_CHP)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'G','GGrid',set_tech_SS_CHP)$set_energyLink_opt('G','GGrid',set_tech_SS_CHP)$set_pssOH(set_side_opt,set_tech_SS_CHP);
par_out_G_fromGMarket_toCHP(set_ii,set_side_opt,set_tech_SS_CHP)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'G','GMarket',set_tech_SS_CHP)$set_energyLink_opt('G','GMarket',set_tech_SS_CHP)$set_pssOH(set_side_opt,set_tech_SS_CHP);
par_out_O_fromGMarket_toCHP(set_ii,set_side_opt,set_tech_SS_CHP)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'O','OMarket',set_tech_SS_CHP)$set_energyLink_opt('O','OMarket',set_tech_SS_CHP)$set_pssOH(set_side_opt,set_tech_SS_CHP);
par_out_HC_fromGMarket_toCHP(set_ii,set_side_opt,set_tech_SS_CHP)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'HC','HCMarket',set_tech_SS_CHP)$set_energyLink_opt('HC','HCMarket',set_tech_SS_CHP)$set_pssOH(set_side_opt,set_tech_SS_CHP);
par_out_L_fromGMarket_toCHP(set_ii,set_side_opt,set_tech_SS_CHP)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'L','LMarket',set_tech_SS_CHP)$set_energyLink_opt('L','LMarket',set_tech_SS_CHP)$set_pssOH(set_side_opt,set_tech_SS_CHP);

par_out_E_fromCHP_toEGrid(set_ii,set_side_opt,set_tech_SS_CHP)$set_t_store(set_ii)= sum(set_grid_NS_E,var_energyFlow.l(set_ii,'E',set_tech_SS_CHP,set_grid_NS_E)$set_energyLink_opt('E',set_tech_SS_CHP,set_grid_NS_E)$set_pssOH(set_side_opt,set_tech_SS_CHP));
par_out_W_fromCHP_toWGrid(set_ii,set_side_opt,set_tech_SS_CHP)$set_t_store(set_ii)= sum(set_grid_NS_W,var_energyFlow.l(set_ii,'W',set_tech_SS_CHP,set_grid_NS_W)$set_energyLink_opt('E',set_tech_SS_CHP,set_grid_NS_W)$set_pssOH(set_side_opt,set_tech_SS_CHP));

par_out_E_fromCHP_toEMarket(set_ii,set_side_opt,set_tech_SS_CHP)$set_t_store(set_ii)= sum(set_market_MS_E,var_energyFlow.l(set_ii,'E',set_tech_SS_CHP,set_market_MS_E)$set_energyLink_opt('E',set_tech_SS_CHP,set_market_MS_E)$set_pssOH(set_side_opt,set_tech_SS_CHP));
par_out_W_fromCHP_toWMarket(set_ii,set_side_opt,set_tech_SS_CHP)$set_t_store(set_ii)= sum(set_market_MS_W,var_energyFlow.l(set_ii,'W',set_tech_SS_CHP,set_market_MS_W)$set_energyLink_opt('W',set_tech_SS_CHP,set_market_MS_W)$set_pssOH(set_side_opt,set_tech_SS_CHP));

par_out_PR_fromCHP_toRMarket(set_ii,set_side_opt,set_tech_SS_CHP)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_CHP,'PRPool')$set_energyLink_opt('PR',set_tech_SS_CHP,'PRPool')$set_pssOH(set_side_opt,set_tech_SS_CHP);
par_out_PR_fromCHP_toRMarket(set_ii,set_side_opt,set_tech_SS_CHP)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_CHP,'SRPool')$set_energyLink_opt('PR',set_tech_SS_CHP,'SRPool')$set_pssOH(set_side_opt,set_tech_SS_CHP);
par_out_PR_fromCHP_toRMarket(set_ii,set_side_opt,set_tech_SS_CHP)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_CHP,'TRPool')$set_energyLink_opt('PR',set_tech_SS_CHP,'TRPool')$set_pssOH(set_side_opt,set_tech_SS_CHP);

par_out_NR_fromCHP_toRMarket(set_ii,set_side_opt,set_tech_SS_CHP)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_CHP,'PRPool')$set_energyLink_opt('NR',set_tech_SS_CHP,'PRPool')$set_pssOH(set_side_opt,set_tech_SS_CHP);
par_out_NR_fromCHP_toRMarket(set_ii,set_side_opt,set_tech_SS_CHP)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_CHP,'SRPool')$set_energyLink_opt('NR',set_tech_SS_CHP,'SRPool')$set_pssOH(set_side_opt,set_tech_SS_CHP);
par_out_NR_fromCHP_toRMarket(set_ii,set_side_opt,set_tech_SS_CHP)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_CHP,'TRPool')$set_energyLink_opt('NR',set_tech_SS_CHP,'TRPool')$set_pssOH(set_side_opt,set_tech_SS_CHP);

par_out_PR_fromCHP_toRGrid(set_ii,set_side_opt,set_tech_SS_CHP)$set_t_store(set_ii)= sum(set_grid_NS_R,var_energyFlow.l(set_ii,'PR',set_tech_SS_CHP,set_grid_NS_R)$set_energyLink_opt('PR',set_tech_SS_CHP,set_grid_NS_R)$set_pssOH(set_side_opt,set_tech_SS_CHP));
par_out_NR_fromCHP_toRGrid(set_ii,set_side_opt,set_tech_SS_CHP)$set_t_store(set_ii)= sum(set_grid_NS_R,var_energyFlow.l(set_ii,'NR',set_tech_SS_CHP,set_grid_NS_R)$set_energyLink_opt('NR',set_tech_SS_CHP,set_grid_NS_R)$set_pssOH(set_side_opt,set_tech_SS_CHP));

par_out_E_fromCHP_toPHS(set_ii,set_side_opt,set_tech_SS_CHP)$set_t_store(set_ii)= sum(set_tech_SS_PHS,var_energyFlow.l(set_ii,'E',set_tech_SS_CHP,set_tech_SS_PHS)$set_energyLink_opt('E',set_tech_SS_CHP,set_tech_SS_PHS)$set_pssOH(set_side_opt,set_tech_SS_CHP));

***-----------------------------------------------------------------------------
***Kehrrichtverwertungsanlagen
***-----------------------------------------------------------------------------
par_out_G_fromGGrid_toRC(set_ii,set_side_opt,set_tech_SS_RC)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'G','GGrid',set_tech_SS_RC)$set_energyLink_opt('G','GGrid',set_tech_SS_RC)$set_pssOH(set_side_opt,set_tech_SS_RC);
par_out_G_fromGMarket_toRC(set_ii,set_side_opt,set_tech_SS_RC)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'G','GMarket',set_tech_SS_RC)$set_energyLink_opt('G','GMarket',set_tech_SS_RC)$set_pssOH(set_side_opt,set_tech_SS_RC);
par_out_RF_fromRFMarket_toRC(set_ii,set_side_opt,set_tech_SS_RC)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'RF','RFMarket',set_tech_SS_RC)$set_energyLink_opt('RF','RFMarket',set_tech_SS_RC)$set_pssOH(set_side_opt,set_tech_SS_RC);

par_out_E_fromRC_toEGrid(set_ii,set_side_opt,set_tech_SS_RC)$set_t_store(set_ii)= sum(set_grid_NS_E,var_energyFlow.l(set_ii,'E',set_tech_SS_RC,set_grid_NS_E)$set_energyLink_opt('E',set_tech_SS_RC,set_grid_NS_E)$set_pssOH(set_side_opt,set_tech_SS_RC));
par_out_W_fromRC_toWGrid(set_ii,set_side_opt,set_tech_SS_RC)$set_t_store(set_ii)= sum(set_grid_NS_W,var_energyFlow.l(set_ii,'W',set_tech_SS_RC,set_grid_NS_W)$set_energyLink_opt('E',set_tech_SS_RC,set_grid_NS_W)$set_pssOH(set_side_opt,set_tech_SS_RC));

par_out_E_fromRC_toEMarket(set_ii,set_side_opt,set_tech_SS_RC)$set_t_store(set_ii)= sum(set_market_MS_E,var_energyFlow.l(set_ii,'E',set_tech_SS_RC,set_market_MS_E)$set_energyLink_opt('E',set_tech_SS_RC,set_market_MS_E)$set_pssOH(set_side_opt,set_tech_SS_RC));
par_out_W_fromRC_toWMarket(set_ii,set_side_opt,set_tech_SS_RC)$set_t_store(set_ii)= sum(set_market_MS_W,var_energyFlow.l(set_ii,'W',set_tech_SS_RC,set_market_MS_W)$set_energyLink_opt('W',set_tech_SS_RC,set_market_MS_W)$set_pssOH(set_side_opt,set_tech_SS_RC));

par_out_PR_fromRC_toRMarket(set_ii,set_side_opt,set_tech_SS_RC)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_RC,'PRPool')$set_energyLink_opt('PR',set_tech_SS_RC,'PRPool')$set_pssOH(set_side_opt,set_tech_SS_RC);
par_out_PR_fromRC_toRMarket(set_ii,set_side_opt,set_tech_SS_RC)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_RC,'SRPool')$set_energyLink_opt('PR',set_tech_SS_RC,'SRPool')$set_pssOH(set_side_opt,set_tech_SS_RC);
par_out_PR_fromRC_toRMarket(set_ii,set_side_opt,set_tech_SS_RC)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_RC,'TRPool')$set_energyLink_opt('PR',set_tech_SS_RC,'TRPool')$set_pssOH(set_side_opt,set_tech_SS_RC);

par_out_NR_fromRC_toRMarket(set_ii,set_side_opt,set_tech_SS_RC)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_RC,'PRPool')$set_energyLink_opt('NR',set_tech_SS_RC,'PRPool')$set_pssOH(set_side_opt,set_tech_SS_RC);
par_out_NR_fromRC_toRMarket(set_ii,set_side_opt,set_tech_SS_RC)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_RC,'SRPool')$set_energyLink_opt('NR',set_tech_SS_RC,'SRPool')$set_pssOH(set_side_opt,set_tech_SS_RC);
par_out_NR_fromRC_toRMarket(set_ii,set_side_opt,set_tech_SS_RC)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_RC,'TRPool')$set_energyLink_opt('NR',set_tech_SS_RC,'TRPool')$set_pssOH(set_side_opt,set_tech_SS_RC);

par_out_PR_fromRC_toRGrid(set_ii,set_side_opt,set_tech_SS_RC)$set_t_store(set_ii)= sum(set_grid_NS_R,var_energyFlow.l(set_ii,'PR',set_tech_SS_RC,set_grid_NS_R)$set_energyLink_opt('PR',set_tech_SS_RC,set_grid_NS_R)$set_pssOH(set_side_opt,set_tech_SS_RC));
par_out_NR_fromRC_toRGrid(set_ii,set_side_opt,set_tech_SS_RC)$set_t_store(set_ii)= sum(set_grid_NS_R,var_energyFlow.l(set_ii,'NR',set_tech_SS_RC,set_grid_NS_R)$set_energyLink_opt('NR',set_tech_SS_RC,set_grid_NS_R)$set_pssOH(set_side_opt,set_tech_SS_RC));

par_out_E_fromRC_toPHS(set_ii,set_side_opt,set_tech_SS_RC)$set_t_store(set_ii)= sum(set_tech_SS_PHS,var_energyFlow.l(set_ii,'E',set_tech_SS_RC,set_tech_SS_PHS)$set_energyLink_opt('E',set_tech_SS_RC,set_tech_SS_PHS)$set_pssOH(set_side_opt,set_tech_SS_RC));

***-----------------------------------------------------------------------------
***Pumpspeicherkraftwerke
***-----------------------------------------------------------------------------
par_out_E_fromEGrid_toPHS(set_ii,set_side_opt,set_tech_SS_PHS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'E','EGrid',set_tech_SS_PHS)$set_energyLink_opt('E','EGrid',set_tech_SS_PHS)$set_pssOH(set_side_opt,set_tech_SS_PHS);
par_out_E_fromEMarket_toPHS(set_ii,set_side_opt,set_tech_SS_PHS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'E','EMarket',set_tech_SS_PHS)$set_energyLink_opt('E','EMarket',set_tech_SS_PHS)$set_pssOH(set_side_opt,set_tech_SS_PHS);

par_out_E_fromPHS_toEGrid(set_ii,set_side_opt,set_tech_SS_PHS)$set_t_store(set_ii)= sum(set_grid_NS_E,var_energyFlow.l(set_ii,'E',set_tech_SS_PHS,set_grid_NS_E)$set_energyLink_opt('E',set_tech_SS_PHS,set_grid_NS_E)$set_pssOH(set_side_opt,set_tech_SS_PHS));
par_out_E_fromPHS_toEMarket(set_ii,set_side_opt,set_tech_SS_PHS)$set_t_store(set_ii)= sum(set_market_MS_E,var_energyFlow.l(set_ii,'E',set_tech_SS_PHS,set_market_MS_E)$set_energyLink_opt('E',set_tech_SS_PHS,set_market_MS_E)$set_pssOH(set_side_opt,set_tech_SS_PHS));

par_out_PR_fromPHS_toRMarket(set_ii,set_side_opt,set_tech_SS_PHS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_PHS,'PRPool')$set_energyLink_opt('PR',set_tech_SS_PHS,'PRPool')$set_pssOH(set_side_opt,set_tech_SS_PHS);
par_out_PR_fromPHS_toRMarket(set_ii,set_side_opt,set_tech_SS_PHS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_PHS,'SRPool')$set_energyLink_opt('PR',set_tech_SS_PHS,'SRPool')$set_pssOH(set_side_opt,set_tech_SS_PHS);
par_out_PR_fromPHS_toRMarket(set_ii,set_side_opt,set_tech_SS_PHS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_PHS,'TRPool')$set_energyLink_opt('PR',set_tech_SS_PHS,'TRPool')$set_pssOH(set_side_opt,set_tech_SS_PHS);

par_out_NR_fromPHS_toRMarket(set_ii,set_side_opt,set_tech_SS_PHS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_PHS,'PRPool')$set_energyLink_opt('NR',set_tech_SS_PHS,'PRPool')$set_pssOH(set_side_opt,set_tech_SS_PHS);
par_out_NR_fromPHS_toRMarket(set_ii,set_side_opt,set_tech_SS_PHS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_PHS,'SRPool')$set_energyLink_opt('NR',set_tech_SS_PHS,'SRPool')$set_pssOH(set_side_opt,set_tech_SS_PHS);
par_out_NR_fromPHS_toRMarket(set_ii,set_side_opt,set_tech_SS_PHS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_PHS,'TRPool')$set_energyLink_opt('NR',set_tech_SS_PHS,'TRPool')$set_pssOH(set_side_opt,set_tech_SS_PHS);

par_out_PR_fromPHS_toRGrid(set_ii,set_side_opt,set_tech_SS_PHS)$set_t_store(set_ii)= sum(set_grid_NS_R,var_energyFlow.l(set_ii,'PR',set_tech_SS_PHS,set_grid_NS_R)$set_energyLink_opt('PR',set_tech_SS_PHS,set_grid_NS_R)$set_pssOH(set_side_opt,set_tech_SS_PHS));
par_out_NR_fromPHS_toRGrid(set_ii,set_side_opt,set_tech_SS_PHS)$set_t_store(set_ii)= sum(set_grid_NS_R,var_energyFlow.l(set_ii,'NR',set_tech_SS_PHS,set_grid_NS_R)$set_energyLink_opt('NR',set_tech_SS_PHS,set_grid_NS_R)$set_pssOH(set_side_opt,set_tech_SS_PHS));

par_out_E_fromPHS_toPHS(set_ii,set_side_opt,set_tech_SS_PHS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'E',set_tech_SS_PHS,set_tech_SS_PHS)$set_energyLink_opt('E',set_tech_SS_PHS,set_tech_SS_PHS)$set_pssOH(set_side_opt,set_tech_SS_PHS);

***-----------------------------------------------------------------------------
***Kondensationskraftwerke
***-----------------------------------------------------------------------------
par_out_G_fromGGrid_toTPS(set_ii,set_side_opt,set_tech_SS_TPS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'G','GGrid',set_tech_SS_TPS)$set_energyLink_opt('G','GGrid',set_tech_SS_TPS)$set_pssOH(set_side_opt,set_tech_SS_TPS);
par_out_G_fromGMarket_toTPS(set_ii,set_side_opt,set_tech_SS_TPS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'G','GMarket',set_tech_SS_TPS)$set_energyLink_opt('G','GMarket',set_tech_SS_TPS)$set_pssOH(set_side_opt,set_tech_SS_TPS);
par_out_O_fromGMarket_toTPS(set_ii,set_side_opt,set_tech_SS_TPS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'O','OMarket',set_tech_SS_TPS)$set_energyLink_opt('O','OMarket',set_tech_SS_TPS)$set_pssOH(set_side_opt,set_tech_SS_TPS);
par_out_HC_fromGMarket_toTPS(set_ii,set_side_opt,set_tech_SS_TPS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'HC','HCMarket',set_tech_SS_TPS)$set_energyLink_opt('HC','HCMarket',set_tech_SS_TPS)$set_pssOH(set_side_opt,set_tech_SS_TPS);
par_out_L_fromGMarket_toTPS(set_ii,set_side_opt,set_tech_SS_TPS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'L','LMarket',set_tech_SS_TPS)$set_energyLink_opt('L','LMarket',set_tech_SS_TPS)$set_pssOH(set_side_opt,set_tech_SS_TPS);

par_out_E_fromTPS_toEGrid(set_ii,set_side_opt,set_tech_SS_TPS)$set_t_store(set_ii)= sum(set_grid_NS_E,var_energyFlow.l(set_ii,'E',set_tech_SS_TPS,set_grid_NS_E)$set_energyLink_opt('E',set_tech_SS_TPS,set_grid_NS_E)$set_pssOH(set_side_opt,set_tech_SS_TPS));
par_out_E_fromTPS_toEMarket(set_ii,set_side_opt,set_tech_SS_TPS)$set_t_store(set_ii)= sum(set_market_MS_E,var_energyFlow.l(set_ii,'E',set_tech_SS_TPS,set_market_MS_E)$set_energyLink_opt('E',set_tech_SS_TPS,set_market_MS_E)$set_pssOH(set_side_opt,set_tech_SS_TPS));

par_out_PR_fromTPS_toRMarket(set_ii,set_side_opt,set_tech_SS_TPS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_TPS,'PRPool')$set_energyLink_opt('PR',set_tech_SS_TPS,'PRPool')$set_pssOH(set_side_opt,set_tech_SS_TPS);
par_out_PR_fromTPS_toRMarket(set_ii,set_side_opt,set_tech_SS_TPS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_TPS,'SRPool')$set_energyLink_opt('PR',set_tech_SS_TPS,'SRPool')$set_pssOH(set_side_opt,set_tech_SS_TPS);
par_out_PR_fromTPS_toRMarket(set_ii,set_side_opt,set_tech_SS_TPS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'PR',set_tech_SS_TPS,'TRPool')$set_energyLink_opt('PR',set_tech_SS_TPS,'TRPool')$set_pssOH(set_side_opt,set_tech_SS_TPS);

par_out_NR_fromTPS_toRMarket(set_ii,set_side_opt,set_tech_SS_TPS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_TPS,'PRPool')$set_energyLink_opt('NR',set_tech_SS_TPS,'PRPool')$set_pssOH(set_side_opt,set_tech_SS_TPS);
par_out_NR_fromTPS_toRMarket(set_ii,set_side_opt,set_tech_SS_TPS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_TPS,'SRPool')$set_energyLink_opt('NR',set_tech_SS_TPS,'SRPool')$set_pssOH(set_side_opt,set_tech_SS_TPS);
par_out_NR_fromTPS_toRMarket(set_ii,set_side_opt,set_tech_SS_TPS)$set_t_store(set_ii)= var_energyFlow.l(set_ii,'NR',set_tech_SS_TPS,'TRPool')$set_energyLink_opt('NR',set_tech_SS_TPS,'TRPool')$set_pssOH(set_side_opt,set_tech_SS_TPS);

par_out_PR_fromTPS_toRGrid(set_ii,set_side_opt,set_tech_SS_TPS)$set_t_store(set_ii)= sum(set_grid_NS_R,var_energyFlow.l(set_ii,'PR',set_tech_SS_TPS,set_grid_NS_R)$set_energyLink_opt('PR',set_tech_SS_TPS,set_grid_NS_R)$set_pssOH(set_side_opt,set_tech_SS_TPS));
par_out_NR_fromTPS_toRGrid(set_ii,set_side_opt,set_tech_SS_TPS)$set_t_store(set_ii)= sum(set_grid_NS_R,var_energyFlow.l(set_ii,'NR',set_tech_SS_TPS,set_grid_NS_R)$set_energyLink_opt('NR',set_tech_SS_TPS,set_grid_NS_R)$set_pssOH(set_side_opt,set_tech_SS_TPS));

par_out_E_fromTPS_toPHS(set_ii,set_side_opt,set_tech_SS_TPS)$set_t_store(set_ii)= sum(set_tech_SS_PHS,var_energyFlow.l(set_ii,'E',set_tech_SS_TPS,set_tech_SS_PHS)$set_energyLink_opt('E',set_tech_SS_TPS,set_tech_SS_PHS)$set_pssOH(set_side_opt,set_tech_SS_TPS));



