***-----------------------------------------------------------------------------
***Sektorenzuweisung Kapitalkosten
***-----------------------------------------------------------------------------
set_pssSector('E',set_load_DS_E)=YES$(SUM(set_fromPss$set_energyLink('E',set_fromPss,set_load_DS_E),1)>0);
set_pssSector('E',set_tech_DES_ES)=YES$(SUM(set_fromPss$set_energyLink('E',set_fromPss,set_tech_DES_ES),1)>0);
set_pssSector('E',set_tech_DES_ES)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_DES_ES,set_toPss),1)>0);
set_pssSector('E',set_tech_DES_PV)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_DES_PV,set_toPss),1)>0);
set_pssSector('E',set_tech_DES_EB)=YES$(SUM(set_fromPss$set_energyLink('E',set_fromPss,set_tech_DES_EB),1)>0);
set_pssSector('E',set_tech_DES_HP)=YES$(SUM(set_fromPss$set_energyLink('E',set_fromPss,set_tech_DES_HP),1)>0);
set_pssSector('E',set_tech_DES_CHP)=YES$(SUM(set_fromPss$set_energyLink('E',set_fromPss,set_tech_DES_CHP),1)>0);
set_pssSector('E',set_tech_DES_CR)=YES$(SUM(set_fromPss$set_energyLink('E',set_fromPss,set_tech_DES_CR),1)>0);
*set_pssSector('E',set_tech_DES_EY)=YES$(SUM(set_fromPss$set_energyLink('E',set_fromPss,set_tech_DES_EY),1)>0);
set_pssSector('E',set_tech_DES_FC)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_DES_FC,set_toPss),1)>0);

set_pssSector('E',set_tech_SS_PV)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_PV,set_toPss),1)>0 and (par_X_pss_model(set_tech_SS_PV) or par_X_pss_schedule(set_tech_SS_PV))>0);
set_pssSector('E',set_tech_SS_WT)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_WT,set_toPss),1)>0 and (par_X_pss_model(set_tech_SS_WT) or par_X_pss_schedule(set_tech_SS_WT))>0);

set_pssSector('W',set_load_DS_W)=YES$(SUM(set_fromPss$set_energyLink('W',set_fromPss,set_load_DS_W),1)>0);
set_pssSector('W',set_tech_DES_TS)=YES$(SUM(set_fromPss$set_energyLink('W',set_fromPss,set_tech_DES_TS),1)>0);
set_pssSector('W',set_tech_DES_TS)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_DES_TS,set_toPSS),1)>0);
set_pssSector('W',set_tech_DES_EB)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_DES_EB,set_toPss),1)>0);
set_pssSector('W',set_tech_DES_HP)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_DES_HP,set_toPss),1)>0);
set_pssSector('W',set_tech_DES_CHP)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_DES_CHP,set_toPss),1)>0);
set_pssSector('W',set_tech_DES_NGB)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_DES_NGB,set_toPss),1)>0);
set_pssSector('W',set_tech_DES_SC)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_DES_SC,set_toPss),1)>0);

set_pssSector('C',set_load_DS_C)=YES$(SUM(set_fromPss$set_energyLink('C',set_fromPss,set_load_DS_C),1)>0);
set_pssSector('C',set_tech_DES_CS)=YES$(SUM(set_fromPss$set_energyLink('C',set_fromPss,set_tech_DES_CS),1)>0);
set_pssSector('C',set_tech_DES_CS)=YES$(SUM(set_toPss$set_energyLink('C',set_tech_DES_CS,set_toPSS),1)>0);
set_pssSector('C',set_tech_DES_CR)=YES$(SUM(set_toPss$set_energyLink('C',set_tech_DES_CR,set_toPss),1)>0);
set_pssSector('C',set_tech_DES_SC)=YES$(SUM(set_toPss$set_energyLink('C',set_tech_DES_SC,set_toPss),1)>0);

set_pssSector('G',set_load_DS_G)=YES$(SUM(set_fromPss$set_energyLink('G',set_fromPss,set_load_DS_G),1)>0);
set_pssSector('G',set_tech_DES_NGB)=YES$(SUM(set_fromPss$set_energyLink('G',set_fromPss,set_tech_DES_NGB),1)>0);
set_pssSector('G',set_tech_DES_GS)=YES$(SUM(set_fromPss$set_energyLink('G',set_fromPss,set_tech_DES_GS),1)>0);
set_pssSector('G',set_tech_DES_GS)=YES$(SUM(set_toPss$set_energyLink('G',set_tech_DES_GS,set_toPss),1)>0);

