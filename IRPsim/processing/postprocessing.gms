*Jahr
PARAMETER par_post_year;
par_post_year = sca_a + 2015;

*Stromspeicherkapazität
PARAMETER par_post_SOC_DES_ES_cap_avg;
par_post_SOC_DES_ES_cap_avg$(card(set_tech_DES_ES)>0)= sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES))/card(set_tech_DES_ES);

*Stromspeicherleistung
PARAMETER par_post_P_DES_ES_charge_avg;
par_post_P_DES_ES_charge_avg$(card(set_tech_DES_ES)>0)= sum(set_tech_DES_ES,par_P_DES_ES_charge_max(set_tech_DES_ES))/card(set_tech_DES_ES);

PARAMETER par_post_P_DES_ES_discharge_avg;
par_post_P_DES_ES_discharge_avg$(card(set_tech_DES_ES)>0)= sum(set_tech_DES_ES,par_P_DES_ES_discharge_max(set_tech_DES_ES))/card(set_tech_DES_ES);

*Photovoltaikfläche
PARAMETER par_post_A_DES_PV_avg;
par_post_A_DES_PV_avg$(card(set_tech_DES_PV)>0)= sum(set_tech_DES_PV,par_A_DES_PV(set_tech_DES_PV))/card(set_tech_DES_PV);

*Photovoltaikpeak
PARAMETER par_post_P_DES_PV_avg;
par_post_P_DES_PV_avg$(card(set_tech_DES_PV)>0)= sum(set_tech_DES_PV,par_A_DES_PV(set_tech_DES_PV))/card(set_tech_DES_PV)*sum(set_tech_DES_PV,par_Eta_DES_PV(set_tech_DES_PV))/card(set_tech_DES_PV);

*Wärmepumpe
PARAMETER par_post_Q_DES_HP_avg;
par_post_Q_DES_HP_avg$(card(set_tech_DES_HP)>0)= sum(set_tech_DES_HP,par_Q_DES_HP_max(set_tech_DES_HP))/card(set_tech_DES_HP);

*Gasboiler
PARAMETER par_post_Q_DES_NGB_avg;
par_post_Q_DES_NGB_avg$(card(set_tech_DES_NGB)>0)= sum(set_tech_DES_NGB,par_Q_DES_NGB_max(set_tech_DES_NGB))/card(set_tech_DES_NGB);

*Wärmespeicherkapazität
PARAMETER par_post_SOC_DES_TS_cap_avg;
par_post_SOC_DES_TS_cap_avg$(card(set_tech_DES_TS)>0)= sum(set_tech_DES_TS,par_SOC_DES_TS_cap(set_tech_DES_TS))/card(set_tech_DES_TS);

*Wärmespeicherleistung
PARAMETER par_post_Q_DES_TS_charge_avg;
par_post_Q_DES_TS_charge_avg$(card(set_tech_DES_TS)>0)= sum(set_tech_DES_TS,par_Q_DES_TS_charge_max(set_tech_DES_TS))/card(set_tech_DES_TS);

PARAMETER par_post_Q_DES_TS_discharge_avg;
par_post_Q_DES_TS_discharge_avg$(card(set_tech_DES_TS)>0)= sum(set_tech_DES_TS,par_Q_DES_TS_discharge_max(set_tech_DES_TS))/card(set_tech_DES_TS);

*Stromlast
PARAMETER par_post_L_DS_E_avg;
par_post_L_DS_E_avg$(card(set_load_DS_E)>0)= sum((set_load_DS_E,set_ii),par_L_DS_E(set_ii,set_load_DS_E))/card(set_load_DS_E);

*Lastverschiebung
PARAMETER par_post_DSM_DS_E_Cdown_avg;
par_post_DSM_DS_E_Cdown_avg$(card(set_load_DS_E)>0)= sum((set_load_DS_E),par_DSM_DS_E_Cdown(set_load_DS_E))/card(set_load_DS_E);

PARAMETER par_post_DSM_DS_E_Cup_avg;
par_post_DSM_DS_E_Cup_avg$(card(set_load_DS_E)>0)= sum((set_load_DS_E),par_DSM_DS_E_Cdown(set_load_DS_E))/card(set_load_DS_E);

PARAMETER par_post_DSM_DS_E_t_avg;
par_post_DSM_DS_E_t_avg$(card(set_load_DS_E)>0)= sum((set_load_DS_E),par_DSM_DS_E_t(set_load_DS_E))/card(set_load_DS_E);

*Wärmelast
PARAMETER par_post_L_DS_W_avg;
par_post_L_DS_W_avg$(card(set_load_DS_W)>0)= sum((set_load_DS_W,set_ii),par_L_DS_W(set_ii,set_load_DS_W))/card(set_load_DS_W);

*Kundenumsatz (abgezinst)
PARAMETER par_post_IuO_Sector_Cust_avg;
par_post_IuO_Sector_Cust_avg$(card(set_side_cust)>0) = (sum((set_ii,set_sector,set_side_cust),par_NPV_sector_timestep(set_ii,set_sector,set_side_cust)) / card(set_side_cust)) / (1+sca_i_DES)**sca_a;

*Kundenumsatz (abgezinst)
PARAMETER par_post_IuO_E_Cust_avg;
par_post_IuO_E_Cust_avg$(card(set_side_cust)>0) = (sum((set_ii,set_side_cust),par_NPV_sector_timestep(set_ii,'E',set_side_cust)) / card(set_side_cust)) / (1+sca_i_DES)**sca_a;

*Kundenumsatz (abgezinst)
PARAMETER par_post_IuO_W_Cust_avg;
par_post_IuO_W_Cust_avg$(card(set_side_cust)>0) = (sum((set_ii,set_side_cust),par_NPV_sector_timestep(set_ii,'W',set_side_cust)) / card(set_side_cust)) / (1+sca_i_DES)**sca_a;

*Kundenumsatz (abgezinst)
PARAMETER par_post_IuO_G_Cust_avg;
par_post_IuO_G_Cust_avg$(card(set_side_cust)>0) = (sum((set_ii,set_side_cust),par_NPV_sector_timestep(set_ii,'G',set_side_cust)) / card(set_side_cust)) / (1+sca_i_DES)**sca_a;

*Kundenumsatz (abgezinst)
PARAMETER par_post_IuO_PR_Cust_avg;
par_post_IuO_PR_Cust_avg$(card(set_side_cust)>0) = (sum((set_ii,set_side_cust),par_NPV_sector_timestep(set_ii,'PR',set_side_cust)) / card(set_side_cust)) / (1+sca_i_DES)**sca_a;

*Kundenumsatz (abgezinst)
PARAMETER par_post_IuO_NR_Cust_avg;
par_post_IuO_NR_Cust_avg$(card(set_side_cust)>0) = (sum((set_ii,set_side_cust),par_NPV_sector_timestep(set_ii,'NR',set_side_cust)) / card(set_side_cust)) / (1+sca_i_DES)**sca_a;

*Kundenumsatz (abgezinst)
PARAMETER par_post_IuO_C_Cust_avg;
par_post_IuO_C_Cust_avg$(card(set_side_cust)>0) = (sum((set_ii,set_side_cust),par_NPV_sector_timestep(set_ii,'C',set_side_cust)) / card(set_side_cust)) / (1+sca_i_DES)**sca_a;

*Vertriebsumsatz (abgezinst)
PARAMETER par_post_IuO_Sector_SMS_abs;
par_post_IuO_Sector_SMS_abs = sum((set_ii,set_sector),par_NPV_sector_timestep(set_ii,set_sector,'SMS')) / (1+sca_i_DES)**sca_a;

