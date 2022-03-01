***-----------------------------------------------------------------------------
***Parameter
***-----------------------------------------------------------------------------


Parameter par_beta_SS_CHP(set_ii_0,set_tech_SS_CHP) Temperaturabhängige Stromverlustkennziffer [MW_el je MW_th] (EQUATION 9 Mollenhauer et al. 2015);
par_beta_SS_CHP(set_ii,set_tech_SS_CHP)$(par_X_pss_model(set_tech_SS_CHP) eq 1
AND ((273.15+par_T_SS_CHP_feed(set_ii,set_tech_SS_CHP))-(273.15+par_T_SS_CHP_return(set_ii,set_tech_SS_CHP))) ne 0)
= 1 - (((273.15+par_T_SS_CHP_cooling(set_ii,set_tech_SS_CHP))*log((273.15+par_T_SS_CHP_feed(set_ii,set_tech_SS_CHP))/(273.15+par_T_SS_CHP_return(set_ii,set_tech_SS_CHP))))
/((273.15+par_T_SS_CHP_feed(set_ii,set_tech_SS_CHP))-(273.15+par_T_SS_CHP_return(set_ii,set_tech_SS_CHP))));


Parameter par_alpha_SS_CHP_var(set_tech_SS_CHP) Variabler Anteil des Brennstoffverbrauchs (EQUATION 14 Mollenhauer et al. 2015);
par_alpha_SS_CHP_var(set_tech_SS_CHP)$(par_X_pss_model(set_tech_SS_CHP) eq 1)
=(((par_P_SS_CHP_max(set_tech_SS_CHP)/par_Eta_SS_CHP_max(set_tech_SS_CHP))-(par_P_SS_CHP_min(set_tech_SS_CHP)/par_Eta_SS_CHP_min(set_tech_SS_CHP)))/(par_P_SS_CHP_max(set_tech_SS_CHP)-par_P_SS_CHP_min(set_tech_SS_CHP)));

Parameter par_alpha_SS_CHP_fix(set_tech_SS_CHP) Fixer Anteil des Brennstoffverbrauchs (EQUATION 15 Mollenhauer et al. 2015);
par_alpha_SS_CHP_fix(set_tech_SS_CHP)$(par_X_pss_model(set_tech_SS_CHP) eq 1)
=((par_P_SS_CHP_min(set_tech_SS_CHP)/par_Eta_SS_CHP_min(set_tech_SS_CHP))-par_alpha_SS_CHP_var(set_tech_SS_CHP)*par_P_SS_CHP_min(set_tech_SS_CHP))*sca_delta_ii;

***-----------------------------------------------------------------------------
***Variablen
***-----------------------------------------------------------------------------
POSITIVE VARIABLE var_G_SS_CHP_res(set_ii_0,set_tech_SS_CHP) Hilfsvariable Begrenzung Brennstoffverbrauch Reserveenergie;

POSITIVE VARIABLE var_W_SS_CHP_negres(set_ii_0,set_tech_SS_CHP) Hilfsvariable Begrenzung thermische Reserveenergie;
POSITIVE VARIABLE var_W_SS_CHP_posres(set_ii_0,set_tech_SS_CHP) Hilfsvariable Begrenzung thermische Reserveenergie;

POSITIVE VARIABLE var_E1_SS_CHP_negres(set_ii_0,set_tech_SS_CHP) Hilfsvariable Begrenzung elektrische Reserveenergie - Entnahmekondensationskraftwerk in Abhängigkeit der variablen Stromkennzahl;
POSITIVE VARIABLE var_E1_SS_CHP_posres(set_ii_0,set_tech_SS_CHP) Hilfsvariable Begrenzung elektrische Reserveenergie - Entnahmekondensationskraftwerk in Abhängigkeit der variablen Stromkennzahl;

POSITIVE VARIABLE var_E2_SS_CHP_negres(set_ii_0,set_tech_SS_CHP) Hilfsvariable Begrenzung elektrische Reserveenergie - Entnahmekondensationskraftwerk und Gegendruckanlage in Abhängigkeit der Aufnahme des Fernwärmenetzes;
POSITIVE VARIABLE var_E2_SS_CHP_posres(set_ii_0,set_tech_SS_CHP) Hilfsvariable Begrenzung elektrische Reserveenergie - Entnahmekondensationskraftwerk und Gegendruckanlage in Abhängigkeit der Aufnahme des Fernwärmenetzes;