set_pssSector('H',set_load_DS_H)=YES$(SUM(set_fromPss$set_energyLink('H',set_fromPss,set_load_DS_H),1)>0);
set_pssSector('H',set_tech_DES_EY)=YES$(SUM(set_toPss$set_energyLink('H',set_tech_DES_EY,set_toPss),1)>0);
set_pssSector('H',set_tech_DES_HS)=YES$(SUM(set_fromPss$set_energyLink('H',set_fromPss,set_tech_DES_HS),1)>0);
set_pssSector('H',set_tech_DES_HS)=YES$(SUM(set_toPss$set_energyLink('H',set_tech_DES_HS,set_toPss),1)>0);
set_pssSector('H',set_tech_DES_FC)=YES$(SUM(set_fromPss$set_energyLink('H',set_fromPss,set_tech_DES_FC),1)>0);

set_pssSector('CL',set_load_DS_CL)=YES$(SUM(set_fromPss$set_energyLink('CL',set_fromPss,set_load_DS_CL),1)>0);
set_pssSector('CL',set_tech_DES_CLS)=YES$(SUM(set_fromPss$set_energyLink('CL',set_fromPss,set_tech_DES_CLS),1)>0);
set_pssSector('CL',set_tech_DES_EY)=YES$(SUM(set_toPss$set_energyLink('CL',set_tech_DES_EY,set_toPss),1)>0);

set_pssSector('E',set_tech_SS_WT)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_WT,set_toPss),1)>0);
set_pssSector('E',set_tech_SS_PV)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_PV,set_toPss),1)>0);
set_pssSector('E',set_tech_SS_CHP)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_CHP,set_toPss),1)>0);
set_pssSector('E',set_tech_SS_PHS)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_PHS,set_toPss),1)>0);
set_pssSector('E',set_tech_SS_RH)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_RH,set_toPss),1)>0);
set_pssSector('E',set_tech_SS_RC)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_RC,set_toPss),1)>0);
set_pssSector('E',set_tech_SS_TPS)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_TPS,set_toPss),1)>0);
*set_pssSector('E',set_tech_SS_BGP)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_BGP,set_toPss),1)>0);
set_pssSector('E',set_tech_SS_TC)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_TC,set_toPss),1)>0);
set_pssSector('E',set_tech_SS_ETB)=YES$(SUM(set_fromPss$set_energyLink('E',set_fromPss,set_tech_SS_ETB),1)>0);
set_pssSector('E',set_tech_SS_EY)=YES$(SUM(set_fromPss$set_energyLink('E',set_fromPss,set_tech_SS_EY),1)>0);
set_pssSector('E',set_tech_SS_FC)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_FC,set_toPss),1)>0);

set_pssSector('W',set_tech_SS_CHP)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_SS_CHP,set_toPss),1)>0);
set_pssSector('W',set_tech_SS_RC)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_SS_RC,set_toPss),1)>0);
*set_pssSector('W',set_tech_SS_BGP)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_SS_BGP,set_toPss),1)>0);
set_pssSector('W',set_tech_SS_ETB)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_SS_ETB,set_toPss),1)>0);
set_pssSector('W',set_tech_SS_PLB)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_SS_PLB,set_toPss),1)>0);
set_pssSector('W',set_tech_SS_TC)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_SS_TC,set_toPss),1)>0);
set_pssSector('W',set_tech_SS_ETB)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_SS_ETB,set_toPss),1)>0);

set_pssSector('G',set_tech_SS_MT)=YES$(SUM(set_toPss$set_energyLink('G',set_tech_SS_MT,set_toPss),1)>0);

set_pssSector('H',set_tech_SS_EY)=YES$(SUM(set_toPss$set_energyLink('H',set_tech_SS_EY,set_toPss),1)>0);
set_pssSector('H',set_tech_SS_FC)=YES$(SUM(set_fromPss$set_energyLink('H',set_fromPss,set_tech_SS_FC),1)>0);
set_pssSector('H',set_tech_SS_MT)=YES$(SUM(set_fromPss$set_energyLink('H',set_fromPss,set_tech_SS_MT),1)>0);