PARAMETER par_post_IuO_Sector_SMS_avg;
par_post_IuO_Sector_SMS_avg = sum((set_ii,set_sector),par_NPV_sector_timestep(set_ii,set_sector,'SMS')) / card(set_side_cust) / (1+sca_i_DES)**sca_a;

*Vertriebsumsatz (abgezinst)
PARAMETER par_post_IuO_E_SMS_abs;
par_post_IuO_E_SMS_abs = sum((set_ii),par_NPV_sector_timestep(set_ii,'E','SMS')) / (1+sca_i_DES)**sca_a;

PARAMETER par_post_IuO_E_SMS_avg;
par_post_IuO_E_SMS_avg = sum((set_ii),par_NPV_sector_timestep(set_ii,'E','SMS')) / card(set_side_cust) / (1+sca_i_DES)**sca_a;

*Vertriebsumsatz (abgezinst)
PARAMETER par_post_IuO_W_SMS_abs;
par_post_IuO_W_SMS_abs = sum((set_ii),par_NPV_sector_timestep(set_ii,'W','SMS')) / (1+sca_i_DES)**sca_a;

PARAMETER par_post_IuO_W_SMS_avg;
par_post_IuO_W_SMS_avg = sum((set_ii),par_NPV_sector_timestep(set_ii,'W','SMS')) / card(set_side_cust) / (1+sca_i_DES)**sca_a;

*Vertriebsumsatz (abgezinst)
PARAMETER par_post_IuO_G_SMS_abs;
par_post_IuO_G_SMS_abs = sum((set_ii),par_NPV_sector_timestep(set_ii,'G','SMS')) / (1+sca_i_DES)**sca_a;

PARAMETER par_post_IuO_G_SMS_avg;
par_post_IuO_G_SMS_avg = sum((set_ii),par_NPV_sector_timestep(set_ii,'G','SMS')) / card(set_side_cust) / (1+sca_i_DES)**sca_a;

*Vertriebsumsatz (abgezinst)
PARAMETER par_post_IuO_PR_SMS_abs;
par_post_IuO_PR_SMS_abs = sum((set_ii),par_NPV_sector_timestep(set_ii,'PR','SMS')) / (1+sca_i_DES)**sca_a;

PARAMETER par_post_IuO_PR_SMS_avg;
par_post_IuO_PR_SMS_avg = sum((set_ii),par_NPV_sector_timestep(set_ii,'PR','SMS')) / card(set_side_cust) / (1+sca_i_DES)**sca_a;

*Vertriebsumsatz (abgezinst)
PARAMETER par_post_IuO_NR_SMS_abs;
par_post_IuO_NR_SMS_abs = sum((set_ii),par_NPV_sector_timestep(set_ii,'NR','SMS')) / (1+sca_i_DES)**sca_a;

PARAMETER par_post_IuO_NR_SMS_avg;
par_post_IuO_NR_SMS_avg = sum((set_ii),par_NPV_sector_timestep(set_ii,'NR','SMS')) / card(set_side_cust) / (1+sca_i_DES)**sca_a;

*Vertriebsumsatz (abgezinst)
PARAMETER par_post_IuO_C_SMS_abs;
par_post_IuO_C_SMS_abs = sum((set_ii),par_NPV_sector_timestep(set_ii,'C','SMS')) / (1+sca_i_DES)**sca_a;

PARAMETER par_post_IuO_C_SMS_avg;
par_post_IuO_C_SMS_avg = sum((set_ii),par_NPV_sector_timestep(set_ii,'C','SMS')) / card(set_side_cust) / (1+sca_i_DES)**sca_a;

*Netzumsatz (abgezinst)
PARAMETER par_post_IuO_Sector_NS_abs;
par_post_IuO_Sector_NS_abs = sum((set_ii,set_sector),par_NPV_sector_timestep(set_ii,set_sector,'NS')) / (1+sca_i_DES)**sca_a;

PARAMETER par_post_IuO_Sector_NS_avg;
par_post_IuO_Sector_NS_avg = sum((set_ii,set_sector),par_NPV_sector_timestep(set_ii,set_sector,'NS')) / card(set_side_cust) / (1+sca_i_DES)**sca_a;

*Speicherkosten (abgezinst)
PARAMETER par_post_CashFlow_ES_sum;
par_post_CashFlow_ES_sum=sum((set_tech_DES_ES,set_cashFlow_year,set_fromSide,set_toSide),par_cashFlow_year(set_tech_DES_ES,set_cashFlow_year,set_fromSide,set_toSide)) / (1+sca_i_DES)**sca_a;

PARAMETER par_post_CashFlow_ES_avg;
par_post_CashFlow_ES_avg=sum((set_tech_DES_ES,set_cashFlow_year,set_fromSide,set_toSide),par_cashFlow_year(set_tech_DES_ES,set_cashFlow_year,set_fromSide,set_toSide)) / card(set_tech_DES_ES) / (1+sca_i_DES)**sca_a;

PARAMETER par_post_CashFlow_HES_1800;
par_post_CashFlow_HES_1800=((1800*par_post_SOC_DES_ES_cap_avg*1000)*((((1 + sca_i_DES)**20)*sca_i_DES) / (((1 + sca_i_DES)**20)-1)))/(1+sca_i_DES)**sca_a;

PARAMETER par_post_CashFlow_CES_900;
par_post_CashFlow_CES_900=((900*par_post_SOC_DES_ES_cap_avg*1000)*((((1 + sca_i_DES)**20)*sca_i_DES) / (((1 + sca_i_DES)**20)-1)))/(1+sca_i_DES)**sca_a;

*PV-Kosten (abgezinst)
PARAMETER par_post_CashFlow_PV_avg;
par_post_CashFlow_PV_avg=sum((set_tech_DES_PV,set_cashFlow_year,set_fromSide,set_toSide),par_cashFlow_year(set_tech_DES_PV,set_cashFlow_year,set_fromSide,set_toSide)) / card(set_tech_DES_PV) / (1+sca_i_DES)**sca_a;

PARAMETER par_post_CashFlow_PV_1320;
par_post_CashFlow_PV_1320=((1320*par_post_P_DES_PV_avg)*((((1 + sca_i_DES)**20)*sca_i_DES) / (((1 + sca_i_DES)**20)-1)))/(1+sca_i_DES)**sca_a;

*HP-Kosten (abgezinst)
PARAMETER par_post_CashFlow_HP_avg;
par_post_CashFlow_HP_avg=sum((set_tech_DES_HP,set_cashFlow_year,set_fromSide,set_toSide),par_cashFlow_year(set_tech_DES_HP,set_cashFlow_year,set_fromSide,set_toSide)) / card(set_tech_DES_HP) / (1+sca_i_DES)**sca_a;

*NGB-Kosten (abgezinst)
PARAMETER par_post_CashFlow_NGB_avg;
par_post_CashFlow_NGB_avg=sum((set_tech_DES_NGB,set_cashFlow_year,set_fromSide,set_toSide),par_cashFlow_year(set_tech_DES_NGB,set_cashFlow_year,set_fromSide,set_toSide)) / card(set_tech_DES_NGB) / (1+sca_i_DES)**sca_a;