Positive Variable var_E_chp(set_ii_0,set_tech_SS_CHP);
Positive Variable var_E_chp_add(set_ii_0,set_tech_SS_CHP);
Positive Variable var_W_chp(set_ii_0,set_tech_SS_CHP);
Positive Variable var_W_chp_add(set_ii_0,set_tech_SS_CHP);
Positive Variable var_G_chp(set_ii_0,set_tech_SS_CHP);
Positive Variable var_G_chp_add(set_ii_0,set_tech_SS_CHP);
Binary Variable var_S_chp_zusatzfeuerung(set_ii_0,set_tech_SS_CHP);
***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
EQUATION EqCHPLSW0_SS(set_ii_0,set_pss) Übergabe Statusvariable;
EqCHPLSW0_SS(set_t_ini,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_S_pss(set_t_ini,set_tech_SS_CHP)
                 =e=
                 par_S_pss_initial(set_t_ini,set_tech_SS_CHP);

EQUATION EqCHPLSW00_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Energieflussbegrenzung erster Zeitschritt;
EqCHPLSW00_SS(set_t_ini,set_sector,set_tech_SS_CHP,set_toPss)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND set_energyLink_opt(set_sector,set_tech_SS_CHP,set_toPss) AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_energyFlow(set_t_ini,set_sector,set_tech_SS_CHP,set_toPss)
                 =e=
                 par_energyFlow_orga(set_t_ini,set_sector,set_tech_SS_CHP,set_toPss)

EQUATION EqCHPLSW000_SS(set_ii_0,set_pss) Übergabe Statusvariable;
EqCHPLSW000_SS(set_t_ini,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_S_pss(set_t_ini,set_tech_SS_CHP)
                 =e=
                 var_E_chp_add(set_t_ini,set_tech_SS_CHP) ;

EQUATION EqCHPLSW0000_SS(set_ii_0,set_pss) Übergabe Statusvariable;
EqCHPLSW0000_SS(set_t_ini,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_S_pss(set_t_ini,set_tech_SS_CHP)
                 =e=
                 var_E_chp(set_t_ini,set_tech_SS_CHP) ;




EQUATION EqCHPLSW1_SS(set_ii,set_fromPss) Maximallast elektrisch;
EqCHPLSW1_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_E_chp(set_t,set_tech_SS_CHP)
                 =l=
                 var_S_pss(set_t,set_tech_SS_CHP)*par_P_SS_CHP_max(set_tech_SS_CHP);

EQUATION EqCHPLSW2_SS(set_ii,set_fromPss) Minimallast elektrisch;
EqCHPLSW2_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_E_chp(set_t,set_tech_SS_CHP)
                 =g=
                 var_S_pss(set_t,set_tech_SS_CHP)*par_P_SS_CHP_min(set_tech_SS_CHP);

EQUATION EqCHPLSW141_SS(set_ii,set_pss) Minimale Leistung Wärmeentkopplung;
EqCHPLSW141_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP)=1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_W_chp(set_t,set_tech_SS_CHP)
                 =g=
                 par_Q_SS_CHP_max(set_tech_SS_CHP)*0.445738*var_S_pss(set_t,set_tech_SS_CHP);

EQUATION EqCHPLSW142_SS(set_ii,set_pss) Maximale Leistung Wärmeentkopplung;
EqCHPLSW142_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP)=1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_W_chp(set_t,set_tech_SS_CHP)
                 =l=
                 par_Q_SS_CHP_max(set_tech_SS_CHP)*var_S_pss(set_t,set_tech_SS_CHP);

EQUATION EqCHPLSW10_SS(set_ii,set_pss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqCHPLSW10_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP)=1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_W_chp(set_t,set_tech_SS_CHP)
                 =l=
                 var_E_chp(set_t,set_tech_SS_CHP)*0.75+28.18*var_S_pss(set_t,set_tech_SS_CHP);

EQUATION EqCHPLSW11_SS(set_ii,set_pss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqCHPLSW11_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP)=1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_E_chp(set_t,set_tech_SS_CHP)*0.63+17.58*var_S_pss(set_t,set_tech_SS_CHP)
                 - var_W_chp(set_t,set_tech_SS_CHP)
                 =g=
                 0;

*Ausschalten
EQUATION EqCHPLSW3_SS(set_ii_0,set_pss) Restriktion On-Off Relation;
EqCHPLSW3_SS(set_ii_0,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_S_pss(set_ii_0,set_tech_SS_CHP)-var_S_pss(set_ii_0-1,set_tech_SS_CHP)
                 =e=
                 var_S_pss_start(set_ii_0,set_tech_SS_CHP)-var_S_pss_stopp(set_ii_0,set_tech_SS_CHP);

EQUATION EqCHPLSW4_SS(set_ii_0,set_pss) Restriktion On-Off Relation;
EqCHPLSW4_SS(set_ii_0,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_S_pss_start(set_ii_0,set_tech_SS_CHP)+var_S_pss_stopp(set_ii_0,set_tech_SS_CHP)
                 =l=
                 1;

EQUATION EqCHPLSW15_SS(set_ii,set_pss) Gasbezug;
EqCHPLSW15_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP)=1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_G_chp(set_t,set_tech_SS_CHP)
                 =e=
                 var_E_chp(set_t,set_tech_SS_CHP)*1.81+47.3*var_S_pss(set_t,set_tech_SS_CHP);

EQUATIONS EqCHPLSW37_SS(set_ii_0,set_pss) Statusübergabe;
EqCHPLSW37_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_absoluteStatus(set_t,set_tech_SS_CHP)
                 =e=
                 var_S_pss_start(set_t,set_tech_SS_CHP);



*Mindestbetriebszeit
***Kraftwerksbezogene dynamische Sets für den Optimierungsdurchlauf definieren und initialisieren
***par_H_pss_requon / par_H_pss_requoff: Verbleibende Prosumestorerlaufzeiten / Verbleibende Prosumestorerstillstandszeiten
***par_H_pss_minon /  par_H_pss_minoff: Prosumestorermindestlaufzeit / Prosumestorermindeststillstandszeit
***sca_numberOptimization: Länge des Optimierungshorizonts
***sca_numberStoring: Länge des Speicherhorizonts
***sca_iterator: Zähler der Optimierungsaufrufe
Equation EqCHPLSW51_SS(set_pss) Mindestbetriebszeiteneinhaltung am Periodenanfang;
EqCHPLSW51_SS(set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                  SUM(set_ii$((ORD(set_ii) > sca_numberStoring*sca_iterator) AND (ORD(set_ii) <= sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_SS_CHP))), 1-var_S_pss(set_ii,set_tech_SS_CHP))
                  =e=
                  0;

Equation EqCHPLSW52_SS(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung in Periodenmitte;
EqCHPLSW52_SS(set_ii_0,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_SS_CHP)+1) AND
                                      (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_SS_CHP)+1) AND
                                      set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                  SUM(set_ii_0_duplicate$((ORD(set_ii_0_duplicate) ge sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_SS_CHP)+1) AND (ORD(set_ii_0_duplicate) ge ORD(set_ii_0)) AND (ORD(set_ii_0_duplicate) le (ORD(set_ii_0)+par_H_pss_minon(set_tech_SS_CHP)-1)) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_SS_CHP)+1) ),var_S_pss(set_ii_0_duplicate,set_tech_SS_CHP))
                  =g=
                  par_H_pss_minon(set_tech_SS_CHP)*(var_S_pss(set_ii_0,set_tech_SS_CHP)-var_S_pss(set_ii_0-1,set_tech_SS_CHP));

Equation EqCHPLSW53_SS(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung am Periodenende;
EqCHPLSW53_SS(set_ii_0,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_SS_CHP)+1) AND
                                       (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization+1) AND
                                       set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 SUM(set_ii_0_duplicate$(ORD(set_ii_0_duplicate) ge ORD(set_ii_0) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization)),var_S_pss(set_ii_0_duplicate,set_tech_SS_CHP)-(var_S_pss(set_ii_0,set_tech_SS_CHP)-var_S_pss(set_ii_0-1,set_tech_SS_CHP)))
                 =g=
                 0;

