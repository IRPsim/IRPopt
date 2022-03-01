***-----------------------------------------------------------------------------
***Parameter
***-----------------------------------------------------------------------------
PARAMETER par_SOC_DES_TS_cap_help(set_tech_DES_TS);
par_SOC_DES_TS_cap_help(set_tech_DES_TS)= par_SOC_DES_TS_cap(set_tech_DES_TS)* (1-par_SOC_DES_TS_min(set_tech_DES_TS));
PARAMETER par_SOC_DES_TS_min_help(set_tech_DES_TS);
par_SOC_DES_TS_min_help(set_tech_DES_TS) = 0;
PARAMETER par_SOC_DES_TS_initial(set_ii_0,set_tech_DES_TS);
par_SOC_DES_TS_initial(set_ii_0,set_tech_DES_TS)$(ORD(set_ii_0)=1) = par_SOC_DES_TS_cap(set_tech_DES_TS) * 0;


***-----------------------------------------------------------------------------
***Variablen
***-----------------------------------------------------------------------------
POSITIVE VARIABLE var_SOC_DES_TS(set_ii_0,set_tech_DES_TS) Energiespeicherf�llstand W�rmespeicher;
POSITIVE VARIABLE var_SOC_DES_TS_help(set_ii_0,set_tech_DES_TS) Energiespeicherf�llstand W�rmespeicher;
BINARY VARIABLE   var_charge_TS(set_ii,set_tech_DES_TS) Statusvariable Laden W�rmespeicher;
BINARY VARIABLE   var_discharge_TS(set_ii,set_tech_DES_TS) Statusvariable Entladen W�rmespeicher;
POSITIVE VARIABLE var_W_DES_TS_negres(set_ii_0,set_tech_DES_TS) Negative Regelenergie W�rmespeicher;
POSITIVE VARIABLE var_W_DES_TS_posres(set_ii_0,set_tech_DES_TS) Positive Regelenergie W�rmespeicher;

***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
EQUATIONS EqTS0(set_ii_0,set_pss) Restriktion aktueller Energiespeicherf�llstand W�rmespeicher;
EqTS0(set_t_ini,set_tech_DES_TS)$(set_pss_opt(set_tech_DES_TS) AND par_X_pss_model(set_tech_DES_TS)=1)..
                 var_SOC_DES_TS_help(set_t_ini, set_tech_DES_TS)
                 =e=
                 par_SOC_DES_TS_initial(set_t_ini,set_tech_DES_TS);

EQUATIONS EqTS1(set_ii_0,set_pss) Restriktion aktueller Energiespeicherf�llstand W�rmespeicher;
EqTS1(set_ii_0,set_tech_DES_TS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_TS) AND par_X_pss_model(set_tech_DES_TS)=1)..
                 var_SOC_DES_TS_help(set_ii_0, set_tech_DES_TS)
                 =e=
                 var_SOC_DES_TS_help(set_ii_0-1, set_tech_DES_TS) + par_Eta_DES_TS_charge(set_tech_DES_TS) * sum(set_fromPss,var_energyFlow(set_ii_0,'W',set_fromPss,set_tech_DES_TS)$set_energyLink_opt('W',set_fromPss,set_tech_DES_TS))
                 - sum(set_toPss,var_energyFlow(set_ii_0,'W',set_tech_DES_TS,set_toPss)$set_energyLink_opt('W',set_tech_DES_TS,set_toPss)) / par_Eta_DES_TS_discharge(set_tech_DES_TS)
                 - par_Eta_DES_TS_selfdischarge(set_tech_DES_TS) * var_SOC_DES_TS_help(set_ii_0-1, set_tech_DES_TS);


EQUATIONS EqTS2(set_ii,set_pss) Restriktion maximale Ladeenergie W�rmespeicher;
EqTS2(set_t,set_tech_DES_TS)$(set_pss_opt(set_tech_DES_TS) AND par_X_pss_model(set_tech_DES_TS)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'W',set_tech_DES_TS,set_toPss)$set_energyLink_opt('W',set_tech_DES_TS,set_toPss))
                 =l=
                 par_Q_DES_TS_discharge_max(set_tech_DES_TS) * sca_delta_ii
                 * par_Q_DES_TS_discharge_utilpercent(set_t,set_tech_DES_TS);

