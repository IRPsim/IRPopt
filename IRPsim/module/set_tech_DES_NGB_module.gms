***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
EQUATIONS EqNGB1(set_ii,set_sector,set_pss) Restriktion benötigte Primärenergie Gaskessel;
EqNGB1(set_t,set_sector,set_tech_DES_NGB)$(set_pss_opt(set_tech_DES_NGB) AND par_X_pss_model(set_tech_DES_NGB)=1 AND set_secondaryenergylink(set_sector,set_tech_DES_NGB)) ..
                 sum(set_toPss,var_energyFlow(set_t,set_sector,set_tech_DES_NGB,set_toPss)$set_energyLink_opt(set_sector,set_tech_DES_NGB,set_toPss))
                 =e=
                 sum(set_fromPss,var_energyFlow(set_t,'G',set_fromPss,set_tech_DES_NGB)$set_energyLink_opt('G',set_fromPss,set_tech_DES_NGB)) * par_Eta_DES_NGB(set_tech_DES_NGB);

EQUATIONS EqNGB2(set_ii,set_sector,set_pss) Restriktion maximale Kapazität Gaskessel;
EqNGB2(set_t,set_sector,set_tech_DES_NGB)$(set_pss_opt(set_tech_DES_NGB) AND par_X_pss_model(set_tech_DES_NGB)=1 AND set_secondaryenergylink(set_sector,set_tech_DES_NGB))..
                 sum(set_toPss,var_energyFlow(set_t,set_sector,set_tech_DES_NGB,set_toPss)$set_energyLink_opt(set_sector,set_tech_DES_NGB,set_toPss))
                 =l=
                 par_Q_DES_NGB_max(set_tech_DES_NGB) * par_Q_DES_NGB_utilpercent(set_t,set_tech_DES_NGB) * sca_delta_ii;

MODEL mod_tech_DES_NGB_orga / EqNGB1, EqNGB2 /;
MODEL mod_tech_DES_NGB_cust / EqNGB1, EqNGB2 /;

