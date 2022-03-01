*-------------------------------------------------------------------------------
* Stromlastdeckung
*-------------------------------------------------------------------------------
par_out_E_E_ELoad_gridcov(set_ii,set_load_DS_E)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_load_DS_E)
                                                 and sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E))>0)=
           sum(set_grid_NS_E,var_energyFlow.l(set_ii,'E',set_grid_NS_E,set_load_DS_E)$set_energyLink_opt('E',set_grid_NS_E,set_load_DS_E))
           / sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E));

par_out_E_E_ELoad_pvcov(set_ii,set_load_DS_E)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_load_DS_E)
                                                 and sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E))>0)=
           sum(set_tech_DES_PV,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_load_DS_E)$(set_energyLink_opt('E',set_tech_DES_PV,set_load_DS_E) and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=0 and sum(set_side_opt$(set_pssOH(set_side_opt,set_load_DS_E) and set_pssOH(set_side_opt,set_tech_DES_PV)),1)>0))
           / sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E));

*neu
par_out_E_E_ELoad_chpcov(set_ii,set_load_DS_E)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_load_DS_E)
                                                 and sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E))>0)=
           sum(set_tech_DES_chp,var_energyFlow.l(set_ii,'E',set_tech_DES_CHP,set_load_DS_E)$(set_energyLink_opt('E',set_tech_DES_CHP,set_load_DS_E) and sum(set_side_opt$(set_pssOH(set_side_opt,set_load_DS_E) and set_pssOH(set_side_opt,set_tech_DES_CHP)),1)>0))
           / sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E));

par_out_E_E_ELoad_escov(set_ii,set_load_DS_E)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_load_DS_E)
                                                 and sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E))>0)=
           sum(set_tech_DES_ES,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_load_DS_E)$(set_energyLink_opt('E',set_tech_DES_ES,set_load_DS_E) and par_X_BM_NaS_DES_ES(set_tech_DES_ES)=0 and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=0))
           / sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E));

par_out_E_E_ELoad_Sonnentankcov(set_ii,set_load_DS_E)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_load_DS_E)
                                                 and par_X_BM_Sonnentank_DS_E(set_load_DS_E)=1
                                                 and sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E))>0)=
           sum(set_tech_DES_ES,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_load_DS_E)$(set_energyLink_opt('E',set_tech_DES_ES,set_load_DS_E) and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1))
           / sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E));

par_out_E_E_ELoad_NaScov(set_ii,set_load_DS_E)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_load_DS_E)
                                                 and par_X_BM_NaS_DS_E(set_load_DS_E)=1
                                                 and sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E))>0)=
           sum(set_tech_DES_ES,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_load_DS_E)$(set_energyLink_opt('E',set_tech_DES_ES,set_load_DS_E) and par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1))
           / sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E));

par_out_E_E_ELoad_PVdirectcov(set_ii,set_load_DS_E)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_load_DS_E)
                                                 and par_X_BM_PVdirect_DS_E(set_load_DS_E)=1
                                                 and sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E))>0)=
           sum(set_tech_DES_PV,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_load_DS_E)$(set_energyLink_opt('E',set_tech_DES_PV,set_load_DS_E) and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1) and sum(set_side_opt$(set_pssOH(set_side_opt,set_load_DS_E) and not set_pssOH(set_side_opt,set_tech_DES_PV)),1)>0)
           / sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E));

*-------------------------------------------------------------------------------
* Wärmepumpenlastdeckung
*-------------------------------------------------------------------------------
par_out_E_E_HP_gridcov(set_ii,set_tech_DES_HP)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_HP)
                                                 and sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_HP)$set_energyLink_opt('E',set_fromPss,set_tech_DES_HP))>0)=
           sum(set_grid_NS_E,var_energyFlow.l(set_ii,'E',set_grid_NS_E,set_tech_DES_HP)$set_energyLink_opt('E',set_grid_NS_E,set_tech_DES_HP))
           / sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_HP)$set_energyLink_opt('E',set_fromPss,set_tech_DES_HP));

par_out_E_E_HP_pvcov(set_ii,set_tech_DES_HP)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_HP)
                                                 and sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_HP)$set_energyLink_opt('E',set_fromPss,set_tech_DES_HP))>0)=
           sum(set_tech_DES_PV,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_HP)$(set_energyLink_opt('E',set_tech_DES_PV,set_tech_DES_HP) and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=0 and sum(set_side_opt$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pssOH(set_side_opt,set_tech_DES_PV)),1)>0))
           / sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_HP)$set_energyLink_opt('E',set_fromPss,set_tech_DES_HP));

*neu
par_out_E_E_HP_chpcov(set_ii,set_tech_DES_HP)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_HP)
                                                 and sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_HP)$set_energyLink_opt('E',set_fromPss,set_tech_DES_HP))>0)=
           sum(set_tech_DES_CHP,var_energyFlow.l(set_ii,'E',set_tech_DES_CHP,set_tech_DES_HP)$(set_energyLink_opt('E',set_tech_DES_CHP,set_tech_DES_HP) and sum(set_side_opt$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pssOH(set_side_opt,set_tech_DES_CHP)),1)>0))
           / sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_HP)$set_energyLink_opt('E',set_fromPss,set_tech_DES_HP));

par_out_E_E_HP_escov(set_ii,set_tech_DES_HP)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_HP)
                                                 and sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_HP)$set_energyLink_opt('E',set_fromPss,set_tech_DES_HP))>0)=
           sum(set_tech_DES_ES,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_tech_DES_HP)$(set_energyLink_opt('E',set_tech_DES_ES,set_tech_DES_HP) and par_X_BM_NaS_DES_ES(set_tech_DES_ES)=0 and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=0))
           / sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_HP)$set_energyLink_opt('E',set_fromPss,set_tech_DES_HP));

par_out_E_E_HP_PVdirectcov(set_ii,set_tech_DES_HP)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_HP)
                                                 and par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)=1
                                                 and sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_HP)$set_energyLink_opt('E',set_fromPss,set_tech_DES_HP))>0)=
           sum(set_tech_DES_PV,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_HP)$(set_energyLink_opt('E',set_tech_DES_PV,set_tech_DES_HP) and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1) and sum(set_side_opt$(set_pssOH(set_side_opt,set_tech_DES_HP) and not set_pssOH(set_side_opt,set_tech_DES_PV)),1)>0)
           / sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_HP)$set_energyLink_opt('E',set_fromPss,set_tech_DES_HP));

*-------------------------------------------------------------------------------
* Durchlauferhitzerlastdeckung
*-------------------------------------------------------------------------------
par_out_E_E_EB_gridcov(set_ii,set_tech_DES_EB)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_EB)
                                                 and sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_EB)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EB))>0)=
           sum(set_grid_NS_E,var_energyFlow.l(set_ii,'E',set_grid_NS_E,set_tech_DES_EB)$set_energyLink_opt('E',set_grid_NS_E,set_tech_DES_EB))
           / sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_EB)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EB));

par_out_E_E_EB_pvcov(set_ii,set_tech_DES_EB)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_EB)
                                                 and sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_EB)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EB))>0)=
           sum(set_tech_DES_PV,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_EB)$(set_energyLink_opt('E',set_tech_DES_PV,set_tech_DES_EB) and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=0) and sum(set_side_opt$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pssOH(set_side_opt,set_tech_DES_PV)),1)>0)
           / sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_EB)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EB));

*neu
par_out_E_E_EB_chpcov(set_ii,set_tech_DES_EB)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_EB)
                                                 and sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_EB)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EB))>0)=
           sum(set_tech_DES_CHP,var_energyFlow.l(set_ii,'E',set_tech_DES_CHP,set_tech_DES_EB)$(set_energyLink_opt('E',set_tech_DES_CHP,set_tech_DES_EB) and sum(set_side_opt$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pssOH(set_side_opt,set_tech_DES_CHP)),1)>0))
           / sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_EB)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EB));

par_out_E_E_EB_escov(set_ii,set_tech_DES_EB)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_EB)
                                                 and sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_EB)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EB))>0)=
           sum(set_tech_DES_ES,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_tech_DES_EB)$(set_energyLink_opt('E',set_tech_DES_ES,set_tech_DES_EB) and par_X_BM_NaS_DES_ES(set_tech_DES_ES)=0 and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=0))
           / sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_EB)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EB));