*Mindeststillstandszeit
Equation EqCHPLSW54_SS(set_pss) Mindeststillstandszeiteneinhaltung am Periodenanfang;
EqCHPLSW54_SS(set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 SUM(set_ii$((ORD(set_ii) > sca_numberStoring*sca_iterator) AND (ORD(set_ii) <= sca_numberStoring*sca_iterator+par_H_pss_requoff(set_tech_SS_CHP))),var_S_pss(set_ii,set_tech_SS_CHP))
                 =e=
                 0;

Equation EqCHPLSW55_SS(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung in Periodenmitte;
EqCHPLSW55_SS(set_ii_0,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+par_H_pss_requoff(set_tech_SS_CHP)+1) AND
                                      (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minoff(set_tech_SS_CHP)+1) AND
                                      set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                  SUM(set_ii_0_duplicate$((ORD(set_ii_0_duplicate) ge ORD(set_ii_0)) AND (ORD(set_ii_0_duplicate) le (ORD(set_ii_0)+par_H_pss_minoff(set_tech_SS_CHP)-1))),1-var_S_pss(set_ii_0_duplicate,set_tech_SS_CHP))
                  =g=
                  par_H_pss_minoff(set_tech_SS_CHP)*var_S_pss_stopp(set_ii_0,set_tech_SS_CHP);

Equation EqCHPLSW56_SS(set_ii_0,set_pss) Mindeststillstandszeiteneinhaltung am Periodenende (Equation 26 Carrion et 2006);
EqCHPLSW56_SS(set_ii_0,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minoff(set_tech_SS_CHP)+1) AND
                                       (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization+1) AND
                                       set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 SUM(set_ii_0_duplicate$(ORD(set_ii_0_duplicate) ge ORD(set_ii_0) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization+1)),1-var_S_pss(set_ii_0_duplicate,set_tech_SS_CHP)-(var_S_pss(set_ii_0-1,set_tech_SS_CHP)-var_S_pss(set_ii_0,set_tech_SS_CHP)))
                 =g=
                 0;

*Leistungsschranken
EQUATION EqCHPLSW57_SS(set_ii_0,set_pss) Leistungsbegrenzung;
EqCHPLSW57_SS(set_ii_0,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_E_chp(set_ii_0,set_tech_SS_CHP)+var_E_chp_add(set_ii_0,set_tech_SS_CHP)
*                 +var_E2_SS_CHP_posres(set_ii_0,set_tech_SS_CHP)
                 =l=
                 var_E_chp(set_ii_0-1,set_tech_SS_CHP)+var_E_chp_add(set_ii_0-1,set_tech_SS_CHP)
                 + par_P_pss_ru_general(set_tech_SS_CHP)*var_S_pss(set_ii_0-1,set_tech_SS_CHP)
                 + par_P_pss_ru_start(set_tech_SS_CHP)*(1-var_S_pss(set_ii_0-1,set_tech_SS_CHP))
                 - min(par_P_pss_ru_start(set_tech_SS_CHP), par_P_SS_CHP_min(set_tech_SS_CHP)+par_P_pss_ru_general(set_tech_SS_CHP))*(1-var_S_pss(set_ii_0,set_tech_SS_CHP)) ;

EQUATION EqCHPLSW58_SS(set_ii_0,set_pss) Leistungsbegrenzung;
EqCHPLSW58_SS(set_ii_0,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_E_chp(set_ii_0,set_tech_SS_CHP)+var_E_chp_add(set_ii_0,set_tech_SS_CHP)
*                 -var_E2_SS_CHP_negres(set_ii_0,set_tech_SS_CHP)
                 =g=
                 var_E_chp(set_ii_0-1,set_tech_SS_CHP)+var_E_chp_add(set_ii_0-1,set_tech_SS_CHP)
                 - par_P_pss_rd_general(set_tech_SS_CHP)*var_S_pss(set_ii_0,set_tech_SS_CHP)
                 - par_P_pss_rd_stop(set_tech_SS_CHP)*(1-var_S_pss(set_ii_0,set_tech_SS_CHP))
                 - min (par_P_pss_rd_stop(set_tech_SS_CHP), par_P_SS_CHP_min(set_tech_SS_CHP)+par_P_pss_rd_general(set_tech_SS_CHP))*(1-var_S_pss(set_ii_0-1,set_tech_SS_CHP)) ;



EQUATION EqCHPLSW12_SS(set_ii,set_pss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqCHPLSW12_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP)=1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_E_chp(set_t,set_tech_SS_CHP)*0.75+28.18*var_S_pss(set_t,set_tech_SS_CHP)
                 - var_W_chp(set_t,set_tech_SS_CHP)
                 =g=
                 0;

EQUATION EqCHPLSW13_SS(set_ii,set_pss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqCHPLSW13_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP)=1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_W_chp(set_t,set_tech_SS_CHP)
                 -var_E_chp(set_t,set_tech_SS_CHP)*0.63-17.58*var_S_pss(set_t,set_tech_SS_CHP)
                 =g=
                 0;

EQUATION EqCHPLSW1zusatz_SS(set_ii,set_fromPss) Maximallast elektrisch;
EqCHPLSW1zusatz_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_E_chp(set_t,set_tech_SS_CHP)/par_P_SS_CHP_max(set_tech_SS_CHP)/0.75
                 -var_S_chp_zusatzfeuerung(set_t,set_tech_SS_CHP)
                 =g=
                 0;

EQUATION EqCHPLSW2zusatz_SS(set_ii,set_fromPss) Minimallast elektrisch;
EqCHPLSW2zusatz_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_S_chp_zusatzfeuerung(set_t,set_tech_SS_CHP)
                 -var_W_chp_add(set_t,set_tech_SS_CHP)/(par_Q_SS_CHP_max(set_tech_SS_CHP)*0.17)
                 =g=
                 0;

EQUATION EqCHPLSW3zusatz_SS(set_ii,set_fromPss) Minimallast elektrisch;
EqCHPLSW3zusatz_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_E_chp_add(set_t,set_tech_SS_CHP)
                 =e=
                 0.36*var_W_chp_add(set_t,set_tech_SS_CHP);

EQUATION EqCHPLSW4zusatz_SS(set_ii,set_fromPss) Minimallast elektrisch;
EqCHPLSW4zusatz_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_G_chp_add(set_t,set_tech_SS_CHP)
                 =e=
                 1.5*var_W_chp_add(set_t,set_tech_SS_CHP);

EQUATION EqCHPLSW5zusatz_SS(set_ii,set_fromPss) Minimallast elektrisch;
EqCHPLSW5zusatz_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 var_W_chp_add(set_t,set_tech_SS_CHP)
                 =l=
                 par_Q_SS_CHP_max(set_tech_SS_CHP)*0.17*var_S_pss(set_t,set_tech_SS_CHP);



EQUATION EqCHPLSW99a_SS(set_ii,set_fromPss) Minimallast elektrisch;
EqCHPLSW99a_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss))
                 =e=
                 (var_E_chp(set_t,set_tech_SS_CHP)+var_E_chp_add(set_t,set_tech_SS_CHP))*sca_delta_ii;


EQUATION EqCHPLSW99b_SS(set_ii,set_fromPss) Minimallast elektrisch;
EqCHPLSW99b_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('W',set_tech_SS_CHP,set_toPss))
                 =e=
                 (var_W_chp(set_t,set_tech_SS_CHP)+var_W_chp_add(set_t,set_tech_SS_CHP))*sca_delta_ii;

