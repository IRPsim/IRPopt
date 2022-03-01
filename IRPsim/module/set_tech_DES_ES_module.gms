***-----------------------------------------------------------------------------
***Parameter
***-----------------------------------------------------------------------------
PARAMETER par_E_DES_ES_charge_total_initial(set_ii_0,set_tech_DES_ES);
par_E_DES_ES_charge_total_initial(set_ii_0,set_tech_DES_ES) = 0;
PARAMETER par_SOC_DES_ES_cap_help(set_tech_DES_ES);
par_SOC_DES_ES_cap_help(set_tech_DES_ES)= par_SOC_DES_ES_cap(set_tech_DES_ES)* (1-par_SOC_DES_ES_min(set_tech_DES_ES));

PARAMETER par_SOC_DES_ES_min_help(set_tech_DES_ES);
par_SOC_DES_ES_min_help(set_tech_DES_ES) = 0;
PARAMETER par_SOC_DES_ES_initial(set_ii_0,set_tech_DES_ES);
par_SOC_DES_ES_initial(set_ii_0,set_tech_DES_ES)$(ORD(set_ii_0)=1) = par_SOC_DES_ES_cap(set_tech_DES_ES) * 0;

***-----------------------------------------------------------------------------
***Variablen
***-----------------------------------------------------------------------------
POSITIVE VARIABLE var_SOC_DES_ES(set_ii_0,set_tech_DES_ES) Energiespeicherfüllstand Stromspeicher;
POSITIVE VARIABLE var_SOC_DES_ES_help(set_ii_0,set_tech_DES_ES) Hilfsvariable Energiespeicherfüllstand Stromspeicher;
BINARY VARIABLE   var_E_DES_ES_charge(set_ii,set_tech_DES_ES) Statusvariable Laden Stromspeicher;
BINARY VARIABLE   var_E_DES_ES_discharge(set_ii,set_tech_DES_ES) Statusvariable Entladen Stromspeicher;
POSITIVE VARIABLE var_E_DES_ES_charge_share(set_ii,set_tech_DES_ES) Anteil Laden Stromspeicher;  ;
POSITIVE VARIABLE var_E_DES_ES_discharge_share(set_ii, set_tech_DES_ES) Anteil Entladen Stromspeicher;
POSITIVE VARIABLE var_E_DES_ES_charge_total(set_ii_0, set_tech_DES_ES) Hilfsvariable Zähler Lade- und Entladezyklen Stromspeicher;
POSITIVE VARIABLE var_N_DES_ES_cycles(set_ii, set_tech_DES_ES) Zähler Lade- und Entladezyklen Stromspeicher;

***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
EQUATIONS EqES0(set_ii_0,set_pss) Restriktion initialer Energiespeicherfüllstand Stromspeicher;
EqES0(set_t_ini,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1)..
                 var_SOC_DES_ES_help(set_t_ini, set_tech_DES_ES)
                 =e=
                 par_SOC_DES_ES_initial(set_t_ini,set_tech_DES_ES);

EQUATIONS EqES1(set_ii_0,set_pss) Restriktion aktueller Energiespeicherfüllstand Stromspeicher;
EqES1(set_ii_0,set_tech_DES_ES)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1)..
                 var_SOC_DES_ES_help(set_ii_0, set_tech_DES_ES)
                 =e=
                 var_SOC_DES_ES_help(set_ii_0-1, set_tech_DES_ES) + par_Eta_DES_ES_charge(set_tech_DES_ES) * SUM(set_fromPss,var_energyFlow(set_ii_0,'E',set_fromPss,set_tech_DES_ES)$set_energyLink_opt('E',set_fromPss,set_tech_DES_ES))
                 - SUM(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_DES_ES,set_toPss)$set_energyLink_opt('E',set_tech_DES_ES,set_toPss)) / par_Eta_DES_ES_discharge(set_tech_DES_ES)
                 - par_Eta_DES_ES_selfdischarge(set_tech_DES_ES) * var_SOC_DES_ES_help(set_ii_0-1, set_tech_DES_ES);

