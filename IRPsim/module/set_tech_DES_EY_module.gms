*Elektrolyseur / Chlor-Alkali-Anlage
*Zufluss: Elektrische Energie
*Abfluss: (Chlor-)Massestrom

***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
*Uebergabe der Statusvariable im Rahmen des Initialierungszeitschritts des Optimierungshorizonts
*Kraftwerksstatusvariable wird durch den initial definierten bzw. bestimmten Kraftwerkstatus festgelegt
*var_S_pss: Statusvariable der Produktionsanlage (an, aus)
EQUATION EqEY0_DES(set_ii_0,set_pss) Uebergabe Statusvariable im Initialisierungschritt;
EqEY0_DES(set_t_ini,set_tech_DES_EY)$(set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY) eq 1)..
                 var_S_pss(set_t_ini,set_tech_DES_EY)
                 =e=
                 par_S_pss_initial(set_t_ini,set_tech_DES_EY);

*Uebergabe der Energiefluesse im Rahmen des Initialierungszeitschritts des Optimierungshorizonts
*Energieflussvariable wird durch den initial definierten bzw. bestimmten Energiefluss festgelegt
*Einsatz auf Kundenseite (cust) für das (Initialisierungs)-Element in der Menge set_t_ini
*par_energyFlow_cust: Hilfsparameter bzw. Kopie des Energieflusses
EQUATION EqEY00_DES(set_ii_0,set_fromPss,set_toPss) Uebergabe Energiefluesse im Initialisierungschritt;
EqEY00_DES(set_t_ini,set_fromPss,set_tech_DES_EY)$(set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY) eq 1 AND set_energyLink_opt('E',set_fromPss,set_tech_DES_EY))..
                 var_energyFlow(set_t_ini,'E',set_fromPss,set_tech_DES_EY)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EY)
                 =e=
                 par_energyFlow_cust(set_t_ini,'E',set_fromPss,set_tech_DES_EY);

*Uebergabe der Energiefluesse im Rahmen des Initialierungszeitschritts des Optimierungshorizonts
*Energieflussvariable wird durch den initial definierten bzw. bestimmten Energiefluss festgelegt
*Einsatz auf Unternehmensseite (orga) für das (Initialisierungs)-Element in der Menge set_t_ini
*par_energyFlow_orga: Hilfsparameter bzw. Kopie des Energieflusses
EQUATION EqEY000_DES(set_ii_0,set_fromPss,set_toPss) Uebergabe Energiefluesse im Initialisierungschritt;
EqEY000_DES(set_t_ini,set_fromPss,set_tech_DES_EY)$(set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY) eq 1 AND set_energyLink_opt('E',set_fromPss,set_tech_DES_EY))..
                 var_energyFlow(set_t_ini,'E',set_fromPss,set_tech_DES_EY)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EY)
                 =e=
                 par_energyFlow_orga(set_t_ini,'E',set_fromPss,set_tech_DES_EY);

*Bestimmen des Energiebedarfs zur Produktion von Chlor
*Erzeugung entspricht der Eingabe multipliziert hins. der Effizienz der Anlage
EQUATIONS EqEY1_DES(set_ii_0,set_sector,set_pss) Brennstoffverbrauch der Anlage in Abhaengigkeit der Erzeugung;
EqEY1_DES(set_t,set_sector,set_tech_DES_EY)$(set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY)=1 AND set_secondaryenergylink(set_sector,set_tech_DES_EY))..
                 sum(set_toPss,var_energyFlow(set_t,set_sector,set_tech_DES_EY,set_toPss)$set_energyLink_opt(set_sector,set_tech_DES_EY,set_toPss))
                 =e=
                 sum(set_fromPss,var_energyFlow(set_t,'E',set_fromPss,set_tech_DES_EY)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EY)) * par_Eta_DES_EY(set_tech_DES_EY);

