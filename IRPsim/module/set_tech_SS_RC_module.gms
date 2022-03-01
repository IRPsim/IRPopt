***-----------------------------------------------------------------------------
***Parameter
***-----------------------------------------------------------------------------
Parameter par_beta_SS_RC(set_ii_0,set_tech_SS_RC) Temperaturabhängige Stromverlustkennziffer [MW_el je MW_th] (EQUATION 9 Mollenhauer et al. 2015);
par_beta_SS_RC(set_ii,set_tech_SS_RC)$(par_X_pss_model(set_tech_SS_RC) eq 1
AND ((273.15+par_T_SS_RC_feed(set_ii,set_tech_SS_RC))-(273.15+par_T_SS_RC_return(set_ii,set_tech_SS_RC))) ne 0)
= 1 - (((273.15+par_T_SS_RC_cooling(set_ii,set_tech_SS_RC))*log((273.15+par_T_SS_RC_feed(set_ii,set_tech_SS_RC))/(273.15+par_T_SS_RC_return(set_ii,set_tech_SS_RC))))
/((273.15+par_T_SS_RC_feed(set_ii,set_tech_SS_RC))-(273.15+par_T_SS_RC_return(set_ii,set_tech_SS_RC))));

Parameter par_alpha_SS_RC_var(set_tech_SS_RC) Variabler Anteil des Brennstoffverbrauchs (EQUATION 14 Mollenhauer et al. 2015);
par_alpha_SS_RC_var(set_tech_SS_RC)$(par_X_pss_model(set_tech_SS_RC) eq 1)
=(((par_P_SS_RC_max(set_tech_SS_RC)/par_Eta_SS_RC_max(set_tech_SS_RC))-(par_P_SS_RC_min(set_tech_SS_RC)/par_Eta_SS_RC_min(set_tech_SS_RC)))/(par_P_SS_RC_max(set_tech_SS_RC)-par_P_SS_RC_min(set_tech_SS_RC)))*sca_delta_ii;

Parameter par_alpha_SS_RC_fix(set_tech_SS_RC) Fixer Anteil des Brennstoffverbrauchs (EQUATION 15 Mollenhauer et al. 2015);
par_alpha_SS_RC_fix(set_tech_SS_RC)$(par_X_pss_model(set_tech_SS_RC) eq 1)
=((par_P_SS_RC_min(set_tech_SS_RC)/par_Eta_SS_RC_min(set_tech_SS_RC))-par_alpha_SS_RC_var(set_tech_SS_RC)*par_P_SS_RC_min(set_tech_SS_RC))*sca_delta_ii;

***-----------------------------------------------------------------------------
***Variablen
***-----------------------------------------------------------------------------
POSITIVE VARIABLE var_SOC_SS_RC(set_ii_0,set_tech_SS_RC) Kehrrichtspeicherfüllstand Kehrrichtverbrennungsanlage;
POSITIVE VARIABLE var_RF_SS_RC_discharge(set_ii_0,set_tech_SS_RC) Ausgehender Kehrricht Kehrrichtverbrennungsanlage;
POSITIVE VARIABLE var_Fossil_SS_RC_additional(set_ii_0,set_tech_SS_RC) Benötigte Fossile Energie Kehrrichtverbrennungsanlage;

POSITIVE VARIABLE var_G_SS_RC_res(set_ii_0,set_tech_SS_RC) Hilfsvariable Begrenzung Brennstoffverbrauch Reserveenergie;

POSITIVE VARIABLE var_W_SS_RC_negres(set_ii_0,set_tech_SS_RC) Hilfsvariable Begrenzung thermische Reserveenergie;
POSITIVE VARIABLE var_W_SS_RC_posres(set_ii_0,set_tech_SS_RC) Hilfsvariable Begrenzung thermische Reserveenergie;

POSITIVE VARIABLE var_E1_SS_RC_negres(set_ii_0,set_tech_SS_RC) Hilfsvariable Begrenzung elektrische Reserveenergie - Entnahmekondensationskraftwerk in Abhängigkeit der variablen Stromkennzahl;
POSITIVE VARIABLE var_E1_SS_RC_posres(set_ii_0,set_tech_SS_RC) Hilfsvariable Begrenzung elektrische Reserveenergie - Entnahmekondensationskraftwerk in Abhängigkeit der variablen Stromkennzahl;

POSITIVE VARIABLE var_E2_SS_RC_negres(set_ii_0,set_tech_SS_RC) Hilfsvariable Begrenzung elektrische Reserveenergie - Entnahmekondensationskraftwerk und Gegendruckanlage in Abhängigkeit der Aufnahme des Fernwärmenetzes;
POSITIVE VARIABLE var_E2_SS_RC_posres(set_ii_0,set_tech_SS_RC) Hilfsvariable Begrenzung elektrische Reserveenergie - Entnahmekondensationskraftwerk und Gegendruckanlage in Abhängigkeit der Aufnahme des Fernwärmenetzes;

***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------

