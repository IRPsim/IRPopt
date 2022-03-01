***-----------------------------------------------------------------------------
***Parameter
***-----------------------------------------------------------------------------
Parameter par_alpha_SS_TPS_var(set_tech_SS_TPS) Variabler Anteil des Brennstoffverbrauchs (EQUATION 14 Mollenhauer et al. 2015);
par_alpha_SS_TPS_var(set_tech_SS_TPS)$(par_X_pss_model(set_tech_SS_TPS) eq 1)
=((par_P_SS_TPS_max(set_tech_SS_TPS)*sca_delta_ii/par_Eta_SS_TPS_max(set_tech_SS_TPS))-(par_P_SS_TPS_min(set_tech_SS_TPS)*sca_delta_ii/par_Eta_SS_TPS_min(set_tech_SS_TPS)))/(par_P_SS_TPS_max(set_tech_SS_TPS)*sca_delta_ii-par_P_SS_TPS_min(set_tech_SS_TPS)*sca_delta_ii);

Parameter par_alpha_SS_TPS_fix(set_tech_SS_TPS) Fixer Anteil des Brennstoffverbrauchs (EQUATION 15 Mollenhauer et al. 2015);
par_alpha_SS_TPS_fix(set_tech_SS_TPS)$(par_X_pss_model(set_tech_SS_TPS) eq 1)
=(par_P_SS_TPS_min(set_tech_SS_TPS)*sca_delta_ii/par_Eta_SS_TPS_min(set_tech_SS_TPS))-par_alpha_SS_TPS_var(set_tech_SS_TPS)*par_P_SS_TPS_min(set_tech_SS_TPS)*sca_delta_ii;

***-----------------------------------------------------------------------------
***Variablen
***-----------------------------------------------------------------------------
POSITIVE VARIABLE var_G_SS_TPS_res(set_ii_0,set_tech_SS_TPS) Hilfsvariable Begrenzung Brennstoffverbrauch Reserveenergie;

***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------

EQUATION EqTPS0_SS(set_ii_0,set_pss) Übergabe Statusvariable;
EqTPS0_SS(set_t_ini,set_tech_SS_TPS)$(set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                 var_S_pss(set_t_ini,set_tech_SS_TPS)
                 =e=
                 par_S_pss_initial(set_t_ini,set_tech_SS_TPS);

EQUATION EqTPS2_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Energieflussbegrenzung erster Zeitschritt;
EqTPS2_SS(set_t_ini,set_sector,set_tech_SS_TPS,set_toPss)$(set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1 AND set_energyLink_opt(set_sector,set_tech_SS_TPS,set_toPss))..
                 var_energyFlow(set_t_ini,set_sector,set_tech_SS_TPS,set_toPss)
                 =e=
                 par_energyFlow_orga(set_t_ini,set_sector,set_tech_SS_TPS,set_toPss)

*Brennstoffverbrauch und Wärmeauskopplung
*Brennstoffverbrauch in Abhängigkeit der elektrischen und thermischen Energieauskopplung
*Brennstoffverbrauch und Wärmeauskopplung
*Brennstoffverbrauch in Abhängigkeit der elektrischen und thermischen Energieauskopplung
EQUATION EqTPS3_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqTPS3_SS(set_ii_0,set_sector,set_fromPss,set_tech_SS_TPS)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1 AND set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_TPS))..
                 var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_TPS)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_TPS)
                 =e=
                 par_alpha_SS_TPS_fix(set_tech_SS_TPS)*var_S_pss(set_ii_0,set_tech_SS_TPS)
                 +par_alpha_SS_TPS_var(set_tech_SS_TPS)*sum(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_TPS,set_toPss)$set_energyLink_opt('E',set_tech_SS_TPS,set_toPss));

*Begrenzung Kesselgröße nach oben
EQUATION EqTPS4_1_SS(set_ii,set_sector,set_fromPss,set_toPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqTPS4_1_SS(set_t,set_sector,set_fromPss,set_tech_SS_TPS)$(set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1 AND set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_TPS))..
                 var_energyFlow(set_t,set_sector,set_fromPss,set_tech_SS_TPS)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_TPS)
                 =l=
                 var_S_pss(set_t,set_tech_SS_TPS)*par_P_SS_TPS_max(set_tech_SS_TPS)/par_Eta_SS_TPS_max(set_tech_SS_TPS)*sca_delta_ii;