*Maximale Leistungsbegrenzung der Produktionsanlage
*Elektrischer Zufluss inkl. der negativen Regelenergie ist begrenzt durch die maximale elektrische Leistung
*par_P_DES_EY_max: Definierte maximale elektrische Leistung
EQUATIONS EqEY2_DES(set_ii,set_pss) Restriktion minimale Erzeugung;
EqEY2_DES(set_t,set_tech_DES_EY)$(set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY)=1)..
                 sum(set_fromPss,var_energyFlow(set_t,'E',set_fromPss,set_tech_DES_EY)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EY))
                 + sum(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_EY,set_toPss)$set_energyLink_opt('NR',set_tech_DES_EY,set_toPss))
                 =l=
                 par_P_DES_EY_max(set_tech_DES_EY)*sca_delta_ii*var_S_pss(set_t,set_tech_DES_EY);

*Minimale Leistungsbegrenzung der Produktionsanlage
*Elektrischer Zufluss ist nach unten begrenzt durch die minimale elektrische Leistung
*par_P_DES_EY_min: Definierte minimale elektrische Leistung
EQUATIONS EqEY3_DES(set_ii,set_pss) Restriktion maximale Erzeugung;
EqEY3_DES(set_t,set_tech_DES_EY)$(set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY)=1)..
                 sum(set_fromPss,var_energyFlow(set_t,'E',set_fromPss,set_tech_DES_EY)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EY))
                 =g=
                 par_P_DES_EY_min(set_tech_DES_EY)*sca_delta_ii*var_S_pss(set_t,set_tech_DES_EY);

*Start-Stopp-Status Relation
*Bestimmen der Statusparameter (An und Aus sowie Start und Stopp) fuer die Produktionsanlage
EQUATION EqEY4_DES(set_ii_0,set_pss) Restriktion On-Off Relation;
EqEY4_DES(set_ii_0,set_tech_DES_EY)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY) eq 1)..
                 var_S_pss(set_ii_0,set_tech_DES_EY)-var_S_pss(set_ii_0-1,set_tech_DES_EY)
                 =e=
                 var_S_pss_start(set_ii_0,set_tech_DES_EY)-var_S_pss_stopp(set_ii_0,set_tech_DES_EY);

EQUATION EqEY5_DES(set_ii_0,set_pss) Restriktion On-Off Relation;
EqEY5_DES(set_ii_0,set_tech_DES_EY)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY) eq 1)..
                 var_S_pss_start(set_ii_0,set_tech_DES_EY)+var_S_pss_stopp(set_ii_0,set_tech_DES_EY)
                 =l=
                 1;

*Ramp-up und Ramp-down Leistungsschranken inkl. Produktionsmenge und Regelenergievorhaltung
*Elektrische Energiezufuhr inkl. negativen Regelenergievorhaltung werden durch die generellen Hochfahrrampen restriktiert
*par_P_pss_ru_general / par_P_pss_rd_general: Maximum Ramp-up und Ramp-down im Rahmen des laufenden Kraftwerks
*par_P_pss_ru_start / par_P_pss_rd_stop: Maximum Ramp-up und Ramp-down im Rahmen eines startenden oder abschlatenden Kraftwerks
*Formeln von Silbernagel et al. 2016 Improving Accuracy and Efficiency of Start-Up Cost Fomulations in MIP Unit Commitment
EQUATION EqEY6_DES(set_ii_0,set_pss) Maximale Leistungsbegrenzung im Rahmen des Ramping;
EqEY6_DES(set_ii_0,set_tech_DES_EY)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY) eq 1)..
                 sum(set_fromPss,var_energyFlow(set_ii_0,'E',set_fromPss,set_tech_DES_EY)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EY))
                 + sum(set_toPss,var_energyFlow(set_ii_0,'NR',set_tech_DES_EY,set_toPss)$set_energyLink_opt('NR',set_tech_DES_EY,set_toPss))
                 =l=
                 sum(set_fromPss,var_energyFlow(set_ii_0-1,'E',set_fromPss,set_tech_DES_EY)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EY))
                 + par_P_pss_ru_general(set_tech_DES_EY)*var_S_pss(set_ii_0-1,set_tech_DES_EY)*sca_delta_ii
                 + par_P_pss_ru_start(set_tech_DES_EY)*(1-var_S_pss(set_ii_0-1,set_tech_DES_EY))*sca_delta_ii
                 - min (par_P_pss_ru_start(set_tech_DES_EY)*sca_delta_ii, par_P_DES_EY_min(set_tech_DES_EY)*sca_delta_ii+par_P_pss_ru_general(set_tech_DES_EY)*sca_delta_ii)*(1-var_S_pss(set_ii_0,set_tech_DES_EY));

