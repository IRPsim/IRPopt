***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------

EQUATION EqCHP0_DES(set_ii_0,set_pss) Übergabe Statusvariable;
EqCHP0_DES(set_t_ini,set_tech_DES_CHP)$(set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP) eq 1)..
                 var_S_pss(set_t_ini,set_tech_DES_CHP)
                 =e=
                 par_S_pss_initial(set_t_ini,set_tech_DES_CHP);

EQUATION EqCHP00_DES(set_ii_0,set_sector,set_fromPss,set_toPss) Energieflussbegrenzung erster Zeitschritt;
EqCHP00_DES(set_t_ini,set_sector,set_tech_DES_CHP,set_toPss)$(set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP) eq 1  AND set_energyLink_opt(set_sector,set_tech_DES_CHP,set_toPss))..
                 var_energyFlow(set_t_ini,set_sector,set_tech_DES_CHP,set_toPss)
                 =e=
                 par_energyFlow_cust(set_t_ini,set_sector,set_tech_DES_CHP,set_toPss)

*Brennstoffverbrauch
EQUATIONS EqCHP1_DES(set_ii_0,set_sector,set_pss) Brennstoffverbrauch gleicht Ruheverbrauch und Produktion elektrischer und thermischer Energie Kraft-Wärme-Kopplungsanlagen;
EqCHP1_DES(set_t,set_sector,set_tech_DES_CHP)$(set_pss_opt(set_tech_DES_CHP) AND set_primaryenergylink(set_sector,set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP)=1) ..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('E',set_tech_DES_CHP,set_toPss))
                 =e=
                 sum(set_fromPss,var_energyFlow(set_t,set_sector,set_fromPss,set_tech_DES_CHP)$set_energyLink_opt(set_sector,set_fromPss,set_tech_DES_CHP)) * par_Eta_DES_CHP(set_tech_DES_CHP);

*Leistungsschranken
EQUATIONS EqCHP2_DES(set_ii,set_pss) Restriktion maximale Erzeugung inkl. positiver Regelenergie;
EqCHP2_DES(set_t,set_tech_DES_CHP)$(set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('E',set_tech_DES_CHP,set_toPss))
                 + sum(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('PR',set_tech_DES_CHP,set_toPss))
                 =l=
                 par_P_DES_CHP_max(set_tech_DES_CHP)*sca_delta_ii*var_S_pss(set_t,set_tech_DES_CHP)*par_P_DES_CHP_utilpercent(set_t,set_tech_DES_CHP);

EQUATIONS EqCHP3_DES(set_ii,set_pss) Restriktion minimale Erzeugung;
EqCHP3_DES(set_t,set_tech_DES_CHP)$(set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('E',set_tech_DES_CHP,set_toPss))
                 =g=
                 par_P_DES_CHP_min(set_tech_DES_CHP)*sca_delta_ii*var_S_pss(set_t,set_tech_DES_CHP);

EQUATIONS EqCHP4_DES(set_ii,set_pss) Restriktion minimale Erzeugung inkl. positiver Regelenergie;
EqCHP4_DES(set_t,set_tech_DES_CHP)$(set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('E',set_tech_DES_CHP,set_toPss))
                 + sum(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('PR',set_tech_DES_CHP,set_toPss))
                 =g=
                 par_P_DES_CHP_min(set_tech_DES_CHP)*sca_delta_ii*var_S_pss(set_t,set_tech_DES_CHP);

EQUATIONS EqCHP5_DES(set_ii,set_pss) Restriktion negative Regelenergie ;
EqCHP5_DES(set_t,set_tech_DES_CHP)$(set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('E',set_tech_DES_CHP,set_toPss))
                 - sum(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('NR',set_tech_DES_CHP,set_toPss))
                 =g=
                 par_P_DES_CHP_min(set_tech_DES_CHP)*sca_delta_ii*var_S_pss(set_t,set_tech_DES_CHP);

Equation EqCHP6_DES(set_ii,set_pss) Restriktion Stromkennzahl;
EqCHP6_DES(set_t,set_tech_DES_CHP)$(set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'W',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('W',set_tech_DES_CHP,set_toPss)) * par_Sigma_DES_CHP(set_tech_DES_CHP)
                 =e=
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('E',set_tech_DES_CHP,set_toPss));

