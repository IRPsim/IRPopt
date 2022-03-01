***-----------------------------------------------------------------------------
***Parameter
***-----------------------------------------------------------------------------
PARAMETER par_SOC_SS_PHS_cap_help(set_tech_SS_PHS);
par_SOC_SS_PHS_cap_help(set_tech_SS_PHS)= par_SOC_SS_PHS_cap(set_tech_SS_PHS)* (1-par_SOC_SS_PHS_min(set_tech_SS_PHS));
PARAMETER par_SOC_SS_PHS_min_help(set_tech_SS_PHS);
par_SOC_SS_PHS_min_help(set_tech_SS_PHS) = 0;
PARAMETER par_SOC_SS_PHS_initial(set_ii_0,set_tech_SS_PHS);
par_SOC_SS_PHS_initial(set_ii_0,set_tech_SS_PHS)$(ORD(set_ii_0)=1) = par_SOC_SS_PHS_cap(set_tech_SS_PHS) * 0;

***-----------------------------------------------------------------------------
***Variablen
***-----------------------------------------------------------------------------

POSITIVE VARIABLE var_SOC_SS_PHS(set_ii_0,set_tech_SS_PHS) Energiespeicherfüllstand Pumpspeichermodell;
POSITIVE VARIABLE var_SOC_SS_PHS_help(set_ii_0,set_tech_SS_PHS) Hilfsvariable Energiespeicherfüllstand Pumpspeicher;
BINARY VARIABLE   var_turbine_PHS(set_ii,set_tech_SS_PHS) Statusvariable Laden elektr. Speichermodell;
BINARY VARIABLE   var_pump_PHS(set_ii,set_tech_SS_PHS) Statusvariable Entladen Pumpspeichermodell;

***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
EQUATIONS EqPHS0(set_ii_0,set_pss) Restriktion initialer Energiespeicherfüllstand Stromspeicher;
EqPHS0(set_t_ini,set_tech_SS_PHS)$(set_pss_opt(set_tech_SS_PHS) AND par_X_pss_model(set_tech_SS_PHS)=1)..
                 var_SOC_SS_PHS_help(set_t_ini, set_tech_SS_PHS)
                 =e=
                 par_SOC_SS_PHS_initial(set_t_ini,set_tech_SS_PHS);

EQUATIONS EqPHS1(set_ii_0,set_pss) Restriktion aktueller Energiespeicherfüllstand Stromspeicher;
EqPHS1(set_ii_0,set_tech_SS_PHS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_SS_PHS) AND par_X_pss_model(set_tech_SS_PHS)=1)..
                 var_SOC_SS_PHS_help(set_ii_0, set_tech_SS_PHS)
                 =e=
                 var_SOC_SS_PHS_help(set_ii_0-1, set_tech_SS_PHS) + par_Eta_SS_PHS_pump(set_tech_SS_PHS) * SUM(set_fromPss,var_energyFlow(set_ii_0,'E',set_fromPss,set_tech_SS_PHS)$set_energyLink_opt('E',set_fromPss,set_tech_SS_PHS))
                 - SUM(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_PHS,set_toPss)$set_energyLink_opt('E',set_tech_SS_PHS,set_toPss)) / par_Eta_SS_PHS_turbine(set_tech_SS_PHS);

EQUATIONS EqPHS2(set_ii,set_pss) Restriktion maximale Entladeenergie Stromspeicher;
EqPHS2(set_t,set_tech_SS_PHS)$(set_pss_opt(set_tech_SS_PHS) AND par_X_pss_model(set_tech_SS_PHS)=1)..
                 SUM(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_PHS,set_toPss)$set_energyLink_opt('E',set_tech_SS_PHS,set_toPss))
                 =l=
                 par_P_SS_PHS_turbine_max(set_tech_SS_PHS) * sca_delta_ii
                 * var_turbine_PHS(set_t,set_tech_SS_PHS);