EQUATION EqRC96_SS(set_ii_0,set_pss) Übergabe Speicherstand;
EqRC96_SS(set_t_ini,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 var_SOC_SS_RC(set_t_ini,set_tech_SS_RC)
                 =e=
                 par_SOC_pss_initial(set_t_ini,set_tech_SS_RC);

EQUATIONS EqRC97_SS(set_ii_0,set_pss) Restriktion aktueller Energiespeicherfüllstand Stromspeicher;
EqRC97_SS(set_ii_0,set_tech_SS_RC)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 var_SOC_SS_RC(set_ii_0,set_tech_SS_RC)
                 =e=
                 var_SOC_SS_RC(set_ii_0-1, set_tech_SS_RC)
                 + var_energyFlow(set_ii_0,'RF','RFMarket',set_tech_SS_RC)$set_energyLink_opt('RF','RFMarket',set_tech_SS_RC)
                 - var_RF_SS_RC_discharge(set_ii_0,set_tech_SS_RC);

EQUATIONS EqRC98_SS(set_ii_0,set_pss) Restriktion aktueller Energiespeicherfüllstand Stromspeicher;
EqRC98_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 var_energyFlow(set_t,'RF','RFMarket',set_tech_SS_RC)$set_energyLink_opt('RF','RFMarket',set_tech_SS_RC)
                 =e=
                 par_RF_SS_RC(set_t,set_tech_SS_RC);

Equation EqRC99_SS(set_ii,set_toPss) Restriktion Ratio Fossile Energie und Kehrrichtenergie;
EqRC99_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 var_RF_SS_RC_discharge(set_t,set_tech_SS_RC) * (1-par_Ratio_SS_RC(set_tech_SS_RC))
                 =e=
                 var_Fossil_SS_RC_additional(set_t,set_tech_SS_RC);

Equation EqRC100_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Bezug zusätzliche Fossile Energie;
EqRC100_SS(set_t,'G','GMarket',set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND set_energyLink_opt('G','GMarket',set_tech_SS_RC))..
                 var_energyFlow(set_t,'G','GMarket',set_tech_SS_RC)$set_energyLink_opt('G','GMarket',set_tech_SS_RC)
                 =e=
                 var_Fossil_SS_RC_additional(set_t,set_tech_SS_RC);

Equation EqRC101_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Bezug zusätzliche Fossile Energie;
EqRC101_SS(set_t,'G','GGrid',set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND set_energyLink_opt('G','GGrid',set_tech_SS_RC))..
                 var_energyFlow(set_t,'G','GGrid',set_tech_SS_RC)$set_energyLink_opt('G','GGrid',set_tech_SS_RC)
                 =e=
                 var_Fossil_SS_RC_additional(set_t,set_tech_SS_RC);

Equation EqRC102_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Bezug zusätzliche Fossile Energie;
EqRC102_SS(set_t,'O','OMarket',set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND set_energyLink_opt('O','OMarket',set_tech_SS_RC))..
                 var_energyFlow(set_t,'O','OMarket',set_tech_SS_RC)$set_energyLink_opt('O','OMarket',set_tech_SS_RC)
                 =e=
                 var_Fossil_SS_RC_additional(set_t,set_tech_SS_RC);

Equation EqRC103_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Bezug zusätzliche Fossile Energie;
EqRC103_SS(set_t,'HC','HCMarket',set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND set_energyLink_opt('HC','HCMarket',set_tech_SS_RC))..
                 var_energyFlow(set_t,'HC','HCMarket',set_tech_SS_RC)$set_energyLink_opt('HC','HCMarket',set_tech_SS_RC)
                 =e=
                 var_Fossil_SS_RC_additional(set_t,set_tech_SS_RC);

Equation EqRC104_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Bezug zusätzliche Fossile Energie;
EqRC104_SS(set_t,'L','LMarket',set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND set_energyLink_opt('L','LMarket',set_tech_SS_RC))..
                 var_energyFlow(set_t,'L','LMarket',set_tech_SS_RC)$set_energyLink_opt('L','LMarket',set_tech_SS_RC)
                 =e=
                 var_Fossil_SS_RC_additional(set_t,set_tech_SS_RC);


EQUATION EqRC0_SS(set_ii_0,set_pss) Übergabe Statusvariable;
EqRC0_SS(set_t_ini,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 var_S_pss(set_t_ini,set_tech_SS_RC)
                 =e=
                 par_S_pss_initial(set_t_ini,set_tech_SS_RC);

EQUATION EqRC2_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Energieflussbegrenzung erster Zeitschritt;
EqRC2_SS(set_t_ini,set_sector,set_tech_SS_RC,set_toPss)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND set_energyLink_opt(set_sector,set_tech_SS_RC,set_toPss))..
                 var_energyFlow(set_t_ini,set_sector,set_tech_SS_RC,set_toPss)
                 =e=
                 par_energyFlow_orga(set_t_ini,set_sector,set_tech_SS_RC,set_toPss)

*Brennstoffverbrauch und Wärmeauskopplung
*Brennstoffverbrauch in Abhängigkeit der elektrischen und thermischen Energieauskopplung
*Brennstoffverbrauch und Wärmeauskopplung
*Brennstoffverbrauch in Abhängigkeit der elektrischen und thermischen Energieauskopplung
EQUATION EqRC3_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqRC3_SS(set_ii_0,set_sector,set_fromPss,set_tech_SS_RC)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_RC))..
                 var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_RC)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_RC)
                 =e=
                 par_alpha_SS_RC_fix(set_tech_SS_RC)*var_S_pss(set_ii_0,set_tech_SS_RC)
                 +par_alpha_SS_RC_var(set_tech_SS_RC)*(sum(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 +par_beta_SS_RC(set_ii_0,set_tech_SS_RC)*sum(set_toPss,var_energyFlow(set_ii_0,'W',set_tech_SS_RC,set_toPss)$set_energyLink_opt('W',set_tech_SS_RC,set_toPss)));

*Begrenzung Kesselgröße nach oben
EQUATION EqRC4_1_SS(set_ii,set_sector,set_fromPss,set_toPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqRC4_1_SS(set_t,set_sector,set_fromPss,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_RC))..
                 var_energyFlow(set_t,set_sector,set_fromPss,set_tech_SS_RC)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_RC)
                 =l=
                 var_S_pss(set_t,set_tech_SS_RC)*par_P_SS_RC_max(set_tech_SS_RC)/par_Eta_SS_RC_max(set_tech_SS_RC)*sca_delta_ii;

