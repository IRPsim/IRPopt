***-----------------------------------------------------------------------------
***optimizationhighness set_pss
***-----------------------------------------------------------------------------
set_pssOH(set_side,set_tech_DES_ES)=YES$(par_OH_DES_ES_side(set_side,set_tech_DES_ES)=1 and par_X_pss_model(set_tech_DES_ES)=1);
set_pssOH(set_side,set_tech_DES_TS)=YES$(par_OH_DES_TS_side(set_side,set_tech_DES_TS)=1 and par_X_pss_model(set_tech_DES_TS)=1);
set_pssOH(set_side,set_tech_DES_CS)=YES$(par_OH_DES_CS_side(set_side,set_tech_DES_CS)=1 and par_X_pss_model(set_tech_DES_CS)=1);
set_pssOH(set_side,set_tech_DES_NGB)=YES$(par_OH_DES_NGB_side(set_side,set_tech_DES_NGB)=1 and par_X_pss_model(set_tech_DES_NGB)=1);
set_pssOH(set_side,set_tech_DES_EB)=YES$(par_OH_DES_EB_side(set_side,set_tech_DES_EB)=1 and par_X_pss_model(set_tech_DES_EB)=1);
set_pssOH(set_side,set_tech_DES_PV)=YES$(par_OH_DES_PV_side(set_side,set_tech_DES_PV)=1 and par_X_pss_model(set_tech_DES_PV)=1);
set_pssOH(set_side,set_tech_DES_HP)=YES$(par_OH_DES_HP_side(set_side,set_tech_DES_HP)=1 and par_X_pss_model(set_tech_DES_HP)=1);
set_pssOH(set_side,set_tech_DES_CHP)=YES$(par_OH_DES_CHP_side(set_side,set_tech_DES_CHP)=1 and par_X_pss_model(set_tech_DES_CHP)=1);
set_pssOH(set_side,set_tech_DES_ST)=YES$(par_OH_DES_ST_side(set_side,set_tech_DES_ST)=1 and par_X_pss_model(set_tech_DES_ST)=1);
set_pssOH(set_side,set_tech_DES_CR)=YES$(par_OH_DES_CR_side(set_side,set_tech_DES_CR)=1 and par_X_pss_model(set_tech_DES_CR)=1);
set_pssOH(set_side,set_tech_DES_SC)=YES$(par_OH_DES_SC_side(set_side,set_tech_DES_SC)=1 and par_X_pss_model(set_tech_DES_SC)=1);
set_pssOH(set_side,set_tech_DES_CLS)=YES$(par_OH_DES_CLS_side(set_side,set_tech_DES_CLS)=1 and par_X_pss_model(set_tech_DES_CLS)=1);
set_pssOH(set_side,set_tech_DES_HS)=YES$(par_OH_DES_HS_side(set_side,set_tech_DES_HS)=1 and par_X_pss_model(set_tech_DES_HS)=1);
set_pssOH(set_side,set_tech_DES_FC)=YES$(par_OH_DES_FC_side(set_side,set_tech_DES_FC)=1 and par_X_pss_model(set_tech_DES_FC)=1);
set_pssOH(set_side,set_tech_DES_EY)=YES$(par_OH_DES_EY_side(set_side,set_tech_DES_EY)=1 and par_X_pss_model(set_tech_DES_EY)=1);
set_pssOH(set_side,set_tech_DES_GS)=YES$(par_OH_DES_GS_side(set_side,set_tech_DES_GS)=1 and par_X_pss_model(set_tech_DES_GS)=1);


set_pssOH(set_side,set_load_DS_E)=YES$(par_OH_DS_EL_side(set_side,set_load_DS_E)=1 and par_X_pss_model(set_load_DS_E)=1);
set_pssOH(set_side,set_load_DS_W)=YES$(par_OH_DS_WL_side(set_side,set_load_DS_W)=1 and par_X_pss_model(set_load_DS_W)=1);
set_pssOH(set_side,set_load_DS_G)=YES$(par_OH_DS_GL_side(set_side,set_load_DS_G)=1 and par_X_pss_model(set_load_DS_G)=1);
set_pssOH(set_side,set_load_DS_C)=YES$(par_OH_DS_CL_side(set_side,set_load_DS_C)=1 and par_X_pss_model(set_load_DS_C)=1);
set_pssOH(set_side,set_load_DS_H)=YES$(par_OH_DS_HL_side(set_side,set_load_DS_H)=1 and par_X_pss_model(set_load_DS_H)=1);
set_pssOH(set_side,set_load_DS_CL)=YES$(par_OH_DS_CLL_side(set_side,set_load_DS_CL)=1 and par_X_pss_model(set_load_DS_CL)=1);