EQUATIONS EqTS3(set_ii,set_pss) Restriktion maximale Entladeenergie W�rmespeicher;
EqTS3(set_t,set_tech_DES_TS)$(set_pss_opt(set_tech_DES_TS) AND par_X_pss_model(set_tech_DES_TS)=1)..
                 sum(set_fromPss,var_energyFlow(set_t,'W',set_fromPss,set_tech_DES_TS)$set_energyLink_opt('W',set_fromPss,set_tech_DES_TS))
                 =l=
                 par_Q_DES_TS_charge_max(set_tech_DES_TS) * sca_delta_ii
                 * par_Q_DES_TS_charge_utilpercent(set_t,set_tech_DES_TS);

EQUATIONS EqTS4(set_ii,set_pss) Restriktion maxinmaler Energiespeicherf�llstand W�rmespeicher;
EqTS4(set_t,set_tech_DES_TS)$set_pss_opt(set_tech_DES_TS)..
                 var_SOC_DES_TS_help(set_t, set_tech_DES_TS)
                 =l=
                 par_SOC_DES_TS_cap_help(set_tech_DES_TS) * par_SOC_DES_TS_max(set_tech_DES_TS);

EQUATIONS EqTS5(set_ii,set_pss) Restriktion mininimaler Energiespeicherf�llstand W�rmespeicher;
EqTS5(set_t,set_tech_DES_TS)$(set_pss_opt(set_tech_DES_TS) AND par_X_pss_model(set_tech_DES_TS)=1)..
                 var_SOC_DES_TS_help(set_t, set_tech_DES_TS)
                 =g=
                 par_SOC_DES_TS_cap_help(set_tech_DES_TS) * par_SOC_DES_TS_min_help(set_tech_DES_TS)
                 * par_SOC_DES_TS_utilpercent(set_t,set_tech_DES_TS);

$ontext
EQUATIONS EqTS6(set_ii,set_tech_DES_TS) Restriktion maximale Ladeleistung zur Aufnahme der Regelenergie W�rmespeicher;
EqTS6(set_t,set_tech_DES_TS)$set_pss_opt(set_tech_DES_TS)..
                 sum(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_TS,set_toPss)$set_energyLink_opt('PR',set_tech_DES_TS,set_toPss))
                 =l=
                 par_Q_DES_TS_discharge_max(set_tech_DES_TS) * sca_delta_ii
                 - sum(set_toPss,var_energyFlow(set_t,'W',set_tech_DES_TS,set_toPss)$set_energyLink_opt('W',set_tech_DES_TS,set_toPss)) + sum(set_fromPss,var_energyFlow(set_t,'W',set_fromPss,set_tech_DES_TS)$set_energyLink_opt('W',set_fromPss,set_tech_DES_TS)) ;

EQUATIONS EqTS7(set_ii,set_tech_DES_TS) Restriktion maximale Ladeleistung zur Aufnahme der Regelenergie W�rmespeicher;
EqTS7(set_t,set_tech_DES_TS)$set_pss_opt(set_tech_DES_TS)..
                 sum(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_TS,set_toPss)$set_energyLink_opt('NR',set_tech_DES_TS,set_toPss))
                 =l=
                 par_Q_DES_TS_charge_max(set_tech_DES_TS) * sca_delta_ii
                 - sum(set_fromPss,var_energyFlow(set_t,'W',set_fromPss,set_tech_DES_TS)$set_energyLink_opt('W',set_fromPss,set_tech_DES_TS)) + sum(set_toPss,var_energyFlow(set_t,'W',set_tech_DES_TS,set_toPss)$set_energyLink_opt('W',set_tech_DES_TS,set_toPss));