EQUATIONS EqES2(set_ii,set_pss) Restriktion maximale Entladeenergie Stromspeicher;
EqES2(set_t,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1)..
                 SUM(set_toPss,var_energyFlow(set_t,'E',set_tech_DES_ES,set_toPss)$set_energyLink_opt('E',set_tech_DES_ES,set_toPss))
                 =l=
                 par_P_DES_ES_discharge_max(set_tech_DES_ES) * sca_delta_ii
                 * var_E_DES_ES_discharge(set_t,set_tech_DES_ES)
                 * par_P_DES_ES_discharge_utilpercent(set_t,set_tech_DES_ES);

EQUATIONS EqES2_1(set_ii,set_pss) Restriktion maximale Entladeenergie Stromspeicher;
EqES2_1(set_t,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1)..
                 SUM(set_toPss,var_energyFlow(set_t,'E',set_tech_DES_ES,set_toPss)$set_energyLink_opt('E',set_tech_DES_ES,set_toPss))
                 =l=
                 par_P_DES_ES_discharge_max(set_tech_DES_ES) * sca_delta_ii
                 * var_E_DES_ES_discharge_share(set_t,set_tech_DES_ES)
                 * par_P_DES_ES_discharge_utilpercent(set_t,set_tech_DES_ES);

EQUATIONS EqES3(set_ii,set_pss) Restriktion maximale Ladeenergie Stromspeicher;
EqES3(set_t,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1)..
                 SUM(set_fromPss,var_energyFlow(set_t,'E',set_fromPss,set_tech_DES_ES)$set_energyLink_opt('E',set_fromPss,set_tech_DES_ES))
                 =l=
                 par_P_DES_ES_charge_max(set_tech_DES_ES) * sca_delta_ii
                 * var_E_DES_ES_charge(set_t,set_tech_DES_ES)
                 * par_P_DES_ES_charge_utilpercent(set_t,set_tech_DES_ES);

EQUATIONS EqES3_1(set_ii,set_pss) Restriktion maximale Ladeenergie Stromspeicher;
EqES3_1(set_t,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1)..
                 SUM(set_fromPss,var_energyFlow(set_t,'E',set_fromPss,set_tech_DES_ES)$set_energyLink_opt('E',set_fromPss,set_tech_DES_ES))
                 =l=
                 par_P_DES_ES_charge_max(set_tech_DES_ES) * sca_delta_ii
                 * var_E_DES_ES_charge_share(set_t,set_tech_DES_ES)
                 * par_P_DES_ES_charge_utilpercent(set_t,set_tech_DES_ES);

EQUATIONS EqES4(set_ii,set_pss) Restriktion maxinmaler Energiespeicherfüllstand elektriches Speichermodell;
EqES4(set_t,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1)..
                 var_SOC_DES_ES_help(set_t, set_tech_DES_ES)
                 =l=
                 par_SOC_DES_ES_cap_help(set_tech_DES_ES) * par_SOC_DES_ES_max(set_tech_DES_ES)
                 * par_SOC_DES_ES_utilpercent(set_t,set_tech_DES_ES);

*aufgrund der Berechnung der nutzbaren Kapazität nicht mehr notwendig
EQUATIONS EqES5(set_ii,set_pss) Restriktion mininimaler Energiespeicherfüllstand Stromspeicher;
EqES5(set_t,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1)..
                 var_SOC_DES_ES_help(set_t, set_tech_DES_ES)
                 =g=
                 par_SOC_DES_ES_cap_help(set_tech_DES_ES) * par_SOC_DES_ES_min_help(set_tech_DES_ES);

EQUATIONS EqES6(set_ii,set_pss) Restriktion gleichzeitiges Entladen und Beladen Stromspeicher;
EqES6(set_t,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1 and par_X_E_DES_ES_sim(set_tech_DES_ES)=1 and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES) ne 1)..
                 var_E_DES_ES_charge(set_t,set_tech_DES_ES) + var_E_DES_ES_discharge(set_t,set_tech_DES_ES)
                 =l=
                 1;

