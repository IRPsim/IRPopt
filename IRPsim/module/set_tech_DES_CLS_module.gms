*Chlorspeicher / Massestromspeicher
*Zufluss: (Chlor-)Massestrom
*Abfluss: (Chlor-)Massestrom

***-----------------------------------------------------------------------------
***Parameter
***-----------------------------------------------------------------------------
PARAMETER par_SOC_DES_CLS_cap_help(set_tech_DES_CLS);
par_SOC_DES_CLS_cap_help(set_tech_DES_CLS)= par_SOC_DES_CLS_cap(set_tech_DES_CLS) * (1-par_SOC_DES_CLS_min(set_tech_DES_CLS));
PARAMETER par_SOC_DES_CLS_min_help(set_tech_DES_CLS);
par_SOC_DES_CLS_min_help(set_tech_DES_CLS) = 0;
PARAMETER par_SOC_DES_CLS_initial(set_ii_0,set_tech_DES_CLS);
par_SOC_DES_CLS_initial(set_ii_0,set_tech_DES_CLS)$(ORD(set_ii_0)=1) = par_SOC_DES_CLS_cap(set_tech_DES_CLS) *0;

***-----------------------------------------------------------------------------
***Variablen
***-----------------------------------------------------------------------------
POSITIVE VARIABLE var_SOC_DES_CLS(set_ii_0,set_tech_DES_CLS) Energiespeicherfüllstand Chlorspeicher;
POSITIVE VARIABLE var_SOC_DES_CLS_help(set_ii_0,set_tech_DES_CLS) Energiespeicherfüllstand Chlorspeicher;
BINARY VARIABLE   var_charge_CLS(set_ii,set_tech_DES_CLS) Statusvariable Laden Chlorspeicher;
BINARY VARIABLE   var_discharge_CLS(set_ii,set_tech_DES_CLS) Statusvariable Entladen Chlorspeicher;
POSITIVE VARIABLE var_W_DES_CLS_negres(set_ii_0,set_tech_DES_CLS) Negative Regelenergie Chlorspeicher;
POSITIVE VARIABLE var_W_DES_CLS_posres(set_ii_0,set_tech_DES_CLS) Positive Regelenergie Chlorspeicher;

par_P_DES_CLS_discharge_max(set_tech_DES_CLS)$(par_X_CL_DES_CLS_tank(set_tech_DES_CLS)=1)=par_SOC_DES_CLS_cap_help(set_tech_DES_CLS);
par_P_DES_CLS_charge_max(set_tech_DES_CLS)$(par_X_CL_DES_CLS_tank(set_tech_DES_CLS)=1)=par_SOC_DES_CLS_cap_help(set_tech_DES_CLS);

***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
EQUATIONS EqCLS0(set_ii_0,set_pss) Restriktion aktueller Energiespeicherfüllstand Chlorspeicher;
EqCLS0(set_t_ini,set_tech_DES_CLS)$(set_pss_opt(set_tech_DES_CLS) AND par_X_pss_model(set_tech_DES_CLS)=1)..
                 var_SOC_DES_CLS_help(set_t_ini, set_tech_DES_CLS)
                 =e=
                 par_SOC_DES_CLS_initial(set_t_ini,set_tech_DES_CLS);

EQUATIONS EqCLS1(set_ii_0,set_pss) Restriktion aktueller Energiespeicherfüllstand Chlorspeicher;
EqCLS1(set_ii_0,set_tech_DES_CLS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_CLS) AND par_X_pss_model(set_tech_DES_CLS)=1)..
                 var_SOC_DES_CLS_help(set_ii_0, set_tech_DES_CLS)
                 =e=
                 var_SOC_DES_CLS_help(set_ii_0-1, set_tech_DES_CLS) + par_Eta_DES_CLS_charge(set_tech_DES_CLS) * sum(set_fromPss,var_energyFlow(set_ii_0,'CL',set_fromPss,set_tech_DES_CLS)$set_energyLink_opt('CL',set_fromPss,set_tech_DES_CLS))
                 - sum(set_toPss,var_energyFlow(set_ii_0,'CL',set_tech_DES_CLS,set_toPss)$set_energyLink_opt('CL',set_tech_DES_CLS,set_toPss)) / par_Eta_DES_CLS_discharge(set_tech_DES_CLS)
                 - par_Eta_DES_CLS_selfdischarge(set_tech_DES_CLS) * var_SOC_DES_CLS_help(set_ii_0-1, set_tech_DES_CLS);