***-----------------------------------------------------------------------------
***Sektorenzuweisung Quotient
***-----------------------------------------------------------------------------
*Anzahl Sektorenzugehörigkeit
PARAMETER par_N_pss_sectors(set_pss);
PARAMETER par_Q_pss_sectors(set_pss);
PARAMETER par_SOH_pss_sector_var(set_ii,set_sector,set_pss);
par_N_pss_sectors(set_pss)=1;
par_N_pss_sectors(set_pss)=SUM(set_sector$set_pssSector(set_sector,set_pss),1);
par_Q_pss_sectors(set_pss)=SUM(set_sector,par_SOH_pss_sector(set_sector,set_pss));
*par_SOH_pss_sector_var(set_ii,set_sector,set_pss)=1;

par_N_pss_sectors(set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1) = 1;
par_N_pss_sectors(set_tech_DES_PV)$(par_X_BM_NaS_DES_PV(set_tech_DES_PV)=1) = 1;
par_N_pss_sectors(set_load_DS_E)$(par_X_BM_NaS_DS_E(set_load_DS_E)=1) = 1;
par_N_pss_sectors(set_tech_DES_PV)$(par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1) = 1;
par_N_pss_sectors(set_tech_DES_HP)$(par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)=1) = 2;
par_N_pss_sectors(set_load_DS_E)$(par_X_BM_PVdirect_DS_E(set_load_DS_E)=1) = 1;
par_N_pss_sectors(set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1)= 1;
par_N_pss_sectors(set_tech_DES_PV)$(par_X_BM_Sonnentank_DES_PV(set_tech_DES_PV)=1)= 1;
par_N_pss_sectors(set_load_DS_E)$(par_X_BM_Sonnentank_DS_E(set_load_DS_E)=1)= 1;

par_SOH_pss_sector(set_sector,set_pss)$(set_pssSector(set_sector,set_pss) AND par_Q_pss_sectors(set_pss)=0)=1/par_N_pss_sectors(set_pss);

***-----------------------------------------------------------------------------
***Sektorenzuweisung Primärenergie
***-----------------------------------------------------------------------------
SET set_primaryenergylink(set_sector,set_pss);
set_primaryenergylink(set_sector,set_pss)=NO;
set_primaryenergylink('G',set_tech_DES_CHP)=YES$(SUM(set_fromPss$set_energyLink('G',set_fromPss,set_tech_DES_CHP),1)>0);
set_primaryenergylink('O',set_tech_DES_CHP)=YES$(SUM(set_fromPss$set_energyLink('O',set_fromPss,set_tech_DES_CHP),1)>0);
set_primaryenergylink('B',set_tech_DES_CHP)=YES$(SUM(set_fromPss$set_energyLink('B',set_fromPss,set_tech_DES_CHP),1)>0);
set_primaryenergylink('L',set_tech_DES_CHP)=YES$(SUM(set_fromPss$set_energyLink('L',set_fromPss,set_tech_DES_CHP),1)>0);
set_primaryenergylink('HC',set_tech_DES_CHP)=YES$(SUM(set_fromPss$set_energyLink('HC',set_fromPss,set_tech_DES_CHP),1)>0);

set_primaryenergylink('G',set_tech_DES_NGB)=YES$(SUM(set_fromPss$set_energyLink('G',set_fromPss,set_tech_DES_NGB),1)>0);
set_primaryenergylink('O',set_tech_DES_NGB)=YES$(SUM(set_fromPss$set_energyLink('O',set_fromPss,set_tech_DES_NGB),1)>0);

set_primaryenergylink('W',set_tech_DES_CR)=YES$(SUM(set_fromPss$set_energyLink('W',set_fromPss,set_tech_DES_CR),1)>0);
set_primaryenergylink('E',set_tech_DES_CR)=YES$(SUM(set_fromPss$set_energyLink('E',set_fromPss,set_tech_DES_CR),1)>0);

set_primaryenergylink('G',set_tech_SS_CHP)=YES$(SUM(set_fromPss$set_energyLink('G',set_fromPss,set_tech_SS_CHP),1)>0);
set_primaryenergylink('O',set_tech_SS_CHP)=YES$(SUM(set_fromPss$set_energyLink('O',set_fromPss,set_tech_SS_CHP),1)>0);
set_primaryenergylink('B',set_tech_SS_CHP)=YES$(SUM(set_fromPss$set_energyLink('B',set_fromPss,set_tech_SS_CHP),1)>0);
set_primaryenergylink('HC',set_tech_SS_CHP)=YES$(SUM(set_fromPss$set_energyLink('HC',set_fromPss,set_tech_SS_CHP),1)>0);
set_primaryenergylink('L',set_tech_SS_CHP)=YES$(SUM(set_fromPss$set_energyLink('L',set_fromPss,set_tech_SS_CHP),1)>0);