*raus
EQUATION EqRC4_2_SS(set_ii,set_fromPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqRC4_2_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 =l=
                 var_S_pss(set_t,set_tech_SS_RC)*par_P_SS_RC_max(set_tech_SS_RC)*sca_delta_ii;

*raus
Equation EqRC5_1_SS(set_ii,set_pss) Restriktion maximale Wärmeauskopplung Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk inkl. positiver Reserveenergievorhaltung;
EqRC5_1_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                  sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_RC,set_toPss)$set_energyLink_opt('W',set_tech_SS_RC,set_toPss))
                  +var_W_SS_RC_posres(set_t,set_tech_SS_RC)
                  =l=
                  var_S_pss(set_t,set_tech_SS_RC)*par_Q_SS_RC_max(set_tech_SS_RC)*sca_delta_ii;

*raus
Equation EqRC5_2_SS(set_ii,set_pss) Restriktion maximale Wärmeauskopplung Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk inkl. negativer Reserveenergievorhaltung;
EqRC5_2_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                  sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_RC,set_toPss)$set_energyLink_opt('W',set_tech_SS_RC,set_toPss))
                  -var_W_SS_RC_negres(set_t,set_tech_SS_RC)
                  =g=
                  0;

*Begrenzung Kesselgröße nach unten
EQUATION EqRC6_1_SS(set_ii,set_sector,set_fromPss,set_toPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqRC6_1_SS(set_t,set_sector,set_fromPss,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_RC))..
                 var_energyFlow(set_t,set_sector,set_fromPss,set_tech_SS_RC)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_RC)
                 =g=
                 var_S_pss(set_t,set_tech_SS_RC)*par_P_SS_RC_min(set_tech_SS_RC)/par_Eta_SS_RC_min(set_tech_SS_RC)*sca_delta_ii;

*raus
EQUATION EqRC6_2_SS(set_ii,set_fromPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqRC6_2_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 =g=
                 var_S_pss(set_t,set_tech_SS_RC)*par_P_SS_RC_min(set_tech_SS_RC)*sca_delta_ii;

*Start-Stopp-Status Relation
EQUATION EqRC7_1_SS(set_ii_0,set_pss) Restriktion On-Off Relation;
EqRC7_1_SS(set_ii_0,set_tech_SS_RC)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 var_S_pss(set_ii_0,set_tech_SS_RC)-var_S_pss(set_ii_0-1,set_tech_SS_RC)
                 =e=
                 var_S_pss_start(set_ii_0,set_tech_SS_RC)-var_S_pss_stopp(set_ii_0,set_tech_SS_RC);

EQUATION EqRC7_2_SS(set_ii_0,set_pss) Restriktion On-Off Relation;
EqRC7_2_SS(set_ii_0,set_tech_SS_RC)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 var_S_pss_start(set_ii_0,set_tech_SS_RC)+var_S_pss_stopp(set_ii_0,set_tech_SS_RC)
                 =l=
                 1;


*Begrenzung maximale Wärmeauskopplung
*Für Entnahmekondensationskraftwerke mit kleiner gleich und Termin für Kondensationsverluste
*Annahme, dass Energieverluste durch Abgase bei 10% liegen (gemäß Mollenhauer et al. 2015 zwischen 6,5% und 11,5%)
EQUATION EqRC8_SS(set_ii_0,set_sector,set_fromPss,set_pss) Restriktion maximale Wärmeauskopplung Entnahme-Kondensationskraftwerk;
EqRC8_SS(set_ii_0,set_sector,set_fromPss,set_tech_SS_RC)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND par_X_W_SS_RC_condensing(set_tech_SS_RC) eq 1 AND set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_RC))..
                 sum(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 =l=
                 var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_RC)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_RC)
                 -sum(set_toPss,var_energyFlow(set_ii_0,'W',set_tech_SS_RC,set_toPss)$set_energyLink_opt('W',set_tech_SS_RC,set_toPss))
                 -0.1*var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_RC)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_RC)
                 -0.1*var_S_pss(set_ii_0,set_tech_SS_RC)*(par_P_SS_RC_max(set_tech_SS_RC)*sca_delta_ii/par_Eta_SS_RC_max(set_tech_SS_RC)-par_P_SS_RC_max(set_tech_SS_RC)*sca_delta_ii)
                 +0.1*0.1*var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_RC)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_RC);

