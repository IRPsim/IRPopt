***-----------------------------------------------------------------------------
***Parameter
***-----------------------------------------------------------------------------
PARAMETER par_SOC_DES_CS_cap_help(set_tech_DES_CS);
par_SOC_DES_CS_cap_help(set_tech_DES_CS)= par_SOC_DES_CS_cap(set_tech_DES_CS)* (1-par_SOC_DES_CS_min(set_tech_DES_CS));
PARAMETER par_SOC_DES_CS_min_help(set_tech_DES_CS);
par_SOC_DES_CS_min_help(set_tech_DES_CS) = 0;
PARAMETER par_SOC_DES_CS_initial(set_ii_0,set_tech_DES_CS);
par_SOC_DES_CS_initial(set_ii_0,set_tech_DES_CS)$(ORD(set_ii_0)=1) = par_SOC_DES_CS_cap(set_tech_DES_CS) * 0;


***-----------------------------------------------------------------------------
***Variablen
***-----------------------------------------------------------------------------
POSITIVE VARIABLE var_SOC_DES_CS(set_ii_0,set_tech_DES_CS) Energiespeicherfüllstand Kältespeicher;
POSITIVE VARIABLE var_SOC_DES_CS_help(set_ii_0,set_tech_DES_CS) Energiespeicherfüllstand Kältespeicher;
BINARY VARIABLE   var_charge_CS(set_ii,set_tech_DES_CS) Statusvariable Laden Kältespeicher;
BINARY VARIABLE   var_discharge_CS(set_ii,set_tech_DES_CS) Statusvariable Entladen Kältespeicher;
POSITIVE VARIABLE var_W_DES_CS_negres(set_ii_0,set_tech_DES_CS) Negative Regelenergie Kältespeicher;
POSITIVE VARIABLE var_W_DES_CS_posres(set_ii_0,set_tech_DES_CS) Positive Regelenergie Kältespeicher;

***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
EQUATIONS EqCS0(set_ii_0,set_pss) Restriktion aktueller Energiespeicherfüllstand Kältespeicher;
EqCS0(set_t_ini,set_tech_DES_CS)$(set_pss_opt(set_tech_DES_CS) AND par_X_pss_model(set_tech_DES_CS)=1)..
                 var_SOC_DES_CS_help(set_t_ini, set_tech_DES_CS)
                 =e=
                 par_SOC_DES_CS_initial(set_t_ini,set_tech_DES_CS);

EQUATIONS EqCS1(set_ii_0,set_pss) Restriktion aktueller Energiespeicherfüllstand Kältespeicher;
EqCS1(set_ii_0,set_tech_DES_CS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_CS) AND par_X_pss_model(set_tech_DES_CS)=1)..
                 var_SOC_DES_CS_help(set_ii_0, set_tech_DES_CS)
                 =e=
                 var_SOC_DES_CS_help(set_ii_0-1, set_tech_DES_CS) + par_Eta_DES_CS_charge(set_tech_DES_CS) * sum(set_fromPss,var_energyFlow(set_ii_0,'C',set_fromPss,set_tech_DES_CS)$set_energyLink_opt('C',set_fromPss,set_tech_DES_CS))
                 - sum(set_toPss,var_energyFlow(set_ii_0,'C',set_tech_DES_CS,set_toPss)$set_energyLink_opt('C',set_tech_DES_CS,set_toPss)) / par_Eta_DES_CS_discharge(set_tech_DES_CS)
                 - par_Eta_DES_CS_selfdischarge(set_tech_DES_CS) * var_SOC_DES_CS_help(set_ii_0-1, set_tech_DES_CS);


EQUATIONS EqCS2(set_ii,set_pss) Restriktion maximale Ladeenergie Kältespeicher;
EqCS2(set_t,set_tech_DES_CS)$(set_pss_opt(set_tech_DES_CS) AND par_X_pss_model(set_tech_DES_CS)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'C',set_tech_DES_CS,set_toPss)$set_energyLink_opt('C',set_tech_DES_CS,set_toPss))
                 =l=
                 par_Q_DES_CS_discharge_max(set_tech_DES_CS) * sca_delta_ii;