*-------------------------------------------------------------------------------
* Lastdeckungsgrad
*-------------------------------------------------------------------------------
*Anteil der thermischen Energie zur Lastdeckung, die nicht vom "Puffer" bereitgestellt wird
par_out_W_DS_load_cov(set_ii,set_load_DS_W)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_load_DS_W)
                                                 and par_L_DS_W(set_ii,set_load_DS_W) ne 0) =
         1 - var_energyFlow.l(set_ii,'W','WMarket',set_load_DS_W)$set_energyLink_opt('W','WMarket',set_load_DS_W)/par_L_DS_W(set_ii,set_load_DS_W);

par_out_W_DS_load_cov(set_ii,set_load_DS_W)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_load_DS_W)
                                                 and par_L_DS_W(set_ii,set_load_DS_W) eq 0
                                                 and var_energyFlow.l(set_ii,'W','WMarket',set_load_DS_W) eq 0) =
         1;

*-------------------------------------------------------------------------------
* Speicherzyklen
*-------------------------------------------------------------------------------
par_out_N_DES_ES_cycles(set_ii,set_tech_DES_ES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_ES)
                                                 and not set_pss_BM(set_tech_DES_ES))=
         round(var_N_DES_ES_cycles.l(set_ii,set_tech_DES_ES));

par_out_N_DES_ES_cycles(set_ii,set_tech_DES_ES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_ES)
                                                 and set_pss_BM(set_tech_DES_ES)
                                                 and sca_X_custmodel>0)=
         round(var_N_DES_ES_cycles.l(set_ii,set_tech_DES_ES));

*-------------------------------------------------------------------------------
* Speicherstand
*-------------------------------------------------------------------------------
par_out_SOC_DES_ES(set_ii,set_tech_DES_ES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_ES)
                                                 and not set_pss_BM(set_tech_DES_ES))=
         var_SOC_DES_ES.l(set_ii,set_tech_DES_ES);

par_out_SOC_DES_ES(set_ii,set_tech_DES_ES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_ES)
                                                 and set_pss_BM(set_tech_DES_ES)
                                                 and sca_X_custmodel=1)=
        var_SOC_DES_ES.l(set_ii,set_tech_DES_ES);

par_out_SOC_DES_ES_percent(set_ii,set_tech_DES_ES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_ES)
                                                 and not set_pss_BM(set_tech_DES_ES)
                                                 and par_SOC_DES_ES_cap(set_tech_DES_ES) ne 0)=
         par_out_SOC_DES_ES(set_ii,set_tech_DES_ES)/par_SOC_DES_ES_cap(set_tech_DES_ES);

par_out_SOC_DES_ES_percent(set_ii,set_tech_DES_ES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_ES)
                                                 and set_pss_BM(set_tech_DES_ES)
                                                 and par_SOC_DES_ES_cap(set_tech_DES_ES) ne 0
                                                 and sca_X_custmodel=1)=
         par_out_SOC_DES_ES(set_ii,set_tech_DES_ES)/par_SOC_DES_ES_cap(set_tech_DES_ES);

par_out_SOC_DES_ES_percent(set_ii,set_tech_DES_ES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_ES)
                                                 and not set_pss_BM(set_tech_DES_ES)
                                                 and par_SOC_DES_ES_cap(set_tech_DES_ES) eq 0)=
         1;
par_out_SOC_DES_ES_percent(set_ii,set_tech_DES_ES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_ES)
                                                 and set_pss_BM(set_tech_DES_ES)
                                                 and par_SOC_DES_ES_cap(set_tech_DES_ES) eq 0
                                                 and sca_X_custmodel=1)=
         1;

par_out_SOC_DES_TS(set_ii,set_tech_DES_TS)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_TS))=
         var_SOC_DES_TS.l(set_ii,set_tech_DES_TS);

par_out_SOC_DES_TS_percent(set_ii,set_tech_DES_TS)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_TS)
                                                 and par_SOC_DES_TS_cap(set_tech_DES_TS) ne 0)=
         par_out_SOC_DES_TS(set_ii,set_tech_DES_TS)/par_SOC_DES_TS_cap(set_tech_DES_TS);

par_out_SOC_DES_TS_percent(set_ii,set_tech_DES_TS)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_TS)
                                                 and par_SOC_DES_TS_cap(set_tech_DES_TS) eq 0)=
         1;

*-------------------------------------------------------------------------------
* Speicherverlust
*-------------------------------------------------------------------------------
par_out_E_DES_ES_losses(set_ii,set_tech_DES_ES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_ES))=
         (var_SOC_DES_ES.l(set_ii-1,set_tech_DES_ES)* par_Eta_DES_ES_selfdischarge(set_tech_DES_ES))$(ord(set_ii) ne 1)
         +(var_SOC_DES_ES.l('ii0',set_tech_DES_ES)* par_Eta_DES_ES_selfdischarge(set_tech_DES_ES))$(ord(set_ii) eq 1)
         +sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_ES)$set_energyLink_opt('E',set_fromPss,set_tech_DES_ES)) * (1-par_Eta_DES_ES_charge(set_tech_DES_ES))
         +sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_toPss)$set_energyLink_opt('E',set_tech_DES_ES,set_toPss)) * (1-par_Eta_DES_ES_discharge(set_tech_DES_ES));

par_out_W_DES_TS_losses(set_ii,set_tech_DES_TS)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_TS))=
         (var_SOC_DES_TS.l(set_ii-1,set_tech_DES_TS)* par_Eta_DES_TS_selfdischarge(set_tech_DES_TS))$(ord(set_ii) ne 1)
         +(var_SOC_DES_TS.l('ii0',set_tech_DES_TS)* par_Eta_DES_TS_selfdischarge(set_tech_DES_TS))$(ord(set_ii) eq 1)
         +sum(set_fromPss,var_energyFlow.l(set_ii,'W',set_fromPss,set_tech_DES_TS)$set_energyLink_opt('W',set_fromPss,set_tech_DES_TS)) * (1-par_Eta_DES_TS_charge(set_tech_DES_TS))
         +sum(set_toPss,var_energyFlow.l(set_ii,'W',set_tech_DES_TS,set_toPss)$set_energyLink_opt('W',set_tech_DES_TS,set_toPss)) * (1-par_Eta_DES_TS_discharge(set_tech_DES_TS));

*-------------------------------------------------------------------------------
* Speicherladeleistung/-entladeleistung vs. maximale Speicherladeleistung/-entladeleistung
*-------------------------------------------------------------------------------
par_out_P_DES_ES_chargeuse_percent(set_ii,set_tech_DES_ES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_ES)
                                                 and sca_delta_ii>0
                                                 and par_P_DES_ES_charge_max(set_tech_DES_ES)>0)=
         (sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_ES)$set_energyLink_opt('E',set_fromPss,set_tech_DES_ES))/sca_delta_ii)
         /par_P_DES_ES_charge_max(set_tech_DES_ES);

par_out_P_DES_ES_dischargeuse_percent(set_ii,set_tech_DES_ES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_ES)
                                                 and sca_delta_ii>0
                                                 and par_P_DES_ES_discharge_max(set_tech_DES_ES)>0)=
         (sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_toPss)$set_energyLink_opt('E',set_tech_DES_ES,set_toPss))/sca_delta_ii)
         /par_P_DES_ES_discharge_max(set_tech_DES_ES);

par_out_Q_DES_TS_chargeuse_percent(set_ii,set_tech_DES_TS)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_TS)
                                                 and sca_delta_ii>0
                                                 and par_Q_DES_TS_charge_max(set_tech_DES_TS)>0)=
         (sum(set_toPss,var_energyFlow.l(set_ii,'W',set_tech_DES_TS,set_toPss)$set_energyLink_opt('W',set_tech_DES_TS,set_toPss))/sca_delta_ii)
         /par_Q_DES_TS_charge_max(set_tech_DES_TS);

par_out_Q_DES_TS_dischargeuse_percent(set_ii,set_tech_DES_TS)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_TS)
                                                 and sca_delta_ii>0
                                                 and par_Q_DES_TS_discharge_max(set_tech_DES_TS)>0)=
         (sum(set_fromPss,var_energyFlow.l(set_ii,'W',set_fromPss,set_tech_DES_TS)$set_energyLink_opt('W',set_fromPss,set_tech_DES_TS))/sca_delta_ii)
         /par_Q_DES_TS_discharge_max(set_tech_DES_TS);