set_primaryenergylink('G',set_tech_SS_TPS)=YES$(SUM(set_fromPss$set_energyLink('G',set_fromPss,set_tech_SS_TPS),1)>0);
set_primaryenergylink('O',set_tech_SS_TPS)=YES$(SUM(set_fromPss$set_energyLink('O',set_fromPss,set_tech_SS_TPS),1)>0);
set_primaryenergylink('B',set_tech_SS_TPS)=YES$(SUM(set_fromPss$set_energyLink('B',set_fromPss,set_tech_SS_TPS),1)>0);
set_primaryenergylink('HC',set_tech_SS_TPS)=YES$(SUM(set_fromPss$set_energyLink('HC',set_fromPss,set_tech_SS_TPS),1)>0);
set_primaryenergylink('L',set_tech_SS_TPS)=YES$(SUM(set_fromPss$set_energyLink('L',set_fromPss,set_tech_SS_TPS),1)>0);

set_primaryenergylink('NR','NPRMarket')=YES$(SUM(set_fromPss$set_energyLink('NR',set_fromPss,'NPRMarket'),1)>0);
set_primaryenergylink('NR','NSRMarket')=YES$(SUM(set_fromPss$set_energyLink('NR',set_fromPss,'NSRMarket'),1)>0);
set_primaryenergylink('NR','NTRMarket')=YES$(SUM(set_fromPss$set_energyLink('NR',set_fromPss,'NTRMarket'),1)>0);

set_primaryenergylink('PR','NPRMarket')=YES$(SUM(set_fromPss$set_energyLink('PR',set_fromPss,'PPRMarket'),1)>0);
set_primaryenergylink('PR','NSRMarket')=YES$(SUM(set_fromPss$set_energyLink('PR',set_fromPss,'PSRMarket'),1)>0);
set_primaryenergylink('PR','NTRMarket')=YES$(SUM(set_fromPss$set_energyLink('PR',set_fromPss,'PTRMarket'),1)>0);

***-----------------------------------------------------------------------------
***Sektorenzuweisung Sekundärenergie
***-----------------------------------------------------------------------------
SET set_secondaryenergylink(set_sector,set_pss);
set_secondaryenergylink(set_sector,set_pss)=NO;

set_secondaryenergylink('W',set_tech_DES_NGB)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_DES_NGB,set_toPss),1)>0);
set_secondaryenergylink('H',set_tech_DES_NGB)=YES$(SUM(set_toPss$set_energyLink('H',set_tech_DES_NGB,set_toPss),1)>0);

set_secondaryenergylink('CL',set_tech_DES_EY)=YES$(SUM(set_toPss$set_energyLink('CL',set_tech_DES_EY,set_toPss),1)>0);
set_secondaryenergylink('H',set_tech_DES_EY)=YES$(SUM(set_toPss$set_energyLink('H',set_tech_DES_EY,set_toPss),1)>0);



