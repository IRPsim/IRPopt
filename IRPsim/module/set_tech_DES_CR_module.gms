***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
EQUATIONS EqCR1(set_ii,set_sector,set_toPss) Restriktion bezogene Prim�renergie K�ltemaschine;
EqCR1(set_t,set_sector,set_tech_DES_CR)$(set_pss_opt(set_tech_DES_CR) AND par_X_pss_model(set_tech_DES_CR)=1 AND set_primaryenergylink(set_sector,set_tech_DES_CR))..
                 sum(set_toPss,var_energyFlow(set_t,'C',set_tech_DES_CR,set_toPss)$set_energyLink_opt('C',set_tech_DES_CR,set_toPss))
                 =e=
                 sum(set_fromPss,var_energyFlow(set_t,set_sector,set_fromPss,set_tech_DES_CR)$set_energyLink_opt(set_sector,set_fromPss,set_tech_DES_CR)) * par_Eta_DES_CR(set_tech_DES_CR);

EQUATIONS EqCR2(set_ii,set_pss) Restriktion maximale Kapazit�t K�ltemaschine;
EqCR2(set_t,set_tech_DES_CR)$(set_pss_opt(set_tech_DES_CR) AND par_X_pss_model(set_tech_DES_CR)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'C',set_tech_DES_CR,set_toPss)$set_energyLink_opt('C',set_tech_DES_CR,set_toPss))
                 =l=
                 par_Q_DES_CR_max(set_tech_DES_CR) * sca_delta_ii * par_Eta_DES_CR(set_tech_DES_CR);

EQUATIONS EqCR3(set_ii,set_pss) Restriktion maximale Kapazit�t Stromaufnahme negative Regelenergie K�ltemaschine;
EqCR3(set_t,set_tech_DES_CR)$(set_pss_opt(set_tech_DES_CR) AND par_X_pss_model(set_tech_DES_CR)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_CR,set_toPss)$set_energyLink_opt('NR',set_tech_DES_CR,set_toPss)) * par_Eta_DES_CR(set_tech_DES_CR)
                 =l=
                 (par_Q_DES_CR_max(set_tech_DES_CR) * sca_delta_ii
                 - sum(set_toPss,var_energyFlow(set_t,'C',set_tech_DES_CR,set_toPss)$set_energyLink_opt('C',set_tech_DES_CR,set_toPss)));

EQUATIONS EqCR4(set_ii,set_pss) Restriktion maximaler W�rmeabfluss negative Regelenergie K�ltemaschine;
EqCR4(set_t,set_tech_DES_CR)$(set_pss_opt(set_tech_DES_CR) AND par_X_pss_model(set_tech_DES_CR)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_CR,set_toPss)$set_energyLink_opt('NR',set_tech_DES_CR,set_toPss)) * par_Eta_DES_CR(set_tech_DES_CR)
                 =l=
                 sum(set_fromPss,var_energyFlow(set_t,'NR',set_fromPss,set_tech_DES_CR)$set_energyLink_opt('NR',set_fromPss,set_tech_DES_CR));

EQUATIONS EqCR5(set_ii,set_pss) Restriktion maximale Kapazit�t Stromaufnahme positiver Regelenergie K�ltemaschine;
EqCR5(set_t,set_tech_DES_CR)$(set_pss_opt(set_tech_DES_CR) AND par_X_pss_model(set_tech_DES_CR)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_CR,set_toPss)$set_energyLink_opt('PR',set_tech_DES_CR,set_toPss))
                 =l=
                 sum(set_fromPss,var_energyFlow(set_t,'E',set_fromPss,set_tech_DES_CR)$set_energyLink_opt('E',set_fromPss,set_tech_DES_CR));

EQUATIONS EqCR6(set_ii,set_pss) Restriktion maximaler W�rmeabfluss positiver Regelenergie K�ltemaschine;
EqCR6(set_t,set_tech_DES_CR)$(set_pss_opt(set_tech_DES_CR) AND par_X_pss_model(set_tech_DES_CR)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_CR,set_toPss)$set_energyLink_opt('PR',set_tech_DES_CR,set_toPss)) * par_Eta_DES_CR(set_tech_DES_CR)
                 =l=
                 sum(set_fromPss,var_energyFlow(set_t,'PR',set_fromPss,set_tech_DES_CR)$set_energyLink_opt('PR',set_fromPss,set_tech_DES_CR));


MODEL mod_tech_DES_CR_orga / EqCR1, EqCR2/;
MODEL mod_tech_DES_CR_cust / EqCR1, EqCR2/;