EQUATION EqCHPLSW99c_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqCHPLSW99c_SS(set_ii_0,set_sector,set_fromPss,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_CHP) AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 1)..
                var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_CHP)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_CHP)
                 =e=
                 (var_G_chp(set_ii_0,set_tech_SS_CHP)+var_G_chp_add(set_ii_0,set_tech_SS_CHP))*sca_delta_ii;



*ALTES CHP
***************************************************************************************
***************************************************************************************
***************************************************************************************
EQUATION EqCHP0_SS(set_ii_0,set_pss) Übergabe Statusvariable;
EqCHP0_SS(set_t_ini,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                 var_S_pss(set_t_ini,set_tech_SS_CHP)
                 =e=
                 par_S_pss_initial(set_t_ini,set_tech_SS_CHP);

EQUATION EqCHP2_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Energieflussbegrenzung erster Zeitschritt;
EqCHP2_SS(set_t_ini,set_sector,set_tech_SS_CHP,set_toPss)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0  AND set_energyLink_opt(set_sector,set_tech_SS_CHP,set_toPss))..
                 var_energyFlow(set_t_ini,set_sector,set_tech_SS_CHP,set_toPss)
                 =e=
                 par_energyFlow_orga(set_t_ini,set_sector,set_tech_SS_CHP,set_toPss)

*Brennstoffverbrauch und Wärmeauskopplung
*Brennstoffverbrauch in Abhängigkeit der elektrischen und thermischen Energieauskopplung
*Brennstoffverbrauch und Wärmeauskopplung
*Brennstoffverbrauch in Abhängigkeit der elektrischen und thermischen Energieauskopplung
EQUATION EqCHP3_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqCHP3_SS(set_ii_0,set_sector,set_fromPss,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0  AND set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_CHP))..
                 var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_CHP)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_CHP)
                 =e=
                 par_alpha_SS_CHP_fix(set_tech_SS_CHP)*var_S_pss(set_ii_0,set_tech_SS_CHP)
                 +par_alpha_SS_CHP_var(set_tech_SS_CHP)*(sum(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss))
                 +par_beta_SS_CHP(set_ii_0,set_tech_SS_CHP)*sum(set_toPss,var_energyFlow(set_ii_0,'W',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('W',set_tech_SS_CHP,set_toPss)));

*Begrenzung Kesselgröße nach oben
EQUATION EqCHP4_1_SS(set_ii,set_sector,set_fromPss,set_toPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqCHP4_1_SS(set_t,set_sector,set_fromPss,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0  AND set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_CHP))..
                 var_energyFlow(set_t,set_sector,set_fromPss,set_tech_SS_CHP)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_CHP)
                 =l=
                 var_S_pss(set_t,set_tech_SS_CHP)*par_P_SS_CHP_max(set_tech_SS_CHP)/par_Eta_SS_CHP_max(set_tech_SS_CHP)*sca_delta_ii;

*raus
EQUATION EqCHP4_2_SS(set_ii,set_fromPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqCHP4_2_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss))
                 =l=
                 var_S_pss(set_t,set_tech_SS_CHP)*par_P_SS_CHP_max(set_tech_SS_CHP)*sca_delta_ii;

*raus
Equation EqCHP5_1_SS(set_ii,set_pss) Restriktion maximale Wärmeauskopplung Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk inkl. positiver Reserveenergievorhaltung;
EqCHP5_1_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                  sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('W',set_tech_SS_CHP,set_toPss))
                  +var_W_SS_CHP_posres(set_t,set_tech_SS_CHP)
                  =l=
                  var_S_pss(set_t,set_tech_SS_CHP)*par_Q_SS_CHP_max(set_tech_SS_CHP)*sca_delta_ii;

*raus
Equation EqCHP5_2_SS(set_ii,set_pss) Restriktion maximale Wärmeauskopplung Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk inkl. negativer Reserveenergievorhaltung;
EqCHP5_2_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                  sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('W',set_tech_SS_CHP,set_toPss))
                  -var_W_SS_CHP_negres(set_t,set_tech_SS_CHP)
                  =g=
                  0;

*Begrenzung Kesselgröße nach unten
EQUATION EqCHP6_1_SS(set_ii,set_sector,set_fromPss,set_toPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqCHP6_1_SS(set_t,set_sector,set_fromPss,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0  AND set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_CHP))..
                 var_energyFlow(set_t,set_sector,set_fromPss,set_tech_SS_CHP)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_CHP)
                 =g=
                 var_S_pss(set_t,set_tech_SS_CHP)*par_P_SS_CHP_min(set_tech_SS_CHP)/par_Eta_SS_CHP_min(set_tech_SS_CHP)*sca_delta_ii;

*raus
EQUATION EqCHP6_2_SS(set_ii,set_fromPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqCHP6_2_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss))
                 =g=
                 var_S_pss(set_t,set_tech_SS_CHP)*par_P_SS_CHP_min(set_tech_SS_CHP)*sca_delta_ii;

*Start-Stopp-Status Relation
EQUATION EqCHP7_1_SS(set_ii_0,set_pss) Restriktion On-Off Relation;
EqCHP7_1_SS(set_ii_0,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                 var_S_pss(set_ii_0,set_tech_SS_CHP)-var_S_pss(set_ii_0-1,set_tech_SS_CHP)
                 =e=
                 var_S_pss_start(set_ii_0,set_tech_SS_CHP)-var_S_pss_stopp(set_ii_0,set_tech_SS_CHP);

EQUATION EqCHP7_2_SS(set_ii_0,set_pss) Restriktion On-Off Relation;
EqCHP7_2_SS(set_ii_0,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                 var_S_pss_start(set_ii_0,set_tech_SS_CHP)+var_S_pss_stopp(set_ii_0,set_tech_SS_CHP)
                 =l=
                 1;


*Begrenzung maximale Wärmeauskopplung
*Für Entnahmekondensationskraftwerke mit kleiner gleich und Termin für Kondensationsverluste
*Annahme, dass Energieverluste durch Abgase bei 10% liegen (gemäß Mollenhauer et al. 2015 zwischen 6,5% und 11,5%)
EQUATION EqCHP8_SS(set_ii_0,set_sector,set_fromPss,set_pss) Restriktion maximale Wärmeauskopplung Entnahme-Kondensationskraftwerk;
EqCHP8_SS(set_ii_0,set_sector,set_fromPss,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0  AND par_X_E_SS_CHP_condensing(set_tech_SS_CHP) eq 1 AND set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_CHP))..
                 sum(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss))
                 =l=
                 var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_CHP)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_CHP)
                 -sum(set_toPss,var_energyFlow(set_ii_0,'W',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('W',set_tech_SS_CHP,set_toPss))
                 -0.01*var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_CHP)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_CHP)
                 -0.1*var_S_pss(set_ii_0,set_tech_SS_CHP)*(par_P_SS_CHP_max(set_tech_SS_CHP)*sca_delta_ii/par_Eta_SS_CHP_max(set_tech_SS_CHP)-par_P_SS_CHP_max(set_tech_SS_CHP)*sca_delta_ii)
                 +0.01*0.01*var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_CHP)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_CHP);