EQUATION EqTPS4_2_SS(set_ii,set_fromPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqTPS4_2_SS(set_t,set_tech_SS_TPS)$(set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_TPS,set_toPss)$set_energyLink_opt('E',set_tech_SS_TPS,set_toPss))
                 =l=
                 var_S_pss(set_t,set_tech_SS_TPS)*par_P_SS_TPS_max(set_tech_SS_TPS)*sca_delta_ii;

*Begrenzung Kesselgröße nach unten
EQUATION EqTPS6_1_SS(set_ii,set_sector,set_fromPss,set_toPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqTPS6_1_SS(set_t,set_sector,set_fromPss,set_tech_SS_TPS)$(set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1 AND set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_TPS))..
                 var_energyFlow(set_t,set_sector,set_fromPss,set_tech_SS_TPS)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_TPS)
                 =g=
                 var_S_pss(set_t,set_tech_SS_TPS)*par_P_SS_TPS_min(set_tech_SS_TPS)/par_Eta_SS_TPS_min(set_tech_SS_TPS)*sca_delta_ii;

EQUATION EqTPS6_2_SS(set_ii,set_fromPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqTPS6_2_SS(set_t,set_tech_SS_TPS)$(set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_TPS,set_toPss)$set_energyLink_opt('E',set_tech_SS_TPS,set_toPss))
                 =g=
                 var_S_pss(set_t,set_tech_SS_TPS)*par_P_SS_TPS_min(set_tech_SS_TPS)*sca_delta_ii;

*Start-Stopp-Status Relation
EQUATION EqTPS7_1_SS(set_ii_0,set_pss) Restriktion On-Off Relation;
EqTPS7_1_SS(set_ii_0,set_tech_SS_TPS)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                 var_S_pss(set_ii_0,set_tech_SS_TPS)-var_S_pss(set_ii_0-1,set_tech_SS_TPS)
                 =e=
                 var_S_pss_start(set_ii_0,set_tech_SS_TPS)-var_S_pss_stopp(set_ii_0,set_tech_SS_TPS);

EQUATION EqTPS7_2_SS(set_ii_0,set_pss) Restriktion On-Off Relation;
EqTPS7_2_SS(set_ii_0,set_tech_SS_TPS)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                 var_S_pss_start(set_ii_0,set_tech_SS_TPS)+var_S_pss_stopp(set_ii_0,set_tech_SS_TPS)
                 =l=
                 1;

*Leistungsschranken
EQUATION EqTPS11_SS(set_ii_0,set_pss) Leistungsbegrenzung;
EqTPS11_SS(set_ii_0,set_tech_SS_TPS)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_TPS,set_toPss)$set_energyLink_opt('E',set_tech_SS_TPS,set_toPss))
                 +SUM(set_toPss,var_energyFlow(set_ii_0,'PR',set_tech_SS_TPS,set_toPss)$set_energyLink_opt('PR',set_tech_SS_TPS,set_toPss))
                 =l=
                 SUM(set_toPss,var_energyFlow(set_ii_0-1,'E',set_tech_SS_TPS,set_toPss)$set_energyLink_opt('E',set_tech_SS_TPS,set_toPss))
                 + par_P_pss_ru_general(set_tech_SS_TPS)*var_S_pss(set_ii_0-1,set_tech_SS_TPS)*sca_delta_ii
                 + par_P_pss_ru_start(set_tech_SS_TPS)*(1-var_S_pss(set_ii_0-1,set_tech_SS_TPS))*sca_delta_ii
                 - min (par_P_pss_ru_start(set_tech_SS_TPS)*sca_delta_ii, par_P_SS_TPS_min(set_tech_SS_TPS)*sca_delta_ii+par_P_pss_ru_general(set_tech_SS_TPS)*sca_delta_ii)*(1-var_S_pss(set_ii_0,set_tech_SS_TPS)) ;

