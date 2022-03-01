***-----------------------------------------------------------------------------
***Parameter
***-----------------------------------------------------------------------------
PARAMETER par_SOC_DES_GS_cap_help(set_tech_DES_GS);
par_SOC_DES_GS_cap_help(set_tech_DES_GS)= par_SOC_DES_GS_cap(set_tech_DES_GS)* (1-par_SOC_DES_GS_min(set_tech_DES_GS));
PARAMETER par_SOC_DES_GS_min_help(set_tech_DES_GS);
par_SOC_DES_GS_min_help(set_tech_DES_GS) = 0;
PARAMETER par_SOC_DES_GS_initial(set_ii_0,set_tech_DES_GS);
par_SOC_DES_GS_initial(set_ii_0,set_tech_DES_GS)$(ORD(set_ii_0)=1) = par_SOC_DES_GS_cap(set_tech_DES_GS) * 0;


***-----------------------------------------------------------------------------
***Variablen
***-----------------------------------------------------------------------------
POSITIVE VARIABLE var_SOC_DES_GS(set_ii_0,set_tech_DES_GS) Energiespeicherfüllstand Kältespeicher;
POSITIVE VARIABLE var_SOC_DES_GS_help(set_ii_0,set_tech_DES_GS) Energiespeicherfüllstand Kältespeicher;
BINARY VARIABLE   var_charge_GS(set_ii,set_tech_DES_GS) Statusvariable Laden Kältespeicher;
BINARY VARIABLE   var_discharge_GS(set_ii,set_tech_DES_GS) Statusvariable Entladen Kältespeicher;
POSITIVE VARIABLE var_W_DES_GS_negres(set_ii_0,set_tech_DES_GS) Negative Regelenergie Kältespeicher;
POSITIVE VARIABLE var_W_DES_GS_posres(set_ii_0,set_tech_DES_GS) Positive Regelenergie Kältespeicher;

***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
EQUATIONS EqGS0(set_ii_0,set_pss) Restriktion aktueller Energiespeicherfüllstand Kältespeicher;
EqGS0(set_t_ini,set_tech_DES_GS)$(set_pss_opt(set_tech_DES_GS) AND par_X_pss_model(set_tech_DES_GS)=1)..
                 var_SOC_DES_GS_help(set_t_ini, set_tech_DES_GS)
                 =e=
                 par_SOC_DES_GS_initial(set_t_ini,set_tech_DES_GS);

EQUATIONS EqGS1(set_ii_0,set_pss) Restriktion aktueller Energiespeicherfüllstand Kältespeicher;
EqGS1(set_ii_0,set_tech_DES_GS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_GS) AND par_X_pss_model(set_tech_DES_GS)=1)..
                 var_SOC_DES_GS_help(set_ii_0, set_tech_DES_GS)
                 =e=
                 var_SOC_DES_GS_help(set_ii_0-1, set_tech_DES_GS) + par_Eta_DES_GS_charge(set_tech_DES_GS) * sum(set_fromPss,var_energyFlow(set_ii_0,'G',set_fromPss,set_tech_DES_GS)$set_energyLink_opt('G',set_fromPss,set_tech_DES_GS))
                 - sum(set_toPss,var_energyFlow(set_ii_0,'G',set_tech_DES_GS,set_toPss)$set_energyLink_opt('G',set_tech_DES_GS,set_toPss)) / par_Eta_DES_GS_discharge(set_tech_DES_GS)
                 - par_Eta_DES_GS_selfdischarge(set_tech_DES_GS) * var_SOC_DES_GS_help(set_ii_0-1, set_tech_DES_GS);


EQUATIONS EqGS2(set_ii,set_pss) Restriktion maximale Ladeenergie Kältespeicher;
EqGS2(set_t,set_tech_DES_GS)$(set_pss_opt(set_tech_DES_GS) AND par_X_pss_model(set_tech_DES_GS)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'G',set_tech_DES_GS,set_toPss)$set_energyLink_opt('G',set_tech_DES_GS,set_toPss))
                 =l=
                 par_P_DES_GS_discharge_max(set_tech_DES_GS) * sca_delta_ii;