EQUATION EqEY7_DES(set_ii_0,set_pss) Minimale Leistungsbegrenzung im Rahmen des Ramping;
EqEY7_DES(set_ii_0,set_tech_DES_EY)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY) eq 1)..
                 sum(set_fromPss,var_energyFlow(set_ii_0,'E',set_fromPss,set_tech_DES_EY)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EY))
                 + sum(set_toPss,var_energyFlow(set_ii_0,'PR',set_tech_DES_EY,set_toPss)$set_energyLink_opt('NR',set_tech_DES_EY,set_toPss))
                 =g=
                 sum(set_fromPss,var_energyFlow(set_ii_0-1,'E',set_fromPss,set_tech_DES_EY)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EY))
                 - par_P_pss_rd_general(set_tech_DES_EY)*var_S_pss(set_ii_0,set_tech_DES_EY)*sca_delta_ii
                 - par_P_pss_rd_stop(set_tech_DES_EY)*(1-var_S_pss(set_ii_0,set_tech_DES_EY))*sca_delta_ii
                 - min (par_P_pss_rd_stop(set_tech_DES_EY)*sca_delta_ii, par_P_DES_EY_min(set_tech_DES_EY)*sca_delta_ii+par_P_pss_rd_general(set_tech_DES_EY)*sca_delta_ii)*(1-var_S_pss(set_ii_0-1,set_tech_DES_EY));

*Beschraenkung der Vorhaltung negativer Regelenergie
*Negative Regelenergie erfodert das Hochfahren der Produktionsanlage hins. der genutzten Leistung
*Negative Regelenergie ist kleiner als die maximale elektrische Leistung der Anlage minus der genutzten Elektrischen Leistung, also dem Zufluss der Anlage
EQUATIONS EqEY8_DES(set_ii,set_pss) Restriktion maximale Kapazität Stromaufnahme negative Regelenergie Durchlauferhitzer;
EqEY8_DES(set_t,set_tech_DES_EY)$(set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_EY,set_toPss)$set_energyLink_opt('NR',set_tech_DES_EY,set_toPss))
                 =l=
                 (par_P_DES_EY_max(set_tech_DES_EY)*sca_delta_ii*var_S_pss(set_t,set_tech_DES_EY)
                 - sum(set_fromPss,var_energyFlow(set_t,'E',set_fromPss,set_tech_DES_EY)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EY)));

*Beschraenkung der Vorhaltung positiver Regelenergie
*Positive Regelenergie erfodert das Herunterfahren der Produktionsanlage hins. der genutzten Leistung
*Negative Regelenergie ist kleiner als die maximale elektrische Leistung der Anlage minus der genutzten Elektrischen Leistung, also dem Zufluss der Anlage
EQUATIONS EqEY9_DES(set_ii,set_pss) Restriktion maximale Kapazität Stromaufnahme positiver Regelenergie Durchlauferhitzer;
EqEY9_DES(set_t,set_tech_DES_EY)$(set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_EY,set_toPss)$set_energyLink_opt('PR',set_tech_DES_EY,set_toPss))
                 =l=
                 sum(set_fromPss,var_energyFlow(set_t,'E',set_fromPss,set_tech_DES_EY)$set_energyLink_opt('E',set_fromPss,set_tech_DES_EY))
                 - (par_P_DES_EY_min(set_tech_DES_EY)*sca_delta_ii*var_S_pss(set_t,set_tech_DES_EY));