EQUATIONS EqPHS3(set_ii,set_pss) Restriktion maximale Ladeenergie Stromspeicher;
EqPHS3(set_t,set_tech_SS_PHS)$(set_pss_opt(set_tech_SS_PHS) AND par_X_pss_model(set_tech_SS_PHS)=1)..
                 SUM(set_fromPss,var_energyFlow(set_t,'E',set_fromPss,set_tech_SS_PHS)$set_energyLink_opt('E',set_fromPss,set_tech_SS_PHS))
                 =l=
                 par_P_SS_PHS_pump_max(set_tech_SS_PHS) * sca_delta_ii
                 * var_pump_PHS(set_t,set_tech_SS_PHS);

EQUATIONS EqPHS4(set_ii,set_pss) Restriktion maxinmaler Energiespeicherfüllstand elektriches Speichermodell;
EqPHS4(set_t,set_tech_SS_PHS)$(set_pss_opt(set_tech_SS_PHS) AND par_X_pss_model(set_tech_SS_PHS)=1)..
                 var_SOC_SS_PHS_help(set_t, set_tech_SS_PHS)
                 =l=
                 par_SOC_SS_PHS_cap_help(set_tech_SS_PHS) * par_SOC_SS_PHS_max(set_tech_SS_PHS);

EQUATIONS EqPHS5(set_ii,set_pss) Restriktion mininimaler Energiespeicherfüllstand Pumpspeichermodell;
EqPHS5(set_t,set_tech_SS_PHS)$(set_pss_opt(set_tech_SS_PHS) AND par_X_pss_model(set_tech_SS_PHS) eq 1)..
                 var_SOC_SS_PHS_help(set_t, set_tech_SS_PHS)
                 =g=
                 par_SOC_SS_PHS_cap_help(set_tech_SS_PHS) * par_SOC_SS_PHS_min_help(set_tech_SS_PHS);

EQUATIONS EqPHS6(set_ii,set_pss) Restriktion gleichzeitiges Entladen und Beladen;
EqPHS6(set_t,set_tech_SS_PHS)$(set_pss_opt(set_tech_SS_PHS) AND par_X_pss_model(set_tech_SS_PHS) eq 1 and par_X_E_SS_PHS_sim(set_tech_SS_PHS)=1)..
                 var_pump_PHS(set_t,set_tech_SS_PHS) + var_turbine_PHS(set_t,set_tech_SS_PHS)
                 =l=
                 1;

EQUATIONS EqPHS10(set_ii,set_tech_SS_PHS) Restriktion maximale Entladeleistung zur Vorhaltung positiver Regelenergie Pumpspeicher;
EqPHS10(set_t,set_tech_SS_PHS)$(set_pss_opt(set_tech_SS_PHS) AND par_X_pss_model(set_tech_SS_PHS) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_t,'PR',set_tech_SS_PHS,set_toPss)$set_energyLink_opt('PR',set_tech_SS_PHS,set_toPss))
                 =l=
                 par_P_SS_PHS_turbine_max(set_tech_SS_PHS) * par_H_pss_techavail(set_t,set_tech_SS_PHS) * sca_delta_ii
                 - SUM(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_PHS,set_toPss)$set_energyLink_opt('E',set_tech_SS_PHS,set_toPss));

EQUATIONS EqPHS11(set_ii,set_tech_SS_PHS) Restriktion maximale Ladeleistung zur Vorhaltung negativer Regelenergie Pumpspeicher;
EqPHS11(set_t,set_tech_SS_PHS)$(set_pss_opt(set_tech_SS_PHS) AND par_X_pss_model(set_tech_SS_PHS) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_t,'NR',set_tech_SS_PHS,set_toPss)$set_energyLink_opt('NR',set_tech_SS_PHS,set_toPss))
                 =l=
                 par_P_SS_PHS_pump_max(set_tech_SS_PHS) * par_H_pss_techavail(set_t,set_tech_SS_PHS) * sca_delta_ii
                 - SUM(set_fromPss,var_energyFlow(set_t,'E',set_fromPss,set_tech_SS_PHS)$set_energyLink_opt('E',set_fromPss,set_tech_SS_PHS));