*Begrenzung maximale Wärmeauskopplung
*Für Gegendruckkraftwerke mit ist gleich und ohne Termin für Kondensationsverluste
EQUATION EqRC9_SS(set_ii_0,set_sector,set_fromPss,set_pss) Restriktion maximale Wärmeauskopplung Gegendruckkraftwerk;
EqRC9_SS(set_ii_0,set_sector,set_fromPss,set_tech_SS_RC)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND par_X_W_SS_RC_pressure(set_tech_SS_RC) eq 1 AND set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_RC))..
                 sum(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 +sum(set_toPss,var_energyFlow(set_ii_0,'W',set_tech_SS_RC,set_toPss)$set_energyLink_opt('W',set_tech_SS_RC,set_toPss))
                 =e=
                 var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_RC)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_RC)
                 -0.1*var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_RC)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_RC);

*Stromkennzahl
*Equation EqRC10_SS(set_ii,set_pss) Restriktion Stromkennzahl;
*EqRC10_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND par_X_W_SS_RC_pressure(set_tech_SS_RC) eq 1)..
*                  sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_RC,set_toPss)$set_energyLink_opt('W',set_tech_SS_RC,set_toPss)) * par_P_SS_RC_max(set_tech_SS_RC)/par_Q_SS_RC_max(set_tech_SS_RC)
*                  =e=
*                  sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss));