*TS-Kosten (abgezinst)
PARAMETER par_post_CashFlow_TS_avg;
par_post_CashFlow_TS_avg=sum((set_tech_DES_TS,set_cashFlow_year,set_fromSide,set_toSide),par_cashFlow_year(set_tech_DES_TS,set_cashFlow_year,set_fromSide,set_toSide)) / card(set_tech_DES_TS) / (1+sca_i_DES)**sca_a;

*Spotmarkthandel inkl. Abzinsung
PARAMETER par_post_IuO_Sonnentank_orga_spot_abs;
par_post_IuO_Sonnentank_orga_spot_abs=
((sum((set_ii),sum(set_tech_DES_ES,par_energyFlow_orga(set_ii,'E',set_tech_DES_ES,'EGrid'))*par_energyLinkTarif(set_ii,'MS','SMS','E','EGrid','EMarket')
- sum(set_tech_DES_ES,par_energyFlow_orga(set_ii,'E','EGrid',set_tech_DES_ES)*par_energyLinkTarif(set_ii,'SMS','MS','E','EMarket','EGrid'))))/card(set_tech_DES_ES)
)/(1+sca_i_DES)**sca_a;

PARAMETER par_post_IuO_Sonnentank_orga_spot_abs_avg;
par_post_IuO_Sonnentank_orga_spot_abs_avg=
((sum((set_ii),sum(set_tech_DES_ES,par_energyFlow_orga(set_ii,'E',set_tech_DES_ES,'EGrid'))*par_energyLinkTarif(set_ii,'MS','SMS','E','EGrid','EMarket')
- sum(set_tech_DES_ES,par_energyFlow_orga(set_ii,'E','EGrid',set_tech_DES_ES)*par_energyLinkTarif(set_ii,'SMS','MS','E','EMarket','EGrid'))))/card(set_tech_DES_ES)
) /(1+sca_i_DES)**sca_a;

PARAMETER par_post_IuO_Sonnentank_orga_spot_abs_single(set_ii,set_tech_DES_ES);
par_post_IuO_Sonnentank_orga_spot_abs_single(set_ii,set_tech_DES_ES)=
(par_energyFlow_orga(set_ii,'E',set_tech_DES_ES,'EGrid')*par_energyLinkTarif(set_ii,'MS','SMS','E','EGrid','EMarket')
- par_energyFlow_orga(set_ii,'E','EGrid',set_tech_DES_ES)*par_energyLinkTarif(set_ii,'SMS','MS','E','EMarket','EGrid'))
/(1+sca_i_DES)**sca_a;

*Reservemarkthandel (abgezinst)
PARAMETER par_post_IuO_Sonnentank_orga_posres;
par_post_IuO_Sonnentank_orga_posres
=((sum((set_ii,set_market_MS_P,set_market_MS_R),par_energyFlow_orga(set_ii,'PR',set_market_MS_P,set_market_MS_R)*par_energyLinkTarif(set_ii,'MS','SMS','PR',set_market_MS_P,set_market_MS_R)))/card(set_tech_DES_ES)
)/(1+sca_i_DES)**sca_a;

PARAMETER par_post_IuO_Sonnentank_orga_negres;
par_post_IuO_Sonnentank_orga_negres=
((sum((set_ii,set_market_MS_P,set_market_MS_R),par_energyFlow_orga(set_ii,'NR',set_market_MS_P,set_market_MS_R)*par_energyLinkTarif(set_ii,'MS','SMS','NR',set_market_MS_P,set_market_MS_R)))/card(set_tech_DES_ES)
)/(1+sca_i_DES)**sca_a;

PARAMETER par_post_IuO_Sonnentank_orga_res_avg;
par_post_IuO_Sonnentank_orga_res_avg=
par_post_IuO_Sonnentank_orga_posres+par_post_IuO_Sonnentank_orga_negres;


*Speicherverluste Avg


PARAMETER par_out_E_DES_ES_losses_avg;
par_out_E_DES_ES_losses_avg$(card(set_tech_DES_ES) ne 0) = sum((set_ii,set_tech_DES_PV,set_tech_DES_ES),var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_ES)$(set_energyLink_opt_cust('E',set_tech_DES_PV,set_tech_DES_ES) and sum(set_side_opt_cust$(set_pssOH(set_side_opt_cust,set_tech_DES_ES) and set_pssOH(set_side_opt_cust,set_tech_DES_PV)),1)>0))/card(set_tech_DES_ES)
- (sum((set_ii,set_load_DS_E,set_tech_DES_ES),var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_load_DS_E)$(set_energyLink_opt_cust('E',set_tech_DES_ES,set_load_DS_E) and sum(set_side_opt_cust$(set_pssOH(set_side_opt_cust,set_tech_DES_ES) and set_pssOH(set_side_opt_cust,set_load_DS_E)),1)>0))/card(set_tech_DES_ES) +
sum((set_ii,set_tech_DES_HP,set_tech_DES_ES),var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_tech_DES_HP)$(set_energyLink_opt_cust('E',set_tech_DES_ES,set_tech_DES_HP) and sum(set_side_opt_cust$(set_pssOH(set_side_opt_cust,set_tech_DES_ES) and set_pssOH(set_side_opt_cust,set_tech_DES_HP)),1)>0))/card(set_tech_DES_ES));


*Eigenverbrauch/Gesamtstrom
PARAMETER par_post_E_DES_PV_selfconsvstotal_EL(set_tech_DES_PV);
par_post_E_DES_PV_selfconsvstotal_EL(set_tech_DES_PV)$(set_pss_opt_cust(set_tech_DES_PV) and sum((set_ii,set_load_DS_E),var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_load_DS_E)$(set_energyLink_opt_cust('E',set_tech_DES_PV,set_load_DS_E)))>0)=
           sum((set_ii,set_load_DS_E),var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_load_DS_E)$(set_energyLink_opt_cust('E',set_tech_DES_PV,set_load_DS_E) and sum(set_side_opt_cust$(set_pssOH(set_side_opt_cust,set_load_DS_E) and set_pssOH(set_side_opt_cust,set_tech_DES_PV)),1)>0))
           / sum((set_ii,set_toPss),var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt_cust('E',set_tech_DES_PV,set_toPss));

PARAMETER par_post_E_DES_PV_selfconsvstotal_ES(set_tech_DES_PV);
par_post_E_DES_PV_selfconsvstotal_ES(set_tech_DES_PV)$(set_pss_opt_cust(set_tech_DES_PV) and sum((set_ii,set_tech_DES_ES),var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_ES)$(set_energyLink_opt_cust('E',set_tech_DES_PV,set_tech_DES_ES)))>0)=
           sum((set_ii,set_tech_DES_ES),var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_ES)*par_eta_DES_ES_charge(set_tech_DES_ES)*par_eta_DES_ES_discharge(set_tech_DES_ES)$(set_energyLink_opt_cust('E',set_tech_DES_PV,set_tech_DES_ES) and sum(set_side_opt_cust$(set_pssOH(set_side_opt_cust,set_tech_DES_ES) and set_pssOH(set_side_opt_cust,set_tech_DES_PV)),1)>0))
           / sum((set_ii,set_toPss),var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt_cust('E',set_tech_DES_PV,set_toPss));

