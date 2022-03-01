***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
EQUATIONS EqPLB1(set_ii,set_sector,set_pss) Primärenergieverbrauch Energierzeugung Spitzenlastkessel;
EqPLB1(set_t,set_sector,set_tech_SS_PLB)$set_pss_opt(set_tech_SS_PLB)..
                 sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_PLB,set_toPss)$set_energyLink_opt('W',set_tech_SS_PLB,set_toPss))
                 =e=
                 sum(set_fromPss,var_energyFlow(set_t,set_Sector,set_fromPss,set_tech_SS_PLB)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_PLB)) * par_Eta_SS_PLB(set_tech_SS_PLB);

EQUATIONS EqPLB2(set_ii,set_pss) Restriktion maximale Leistung Spitzenlastkessel;
EqPLB2(set_t,set_tech_SS_PLB)$(set_pss_opt(set_tech_SS_PLB) AND par_X_pss_model(set_tech_SS_PLB) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_PLB,set_toPss)$set_energyLink_opt('W',set_tech_SS_PLB,set_toPss))
                 =l=
                 par_Q_SS_PLB_max(set_tech_SS_PLB)*sca_delta_ii*var_S_pss(set_t,set_tech_SS_PLB);

EQUATIONS EqPLB3(set_ii,set_pss) Restriktion minimale Leistung Spitzenlastkessel;
EqPLB3(set_t,set_tech_SS_PLB)$(set_pss_opt(set_tech_SS_PLB) AND par_X_pss_model(set_tech_SS_PLB) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_PLB,set_toPss)$set_energyLink_opt('W',set_tech_SS_PLB,set_toPss))
                 =l=
                 par_Q_SS_PLB_min(set_tech_SS_PLB)*sca_delta_ii*var_S_pss(set_t,set_tech_SS_PLB);

MODEL mod_tech_SS_PLB_orga / EqPLB1, EqPLB2, EqPLB3 /;
MODEL mod_tech_SS_PLB_cust / EqPLB1, EqPLB2, EqPLB3 /;