***-----------------------------------------------------------------------------
***Sektorenzuweisung Optimierungshoheit
***-----------------------------------------------------------------------------
set_pssOHSector('E',set_side,set_load_DS_E)=YES$(SUM(set_fromPss$set_energyLink('E',set_fromPss,set_load_DS_E),1)>0 and set_pssOH(set_side,set_load_DS_E));
set_pssOHSector('E',set_side,set_tech_DES_ES)=YES$(SUM(set_fromPss$set_energyLink('E',set_fromPss,set_tech_DES_ES),1)>0  and set_pssOH(set_side,set_tech_DES_ES));
set_pssOHSector('E',set_side,set_tech_DES_ES)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_DES_ES,set_toPSS),1)>0  and set_pssOH(set_side,set_tech_DES_ES));
set_pssOHSector('E',set_side,set_tech_DES_PV)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_DES_PV,set_toPSS),1)>0  and set_pssOH(set_side,set_tech_DES_PV));
set_pssOHSector('E',set_side,set_tech_DES_EB)=YES$(SUM(set_fromPss$set_energyLink('E',set_fromPss,set_tech_DES_EB),1)>0  and set_pssOH(set_side,set_tech_DES_EB));
set_pssOHSector('E',set_side,set_tech_DES_HP)=YES$(SUM(set_fromPss$set_energyLink('E',set_fromPss,set_tech_DES_HP),1)>0  and set_pssOH(set_side,set_tech_DES_HP));
set_pssOHSector('E',set_side,set_tech_DES_CHP)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_DES_CHP,set_toPss),1)>0 and set_pssOH(set_side,set_tech_DES_CHP));
set_pssOHSector('E',set_side,set_tech_DES_FC)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_DES_FC,set_toPss),1)>0 and set_pssOH(set_side,set_tech_DES_FC));
set_pssOHSector('E',set_side,set_tech_DES_EY)=YES$(SUM(set_fromPss$set_energyLink('E',set_fromPss,set_tech_DES_EY),1)>0  and set_pssOH(set_side,set_tech_DES_EY));
set_pssOHSector('CL',set_side,set_tech_DES_EY)=YES$(SUM(set_toPss$set_energyLink('CL',set_tech_DES_EY,set_toPss),1)>0  and set_pssOH(set_side,set_tech_DES_EY));

set_pssOHSector('E',set_side,set_tech_SS_WT)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_WT,set_toPss),1)>0 and set_pssOH(set_side,set_tech_SS_WT));
set_pssOHSector('E',set_side,set_tech_SS_PV)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_PV,set_toPss),1)>0 and set_pssOH(set_side,set_tech_SS_PV));
set_pssOHSector('E',set_side,set_tech_SS_CHP)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_CHP,set_toPss),1)>0 and set_pssOH(set_side,set_tech_SS_CHP));
set_pssOHSector('E',set_side,set_tech_SS_PHS)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_PHS,set_toPss),1)>0 and set_pssOH(set_side,set_tech_SS_PHS));
set_pssOHSector('E',set_side,set_tech_SS_RH)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_RH,set_toPss),1)>0 and set_pssOH(set_side,set_tech_SS_RH));
set_pssOHSector('E',set_side,set_tech_SS_RC)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_RC,set_toPss),1)>0 and set_pssOH(set_side,set_tech_SS_RC));
set_pssOHSector('E',set_side,set_tech_SS_TPS)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_TPS,set_toPss),1)>0 and set_pssOH(set_side,set_tech_SS_TPS));
*set_pssOHSector('E',set_side,set_tech_SS_BGP)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_BGP,set_toPss),1)>0 and set_pssOH(set_side,set_tech_SS_BGP));
set_pssOHSector('E',set_side,set_tech_SS_TC)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_TC,set_toPss),1)>0 and set_pssOH(set_side,set_tech_SS_TC));
set_pssOHSector('E',set_side,set_tech_SS_ETB)=YES$(SUM(set_toPss$set_energyLink('E',set_tech_SS_ETB,set_toPss),1)>0 and set_pssOH(set_side,set_tech_SS_ETB));

set_pssOHSector('W',set_side,set_load_DS_W)=YES$(SUM(set_fromPss$set_energyLink('W',set_fromPss,set_load_DS_W),1)>0  and set_pssOH(set_side,set_load_DS_W));
set_pssOHSector('W',set_side,set_tech_DES_TS)=YES$(SUM(set_fromPss$set_energyLink('W',set_fromPss,set_tech_DES_TS),1)>0  and set_pssOH(set_side,set_tech_DES_TS));
set_pssOHSector('W',set_side,set_tech_DES_TS)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_DES_TS,set_toPSS),1)>0  and set_pssOH(set_side,set_tech_DES_TS));
set_pssOHSector('W',set_side,set_tech_DES_EB)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_DES_EB,set_toPss),1)>0  and set_pssOH(set_side,set_tech_DES_EB));
set_pssOHSector('W',set_side,set_tech_DES_HP)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_DES_HP,set_toPss),1)>0  and set_pssOH(set_side,set_tech_DES_HP));
set_pssOHSector('W',set_side,set_tech_DES_NGB)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_DES_NGB,set_toPss),1)>0  and set_pssOH(set_side,set_tech_DES_NGB));
set_pssOHSector('W',set_side,set_tech_DES_ST)=YES$(SUM(set_fromPss$set_energyLink('E',set_fromPss,set_tech_DES_ST),1)>0  and set_pssOH(set_side,set_tech_DES_ST));
set_pssOHSector('W',set_side,set_tech_DES_CHP)=YES$(SUM(set_fromPss$set_energyLink('E',set_fromPss,set_tech_DES_CHP),1)>0  and set_pssOH(set_side,set_tech_DES_CHP));