*-------------------------------------------------------------------------------
* Regelenergieangebot
*-------------------------------------------------------------------------------
par_out_E_DES_ES_resneg(set_ii,set_tech_DES_ES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_ES))=
         sum(set_toPss,var_energyFlow.l(set_ii,'NR',set_tech_DES_ES,set_toPss)$set_energyLink_opt('NR',set_tech_DES_ES,set_toPss));
par_out_E_DES_ES_respos(set_ii,set_tech_DES_ES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_ES))=
         sum(set_toPss,var_energyFlow.l(set_ii,'PR',set_tech_DES_ES,set_toPss)$set_energyLink_opt('PR',set_tech_DES_ES,set_toPss));

par_out_E_DES_HP_resneg(set_ii,set_tech_DES_HP)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_HP))=
         sum(set_toPss,var_energyFlow.l(set_ii,'NR',set_tech_DES_HP,set_toPss)$set_energyLink_opt('NR',set_tech_DES_HP,set_toPss));

par_out_E_DES_EB_resneg(set_ii,set_tech_DES_EB)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_EB))=
         sum(set_toPss,var_energyFlow.l(set_ii,'NR',set_tech_DES_EB,set_toPss)$set_energyLink_opt('NR',set_tech_DES_EB,set_toPss));

par_out_E_DES_CHP_resneg(set_ii,set_tech_DES_CHP)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_CHP))=
         sum(set_toPss,var_energyFlow.l(set_ii,'NR',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('NR',set_tech_DES_CHP,set_toPss));
par_out_E_DES_CHP_respos(set_ii,set_tech_DES_CHP)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_CHP))=
         sum(set_toPss,var_energyFlow.l(set_ii,'PR',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('PR',set_tech_DES_CHP,set_toPss));

*-------------------------------------------------------------------------------
* Regelenergievergütung
*-------------------------------------------------------------------------------
par_out_I_DES_ES_resneg(set_ii,set_tech_DES_ES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_ES))=
         par_out_E_DES_ES_resneg(set_ii,set_tech_DES_ES)*sum((set_side_fares,set_side_opt)$(set_pssOH(set_side_opt,set_tech_DES_ES)),par_energyLinkTarif(set_ii,set_side_fares,set_side_opt,'NR',set_tech_DES_ES,'RGrid'));
par_out_I_DES_ES_respos(set_ii,set_tech_DES_ES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_ES))=
         par_out_E_DES_ES_respos(set_ii,set_tech_DES_ES)*sum((set_side_fares,set_side_opt)$(set_pssOH(set_side_opt,set_tech_DES_ES)),par_energyLinkTarif(set_ii,set_side_fares,set_side_opt,'PR',set_tech_DES_ES,'RGrid'));

*neu
par_out_I_DES_CHP_resneg(set_ii,set_tech_DES_CHP)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_CHP))=
         par_out_E_DES_CHP_resneg(set_ii,set_tech_DES_CHP)*sum((set_side_fares,set_side_opt)$(set_pssOH(set_side_opt,set_tech_DES_CHP)),par_energyLinkTarif(set_ii,set_side_fares,set_side_opt,'NR',set_tech_DES_CHP,'RGrid'));
par_out_I_DES_CHP_respos(set_ii,set_tech_DES_CHP)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_CHP))=
         par_out_E_DES_CHP_respos(set_ii,set_tech_DES_CHP)*sum((set_side_fares,set_side_opt)$(set_pssOH(set_side_opt,set_tech_DES_CHP)),par_energyLinkTarif(set_ii,set_side_fares,set_side_opt,'PR',set_tech_DES_CHP,'RGrid'));

par_out_I_DES_EB_resneg(set_ii,set_tech_DES_EB)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_EB))=
         par_out_E_DES_EB_resneg(set_ii,set_tech_DES_EB)*sum((set_side_fares,set_side_opt)$(set_pssOH(set_side_opt,set_tech_DES_EB)),par_energyLinkTarif(set_ii,set_side_fares,set_side_opt,'NR',set_tech_DES_EB,'RGrid'));

par_out_I_DES_HP_resneg(set_ii,set_tech_DES_HP)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_HP))=
         par_out_E_DES_HP_resneg(set_ii,set_tech_DES_HP)*sum((set_side_fares,set_side_opt)$(set_pssOH(set_side_opt,set_tech_DES_HP)),par_energyLinkTarif(set_ii,set_side_fares,set_side_opt,'NR',set_tech_DES_HP,'RGrid'));

*-------------------------------------------------------------------------------
* PV-Abregelung
*-------------------------------------------------------------------------------
par_out_E_DES_PV_down(set_ii,set_tech_DES_PV)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_PV))=
         par_E_DES_PV_max(set_ii,set_tech_DES_PV)-sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink('E',set_tech_DES_PV,set_toPss));

*PV-Energieüberschuss ohne Eigenverbrauch inkl. Speichernutzung (auch Sonnentank und Netspeicher) und ohne Direktvermarktung
par_out_E_DES_PV_flexdemand_cust(set_ii,set_tech_DES_PV)$(set_t_store(set_ii)
                                                      and sum(set_side_opt$set_pssOH(set_side_opt,set_tech_DES_PV),1)>0)=
         sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink('E',set_tech_DES_PV,set_toPss))
         - sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink('E',set_tech_DES_PV,set_toPss)$(sum(set_side_opt$(set_pssOH(set_side_opt,set_toPss) and set_pssOH(set_side_opt,set_tech_DES_PV)),1)>0))
         - (sum(set_load_DS_E,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_load_DS_E)$(sum(set_side_opt$(set_pssOH(set_side_opt,set_load_DS_E) and not set_pssOH(set_side_opt,set_tech_DES_PV)),1)>0))
         +  sum(set_tech_DES_HP,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_HP)$(sum(set_side_opt$(set_pssOH(set_side_opt,set_tech_DES_HP) and not set_pssOH(set_side_opt,set_tech_DES_PV)),1)>0)));

*-------------------------------------------------------------------------------
* PV-Verbrauch
*-------------------------------------------------------------------------------
*Eigenverbrauch/Gesamtstrom
par_out_E_DES_PV_ratio_selfvstotal(set_ii,set_tech_DES_PV)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_PV)
                                                 and sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss))>0)=
           min(max(sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$(par_X_BM_indirectselfcons(set_toPss)<>1 and sum(set_side_opt$(set_pssOH(set_side_opt,set_toPss) and set_pssOH(set_side_opt,set_tech_DES_PV)),1)>0))
           / sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss)),0),1);

*Sonnentankeinspeisung/Gesamtstrom
par_out_E_DES_PV_ratio_sonnentankvstotal(set_ii,set_tech_DES_PV)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_PV)
                                                 and par_X_BM_Sonnentank_DES_PV(set_tech_DES_PV)=1
                                                 and sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss))>0)=
           min(max(sum(set_tech_DES_ES,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_ES)$(sum(set_side_opt$(set_pssOH(set_side_opt,set_tech_DES_ES) and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1 and set_pssOH(set_side_opt,set_tech_DES_PV)),1)>0))
           / sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss)),0),1);

*Netzspeichereinspeisung/Gesamtstrom
par_out_E_DES_PV_ratio_netzspeichervstotal(set_ii,set_tech_DES_PV)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_PV)
                                                 and par_X_BM_NaS_DES_PV(set_tech_DES_PV)=1
                                                 and sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss))>0)=
           min(max(sum(set_tech_DES_ES,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_ES)$(sum(set_side_opt$(set_pssOH(set_side_opt,set_tech_DES_ES) and par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1 and set_pssOH(set_side_opt,set_tech_DES_PV)),1)>0))
           / sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss)),0),1);

*Direktvermarktung/Gesamtstrom
par_out_E_DES_PV_ratio_directvstotal(set_ii,set_tech_DES_PV)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_PV)
                                                 and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1
                                                 and sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss))>0)=
           min(max((sum(set_load_DS_E,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_load_DS_E)$(sum(set_side_opt$(set_pssOH(set_side_opt,set_load_DS_E) and not set_pssOH(set_side_opt,set_tech_DES_PV)),1)>0))
           +  sum(set_tech_DES_HP,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_HP)$(sum(set_side_opt$(set_pssOH(set_side_opt,set_tech_DES_HP) and not set_pssOH(set_side_opt,set_tech_DES_PV)),1)>0)))
           / sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss)),0),1);