*Begrenzung maximale Wärmeauskopplung
*Für Gegendruckkraftwerke mit ist gleich und ohne Termin für Kondensationsverluste
EQUATION EqCHP9_SS(set_ii_0,set_sector,set_fromPss,set_pss) Restriktion maximale Wärmeauskopplung Gegendruckkraftwerk;
EqCHP9_SS(set_ii_0,set_sector,set_fromPss,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0  AND par_X_E_SS_CHP_pressure(set_tech_SS_CHP) eq 1 AND set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_CHP))..
                 sum(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss))
                 +sum(set_toPss,var_energyFlow(set_ii_0,'W',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('W',set_tech_SS_CHP,set_toPss))
                 =e=
                 var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_CHP)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_CHP)
                 -0.01*var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_CHP)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_CHP);

*Stromkennzahl
*Equation EqCHP10_SS(set_ii,set_pss) Restriktion Stromkennzahl;
*EqCHP10_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0  AND par_X_E_SS_CHP_pressure(set_tech_SS_CHP) eq 1)..
*                  sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('W',set_tech_SS_CHP,set_toPss)) * par_P_SS_CHP_max(set_tech_SS_CHP)/par_Q_SS_CHP_max(set_tech_SS_CHP)
*                  =e=
*                  sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss));


*Leistungsschranken
EQUATION EqCHP11_SS(set_ii_0,set_pss) Leistungsbegrenzung;
EqCHP11_SS(set_ii_0,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                 SUM(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss))
                 +var_E2_SS_CHP_posres(set_ii_0,set_tech_SS_CHP)
                 =l=
                 SUM(set_toPss,var_energyFlow(set_ii_0-1,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss))
                 + par_P_pss_ru_general(set_tech_SS_CHP)*var_S_pss(set_ii_0-1,set_tech_SS_CHP)*sca_delta_ii
                 + par_P_pss_ru_start(set_tech_SS_CHP)*(1-var_S_pss(set_ii_0-1,set_tech_SS_CHP))*sca_delta_ii
                 - min(par_P_pss_ru_start(set_tech_SS_CHP)*sca_delta_ii, par_P_SS_CHP_min(set_tech_SS_CHP)*sca_delta_ii+par_P_pss_ru_general(set_tech_SS_CHP)*sca_delta_ii)*(1-var_S_pss(set_ii_0,set_tech_SS_CHP)) ;

EQUATION EqCHP12_SS(set_ii_0,set_pss) Leistungsbegrenzung;
EqCHP12_SS(set_ii_0,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                 SUM(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss))
                 -var_E2_SS_CHP_negres(set_ii_0,set_tech_SS_CHP)
                 =g=
                 SUM(set_toPss,var_energyFlow(set_ii_0-1,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss))
                 - par_P_pss_rd_general(set_tech_SS_CHP)*var_S_pss(set_ii_0,set_tech_SS_CHP)*sca_delta_ii
                 - par_P_pss_rd_stop(set_tech_SS_CHP)*(1-var_S_pss(set_ii_0,set_tech_SS_CHP))*sca_delta_ii
                 - min (par_P_pss_rd_stop(set_tech_SS_CHP)*sca_delta_ii, par_P_SS_CHP_min(set_tech_SS_CHP)*sca_delta_ii+par_P_pss_rd_general(set_tech_SS_CHP)*sca_delta_ii)*(1-var_S_pss(set_ii_0-1,set_tech_SS_CHP)) ;


*Temperaturniveau
Equation EqCHP13_SS(set_ii,set_pss) Operationale Temperaturrestriktion;
EqCHP13_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                  var_S_pss(set_t,set_tech_SS_CHP)
                  =l=
                  var_T_pss(set_t,set_tech_SS_CHP);

Equation EqCHP14_SS(set_ii,set_pss) Operationale Temperaturrestriktion kleiner eins;
EqCHP14_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                  var_T_pss(set_t,set_tech_SS_CHP)
                  =l=
                  1;

Equation EqCHP15_SS(set_ii_0,set_pss) Initiale Operationale Temperaturveränderung (Equation 23 Silbernagl et al. 2015);
EqCHP15_SS(set_ii_0,set_tech_SS_CHP)$(set_t_help3(set_ii_0) AND set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                  var_T_pss(set_ii_0,set_tech_SS_CHP)
                  =e=
                  sca_exp**(-par_Lambda_SS_CHP_heatlosses(set_tech_SS_CHP)*par_H_pss_presentoff(set_tech_SS_CHP))+var_heating_pss(set_ii_0-1,set_tech_SS_CHP);


Equation EqCHP16_SS(set_ii_0,set_pss) Rekursive Temperaturdefinition;
EqCHP16_SS(set_ii_0,set_tech_SS_CHP)$(set_t_help4(set_ii_0) AND
                                       set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                  var_T_pss(set_ii_0,set_tech_SS_CHP)
                  =e=
                  sca_exp**(-par_Lambda_SS_CHP_heatlosses(set_tech_SS_CHP))*var_T_pss(set_ii_0-1,set_tech_SS_CHP)
                  +(1-sca_exp**(-par_Lambda_SS_CHP_heatlosses(set_tech_SS_CHP)))*var_S_pss(set_ii_0-1,set_tech_SS_CHP)
                  +var_heating_pss(set_ii_0-1,set_tech_SS_CHP);

*Mindestbetriebszeit
***Kraftwerksbezogene dynamische Sets für den Optimierungsdurchlauf definieren und initialisieren
***par_H_pss_requon / par_H_pss_requoff: Verbleibende Prosumestorerlaufzeiten / Verbleibende Prosumestorerstillstandszeiten
***par_H_pss_minon /  par_H_pss_minoff: Prosumestorermindestlaufzeit / Prosumestorermindeststillstandszeit
***sca_numberOptimization: Länge des Optimierungshorizonts
***sca_numberStoring: Länge des Speicherhorizonts
***sca_iterator: Zähler der Optimierungsaufrufe
Equation EqCHP17_SS(set_pss) Mindestbetriebszeiteneinhaltung am Periodenanfang;
EqCHP17_SS(set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                  SUM(set_ii$((ORD(set_ii) > sca_numberStoring*sca_iterator) AND (ORD(set_ii) <= sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_SS_CHP))), 1-var_S_pss(set_ii,set_tech_SS_CHP))
                  =e=
                  0;

Equation EqCHP18_SS(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung in Periodenmitte;
EqCHP18_SS(set_ii_0,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_SS_CHP)+1) AND
                                      (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_SS_CHP)+1) AND
                                      set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                  SUM(set_ii_0_duplicate$((ORD(set_ii_0_duplicate) ge sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_SS_CHP)+1) AND (ORD(set_ii_0_duplicate) ge ORD(set_ii_0)) AND (ORD(set_ii_0_duplicate) le (ORD(set_ii_0)+par_H_pss_minon(set_tech_SS_CHP)-1)) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_SS_CHP)+1) ),var_S_pss(set_ii_0_duplicate,set_tech_SS_CHP))
                  =g=
                  par_H_pss_minon(set_tech_SS_CHP)*(var_S_pss(set_ii_0,set_tech_SS_CHP)-var_S_pss(set_ii_0-1,set_tech_SS_CHP));

