***-----------------------------------------------------------------------------
***Parameter
***-----------------------------------------------------------------------------
PARAMETER par_SOC_DES_HS_cap_help(set_tech_DES_HS);
par_SOC_DES_HS_cap_help(set_tech_DES_HS)= par_SOC_DES_HS_cap(set_tech_DES_HS)* (1-par_SOC_DES_HS_min(set_tech_DES_HS));
PARAMETER par_SOC_DES_HS_min_help(set_tech_DES_HS);
par_SOC_DES_HS_min_help(set_tech_DES_HS) = 0;
PARAMETER par_SOC_DES_HS_initial(set_ii_0,set_tech_DES_HS);
par_SOC_DES_HS_initial(set_ii_0,set_tech_DES_HS)$(ORD(set_ii_0)=1) = par_SOC_DES_HS_cap(set_tech_DES_HS) * par_alpha_DES_HS_Ins(set_tech_DES_HS);


***-----------------------------------------------------------------------------
***Variablen
***-----------------------------------------------------------------------------
POSITIVE VARIABLE var_SOC_DES_HS(set_ii_0,set_tech_DES_HS) Energiespeicherfüllstand Wasserstoffspeicher;
POSITIVE VARIABLE var_SOC_DES_HS_help(set_ii_0,set_tech_DES_HS) Energiespeicherfüllstand Wasserstoffspeicher;
BINARY VARIABLE   var_charge_HS(set_ii,set_tech_DES_HS) Statusvariable Laden Wasserstoffspeicher;
BINARY VARIABLE   var_discharge_HS(set_ii,set_tech_DES_HS) Statusvariable Entladen Wasserstoffspeicher;
POSITIVE VARIABLE var_W_DES_HS_negres(set_ii_0,set_tech_DES_HS) Negative Regelenergie Wasserstoffspeicher;
POSITIVE VARIABLE var_W_DES_HS_posres(set_ii_0,set_tech_DES_HS) Positive Regelenergie Wasserstoffspeicher;

***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
EQUATIONS EqHS0(set_ii_0,set_pss) Restriktion aktueller Energiespeicherfüllstand Wasserstoffspeicher;
EqHS0(set_t_ini,set_tech_DES_HS)$(set_pss_opt(set_tech_DES_HS) AND par_X_pss_model(set_tech_DES_HS)=1)..
                 var_SOC_DES_HS_help(set_t_ini, set_tech_DES_HS)
                 =e=
                 par_SOC_DES_HS_initial(set_t_ini,set_tech_DES_HS);

EQUATIONS EqHS1(set_ii_0,set_pss) Restriktion aktueller Energiespeicherfüllstand Wasserstoffspeicher;
EqHS1(set_ii_0,set_tech_DES_HS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_HS) AND par_X_pss_model(set_tech_DES_HS)=1)..
                 var_SOC_DES_HS_help(set_ii_0, set_tech_DES_HS)
                 =e=
                 var_SOC_DES_HS_help(set_ii_0-1, set_tech_DES_HS) + par_Eta_DES_HS_charge(set_tech_DES_HS) * sum(set_fromPss,var_energyFlow(set_ii_0,'H',set_fromPss,set_tech_DES_HS)$set_energyLink_opt('H',set_fromPss,set_tech_DES_HS))
                 - sum(set_toPss,var_energyFlow(set_ii_0,'H',set_tech_DES_HS,set_toPss)$set_energyLink_opt('H',set_tech_DES_HS,set_toPss)) / par_Eta_DES_HS_discharge(set_tech_DES_HS)
                 - par_Eta_DES_HS_selfdischarge(set_tech_DES_HS) * var_SOC_DES_HS_help(set_ii_0-1, set_tech_DES_HS);