set_pssOH(set_side_orga,set_tech_SS_WT)=YES$(par_OH_SS_WT_side(set_side_orga,set_tech_SS_WT)=1 and (par_X_pss_schedule(set_tech_SS_WT) or par_X_pss_model(set_tech_SS_WT))=1);
set_pssOH(set_side_orga,set_tech_SS_CHP)=YES$(par_OH_SS_CHP_side(set_side_orga,set_tech_SS_CHP)=1 and (par_X_pss_schedule(set_tech_SS_CHP)=1 or par_X_pss_model(set_tech_SS_CHP))=1);
set_pssOH(set_side_orga,set_tech_SS_PHS)=YES$(par_OH_SS_PHS_side(set_side_orga,set_tech_SS_PHS)=1 and (par_X_pss_schedule(set_tech_SS_PHS)=1 or par_X_pss_model(set_tech_SS_PHS))=1);
set_pssOH(set_side_orga,set_tech_SS_RH)=YES$(par_OH_SS_RH_side(set_side_orga,set_tech_SS_RH)=1 and (par_X_pss_schedule(set_tech_SS_RH)=1 or par_X_pss_model(set_tech_SS_RH))=1);
set_pssOH(set_side_orga,set_tech_SS_PV)=YES$(par_OH_SS_PV_side(set_side_orga,set_tech_SS_PV)=1 and (par_X_pss_schedule(set_tech_SS_PV)=1 or par_X_pss_model(set_tech_SS_PV))=1);
set_pssOH(set_side_orga,set_tech_SS_RC)=YES$(par_OH_SS_RC_side(set_side_orga,set_tech_SS_RC)=1 and (par_X_pss_schedule(set_tech_SS_RC)=1 or par_X_pss_model(set_tech_SS_RC))=1);
set_pssOH(set_side_orga,set_tech_SS_TPS)=YES$(par_OH_SS_TPS_side(set_side_orga,set_tech_SS_TPS)=1 and (par_X_pss_schedule(set_tech_SS_TPS)=1 or par_X_pss_model(set_tech_SS_TPS))=1);
*set_pssOH(set_side,set_tech_SS_BGP)=YES$(par_OH_SS_BGP_side(set_side,set_tech_SS_BGP)=1 and (par_X_pss_schedule(set_tech_SS_BGP)=1 or par_X_pss_model(set_tech_SS_BGP))=1);
*set_pssOH(set_side_orga,set_tech_SS_ETB)=YES$(par_OH_SS_ETB_side(set_side_orga,set_tech_SS_ETB)=1 and (par_X_pss_schedule(set_tech_SS_ETB)=1 or par_X_pss_model(set_tech_SS_ETB))=1);
*set_pssOH(set_side_orga,set_tech_SS_PLB)=YES$(par_OH_SS_PLB_side(set_side_orga,set_tech_SS_PLB)=1 and (par_X_pss_schedule(set_tech_SS_PLB)=1 or par_X_pss_model(set_tech_SS_PLB))=1);
set_pssOH(set_side_orga,set_tech_SS_TC)=YES$(par_OH_SS_TC_side(set_side_orga,set_tech_SS_TC)=1 and (par_X_pss_schedule(set_tech_SS_TC)=1 or par_X_pss_model(set_tech_SS_TC))=1);
set_pssOH(set_side_orga,set_tech_SS_FC)=YES$(par_OH_SS_FC_side(set_side_orga,set_tech_SS_FC)=1 and (par_X_pss_schedule(set_tech_SS_FC)=1 or par_X_pss_model(set_tech_SS_FC))=1);
set_pssOH(set_side_orga,set_tech_SS_EY)=YES$(par_OH_SS_EY_side(set_side_orga,set_tech_SS_EY)=1 and (par_X_pss_schedule(set_tech_SS_EY)=1 or par_X_pss_model(set_tech_SS_EY))=1);
set_pssOH(set_side_orga,set_tech_SS_MT)=YES$(par_OH_SS_MT_side(set_side_orga,set_tech_SS_MT)=1 and (par_X_pss_schedule(set_tech_SS_MT)=1 or par_X_pss_model(set_tech_SS_MT))=1);