EQUATIONS EqTS8(set_ii_0,set_tech_DES_TS) Begrenzung minimaler Energiespeicherf�llstand zur Vorhaltung positiver Regelenergie W�rmespeicher;
EqTS8(set_ii_0,set_tech_DES_TS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_TS))..
                par_SOC_DES_TS_cap(set_tech_DES_TS) * par_SOC_DES_TS_min(set_tech_DES_TS)
                 =l=
                 var_SOC_DES_TS(set_ii_0-1, set_tech_DES_TS) + par_Eta_DES_TS_charge(set_tech_DES_TS) * sum(set_fromPss,var_energyFlow(set_ii_0,'W',set_fromPss,set_tech_DES_TS)$set_energyLink_opt('W',set_fromPss,set_tech_DES_TS))
                 - sum(set_toPss,var_energyFlow(set_ii_0,'W',set_tech_DES_TS,set_toPss)$set_energyLink_opt('W',set_tech_DES_TS,set_toPss)) / par_Eta_DES_TS_discharge(set_tech_DES_TS)
                 - sum(set_toPss,var_energyFlow(set_ii_0,'PR',set_tech_DES_TS,set_toPss)$set_energyLink_opt('PR',set_tech_DES_TS,set_toPss)) / par_Eta_DES_TS_discharge(set_tech_DES_TS);

EQUATIONS EqTS9(set_ii_0,set_tech_DES_TS) Begrenzung maximaler Energiespeicherf�llstand zur Vorhaltung negativer Regelenergie W�rmespeicher;
EqTS9(set_ii_0,set_tech_DES_TS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_TS))..
                 par_SOC_DES_TS_cap(set_tech_DES_TS) * par_SOC_DES_TS_max(set_tech_DES_TS)
                 =g=
                 var_SOC_DES_TS(set_ii_0-1, set_tech_DES_TS) + par_Eta_DES_TS_charge(set_tech_DES_TS) * sum(set_fromPss,var_energyFlow(set_ii_0,'W',set_fromPss,set_tech_DES_TS)$set_energyLink_opt('W',set_fromPss,set_tech_DES_TS))
                 - sum(set_toPss,var_energyFlow(set_ii_0,'W',set_tech_DES_TS,set_toPss)$set_energyLink_opt('W',set_tech_DES_TS,set_toPss)) / par_Eta_DES_TS_discharge(set_tech_DES_TS)
                 + par_Eta_DES_TS_charge(set_tech_DES_TS) * sum(set_toPss,var_energyFlow(set_ii_0,'NR',set_tech_DES_TS,set_toPss)$set_energyLink_opt('NR',set_tech_DES_TS,set_toPss));

$offtext
EQUATIONS EqTS6(set_ii,set_tech_DES_TS) Restriktion maximale Entladeleistung zur Vorhaltung positiver Regelenergie W�rmespeicher;
EqTS6(set_t,set_tech_DES_TS)$(set_pss_opt(set_tech_DES_TS) AND par_X_pss_model(set_tech_DES_TS)=1)..
                 SUM(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_TS,set_toPss)$set_energyLink_opt('PR',set_tech_DES_TS,set_toPss))
                 =l=
                 par_Q_DES_TS_discharge_max(set_tech_DES_TS) * sca_delta_ii
                 - SUM(set_toPss,var_energyFlow(set_t,'W',set_tech_DES_TS,set_toPss)$set_energyLink_opt('W',set_tech_DES_TS,set_toPss));

EQUATIONS EqTS7(set_ii,set_tech_DES_TS) Restriktion maximale Ladeleistung zur Vorhaltung negativer Regelenergie W�rmespeicher;
EqTS7(set_t,set_tech_DES_TS)$(set_pss_opt(set_tech_DES_TS) AND par_X_pss_model(set_tech_DES_TS)=1)..
                 SUM(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_TS,set_toPss)$set_energyLink_opt('NR',set_tech_DES_TS,set_toPss))
                 =l=
                 par_Q_DES_TS_charge_max(set_tech_DES_TS) * sca_delta_ii
                 - SUM(set_fromPss,var_energyFlow(set_t,'W',set_fromPss,set_tech_DES_TS)$set_energyLink_opt('W',set_fromPss,set_tech_DES_TS));