EQUATIONS EqHS2(set_ii,set_pss) Restriktion maximale Ladeenergie Wasserstoffspeicher;
EqHS2(set_t,set_tech_DES_HS)$(set_pss_opt(set_tech_DES_HS) AND par_X_pss_model(set_tech_DES_HS)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'H',set_tech_DES_HS,set_toPss)$set_energyLink_opt('H',set_tech_DES_HS,set_toPss))
                 =l=
                 par_P_DES_HS_discharge_max(set_tech_DES_HS) * sca_delta_ii;

EQUATIONS EqHS3(set_ii,set_pss) Restriktion maximale Entladeenergie Wasserstoffspeicher;
EqHS3(set_t,set_tech_DES_HS)$(set_pss_opt(set_tech_DES_HS) AND par_X_pss_model(set_tech_DES_HS)=1)..
                 sum(set_fromPss,var_energyFlow(set_t,'H',set_fromPss,set_tech_DES_HS)$set_energyLink_opt('H',set_fromPss,set_tech_DES_HS))
                 =l=
                 par_P_DES_HS_charge_max(set_tech_DES_HS) * sca_delta_ii;

EQUATIONS EqHS4(set_ii,set_pss) Restriktion maxinmaler Energiespeicherfüllstand Wasserstoffspeicher;
EqHS4(set_t,set_tech_DES_HS)$set_pss_opt(set_tech_DES_HS)..
                 var_SOC_DES_HS_help(set_t, set_tech_DES_HS)
                 =l=
                 par_SOC_DES_HS_cap_help(set_tech_DES_HS) * par_SOC_DES_HS_max(set_tech_DES_HS);

EQUATIONS EqHS5(set_ii,set_pss) Restriktion mininimaler Energiespeicherfüllstand Wasserstoffspeicher;
EqHS5(set_t,set_tech_DES_HS)$(set_pss_opt(set_tech_DES_HS) AND par_X_pss_model(set_tech_DES_HS)=1)..
                 var_SOC_DES_HS_help(set_t, set_tech_DES_HS)
                 =g=
                 par_SOC_DES_HS_cap_help(set_tech_DES_HS) * par_SOC_DES_HS_min_help(set_tech_DES_HS);

$ontext
EQUATIONS EqHS6(set_ii,set_tech_DES_HS) Restriktion maximale Ladeleistung zur Aufnahme der Regelenergie Wasserstoffspeicher;
EqHS6(set_t,set_tech_DES_HS)$set_pss_opt(set_tech_DES_HS)..
                 sum(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_HS,set_toPss)$set_energyLink_opt('PR',set_tech_DES_HS,set_toPss))
                 =l=
                 par_P_DES_HS_discharge_max(set_tech_DES_HS) * sca_delta_ii
                 - sum(set_toPss,var_energyFlow(set_t,'H',set_tech_DES_HS,set_toPss)$set_energyLink_opt('H',set_tech_DES_HS,set_toPss)) + sum(set_fromPss,var_energyFlow(set_t,'H',set_fromPss,set_tech_DES_HS)$set_energyLink_opt('H',set_fromPss,set_tech_DES_HS)) ;

EQUATIONS EqHS7(set_ii,set_tech_DES_HS) Restriktion maximale Ladeleistung zur Aufnahme der Regelenergie Wasserstoffspeicher;
EqHS7(set_t,set_tech_DES_HS)$set_pss_opt(set_tech_DES_HS)..
                 sum(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_HS,set_toPss)$set_energyLink_opt('NR',set_tech_DES_HS,set_toPss))
                 =l=
                 par_P_DES_HS_charge_max(set_tech_DES_HS) * sca_delta_ii
                 - sum(set_fromPss,var_energyFlow(set_t,'H',set_fromPss,set_tech_DES_HS)$set_energyLink_opt('H',set_fromPss,set_tech_DES_HS)) + sum(set_toPss,var_energyFlow(set_t,'H',set_tech_DES_HS,set_toPss)$set_energyLink_opt('H',set_tech_DES_HS,set_toPss));