set_pssOH(set_side_orga,set_grid_NS)=YES$(par_OH_NS_grid_side(set_side_orga,set_grid_NS)=1);
set_pssOH(set_side_orga,set_market_MS)=YES$(par_OH_MS_market_side(set_side_orga,set_market_MS)=1);
*set_pssOH(set_side_orga,'RGrid')=YES$(par_OH_MS_market_side(set_side_orga,'PTRMarket')=1);
*set_pssOH(set_side_orga,'RGrid')=YES$(par_OH_MS_market_side(set_side_orga,'PSRMarket')=1);
*set_pssOH(set_side_orga,'RGrid')=YES$(par_OH_MS_market_side(set_side_orga,'PPRMarket')=1);
set_pssOH(set_side_orga,'PRPool')=YES$(par_OH_NS_grid_side(set_side_orga,'RGrid')=1 and sum((set_fromPss,set_sector)$set_energyLink(set_sector,set_fromPss,'PRPool'),1)>0);
set_pssOH(set_side_orga,'SRPool')=YES$(par_OH_NS_grid_side(set_side_orga,'RGrid')=1 and sum((set_fromPss,set_sector)$set_energyLink(set_sector,set_fromPss,'SRPool'),1)>0);
set_pssOH(set_side_orga,'TRPool')=YES$(par_OH_NS_grid_side(set_side_orga,'RGrid')=1 and sum((set_fromPss,set_sector)$set_energyLink(set_sector,set_fromPss,'TRPool'),1)>0);

$ontext

set_pssOH(set_side,'PRPool')=NO;
set_pssOH(set_side,'SRPool')=NO;
set_pssOH(set_side,'TRPool')=NO;
set_pssOH(set_side,'RGrid')=NO;
set_pssOH(set_side,'NPRMarket')=NO;
set_pssOH(set_side,'PPRMarket')=NO;
set_pssOH(set_side,'NSRMarket')=NO;
set_pssOH(set_side,'PSRMarket')=NO;
set_pssOH(set_side,'NTRMarket')=NO;
set_pssOH(set_side,'PTRMarket')=NO;

set_pssOH(set_side_cust,'PRPool')=YES$(SUM(set_tech_DES_EY$set_pssOH(set_side_cust,set_tech_DES_EY),1)>0 and sum((set_fromPss,set_sector)$set_energyLink(set_sector,set_fromPss,'PRPool'),1)>0);
set_pssOH(set_side_cust,'SRPool')=YES$(SUM(set_tech_DES_EY$set_pssOH(set_side_cust,set_tech_DES_EY),1)>0 and sum((set_fromPss,set_sector)$set_energyLink(set_sector,set_fromPss,'SRPool'),1)>0);
set_pssOH(set_side_cust,'TRPool')=YES$(SUM(set_tech_DES_EY$set_pssOH(set_side_cust,set_tech_DES_EY),1)>0 and sum((set_fromPss,set_sector)$set_energyLink(set_sector,set_fromPss,'TRPool'),1)>0);
set_pssOH(set_side_cust,'RGrid')=YES$(SUM(set_tech_DES_EY$set_pssOH(set_side_cust,set_tech_DES_EY),1)>0);
set_pssOH(set_side_cust,'NPRMarket')=YES$(SUM(set_tech_DES_EY$set_pssOH(set_side_cust,set_tech_DES_EY),1)>0);
set_pssOH(set_side_cust,'PPRMarket')=YES$(SUM(set_tech_DES_EY$set_pssOH(set_side_cust,set_tech_DES_EY),1)>0);
set_pssOH(set_side_cust,'NSRMarket')=YES$(SUM(set_tech_DES_EY$set_pssOH(set_side_cust,set_tech_DES_EY),1)>0);
set_pssOH(set_side_cust,'PSRMarket')=YES$(SUM(set_tech_DES_EY$set_pssOH(set_side_cust,set_tech_DES_EY),1)>0);
set_pssOH(set_side_cust,'NTRMarket')=YES$(SUM(set_tech_DES_EY$set_pssOH(set_side_cust,set_tech_DES_EY),1)>0);
set_pssOH(set_side_cust,'PTRMarket')=YES$(SUM(set_tech_DES_EY$set_pssOH(set_side_cust,set_tech_DES_EY),1)>0);
$offtext

***-----------------------------------------------------------------------------
***optimizationhighness set_energyLink
***-----------------------------------------------------------------------------
set_energyLinkOH(set_side,set_sector,set_fromPss,set_toPss)$(set_pssOH(set_side,set_fromPss)$set_energyLink(set_sector,set_fromPss, set_toPss))=yes;
set_energyLinkOH(set_side,set_sector,set_fromPss,set_toPss)$(set_pssOH(set_side,set_toPss)$set_energyLink(set_sector,set_fromPss, set_toPss))=yes;

***-----------------------------------------------------------------------------
***optimizationhighness set_power
***-----------------------------------------------------------------------------
set_powerOH(set_side,set_power_E)$(par_OH_DS_powerE_side(set_side,set_power_E)=1)=yes;
set_powerOH(set_side,set_power_W)$(par_OH_DS_powerW_side(set_side,set_power_W)=1)=yes;
set_powerOH(set_side,set_power_G)$(par_OH_DS_powerG_side(set_side,set_power_G)=1)=yes;
set_powerOH(set_side,set_power_H)$(par_OH_DS_powerH_side(set_side,set_power_H)=1)=yes;
set_powerOH('NS',set_power_E_MS)=yes;