Equation EqCHP19_SS(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung am Periodenende;
EqCHP19_SS(set_ii_0,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_SS_CHP)+1) AND
                                       (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization+1) AND
                                       set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                 SUM(set_ii_0_duplicate$(ORD(set_ii_0_duplicate) ge ORD(set_ii_0) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization)),var_S_pss(set_ii_0_duplicate,set_tech_SS_CHP)-(var_S_pss(set_ii_0,set_tech_SS_CHP)-var_S_pss(set_ii_0-1,set_tech_SS_CHP)))
                 =g=
                 0;

*Mindeststillstandszeit
Equation EqCHP20_SS(set_pss) Mindeststillstandszeiteneinhaltung am Periodenanfang;
EqCHP20_SS(set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                 SUM(set_ii$((ORD(set_ii) > sca_numberStoring*sca_iterator) AND (ORD(set_ii) <= sca_numberStoring*sca_iterator+par_H_pss_requoff(set_tech_SS_CHP))),var_S_pss(set_ii,set_tech_SS_CHP))
                 =e=
                 0;

Equation EqCHP21_SS(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung in Periodenmitte;
EqCHP21_SS(set_ii_0,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+par_H_pss_requoff(set_tech_SS_CHP)+1) AND
                                      (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minoff(set_tech_SS_CHP)+1) AND
                                      set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                  SUM(set_ii_0_duplicate$((ORD(set_ii_0_duplicate) ge ORD(set_ii_0)) AND (ORD(set_ii_0_duplicate) le (ORD(set_ii_0)+par_H_pss_minoff(set_tech_SS_CHP)-1))),1-var_S_pss(set_ii_0_duplicate,set_tech_SS_CHP))
                  =g=
                  par_H_pss_minoff(set_tech_SS_CHP)*var_S_pss_stopp(set_ii_0,set_tech_SS_CHP);

Equation EqCHP22_SS(set_ii_0,set_pss) Mindeststillstandszeiteneinhaltung am Periodenende (Equation 26 Carrion et 2006);
EqCHP22_SS(set_ii_0,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minoff(set_tech_SS_CHP)+1) AND
                                       (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization+1) AND
                                       set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                 SUM(set_ii_0_duplicate$(ORD(set_ii_0_duplicate) ge ORD(set_ii_0) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization+1)),1-var_S_pss(set_ii_0_duplicate,set_tech_SS_CHP)-(var_S_pss(set_ii_0-1,set_tech_SS_CHP)-var_S_pss(set_ii_0,set_tech_SS_CHP)))
                 =g=
                 0;


$ontext
*Maximalbetriebszeit
Equation EqCHP39_SS(set_pss) Maximalbetriebszeiterlaubnis am Periodenanfang;
EqCHP39_SS(set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                  par_H_pss_presenton(set_tech_SS_CHP) + SUM(set_ii$((ORD(set_ii) > sca_numberStoring*sca_iterator) AND (ORD(set_ii) <= sca_numberStoring*sca_iterator+par_H_pss_permon(set_tech_SS_CHP))), var_S_pss(set_ii,set_tech_SS_CHP))
                  =l=
                  par_H_pss_maxon(set_tech_SS_CHP);

Equation EqCHP40_SS(set_ii_0,set_pss) Maximalbetriebszeiterlaubnis in Periodenmitte;
EqCHP40_SS(set_ii_0,set_tech_SS_CHP)$((ORD(set_ii_0) > sca_numberStoring*sca_iterator+par_H_pss_permon(set_tech_SS_CHP)+1) AND
                                      (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization+1) AND
                                      set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                  SUM(set_ii_0_duplicate$((ORD(set_ii_0_duplicate) ge sca_numberStoring*sca_iterator+1) AND (ORD(set_ii_0_duplicate) ge (ORD(set_ii_0)-par_H_pss_maxon(set_tech_SS_CHP)+1) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization+1))),var_S_pss(set_ii_0_duplicate,set_tech_SS_CHP))
                  =l=
                  par_H_pss_maxon(set_tech_SS_CHP)-var_S_pss(set_ii_0,set_tech_SS_CHP);

$offtext
*Verfügbarkeit
Equation EqCHP41_SS(set_ii_0,set_pss) Maximalbetriebszeiterlaubnis in Periodenmitte;
EqCHP41_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                  var_S_pss(set_t,set_tech_SS_CHP)
                  =l=
                  par_H_pss_techavail(set_t,set_tech_SS_CHP);

*Reservevorhaltung
EQUATIONS EqCHP23_SS(set_ii,set_pss) Begrenzung positive Vorhaltung von Regelenergie durch Kapazitätsschranke Entnahme-Kondensationskraftwerk;
EqCHP23_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0  AND par_X_E_SS_CHP_condensing(set_tech_SS_CHP) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss))
                 +var_E1_SS_CHP_posres(set_t,set_tech_SS_CHP)
                 +SUM(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('W',set_tech_SS_CHP,set_toPss))
                 +0.1*var_S_pss(set_t,set_tech_SS_CHP)*(par_P_SS_CHP_max(set_tech_SS_CHP)*sca_delta_ii/par_Eta_SS_CHP_max(set_tech_SS_CHP)-par_P_SS_CHP_max(set_tech_SS_CHP)*sca_delta_ii)
                 =l=
                 (1-0.1+0.1*0.1)*var_S_pss(set_t,set_tech_SS_CHP)*par_P_SS_CHP_max(set_tech_SS_CHP)*sca_delta_ii/par_Eta_SS_CHP_max(set_tech_SS_CHP);