*Leistungsschranken
EQUATION EqRC11_SS(set_ii_0,set_pss) Leistungsbegrenzung;
EqRC11_SS(set_ii_0,set_tech_SS_RC)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 +var_E2_SS_RC_posres(set_ii_0,set_tech_SS_RC)
                 =l=
                 SUM(set_toPss,var_energyFlow(set_ii_0-1,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 + par_P_pss_ru_general(set_tech_SS_RC)*var_S_pss(set_ii_0-1,set_tech_SS_RC)*sca_delta_ii
                 + par_P_pss_ru_start(set_tech_SS_RC)*(1-var_S_pss(set_ii_0-1,set_tech_SS_RC))*sca_delta_ii
                 - min(par_P_pss_ru_start(set_tech_SS_RC)*sca_delta_ii, par_P_SS_RC_min(set_tech_SS_RC)*sca_delta_ii+par_P_pss_ru_general(set_tech_SS_RC)*sca_delta_ii)*(1-var_S_pss(set_ii_0,set_tech_SS_RC)) ;

EQUATION EqRC12_SS(set_ii_0,set_pss) Leistungsbegrenzung;
EqRC12_SS(set_ii_0,set_tech_SS_RC)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 -var_E2_SS_RC_negres(set_ii_0,set_tech_SS_RC)
                 =g=
                 SUM(set_toPss,var_energyFlow(set_ii_0-1,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 - par_P_pss_rd_general(set_tech_SS_RC)*var_S_pss(set_ii_0,set_tech_SS_RC)*sca_delta_ii
                 - par_P_pss_rd_stop(set_tech_SS_RC)*(1-var_S_pss(set_ii_0,set_tech_SS_RC))*sca_delta_ii
                 - min (par_P_pss_rd_stop(set_tech_SS_RC)*sca_delta_ii, par_P_SS_RC_min(set_tech_SS_RC)*sca_delta_ii+par_P_pss_rd_general(set_tech_SS_RC)*sca_delta_ii)*(1-var_S_pss(set_ii_0-1,set_tech_SS_RC)) ;


*Temperaturniveau
Equation EqRC13_SS(set_ii,set_pss) Operationale Temperaturrestriktion;
EqRC13_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                  var_S_pss(set_t,set_tech_SS_RC)
                  =l=
                  var_T_pss(set_t,set_tech_SS_RC);

Equation EqRC14_SS(set_ii,set_pss) Operationale Temperaturrestriktion kleiner eins;
EqRC14_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                  var_T_pss(set_t,set_tech_SS_RC)
                  =l=
                  1;

Equation EqRC15_SS(set_ii_0,set_pss) Initiale Operationale Temperaturveränderung (Equation 23 Silbernagl et al. 2015);
EqRC15_SS(set_ii_0,set_tech_SS_RC)$(set_t_help3(set_ii_0) AND set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                  var_T_pss(set_ii_0,set_tech_SS_RC)
                  =e=
                  sca_exp**(-par_Lambda_SS_RC_heatlosses(set_tech_SS_RC)*par_H_pss_presentoff(set_tech_SS_RC))+var_heating_pss(set_ii_0-1,set_tech_SS_RC);


Equation EqRC16_SS(set_ii_0,set_pss) Rekursive Temperaturdefinition;
EqRC16_SS(set_ii_0,set_tech_SS_RC)$(set_t_help4(set_ii_0) AND
                                       set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                  var_T_pss(set_ii_0,set_tech_SS_RC)
                  =e=
                  sca_exp**(-par_Lambda_SS_RC_heatlosses(set_tech_SS_RC))*var_T_pss(set_ii_0-1,set_tech_SS_RC)
                  +(1-sca_exp**(-par_Lambda_SS_RC_heatlosses(set_tech_SS_RC)))*var_S_pss(set_ii_0-1,set_tech_SS_RC)
                  +var_heating_pss(set_ii_0-1,set_tech_SS_RC);

*Mindestbetriebszeit
***Kraftwerksbezogene dynamische Sets für den Optimierungsdurchlauf definieren und initialisieren
***par_H_pss_requon / par_H_pss_requoff: Verbleibende Prosumestorerlaufzeiten / Verbleibende Prosumestorerstillstandszeiten
***par_H_pss_minon /  par_H_pss_minoff: Prosumestorermindestlaufzeit / Prosumestorermindeststillstandszeit
***sca_numberOptimization: Länge des Optimierungshorizonts
***sca_numberStoring: Länge des Speicherhorizonts
***sca_iterator: Zähler der Optimierungsaufrufe
Equation EqRC17_SS(set_pss) Mindestbetriebszeiteneinhaltung am Periodenanfang;
EqRC17_SS(set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                  SUM(set_ii$((ORD(set_ii) > sca_numberStoring*sca_iterator) AND (ORD(set_ii) <= sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_SS_RC))), 1-var_S_pss(set_ii,set_tech_SS_RC))
                  =e=
                  0;

Equation EqRC18_SS(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung in Periodenmitte;
EqRC18_SS(set_ii_0,set_tech_SS_RC)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_SS_RC)+1) AND
                                      (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_SS_RC)+1) AND
                                      set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                  SUM(set_ii_0_duplicate$((ORD(set_ii_0_duplicate) ge sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_SS_RC)+1) AND (ORD(set_ii_0_duplicate) ge ORD(set_ii_0)) AND (ORD(set_ii_0_duplicate) le (ORD(set_ii_0)+par_H_pss_minon(set_tech_SS_RC)-1)) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_SS_RC)+1) ),var_S_pss(set_ii_0_duplicate,set_tech_SS_RC))
                  =g=
                  par_H_pss_minon(set_tech_SS_RC)*(var_S_pss(set_ii_0,set_tech_SS_RC)-var_S_pss(set_ii_0-1,set_tech_SS_RC));

Equation EqRC19_SS(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung am Periodenende;
EqRC19_SS(set_ii_0,set_tech_SS_RC)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_SS_RC)+1) AND
                                       (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization+1) AND
                                       set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 SUM(set_ii_0_duplicate$(ORD(set_ii_0_duplicate) ge ORD(set_ii_0) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization)),var_S_pss(set_ii_0_duplicate,set_tech_SS_RC)-(var_S_pss(set_ii_0,set_tech_SS_RC)-var_S_pss(set_ii_0-1,set_tech_SS_RC)))
                 =g=
                 0;