*Netzeinspeisung/Gesamtstrom
par_out_E_DES_PV_ratio_othervstotal(set_ii,set_tech_DES_PV)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_PV)
                                                 and sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss))>0)=
          min(max(var_energyFlow.l(set_ii,'E',set_tech_DES_PV,'EGrid')$set_energyLink_opt('E',set_tech_DES_PV,'EGrid')
          / sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss)),0),1);

*-------------------------------------------------------------------------------
* Technologiebilanzierung Dezentrale Anlagen
*-------------------------------------------------------------------------------
par_out_O_DES_PSS_Cap(set_ii,set_tech_DES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES))=
         sum(set_side_opt,par_cashFlow_year(set_tech_DES,'Inv',set_side_opt,'MS'))/8760*sca_delta_ii ;


par_out_O_DES_PSS_OuM(set_ii,set_tech_DES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES))=
         sum(set_side_opt,par_cashFlow_year(set_tech_DES,'OuM',set_side_opt,'MS'))/8760*sca_delta_ii;


par_out_O_DES_PSS_OuM(set_ii,set_tech_DES_HP)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_HP))=
         sum(set_side_opt,par_cashFlow_year(set_tech_DES_HP,'OuM',set_side_opt,'MS'))/8760*sca_delta_ii
         + sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_HP)$set_energyLink_opt('E',set_fromPss,set_tech_DES_HP)
         * sum((set_side_fares,set_side_opt),par_energyLinkTarif(set_ii,set_side_fares,set_side_opt,'E',set_fromPss,set_tech_DES_HP)));


par_out_O_DES_PSS_OuM(set_ii,set_tech_DES_EB)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_EB))=
         sum(set_side_opt,par_cashFlow_year(set_tech_DES_EB,'OuM',set_side_opt,'MS'))/8760*sca_delta_ii
         + sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_EB)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EB)
          * sum((set_side_fares,set_side_opt),par_energyLinkTarif(set_ii,set_side_fares,set_side_opt,'E',set_fromPss,set_tech_DES_EB)));

par_out_O_DES_PSS_OuM(set_ii,set_tech_DES_NGB)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_NGB))=
         sum(set_side_opt,par_cashFlow_year(set_tech_DES_NGB,'OuM',set_side_opt,'MS'))/8760*sca_delta_ii
         + sum(set_fromPss,var_energyFlow.l(set_ii,'G',set_fromPss,set_tech_DES_NGB)$set_energyLink_opt('G',set_fromPss,set_tech_DES_NGB)
         * sum((set_side_fares,set_side_opt),par_energyLinkTarif(set_ii,set_side_fares,set_side_opt,'G',set_fromPss,set_tech_DES_NGB)));

par_out_O_DES_PSS_OuM(set_ii,set_tech_DES_CHP)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_CHP))=
         sum(set_side_opt,par_cashFlow_year(set_tech_DES_CHP,'OuM',set_side_opt,'MS'))/8760*sca_delta_ii
         + sum((set_sector,set_fromPss),var_energyFlow.l(set_ii,set_sector,set_fromPss,set_tech_DES_CHP)$set_energyLink_opt(set_sector,set_fromPss,set_tech_DES_CHP)
         * sum((set_side_fares,set_side_opt),par_energyLinkTarif(set_ii,set_side_fares,set_side_opt,set_sector,set_fromPss,set_tech_DES_CHP)));

par_out_O_DES_PSS_Ins(set_ii,set_tech_DES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES))=
         sum(set_side_opt,par_cashFlow_year(set_tech_DES,'Ins',set_side_opt,'MS'))/8760*sca_delta_ii ;

par_out_I_DES_PSS_Comp(set_ii,set_tech_DES_CHP)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_CHP))=
          sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('E',set_tech_DES_CHP,set_toPss)$((sum(set_side_opt$set_pssOH(set_side_opt,set_toPss),1)>0) and not (sum(set_side_opt$set_pssOH(set_side_opt,set_tech_DES_CHP),1)>0))
          *sum((set_side_fares,set_side_opt),par_energyLinkTarif(set_ii,set_side_fares,set_side_opt,'E',set_tech_DES_CHP,set_toPss)));

par_out_I_DES_PSS_Comp(set_ii,set_tech_DES_PV)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_PV))=
          sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss)$((sum(set_side_opt$set_pssOH(set_side_opt,set_toPss),1)>0) and not (sum(set_side_opt$set_pssOH(set_side_opt,set_tech_DES_PV),1)>0))
          *sum((set_side_fares,set_side_opt),par_energyLinkTarif(set_ii,set_side_fares,set_side_opt,'E',set_tech_DES_PV,set_toPss)));

par_out_O_DES_PSS_Total(set_ii,set_tech_DES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES))=
          par_out_O_DES_PSS_Cap(set_ii,set_tech_DES)
         + par_out_O_DES_PSS_OuM(set_ii,set_tech_DES)
         + par_out_O_DES_PSS_Ins(set_ii,set_tech_DES);

*-------------------------------------------------------------------------------
* Kosten Zentrale Anlagen
*-------------------------------------------------------------------------------

*-------------------------------------------------------------------------------
* Geschäftsfeldtarife Zentrale Anlagen
*-------------------------------------------------------------------------------

*-------------------------------------------------------------------------------
* Marktbilanzierung
*-------------------------------------------------------------------------------
par_out_IuO_TS_trading_spot_energy(set_ii)$set_t_store(set_ii) =
           sum(set_side_opt,sum(set_market_MS_E,sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_market_MS_E)$(set_pssOH(set_side_opt,set_market_MS_E) and set_energyLink_opt('E',set_fromPss,set_market_MS_E))*par_energyLinkTarif(set_ii,'MS',set_side_opt,'E',set_fromPss,set_market_MS_E))
           - sum(set_toPss,var_energyFlow.l(set_ii,'E',set_market_MS_E,set_toPss)$(set_pssOH(set_side_opt,set_market_MS_E) and set_energyLink_opt('E',set_market_MS_E,set_toPss))*par_energyLinkTarif(set_ii,set_side_opt,'MS','E',set_market_MS_E,set_toPss))));

par_out_IuO_TS_trading_spot_power(set_ii)$set_t_store(set_ii) =
           - sum(set_side_opt,sum(set_jj$((par_Last_Day_of_Month(set_jj)/sca_delta_ii*24 >= ord(set_ii) and par_Last_Day_of_Month(set_jj-1)/sca_delta_ii*24 < ord(set_ii))),
                 sca_delta_ii/Days_in_Month(set_jj)/24*
                 sum(set_power_E_MS,var_powerMeasurement.l(set_jj,set_power_E_MS)*par_powerLinkTarif(set_jj,set_power_E_MS,set_side_opt,'MS')/par_DF_powerLink(set_power_E_MS))));

par_out_IuO_TS_trading_gas_energy(set_ii)$set_t_store(set_ii) =
           sum(set_side_opt,sum(set_market_MS_G,sum(set_fromPss,var_energyFlow.l(set_ii,'G',set_fromPss,set_market_MS_G)$(set_pssOH(set_side_opt,set_market_MS_G) and set_energyLink_opt('G',set_fromPss,set_market_MS_G))*par_energyLinkTarif(set_ii,'MS',set_side_opt,'G',set_fromPss,set_market_MS_G))
           - sum(set_toPss,var_energyFlow.l(set_ii,'G',set_market_MS_G,set_toPss)$(set_pssOH(set_side_opt,set_market_MS_G) and set_energyLink_opt('G',set_market_MS_G,set_toPss))*par_energyLinkTarif(set_ii,set_side_opt,'MS','G',set_market_MS_G,set_toPss))));

par_out_IuO_TS_trading_gas_power(set_ii)$set_t_store(set_ii) =
           - sum(set_side_opt,sum(set_jj$((par_Last_Day_of_Month(set_jj)/sca_delta_ii*24 >= ord(set_ii) and par_Last_Day_of_Month(set_jj-1)/sca_delta_ii*24 < ord(set_ii))),
                 sca_delta_ii/Days_in_Month(set_jj)/24*
                 sum(set_power_G_MS,var_powerMeasurement.l(set_jj,set_power_G_MS)*par_powerLinkTarif(set_jj,set_power_G_MS,set_side_opt,'MS')/par_DF_powerLink(set_power_G_MS))));