EQUATIONS EqCS3(set_ii,set_pss) Restriktion maximale Entladeenergie Kältespeicher;
EqCS3(set_t,set_tech_DES_CS)$(set_pss_opt(set_tech_DES_CS) AND par_X_pss_model(set_tech_DES_CS)=1)..
                 sum(set_fromPss,var_energyFlow(set_t,'C',set_fromPss,set_tech_DES_CS)$set_energyLink_opt('C',set_fromPss,set_tech_DES_CS))
                 =l=
                 par_Q_DES_CS_charge_max(set_tech_DES_CS) * sca_delta_ii;

EQUATIONS EqCS4(set_ii,set_pss) Restriktion maxinmaler Energiespeicherfüllstand Kältespeicher;
EqCS4(set_t,set_tech_DES_CS)$set_pss_opt(set_tech_DES_CS)..
                 var_SOC_DES_CS_help(set_t, set_tech_DES_CS)
                 =l=
                 par_SOC_DES_CS_cap_help(set_tech_DES_CS) * par_SOC_DES_CS_max(set_tech_DES_CS);

EQUATIONS EqCS5(set_ii,set_pss) Restriktion mininimaler Energiespeicherfüllstand Kältespeicher;
EqCS5(set_t,set_tech_DES_CS)$(set_pss_opt(set_tech_DES_CS) AND par_X_pss_model(set_tech_DES_CS)=1)..
                 var_SOC_DES_CS_help(set_t, set_tech_DES_CS)
                 =g=
                 par_SOC_DES_CS_cap_help(set_tech_DES_CS) * par_SOC_DES_CS_min_help(set_tech_DES_CS);

$ontext
EQUATIONS EqCS6(set_ii,set_tech_DES_CS) Restriktion maximale Ladeleistung zur Aufnahme der Regelenergie Kältespeicher;
EqCS6(set_t,set_tech_DES_CS)$set_pss_opt(set_tech_DES_CS)..
                 sum(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_CS,set_toPss)$set_energyLink_opt('PR',set_tech_DES_CS,set_toPss))
                 =l=
                 par_Q_DES_CS_discharge_max(set_tech_DES_CS) * sca_delta_ii
                 - sum(set_toPss,var_energyFlow(set_t,'C',set_tech_DES_CS,set_toPss)$set_energyLink_opt('C',set_tech_DES_CS,set_toPss)) + sum(set_fromPss,var_energyFlow(set_t,'C',set_fromPss,set_tech_DES_CS)$set_energyLink_opt('C',set_fromPss,set_tech_DES_CS)) ;

EQUATIONS EqCS7(set_ii,set_tech_DES_CS) Restriktion maximale Ladeleistung zur Aufnahme der Regelenergie Kältespeicher;
EqCS7(set_t,set_tech_DES_CS)$set_pss_opt(set_tech_DES_CS)..
                 sum(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_CS,set_toPss)$set_energyLink_opt('NR',set_tech_DES_CS,set_toPss))
                 =l=
                 par_Q_DES_CS_charge_max(set_tech_DES_CS) * sca_delta_ii
                 - sum(set_fromPss,var_energyFlow(set_t,'C',set_fromPss,set_tech_DES_CS)$set_energyLink_opt('C',set_fromPss,set_tech_DES_CS)) + sum(set_toPss,var_energyFlow(set_t,'C',set_tech_DES_CS,set_toPss)$set_energyLink_opt('C',set_tech_DES_CS,set_toPss));