EQUATIONS EqCHP7_DES(set_ii,set_pss) Restriktion positive Regelenergie durch Füllstand (freie Kapazität) Thermischer Speicher oder Wärmenetzeinspeisung;
EqCHP7_DES(set_t,set_tech_DES_CHP)$(set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('PR',set_tech_DES_CHP,set_toPss)) / par_Sigma_DES_CHP(set_tech_DES_CHP)
                 =l=
                 sum(set_fromPss,var_energyFlow(set_t,'NR',set_fromPss,set_tech_DES_CHP)$set_energyLink_opt('NR',set_fromPss,set_tech_DES_CHP));

EQUATIONS EqCHP8_DES(set_ii,set_pss) Restriktion negative Regelenergie durch Füllstand (vorhandene Kapazität) Thermischer Speicher oder Wärmenetzeinspeisung;
EqCHP8_DES(set_t,set_tech_DES_CHP)$(set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('NR',set_tech_DES_CHP,set_toPss)) / par_Sigma_DES_CHP(set_tech_DES_CHP)
                 =l=
                 sum(set_fromPss,var_energyFlow(set_t,'PR',set_fromPss,set_tech_DES_CHP)$set_energyLink_opt('PR',set_fromPss,set_tech_DES_CHP));

$ontext
*Ramp-up und Ramp-down Leistungsschranken
***par_P_pss_ru_general / par_P_pss_rd_general: Maximum Ramp-up und Ramp-down im Rahmen des laufenden Kraftwerks
***par_P_pss_ru_start / par_P_pss_rd_stop: Maximum Ramp-up und Ramp-down im Rahmen eines startenden oder abschlatenden Kraftwerks
***Formeln von Silbernagel et al. 2016 Improving Accuracy and Efficiency of Start-Up Cost Fomulations in MIP Unit Commitment
EQUATION EqCHP11_DES(set_ii_0,set_pss) Leistungsbegrenzung;
EqCHP11_DES(set_ii_0,set_tech_DES_CHP)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('E',set_tech_DES_CHP,set_toPss))
                 +sum(set_toPss,var_energyFlow(set_ii_0,'PR',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('PR',set_tech_DES_CHP,set_toPss)) / par_Sigma_DES_CHP(set_tech_DES_CHP)
                 =l=
                 SUM(set_toPss,var_energyFlow(set_ii_0-1,'E',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('E',set_tech_DES_CHP,set_toPss))
                 + par_P_pss_ru_general(set_tech_DES_CHP)*var_S_pss(set_ii_0-1,set_tech_DES_CHP)*sca_delta_ii
                 + par_P_pss_ru_start(set_tech_DES_CHP)*(1-var_S_pss(set_ii_0-1,set_tech_DES_CHP))*sca_delta_ii
                 - min(par_P_pss_ru_start(set_tech_DES_CHP)*sca_delta_ii, par_P_DES_CHP_min(set_tech_DES_CHP)*sca_delta_ii+par_P_pss_ru_general(set_tech_DES_CHP)*sca_delta_ii)*(1-var_S_pss(set_ii_0,set_tech_DES_CHP)) ;

EQUATION EqCHP12_DES(set_ii_0,set_pss) Leistungsbegrenzung;
EqCHP12_DES(set_ii_0,set_tech_DES_CHP)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('E',set_tech_DES_CHP,set_toPss))
                 -sum(set_toPss,var_energyFlow(set_ii_0,'NR',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('NR',set_tech_DES_CHP,set_toPss)) / par_Sigma_DES_CHP(set_tech_DES_CHP)
                 =g=
                 SUM(set_toPss,var_energyFlow(set_ii_0-1,'E',set_tech_DES_CHP,set_toPss)$set_energyLink_opt('E',set_tech_DES_CHP,set_toPss))
                 - par_P_pss_rd_general(set_tech_DES_CHP)*var_S_pss(set_ii_0,set_tech_DES_CHP)*sca_delta_ii
                 - par_P_pss_rd_stop(set_tech_DES_CHP)*(1-var_S_pss(set_ii_0,set_tech_DES_CHP))*sca_delta_ii
                 - min (par_P_pss_rd_stop(set_tech_DES_CHP)*sca_delta_ii, par_P_DES_CHP_min(set_tech_DES_CHP)*sca_delta_ii+par_P_pss_rd_general(set_tech_DES_CHP)*sca_delta_ii)*(1-var_S_pss(set_ii_0-1,set_tech_DES_CHP)) ;

$offtext
*Temperaturniveau
Equation EqCHP13_DES(set_ii,set_pss) Operationale Temperaturrestriktion;
EqCHP13_DES(set_t,set_tech_DES_CHP)$(set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP) eq 1)..
                  var_S_pss(set_t,set_tech_DES_CHP)
                  =l=
                  var_T_pss(set_t,set_tech_DES_CHP);

Equation EqCHP14_DES(set_ii,set_pss) Operationale Temperaturrestriktion kleiner eins;
EqCHP14_DES(set_t,set_tech_DES_CHP)$(set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP) eq 1)..
                  var_T_pss(set_t,set_tech_DES_CHP)
                  =l=
                  1;