*-------------------------------------------------------------------------------
* Kundengruppengröße
*-------------------------------------------------------------------------------
par_out_S_DS(set_ii,set_side_cust)$set_t_store(set_ii) = par_S_DS(set_side_cust);


*-------------------------------------------------------------------------------
* Sonstiges - zu überarbeiten
*-------------------------------------------------------------------------------

*PV-Direktvermarktung
*1.PV-Eigenverbrauch, PV-Ertrag (Menge kWh, Menge CHF)
*2.NPV der PV Anlage
*3.Flexibilitätsanagbeot th. Speicher / Wärmepumpe vs. Flexibilitätsnachfrage PV-Anlage / Verbraucher
*4.State of charge ES

par_out_E_BM_PVdirect_cust(set_ii,set_tech_DES_PV)$(par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1) =
         sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink('E',set_tech_DES_PV,set_toPss)$((sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_PV),1)>0)));
par_out_E_BM_PVdirect_offer_cust(set_ii,set_tech_DES_PV)$(par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1) =
         sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss)$((sum(set_side_cust$set_pssOH(set_side_cust,set_toPss),1)>0) and not (sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_PV),1)>0)));
par_out_E_BM_PVdirect_cons_cust(set_ii,set_tech_DES_PV)$(par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1) =
         sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss)$((sum(set_side_cust$set_pssOH(set_side_cust,set_toPss),1)>0) and (sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_PV),1)>0)));

*par_out_E_BM_PVdirect_cons_cust(set_ii,set_load_DS_E)$(par_X_BM_PVdirect_DS_E(set_load_DS_E)=1) =


*nicht selbstverbrauchter Strom * Tarif
par_out_I_BM_PVdirect_cust(set_ii,set_tech_DES_PV)$(par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1) =
*+ Erlöse Strom Direktvermarktungsverkauf
         + par_out_E_BM_PVdirect_offer_cust(set_ii,set_tech_DES_PV) * sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_PV),par_energyLinkTarif(set_ii,'NS',set_side_cust,'E',set_tech_DES_PV,'EGrid') + par_energyLinkTarif(set_ii,'SMS',set_side_cust,'E',set_tech_DES_PV,'EGrid'))
*- Erlöse Strom Standardeinspeisung
         - par_out_E_BM_PVdirect_offer_cust(set_ii,set_tech_DES_PV) * sum((set_side_fares,set_side_cust)$set_pssOH(set_side_cust,set_tech_DES_PV),par_energyLinkTarif(set_ii,set_side_fares,set_side_cust,'E',set_tech_DES_PV,'EGrid'));
*Einspeisevergütung kann man den Tarif nicht nehmen, da der Direktvermarktungstarif ja den Einspeisvergütungstarif überschreibt (wie könnte man das lösen)? Nur durch fixen Parameter?
*gleiche gilt für Netzbezug bei der nächsten Formel...

*Vorteil Direktvermarktungsbezug vs. Netzbezug (Last)
*par_out_O_BM_PVdirect_DSEcust_(set_ii,set_load_DS_E)$(par_X_BM_PVdirect_DS_E(set_load_DS_E)=1) =
*+ Ausgaben Strom Direktvermarktungsbezug Last
*        + par_out_E_BM_PVdirect_offer_cust(set_ii,set_load_DS_E) * sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_PV),par_energyLinkTarif(set_ii,'NS',set_side_cust,'E',set_tech_DES_PV,'EGrid') + par_energyLinkTarif(set_ii,'SMS',set_side_cust,'E',set_tech_DES_PV,'EGrid'))
*- Ausgaben Strom Standardnetzbezug

*Netspeicher
*1.PV Eigenverbrauch der KGr Menge
*2.PV Einspeisung der KGr Menge
*3.PV Einspeisung der KGr CHF
*4.Netzeinspeisung der KGr Menge
*5.Netzeinspeisung der KGr CHF Tarif- und Spotmarktbewertung
*6.Netzbezug der KGr Menge
*7.Netzbezug der KGr CHF Tarif- und Spotmarktbewertung
*8.NPV der Anlage

*Sonnentank
*1.Angebotene Regelenergie Sonnentank (Quartiersspeicher)
*2.Direktvermarkteter PV-Strom
*3.Flexibilitätsangebot (Speicher) vs. Flexibilitätsnachfrage (PV-Anlage, Verbraucher, Regelleistung)
*4.Genutzte Leistung/ Installierte Leistung
*5.Speicherverluste
*6.SOC

$Ontext
*Eigenverbrauchsverhalten
par_out_L_DS_E_selfcons(set_ii,set_side_opt)$(set_t_store(set_ii)
                                                      and set_side_cust(set_side_opt)
                                                      and(sum(set_tech_DES_PV$set_pssOH(set_side_opt,set_tech_DES_PV),1)>0)) =
         sum((set_tech_DES_PV,set_toPss),var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$(set_energyLink_opt('E',set_tech_DES_PV,set_toPss) and set_pssOH(set_side_opt,set_toPss) and set_pssOH(set_side_opt,set_toPss) and par_X_BM_indirectselfcons(set_toPss)<>1));

par_out_L_DS_E_selfcons_percent(set_ii,set_side_opt)$(set_t_store(set_ii)
                                                      and sum(set_tech_DES_PV$set_pssOH(set_side_opt,set_tech_DES_PV),1)>0
                                                      and sum((set_fromPss,set_toPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss) and set_pssOH(set_side_opt,set_toPss)))>0) =
         par_out_L_DS_E_selfcons(set_ii,set_side_opt)
         / sum((set_fromPss,set_toPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss) and set_pssOH(set_side_opt,set_toPss) and par_X_BM_indirectselfcons(set_toPss)<>1));

par_out_L_DS_E_BM_PVdirectcons(set_ii,set_side_opt)$(set_t_store(set_ii)
                                                      and set_side_cust(set_side_opt))=
         sum((set_tech_DES_PV,set_toPss),var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$(set_energyLink_opt('E',set_tech_DES_PV,set_toPss) and set_pssOH(set_side_opt,set_toPss) and not set_pssOH(set_side_opt,set_tech_DES_PV) and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1));
par_out_L_DS_E_BM_PVdirectcons_percent(set_ii,set_side_opt)$(set_t_store(set_ii)
                                                      and set_side_cust(set_side_opt)
                                                      and sum((set_fromPss,set_toPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss) and set_pssOH(set_side_opt,set_toPss)))>0)=
         par_out_L_DS_E_BM_PVdirectcons(set_ii,set_side_opt)
         / sum((set_fromPss,set_toPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss) and set_pssOH(set_side_opt,set_toPss) and par_X_BM_indirectselfcons(set_toPss)<>1));

par_out_L_DS_E_BM_NaScons(set_ii,set_side_opt)$(set_t_store(set_ii)
                                                      and set_side_cust(set_side_opt)
                                                      and sum(set_tech_DES_ES$set_pssOH(set_side_opt,set_tech_DES_ES),par_X_BM_NaS_DES_ES(set_tech_DES_ES))=1) =
         sum((set_tech_DES_ES,set_toPss),var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_toPss)$(set_energyLink_opt('E',set_tech_DES_ES,set_toPss) and set_pssOH(set_side_opt,set_tech_DES_ES) and set_pssOH(set_side_opt,set_toPss) and par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1));
par_out_L_DS_E_BM_NaScons_percent(set_ii,set_side_opt)$(set_t_store(set_ii)
                                                      and sum((set_fromPss,set_toPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss) and set_pssOH(set_side_opt,set_toPss)))>0
                                                      and sum(set_tech_DES_ES$set_pssOH(set_side_opt,set_tech_DES_ES),par_X_BM_NaS_DES_ES(set_tech_DES_ES))=1)=
         par_out_L_DS_E_BM_NaScons(set_ii,set_side_opt)
         / sum((set_fromPss,set_toPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss) and set_pssOH(set_side_opt,set_toPss) and par_X_BM_indirectselfcons(set_toPss)<>1));