EQUATIONS EqCS8(set_ii_0,set_tech_DES_CS) Begrenzung minimaler Energiespeicherfüllstand zur Vorhaltung positiver Regelenergie Kältespeicher;
EqCS8(set_ii_0,set_tech_DES_CS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_CS))..
                par_SOC_DES_CS_cap(set_tech_DES_CS) * par_SOC_DES_CS_min(set_tech_DES_CS)
                 =l=
                 var_SOC_DES_CS(set_ii_0-1, set_tech_DES_CS) + par_Eta_DES_CS_charge(set_tech_DES_CS) * sum(set_fromPss,var_energyFlow(set_ii_0,'C',set_fromPss,set_tech_DES_CS)$set_energyLink_opt('C',set_fromPss,set_tech_DES_CS))
                 - sum(set_toPss,var_energyFlow(set_ii_0,'C',set_tech_DES_CS,set_toPss)$set_energyLink_opt('C',set_tech_DES_CS,set_toPss)) / par_Eta_DES_CS_discharge(set_tech_DES_CS)
                 - sum(set_toPss,var_energyFlow(set_ii_0,'PR',set_tech_DES_CS,set_toPss)$set_energyLink_opt('PR',set_tech_DES_CS,set_toPss)) / par_Eta_DES_CS_discharge(set_tech_DES_CS);

EQUATIONS EqCS9(set_ii_0,set_tech_DES_CS) Begrenzung maximaler Energiespeicherfüllstand zur Vorhaltung negativer Regelenergie Kältespeicher;
EqCS9(set_ii_0,set_tech_DES_CS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_CS))..
                 par_SOC_DES_CS_cap(set_tech_DES_CS) * par_SOC_DES_CS_max(set_tech_DES_CS)
                 =g=
                 var_SOC_DES_CS(set_ii_0-1, set_tech_DES_CS) + par_Eta_DES_CS_charge(set_tech_DES_CS) * sum(set_fromPss,var_energyFlow(set_ii_0,'C',set_fromPss,set_tech_DES_CS)$set_energyLink_opt('C',set_fromPss,set_tech_DES_CS))
                 - sum(set_toPss,var_energyFlow(set_ii_0,'C',set_tech_DES_CS,set_toPss)$set_energyLink_opt('C',set_tech_DES_CS,set_toPss)) / par_Eta_DES_CS_discharge(set_tech_DES_CS)
                 + par_Eta_DES_CS_charge(set_tech_DES_CS) * sum(set_toPss,var_energyFlow(set_ii_0,'NR',set_tech_DES_CS,set_toPss)$set_energyLink_opt('NR',set_tech_DES_CS,set_toPss));

$offtext
EQUATIONS EqCS6(set_ii,set_tech_DES_CS) Restriktion maximale Entladeleistung zur Vorhaltung positiver Regelenergie Stromspeicher;
EqCS6(set_t,set_tech_DES_CS)$(set_pss_opt(set_tech_DES_CS) AND par_X_pss_model(set_tech_DES_CS)=1)..
                 SUM(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_CS,set_toPss)$set_energyLink_opt('PR',set_tech_DES_CS,set_toPss))
                 =l=
                 par_Q_DES_CS_discharge_max(set_tech_DES_CS) * sca_delta_ii
                 - SUM(set_toPss,var_energyFlow(set_t,'C',set_tech_DES_CS,set_toPss)$set_energyLink_opt('C',set_tech_DES_CS,set_toPss));

EQUATIONS EqCS7(set_ii,set_tech_DES_CS) Restriktion maximale Ladeleistung zur Vorhaltung negativer Regelenergie Stromspeicher;
EqCS7(set_t,set_tech_DES_CS)$(set_pss_opt(set_tech_DES_CS) AND par_X_pss_model(set_tech_DES_CS)=1)..
                 SUM(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_CS,set_toPss)$set_energyLink_opt('NR',set_tech_DES_CS,set_toPss))
                 =l=
                 par_Q_DES_CS_charge_max(set_tech_DES_CS) * sca_delta_ii
                 - SUM(set_fromPss,var_energyFlow(set_t,'C',set_fromPss,set_tech_DES_CS)$set_energyLink_opt('C',set_fromPss,set_tech_DES_CS));