EQUATIONS EqES6_1(set_ii,set_pss) Restriktion Anteil Entladen und Beladen Stromspeicher;
EqES6_1(set_t,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1 and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES) ne 1)..
                 var_E_DES_ES_charge_share(set_t,set_tech_DES_ES) + var_E_DES_ES_discharge_share(set_t,set_tech_DES_ES)
                 =l=
                 1;

EQUATIONS EqES6_2(set_ii,set_pss) Restriktion Anteil Entladen und Beladen Stromspeicher;
EqES6_2(set_t,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1 and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES) ne 1)..
                 var_E_DES_ES_charge_share(set_t,set_tech_DES_ES)
                 =l=
                 1;

EQUATIONS EqES6_3(set_ii,set_pss) Restriktion Anteil Entladen und Beladen Stromspeicher;
EqES6_3(set_t,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1 and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES) ne 1)..
                 var_E_DES_ES_discharge_share(set_t,set_tech_DES_ES)
                 =l=
                 1;

EQUATIONS EqES7(set_ii_0,set_tech_DES_ES) Restriktion initiale Entladezyklenanzahl Stromspeicher;
EqES7(set_t_ini,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1)..
                 var_E_DES_ES_charge_total(set_t_ini, set_tech_DES_ES)
                 =e=
                 par_E_DES_ES_charge_total_initial(set_t_ini,set_tech_DES_ES);

EQUATIONS EqES8(set_ii_0,set_tech_DES_ES) Restriktion aktueller Entladezyklus Stromspeicher;
EqES8(set_ii_0,set_tech_DES_ES)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1)..
                 var_E_DES_ES_charge_total(set_ii_0,set_tech_DES_ES)
                 =e=
                 var_E_DES_ES_charge_total(set_ii_0-1,set_tech_DES_ES) + SUM(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_DES_ES,set_toPss)$set_energyLink_opt('E',set_tech_DES_ES,set_toPss));

EQUATIONS EqES9(set_ii,set_tech_DES_ES) Restriktion aktuelle Entladezyklenanzahl Stromspeicher;
EqES9(set_t,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1)..
                 var_N_DES_ES_cycles(set_t,set_tech_DES_ES)*
                 (par_SOC_DES_ES_cap_help(set_tech_DES_ES) * par_SOC_DES_ES_max(set_tech_DES_ES)
                 - par_SOC_DES_ES_cap_help(set_tech_DES_ES) * par_SOC_DES_ES_min_help(set_tech_DES_ES))
                 =e=
                 var_E_DES_ES_charge_total(set_t,set_tech_DES_ES);

EQUATIONS EqES10(set_ii,set_tech_DES_ES) Restriktion maximale Entladeleistung zur Vorhaltung positiver Regelenergie Stromspeicher;
EqES10(set_t,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1)..
                 SUM(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_ES,set_toPss)$set_energyLink_opt('PR',set_tech_DES_ES,set_toPss))
                 =l=
                 par_P_DES_ES_discharge_max(set_tech_DES_ES) * sca_delta_ii
                 - SUM(set_toPss,var_energyFlow(set_t,'E',set_tech_DES_ES,set_toPss)$set_energyLink_opt('E',set_tech_DES_ES,set_toPss));

EQUATIONS EqES11(set_ii,set_tech_DES_ES) Restriktion maximale Ladeleistung zur Vorhaltung negativer Regelenergie Stromspeicher;
EqES11(set_t,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1)..
                 SUM(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_ES,set_toPss)$set_energyLink_opt('NR',set_tech_DES_ES,set_toPss))
                 =l=
                 par_P_DES_ES_charge_max(set_tech_DES_ES) * sca_delta_ii
                 - SUM(set_fromPss,var_energyFlow(set_t,'E',set_fromPss,set_tech_DES_ES)$set_energyLink_opt('E',set_fromPss,set_tech_DES_ES));