PARAMETER par_post_E_DES_PV_selfconsvstotal_HP(set_tech_DES_PV);
par_post_E_DES_PV_selfconsvstotal_HP(set_tech_DES_PV)$(set_pss_opt_cust(set_tech_DES_PV) and sum((set_ii,set_tech_DES_HP),var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_HP)$(set_energyLink_opt_cust('E',set_tech_DES_PV,set_tech_DES_HP)))>0)=
           sum((set_ii,set_tech_DES_HP),var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_HP)$(set_energyLink_opt_cust('E',set_tech_DES_PV,set_tech_DES_HP) and sum(set_side_opt_cust$(set_pssOH(set_side_opt_cust,set_tech_DES_HP) and set_pssOH(set_side_opt_cust,set_tech_DES_PV)),1)>0))
           / sum((set_ii,set_toPss),var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt_cust('E',set_tech_DES_PV,set_toPss));

PARAMETER par_post_E_DES_PV_selfconsvstotal(set_tech_DES_PV);
par_post_E_DES_PV_selfconsvstotal(set_tech_DES_PV)= par_post_E_DES_PV_selfconsvstotal_EL(set_tech_DES_PV)+par_post_E_DES_PV_selfconsvstotal_ES(set_tech_DES_PV)+par_post_E_DES_PV_selfconsvstotal_HP(set_tech_DES_PV);

PARAMETER par_post_E_DES_PV_selfconsvstotal_avg_EL;
par_post_E_DES_PV_selfconsvstotal_avg_EL$(card(set_tech_DES_PV)>0)= sum(set_tech_DES_PV,par_post_E_DES_PV_selfconsvstotal_EL(set_tech_DES_PV))/card(set_tech_DES_PV);

PARAMETER par_post_E_DES_PV_selfconsvstotal_avg_ES;
par_post_E_DES_PV_selfconsvstotal_avg_ES$(card(set_tech_DES_PV)>0)= sum(set_tech_DES_PV,par_post_E_DES_PV_selfconsvstotal_ES(set_tech_DES_PV))/card(set_tech_DES_PV);

PARAMETER par_post_E_DES_PV_selfconsvstotal_avg_HP;
par_post_E_DES_PV_selfconsvstotal_avg_HP$(card(set_tech_DES_PV)>0)= sum(set_tech_DES_PV,par_post_E_DES_PV_selfconsvstotal_HP(set_tech_DES_PV))/card(set_tech_DES_PV);

PARAMETER par_post_E_DES_PV_selfconsvstotal_avg;
par_post_E_DES_PV_selfconsvstotal_avg$(card(set_tech_DES_PV)>0)= sum(set_tech_DES_PV,par_post_E_DES_PV_selfconsvstotal(set_tech_DES_PV))/card(set_tech_DES_PV);

*Autarkie Customer

PARAMETER par_post_L_autarkie_cust_avg;
par_post_L_autarkie_cust_avg$(card(set_load_DS_E)>0 and sum((set_ii,set_load_DS_E),sum((set_fromPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E))) > 0)=
           1-((sum((set_ii,set_load_DS_E),(sum(set_grid_NS_E,var_energyFlow.l(set_ii,'E',set_grid_NS_E,set_load_DS_E)$set_energyLink_opt('E',set_grid_NS_E,set_load_DS_E))))
/ sum((set_ii,set_load_DS_E),sum((set_fromPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E))))/card(set_load_DS_E));

PARAMETER par_post_LHP_autarkie_cust_avg;
par_post_LHP_autarkie_cust_avg$(card(set_load_DS_E)>0 and (sum((set_ii,set_load_DS_E),sum((set_fromPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E)))
+sum((set_ii,set_tech_DES_HP),sum((set_fromPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_HP)$set_energyLink_opt('E',set_fromPss,set_tech_DES_HP)))) > 0)=
1-(
((sum((set_ii,set_load_DS_E),(sum(set_grid_NS_E,var_energyFlow.l(set_ii,'E',set_grid_NS_E,set_load_DS_E)$set_energyLink_opt('E',set_grid_NS_E,set_load_DS_E))))
+sum((set_ii,set_tech_DES_HP),(sum(set_grid_NS_E,var_energyFlow.l(set_ii,'E',set_grid_NS_E,set_tech_DES_HP)$set_energyLink_opt('E',set_grid_NS_E,set_tech_DES_HP)))))
/ (sum((set_ii,set_load_DS_E),sum((set_fromPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E)))
+sum((set_ii,set_tech_DES_HP),sum((set_fromPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_HP)$set_energyLink_opt('E',set_fromPss,set_tech_DES_HP)))))
/card(set_load_DS_E));

*Autarky Organisation
PARAMETER par_post_LHP_autarkie_orga_avg;
par_post_LHP_autarkie_orga_avg$(card(set_load_DS_E)>0 and (sum((set_ii,set_load_DS_E),sum((set_fromPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E)))
+sum((set_ii,set_tech_DES_HP),sum((set_fromPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_HP)$set_energyLink_opt('E',set_fromPss,set_tech_DES_HP)))) > 0)=
1-(
(sum(set_ii,(sum(set_grid_NS_E,var_energyFlow.l(set_ii,'E','EMarket','EGrid')$set_energyLink_opt('E','EMarket','EGrid'))))
/ (sum((set_ii,set_load_DS_E),sum((set_fromPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E)))
+sum((set_ii,set_tech_DES_HP),sum((set_fromPss),var_energyFlow.l(set_ii,'E',set_fromPss,set_tech_DES_HP)$set_energyLink_opt('E',set_fromPss,set_tech_DES_HP)))))
/card(set_load_DS_E));

*Sonntankspeicherstand auf Kundenseite
*Einzeln
PARAMETER par_post_SOC_Sonnentank_cust_ind_abs(set_ii,set_tech_DES_ES);
par_post_SOC_Sonnentank_cust_ind_abs(set_ii,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES) eq 1)
=par_SOC_DES_ES_Sonnentank_cust(set_ii,set_tech_DES_ES);

PARAMETER par_post_SOC_Sonnentank_cust_ind_abs_max;
par_post_SOC_Sonnentank_cust_ind_abs_max$(card(set_tech_DES_ES)>0) = sum(set_tech_DES_ES,smax(set_ii,par_SOC_DES_ES_Sonnentank_cust(set_ii,set_tech_DES_ES)))/card(set_tech_DES_ES);

PARAMETER par_post_SOC_Sonnentank_cust_ind_perc_max;
par_post_SOC_Sonnentank_cust_ind_perc_max$(par_post_SOC_DES_ES_cap_avg > 0) = par_post_SOC_Sonnentank_cust_ind_abs_max/par_post_SOC_DES_ES_cap_avg;

PARAMETER par_post_SOC_Sonnentank_cust_ind_abs_avg;
par_post_SOC_Sonnentank_cust_ind_abs_avg$(card(set_ii) ne 0 and card(set_tech_DES_ES)>0) = sum(set_tech_DES_ES,sum(set_ii,par_SOC_DES_ES_Sonnentank_cust(set_ii,set_tech_DES_ES))/card(set_ii))/card(set_tech_DES_ES);

PARAMETER par_post_SOC_Sonnentank_cust_ind_perc_avg;
par_post_SOC_Sonnentank_cust_ind_perc_avg$(par_post_SOC_DES_ES_cap_avg > 0) = par_post_SOC_Sonnentank_cust_ind_abs_avg/par_post_SOC_DES_ES_cap_avg;

*Sonntankspeicherstand auf Kundenseite
*Ausummiert
PARAMETER par_post_SOC_Sonnentank_cust_nei_abs(set_ii);
par_post_SOC_Sonnentank_cust_nei_abs(set_ii)$(card(set_tech_DES_ES)>0)
=sum(set_tech_DES_ES,par_post_SOC_Sonnentank_cust_ind_abs(set_ii,set_tech_DES_ES));