*Mindeststillstandszeit
Equation EqRC20_SS(set_pss) Mindeststillstandszeiteneinhaltung am Periodenanfang;
EqRC20_SS(set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 SUM(set_ii$((ORD(set_ii) > sca_numberStoring*sca_iterator) AND (ORD(set_ii) <= sca_numberStoring*sca_iterator+par_H_pss_requoff(set_tech_SS_RC))),var_S_pss(set_ii,set_tech_SS_RC))
                 =e=
                 0;

Equation EqRC21_SS(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung in Periodenmitte;
EqRC21_SS(set_ii_0,set_tech_SS_RC)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+par_H_pss_requoff(set_tech_SS_RC)+1) AND
                                      (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minoff(set_tech_SS_RC)+1) AND
                                      set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                  SUM(set_ii_0_duplicate$((ORD(set_ii_0_duplicate) ge ORD(set_ii_0)) AND (ORD(set_ii_0_duplicate) le (ORD(set_ii_0)+par_H_pss_minoff(set_tech_SS_RC)-1))),1-var_S_pss(set_ii_0_duplicate,set_tech_SS_RC))
                  =g=
                  par_H_pss_minoff(set_tech_SS_RC)*var_S_pss_stopp(set_ii_0,set_tech_SS_RC);

Equation EqRC22_SS(set_ii_0,set_pss) Mindeststillstandszeiteneinhaltung am Periodenende (Equation 26 Carrion et 2006);
EqRC22_SS(set_ii_0,set_tech_SS_RC)$(set_t_help(set_ii_0) AND (ORD(set_ii_0) > sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minoff(set_tech_SS_RC)+1) AND
                                       (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization+1) AND
                                       set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 SUM(set_ii_0_duplicate$(ORD(set_ii_0_duplicate) ge ORD(set_ii_0) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization+1)),1-var_S_pss(set_ii_0_duplicate,set_tech_SS_RC)-(var_S_pss(set_ii_0-1,set_tech_SS_RC)-var_S_pss(set_ii_0,set_tech_SS_RC)))
                 =g=
                 0;


$ontext
*Maximalbetriebszeit
Equation EqRC39_SS(set_pss) Maximalbetriebszeiterlaubnis am Periodenanfang;
EqRC39_SS(set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                  par_H_pss_presenton(set_tech_SS_RC) + SUM(set_ii$((ORD(set_ii) > sca_numberStoring*sca_iterator) AND (ORD(set_ii) <= sca_numberStoring*sca_iterator+par_H_pss_permon(set_tech_SS_RC))), var_S_pss(set_ii,set_tech_SS_RC))
                  =l=
                  par_H_pss_maxon(set_tech_SS_RC);

Equation EqRC40_SS(set_ii_0,set_pss) Maximalbetriebszeiterlaubnis in Periodenmitte;
EqRC40_SS(set_ii_0,set_tech_SS_RC)$((ORD(set_ii_0) > sca_numberStoring*sca_iterator+par_H_pss_permon(set_tech_SS_RC)+1) AND
                                      (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization+1) AND
                                      set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                  SUM(set_ii_0_duplicate$((ORD(set_ii_0_duplicate) ge sca_numberStoring*sca_iterator+1) AND (ORD(set_ii_0_duplicate) ge (ORD(set_ii_0)-par_H_pss_maxon(set_tech_SS_RC)+1) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization+1))),var_S_pss(set_ii_0_duplicate,set_tech_SS_RC))
                  =l=
                  par_H_pss_maxon(set_tech_SS_RC)-var_S_pss(set_ii_0,set_tech_SS_RC);

$offtext
*Verfügbarkeit
Equation EqRC41_SS(set_ii_0,set_pss) Maximalbetriebszeiterlaubnis in Periodenmitte;
EqRC41_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                  var_S_pss(set_t,set_tech_SS_RC)
                  =l=
                  par_H_pss_techavail(set_t,set_tech_SS_RC);

*Reservevorhaltung
EQUATIONS EqRC23_SS(set_ii,set_pss) Begrenzung positive Vorhaltung von Regelenergie durch Kapazitätsschranke Entnahme-Kondensationskraftwerk;
EqRC23_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND par_X_W_SS_RC_condensing(set_tech_SS_RC) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 +var_E1_SS_RC_posres(set_t,set_tech_SS_RC)
                 +SUM(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_RC,set_toPss)$set_energyLink_opt('W',set_tech_SS_RC,set_toPss))
                 +0.1*var_S_pss(set_t,set_tech_SS_RC)*(par_P_SS_RC_max(set_tech_SS_RC)*sca_delta_ii/par_Eta_SS_RC_max(set_tech_SS_RC)-par_P_SS_RC_max(set_tech_SS_RC)*sca_delta_ii)
                 =l=
                 (1-0.1+0.1*0.1)*var_S_pss(set_t,set_tech_SS_RC)*par_P_SS_RC_max(set_tech_SS_RC)*sca_delta_ii/par_Eta_SS_RC_max(set_tech_SS_RC);

EQUATION EqRC25_SS(set_ii,set_pss) Begrenzung positive Vorhaltung von Regelenergie durch Kapazitätsschranke Entnahme-Kondensationskraftwerk;;
EqRC25_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND par_X_W_SS_RC_condensing(set_tech_SS_RC) eq 1)..
                 par_alpha_SS_RC_fix(set_tech_SS_RC)*var_S_pss(set_t,set_tech_SS_RC)
                 +par_alpha_SS_RC_var(set_tech_SS_RC)*(sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 +var_E1_SS_RC_posres(set_t,set_tech_SS_RC)
                 +par_beta_SS_RC(set_t,set_tech_SS_RC)*sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_RC,set_toPss)$set_energyLink_opt('W',set_tech_SS_RC,set_toPss)))
                 =l=
                 var_S_pss(set_t,set_tech_SS_RC)*par_P_SS_RC_max(set_tech_SS_RC)*sca_delta_ii/par_Eta_SS_RC_max(set_tech_SS_RC);