Equation EqCHP15_DES(set_ii_0,set_pss) Initiale Operationale Temperaturveränderung (Equation 23 Silbernagl et al. 2015);
EqCHP15_DES(set_ii_0,set_tech_DES_CHP)$(set_t_help3(set_ii_0) AND set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP) eq 1)..
                  var_T_pss(set_ii_0,set_tech_DES_CHP)
                  =e=
                  sca_exp**(-par_Lambda_DES_CHP_heatlosses(set_tech_DES_CHP)*par_H_pss_presentoff(set_tech_DES_CHP))+var_heating_pss(set_ii_0-1,set_tech_DES_CHP);


Equation EqCHP16_DES(set_ii_0,set_pss) Rekursive Temperaturdefinition;
EqCHP16_DES(set_ii_0,set_tech_DES_CHP)$(set_t_help4(set_ii_0) AND
                                       set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP) eq 1)..
                  var_T_pss(set_ii_0,set_tech_DES_CHP)
                  =e=
                  sca_exp**(-par_Lambda_DES_CHP_heatlosses(set_tech_DES_CHP))*var_T_pss(set_ii_0-1,set_tech_DES_CHP)
                  +(1-sca_exp**(-par_Lambda_DES_CHP_heatlosses(set_tech_DES_CHP)))*var_S_pss(set_ii_0-1,set_tech_DES_CHP)
                  +var_heating_pss(set_ii_0-1,set_tech_DES_CHP);

*Mindestbetriebszeit
***Kraftwerksbezogene dynamische Sets für den Optimierungsdurchlauf definieren und initialisieren
***par_H_pss_requon / par_H_pss_requoff: Verbleibende Prosumestorerlaufzeiten / Verbleibende Prosumestorerstillstandszeiten
***par_H_pss_minon /  par_H_pss_minoff: Prosumestorermindestlaufzeit / Prosumestorermindeststillstandszeit
***sca_numberOptimization: Länge des Optimierungshorizonts
***sca_numberStoring: Länge des Speicherhorizonts
***sca_iterator: Zähler der Optimierungsaufrufe
Equation EqCHP17_DES(set_pss) Mindestbetriebszeiteneinhaltung am Periodenanfang;
EqCHP17_DES(set_tech_DES_CHP)$(set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP) eq 1)..
                  SUM(set_ii$((ORD(set_ii) > sca_numberStoring*sca_iterator) AND (ORD(set_ii) <= sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_DES_CHP))), 1-var_S_pss(set_ii,set_tech_DES_CHP))
                  =e=
                  0;

Equation EqCHP18_DES(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung in Periodenmitte;
EqCHP18_DES(set_ii_0,set_tech_DES_CHP)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_DES_CHP)+1) AND
                                      (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_DES_CHP)+1) AND
                                      set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP) eq 1)..
                  SUM(set_ii_0_duplicate$((ORD(set_ii_0_duplicate) ge sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_DES_CHP)+1) AND (ORD(set_ii_0_duplicate) ge ORD(set_ii_0)) AND (ORD(set_ii_0_duplicate) le (ORD(set_ii_0)+par_H_pss_minon(set_tech_DES_CHP)-1)) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_DES_CHP)+1) ),var_S_pss(set_ii_0_duplicate,set_tech_DES_CHP))
                  =g=
                  par_H_pss_minon(set_tech_DES_CHP)*(var_S_pss(set_ii_0,set_tech_DES_CHP)-var_S_pss(set_ii_0-1,set_tech_DES_CHP));

Equation EqCHP19_DES(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung am Periodenende;
EqCHP19_DES(set_ii_0,set_tech_DES_CHP)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_DES_CHP)+1) AND
                                       (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization+1) AND
                                       set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP) eq 1)..
                 SUM(set_ii_0_duplicate$(ORD(set_ii_0_duplicate) ge ORD(set_ii_0) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization)),var_S_pss(set_ii_0_duplicate,set_tech_DES_CHP)-(var_S_pss(set_ii_0,set_tech_DES_CHP)-var_S_pss(set_ii_0-1,set_tech_DES_CHP)))
                 =g=
                 0;