par_out_L_DS_E_BM_Sonnentankcons(set_ii,set_side_opt)$(set_t_store(set_ii)
                                                      and set_side_cust(set_side_opt)
                                                      and sum(set_tech_DES_ES$set_pssOH(set_side_opt,set_tech_DES_ES),par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES))=1)=
         sum((set_tech_DES_ES,set_toPss),var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_toPss)$(set_energyLink_opt('E',set_tech_DES_ES,set_toPss) and set_pssOH(set_side_opt,set_tech_DES_ES) and set_pssOH(set_side_opt,set_toPss) and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1));
par_out_L_DS_E_BM_Sonnentankcons_percent(set_ii,set_side_opt)$(set_t_store(set_ii)
                                                      and set_side_cust(set_side_opt)
                                                      and sum((set_fromPss,set_toPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss) and set_pssOH(set_side_opt,set_toPss)))>0
                                                      and sum(set_tech_DES_ES$set_pssOH(set_side_opt,set_tech_DES_ES),par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES))=1)=
         par_out_L_DS_E_BM_Sonnentankcons(set_ii,set_side_opt)
         / sum((set_fromPss,set_toPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss) and set_pssOH(set_side_opt,set_toPss) and par_X_BM_indirectselfcons(set_toPss)<>1));

par_out_L_DS_E_extcons(set_ii,set_side_opt)$set_t_store(set_ii)=
         sum((set_fromPss,set_toPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$set_energyLink_opt('E',set_fromPss,set_toPss)$(set_pssOH(set_side_opt,set_toPss) and not set_pssOH(set_side_opt,set_fromPss)))
         - par_out_L_DS_E_BM_PVdirectcons(set_ii,set_side_opt);
par_out_L_DS_E_extcons_percent(set_ii,set_side_opt)$(set_t_store(set_ii)
                                                      and set_side_cust(set_side_opt)
                                                      and sum((set_fromPss,set_toPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss) and set_pssOH(set_side_opt,set_toPss)))>0)=
         par_out_L_DS_E_extcons(set_ii,set_side_opt)
          / sum((set_fromPss,set_toPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss) and set_pssOH(set_side_opt,set_toPss) and par_X_BM_indirectselfcons(set_toPss)<>1));

par_out_L_DS_W_selfcons(set_ii,set_side_opt)$(set_t_store(set_ii)
                                                      and set_side_cust(set_side_opt))=
         sum((set_tech_DES_NGB,set_toPss),var_energyFlow.l(set_ii,'W',set_tech_DES_NGB,set_toPss)$set_energyLink_opt('W',set_tech_DES_NGB,set_toPss)$(set_pssOH(set_side_opt,set_toPss) and set_pssOH(set_side_opt,set_tech_DES_NGB)))
         - sum((set_tech_DES_NGB,set_tech_DES_TS),var_energyFlow.l(set_ii,'W',set_tech_DES_NGB,set_tech_DES_TS)$set_energyLink_opt('W',set_tech_DES_NGB,set_tech_DES_TS)$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pssOH(set_side_opt,set_tech_DES_NGB)))
         + sum((set_tech_DES_EB,set_toPss),var_energyFlow.l(set_ii,'W',set_tech_DES_EB,set_toPss)$set_energyLink_opt('W',set_tech_DES_EB,set_toPss)$(set_pssOH(set_side_opt,set_toPss) and set_pssOH(set_side_opt,set_tech_DES_EB)))
         - sum((set_tech_DES_EB,set_tech_DES_TS),var_energyFlow.l(set_ii,'W',set_tech_DES_EB,set_tech_DES_TS)$set_energyLink_opt('W',set_tech_DES_EB,set_tech_DES_TS)$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pssOH(set_side_opt,set_tech_DES_EB)))
         + sum((set_tech_DES_HP,set_toPss),var_energyFlow.l(set_ii,'W',set_tech_DES_HP,set_toPss)$set_energyLink_opt('W',set_tech_DES_HP,set_toPss)$(set_pssOH(set_side_opt,set_toPss) and set_pssOH(set_side_opt,set_tech_DES_HP)))
         - sum((set_tech_DES_HP,set_tech_DES_TS),var_energyFlow.l(set_ii,'W',set_tech_DES_HP,set_tech_DES_TS)$set_energyLink_opt('W',set_tech_DES_HP,set_tech_DES_TS)$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pssOH(set_side_opt,set_tech_DES_HP)))
         + sum((set_tech_DES_TS,set_toPss),var_energyFlow.l(set_ii,'W',set_tech_DES_TS,set_toPss)$set_energyLink_opt('W',set_tech_DES_TS,set_toPss)$(set_pssOH(set_side_opt,set_toPss) and set_pssOH(set_side_opt,set_tech_DES_TS)));
par_out_L_DS_W_selfcons_percent(set_ii,set_side_opt)$(set_t_store(set_ii)
                                                      and set_side_cust(set_side_opt)
                                                      and (sum((set_fromPss,set_toPss),var_energyFlow.l(set_ii,'W',set_fromPss,set_toPss)$(set_energyLink_opt('W',set_fromPss,set_toPss) and set_pssOH(set_side_opt,set_toPss)))
                                                           - sum((set_fromPss,set_tech_DES_TS),var_energyFlow.l(set_ii,'W',set_fromPss,set_tech_DES_TS)$(set_energyLink_opt('W',set_fromPss,set_tech_DES_TS) and set_pssOH(set_side_opt,set_fromPss) and set_pssOH(set_side_opt,set_tech_DES_TS))))>0)=
         par_out_L_DS_W_selfcons(set_ii,set_side_opt)
         / (sum((set_fromPss,set_toPss),var_energyFlow.l(set_ii,'W',set_fromPss,set_toPss)$(set_energyLink_opt('W',set_fromPss,set_toPss) and set_pssOH(set_side_opt,set_toPss)))
           - sum((set_fromPss,set_tech_DES_TS),var_energyFlow.l(set_ii,'W',set_fromPss,set_tech_DES_TS)$(set_energyLink_opt('W',set_fromPss,set_tech_DES_TS) and set_pssOH(set_side_opt,set_fromPss) and set_pssOH(set_side_opt,set_tech_DES_TS))));

par_out_L_DS_W_extcons(set_ii,set_side_opt)$(set_t_store(set_ii)
                                                      and set_side_cust(set_side_opt))=
         sum((set_fromPss,set_toPss),var_energyFlow.l(set_ii,'W',set_fromPss,set_toPss)$set_energyLink_opt('W',set_fromPss,set_toPss)$(set_pssOH(set_side_opt,set_toPss) and not set_pssOH(set_side_opt,set_fromPss)));
par_out_L_DS_W_extcons_percent(set_ii,set_side_opt)$(set_t_store(set_ii)
                                                      and set_side_cust(set_side_opt)
                                                      and (sum((set_fromPss,set_toPss),var_energyFlow.l(set_ii,'W',set_fromPss,set_toPss)$(set_energyLink_opt('W',set_fromPss,set_toPss) and set_pssOH(set_side_opt,set_toPss)))
                                                           - sum((set_fromPss,set_tech_DES_TS),var_energyFlow.l(set_ii,'W',set_fromPss,set_tech_DES_TS)$(set_energyLink_opt('W',set_fromPss,set_tech_DES_TS) and set_pssOH(set_side_opt,set_fromPss) and set_pssOH(set_side_opt,set_tech_DES_TS))))>0)=
         par_out_L_DS_W_extcons(set_ii,set_side_opt)
         /(sum((set_fromPss,set_toPss),var_energyFlow.l(set_ii,'W',set_fromPss,set_toPss)$(set_energyLink_opt('W',set_fromPss,set_toPss) and set_pssOH(set_side_opt,set_toPss)))
           - sum((set_fromPss,set_tech_DES_TS),var_energyFlow.l(set_ii,'W',set_fromPss,set_tech_DES_TS)$(set_energyLink_opt('W',set_fromPss,set_tech_DES_TS) and set_pssOH(set_side_opt,set_fromPss) and set_pssOH(set_side_opt,set_tech_DES_TS))));

*Bilanzierung Speicher Kundenseite
par_out_IuO_DES_ES_accounting_cust(set_ii,set_tech_DES_ES)$(set_t_store(set_ii)
                                                         and set_pss_opt(set_tech_DES_ES)
                                                         and sum(set_side_opt$(set_side_cust(set_side_opt) and set_pssOH(set_side_opt,set_tech_DES_ES)),1)>0)=