EQUATIONS EqGS3(set_ii,set_pss) Restriktion maximale Entladeenergie Kältespeicher;
EqGS3(set_t,set_tech_DES_GS)$(set_pss_opt(set_tech_DES_GS) AND par_X_pss_model(set_tech_DES_GS)=1)..
                 sum(set_fromPss,var_energyFlow(set_t,'G',set_fromPss,set_tech_DES_GS)$set_energyLink_opt('G',set_fromPss,set_tech_DES_GS))
                 =l=
                 par_P_DES_GS_charge_max(set_tech_DES_GS) * sca_delta_ii;

EQUATIONS EqGS4(set_ii,set_pss) Restriktion maxinmaler Energiespeicherfüllstand Kältespeicher;
EqGS4(set_t,set_tech_DES_GS)$set_pss_opt(set_tech_DES_GS)..
                 var_SOC_DES_GS_help(set_t, set_tech_DES_GS)
                 =l=
                 par_SOC_DES_GS_cap_help(set_tech_DES_GS) * par_SOC_DES_GS_max(set_tech_DES_GS);

EQUATIONS EqGS5(set_ii,set_pss) Restriktion mininimaler Energiespeicherfüllstand Kältespeicher;
EqGS5(set_t,set_tech_DES_GS)$(set_pss_opt(set_tech_DES_GS) AND par_X_pss_model(set_tech_DES_GS)=1)..
                 var_SOC_DES_GS_help(set_t, set_tech_DES_GS)
                 =g=
                 par_SOC_DES_GS_cap_help(set_tech_DES_GS) * par_SOC_DES_GS_min_help(set_tech_DES_GS);

$ontext
EQUATIONS EqGS6(set_ii,set_tech_DES_GS) Restriktion maximale Ladeleistung zur Aufnahme der Regelenergie Kältespeicher;
EqGS6(set_t,set_tech_DES_GS)$set_pss_opt(set_tech_DES_GS)..
                 sum(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_GS,set_toPss)$set_energyLink_opt('PR',set_tech_DES_GS,set_toPss))
                 =l=
                 par_P_DES_GS_discharge_max(set_tech_DES_GS) * sca_delta_ii
                 - sum(set_toPss,var_energyFlow(set_t,'G',set_tech_DES_GS,set_toPss)$set_energyLink_opt('G',set_tech_DES_GS,set_toPss)) + sum(set_fromPss,var_energyFlow(set_t,'G',set_fromPss,set_tech_DES_GS)$set_energyLink_opt('G',set_fromPss,set_tech_DES_GS)) ;

EQUATIONS EqGS7(set_ii,set_tech_DES_GS) Restriktion maximale Ladeleistung zur Aufnahme der Regelenergie Kältespeicher;
EqGS7(set_t,set_tech_DES_GS)$set_pss_opt(set_tech_DES_GS)..
                 sum(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_GS,set_toPss)$set_energyLink_opt('NR',set_tech_DES_GS,set_toPss))
                 =l=
                 par_P_DES_GS_charge_max(set_tech_DES_GS) * sca_delta_ii
                 - sum(set_fromPss,var_energyFlow(set_t,'G',set_fromPss,set_tech_DES_GS)$set_energyLink_opt('G',set_fromPss,set_tech_DES_GS)) + sum(set_toPss,var_energyFlow(set_t,'G',set_tech_DES_GS,set_toPss)$set_energyLink_opt('G',set_tech_DES_GS,set_toPss));