set_pssOHSector('W',set_side,set_tech_SS_CHP)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_SS_CHP,set_toPss),1)>0  and set_pssOH(set_side,set_tech_SS_CHP));
set_pssOHSector('W',set_side,set_tech_SS_RC)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_SS_RC,set_toPss),1)>0  and set_pssOH(set_side,set_tech_SS_RC));
set_pssOHSector('W',set_side,set_tech_SS_BGP)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_SS_BGP,set_toPss),1)>0  and set_pssOH(set_side,set_tech_SS_BGP));
set_pssOHSector('W',set_side,set_tech_SS_ETB)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_SS_ETB,set_toPss),1)>0  and set_pssOH(set_side,set_tech_SS_ETB));
*set_pssOHSector('W',set_side,set_tech_SS_PLB)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_SS_PLB,set_toPss),1)>0  and set_pssOH(set_side,set_tech_SS_PLB));
set_pssOHSector('W',set_side,set_tech_SS_TC)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_SS_TC,set_toPss),1)>0  and set_pssOH(set_side,set_tech_SS_TC));
set_pssOHSector('W',set_side,set_tech_SS_ETB)=YES$(SUM(set_toPss$set_energyLink('W',set_tech_SS_ETB,set_toPss),1)>0  and set_pssOH(set_side,set_tech_SS_ETB));

set_pssOHSector('G',set_side,set_tech_DES_NGB)=YES$(SUM(set_fromPss$set_energyLink('G',set_fromPss,set_tech_DES_NGB),1)>0  and set_pssOH(set_side,set_tech_DES_NGB));
set_pssOHSector('G',set_side,set_tech_DES_GS)=YES$(SUM(set_fromPss$set_energyLink('G',set_fromPss,set_tech_DES_GS),1)>0  and set_pssOH(set_side,set_tech_DES_GS));
set_pssOHSector('G',set_side,set_tech_DES_GS)=YES$(SUM(set_toPss$set_energyLink('G',set_tech_DES_GS,set_toPSS),1)>0  and set_pssOH(set_side,set_tech_DES_GS));
set_pssOHSector('G',set_side,set_tech_SS_MT)=YES$(SUM(set_toPss$set_energyLink('G',set_tech_SS_MT,set_toPSS),1)>0  and set_pssOH(set_side,set_tech_SS_MT));

set_pssOHSector('H',set_side,set_load_DS_H)=YES$(SUM(set_fromPss$set_energyLink('H',set_fromPss,set_load_DS_H),1)>0 and set_pssOH(set_side,set_load_DS_H));
set_pssOHSector('H',set_side,set_tech_DES_HS)=YES$(SUM(set_fromPss$set_energyLink('H',set_fromPss,set_tech_DES_HS),1)>0  and set_pssOH(set_side,set_tech_DES_HS));
set_pssOHSector('H',set_side,set_tech_DES_HS)=YES$(SUM(set_toPss$set_energyLink('H',set_tech_DES_HS,set_toPSS),1)>0  and set_pssOH(set_side,set_tech_DES_HS));
set_pssOHSector('H',set_side,set_tech_DES_FC)=YES$(SUM(set_fromPss$set_energyLink('H',set_fromPss,set_tech_DES_FC),1)>0  and set_pssOH(set_side,set_tech_DES_FC));
set_pssOHSector('H',set_side,set_tech_DES_EY)=YES$(SUM(set_toPss$set_energyLink('H',set_tech_DES_EY,set_toPSS),1)>0  and set_pssOH(set_side,set_tech_DES_EY));
set_pssOHSector('H',set_side,set_tech_SS_MT)=YES$(SUM(set_fromPss$set_energyLink('H',set_fromPss,set_tech_SS_MT),1)>0  and set_pssOH(set_side,set_tech_SS_MT));

set_powerSector('E',set_power_E) = YES;
set_powerSector('E',set_power_E_MS) = YES;
set_powerSector('W',set_power_W) = YES;
set_powerSector('G',set_power_G) = YES;
set_powerSector('H',set_power_H) = YES;