EQUATION EqCHP25_SS(set_ii,set_pss) Begrenzung positive Vorhaltung von Regelenergie durch Kapazitätsschranke Entnahme-Kondensationskraftwerk;;
EqCHP25_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0  AND par_X_E_SS_CHP_condensing(set_tech_SS_CHP) eq 1)..
                 par_alpha_SS_CHP_fix(set_tech_SS_CHP)*var_S_pss(set_t,set_tech_SS_CHP)
                 +par_alpha_SS_CHP_var(set_tech_SS_CHP)*(sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss))
                 +var_E1_SS_CHP_posres(set_t,set_tech_SS_CHP)
                 +par_beta_SS_CHP(set_t,set_tech_SS_CHP)*sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('W',set_tech_SS_CHP,set_toPss)))
                 =l=
                 var_S_pss(set_t,set_tech_SS_CHP)*par_P_SS_CHP_max(set_tech_SS_CHP)*sca_delta_ii/par_Eta_SS_CHP_max(set_tech_SS_CHP);

EQUATIONS EqCHP24_SS(set_ii,set_pss) Begrenzung negative Vorhaltung von Regelenergie durch Kapazitätsschranke Entnahme-Kondensationskraftwerk;
EqCHP24_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0  AND par_X_E_SS_CHP_condensing(set_tech_SS_CHP) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss))
                 -var_E1_SS_CHP_negres(set_t,set_tech_SS_CHP)
                 +SUM(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('W',set_tech_SS_CHP,set_toPss))
                 +0.1*var_S_pss(set_t,set_tech_SS_CHP)*(par_P_SS_CHP_max(set_tech_SS_CHP)*sca_delta_ii/par_Eta_SS_CHP_max(set_tech_SS_CHP)-par_P_SS_CHP_max(set_tech_SS_CHP)*sca_delta_ii)
                 =g=
                 (1-0.1+0.1*0.1)*var_S_pss(set_t,set_tech_SS_CHP)*par_P_SS_CHP_min(set_tech_SS_CHP)*sca_delta_ii/par_Eta_SS_CHP_min(set_tech_SS_CHP);


EQUATION EqCHP26_SS(set_ii,set_pss) Begrenzung negative Vorhaltung von Regelenergie durch minimale elektrische Leistung Entnahme-Kondensationskraftwerk;
EqCHP26_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0  AND par_X_E_SS_CHP_condensing(set_tech_SS_CHP) eq 1)..
                 par_alpha_SS_CHP_fix(set_tech_SS_CHP)*var_S_pss(set_t,set_tech_SS_CHP)
                 +par_alpha_SS_CHP_var(set_tech_SS_CHP)*(sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss))
                 -var_E1_SS_CHP_negres(set_t,set_tech_SS_CHP)
                 +par_beta_SS_CHP(set_t,set_tech_SS_CHP)*sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('W',set_tech_SS_CHP,set_toPss)))
                 =g=
                 var_S_pss(set_t,set_tech_SS_CHP)*par_P_SS_CHP_min(set_tech_SS_CHP)*sca_delta_ii/par_Eta_SS_CHP_min(set_tech_SS_CHP);

EQUATIONS EqCHP27_SS(set_ii,set_pss) Begrenzung negative Vorhaltung von Regelenergie durch maximale elektrische Leistung Entnahme-Kondensationskraftwerk;
EqCHP27_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0  AND par_X_E_SS_CHP_condensing(set_tech_SS_CHP) eq 1)..
                 par_alpha_SS_CHP_fix(set_tech_SS_CHP)*var_S_pss(set_t,set_tech_SS_CHP)
                 +par_alpha_SS_CHP_var(set_tech_SS_CHP)*(sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss))
                 -var_E1_SS_CHP_negres(set_t,set_tech_SS_CHP)
                 +par_beta_SS_CHP(set_t,set_tech_SS_CHP)*sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('W',set_tech_SS_CHP,set_toPss)))
                 =l=
                 var_S_pss(set_t,set_tech_SS_CHP)*par_P_SS_CHP_max(set_tech_SS_CHP)*sca_delta_ii/par_Eta_SS_CHP_max(set_tech_SS_CHP);

EQUATIONS EqCHP28_SS(set_ii,set_pss) Begrenzung negative Vorhaltung von Regelenergie durch maximale elektrische Leistung Gegendruckkraftwerk;
EqCHP28_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss))
                 +var_E2_SS_CHP_posres(set_t,set_tech_SS_CHP)
                 =l=
                 var_S_pss(set_t,set_tech_SS_CHP)*par_P_SS_CHP_max(set_tech_SS_CHP)*sca_delta_ii;

EQUATIONS EqCHP29_SS(set_ii,set_pss) Begrenzung positive Vorhaltung von Regelenergie durch maximale elektrische Leistung Gegendruckkraftwerk;
EqCHP29_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss))
                 +var_E2_SS_CHP_posres(set_t,set_tech_SS_CHP)
                 =g=
                 var_S_pss(set_t,set_tech_SS_CHP)*par_P_SS_CHP_min(set_tech_SS_CHP)*sca_delta_ii;

EQUATION EqCHP30_SS(set_ii_0,set_pss) Begrenzung negative Regelenergievorhaltung;
EqCHP30_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss))
                 -var_E2_SS_CHP_negres(set_t,set_tech_SS_CHP)
                 =g=
                 var_S_pss(set_t,set_tech_SS_CHP)*par_P_SS_CHP_min(set_tech_SS_CHP)*sca_delta_ii;

EQUATION EqCHP31_SS(set_ii_0,set_pss) Begrenzung negative Regelenergievorhaltung (thermisch) durch das Fernwärmenetz;
EqCHP31_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                 var_W_SS_CHP_negres(set_t,set_tech_SS_CHP)
                 =l=
                 sum(set_fromPss,var_energyFlow(set_t,'PR',set_fromPss,set_tech_SS_CHP)$set_energyLink_opt('PR',set_fromPss,set_tech_SS_CHP));

EQUATION EqCHP32_SS(set_ii_0,set_pss) Begrenzung positive Regelenergievorhaltung (thermisch) durch das Fernwärmenetz;
EqCHP32_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                 var_W_SS_CHP_posres(set_t,set_tech_SS_CHP)
                 =l=
                 sum(set_fromPss,var_energyFlow(set_t,'NR',set_fromPss,set_tech_SS_CHP)$set_energyLink_opt('NR',set_fromPss,set_tech_SS_CHP));

EQUATION EqCHP33_SS(set_ii_0,set_pss) Begrenzung positive Regelenergievorhaltung durch das Verhältnis elektrisch und thermisch;
EqCHP33_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                 var_E2_SS_CHP_posres(set_t,set_tech_SS_CHP)
                 =e=
                 par_beta_SS_CHP(set_t,set_tech_SS_CHP)*var_W_SS_CHP_posres(set_t,set_tech_SS_CHP) ;