PARAMETER par_post_SOC_Sonnentank_cust_nei_abs_max;
par_post_SOC_Sonnentank_cust_nei_abs_max = smax(set_ii,par_post_SOC_Sonnentank_cust_nei_abs(set_ii));

PARAMETER par_post_SOC_Sonnentank_cust_nei_perc_max;
par_post_SOC_Sonnentank_cust_nei_perc_max$(sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES))>0)= par_post_SOC_Sonnentank_cust_nei_abs_max/sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES));

PARAMETER par_post_SOC_Sonnentank_cust_nei_abs_avg;
par_post_SOC_Sonnentank_cust_nei_abs_avg$(card(set_ii) ne 0) = sum(set_ii,par_post_SOC_Sonnentank_cust_nei_abs(set_ii))/card(set_ii);

PARAMETER par_post_SOC_Sonnentank_cust_nei_perc_avg;
par_post_SOC_Sonnentank_cust_nei_perc_avg$(sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES))>0)= par_post_SOC_Sonnentank_cust_nei_abs_avg/sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES));

*Sonnentank auf Unternehmensseite
*Einzeln
PARAMETER par_post_SOC_Sonnentank_orga_ind_abs(set_ii,set_tech_DES_ES);
par_post_SOC_Sonnentank_orga_ind_abs(set_ii,set_tech_DES_ES)
=par_SOC_DES_ES_Sonnentank_orga(set_ii,set_tech_DES_ES);

PARAMETER par_post_SOC_Sonnentank_orga_ind_abs_max;
par_post_SOC_Sonnentank_orga_ind_abs_max$(card(set_tech_DES_ES)>0) = sum(set_tech_DES_ES,smax(set_ii,par_post_SOC_Sonnentank_orga_ind_abs(set_ii,set_tech_DES_ES)))/card(set_tech_DES_ES);

PARAMETER par_post_SOC_Sonnentank_orga_ind_perc_max;
par_post_SOC_Sonnentank_orga_ind_perc_max$(par_post_SOC_DES_ES_cap_avg > 0) = par_post_SOC_Sonnentank_orga_ind_abs_max/par_post_SOC_DES_ES_cap_avg;

PARAMETER par_post_SOC_Sonnentank_orga_ind_abs_avg;
par_post_SOC_Sonnentank_orga_ind_abs_avg$(card(set_ii) ne 0) = sum(set_tech_DES_ES,sum(set_ii,par_post_SOC_Sonnentank_orga_ind_abs(set_ii,set_tech_DES_ES))/card(set_ii))/card(set_tech_DES_ES);

PARAMETER par_post_SOC_Sonnentank_orga_ind_perc_avg;
par_post_SOC_Sonnentank_orga_ind_perc_avg$(par_post_SOC_DES_ES_cap_avg > 0) = par_post_SOC_Sonnentank_orga_ind_abs_avg/par_post_SOC_DES_ES_cap_avg;

*Sonnentank auf Unternehmensseite
*Aufsummiert
PARAMETER par_post_SOC_Sonnentank_orga_nei_abs(set_ii);
par_post_SOC_Sonnentank_orga_nei_abs(set_ii)
=sum(set_tech_DES_ES,par_post_SOC_Sonnentank_orga_ind_abs(set_ii,set_tech_DES_ES));

PARAMETER par_post_SOC_Sonnentank_orga_nei_abs_max;
par_post_SOC_Sonnentank_orga_nei_abs_max = smax(set_ii,par_post_SOC_Sonnentank_orga_nei_abs(set_ii));

PARAMETER par_post_SOC_Sonnentank_orga_nei_perc_max;
par_post_SOC_Sonnentank_orga_nei_perc_max$(sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES))>0)= par_post_SOC_Sonnentank_orga_nei_abs_max/sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES));

PARAMETER par_post_SOC_Sonnentank_orga_nei_abs_avg;
par_post_SOC_Sonnentank_orga_nei_abs_avg$(card(set_ii) ne 0) = sum(set_ii,par_post_SOC_Sonnentank_orga_nei_abs(set_ii))/card(set_ii);

PARAMETER par_post_SOC_Sonnentank_orga_nei_perc_avg;
par_post_SOC_Sonnentank_orga_nei_perc_avg$(sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES))>0)= par_post_SOC_Sonnentank_orga_nei_abs_avg/sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES));


*UR
PARAMETER par_post_SOC_Sonnentank_cust_counter(set_ii,set_tech_DES_ES);
par_post_SOC_Sonnentank_cust_counter(set_ii,set_tech_DES_ES)=0;
PARAMETER par_post_SOC_Sonnentank_orga_counter(set_ii,set_tech_DES_ES);
par_post_SOC_Sonnentank_orga_counter(set_ii,set_tech_DES_ES)=0;
Scalar counter_SOC;

par_post_SOC_Sonnentank_cust_counter(set_ii,set_tech_DES_ES)$(par_SOC_DES_ES_Sonnentank_cust(set_ii,set_tech_DES_ES) > 0)=1;
par_post_SOC_Sonnentank_orga_counter(set_ii,set_tech_DES_ES)$(par_SOC_DES_ES_Sonnentank_orga(set_ii,set_tech_DES_ES) > 0)=1;


PARAMETER par_post_UR_cust;
par_post_UR_cust$(card(set_tech_DES_ES) ne 0)=sum((set_ii,set_tech_DES_ES),par_post_SOC_Sonnentank_cust_counter(set_ii,set_tech_DES_ES))/card(set_tech_DES_ES)/card(set_ii);
PARAMETER par_post_UR_orga;
par_post_UR_orga$(card(set_tech_DES_ES) ne 0)=sum((set_ii,set_tech_DES_ES),par_post_SOC_Sonnentank_orga_counter(set_ii,set_tech_DES_ES))/card(set_tech_DES_ES)/card(set_ii);      ;

*UI
PARAMETER par_post_UI_cust;
par_post_UI_cust=par_post_SOC_Sonnentank_cust_ind_abs_avg/par_post_SOC_DES_ES_cap_avg;
PARAMETER par_post_UI_orga;
par_post_UI_orga=par_post_SOC_Sonnentank_orga_ind_abs_avg/par_post_SOC_DES_ES_cap_avg;
*Einspeicherung auf Kundenseite
*Durchschnitt

*Tarifidentifier
PARAMETER par_post_F_energy;
par_post_F_energy= sum(set_load_DS_E,par_F_E_EGrid_energy("ii1","SMS",set_load_DS_E))/card(set_load_DS_E);

*Scenarioidentifier
PARAMETER par_post_C_energy;
par_post_C_energy= sum(set_ii,par_C_MS_E(set_ii))/card(set_ii);

*eingespeicherte Energie
PARAMETER par_post_E_DES_ES_charged_avg;
par_post_E_DES_ES_charged_avg$(card(set_tech_DES_ES) ne 0) = sum((set_ii,set_tech_DES_PV,set_tech_DES_ES),var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_ES)$(set_energyLink_opt_cust('E',set_tech_DES_PV,set_tech_DES_ES) and sum(set_side_opt_cust$(set_pssOH(set_side_opt_cust,set_tech_DES_ES) and set_pssOH(set_side_opt_cust,set_tech_DES_PV)),1)>0))/card(set_tech_DES_ES);

PARAMETER par_post_IuO_DES_ES_charged_requested_avg;
par_post_IuO_DES_ES_charged_requested_avg=41.2*par_post_E_DES_ES_charged_avg;