*- Jährkliche Kosten
         - sum((set_sector,set_cashFlow_year,set_fromSide,set_toSide),par_cashFlow_year(set_sector,set_tech_DES_ES,set_cashFlow_year,set_fromSide,set_toSide))/(8760*sca_delta_ii)
*- Monatliche Kosten
         - sum(set_jj$((par_Last_Day_of_Month(set_jj)/sca_delta_ii*24 >= ord(set_ii)
                      and par_Last_Day_of_Month(set_jj-1)/sca_delta_ii*24 < ord(set_ii))),
                sca_delta_ii/Days_in_Month(set_jj)/24*
         sum((set_sector,set_cashFlow_month,set_fromSide,set_toSide),par_cashFlow_month(set_jj,set_sector,set_tech_DES_ES,set_cashFlow_month,set_fromSide,set_toSide)))
*- Tarif PV->EGrid * Energiefluss PV->ES (gleiche Optimierungshoheit)
         - sum(set_tech_DES_PV,var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_ES)$(set_energyLink_opt('E',set_tech_DES_PV,set_tech_DES_ES)
                                                                                         and sum(set_side_opt$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pssOH(set_side_opt,set_tech_DES_PV)),1)>0))
         * sum(set_side_opt$set_pssOH(set_side_opt,set_tech_DES_ES),sum((set_side_fares,set_tech_DES_PV),par_energyLinkTarif(set_ii,set_side_fares,set_side_opt,'E',set_tech_DES_PV,'EGrid')))
*- Tarif EGrid->ELoad  * Energiefluss Pss->ES (unterschiedliche Optimierungshoheit)
         - sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_ES)$(set_energyLink_opt('E',set_fromPss,set_tech_DES_ES)
                                                                                         and sum(set_side_opt$(set_pssOH(set_side_opt,set_tech_DES_ES) and not set_pssOH(set_side_opt,set_fromPss)),1)>0))
         * sum(set_side_opt$set_pssOH(set_side_opt,set_tech_DES_ES),sum((set_side_fares,set_load_DS_E),par_energyLinkTarif(set_ii,set_side_opt,set_side_fares,'E','EGrid',set_load_DS_E)))
*+ Tarif EGrid->ELoad * Energiefluss ES->Pss (gleiche Optimierungshoheit)
         + sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_toPss)$(set_energyLink_opt('E',set_tech_DES_ES,set_toPss)
                                                                                         and sum(set_side_opt$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pssOH(set_side_opt,set_toPss)),1)>0))
         * sum(set_side_opt$set_pssOH(set_side_opt,set_tech_DES_ES),sum((set_side_fares,set_load_DS_E),par_energyLinkTarif(set_ii,set_side_opt,set_side_fares,'E','EGrid',set_load_DS_E)));

*Bilanzierung Speicher Unternehmensseite
par_out_IuO_DES_ES_accounting_orga(set_ii,set_tech_DES_ES)$(set_t_store(set_ii)
                                                         and sum(set_side_opt$(set_side_orga(set_side_opt) and set_pssOH(set_side_opt,set_tech_DES_ES)),1)>0)=
*Kosten ES Investition, Betriebsführung und Wartung
         - sum((set_sector,set_cashFlow_year,set_side_opt,set_toSide),par_cashFlow_year(set_sector,set_tech_DES_ES,set_cashFlow_year,set_side_opt,set_toSide))/(8760*sca_delta_ii)
*1/4 stündliche Regelenergieerlöse
         + sum(set_toPss,var_energyFlow.l(set_ii,'NR',set_tech_DES_ES,set_toPss)$set_energyLink_opt('NR',set_tech_DES_ES,set_toPss))*par_energyLinkTarif(set_ii,'MS','SMS','NR','NRGrid','NRMarket')
         + sum(set_toPss,var_energyFlow.l(set_ii,'PR',set_tech_DES_ES,set_toPss)$set_energyLink_opt('PR',set_tech_DES_ES,set_toPss))*par_energyLinkTarif(set_ii,'MS','SMS','PR','PRGrid','PRMarket')
*1/4 stündliche Spotmarkterlöse
         + sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,'EGrid')$set_energyLink_opt('E',set_tech_DES_ES,set_toPss))*par_energyLinkTarif(set_ii,'MS','SMS','E','EGrid','EMarket')
         - sum(set_toPss,var_energyFlow.l(set_ii,'E','EGrid',set_tech_DES_ES)$set_energyLink_opt('E',set_tech_DES_ES,set_toPss))*par_energyLinkTarif(set_ii,'SMS','MS','E','EMarket','EGrid')
*Monatliche Kundenbeiträge
         + sum(set_jj$((par_Last_Day_of_Month(set_jj)/sca_delta_ii*24 >= ord(set_ii)
                      and par_Last_Day_of_Month(set_jj-1)/sca_delta_ii*24 < ord(set_ii))),
                sca_delta_ii/Days_in_Month(set_jj)/24*
           sum((set_sector,set_cashFlow_month,set_fromSide,set_side_opt),par_cashFlow_month(set_jj,set_sector,set_tech_DES_ES,set_cashFlow_month,set_fromSide,set_side_opt)));

par_out_IuO_DES_PV_accounting_cust(set_ii,set_tech_DES_PV)$set_t_store(set_ii) =
*- Kosten PV Investition, Betriebsführung und Wartung
         - sum((set_cashFlow_year,set_side_opt,set_toSide),par_cashFlow_year('E',set_tech_DES_PV,set_cashFlow_year,set_side_opt,set_toSide))/(8760*sca_delta_ii)
*+ Eigenverbrauch * Vertriebs- und Netztarif
         + sum((set_toPss),var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss)$((sum(set_side_opt$set_pssOH(set_side_opt,set_toPss),1)>0) and (sum(set_side_opt$set_pssOH(set_side_opt,set_tech_DES_PV),1)>0)) * sum(set_side_opt$set_pssOH(set_side_opt,set_tech_DES_PV),par_energyLinkTarif(set_ii,set_side_opt,'NS','E','EGrid',set_toPss) + par_energyLinkTarif(set_ii,set_side_opt,'SMS','E','EGrid',set_toPss)))
*+ Einspeisung * Einspeisetarif
         + sum((set_toPss),var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss)$((sum(set_side_opt$set_pssOH(set_side_opt,set_toPss),1)>0) and not (sum(set_side_opt$set_pssOH(set_side_opt,set_tech_DES_PV),1)>0)) * sum(set_side_opt$set_pssOH(set_side_opt,set_tech_DES_PV),par_energyLinkTarif(set_ii,'NS',set_side_opt,'E','EGrid',set_toPss) + par_energyLinkTarif(set_ii,'SMS',set_side_opt,'E','EGrid',set_toPss)));

par_out_IuO_DES_TS_accounting_cust(set_ii,set_tech_DES_TS)$set_t_store(set_ii) =
         sum((set_sector,set_cashFlow_year,set_fromSide,set_toSide),par_cashFlow_year(set_sector,set_tech_DES_TS,set_cashFlow_year,set_fromSide,set_toSide))/(8760*sca_delta_ii);
par_out_IuO_DES_EB_accounting_cust(set_ii,set_tech_DES_EB)$set_t_store(set_ii) =
         sum((set_sector,set_cashFlow_year,set_fromSide,set_toSide),par_cashFlow_year(set_sector,set_tech_DES_EB,set_cashFlow_year,set_fromSide,set_toSide))/(8760*sca_delta_ii);
par_out_IuO_DES_HP_accounting_cust(set_ii,set_tech_DES_HP)$set_t_store(set_ii) =
         sum((set_sector,set_cashFlow_year,set_fromSide,set_toSide),par_cashFlow_year(set_sector,set_tech_DES_HP,set_cashFlow_year,set_fromSide,set_toSide))/(8760*sca_delta_ii);
par_out_IuO_DES_NGB_accounting_cust(set_ii,set_tech_DES_NGB)$set_t_store(set_ii) =
         sum((set_sector,set_cashFlow_year,set_fromSide,set_toSide),par_cashFlow_year(set_sector,set_tech_DES_NGB,set_cashFlow_year,set_fromSide,set_toSide))/(8760*sca_delta_ii);

par_out_IuO_DES_TS_accounting_orga(set_ii,set_tech_DES_TS)$set_t_store(set_ii) =
         sum((set_sector,set_cashFlow_year,set_fromSide,set_toSide),par_cashFlow_year(set_sector,set_tech_DES_TS,set_cashFlow_year,set_fromSide,set_toSide))/(8760*sca_delta_ii);