EQUATION EqTPS12_SS(set_ii_0,set_pss) Leistungsbegrenzung;
EqTPS12_SS(set_ii_0,set_tech_SS_TPS)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_TPS,set_toPss)$set_energyLink_opt('E',set_tech_SS_TPS,set_toPss))
                 -SUM(set_toPss,var_energyFlow(set_ii_0,'NR',set_tech_SS_TPS,set_toPss)$set_energyLink_opt('NR',set_tech_SS_TPS,set_toPss))
                 =g=
                 SUM(set_toPss,var_energyFlow(set_ii_0-1,'E',set_tech_SS_TPS,set_toPss)$set_energyLink_opt('E',set_tech_SS_TPS,set_toPss))
                 - par_P_pss_rd_general(set_tech_SS_TPS)*var_S_pss(set_ii_0,set_tech_SS_TPS)*sca_delta_ii
                 - par_P_pss_rd_stop(set_tech_SS_TPS)*(1-var_S_pss(set_ii_0,set_tech_SS_TPS))*sca_delta_ii
                 - min (par_P_pss_rd_stop(set_tech_SS_TPS)*sca_delta_ii, par_P_SS_TPS_min(set_tech_SS_TPS)*sca_delta_ii+par_P_pss_rd_general(set_tech_SS_TPS)*sca_delta_ii)*(1-var_S_pss(set_ii_0-1,set_tech_SS_TPS)) ;


*Temperaturniveau
Equation EqTPS13_SS(set_ii,set_pss) Operationale Temperaturrestriktion;
EqTPS13_SS(set_t,set_tech_SS_TPS)$(set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                  var_S_pss(set_t,set_tech_SS_TPS)
                  =l=
                  var_T_pss(set_t,set_tech_SS_TPS);

Equation EqTPS14_SS(set_ii,set_pss) Operationale Temperaturrestriktion kleiner eins;
EqTPS14_SS(set_t,set_tech_SS_TPS)$(set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                  var_T_pss(set_t,set_tech_SS_TPS)
                  =l=
                  1;

Equation EqTPS15_SS(set_ii_0,set_pss) Initiale Operationale Temperaturveränderung (Equation 23 Silbernagl et al. 2015);
EqTPS15_SS(set_ii_0,set_tech_SS_TPS)$(set_t_help3(set_ii_0) AND set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                  var_T_pss(set_ii_0,set_tech_SS_TPS)
                  =e=
                  sca_exp**(-par_Lambda_SS_TPS_heatlosses(set_tech_SS_TPS)*par_H_pss_presentoff(set_tech_SS_TPS))+var_heating_pss(set_ii_0-1,set_tech_SS_TPS);


Equation EqTPS16_SS(set_ii_0,set_pss) Rekursive Temperaturdefinition;
EqTPS16_SS(set_ii_0,set_tech_SS_TPS)$(set_t_help4(set_ii_0) AND
                                       set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                  var_T_pss(set_ii_0,set_tech_SS_TPS)
                  =e=
                  sca_exp**(-par_Lambda_SS_TPS_heatlosses(set_tech_SS_TPS))*var_T_pss(set_ii_0-1,set_tech_SS_TPS)
                  +(1-sca_exp**(-par_Lambda_SS_TPS_heatlosses(set_tech_SS_TPS)))*var_S_pss(set_ii_0-1,set_tech_SS_TPS)+var_heating_pss(set_ii_0-1,set_tech_SS_TPS);

*Mindestbetriebszeit
***Kraftwerksbezogene dynamische Sets für den Optimierungsdurchlauf definieren und initialisieren
***par_H_pss_requon / par_H_pss_requoff: Verbleibende Prosumestorerlaufzeiten / Verbleibende Prosumestorerstillstandszeiten
***par_H_pss_minon /  par_H_pss_minoff: Prosumestorermindestlaufzeit / Prosumestorermindeststillstandszeit
***sca_numberOptimization: Länge des Optimierungshorizonts
***sca_numberStoring: Länge des Speicherhorizonts
***sca_iterator: Zähler der Optimierungsaufrufe
Equation EqTPS17_SS(set_pss) Mindestbetriebszeiteneinhaltung am Periodenanfang;
EqTPS17_SS(set_tech_SS_TPS)$(set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                  SUM(set_ii$((ORD(set_ii) > sca_numberStoring*sca_iterator) AND (ORD(set_ii) <= sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_SS_TPS))), 1-var_S_pss(set_ii,set_tech_SS_TPS))
                  =e=
                  0;

Equation EqTPS18_SS(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung in Periodenmitte;
EqTPS18_SS(set_ii_0,set_tech_SS_TPS)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_SS_TPS)+1) AND
                                      (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_SS_TPS)+1) AND
                                      set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                  SUM(set_ii_0_duplicate$((ORD(set_ii_0_duplicate) ge sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_SS_TPS)+1) AND (ORD(set_ii_0_duplicate) ge ORD(set_ii_0)) AND (ORD(set_ii_0_duplicate) le (ORD(set_ii_0)+par_H_pss_minon(set_tech_SS_TPS)-1)) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_SS_TPS)+1) ),var_S_pss(set_ii_0_duplicate,set_tech_SS_TPS))
                  =g=
                  par_H_pss_minon(set_tech_SS_TPS)*(var_S_pss(set_ii_0,set_tech_SS_TPS)-var_S_pss(set_ii_0-1,set_tech_SS_TPS));