EQUATIONS EqES12(set_ii_0,set_tech_DES_ES) Restriktion minimaler Energiespeicherfüllstand zur Vorhaltung positiver Regelenergie Stromspeicher;
EqES12(set_ii_0,set_tech_DES_ES)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1)..
                 par_SOC_DES_ES_cap_help(set_tech_DES_ES) * par_SOC_DES_ES_min_help(set_tech_DES_ES)
                 =l=
                 var_SOC_DES_ES_help(set_ii_0-1, set_tech_DES_ES) + par_Eta_DES_ES_charge(set_tech_DES_ES) * SUM(set_fromPss,var_energyFlow(set_ii_0,'E',set_fromPss,set_tech_DES_ES)$set_energyLink_opt('E',set_fromPss,set_tech_DES_ES))
                 - SUM(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_DES_ES,set_toPss)$set_energyLink_opt('E',set_tech_DES_ES,set_toPss)) / par_Eta_DES_ES_discharge(set_tech_DES_ES)
                 - (SUM(set_toPss,var_energyFlow(set_ii_0,'PR',set_tech_DES_ES,set_toPss)$set_energyLink_opt('PR',set_tech_DES_ES,set_toPss)) / par_Eta_DES_ES_discharge(set_tech_DES_ES));

EQUATIONS EqES13(set_ii_0,set_tech_DES_ES) Restriktion maximaler Energiespeicherfüllstand zur Vorhaltung negativer Regelenergie Stromspeicher;
EqES13(set_ii_0,set_tech_DES_ES)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1)..
                 par_SOC_DES_ES_cap_help(set_tech_DES_ES) * par_SOC_DES_ES_max(set_tech_DES_ES)
                 =g=
                 var_SOC_DES_ES_help(set_ii_0-1, set_tech_DES_ES) + par_Eta_DES_ES_charge(set_tech_DES_ES) * SUM(set_fromPss,var_energyFlow(set_ii_0,'E',set_fromPss,set_tech_DES_ES)$set_energyLink_opt('E',set_fromPss,set_tech_DES_ES))
                 - SUM(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_DES_ES,set_toPss)$set_energyLink_opt('E',set_tech_DES_ES,set_toPss)) / par_Eta_DES_ES_discharge(set_tech_DES_ES)
                 + par_Eta_DES_ES_charge(set_tech_DES_ES) * SUM(set_toPss,var_energyFlow(set_ii_0,'NR',set_tech_DES_ES,set_toPss)$set_energyLink_opt('NR',set_tech_DES_ES,set_toPss));

EQUATIONS EqES14(set_ii_0,set_tech_DES_ES) Restriktion eigentlicher SOC gemäß vorgegebener Kapazität Stromspeicher;
EqES14(set_ii_0,set_tech_DES_ES)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_ES) AND par_X_pss_model(set_tech_DES_ES)=1)..
                 var_SOC_DES_ES_help(set_ii_0, set_tech_DES_ES) + par_SOC_DES_ES_cap(set_tech_DES_ES)*par_SOC_DES_ES_min(set_tech_DES_ES)
                 =e=
                 var_SOC_DES_ES(set_ii_0, set_tech_DES_ES);

MODEL mod_tech_DES_ES_orga / EqES0, EqES1, EqES2, EqES2_1, EqES3, EqES3_1, EqES4, EqES5, EqES6, EqES6_1, EqES6_2, EqES6_3, EqES7, EqES8, EqES9, EqES10, EqES11, EqES12, EqES13, EqES14/;

MODEL mod_tech_DES_ES_cust / EqES0, EqES1, EqES2, EqES2_1, EqES3, EqES3_1, EqES4, EqES5, EqES6, EqES6_1, EqES6_2, EqES6_3, EqES7, EqES8, EqES9, EqES10, EqES11, EqES12, EqES13, EqES14/;