EQUATIONS EqPHS12(set_ii_0,set_tech_SS_PHS) Restriktion minimaler Energiespeicherfüllstand zur Vorhaltung positiver Regelenergie Pumpspeicher;
EqPHS12(set_ii_0,set_tech_SS_PHS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_SS_PHS) AND par_X_pss_model(set_tech_SS_PHS) eq 1)..
                 par_SOC_SS_PHS_cap_help(set_tech_SS_PHS) * par_SOC_SS_PHS_min_help(set_tech_SS_PHS)
                 =l=
                 var_SOC_SS_PHS_help(set_ii_0-1, set_tech_SS_PHS) + par_Eta_SS_PHS_pump(set_tech_SS_PHS) * SUM(set_fromPss,var_energyFlow(set_ii_0,'E',set_fromPss,set_tech_SS_PHS)$set_energyLink_opt('E',set_fromPss,set_tech_SS_PHS))
                 - SUM(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_PHS,set_toPss)$set_energyLink_opt('E',set_tech_SS_PHS,set_toPss)) / par_Eta_SS_PHS_turbine(set_tech_SS_PHS)
                 - (SUM(set_toPss,var_energyFlow(set_ii_0,'PR',set_tech_SS_PHS,set_toPss)$set_energyLink_opt('PR',set_tech_SS_PHS,set_toPss)) / par_Eta_SS_PHS_turbine(set_tech_SS_PHS));

EQUATIONS EqPHS13(set_ii_0,set_tech_SS_PHS) Restriktion maximaler Energiespeicherfüllstand zur Vorhaltung negativer Regelenergie Pumpspeicher;
EqPHS13(set_ii_0,set_tech_SS_PHS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_SS_PHS) AND par_X_pss_model(set_tech_SS_PHS) eq 1)..
                 par_SOC_SS_PHS_cap_help(set_tech_SS_PHS) * par_SOC_SS_PHS_max(set_tech_SS_PHS)
                 =g=
                 var_SOC_SS_PHS_help(set_ii_0-1, set_tech_SS_PHS) + par_Eta_SS_PHS_pump(set_tech_SS_PHS) * SUM(set_fromPss,var_energyFlow(set_ii_0,'E',set_fromPss,set_tech_SS_PHS)$set_energyLink_opt('E',set_fromPss,set_tech_SS_PHS))
                 - SUM(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_PHS,set_toPss)$set_energyLink_opt('E',set_tech_SS_PHS,set_toPss)) / par_Eta_SS_PHS_turbine(set_tech_SS_PHS)
                 + par_Eta_SS_PHS_pump(set_tech_SS_PHS) * SUM(set_toPss,var_energyFlow(set_ii_0,'NR',set_tech_SS_PHS,set_toPss)$set_energyLink_opt('NR',set_tech_SS_PHS,set_toPss));

EQUATIONS EqPHS14(set_ii_0,set_tech_SS_PHS) Restriktion eigentlicher SOC gemäß vorgegebener Kapazität Pumpspeicher;
EqPHS14(set_ii_0,set_tech_SS_PHS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_SS_PHS))..
                 var_SOC_SS_PHS_help(set_ii_0, set_tech_SS_PHS) + par_SOC_SS_PHS_cap_help(set_tech_SS_PHS)*par_SOC_SS_PHS_min(set_tech_SS_PHS)
                 =e=
                 var_SOC_SS_PHS(set_ii_0, set_tech_SS_PHS);

*Verfügbarkeit
Equation EqPHS4_SS(set_ii_0,set_pss) Verfügbarkeit;
EqPHS4_SS(set_t,set_tech_SS_PHS)$(set_pss_opt(set_tech_SS_PHS) AND par_X_pss_model(set_tech_SS_PHS) eq 1)..
                  var_S_pss(set_t,set_tech_SS_PHS)
                  =l=
                  par_H_pss_techavail(set_t,set_tech_SS_PHS);



MODEL mod_tech_SS_PHS_orga / EqPHS0, EqPHS1, EqPHS2, EqPHS3, EqPHS4, EqPHS5, EqPHS6, EqPHS10, EqPHS11, EqPHS12, EqPHS13, EqPHS14 /;
MODEL mod_tech_SS_PHS_cust / EqPHS0, EqPHS1, EqPHS2, EqPHS3, EqPHS4, EqPHS5, EqPHS6, EqPHS10, EqPHS11, EqPHS12, EqPHS13, EqPHS14  /;