PARAMETER par_post_IuO_DES_ES_charged_favourable_avg;
par_post_IuO_DES_ES_charged_favourable_avg=203.3*par_post_E_DES_ES_charged_avg;
*ausgespeicherte Energie
PARAMETER par_post_E_DES_ES_discharged_avg;
par_post_E_DES_ES_discharged_avg$(card(set_tech_DES_ES) ne 0) = sum((set_ii,set_load_DS_E,set_tech_DES_ES),var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_load_DS_E)$(set_energyLink_opt_cust('E',set_tech_DES_ES,set_load_DS_E) and sum(set_side_opt_cust$(set_pssOH(set_side_opt_cust,set_tech_DES_ES) and set_pssOH(set_side_opt_cust,set_load_DS_E)),1)>0))/card(set_tech_DES_ES) +
sum((set_ii,set_tech_DES_HP,set_tech_DES_ES),var_energyFlow.l(set_ii,'E',set_tech_DES_ES,set_tech_DES_HP)$(set_energyLink_opt_cust('E',set_tech_DES_ES,set_tech_DES_HP) and sum(set_side_opt_cust$(set_pssOH(set_side_opt_cust,set_tech_DES_ES) and set_pssOH(set_side_opt_cust,set_tech_DES_HP)),1)>0))/card(set_tech_DES_ES);


*Maximum Spot Trading
PARAMETER par_out_E_trading_out_max;
par_out_E_trading_out_max$(set_energyLink('E','EGrid','EMarket'))=smax(set_ii,var_energyflow.l(set_ii,'E','EGrid','EMarket'));
PARAMETER par_out_E_trading_in_max;
par_out_E_trading_in_max$(set_energyLink('E','EMarket','EGrid'))=smax(set_ii,var_energyflow.l(set_ii,'E','EMarket','EGrid'));
PARAMETER par_out_E_trading_out_avg;
par_out_E_trading_out_avg$(set_energyLink('E','EGrid','EMarket'))=sum(set_ii,var_energyflow.l(set_ii,'E','EGrid','EMarket'))/card(set_ii);
PARAMETER par_out_E_trading_in_avg;
par_out_E_trading_in_avg$(set_energyLink('E','EMarket','EGrid'))=sum(set_ii,var_energyflow.l(set_ii,'E','EMarket','EGrid'))/card(set_ii);
PARAMETER par_out_E_trading_out_total;
par_out_E_trading_out_total$(set_energyLink('E','EGrid','EMarket'))=sum(set_ii,var_energyflow.l(set_ii,'E','EGrid','EMarket'));
PARAMETER par_out_E_trading_in_total;
par_out_E_trading_in_total$(set_energyLink('E','EMarket','EGrid'))=sum(set_ii,var_energyflow.l(set_ii,'E','EMarket','EGrid'));
*Reservemarkthandel inkl. Abzinsung


PARAMETER par_post_Affordability_Sector_fav;
par_post_Affordability_Sector_fav=par_post_IuO_Sector_Cust_avg-par_post_IuO_DES_ES_charged_favourable_avg-par_post_CashFlow_PV_1320;
PARAMETER par_post_Affordability_Sector_requ;
par_post_Affordability_Sector_requ=par_post_IuO_Sector_Cust_avg-par_post_IuO_DES_ES_charged_requested_avg-par_post_CashFlow_PV_1320;
PARAMETER par_post_Affordability_Sector_without;
par_post_Affordability_Sector_without=par_post_IuO_Sector_Cust_avg-par_post_CashFlow_PV_1320;
PARAMETER par_post_Affordability_Sector_HES;
par_post_Affordability_Sector_HES=par_post_IuO_Sector_Cust_avg-par_post_CashFlow_PV_1320-par_post_CashFlow_HES_1800;

PARAMETER par_post_Affordability_E_fav;
par_post_Affordability_E_fav=par_post_IuO_E_Cust_avg-par_post_IuO_DES_ES_charged_favourable_avg-par_post_CashFlow_PV_1320;
PARAMETER par_post_Affordability_E_requ;
par_post_Affordability_E_requ=par_post_IuO_E_Cust_avg-par_post_IuO_DES_ES_charged_requested_avg-par_post_CashFlow_PV_1320;
PARAMETER par_post_Affordability_E_without;
par_post_Affordability_E_without=par_post_IuO_E_Cust_avg-par_post_CashFlow_PV_1320;
PARAMETER par_post_Affordability_E_HES;
par_post_Affordability_E_HES=par_post_IuO_E_Cust_avg-par_post_CashFlow_PV_1320-par_post_CashFlow_HES_1800;

PARAMETER par_post_Profitability_Sector;
par_post_Profitability_Sector=par_post_IuO_Sector_SMS_avg-par_post_CashFlow_CES_900;
PARAMETER par_post_Profitability_Sector_woTrade;
par_post_Profitability_Sector_woTrade=par_post_IuO_Sector_SMS_avg-par_post_CashFlow_CES_900-par_post_IuO_Sonnentank_orga_spot_abs_avg-par_post_IuO_Sonnentank_orga_res_avg;
PARAMETER par_post_Profitability_Sector_woTradewoCES;
par_post_Profitability_Sector_woTradewoCES=par_post_IuO_Sector_SMS_avg-par_post_IuO_Sonnentank_orga_spot_abs_avg-par_post_IuO_Sonnentank_orga_res_avg;

PARAMETER par_post_Profitability_E;
par_post_Profitability_E=par_post_IuO_E_SMS_avg-par_post_CashFlow_CES_900;
PARAMETER par_post_Profitability_woTrade;
par_post_Profitability_woTrade=par_post_IuO_E_SMS_avg-par_post_CashFlow_CES_900-par_post_IuO_Sonnentank_orga_spot_abs_avg-par_post_IuO_Sonnentank_orga_res_avg;
PARAMETER par_post_Profitability_E_woTradewoCES;
par_post_Profitability_E_woTradewoCES=par_post_IuO_E_SMS_avg-par_post_IuO_Sonnentank_orga_spot_abs_avg-par_post_IuO_Sonnentank_orga_res_avg;



*Eigenverbrauchsreduktion
PARAMETER par_post_SOC_DES_ES_percent(set_ii,set_tech_DES_ES);
PARAMETER par_post_SOC_DES_NEI_percent(set_ii);
*Prozentualer Speicherfüllstand gemäß vorgegebener Kapazität; Entnommen aus der bestehenden GDX  bzw. der Werte der Optimierung.
PARAMETER par_post_SOC_DES_ES_discharge_percent(set_ii,set_tech_DES_ES);
PARAMETER par_post_SOC_DES_NEI_discharge_percent(set_ii);
* Alle Entladefüllstände; Alle Entladungen gegeben den Eigenverbrauch.(Aktueller Zeitschritt - Zeitschritt davor) --> wenn Aktueller Zeitschritt kleiner, dann negative Zahl heranziehen, sonst 0.
PARAMETER par_post_SOC_DES_ES_discharge_percent_sum(set_tech_DES_ES);
PARAMETER par_post_SOC_DES_ES_discharge_absolut_sum(set_tech_DES_ES);
PARAMETER par_post_SOC_DES_NEI_discharge_percent_sum;
PARAMETER par_post_SOC_DES_NEI_discharge_absolut_sum;
*aufsummiert par_post_SOC_DES_ES_discharge_percent(set_ii,set_tech_DES_ES);