EQUATIONS EqCLS2(set_ii,set_pss) Restriktion maximale Ladeenergie Chlorspeicher;
EqCLS2(set_t,set_tech_DES_CLS)$(set_pss_opt(set_tech_DES_CLS) AND par_X_pss_model(set_tech_DES_CLS)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'CL',set_tech_DES_CLS,set_toPss)$set_energyLink_opt('CL',set_tech_DES_CLS,set_toPss))
                 =l=
                 par_P_DES_CLS_discharge_max(set_tech_DES_CLS) * sca_delta_ii * var_S_pss(set_t,set_tech_DES_CLS);

EQUATIONS EqCLS3(set_ii,set_pss) Restriktion maximale Entladeenergie Chlorspeicher;
EqCLS3(set_t,set_tech_DES_CLS)$(set_pss_opt(set_tech_DES_CLS) AND par_X_pss_model(set_tech_DES_CLS)=1)..
                 sum(set_fromPss,var_energyFlow(set_t,'CL',set_fromPss,set_tech_DES_CLS)$set_energyLink_opt('CL',set_fromPss,set_tech_DES_CLS))
                 =l=
                 par_P_DES_CLS_charge_max(set_tech_DES_CLS) * sca_delta_ii * var_S_pss(set_t,set_tech_DES_CLS);

EQUATIONS EqCLS4(set_ii,set_pss) Restriktion maxinmaler Energiespeicherfüllstand Chlorspeicher;
EqCLS4(set_t,set_tech_DES_CLS)$set_pss_opt(set_tech_DES_CLS)..
                 var_SOC_DES_CLS_help(set_t, set_tech_DES_CLS)
                 =l=
                 par_SOC_DES_CLS_cap_help(set_tech_DES_CLS) * par_SOC_DES_CLS_max(set_tech_DES_CLS);

EQUATIONS EqCLS5(set_ii,set_pss) Restriktion mininimaler Energiespeicherfüllstand Chlorspeicher;
EqCLS5(set_t,set_tech_DES_CLS)$(set_pss_opt(set_tech_DES_CLS) AND par_X_pss_model(set_tech_DES_CLS)=1)..
                 var_SOC_DES_CLS_help(set_t, set_tech_DES_CLS)
                 =g=
                 par_SOC_DES_CLS_cap_help(set_tech_DES_CLS) * par_SOC_DES_CLS_min_help(set_tech_DES_CLS);

EQUATIONS EqCLS6(set_ii,set_tech_DES_CLS) Restriktion maximale Entladeleistung zur Vorhaltung positiver Regelenergie Stromspeicher;
EqCLS6(set_t,set_tech_DES_CLS)$(set_pss_opt(set_tech_DES_CLS) AND par_X_pss_model(set_tech_DES_CLS)=1)..
                 SUM(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_CLS,set_toPss)$set_energyLink_opt('PR',set_tech_DES_CLS,set_toPss))
                 =l=
                 par_P_DES_CLS_discharge_max(set_tech_DES_CLS) * sca_delta_ii * var_S_pss(set_t,set_tech_DES_CLS)
                 - SUM(set_toPss,var_energyFlow(set_t,'CL',set_tech_DES_CLS,set_toPss)$set_energyLink_opt('CL',set_tech_DES_CLS,set_toPss));

EQUATIONS EqCLS7(set_ii,set_tech_DES_CLS) Restriktion maximale Ladeleistung zur Vorhaltung negativer Regelenergie Stromspeicher;
EqCLS7(set_t,set_tech_DES_CLS)$(set_pss_opt(set_tech_DES_CLS) AND par_X_pss_model(set_tech_DES_CLS)=1)..
                 SUM(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_CLS,set_toPss)$set_energyLink_opt('NR',set_tech_DES_CLS,set_toPss))
                 =l=
                 par_P_DES_CLS_charge_max(set_tech_DES_CLS) * sca_delta_ii *var_S_pss(set_t,set_tech_DES_CLS)
                 - SUM(set_fromPss,var_energyFlow(set_t,'CL',set_fromPss,set_tech_DES_CLS)$set_energyLink_opt('CL',set_fromPss,set_tech_DES_CLS));


