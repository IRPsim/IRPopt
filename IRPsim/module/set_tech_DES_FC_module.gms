***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
EQUATIONS EqFC1(set_ii,set_pss) Restriktion benötigte Primärenergie Brennstoffzelle;
EqFC1(set_t,set_tech_DES_FC)$(set_pss_opt(set_tech_DES_FC) AND par_X_pss_model(set_tech_DES_FC)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_DES_FC,set_toPss)$set_energyLink_opt('E',set_tech_DES_FC,set_toPss))
                 =e=
                 sum(set_fromPss,var_energyFlow(set_t,'H',set_fromPss,set_tech_DES_FC)$set_energyLink_opt('H',set_fromPss,set_tech_DES_FC)) * par_Eta_DES_FC(set_tech_DES_FC);

EQUATIONS EqFC2(set_ii,set_pss) Restriktion maximale Kapazität Brennstoffzelle;
EqFC2(set_t,set_tech_DES_FC)$(set_pss_opt(set_tech_DES_FC) AND par_X_pss_model(set_tech_DES_FC)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_DES_FC,set_toPss)$set_energyLink_opt('E',set_tech_DES_FC,set_toPss))
                 =l=
                 par_P_DES_FC_max(set_tech_DES_FC) * sca_delta_ii;

MODEL mod_tech_DES_FC_orga / EqFC1, EqFC2 /;
MODEL mod_tech_DES_FC_cust / EqFC1, EqFC2 /;

