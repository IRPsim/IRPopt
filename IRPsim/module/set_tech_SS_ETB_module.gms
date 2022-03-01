***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
EQUATIONS EqETB1_SS(set_ii,set_pss) Primärenergieverbrauch Energieerzeugung Elektrodenboiler;
EqETB1_SS(set_t,set_tech_SS_ETB)$(set_pss_opt(set_tech_SS_ETB) AND par_X_pss_model(set_tech_SS_ETB))..
                 sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_ETB,set_toPss)$set_energyLink_opt('W',set_tech_SS_ETB,set_toPss))
                 =e=
                 sum(set_fromPss,var_energyFlow(set_t,'E',set_fromPss,set_tech_SS_ETB)$set_energyLink_opt('E',set_fromPss,set_tech_SS_ETB)) * par_Eta_SS_ETB(set_tech_SS_ETB);

EQUATIONS EqETB2_SS(set_ii,set_pss) Restriktion maximale Leistung Elektrodenboiler;
EqETB2_SS(set_t,set_tech_SS_ETB)$(set_pss_opt(set_tech_SS_ETB) AND par_X_pss_model(set_tech_SS_ETB) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_ETB,set_toPss)$set_energyLink_opt('W',set_tech_SS_ETB,set_toPss))
                 =l=
                 par_Q_SS_ETB_max(set_tech_SS_ETB)*sca_delta_ii*var_S_pss(set_t,set_tech_SS_ETB);

EQUATIONS EqETB3_SS(set_ii,set_pss) Restriktion minimale Leistung Elektrodenboiler;
EqETB3_SS(set_t,set_tech_SS_ETB)$(set_pss_opt(set_tech_SS_ETB) AND par_X_pss_model(set_tech_SS_ETB) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_ETB,set_toPss)$set_energyLink_opt('W',set_tech_SS_ETB,set_toPss))
                 =l=
                 par_Q_SS_ETB_min(set_tech_SS_ETB)*sca_delta_ii*var_S_pss(set_t,set_tech_SS_ETB);

EQUATIONS EqETB4_SS(set_ii,set_pss) Restriktion maximale negative Reserveenergie Elektrodenboiler;;
EqETB4_SS(set_t,set_tech_SS_ETB)$(set_pss_opt(set_tech_SS_ETB) AND par_X_pss_model(set_tech_SS_ETB) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'NR',set_tech_SS_ETB,set_toPss)$set_energyLink_opt('NR',set_tech_SS_ETB,set_toPss)) * par_Eta_SS_ETB(set_tech_SS_ETB)
                 =l=
                 (par_Q_SS_ETB_max(set_tech_SS_ETB) * sca_delta_ii
                 - sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_ETB,set_toPss)$set_energyLink_opt('W',set_tech_SS_ETB,set_toPss)));

MODEL mod_tech_SS_ETB_orga / EqETB1_SS, EqETB2_SS, EqETB3_SS, EqETB4_SS /;
MODEL mod_tech_SS_ETB_cust / EqETB1_SS, EqETB2_SS, EqETB3_SS, EqETB4_SS /;