*Mindeststillstandszeit
Equation EqCHP20_DES(set_pss) Mindeststillstandszeiteneinhaltung am Periodenanfang;
EqCHP20_DES(set_tech_DES_CHP)$(set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP) eq 1)..
                 SUM(set_ii$((ORD(set_ii) > sca_numberStoring*sca_iterator) AND (ORD(set_ii) <= sca_numberStoring*sca_iterator+par_H_pss_requoff(set_tech_DES_CHP))),var_S_pss(set_ii,set_tech_DES_CHP))
                 =e=
                 0;

Equation EqCHP21_DES(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung in Periodenmitte;
EqCHP21_DES(set_ii_0,set_tech_DES_CHP)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+par_H_pss_requoff(set_tech_DES_CHP)+1) AND
                                      (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minoff(set_tech_DES_CHP)+1) AND
                                      set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP) eq 1)..
                  SUM(set_ii_0_duplicate$((ORD(set_ii_0_duplicate) ge ORD(set_ii_0)) AND (ORD(set_ii_0_duplicate) le (ORD(set_ii_0)+par_H_pss_minoff(set_tech_DES_CHP)-1))),1-var_S_pss(set_ii_0_duplicate,set_tech_DES_CHP))
                  =g=
                  par_H_pss_minoff(set_tech_DES_CHP)*var_S_pss_stopp(set_ii_0,set_tech_DES_CHP);

Equation EqCHP22_DES(set_ii_0,set_pss) Mindeststillstandszeiteneinhaltung am Periodenende (Equation 26 Carrion et 2006);
EqCHP22_DES(set_ii_0,set_tech_DES_CHP)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minoff(set_tech_DES_CHP)+1) AND
                                       (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization+1) AND
                                       set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP) eq 1)..
                 SUM(set_ii_0_duplicate$(ORD(set_ii_0_duplicate) ge ORD(set_ii_0) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization+1)),1-var_S_pss(set_ii_0_duplicate,set_tech_DES_CHP)-(var_S_pss(set_ii_0-1,set_tech_DES_CHP)-var_S_pss(set_ii_0,set_tech_DES_CHP)))
                 =g=
                 0;

*Verfügbarkeit
*Equation EqCHP41_DES(set_ii_0,set_pss) Maximalbetriebszeiterlaubnis in Periodenmitte;
*EqCHP41_DES(set_t,set_tech_DES_CHP)$(set_pss_opt(set_tech_DES_CHP) AND par_X_pss_model(set_tech_DES_CHP) eq 1)..
*                  var_S_pss(set_t,set_tech_DES_CHP)
*                  =l=
*                  par_H_pss_techavail(set_t,set_tech_DES_CHP);

*Variabler und absoluter Status
EQUATIONS EqCHP37_DES(set_ii_0,set_pss) Statusübergabe;
EqCHP37_DES(set_t,set_tech_DES_CHP)$(set_pss_opt(set_tech_DES_CHP))..
                 var_absoluteStatus(set_t,set_tech_DES_CHP)
                 =e=
                 var_S_pss_start(set_t,set_tech_DES_CHP);

EQUATIONS EqCHP38_DES(set_ii_0,set_pss) Statusübergabe;
EqCHP38_DES(set_ii_0,set_tech_DES_CHP)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_DES_CHP))..
                 var_relativeStatus(set_ii_0,set_tech_DES_CHP)
                 =e=
                 var_heating_pss(set_ii_0-1,set_tech_DES_CHP);

MODEL mod_tech_DES_CHP_orga / EqCHP0_DES, EqCHP00_DES, EqCHP1_DES, EqCHP2_DES, EqCHP3_DES, EqCHP4_DES, EqCHP5_DES, EqCHP6_DES, EqCHP7_DES, EqCHP8_DES, EqCHP13_DES, EqCHP14_DES, EqCHP15_DES, EqCHP16_DES, EqCHP17_DES, EqCHP18_DES, EqCHP19_DES, EqCHP20_DES, EqCHP21_DES, EqCHP22_DES, EqCHP37_DES, EqCHP38_DES /;
MODEL mod_tech_DES_CHP_cust / EqCHP0_DES, EqCHP00_DES, EqCHP1_DES, EqCHP2_DES, EqCHP3_DES, EqCHP4_DES, EqCHP5_DES, EqCHP6_DES, EqCHP7_DES, EqCHP8_DES, EqCHP13_DES, EqCHP14_DES, EqCHP15_DES, EqCHP16_DES, EqCHP17_DES, EqCHP18_DES, EqCHP19_DES, EqCHP20_DES, EqCHP21_DES, EqCHP22_DES, EqCHP37_DES, EqCHP38_DES /;