EQUATIONS EqTS8(set_ii_0,set_tech_DES_TS) Restriktion minimaler Energiespeicherf�llstand zur Vorhaltung positiver Regelenergie W�rmespeicher;
EqTS8(set_ii_0,set_tech_DES_TS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_TS) AND par_X_pss_model(set_tech_DES_TS)=1)..
                 par_SOC_DES_TS_cap_help(set_tech_DES_TS) * par_SOC_DES_TS_min_help(set_tech_DES_TS)
                 =l=
                 var_SOC_DES_TS_help(set_ii_0-1, set_tech_DES_TS) + par_Eta_DES_TS_charge(set_tech_DES_TS) * SUM(set_fromPss,var_energyFlow(set_ii_0,'W',set_fromPss,set_tech_DES_TS)$set_energyLink_opt('W',set_fromPss,set_tech_DES_TS))
                 - SUM(set_toPss,var_energyFlow(set_ii_0,'W',set_tech_DES_TS,set_toPss)$set_energyLink_opt('W',set_tech_DES_TS,set_toPss)) / par_Eta_DES_TS_discharge(set_tech_DES_TS)
                 - (SUM(set_toPss,var_energyFlow(set_ii_0,'PR',set_tech_DES_TS,set_toPss)$set_energyLink_opt('PR',set_tech_DES_TS,set_toPss)) / par_Eta_DES_TS_discharge(set_tech_DES_TS));

EQUATIONS EqTS9(set_ii_0,set_tech_DES_TS) Restriktion maximaler Energiespeicherf�llstand zur Vorhaltung negativer Regelenergie W�rmespeicher;
EqTS9(set_ii_0,set_tech_DES_TS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_TS) AND par_X_pss_model(set_tech_DES_TS)=1)..
                 par_SOC_DES_TS_cap_help(set_tech_DES_TS) * par_SOC_DES_TS_max(set_tech_DES_TS)
                 =g=
                 var_SOC_DES_TS_help(set_ii_0-1, set_tech_DES_TS) + par_Eta_DES_TS_charge(set_tech_DES_TS) * SUM(set_fromPss,var_energyFlow(set_ii_0,'W',set_fromPss,set_tech_DES_TS)$set_energyLink_opt('W',set_fromPss,set_tech_DES_TS))
                 - SUM(set_toPss,var_energyFlow(set_ii_0,'W',set_tech_DES_TS,set_toPss)$set_energyLink_opt('W',set_tech_DES_TS,set_toPss)) / par_Eta_DES_TS_discharge(set_tech_DES_TS)
                 + par_Eta_DES_TS_charge(set_tech_DES_TS) * SUM(set_toPss,var_energyFlow(set_ii_0,'NR',set_tech_DES_TS,set_toPss)$set_energyLink_opt('NR',set_tech_DES_TS,set_toPss));

EQUATIONS EqTS10(set_ii_0,set_pss) Restriktion mininimaler Energiespeicherf�llstand W�rmespeicher;
EqTS10(set_ii_0,set_tech_DES_TS)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_DES_TS) AND par_X_pss_model(set_tech_DES_TS)=1)..
                 var_SOC_DES_TS_help(set_ii_0, set_tech_DES_TS) + par_SOC_DES_TS_cap(set_tech_DES_TS)*par_SOC_DES_TS_min(set_tech_DES_TS)
                 =e=
                 var_SOC_DES_TS(set_ii_0, set_tech_DES_TS);


MODEL mod_tech_DES_TS_orga / EqTS0, EqTS1, EqTS2, EqTS3, EqTS4, EqTS5, EqTS10, EqTS6, EqTS7, EqTS8, EqTS9 /;
MODEL mod_tech_DES_TS_cust / EqTS0, EqTS1, EqTS2, EqTS3, EqTS4, EqTS5, EqTS10, EqTS6, EqTS7, EqTS8, EqTS9 /;