Equation EqTPS19_SS(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung am Periodenende;
EqTPS19_SS(set_ii_0,set_tech_SS_TPS)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_SS_TPS)+1) AND
                                       (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization+1) AND
                                       set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                 SUM(set_ii_0_duplicate$(ORD(set_ii_0_duplicate) ge ORD(set_ii_0) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization)),var_S_pss(set_ii_0_duplicate,set_tech_SS_TPS)-(var_S_pss(set_ii_0,set_tech_SS_TPS)-var_S_pss(set_ii_0-1,set_tech_SS_TPS)))
                 =g=
                 0;

*Mindeststillstandszeit
Equation EqTPS20_SS(set_pss) Mindeststillstandszeiteneinhaltung am Periodenanfang;
EqTPS20_SS(set_tech_SS_TPS)$(set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                 SUM(set_ii$((ORD(set_ii) > sca_numberStoring*sca_iterator) AND (ORD(set_ii) <= sca_numberStoring*sca_iterator+par_H_pss_requoff(set_tech_SS_TPS))),var_S_pss(set_ii,set_tech_SS_TPS))
                 =e=
                 0;

Equation EqTPS21_SS(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung in Periodenmitte;
EqTPS21_SS(set_ii_0,set_tech_SS_TPS)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+par_H_pss_requoff(set_tech_SS_TPS)+1) AND
                                      (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minoff(set_tech_SS_TPS)+1) AND
                                      set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                  SUM(set_ii_0_duplicate$((ORD(set_ii_0_duplicate) ge ORD(set_ii_0)) AND (ORD(set_ii_0_duplicate) le (ORD(set_ii_0)+par_H_pss_minoff(set_tech_SS_TPS)-1))),1-var_S_pss(set_ii_0_duplicate,set_tech_SS_TPS))
                  =g=
                  par_H_pss_minoff(set_tech_SS_TPS)*var_S_pss_stopp(set_ii_0,set_tech_SS_TPS);

Equation EqTPS22_SS(set_ii_0,set_pss) Mindeststillstandszeiteneinhaltung am Periodenende (Equation 26 Carrion et 2006);
EqTPS22_SS(set_ii_0,set_tech_SS_TPS)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minoff(set_tech_SS_TPS)+1) AND
                                       (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization+1) AND
                                       set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                 SUM(set_ii_0_duplicate$(ORD(set_ii_0_duplicate) ge ORD(set_ii_0) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization+1)),1-var_S_pss(set_ii_0_duplicate,set_tech_SS_TPS)-(var_S_pss(set_ii_0-1,set_tech_SS_TPS)-var_S_pss(set_ii_0,set_tech_SS_TPS)))
                 =g=
                 0;

*Verfügbarkeit
Equation EqTPS41_SS(set_ii_0,set_pss) Maximalbetriebszeiterlaubnis in Periodenmitte;
EqTPS41_SS(set_t,set_tech_SS_TPS)$(set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                  var_S_pss(set_t,set_tech_SS_TPS)
                  =l=
                  par_H_pss_techavail(set_t,set_tech_SS_TPS);

*Reservevorhaltung
EQUATIONS EqTPS28_SS(set_ii,set_pss) Begrenzung negative Vorhaltung von Regelenergie durch maximale elektrische Leistung Gegendruckkraftwerk;
EqTPS28_SS(set_t,set_tech_SS_TPS)$(set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_TPS,set_toPss)$set_energyLink_opt('E',set_tech_SS_TPS,set_toPss))
                 +SUM(set_toPss,var_energyFlow(set_t,'PR',set_tech_SS_TPS,set_toPss)$set_energyLink_opt('PR',set_tech_SS_TPS,set_toPss))
                 =l=
                 var_S_pss(set_t,set_tech_SS_TPS)*par_P_SS_TPS_max(set_tech_SS_TPS)*sca_delta_ii;