EQUATION EqCHP34_SS(set_ii_0,set_pss) Begrenzung negative Regelenergievorhaltung durch das Verhältnis elektrisch und thermisch;
EqCHP34_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                 var_E2_SS_CHP_negres(set_t,set_tech_SS_CHP)
                 =e=
                 par_beta_SS_CHP(set_t,set_tech_SS_CHP)*var_W_SS_CHP_negres(set_t,set_tech_SS_CHP) ;

EQUATION EqCHP35_SS(set_ii_0,set_pss) Begrenzung Negative Regelenergievorhaltung durch die internen und externen Möglichkeiten der Kraftwerke;
EqCHP35_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                 SUM(set_toPss,var_energyFlow(set_t,'NR',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('NR',set_tech_SS_CHP,set_toPss))
                 =l=
                 var_E1_SS_CHP_negres(set_t,set_tech_SS_CHP)+var_E2_SS_CHP_negres(set_t,set_tech_SS_CHP);

EQUATION EqCHP36_SS(set_ii_0,set_pss) Begrenzung positive Regelenergievorhaltung durch die internen und externen Möglichkeiten der Kraftwerke;
EqCHP36_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_model(set_tech_SS_CHP) eq 1 AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0 )..
                 SUM(set_toPss,var_energyFlow(set_t,'PR',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('PR',set_tech_SS_CHP,set_toPss))
                 =l=
                 var_E1_SS_CHP_posres(set_t,set_tech_SS_CHP)+var_E2_SS_CHP_posres(set_t,set_tech_SS_CHP);

*Variabler und absoluter Status
EQUATIONS EqCHP37_SS(set_ii_0,set_pss) Statusübergabe;
EqCHP37_SS(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0)..
                 var_absoluteStatus(set_t,set_tech_SS_CHP)
                 =e=
                 var_S_pss_start(set_t,set_tech_SS_CHP);

EQUATIONS EqCHP38_SS(set_ii_0,set_pss) Statusübergabe;
EqCHP38_SS(set_ii_0,set_tech_SS_CHP)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_CHP) AND par_X_E_SS_CHP_LSW(set_tech_SS_CHP) eq 0)..
                 var_relativeStatus(set_ii_0,set_tech_SS_CHP)
                 =e=
                 var_heating_pss(set_ii_0-1,set_tech_SS_CHP);




*EqCHPLSW10_SS, 
MODEL mod_tech_SS_CHP_orga / EqCHPLSW0_SS, EqCHPLSW00_SS, EqCHPLSW000_SS, EqCHPLSW0000_SS, EqCHPLSW1_SS, EqCHPLSW2_SS, EqCHPLSW3_SS, EqCHPLSW4_SS, EqCHPLSW15_SS, EqCHPLSW37_SS, EqCHPLSW51_SS, EqCHPLSW52_SS, EqCHPLSW53_SS, EqCHPLSW54_SS, EqCHPLSW55_SS, EqCHPLSW56_SS, EqCHPLSW57_SS, EqCHPLSW58_SS, EqCHPLSW12_SS, EqCHPLSW13_SS, EqCHPLSW99a_SS, EqCHPLSW99b_SS,EqCHPLSW99c_SS, EqCHPLSW1zusatz_SS, EqCHPLSW2zusatz_SS, EqCHPLSW3zusatz_SS, EqCHPLSW4zusatz_SS, EqCHPLSW5zusatz_SS, EqCHP0_SS, EqCHP2_SS, EqCHP3_SS, EqCHP4_1_SS, EqCHP4_2_SS, EqCHP5_1_SS, EqCHP5_2_SS, EqCHP6_1_SS, EqCHP6_2_SS, EqCHP7_1_SS,EqCHP7_2_SS, EqCHP8_SS, EqCHP9_SS, EqCHP11_SS, EqCHP12_SS, EqCHP13_SS, EqCHP14_SS, EqCHP15_SS, EqCHP16_SS, EqCHP17_SS , EqCHP18_SS, EqCHP19_SS, EqCHP20_SS, EqCHP21_SS, EqCHP22_SS, EqCHP23_SS, EqCHP24_SS, EqCHP25_SS, EqCHP26_SS, EqCHP27_SS, EqCHP28_SS, EqCHP29_SS, EqCHP30_SS, EqCHP31_SS, EqCHP32_SS, EqCHP33_SS, EqCHP34_SS, EqCHP35_SS, EqCHP36_SS, EqCHP37_SS, EqCHP38_SS, EqCHP41_SS /;
MODEL mod_tech_SS_CHP_cust / EqCHPLSW0_SS, EqCHPLSW00_SS, EqCHPLSW000_SS, EqCHPLSW0000_SS, EqCHPLSW1_SS, EqCHPLSW2_SS, EqCHPLSW3_SS, EqCHPLSW4_SS, EqCHPLSW15_SS, EqCHPLSW37_SS, EqCHPLSW51_SS, EqCHPLSW52_SS, EqCHPLSW53_SS, EqCHPLSW54_SS, EqCHPLSW55_SS, EqCHPLSW56_SS, EqCHPLSW57_SS, EqCHPLSW58_SS, EqCHPLSW12_SS, EqCHPLSW13_SS,  EqCHPLSW99a_SS,EqCHPLSW99b_SS,EqCHPLSW99c_SS, EqCHPLSW1zusatz_SS, EqCHPLSW2zusatz_SS, EqCHPLSW3zusatz_SS, EqCHPLSW4zusatz_SS, EqCHPLSW5zusatz_SS, EqCHP0_SS, EqCHP2_SS, EqCHP3_SS, EqCHP4_1_SS, EqCHP4_2_SS, EqCHP5_1_SS, EqCHP5_2_SS, EqCHP6_1_SS, EqCHP6_2_SS, EqCHP7_1_SS,EqCHP7_2_SS, EqCHP8_SS, EqCHP9_SS, EqCHP11_SS, EqCHP12_SS, EqCHP13_SS, EqCHP14_SS, EqCHP15_SS, EqCHP16_SS, EqCHP17_SS , EqCHP18_SS, EqCHP19_SS, EqCHP20_SS, EqCHP21_SS, EqCHP22_SS, EqCHP23_SS, EqCHP24_SS, EqCHP25_SS, EqCHP26_SS, EqCHP27_SS, EqCHP28_SS, EqCHP29_SS, EqCHP30_SS, EqCHP31_SS, EqCHP32_SS, EqCHP33_SS, EqCHP34_SS, EqCHP35_SS, EqCHP36_SS, EqCHP37_SS, EqCHP38_SS, EqCHP41_SS /;
*EqCHPLSW11_SS, 