EQUATIONS EqCS8(set_ii_0,set_tech_DES_CS) Restriktion minimaler Energiespeicherfüllstand zur Vorhaltung positiver Regelenergie Stromspeicher;
EqCS8(set_ii_0,set_tech_DES_CS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_CS) AND par_X_pss_model(set_tech_DES_CS)=1)..
                 par_SOC_DES_CS_cap_help(set_tech_DES_CS) * par_SOC_DES_CS_min_help(set_tech_DES_CS)
                 =l=
                 var_SOC_DES_CS_help(set_ii_0-1, set_tech_DES_CS) + par_Eta_DES_CS_charge(set_tech_DES_CS) * SUM(set_fromPss,var_energyFlow(set_ii_0,'C',set_fromPss,set_tech_DES_CS)$set_energyLink_opt('C',set_fromPss,set_tech_DES_CS))
                 - SUM(set_toPss,var_energyFlow(set_ii_0,'C',set_tech_DES_CS,set_toPss)$set_energyLink_opt('C',set_tech_DES_CS,set_toPss)) / par_Eta_DES_CS_discharge(set_tech_DES_CS)
                 - (SUM(set_toPss,var_energyFlow(set_ii_0,'PR',set_tech_DES_CS,set_toPss)$set_energyLink_opt('PR',set_tech_DES_CS,set_toPss)) / par_Eta_DES_CS_discharge(set_tech_DES_CS));

EQUATIONS EqCS9(set_ii_0,set_tech_DES_CS) Restriktion maximaler Energiespeicherfüllstand zur Vorhaltung negativer Regelenergie Stromspeicher;
EqCS9(set_ii_0,set_tech_DES_CS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_CS) AND par_X_pss_model(set_tech_DES_CS)=1)..
                 par_SOC_DES_CS_cap_help(set_tech_DES_CS) * par_SOC_DES_CS_max(set_tech_DES_CS)
                 =g=
                 var_SOC_DES_CS_help(set_ii_0-1, set_tech_DES_CS) + par_Eta_DES_CS_charge(set_tech_DES_CS) * SUM(set_fromPss,var_energyFlow(set_ii_0,'C',set_fromPss,set_tech_DES_CS)$set_energyLink_opt('C',set_fromPss,set_tech_DES_CS))
                 - SUM(set_toPss,var_energyFlow(set_ii_0,'C',set_tech_DES_CS,set_toPss)$set_energyLink_opt('C',set_tech_DES_CS,set_toPss)) / par_Eta_DES_CS_discharge(set_tech_DES_CS)
                 + par_Eta_DES_CS_charge(set_tech_DES_CS) * SUM(set_toPss,var_energyFlow(set_ii_0,'NR',set_tech_DES_CS,set_toPss)$set_energyLink_opt('NR',set_tech_DES_CS,set_toPss));


EQUATIONS EqCS10(set_ii_0,set_pss) Restriktion mininimaler Energiespeicherfüllstand Kältespeicher;
EqCS10(set_ii_0,set_tech_DES_CS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_CS) AND par_X_pss_model(set_tech_DES_CS)=1)..
                 var_SOC_DES_CS_help(set_ii_0, set_tech_DES_CS) + par_SOC_DES_CS_cap(set_tech_DES_CS)*par_SOC_DES_CS_min(set_tech_DES_CS)
                 =e=
                 var_SOC_DES_CS(set_ii_0, set_tech_DES_CS);


MODEL mod_tech_DES_CS_orga / EqCS0, EqCS1, EqCS2, EqCS3, EqCS4, EqCS5, EqCS10, EqCS6, EqCS7, EqCS8, EqCS9 /;
MODEL mod_tech_DES_CS_cust / EqCS0, EqCS1, EqCS2, EqCS3, EqCS4, EqCS5, EqCS10, EqCS6, EqCS7, EqCS8, EqCS9 /;