EQUATIONS EqRC24_SS(set_ii,set_pss) Begrenzung negative Vorhaltung von Regelenergie durch Kapazitätsschranke Entnahme-Kondensationskraftwerk;
EqRC24_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND par_X_W_SS_RC_condensing(set_tech_SS_RC) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 -var_E1_SS_RC_negres(set_t,set_tech_SS_RC)
                 +SUM(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_RC,set_toPss)$set_energyLink_opt('W',set_tech_SS_RC,set_toPss))
                 +0.1*var_S_pss(set_t,set_tech_SS_RC)*(par_P_SS_RC_max(set_tech_SS_RC)*sca_delta_ii/par_Eta_SS_RC_max(set_tech_SS_RC)-par_P_SS_RC_max(set_tech_SS_RC)*sca_delta_ii)
                 =g=
                 (1-0.1+0.1*0.1)*var_S_pss(set_t,set_tech_SS_RC)*par_P_SS_RC_min(set_tech_SS_RC)*sca_delta_ii/par_Eta_SS_RC_min(set_tech_SS_RC);


EQUATION EqRC26_SS(set_ii,set_pss) Begrenzung negative Vorhaltung von Regelenergie durch minimale elektrische Leistung Entnahme-Kondensationskraftwerk;
EqRC26_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND par_X_W_SS_RC_condensing(set_tech_SS_RC) eq 1)..
                 par_alpha_SS_RC_fix(set_tech_SS_RC)*var_S_pss(set_t,set_tech_SS_RC)
                 +par_alpha_SS_RC_var(set_tech_SS_RC)*(sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 -var_E1_SS_RC_negres(set_t,set_tech_SS_RC)
                 +par_beta_SS_RC(set_t,set_tech_SS_RC)*sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_RC,set_toPss)$set_energyLink_opt('W',set_tech_SS_RC,set_toPss)))
                 =g=
                 var_S_pss(set_t,set_tech_SS_RC)*par_P_SS_RC_min(set_tech_SS_RC)*sca_delta_ii/par_Eta_SS_RC_min(set_tech_SS_RC);

EQUATIONS EqRC27_SS(set_ii,set_pss) Begrenzung negative Vorhaltung von Regelenergie durch maximale elektrische Leistung Entnahme-Kondensationskraftwerk;
EqRC27_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND par_X_W_SS_RC_condensing(set_tech_SS_RC) eq 1)..
                 par_alpha_SS_RC_fix(set_tech_SS_RC)*var_S_pss(set_t,set_tech_SS_RC)
                 +par_alpha_SS_RC_var(set_tech_SS_RC)*(sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 -var_E1_SS_RC_negres(set_t,set_tech_SS_RC)
                 +par_beta_SS_RC(set_t,set_tech_SS_RC)*sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_RC,set_toPss)$set_energyLink_opt('W',set_tech_SS_RC,set_toPss)))
                 =l=
                 var_S_pss(set_t,set_tech_SS_RC)*par_P_SS_RC_max(set_tech_SS_RC)*sca_delta_ii/par_Eta_SS_RC_max(set_tech_SS_RC);

EQUATIONS EqRC28_SS(set_ii,set_pss) Begrenzung negative Vorhaltung von Regelenergie durch maximale elektrische Leistung Gegendruckkraftwerk;
EqRC28_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 +var_E2_SS_RC_posres(set_t,set_tech_SS_RC)
                 =l=
                 var_S_pss(set_t,set_tech_SS_RC)*par_P_SS_RC_max(set_tech_SS_RC)*sca_delta_ii;

EQUATIONS EqRC29_SS(set_ii,set_pss) Begrenzung positive Vorhaltung von Regelenergie durch maximale elektrische Leistung Gegendruckkraftwerk;
EqRC29_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 +var_E2_SS_RC_posres(set_t,set_tech_SS_RC)
                 =g=
                 var_S_pss(set_t,set_tech_SS_RC)*par_P_SS_RC_min(set_tech_SS_RC)*sca_delta_ii;

EQUATION EqRC30_SS(set_ii_0,set_pss) Begrenzung negative Regelenergievorhaltung;
EqRC30_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 -var_E2_SS_RC_negres(set_t,set_tech_SS_RC)
                 =g=
                 var_S_pss(set_t,set_tech_SS_RC)*par_P_SS_RC_min(set_tech_SS_RC)*sca_delta_ii;

EQUATION EqRC31_SS(set_ii_0,set_pss) Begrenzung negative Regelenergievorhaltung (thermisch) durch das Fernwärmenetz;
EqRC31_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 var_W_SS_RC_negres(set_t,set_tech_SS_RC)
                 =l=
                 sum(set_fromPss,var_energyFlow(set_t,'PR',set_fromPss,set_tech_SS_RC)$set_energyLink_opt('PR',set_fromPss,set_tech_SS_RC));

EQUATION EqRC32_SS(set_ii_0,set_pss) Begrenzung positive Regelenergievorhaltung (thermisch) durch das Fernwärmenetz;
EqRC32_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 var_W_SS_RC_posres(set_t,set_tech_SS_RC)
                 =l=
                 sum(set_fromPss,var_energyFlow(set_t,'NR',set_fromPss,set_tech_SS_RC)$set_energyLink_opt('NR',set_fromPss,set_tech_SS_RC));