EQUATIONS EqHS8(set_ii_0,set_tech_DES_HS) Begrenzung minimaler Energiespeicherfüllstand zur Vorhaltung positiver Regelenergie Wasserstoffspeicher;
EqHS8(set_ii_0,set_tech_DES_HS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_HS))..
                par_SOC_DES_HS_cap(set_tech_DES_HS) * par_SOC_DES_HS_min(set_tech_DES_HS)
                 =l=
                 var_SOC_DES_HS(set_ii_0-1, set_tech_DES_HS) + par_Eta_DES_HS_charge(set_tech_DES_HS) * sum(set_fromPss,var_energyFlow(set_ii_0,'H',set_fromPss,set_tech_DES_HS)$set_energyLink_opt('H',set_fromPss,set_tech_DES_HS))
                 - sum(set_toPss,var_energyFlow(set_ii_0,'H',set_tech_DES_HS,set_toPss)$set_energyLink_opt('H',set_tech_DES_HS,set_toPss)) / par_Eta_DES_HS_discharge(set_tech_DES_HS)
                 - sum(set_toPss,var_energyFlow(set_ii_0,'PR',set_tech_DES_HS,set_toPss)$set_energyLink_opt('PR',set_tech_DES_HS,set_toPss)) / par_Eta_DES_HS_discharge(set_tech_DES_HS);

EQUATIONS EqHS9(set_ii_0,set_tech_DES_HS) Begrenzung maximaler Energiespeicherfüllstand zur Vorhaltung negativer Regelenergie Wasserstoffspeicher;
EqHS9(set_ii_0,set_tech_DES_HS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_HS))..
                 par_SOC_DES_HS_cap(set_tech_DES_HS) * par_SOC_DES_HS_max(set_tech_DES_HS)
                 =g=
                 var_SOC_DES_HS(set_ii_0-1, set_tech_DES_HS) + par_Eta_DES_HS_charge(set_tech_DES_HS) * sum(set_fromPss,var_energyFlow(set_ii_0,'H',set_fromPss,set_tech_DES_HS)$set_energyLink_opt('H',set_fromPss,set_tech_DES_HS))
                 - sum(set_toPss,var_energyFlow(set_ii_0,'H',set_tech_DES_HS,set_toPss)$set_energyLink_opt('H',set_tech_DES_HS,set_toPss)) / par_Eta_DES_HS_discharge(set_tech_DES_HS)
                 + par_Eta_DES_HS_charge(set_tech_DES_HS) * sum(set_toPss,var_energyFlow(set_ii_0,'NR',set_tech_DES_HS,set_toPss)$set_energyLink_opt('NR',set_tech_DES_HS,set_toPss));

$offtext
EQUATIONS EqHS6(set_ii,set_tech_DES_HS) Restriktion maximale Entladeleistung zur Vorhaltung positiver Regelenergie Stromspeicher;
EqHS6(set_t,set_tech_DES_HS)$(set_pss_opt(set_tech_DES_HS) AND par_X_pss_model(set_tech_DES_HS)=1)..
                 SUM(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_HS,set_toPss)$set_energyLink_opt('PR',set_tech_DES_HS,set_toPss))
                 =l=
                 par_P_DES_HS_discharge_max(set_tech_DES_HS) * sca_delta_ii
                 - SUM(set_toPss,var_energyFlow(set_t,'H',set_tech_DES_HS,set_toPss)$set_energyLink_opt('H',set_tech_DES_HS,set_toPss));

EQUATIONS EqHS7(set_ii,set_tech_DES_HS) Restriktion maximale Ladeleistung zur Vorhaltung negativer Regelenergie Stromspeicher;
EqHS7(set_t,set_tech_DES_HS)$(set_pss_opt(set_tech_DES_HS) AND par_X_pss_model(set_tech_DES_HS)=1)..
                 SUM(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_HS,set_toPss)$set_energyLink_opt('NR',set_tech_DES_HS,set_toPss))
                 =l=
                 par_P_DES_HS_charge_max(set_tech_DES_HS) * sca_delta_ii
                 - SUM(set_fromPss,var_energyFlow(set_t,'H',set_fromPss,set_tech_DES_HS)$set_energyLink_opt('H',set_fromPss,set_tech_DES_HS));