*Beschraenkung der Vorhaltung negativer Regelenergie durch den Speicherfuellstand
EQUATIONS EqEY10_DES(set_ii,set_pss) Restriktion maximaler Wärmeabfluss negative Regelenergie Durchlauferhitzer;
EqEY10_DES(set_t,set_tech_DES_EY)$(set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_EY,set_toPss)$set_energyLink_opt('NR',set_tech_DES_EY,set_toPss))  * par_Eta_DES_EY(set_tech_DES_EY)
                 =l=
                 sum(set_fromPss,var_energyFlow(set_t,'NR',set_fromPss,set_tech_DES_EY)$set_energyLink_opt('NR',set_fromPss,set_tech_DES_EY));

*Beschraenkung der Vorhaltung positiver Regelenergie durch den Speicherfuellstand
EQUATIONS EqEY11_DES(set_ii,set_pss) Restriktion maximale positive Regelenergie aufgrund Speicherfuellstand (Entlademenge);
EqEY11_DES(set_t,set_tech_DES_EY)$(set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_EY,set_toPss)$set_energyLink_opt('PR',set_tech_DES_EY,set_toPss)) * par_Eta_DES_EY(set_tech_DES_EY)
                 =l=
                 sum(set_fromPss,var_energyFlow(set_t,'PR',set_fromPss,set_tech_DES_EY)$set_energyLink_opt('PR',set_fromPss,set_tech_DES_EY));

*Temperaturniveau zur Bestimmung der relativen Statusvariable
*Auskühlungsverhalten beim Abschalten des Kraftwerks
*var_heating_pss: Beschreibung der relative Statusvariable in Form der benötigten Mehrenergie beim Hochfahren des ausgekühlten Produktionsanlage
*Formeln von Silbernagel et al. 2016 Improving Accuracy and Efficiency of Start-Up Cost Fomulations in MIP Unit Commitment
Equation EqEY13_DES(set_ii,set_pss) Operationale Temperaturrestriktion;
EqEY13_DES(set_t,set_tech_DES_EY)$(set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY) eq 1)..
                  var_S_pss(set_t,set_tech_DES_EY)
                  =l=
                  var_T_pss(set_t,set_tech_DES_EY);

Equation EqEY14_DES(set_ii,set_pss) Operationale Temperaturrestriktion kleiner eins;
EqEY14_DES(set_t,set_tech_DES_EY)$(set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY) eq 1)..
                  var_T_pss(set_t,set_tech_DES_EY)
                  =l=
                  1;

Equation EqEY15_DES(set_ii_0,set_pss) Initiale Operationale Temperaturveränderung (Equation 23 Silbernagl et al. 2015);
EqEY15_DES(set_ii_0,set_tech_DES_EY)$(set_t_help3(set_ii_0) AND set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY) eq 1)..
                  var_T_pss(set_ii_0,set_tech_DES_EY)
                  =e=
                  sca_exp**(-par_Lambda_DES_EY_heatlosses(set_tech_DES_EY)*par_H_pss_presentoff(set_tech_DES_EY))+var_heating_pss(set_ii_0-1,set_tech_DES_EY);


Equation EqEY16_DES(set_ii_0,set_pss) Rekursive Temperaturdefinition;
EqEY16_DES(set_ii_0,set_tech_DES_EY)$(set_t_help4(set_ii_0) AND
                                       set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY) eq 1)..
                  var_T_pss(set_ii_0,set_tech_DES_EY)
                  =e=
                  sca_exp**(-par_Lambda_DES_EY_heatlosses(set_tech_DES_EY))*var_T_pss(set_ii_0-1,set_tech_DES_EY)
                  +(1-sca_exp**(-par_Lambda_DES_EY_heatlosses(set_tech_DES_EY)))*var_S_pss(set_ii_0-1,set_tech_DES_EY)+var_heating_pss(set_ii_0-1,set_tech_DES_EY);