EQUATION EqRC33_SS(set_ii_0,set_pss) Begrenzung positive Regelenergievorhaltung durch das Verhältnis elektrisch und thermisch;
EqRC33_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 var_E2_SS_RC_posres(set_t,set_tech_SS_RC)
                 =e=
                 par_beta_SS_RC(set_t,set_tech_SS_RC)*var_W_SS_RC_posres(set_t,set_tech_SS_RC) ;

EQUATION EqRC34_SS(set_ii_0,set_pss) Begrenzung negative Regelenergievorhaltung durch das Verhältnis elektrisch und thermisch;
EqRC34_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 var_E2_SS_RC_negres(set_t,set_tech_SS_RC)
                 =e=
                 par_beta_SS_RC(set_t,set_tech_SS_RC)*var_W_SS_RC_negres(set_t,set_tech_SS_RC) ;

EQUATION EqRC35_SS(set_ii_0,set_pss) Begrenzung Negative Regelenergievorhaltung durch die internen und externen Möglichkeiten der Kraftwerke;
EqRC35_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_t,'NR',set_tech_SS_RC,set_toPss)$set_energyLink_opt('NR',set_tech_SS_RC,set_toPss))
                 =l=
                 var_E1_SS_RC_negres(set_t,set_tech_SS_RC)+var_E2_SS_RC_negres(set_t,set_tech_SS_RC);

EQUATION EqRC36_SS(set_ii_0,set_pss) Begrenzung positive Regelenergievorhaltung durch die internen und externen Möglichkeiten der Kraftwerke;
EqRC36_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_t,'PR',set_tech_SS_RC,set_toPss)$set_energyLink_opt('PR',set_tech_SS_RC,set_toPss))
                 =l=
                 var_E1_SS_RC_posres(set_t,set_tech_SS_RC)+var_E2_SS_RC_posres(set_t,set_tech_SS_RC);

*Variabler und absoluter Status
EQUATIONS EqRC37_SS(set_ii_0,set_pss) Statusübergabe;
EqRC37_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC))..
                 var_absoluteStatus(set_t,set_tech_SS_RC)
                 =e=
                 var_S_pss_start(set_t,set_tech_SS_RC);

EQUATIONS EqRC38_SS(set_ii_0,set_pss) Statusübergabe;
EqRC38_SS(set_ii_0,set_tech_SS_RC)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_RC))..
                 var_relativeStatus(set_ii_0,set_tech_SS_RC)
                 =e=
                 var_heating_pss(set_ii_0-1,set_tech_SS_RC);



MODEL mod_tech_SS_RC_orga / EqRC96_SS, EqRC97_SS, EqRC98_SS, EqRC99_SS, EqRC100_SS, EqRC101_SS, EqRC102_SS, EqRC103_SS, EqRC104_SS, EqRC0_SS, EqRC2_SS, EqRC3_SS, EqRC4_1_SS, EqRC4_2_SS, EqRC5_1_SS, EqRC5_2_SS, EqRC6_1_SS, EqRC6_2_SS, EqRC7_1_SS,EqRC7_2_SS, EqRC8_SS, EqRC9_SS, EqRC11_SS, EqRC12_SS, EqRC13_SS, EqRC14_SS, EqRC15_SS, EqRC16_SS, EqRC17_SS , EqRC18_SS, EqRC19_SS, EqRC20_SS, EqRC21_SS, EqRC22_SS, EqRC23_SS, EqRC24_SS, EqRC25_SS, EqRC26_SS, EqRC27_SS, EqRC28_SS, EqRC29_SS, EqRC30_SS, EqRC31_SS, EqRC32_SS, EqRC33_SS, EqRC34_SS, EqRC35_SS, EqRC36_SS, EqRC37_SS, EqRC38_SS, EqRC41_SS /;
MODEL mod_tech_SS_RC_cust / EqRC96_SS, EqRC97_SS, EqRC98_SS, EqRC99_SS, EqRC100_SS, EqRC101_SS, EqRC102_SS, EqRC103_SS, EqRC104_SS, EqRC0_SS, EqRC2_SS, EqRC3_SS, EqRC4_1_SS, EqRC4_2_SS, EqRC5_1_SS, EqRC5_2_SS, EqRC6_1_SS, EqRC6_2_SS, EqRC7_1_SS,EqRC7_2_SS, EqRC8_SS, EqRC9_SS, EqRC11_SS, EqRC12_SS, EqRC13_SS, EqRC14_SS, EqRC15_SS, EqRC16_SS, EqRC17_SS , EqRC18_SS, EqRC19_SS, EqRC20_SS, EqRC21_SS, EqRC22_SS, EqRC23_SS, EqRC24_SS, EqRC25_SS, EqRC26_SS, EqRC27_SS, EqRC28_SS, EqRC29_SS, EqRC30_SS, EqRC31_SS, EqRC32_SS, EqRC33_SS, EqRC34_SS, EqRC35_SS, EqRC36_SS, EqRC37_SS, EqRC38_SS, EqRC41_SS/;