EQUATIONS EqGS8(set_ii_0,set_tech_DES_GS) Begrenzung minimaler Energiespeicherfüllstand zur Vorhaltung positiver Regelenergie Kältespeicher;
EqGS8(set_ii_0,set_tech_DES_GS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_GS))..
                par_SOC_DES_GS_cap(set_tech_DES_GS) * par_SOC_DES_GS_min(set_tech_DES_GS)
                 =l=
                 var_SOC_DES_GS(set_ii_0-1, set_tech_DES_GS) + par_Eta_DES_GS_charge(set_tech_DES_GS) * sum(set_fromPss,var_energyFlow(set_ii_0,'G',set_fromPss,set_tech_DES_GS)$set_energyLink_opt('G',set_fromPss,set_tech_DES_GS))
                 - sum(set_toPss,var_energyFlow(set_ii_0,'G',set_tech_DES_GS,set_toPss)$set_energyLink_opt('G',set_tech_DES_GS,set_toPss)) / par_Eta_DES_GS_discharge(set_tech_DES_GS)
                 - sum(set_toPss,var_energyFlow(set_ii_0,'PR',set_tech_DES_GS,set_toPss)$set_energyLink_opt('PR',set_tech_DES_GS,set_toPss)) / par_Eta_DES_GS_discharge(set_tech_DES_GS);

EQUATIONS EqGS9(set_ii_0,set_tech_DES_GS) Begrenzung maximaler Energiespeicherfüllstand zur Vorhaltung negativer Regelenergie Kältespeicher;
EqGS9(set_ii_0,set_tech_DES_GS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_GS))..
                 par_SOC_DES_GS_cap(set_tech_DES_GS) * par_SOC_DES_GS_max(set_tech_DES_GS)
                 =g=
                 var_SOC_DES_GS(set_ii_0-1, set_tech_DES_GS) + par_Eta_DES_GS_charge(set_tech_DES_GS) * sum(set_fromPss,var_energyFlow(set_ii_0,'G',set_fromPss,set_tech_DES_GS)$set_energyLink_opt('G',set_fromPss,set_tech_DES_GS))
                 - sum(set_toPss,var_energyFlow(set_ii_0,'G',set_tech_DES_GS,set_toPss)$set_energyLink_opt('G',set_tech_DES_GS,set_toPss)) / par_Eta_DES_GS_discharge(set_tech_DES_GS)
                 + par_Eta_DES_GS_charge(set_tech_DES_GS) * sum(set_toPss,var_energyFlow(set_ii_0,'NR',set_tech_DES_GS,set_toPss)$set_energyLink_opt('NR',set_tech_DES_GS,set_toPss));

$offtext
EQUATIONS EqGS6(set_ii,set_tech_DES_GS) Restriktion maximale Entladeleistung zur Vorhaltung positiver Regelenergie Stromspeicher;
EqGS6(set_t,set_tech_DES_GS)$(set_pss_opt(set_tech_DES_GS) AND par_X_pss_model(set_tech_DES_GS)=1)..
                 SUM(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_GS,set_toPss)$set_energyLink_opt('PR',set_tech_DES_GS,set_toPss))
                 =l=
                 par_P_DES_GS_discharge_max(set_tech_DES_GS) * sca_delta_ii
                 - SUM(set_toPss,var_energyFlow(set_t,'G',set_tech_DES_GS,set_toPss)$set_energyLink_opt('G',set_tech_DES_GS,set_toPss));

EQUATIONS EqGS7(set_ii,set_tech_DES_GS) Restriktion maximale Ladeleistung zur Vorhaltung negativer Regelenergie Stromspeicher;
EqGS7(set_t,set_tech_DES_GS)$(set_pss_opt(set_tech_DES_GS) AND par_X_pss_model(set_tech_DES_GS)=1)..
                 SUM(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_GS,set_toPss)$set_energyLink_opt('NR',set_tech_DES_GS,set_toPss))
                 =l=
                 par_P_DES_GS_charge_max(set_tech_DES_GS) * sca_delta_ii
                 - SUM(set_fromPss,var_energyFlow(set_t,'G',set_fromPss,set_tech_DES_GS)$set_energyLink_opt('G',set_fromPss,set_tech_DES_GS));


