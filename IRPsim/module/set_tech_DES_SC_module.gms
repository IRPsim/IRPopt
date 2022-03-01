***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
EQUATIONS EqSC1(set_ii,set_pss) Restriktion bezogene Primärenergie Kältemaschine;
EqSC1(set_t,set_tech_DES_SC)$(set_pss_opt(set_tech_DES_SC) AND par_X_pss_model(set_tech_DES_SC)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'C',set_tech_DES_SC,set_toPss)$set_energyLink_opt('C',set_tech_DES_SC,set_toPss))
                 =e=
                 sum(set_fromPss,var_energyFlow(set_t,'W',set_fromPss,set_tech_DES_SC)$set_energyLink_opt('W',set_fromPss,set_tech_DES_SC)) * par_Eta_DES_SC(set_tech_DES_SC);


EQUATIONS EqSC2(set_ii,set_pss) Restriktion maximale Kapazität Kältemaschine;
EqSC2(set_t,set_tech_DES_SC)$(set_pss_opt(set_tech_DES_SC) AND par_X_pss_model(set_tech_DES_SC)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'C',set_tech_DES_SC,set_toPss)$set_energyLink_opt('C',set_tech_DES_SC,set_toPss))
                 =l=
                 par_Q_DES_SC_max(set_tech_DES_SC) * sca_delta_ii;




MODEL mod_tech_DES_SC_orga / EqSC1, EqSC2/;
MODEL mod_tech_DES_SC_cust / EqSC1, EqSC2/;
