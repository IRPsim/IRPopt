***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
EQUATIONS EqEB1(set_ii,set_pss) Restriktion bezogene Primärenergie Durchlauferhitzer;
EqEB1(set_t,set_tech_DES_EB)$(set_pss_opt(set_tech_DES_EB) AND par_X_pss_model(set_tech_DES_EB)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'W',set_tech_DES_EB,set_toPss)$set_energyLink_opt('W',set_tech_DES_EB,set_toPss))
                 =e=
                 sum(set_fromPss,var_energyFlow(set_t,'E',set_fromPss,set_tech_DES_EB)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EB)) * par_Eta_DES_EB(set_tech_DES_EB);


EQUATIONS EqEB2(set_ii,set_pss) Restriktion maximale Kapazität Durchlauferhitzer;
EqEB2(set_t,set_tech_DES_EB)$(set_pss_opt(set_tech_DES_EB) AND par_X_pss_model(set_tech_DES_EB)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'W',set_tech_DES_EB,set_toPss)$set_energyLink_opt('W',set_tech_DES_EB,set_toPss))
                 =l=
                 par_Q_DES_EB_max(set_tech_DES_EB) * sca_delta_ii * par_P_DES_EB_utilpercent(set_t,set_tech_DES_EB);

EQUATIONS EqEB3(set_ii,set_pss) Restriktion maximale Kapazität Stromaufnahme negative Regelenergie Durchlauferhitzer;
EqEB3(set_t,set_tech_DES_EB)$(set_pss_opt(set_tech_DES_EB) AND par_X_pss_model(set_tech_DES_EB)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_EB,set_toPss)$set_energyLink_opt('NR',set_tech_DES_EB,set_toPss)) * par_Eta_DES_EB(set_tech_DES_EB)
                 =l=
                 (par_Q_DES_EB_max(set_tech_DES_EB) * sca_delta_ii * par_P_DES_EB_utilpercent(set_t,set_tech_DES_EB)
                 - sum(set_toPss,var_energyFlow(set_t,'W',set_tech_DES_EB,set_toPss)$set_energyLink_opt('W',set_tech_DES_EB,set_toPss)));

EQUATIONS EqEB4(set_ii,set_pss) Restriktion maximaler Wärmeabfluss negative Regelenergie Durchlauferhitzer;
EqEB4(set_t,set_tech_DES_EB)$(set_pss_opt(set_tech_DES_EB) AND par_X_pss_model(set_tech_DES_EB)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_EB,set_toPss)$set_energyLink_opt('NR',set_tech_DES_EB,set_toPss)) * par_Eta_DES_EB(set_tech_DES_EB)
                 =l=
                 sum(set_fromPss,var_energyFlow(set_t,'NR',set_fromPss,set_tech_DES_EB)$set_energyLink_opt('NR',set_fromPss,set_tech_DES_EB));

EQUATIONS EqEB5(set_ii,set_pss) Restriktion maximale Kapazität Stromaufnahme positiver Regelenergie Durchlauferhitzer;
EqEB5(set_t,set_tech_DES_EB)$(set_pss_opt(set_tech_DES_EB) AND par_X_pss_model(set_tech_DES_EB)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_EB,set_toPss)$set_energyLink_opt('PR',set_tech_DES_EB,set_toPss))
                 =l=
                 sum(set_fromPss,var_energyFlow(set_t,'E',set_fromPss,set_tech_DES_EB)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EB));

EQUATIONS EqEB6(set_ii,set_pss) Restriktion maximaler Wärmeabfluss positiver Regelenergie Durchlauferhitzer;
EqEB6(set_t,set_tech_DES_EB)$(set_pss_opt(set_tech_DES_EB) AND par_X_pss_model(set_tech_DES_EB)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_EB,set_toPss)$set_energyLink_opt('PR',set_tech_DES_EB,set_toPss)) * par_Eta_DES_EB(set_tech_DES_EB)
                 =l=
                 sum(set_fromPss,var_energyFlow(set_t,'PR',set_fromPss,set_tech_DES_EB)$set_energyLink_opt('PR',set_fromPss,set_tech_DES_EB));

*MODEL mod_tech_DES_EB_orga / EqEB1, EqEB2/;
*MODEL mod_tech_DES_EB_cust / EqEB1, EqEB2/;

MODEL mod_tech_DES_EB_orga / EqEB1, EqEB2, EqEB3, EqEB4, EqEB5, EqEB6/;
MODEL mod_tech_DES_EB_cust / EqEB1, EqEB2, EqEB3, EqEB4, EqEB5, EqEB6/;