EQUATIONS EqTPS29_SS(set_ii,set_pss) Begrenzung positive Vorhaltung von Regelenergie durch maximale elektrische Leistung Gegendruckkraftwerk;
EqTPS29_SS(set_t,set_tech_SS_TPS)$(set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_TPS,set_toPss)$set_energyLink_opt('E',set_tech_SS_TPS,set_toPss))
                 +SUM(set_toPss,var_energyFlow(set_t,'PR',set_tech_SS_TPS,set_toPss)$set_energyLink_opt('PR',set_tech_SS_TPS,set_toPss))
                 =g=
                 var_S_pss(set_t,set_tech_SS_TPS)*par_P_SS_TPS_min(set_tech_SS_TPS)*sca_delta_ii;

EQUATION EqTPS30_SS(set_ii_0,set_pss) Begrenzung negative Regelenergievorhaltung;
EqTPS30_SS(set_t,set_tech_SS_TPS)$(set_pss_opt(set_tech_SS_TPS) AND par_X_pss_model(set_tech_SS_TPS) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_TPS,set_toPss)$set_energyLink_opt('E',set_tech_SS_TPS,set_toPss))
                 -SUM(set_toPss,var_energyFlow(set_t,'NR',set_tech_SS_TPS,set_toPss)$set_energyLink_opt('NR',set_tech_SS_TPS,set_toPss))
                 =g=
                 var_S_pss(set_t,set_tech_SS_TPS)*par_P_SS_TPS_min(set_tech_SS_TPS)*sca_delta_ii;

*Variabler und absoluter Status
EQUATIONS EqTPS37_SS(set_ii_0,set_pss) Statusübergabe;
EqTPS37_SS(set_t,set_tech_SS_TPS)$(set_pss_opt(set_tech_SS_TPS))..
                 var_absoluteStatus(set_t,set_tech_SS_TPS)
                 =e=
                 var_S_pss_start(set_t,set_tech_SS_TPS);

EQUATIONS EqTPS38_SS(set_ii_0,set_pss) Statusübergabe;
EqTPS38_SS(set_ii_0,set_tech_SS_TPS)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_TPS))..
                 var_relativeStatus(set_ii_0,set_tech_SS_TPS)
                 =e=
                 var_heating_pss(set_ii_0-1,set_tech_SS_TPS);

MODEL mod_tech_SS_TPS_orga / EqTPS0_SS, EqTPS2_SS, EqTPS3_SS, EqTPS4_1_SS, EqTPS4_2_SS, EqTPS6_1_SS, EqTPS6_2_SS, EqTPS7_1_SS, EqTPS7_2_SS, EqTPS11_SS, EqTPS12_SS, EqTPS13_SS, EqTPS14_SS, EqTPS15_SS, EqTPS16_SS, EqTPS17_SS, EqTPS18_SS, EqTPS19_SS, EqTPS20_SS, EqTPS21_SS, EqTPS22_SS, EqTPS28_SS, EqTPS29_SS, EqTPS30_SS, EqTPS37_SS, EqTPS38_SS, EqTPS41_SS/;
MODEL mod_tech_SS_TPS_cust / EqTPS0_SS, EqTPS2_SS, EqTPS3_SS, EqTPS4_1_SS, EqTPS4_2_SS, EqTPS6_1_SS, EqTPS6_2_SS, EqTPS7_1_SS, EqTPS7_2_SS, EqTPS11_SS, EqTPS12_SS, EqTPS13_SS, EqTPS14_SS, EqTPS15_SS, EqTPS16_SS, EqTPS17_SS, EqTPS18_SS, EqTPS19_SS, EqTPS20_SS, EqTPS21_SS, EqTPS22_SS, EqTPS28_SS, EqTPS29_SS, EqTPS30_SS, EqTPS37_SS, EqTPS38_SS, EqTPS41_SS/;