EQUATIONS EqGS8(set_ii_0,set_tech_DES_GS) Restriktion minimaler Energiespeicherfüllstand zur Vorhaltung positiver Regelenergie Stromspeicher;
EqGS8(set_ii_0,set_tech_DES_GS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_GS) AND par_X_pss_model(set_tech_DES_GS)=1)..
                 par_SOC_DES_GS_cap_help(set_tech_DES_GS) * par_SOC_DES_GS_min_help(set_tech_DES_GS)
                 =l=
                 var_SOC_DES_GS_help(set_ii_0-1, set_tech_DES_GS) + par_Eta_DES_GS_charge(set_tech_DES_GS) * SUM(set_fromPss,var_energyFlow(set_ii_0,'G',set_fromPss,set_tech_DES_GS)$set_energyLink_opt('G',set_fromPss,set_tech_DES_GS))
                 - SUM(set_toPss,var_energyFlow(set_ii_0,'G',set_tech_DES_GS,set_toPss)$set_energyLink_opt('G',set_tech_DES_GS,set_toPss)) / par_Eta_DES_GS_discharge(set_tech_DES_GS)
                 - (SUM(set_toPss,var_energyFlow(set_ii_0,'PR',set_tech_DES_GS,set_toPss)$set_energyLink_opt('PR',set_tech_DES_GS,set_toPss)) / par_Eta_DES_GS_discharge(set_tech_DES_GS));

EQUATIONS EqGS9(set_ii_0,set_tech_DES_GS) Restriktion maximaler Energiespeicherfüllstand zur Vorhaltung negativer Regelenergie Stromspeicher;
EqGS9(set_ii_0,set_tech_DES_GS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_GS) AND par_X_pss_model(set_tech_DES_GS)=1)..
                 par_SOC_DES_GS_cap_help(set_tech_DES_GS) * par_SOC_DES_GS_max(set_tech_DES_GS)
                 =g=
                 var_SOC_DES_GS_help(set_ii_0-1, set_tech_DES_GS) + par_Eta_DES_GS_charge(set_tech_DES_GS) * SUM(set_fromPss,var_energyFlow(set_ii_0,'G',set_fromPss,set_tech_DES_GS)$set_energyLink_opt('G',set_fromPss,set_tech_DES_GS))
                 - SUM(set_toPss,var_energyFlow(set_ii_0,'G',set_tech_DES_GS,set_toPss)$set_energyLink_opt('G',set_tech_DES_GS,set_toPss)) / par_Eta_DES_GS_discharge(set_tech_DES_GS)
                 + par_Eta_DES_GS_charge(set_tech_DES_GS) * SUM(set_toPss,var_energyFlow(set_ii_0,'NR',set_tech_DES_GS,set_toPss)$set_energyLink_opt('NR',set_tech_DES_GS,set_toPss));


EQUATIONS EqGS10(set_ii_0,set_pss) Restriktion mininimaler Energiespeicherfüllstand Kältespeicher;
EqGS10(set_ii_0,set_tech_DES_GS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_GS) AND par_X_pss_model(set_tech_DES_GS)=1)..
                 var_SOC_DES_GS_help(set_ii_0, set_tech_DES_GS) + par_SOC_DES_GS_cap(set_tech_DES_GS)*par_SOC_DES_GS_min(set_tech_DES_GS)
                 =e=
                 var_SOC_DES_GS(set_ii_0, set_tech_DES_GS);


MODEL mod_tech_DES_GS_orga / EqGS0, EqGS1, EqGS2, EqGS3, EqGS4, EqGS5, EqGS10, EqGS6, EqGS7, EqGS8, EqGS9 /;
MODEL mod_tech_DES_GS_cust / EqGS0, EqGS1, EqGS2, EqGS3, EqGS4, EqGS5, EqGS10, EqGS6, EqGS7, EqGS8, EqGS9 /;