EQUATIONS EqHS8(set_ii_0,set_tech_DES_HS) Restriktion minimaler Energiespeicherfüllstand zur Vorhaltung positiver Regelenergie Stromspeicher;
EqHS8(set_ii_0,set_tech_DES_HS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_HS) AND par_X_pss_model(set_tech_DES_HS)=1)..
                 par_SOC_DES_HS_cap_help(set_tech_DES_HS) * par_SOC_DES_HS_min_help(set_tech_DES_HS)
                 =l=
                 var_SOC_DES_HS_help(set_ii_0-1, set_tech_DES_HS) + par_Eta_DES_HS_charge(set_tech_DES_HS) * SUM(set_fromPss,var_energyFlow(set_ii_0,'H',set_fromPss,set_tech_DES_HS)$set_energyLink_opt('H',set_fromPss,set_tech_DES_HS))
                 - SUM(set_toPss,var_energyFlow(set_ii_0,'H',set_tech_DES_HS,set_toPss)$set_energyLink_opt('H',set_tech_DES_HS,set_toPss)) / par_Eta_DES_HS_discharge(set_tech_DES_HS)
                 - (SUM(set_toPss,var_energyFlow(set_ii_0,'PR',set_tech_DES_HS,set_toPss)$set_energyLink_opt('PR',set_tech_DES_HS,set_toPss)) / par_Eta_DES_HS_discharge(set_tech_DES_HS));

EQUATIONS EqHS9(set_ii_0,set_tech_DES_HS) Restriktion maximaler Energiespeicherfüllstand zur Vorhaltung negativer Regelenergie Stromspeicher;
EqHS9(set_ii_0,set_tech_DES_HS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_HS) AND par_X_pss_model(set_tech_DES_HS)=1)..
                 par_SOC_DES_HS_cap_help(set_tech_DES_HS) * par_SOC_DES_HS_max(set_tech_DES_HS)
                 =g=
                 var_SOC_DES_HS_help(set_ii_0-1, set_tech_DES_HS) + par_Eta_DES_HS_charge(set_tech_DES_HS) * SUM(set_fromPss,var_energyFlow(set_ii_0,'H',set_fromPss,set_tech_DES_HS)$set_energyLink_opt('H',set_fromPss,set_tech_DES_HS))
                 - SUM(set_toPss,var_energyFlow(set_ii_0,'H',set_tech_DES_HS,set_toPss)$set_energyLink_opt('H',set_tech_DES_HS,set_toPss)) / par_Eta_DES_HS_discharge(set_tech_DES_HS)
                 + par_Eta_DES_HS_charge(set_tech_DES_HS) * SUM(set_toPss,var_energyFlow(set_ii_0,'NR',set_tech_DES_HS,set_toPss)$set_energyLink_opt('NR',set_tech_DES_HS,set_toPss));


EQUATIONS EqHS10(set_ii_0,set_pss) Restriktion mininimaler Energiespeicherfüllstand Wasserstoffspeicher;
EqHS10(set_ii_0,set_tech_DES_HS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_HS) AND par_X_pss_model(set_tech_DES_HS)=1)..
                 var_SOC_DES_HS_help(set_ii_0, set_tech_DES_HS) + par_SOC_DES_HS_cap(set_tech_DES_HS)*par_SOC_DES_HS_min(set_tech_DES_HS)
                 =e=
                 var_SOC_DES_HS(set_ii_0, set_tech_DES_HS);


MODEL mod_tech_DES_HS_orga / EqHS0, EqHS1, EqHS2, EqHS3, EqHS4, EqHS5, EqHS10, EqHS6, EqHS7, EqHS8, EqHS9 /;
MODEL mod_tech_DES_HS_cust / EqHS0, EqHS1, EqHS2, EqHS3, EqHS4, EqHS5, EqHS10, EqHS6, EqHS7, EqHS8, EqHS9 /;