PARAMETER par_post_SOC_DES_ES_reduction_percent(set_ii,set_percent_SOC_reduction,set_tech_DES_ES);
PARAMETER par_post_SOC_DES_NEI_reduction_percent(set_ii,set_percent_SOC_reduction);
*Wie sähe der Speicherfüllstand aus, wenn er nur X % der vorgegebenen Kapazität hätte;  Wie w+rde sich der Speicher verhalten, wenn man diesen reduziert (Tabelle 1); Er wäre viel schneller voll und viel schneller leer und ähnliches (im Verhältnis zu 100%Speicher)
PARAMETER par_post_SOC_DES_ES_reduction_percent_losses(set_ii,set_percent_SOC_reduction,set_tech_DES_ES);
PARAMETER par_post_SOC_DES_NEI_reduction_percent_losses(set_ii,set_percent_SOC_reduction);
*Tabelle 2 rechts nur entladefüllstände durch min funktion. Alle Entnahmeztpkt. Summe entspricht dem  Eigenverbrauch, welchen man dann mit dem 100% Speicher gegenüberstellen kann. Summe absolut des Eigenverbrauchs kann dann mit dem absoluten vorgegebenen Speicher verglichen werden. 0,004 vorgabe

*Losses Absolut Eigenverbrauch total in Abhängigkeit der Größe des Speichers
Parameter par_SC_losses_absolut(set_percent_SOC_reduction,set_tech_DES_ES);
Parameter par_SC_rest_absolut(set_percent_SOC_reduction,set_tech_DES_ES);
Parameter par_SC_rest_percent(set_percent_SOC_reduction,set_tech_DES_ES);
Parameter par_SC_rest_percent_maxreduction(set_tech_DES_ES);
Parameter par_SC_losses_absolut_NEI(set_percent_SOC_reduction);
Parameter par_SC_rest_absolut_NEI(set_percent_SOC_reduction);
Parameter par_SC_rest_percent_NEI(set_percent_SOC_reduction);
Parameter par_SC_rest_percent_maxreduction_NEI;
Parameter par_post_SOC_DES_NEI_discharge_absolut_two_sum;

Parameter  par_post_SOC_DES_ES_reduction_percent_losses_sum(set_percent_SOC_reduction,set_tech_DES_ES);
Parameter  par_post_SOC_DES_ES_reduction_absolut_losses_sum(set_percent_SOC_reduction,set_tech_DES_ES);

Parameter  par_post_SOC_DES_NEI_reduction_percent_losses_sum(set_percent_SOC_reduction);
Parameter  par_post_SOC_DES_NEI_reduction_absolut_losses_sum(set_percent_SOC_reduction);

*Maximale Reduktion in Abhängigkeit der Speicher (Letzte Prozentzahl mit 100 EV);
Parameter par_SC_rest_percent_avg(set_percent_SOC_reduction);
Parameter par_SC_rest_percent_maxreduction_avg(set_tech_DES_ES);




par_post_SOC_DES_ES_percent(set_ii,set_tech_DES_ES)$(par_SOC_DES_ES_cap(set_tech_DES_ES) ne 0)=par_SOC_DES_ES_Sonnentank_cust(set_ii,set_tech_DES_ES)/par_SOC_DES_ES_cap(set_tech_DES_ES);
par_post_SOC_DES_ES_percent(set_ii,set_tech_DES_ES)$(par_post_SOC_DES_ES_percent(set_ii,set_tech_DES_ES)=0)=eps;

par_post_SOC_DES_NEI_percent(set_ii)=sum(set_tech_DES_ES,par_SOC_DES_ES_Sonnentank_cust(set_ii,set_tech_DES_ES))/sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES));
par_post_SOC_DES_NEI_percent(set_ii)$(par_post_SOC_DES_NEI_percent(set_ii)=0)=eps;

par_post_SOC_DES_ES_discharge_percent('ii1',set_tech_DES_ES)=0;
par_post_SOC_DES_NEI_discharge_percent('ii1')=0;
*ok
par_post_SOC_DES_ES_discharge_percent(set_ii,set_tech_DES_ES)$(ORD(set_ii) >=2)=min(0,par_post_SOC_DES_ES_percent(set_ii,set_tech_DES_ES)-par_post_SOC_DES_ES_percent(set_ii-1,set_tech_DES_ES));
par_post_SOC_DES_NEI_discharge_percent(set_ii)$(ORD(set_ii) >=2)=min(0,par_post_SOC_DES_NEI_percent(set_ii)-par_post_SOC_DES_NEI_percent(set_ii-1));

par_post_SOC_DES_ES_discharge_percent(set_ii,set_tech_DES_ES)$(par_post_SOC_DES_ES_discharge_percent(set_ii,set_tech_DES_ES)=0)=eps;
par_post_SOC_DES_NEI_discharge_percent(set_ii)$(par_post_SOC_DES_NEI_discharge_percent(set_ii)=0)=eps;

*ok
par_post_SOC_DES_ES_discharge_percent_sum(set_tech_DES_ES)=sum(set_ii,par_post_SOC_DES_ES_discharge_percent(set_ii,set_tech_DES_ES));
par_post_SOC_DES_ES_discharge_absolut_sum(set_tech_DES_ES)=par_post_SOC_DES_ES_discharge_percent_sum(set_tech_DES_ES)*par_SOC_DES_ES_cap(set_tech_DES_ES);


par_post_SOC_DES_NEI_discharge_percent_sum=sum(set_ii,par_post_SOC_DES_NEI_discharge_percent(set_ii));
par_post_SOC_DES_NEI_discharge_absolut_sum=sum(set_tech_DES_ES,par_post_SOC_DES_ES_discharge_absolut_sum(set_tech_DES_ES));
par_post_SOC_DES_NEI_discharge_absolut_two_sum=par_post_SOC_DES_NEI_discharge_percent_sum*sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES));

par_post_SOC_DES_ES_reduction_percent('ii1',set_percent_SOC_reduction,set_tech_DES_ES)=0;
par_post_SOC_DES_NEI_reduction_percent('ii1',set_percent_SOC_reduction)=0;

SET set_ii_subset(set_ii);
set_ii_subset(set_ii)=YES;

par_post_SOC_DES_ES_reduction_percent_losses('ii1',set_percent_SOC_reduction,set_tech_DES_ES)=0;
par_post_SOC_DES_NEI_reduction_percent_losses('ii1',set_percent_SOC_reduction)=0;

loop(set_ii$(set_ii_subset(set_ii)),
par_post_SOC_DES_ES_reduction_percent(set_ii,set_percent_SOC_reduction,set_tech_DES_ES)
=max(min(par_post_SOC_DES_ES_reduction_percent(set_ii-1,set_percent_SOC_reduction,set_tech_DES_ES)+(par_post_SOC_DES_ES_percent(set_ii,set_tech_DES_ES)-par_post_SOC_DES_ES_percent(set_ii-1,set_tech_DES_ES)),(ORD(set_percent_SOC_reduction)-1)/100),0);

par_post_SOC_DES_NEI_reduction_percent(set_ii,set_percent_SOC_reduction)
=max(min(par_post_SOC_DES_NEI_reduction_percent(set_ii-1,set_percent_SOC_reduction)+(par_post_SOC_DES_NEI_percent(set_ii)-par_post_SOC_DES_NEI_percent(set_ii-1)),(ORD(set_percent_SOC_reduction)-1)/100),0);

par_post_SOC_DES_ES_reduction_percent_losses(set_ii,set_percent_SOC_reduction,set_tech_DES_ES)=
min(par_post_SOC_DES_ES_reduction_percent(set_ii,set_percent_SOC_reduction,set_tech_DES_ES)-par_post_SOC_DES_ES_reduction_percent(set_ii-1,set_percent_SOC_reduction,set_tech_DES_ES),0);

par_post_SOC_DES_NEI_reduction_percent_losses(set_ii,set_percent_SOC_reduction)=
min(par_post_SOC_DES_NEI_reduction_percent(set_ii,set_percent_SOC_reduction)-par_post_SOC_DES_NEI_reduction_percent(set_ii-1,set_percent_SOC_reduction),0)

);