*Mindestbetriebszeit
*Kraftwerksbezogene dynamische Sets für den Optimierungsdurchlauf definieren und initialisieren
*par_H_pss_requon / par_H_pss_requoff: Verbleibende Prosumestorerlaufzeiten / Verbleibende Prosumestorerstillstandszeiten
*par_H_pss_minon /  par_H_pss_minoff: Prosumestorermindestlaufzeit / Prosumestorermindeststillstandszeit
*sca_numberOptimization: Länge des Optimierungshorizonts
*sca_numberStoring: Länge des Speicherhorizonts
*sca_iterator: Zähler der Optimierungsaufrufe
*Formeln von Carrion et al (2006) Computationally Efficient Mixed-Integer Linear Formulation for the Thermal Unit Commitment Problem
Equation EqEY17_DES(set_pss) Mindestbetriebszeiteneinhaltung am Periodenanfang;
EqEY17_DES(set_tech_DES_EY)$(set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY) eq 1)..
                  SUM(set_ii$((ORD(set_ii) > sca_numberStoring*sca_iterator) AND (ORD(set_ii) <= sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_DES_EY))), 1-var_S_pss(set_ii,set_tech_DES_EY))
                  =e=
                  0;

Equation EqEY18_DES(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung in Periodenmitte;
EqEY18_DES(set_ii_0,set_tech_DES_EY)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_DES_EY)+1) AND
                                      (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_DES_EY)+1) AND
                                      set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY) eq 1)..
                  SUM(set_ii_0_duplicate$((ORD(set_ii_0_duplicate) ge sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_DES_EY)+1) AND (ORD(set_ii_0_duplicate) ge ORD(set_ii_0)) AND (ORD(set_ii_0_duplicate) le (ORD(set_ii_0)+par_H_pss_minon(set_tech_DES_EY)-1)) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_DES_EY)+1) ),var_S_pss(set_ii_0_duplicate,set_tech_DES_EY))
                  =g=
                  par_H_pss_minon(set_tech_DES_EY)*(var_S_pss(set_ii_0,set_tech_DES_EY)-var_S_pss(set_ii_0-1,set_tech_DES_EY));

Equation EqEY19_DES(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung am Periodenende;
EqEY19_DES(set_ii_0,set_tech_DES_EY)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_DES_EY)+1) AND
                                       (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization+1) AND
                                       set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY) eq 1)..
                 SUM(set_ii_0_duplicate$(ORD(set_ii_0_duplicate) ge ORD(set_ii_0) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization)),var_S_pss(set_ii_0_duplicate,set_tech_DES_EY)-(var_S_pss(set_ii_0,set_tech_DES_EY)-var_S_pss(set_ii_0-1,set_tech_DES_EY)))
                 =g=
                 0;

*Mindeststillstandszeit
Equation EqEY20_DES(set_pss) Mindeststillstandszeiteneinhaltung am Periodenanfang;
EqEY20_DES(set_tech_DES_EY)$(set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY) eq 1)..
                 SUM(set_ii$((ORD(set_ii) > sca_numberStoring*sca_iterator) AND (ORD(set_ii) <= sca_numberStoring*sca_iterator+par_H_pss_requoff(set_tech_DES_EY))),var_S_pss(set_ii,set_tech_DES_EY))
                 =e=
                 0;