EQUATIONS EqCLS8(set_ii_0,set_tech_DES_CLS) Restriktion minimaler Energiespeicherfüllstand zur Vorhaltung positiver Regelenergie Stromspeicher;
EqCLS8(set_ii_0,set_tech_DES_CLS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_CLS) AND par_X_pss_model(set_tech_DES_CLS)=1)..
                 par_SOC_DES_CLS_cap_help(set_tech_DES_CLS) * par_SOC_DES_CLS_min_help(set_tech_DES_CLS)
                 =l=
                 var_SOC_DES_CLS_help(set_ii_0-1, set_tech_DES_CLS) + par_Eta_DES_CLS_charge(set_tech_DES_CLS) * SUM(set_fromPss,var_energyFlow(set_ii_0,'CL',set_fromPss,set_tech_DES_CLS)$set_energyLink_opt('CL',set_fromPss,set_tech_DES_CLS))
                 - SUM(set_toPss,var_energyFlow(set_ii_0,'CL',set_tech_DES_CLS,set_toPss)$set_energyLink_opt('CL',set_tech_DES_CLS,set_toPss)) / par_Eta_DES_CLS_discharge(set_tech_DES_CLS)
                 - (SUM(set_toPss,var_energyFlow(set_ii_0,'PR',set_tech_DES_CLS,set_toPss)$set_energyLink_opt('PR',set_tech_DES_CLS,set_toPss)) / par_Eta_DES_CLS_discharge(set_tech_DES_CLS));

EQUATIONS EqCLS9(set_ii_0,set_tech_DES_CLS) Restriktion maximaler Energiespeicherfüllstand zur Vorhaltung negativer Regelenergie Stromspeicher;
EqCLS9(set_ii_0,set_tech_DES_CLS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_CLS) AND par_X_pss_model(set_tech_DES_CLS)=1)..
                 par_SOC_DES_CLS_cap_help(set_tech_DES_CLS) * par_SOC_DES_CLS_max(set_tech_DES_CLS)
                 =g=
                 var_SOC_DES_CLS_help(set_ii_0-1, set_tech_DES_CLS) + par_Eta_DES_CLS_charge(set_tech_DES_CLS) * SUM(set_fromPss,var_energyFlow(set_ii_0,'CL',set_fromPss,set_tech_DES_CLS)$set_energyLink_opt('CL',set_fromPss,set_tech_DES_CLS))
                 - SUM(set_toPss,var_energyFlow(set_ii_0,'CL',set_tech_DES_CLS,set_toPss)$set_energyLink_opt('CL',set_tech_DES_CLS,set_toPss)) / par_Eta_DES_CLS_discharge(set_tech_DES_CLS)
                 + par_Eta_DES_CLS_charge(set_tech_DES_CLS) * SUM(set_toPss,var_energyFlow(set_ii_0,'NR',set_tech_DES_CLS,set_toPss)$set_energyLink_opt('NR',set_tech_DES_CLS,set_toPss));

EQUATIONS EqCLS10(set_ii,set_pss) Restriktion Tankwagen (nur komplette Entladung möglich) Chlorspeicher;
EqCLS10(set_t,set_tech_DES_CLS)$(set_pss_opt(set_tech_DES_CLS) AND par_X_pss_model(set_tech_DES_CLS)=1 AND par_X_CL_DES_CLS_tank(set_tech_DES_CLS)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'CL',set_tech_DES_CLS,set_toPss)$set_energyLink_opt('CL',set_tech_DES_CLS,set_toPss))
                 =g=
                 par_SOC_DES_CLS_cap(set_tech_DES_CLS) * (par_SOC_DES_CLS_max(set_tech_DES_CLS) - par_SOC_DES_CLS_min(set_tech_DES_CLS))* 0.9 * var_S_pss(set_t,set_tech_DES_CLS);

EQUATIONS EqCLS99(set_ii_0,set_pss) Restriktion mininimaler Energiespeicherfüllstand Chlorspeicher;
EqCLS99(set_ii_0,set_tech_DES_CLS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_CLS) AND par_X_pss_model(set_tech_DES_CLS)=1)..
                 var_SOC_DES_CLS_help(set_ii_0, set_tech_DES_CLS) + par_SOC_DES_CLS_cap(set_tech_DES_CLS)*par_SOC_DES_CLS_min(set_tech_DES_CLS)
                 =e=
                 var_SOC_DES_CLS(set_ii_0, set_tech_DES_CLS);

MODEL mod_tech_DES_CLS_orga / EqCLS0, EqCLS1, EqCLS2, EqCLS3, EqCLS4, EqCLS5, EqCLS6, EqCLS7, EqCLS8, EqCLS9, EqCLS10, EqCLS99 /;
MODEL mod_tech_DES_CLS_cust / EqCLS0, EqCLS1, EqCLS2, EqCLS3, EqCLS4, EqCLS5, EqCLS6, EqCLS7, EqCLS8, EqCLS9, EqCLS10, EqCLS99 /;