par_out_IuO_DES_EB_accounting_orga(set_ii,set_tech_DES_EB)$set_t_store(set_ii) =
         sum((set_sector,set_cashFlow_year,set_fromSide,set_toSide),par_cashFlow_year(set_sector,set_tech_DES_EB,set_cashFlow_year,set_fromSide,set_toSide))/(8760*sca_delta_ii);
par_out_IuO_DES_PV_accounting_orga(set_ii,set_tech_DES_PV)$set_t_store(set_ii) =
         sum((set_sector,set_cashFlow_year,set_fromSide,set_toSide),par_cashFlow_year(set_sector,set_tech_DES_PV,set_cashFlow_year,set_fromSide,set_toSide))/(8760*sca_delta_ii);
par_out_IuO_DES_HP_accounting_orga(set_ii,set_tech_DES_HP)$set_t_store(set_ii) =
         sum((set_sector,set_cashFlow_year,set_fromSide,set_toSide),par_cashFlow_year(set_sector,set_tech_DES_HP,set_cashFlow_year,set_fromSide,set_toSide))/(8760*sca_delta_ii);
par_out_IuO_DES_NGB_accounting_orga(set_ii,set_tech_DES_NGB)$set_t_store(set_ii) =
         sum((set_sector,set_cashFlow_year,set_fromSide,set_toSide),par_cashFlow_year(set_sector,set_tech_DES_NGB,set_cashFlow_year,set_fromSide,set_toSide))/(8760*sca_delta_ii);


*Flexibilitätsbewertung
par_out_I_DES_ES_flexibility(set_ii,set_tech_DES_ES)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_ES))=
         (sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_ES)$set_energyLink('E',set_fromPss,set_tech_DES_ES)) - sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_toPss)$set_energyLink('E',set_tech_DES_ES,set_toPss)))
         *(sum(set_side_opt$set_pssOH(set_side_opt,set_tech_DES_ES),sum((set_side_fares,set_Load_DS_E),par_energyLinkTarif(set_ii,set_side_opt,set_side_fares,'E','EGrid',set_Load_DS_E)))*sca_X_custmodel
         + sum(set_side_opt$set_pssOH(set_side_opt,set_tech_DES_ES),par_energyLinkTarif(set_ii,set_side_opt,'MS','E','EMarket','EGrid'))*sca_X_orgamodel);


par_out_I_DES_TS_flexibility_cust(set_ii,set_tech_DES_TS)$set_t_store(set_ii) =
          sum(set_fromPss,var_energyFlow.l(set_ii,'W',set_fromPss,set_tech_DES_TS)$set_energyLink('W',set_fromPss,set_tech_DES_TS))*sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_TS),par_energyLinkTarif(set_ii,'NS',set_side_cust,'W','WGrid',set_tech_DES_TS) + par_energyLinkTarif(set_ii,'SMS',set_side_cust,'W','WGrid',set_tech_DES_TS))
          - sum(set_toPss,var_energyFlow.l(set_ii,'W',set_tech_DES_TS,set_toPss)$set_energyLink('W',set_tech_DES_TS,set_toPss))*sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_TS),par_energyLinkTarif(set_ii,'NS',set_side_cust,'W','WGrid',set_tech_DES_TS) + par_energyLinkTarif(set_ii,'SMS',set_side_cust,'W','WGrid',set_tech_DES_TS));

par_out_I_DES_TS_flexibility_orga(set_ii,set_tech_DES_TS)$set_t_store(set_ii) =
         sum(set_fromPss,var_energyFlow.l(set_ii,'W',set_fromPss,set_tech_DES_TS)$set_energyLink('W',set_fromPss,set_tech_DES_TS))*par_energyLinkTarif(set_ii,'SMS','MS','E','EMarket',set_tech_DES_TS)
         - sum(set_toPss,var_energyFlow.l(set_ii,'W',set_tech_DES_TS,set_toPss)$set_energyLink('W',set_tech_DES_TS,set_toPss))*par_energyLinkTarif(set_ii,'SMS','MS','E','EMarket',set_tech_DES_TS);

par_out_I_DES_PV_trading(set_ii,set_tech_DES_PV)$(set_t_store(set_ii)
                                                 and set_pss_opt(set_tech_DES_PV))=
         var_energyFlow.l(set_ii,'E',set_tech_DES_PV,'EGrid')$set_energyLink('E',set_tech_DES_PV,'EGrid') * (sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_PV),par_F_SMS_E_feedin(set_ii,set_side_cust)))
         *(sum(set_side_opt$set_pssOH(set_side_opt,set_tech_DES_PV),sum((set_side_fares,set_Load_DS_E),par_energyLinkTarif(set_ii,set_side_opt,set_side_fares,'E','EGrid',set_Load_DS_E)))*sca_X_custmodel
         + sum(set_side_opt$set_pssOH(set_side_opt,set_tech_DES_PV),par_energyLinkTarif(set_ii,set_side_opt,'MS','E','EMarket','EGrid'))*sca_X_orgamodel);


*Flexibilitätsangebot / Auslastung
par_out_E_DES_ES_flexoffer_charge(set_ii,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) and set_t_store(set_ii) and par_P_DES_ES_discharge_max(set_tech_DES_ES) ne 0) =
         sum(set_toPss,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_toPss)$set_energyLink('E',set_tech_DES_ES,set_toPss))/sca_delta_ii/par_P_DES_ES_discharge_max(set_tech_DES_ES);
*Entladung gar nicht möglich
par_out_E_DES_ES_flexoffer_discharge(set_ii,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) and set_t_store(set_ii) and par_P_DES_ES_charge_max(set_tech_DES_ES) ne 0) =
         sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_ES)$set_energyLink('E',set_fromPss,set_tech_DES_ES))/sca_delta_ii/par_P_DES_ES_charge_max(set_tech_DES_ES);
par_out_W_DES_TS_flexoffer_charge(set_ii,set_tech_DES_TS)$(set_pss_opt(set_tech_DES_TS) and set_t_store(set_ii) and par_Q_DES_TS_discharge_max(set_tech_DES_TS) ne 0) =
         sum(set_toPss,var_energyFlow.l(set_ii,'W',set_tech_DES_TS,set_toPss)$set_energyLink('W',set_tech_DES_TS,set_toPss))/sca_delta_ii/par_Q_DES_TS_discharge_max(set_tech_DES_TS);
par_out_W_DES_TS_flexoffer_discharge(set_ii,set_tech_DES_TS)$(set_pss_opt(set_tech_DES_TS) and set_t_store(set_ii) and par_Q_DES_TS_discharge_max(set_tech_DES_TS) ne 0) =
         sum(set_fromPss,var_energyFlow.l(set_ii,'W',set_fromPss,set_tech_DES_TS)$set_energyLink('W',set_fromPss,set_tech_DES_TS))/sca_delta_ii/par_Q_DES_TS_discharge_max(set_tech_DES_TS);
par_out_E_DES_EB_flexoffer(set_ii,set_tech_DES_EB)$(set_pss_opt(set_tech_DES_EB) and set_t_store(set_ii) and par_Q_DES_EB_max(set_tech_DES_EB) ne 0 and  par_Eta_DES_EB(set_tech_DES_EB) ne 0) =
         sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_EB)$set_energyLink('E',set_fromPss,set_tech_DES_EB)) / sca_delta_ii / par_Q_DES_EB_max(set_tech_DES_EB) / par_Eta_DES_EB(set_tech_DES_EB);
par_out_E_DES_HP_flexoffer(set_ii,set_tech_DES_HP)$(set_pss_opt(set_tech_DES_HP) and set_t_store(set_ii) and par_Q_DES_HP_max_temp(set_ii,set_tech_DES_HP) ne 0) =
         sum(set_fromPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_HP)$set_energyLink('E',set_fromPss,set_tech_DES_HP)) / sca_delta_ii / (par_Q_DES_HP_max_temp(set_ii,set_tech_DES_HP) / par_COP_DES_HP(set_ii,set_tech_DES_HP) + (par_Q_DES_HP_max(set_tech_DES_HP) - par_Q_DES_HP_max_temp(set_ii,set_tech_DES_HP)) / par_Eta_DES_HR(set_tech_DES_HP));



$offtext