Equation EqEY21_DES(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung in Periodenmitte;
EqEY21_DES(set_ii_0,set_tech_DES_EY)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+par_H_pss_requoff(set_tech_DES_EY)+1) AND
                                      (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minoff(set_tech_DES_EY)+1) AND
                                      set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY) eq 1)..
                  SUM(set_ii_0_duplicate$((ORD(set_ii_0_duplicate) ge ORD(set_ii_0)) AND (ORD(set_ii_0_duplicate) le (ORD(set_ii_0)+par_H_pss_minoff(set_tech_DES_EY)-1))),1-var_S_pss(set_ii_0_duplicate,set_tech_DES_EY))
                  =g=
                  par_H_pss_minoff(set_tech_DES_EY)*var_S_pss_stopp(set_ii_0,set_tech_DES_EY);

Equation EqEY22_DES(set_ii_0,set_pss) Mindeststillstandszeiteneinhaltung am Periodenende (Equation 26 Carrion et 2006);
EqEY22_DES(set_ii_0,set_tech_DES_EY)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minoff(set_tech_DES_EY)+1) AND
                                       (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization+1) AND
                                       set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY) eq 1)..
                 SUM(set_ii_0_duplicate$(ORD(set_ii_0_duplicate) ge ORD(set_ii_0) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization+1)),1-var_S_pss(set_ii_0_duplicate,set_tech_DES_EY)-(var_S_pss(set_ii_0-1,set_tech_DES_EY)-var_S_pss(set_ii_0,set_tech_DES_EY)))
                 =g=
                 0;

*Definieren der Statusvariable
*Statusvariable wird auf Off gesetzt, wenn Kraftwerk nicht verfuegbar ist
Equation EqEY23_DES(set_ii_0,set_pss) Kraftwerksverfügbarkeit;
EqEY23_DES(set_t,set_tech_DES_EY)$(set_pss_opt(set_tech_DES_EY) AND par_X_pss_model(set_tech_DES_EY) eq 1)..
                  var_S_pss(set_t,set_tech_DES_EY)
                  =l=
                  par_H_pss_techavail(set_t,set_tech_DES_EY);

*Variabler und absoluter Status
*Kopie für die Zielfunktion
EQUATIONS EqEY24_DES(set_ii_0,set_pss) Statusübergabe;
EqEY24_DES(set_t,set_tech_DES_EY)$(set_pss_opt(set_tech_DES_EY))..
                 var_absoluteStatus(set_t,set_tech_DES_EY)
                 =e=
                 var_S_pss_start(set_t,set_tech_DES_EY);

EQUATIONS EqEY25_DES(set_ii_0,set_pss) Statusübergabe;
EqEY25_DES(set_ii_0,set_tech_DES_EY)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_DES_EY))..
                 var_relativeStatus(set_ii_0,set_tech_DES_EY)
                 =e=
                 var_heating_pss(set_ii_0-1,set_tech_DES_EY);


MODEL mod_tech_DES_EY_cust / EqEY0_DES, EqEY00_DES, EqEY1_DES, EqEY2_DES, EqEY3_DES, EqEY4_DES, EqEY5_DES, EqEY6_DES, EqEY7_DES, EqEY8_DES, EqEY9_DES, EqEY10_DES, EqEY11_DES, EqEY13_DES, EqEY14_DES, EqEY15_DES, EqEY16_DES, EqEY17_DES, EqEY18_DES, EqEY19_DES, EqEY20_DES, EqEY21_DES, EqEY22_DES, EqEY23_DES, EqEY24_DES, EqEY25_DES /;
MODEL mod_tech_DES_EY_orga / EqEY0_DES, EqEY000_DES, EqEY1_DES, EqEY2_DES, EqEY3_DES, EqEY4_DES, EqEY5_DES, EqEY6_DES, EqEY7_DES, EqEY8_DES, EqEY9_DES, EqEY10_DES, EqEY11_DES, EqEY13_DES, EqEY14_DES, EqEY15_DES, EqEY16_DES, EqEY17_DES, EqEY18_DES, EqEY19_DES, EqEY20_DES, EqEY21_DES, EqEY22_DES, EqEY23_DES, EqEY24_DES, EqEY25_DES /;