par_post_SOC_DES_ES_reduction_percent_losses(set_ii,set_percent_SOC_reduction,set_tech_DES_ES)$(par_post_SOC_DES_ES_reduction_percent_losses(set_ii,set_percent_SOC_reduction,set_tech_DES_ES)=0)=eps;
par_post_SOC_DES_NEI_reduction_percent_losses(set_ii,set_percent_SOC_reduction)$(par_post_SOC_DES_NEI_reduction_percent_losses(set_ii,set_percent_SOC_reduction)=0)=eps;


par_post_SOC_DES_ES_reduction_percent_losses_sum(set_percent_SOC_reduction,set_tech_DES_ES)=sum(set_ii,par_post_SOC_DES_ES_reduction_percent_losses(set_ii,set_percent_SOC_reduction,set_tech_DES_ES));
par_post_SOC_DES_ES_reduction_percent_losses_sum(set_percent_SOC_reduction,set_tech_DES_ES)$(par_post_SOC_DES_ES_reduction_percent_losses_sum(set_percent_SOC_reduction,set_tech_DES_ES)=0)=eps;
par_post_SOC_DES_ES_reduction_absolut_losses_sum(set_percent_SOC_reduction,set_tech_DES_ES)=par_post_SOC_DES_ES_reduction_percent_losses_sum(set_percent_SOC_reduction,set_tech_DES_ES)*par_SOC_DES_ES_cap(set_tech_DES_ES);
par_post_SOC_DES_ES_reduction_absolut_losses_sum(set_percent_SOC_reduction,set_tech_DES_ES)$(par_post_SOC_DES_ES_reduction_absolut_losses_sum(set_percent_SOC_reduction,set_tech_DES_ES)=0)=eps;

par_post_SOC_DES_NEI_reduction_percent_losses_sum(set_percent_SOC_reduction)=sum(set_ii,par_post_SOC_DES_NEI_reduction_percent_losses(set_ii,set_percent_SOC_reduction));
par_post_SOC_DES_NEI_reduction_percent_losses_sum(set_percent_SOC_reduction)$(par_post_SOC_DES_NEI_reduction_percent_losses_sum(set_percent_SOC_reduction)=0)=eps;
par_post_SOC_DES_NEI_reduction_absolut_losses_sum(set_percent_SOC_reduction)=par_post_SOC_DES_NEI_reduction_percent_losses_sum(set_percent_SOC_reduction)*sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES));
par_post_SOC_DES_NEI_reduction_absolut_losses_sum(set_percent_SOC_reduction)$(par_post_SOC_DES_NEI_reduction_absolut_losses_sum(set_percent_SOC_reduction)=0)=eps;

*Verluste absolut
par_SC_losses_absolut(set_percent_SOC_reduction,set_tech_DES_ES)=par_post_SOC_DES_ES_discharge_absolut_sum(set_tech_DES_ES)-par_post_SOC_DES_ES_reduction_absolut_losses_sum(set_percent_SOC_reduction,set_tech_DES_ES);
par_SC_losses_absolut(set_percent_SOC_reduction,set_tech_DES_ES)$(par_SC_losses_absolut(set_percent_SOC_reduction,set_tech_DES_ES)=0)=eps;

par_SC_losses_absolut_NEI(set_percent_SOC_reduction)=par_post_SOC_DES_NEI_discharge_absolut_two_sum-par_post_SOC_DES_NEI_reduction_absolut_losses_sum(set_percent_SOC_reduction);
par_SC_losses_absolut_NEI(set_percent_SOC_reduction)$(par_SC_losses_absolut_NEI(set_percent_SOC_reduction)=0)=eps;

*Rest EV oder SC absolut
par_SC_rest_absolut(set_percent_SOC_reduction,set_tech_DES_ES)=par_post_SOC_DES_ES_discharge_absolut_sum(set_tech_DES_ES)-par_SC_losses_absolut(set_percent_SOC_reduction,set_tech_DES_ES);
par_SC_rest_absolut(set_percent_SOC_reduction,set_tech_DES_ES)$(par_SC_rest_absolut(set_percent_SOC_reduction,set_tech_DES_ES)=0)=eps;

par_SC_rest_absolut_NEI(set_percent_SOC_reduction)=par_post_SOC_DES_NEI_discharge_absolut_sum-par_SC_losses_absolut_NEI(set_percent_SOC_reduction);
par_SC_rest_absolut_NEI(set_percent_SOC_reduction)$(par_SC_rest_absolut_NEI(set_percent_SOC_reduction)=0)=eps;

*Rest EV Prozent ES
par_SC_rest_percent(set_percent_SOC_reduction,set_tech_DES_ES)$(par_post_SOC_DES_ES_discharge_absolut_sum(set_tech_DES_ES) ne 0)=par_SC_rest_absolut(set_percent_SOC_reduction,set_tech_DES_ES)/par_post_SOC_DES_ES_discharge_absolut_sum(set_tech_DES_ES);
par_SC_rest_percent(set_percent_SOC_reduction,set_tech_DES_ES)$(par_SC_rest_percent(set_percent_SOC_reduction,set_tech_DES_ES)=0)=eps;

*Durchschnitt Rest EV Prozent
par_SC_rest_percent_avg(set_percent_SOC_reduction)$(card(set_tech_DES_ES) ne 0)=sum(set_tech_DES_ES,par_SC_rest_percent(set_percent_SOC_reduction,set_tech_DES_ES))/card(set_tech_DES_ES);

*Rest EV Prozent NEI
par_SC_rest_percent_NEI(set_percent_SOC_reduction)$(par_post_SOC_DES_NEI_discharge_absolut_sum ne 0)=par_SC_rest_absolut_NEI(set_percent_SOC_reduction)/par_post_SOC_DES_NEI_discharge_absolut_sum;
par_SC_rest_percent_NEI(set_percent_SOC_reduction)$(par_SC_rest_percent_NEI(set_percent_SOC_reduction)=0)=eps;

$ontext
Scalar counter_percent_value_three;
Parameter par_reduction_max_ES;
Parameter par_reduction_max_CES;
Parameter help1_ES;
help1_ES=0;
Parameter help2_CES;
help2_CES=0;
counter_percent_value_three = 1;
par_reduction_max_ES=0;

LOOP(set_percent_SOC_reduction,

if(par_SC_rest_percent_avg(set_percent_SOC_reduction) > help1_ES,
help1_ES=par_SC_rest_percent_avg(set_percent_SOC_reduction);
par_reduction_max_ES= 100-counter_percent_value_three;
);

if(par_SC_rest_percent_NEI(set_percent_SOC_reduction) > help2_CES,
help2_CES=par_SC_rest_percent_NEI(set_percent_SOC_reduction);
par_reduction_max_CES= 100-counter_percent_value_three;
);

counter_percent_value_three = counter_percent_value_three + 1 ;
);

$offtext
