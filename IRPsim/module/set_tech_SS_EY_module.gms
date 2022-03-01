***-----------------------------------------------------------------------------
***Parameter
***-----------------------------------------------------------------------------
Parameter par_beta_SS_EY(set_ii_0,set_tech_SS_EY) Temperaturabhängige Stromverlustkennziffer [MW_el je MW_th] (EQUATION 9 Mollenhauer et al. 2015);
par_beta_SS_EY(set_ii,set_tech_SS_EY)$(par_X_pss_model(set_tech_SS_EY) eq 1
AND ((273.15+par_T_SS_EY_feed(set_ii,set_tech_SS_EY))-(273.15+par_T_SS_EY_return(set_ii,set_tech_SS_EY))) ne 0)
= 1 - (((273.15+par_T_SS_EY_cooling(set_ii,set_tech_SS_EY))*log((273.15+par_T_SS_EY_feed(set_ii,set_tech_SS_EY))/(273.15+par_T_SS_EY_return(set_ii,set_tech_SS_EY))))
/((273.15+par_T_SS_EY_feed(set_ii,set_tech_SS_EY))-(273.15+par_T_SS_EY_return(set_ii,set_tech_SS_EY))));

Parameter par_alpha_SS_EY_var(set_tech_SS_EY) Variabler Anteil des Brennstoffverbrauchs (EQUATION 14 Mollenhauer et al. 2015);
par_alpha_SS_EY_var(set_tech_SS_EY)$(par_X_pss_model(set_tech_SS_EY) eq 1)
=(((par_P_SS_EY_max(set_tech_SS_EY)/par_Eta_SS_EY_max(set_tech_SS_EY))-(par_P_SS_EY_min(set_tech_SS_EY)/par_Eta_SS_EY_min(set_tech_SS_EY)))/(par_P_SS_EY_max(set_tech_SS_EY)-par_P_SS_EY_min(set_tech_SS_EY)))*sca_delta_ii;

Parameter par_alpha_SS_EY_fix(set_tech_SS_EY) Fixer Anteil des Brennstoffverbrauchs (EQUATION 15 Mollenhauer et al. 2015);
par_alpha_SS_EY_fix(set_tech_SS_EY)$(par_X_pss_model(set_tech_SS_EY) eq 1)
=((par_P_SS_EY_min(set_tech_SS_EY)/par_Eta_SS_EY_min(set_tech_SS_EY))-par_alpha_SS_EY_var(set_tech_SS_EY)*par_P_SS_EY_min(set_tech_SS_EY))*sca_delta_ii;

***-----------------------------------------------------------------------------
***Variablen
***-----------------------------------------------------------------------------
POSITIVE VARIABLE var_SOC_SS_EY(set_ii_0,set_tech_SS_EY) Kehrrichtspeicherfüllstand Kehrrichtverbrennungsanlage;
POSITIVE VARIABLE var_RF_SS_EY_discharge(set_ii_0,set_tech_SS_EY) Ausgehender Kehrricht Kehrrichtverbrennungsanlage;
POSITIVE VARIABLE var_Fossil_SS_EY_additional(set_ii_0,set_tech_SS_EY) Benötigte Fossile Energie Kehrrichtverbrennungsanlage;

POSITIVE VARIABLE var_G_SS_EY_res(set_ii_0,set_tech_SS_EY) Hilfsvariable Begrenzung Brennstoffverbrauch Reserveenergie;

POSITIVE VARIABLE var_W_SS_EY_negres(set_ii_0,set_tech_SS_EY) Hilfsvariable Begrenzung thermische Reserveenergie;
POSITIVE VARIABLE var_W_SS_EY_posres(set_ii_0,set_tech_SS_EY) Hilfsvariable Begrenzung thermische Reserveenergie;

POSITIVE VARIABLE var_E1_SS_EY_negres(set_ii_0,set_tech_SS_EY) Hilfsvariable Begrenzung elektrische Reserveenergie - Entnahmekondensationskraftwerk in Abhängigkeit der variablen Stromkennzahl;
POSITIVE VARIABLE var_E1_SS_EY_posres(set_ii_0,set_tech_SS_EY) Hilfsvariable Begrenzung elektrische Reserveenergie - Entnahmekondensationskraftwerk in Abhängigkeit der variablen Stromkennzahl;

POSITIVE VARIABLE var_E2_SS_EY_negres(set_ii_0,set_tech_SS_EY) Hilfsvariable Begrenzung elektrische Reserveenergie - Entnahmekondensationskraftwerk und Gegendruckanlage in Abhängigkeit der Aufnahme des Fernwärmenetzes;
POSITIVE VARIABLE var_E2_SS_EY_posres(set_ii_0,set_tech_SS_EY) Hilfsvariable Begrenzung elektrische Reserveenergie - Entnahmekondensationskraftwerk und Gegendruckanlage in Abhängigkeit der Aufnahme des Fernwärmenetzes;

***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------

EQUATION EqEY96_SS(set_ii_0,set_pss) Übergabe Speicherstand;
EqEY96_SS(set_t_ini,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 var_SOC_SS_EY(set_t_ini,set_tech_SS_EY)
                 =e=
                 par_SOC_pss_initial(set_t_ini,set_tech_SS_EY);

EQUATIONS EqEY97_SS(set_ii_0,set_pss) Restriktion aktueller Energiespeicherfüllstand Stromspeicher;
EqEY97_SS(set_ii_0,set_tech_SS_EY)$(set_t_help(set_ii_0) and set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 var_SOC_SS_EY(set_ii_0,set_tech_SS_EY)
                 =e=
                 var_SOC_SS_EY(set_ii_0-1, set_tech_SS_EY)
                 + var_energyFlow(set_ii_0,'CL','CLMarket',set_tech_SS_EY)$set_energyLink_opt('CL','CLMarket',set_tech_SS_EY)
                 - var_RF_SS_EY_discharge(set_ii_0,set_tech_SS_EY);

EQUATIONS EqEY98_SS(set_ii_0,set_pss) Restriktion aktueller Energiespeicherfüllstand Stromspeicher;
EqEY98_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 var_energyFlow(set_t,'CL','CLMarket',set_tech_SS_EY)$set_energyLink_opt('CL','CLMarket',set_tech_SS_EY)
                 =e=
                 par_RF_SS_EY(set_t,set_tech_SS_EY);

Equation EqEY99_SS(set_ii,set_toPss) Restriktion Ratio Fossile Energie und Kehrrichtenergie;
EqEY99_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 var_RF_SS_EY_discharge(set_t,set_tech_SS_EY) * (1-par_Ratio_SS_EY(set_tech_SS_EY))
                 =e=
                 var_Fossil_SS_EY_additional(set_t,set_tech_SS_EY);

Equation EqEY100_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Bezug zusätzliche Fossile Energie;
EqEY100_SS(set_t,'G','GMarket',set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1 AND set_energyLink_opt('G','GMarket',set_tech_SS_EY))..
                 var_energyFlow(set_t,'G','GMarket',set_tech_SS_EY)$set_energyLink_opt('G','GMarket',set_tech_SS_EY)
                 =e=
                 var_Fossil_SS_EY_additional(set_t,set_tech_SS_EY);

Equation EqEY101_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Bezug zusätzliche Fossile Energie;
EqEY101_SS(set_t,'G','GGrid',set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1 AND set_energyLink_opt('G','GGrid',set_tech_SS_EY))..
                 var_energyFlow(set_t,'G','GGrid',set_tech_SS_EY)$set_energyLink_opt('G','GGrid',set_tech_SS_EY)
                 =e=
                 var_Fossil_SS_EY_additional(set_t,set_tech_SS_EY);

Equation EqEY102_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Bezug zusätzliche Fossile Energie;
EqEY102_SS(set_t,'O','OMarket',set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1 AND set_energyLink_opt('O','OMarket',set_tech_SS_EY))..
                 var_energyFlow(set_t,'O','OMarket',set_tech_SS_EY)$set_energyLink_opt('O','OMarket',set_tech_SS_EY)
                 =e=
                 var_Fossil_SS_EY_additional(set_t,set_tech_SS_EY);

Equation EqEY103_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Bezug zusätzliche Fossile Energie;
EqEY103_SS(set_t,'HC','HCMarket',set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1 AND set_energyLink_opt('HC','HCMarket',set_tech_SS_EY))..
                 var_energyFlow(set_t,'HC','HCMarket',set_tech_SS_EY)$set_energyLink_opt('HC','HCMarket',set_tech_SS_EY)
                 =e=
                 var_Fossil_SS_EY_additional(set_t,set_tech_SS_EY);

Equation EqEY104_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Bezug zusätzliche Fossile Energie;
EqEY104_SS(set_t,'L','LMarket',set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1 AND set_energyLink_opt('L','LMarket',set_tech_SS_EY))..
                 var_energyFlow(set_t,'L','LMarket',set_tech_SS_EY)$set_energyLink_opt('L','LMarket',set_tech_SS_EY)
                 =e=
                 var_Fossil_SS_EY_additional(set_t,set_tech_SS_EY);


EQUATION EqEY0_SS(set_ii_0,set_pss) Übergabe Statusvariable;
EqEY0_SS(set_t_ini,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 var_S_pss(set_t_ini,set_tech_SS_EY)
                 =e=
                 par_S_pss_initial(set_t_ini,set_tech_SS_EY);

EQUATION EqEY2_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Energieflussbegrenzung erster Zeitschritt;
EqEY2_SS(set_t_ini,set_sector,set_tech_SS_EY,set_toPss)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1 AND set_energyLink_opt(set_sector,set_tech_SS_EY,set_toPss))..
                 var_energyFlow(set_t_ini,set_sector,set_tech_SS_EY,set_toPss)
                 =e=
                 par_energyFlow_orga(set_t_ini,set_sector,set_tech_SS_EY,set_toPss)

*Brennstoffverbrauch und Wärmeauskopplung
*Brennstoffverbrauch in Abhängigkeit der elektrischen und thermischen Energieauskopplung
*Brennstoffverbrauch und Wärmeauskopplung
*Brennstoffverbrauch in Abhängigkeit der elektrischen und thermischen Energieauskopplung
EQUATION EqEY3_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqEY3_SS(set_ii_0,set_sector,set_fromPss,set_tech_SS_EY)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1 AND set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_EY))..
                 var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_EY)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_EY)
                 =e=
                 par_alpha_SS_EY_fix(set_tech_SS_EY)*var_S_pss(set_ii_0,set_tech_SS_EY)
                 +par_alpha_SS_EY_var(set_tech_SS_EY)*(sum(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_EY,set_toPss)$set_energyLink_opt('E',set_tech_SS_EY,set_toPss))
                 +par_beta_SS_EY(set_ii_0,set_tech_SS_EY)*sum(set_toPss,var_energyFlow(set_ii_0,'W',set_tech_SS_EY,set_toPss)$set_energyLink_opt('W',set_tech_SS_EY,set_toPss)));

*Begrenzung Kesselgröße nach oben
EQUATION EqEY4_1_SS(set_ii,set_sector,set_fromPss,set_toPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqEY4_1_SS(set_t,set_sector,set_fromPss,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1 AND set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_EY))..
                 var_energyFlow(set_t,set_sector,set_fromPss,set_tech_SS_EY)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_EY)
                 =l=
                 var_S_pss(set_t,set_tech_SS_EY)*par_P_SS_EY_max(set_tech_SS_EY)/par_Eta_SS_EY_max(set_tech_SS_EY)*sca_delta_ii;

*raus
EQUATION EqEY4_2_SS(set_ii,set_fromPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqEY4_2_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_EY,set_toPss)$set_energyLink_opt('E',set_tech_SS_EY,set_toPss))
                 =l=
                 var_S_pss(set_t,set_tech_SS_EY)*par_P_SS_EY_max(set_tech_SS_EY)*sca_delta_ii;

*raus
Equation EqEY5_1_SS(set_ii,set_pss) Restriktion maximale Wärmeauskopplung Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk inkl. positiver Reserveenergievorhaltung;
EqEY5_1_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                  sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_EY,set_toPss)$set_energyLink_opt('W',set_tech_SS_EY,set_toPss))
                  +var_W_SS_EY_posres(set_t,set_tech_SS_EY)
                  =l=
                  var_S_pss(set_t,set_tech_SS_EY)*par_Q_SS_EY_max(set_tech_SS_EY)*sca_delta_ii;

*raus
Equation EqEY5_2_SS(set_ii,set_pss) Restriktion maximale Wärmeauskopplung Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk inkl. negativer Reserveenergievorhaltung;
EqEY5_2_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                  sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_EY,set_toPss)$set_energyLink_opt('W',set_tech_SS_EY,set_toPss))
                  -var_W_SS_EY_negres(set_t,set_tech_SS_EY)
                  =g=
                  0;

*Begrenzung Kesselgröße nach unten
EQUATION EqEY6_1_SS(set_ii,set_sector,set_fromPss,set_toPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqEY6_1_SS(set_t,set_sector,set_fromPss,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1 AND set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_EY))..
                 var_energyFlow(set_t,set_sector,set_fromPss,set_tech_SS_EY)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_EY)
                 =g=
                 var_S_pss(set_t,set_tech_SS_EY)*par_P_SS_EY_min(set_tech_SS_EY)/par_Eta_SS_EY_min(set_tech_SS_EY)*sca_delta_ii;

*raus
EQUATION EqEY6_2_SS(set_ii,set_fromPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqEY6_2_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_EY,set_toPss)$set_energyLink_opt('E',set_tech_SS_EY,set_toPss))
                 =g=
                 var_S_pss(set_t,set_tech_SS_EY)*par_P_SS_EY_min(set_tech_SS_EY)*sca_delta_ii;

*Start-Stopp-Status Relation
EQUATION EqEY7_1_SS(set_ii_0,set_pss) Restriktion On-Off Relation;
EqEY7_1_SS(set_ii_0,set_tech_SS_EY)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 var_S_pss(set_ii_0,set_tech_SS_EY)-var_S_pss(set_ii_0-1,set_tech_SS_EY)
                 =e=
                 var_S_pss_start(set_ii_0,set_tech_SS_EY)-var_S_pss_stopp(set_ii_0,set_tech_SS_EY);

EQUATION EqEY7_2_SS(set_ii_0,set_pss) Restriktion On-Off Relation;
EqEY7_2_SS(set_ii_0,set_tech_SS_EY)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 var_S_pss_start(set_ii_0,set_tech_SS_EY)+var_S_pss_stopp(set_ii_0,set_tech_SS_EY)
                 =l=
                 1;


*Begrenzung maximale Wärmeauskopplung
*Für Entnahmekondensationskraftwerke mit kleiner gleich und Termin für Kondensationsverluste
*Annahme, dass Energieverluste durch Abgase bei 10% liegen (gemäß Mollenhauer et al. 2015 zwischen 6,5% und 11,5%)
EQUATION EqEY8_SS(set_ii_0,set_sector,set_fromPss,set_pss) Restriktion maximale Wärmeauskopplung Entnahme-Kondensationskraftwerk;
EqEY8_SS(set_ii_0,set_sector,set_fromPss,set_tech_SS_EY)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1 AND par_X_E_SS_EY_condensing(set_tech_SS_EY) eq 1 AND set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_EY))..
                 sum(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_EY,set_toPss)$set_energyLink_opt('E',set_tech_SS_EY,set_toPss))
                 =l=
                 var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_EY)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_EY)
                 -sum(set_toPss,var_energyFlow(set_ii_0,'W',set_tech_SS_EY,set_toPss)$set_energyLink_opt('W',set_tech_SS_EY,set_toPss))
                 -0.1*var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_EY)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_EY)
                 -0.1*var_S_pss(set_ii_0,set_tech_SS_EY)*(par_P_SS_EY_max(set_tech_SS_EY)*sca_delta_ii/par_Eta_SS_EY_max(set_tech_SS_EY)-par_P_SS_EY_max(set_tech_SS_EY)*sca_delta_ii)
                 +0.1*0.1*var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_EY)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_EY);

*Begrenzung maximale Wärmeauskopplung
*Für Gegendruckkraftwerke mit ist gleich und ohne Termin für Kondensationsverluste
EQUATION EqEY9_SS(set_ii_0,set_sector,set_fromPss,set_pss) Restriktion maximale Wärmeauskopplung Gegendruckkraftwerk;
EqEY9_SS(set_ii_0,set_sector,set_fromPss,set_tech_SS_EY)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1 AND par_X_E_SS_EY_pressure(set_tech_SS_EY) eq 1 AND set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_EY))..
                 sum(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_EY,set_toPss)$set_energyLink_opt('E',set_tech_SS_EY,set_toPss))
                 +sum(set_toPss,var_energyFlow(set_ii_0,'W',set_tech_SS_EY,set_toPss)$set_energyLink_opt('W',set_tech_SS_EY,set_toPss))
                 =e=
                 var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_EY)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_EY)
                 -0.1*var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_EY)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_EY);

*Stromkennzahl
*Equation EqEY10_SS(set_ii,set_pss) Restriktion Stromkennzahl;
*EqEY10_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1 AND par_X_W_SS_EY_pressure(set_tech_SS_EY) eq 1)..
*                  sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_EY,set_toPss)$set_energyLink_opt('W',set_tech_SS_EY,set_toPss)) * par_P_SS_EY_max(set_tech_SS_EY)/par_Q_SS_EY_max(set_tech_SS_EY)
*                  =e=
*                  sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_EY,set_toPss)$set_energyLink_opt('E',set_tech_SS_EY,set_toPss));


*Leistungsschranken
EQUATION EqEY11_SS(set_ii_0,set_pss) Leistungsbegrenzung;
EqEY11_SS(set_ii_0,set_tech_SS_EY)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_EY,set_toPss)$set_energyLink_opt('E',set_tech_SS_EY,set_toPss))
                 +var_E2_SS_EY_posres(set_ii_0,set_tech_SS_EY)
                 =l=
                 SUM(set_toPss,var_energyFlow(set_ii_0-1,'E',set_tech_SS_EY,set_toPss)$set_energyLink_opt('E',set_tech_SS_EY,set_toPss))
                 + par_P_pss_ru_general(set_tech_SS_EY)*var_S_pss(set_ii_0-1,set_tech_SS_EY)*sca_delta_ii
                 + par_P_pss_ru_start(set_tech_SS_EY)*(1-var_S_pss(set_ii_0-1,set_tech_SS_EY))*sca_delta_ii
                 - min(par_P_pss_ru_start(set_tech_SS_EY)*sca_delta_ii, par_P_SS_EY_min(set_tech_SS_EY)*sca_delta_ii+par_P_pss_ru_general(set_tech_SS_EY)*sca_delta_ii)*(1-var_S_pss(set_ii_0,set_tech_SS_EY)) ;

EQUATION EqEY12_SS(set_ii_0,set_pss) Leistungsbegrenzung;
EqEY12_SS(set_ii_0,set_tech_SS_EY)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_EY,set_toPss)$set_energyLink_opt('E',set_tech_SS_EY,set_toPss))
                 -var_E2_SS_EY_negres(set_ii_0,set_tech_SS_EY)
                 =g=
                 SUM(set_toPss,var_energyFlow(set_ii_0-1,'E',set_tech_SS_EY,set_toPss)$set_energyLink_opt('E',set_tech_SS_EY,set_toPss))
                 - par_P_pss_rd_general(set_tech_SS_EY)*var_S_pss(set_ii_0,set_tech_SS_EY)*sca_delta_ii
                 - par_P_pss_rd_stop(set_tech_SS_EY)*(1-var_S_pss(set_ii_0,set_tech_SS_EY))*sca_delta_ii
                 - min (par_P_pss_rd_stop(set_tech_SS_EY)*sca_delta_ii, par_P_SS_EY_min(set_tech_SS_EY)*sca_delta_ii+par_P_pss_rd_general(set_tech_SS_EY)*sca_delta_ii)*(1-var_S_pss(set_ii_0-1,set_tech_SS_EY)) ;


*Temperaturniveau
Equation EqEY13_SS(set_ii,set_pss) Operationale Temperaturrestriktion;
EqEY13_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                  var_S_pss(set_t,set_tech_SS_EY)
                  =l=
                  var_T_pss(set_t,set_tech_SS_EY);

Equation EqEY14_SS(set_ii,set_pss) Operationale Temperaturrestriktion kleiner eins;
EqEY14_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                  var_T_pss(set_t,set_tech_SS_EY)
                  =l=
                  1;

Equation EqEY15_SS(set_ii_0,set_pss) Initiale Operationale Temperaturveränderung (Equation 23 Silbernagl et al. 2015);
EqEY15_SS(set_ii_0,set_tech_SS_EY)$(set_t_help3(set_ii_0) AND set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                  var_T_pss(set_ii_0,set_tech_SS_EY)
                  =e=
                  sca_exp**(-par_Lambda_SS_EY_heatlosses(set_tech_SS_EY)*par_H_pss_presentoff(set_tech_SS_EY))+var_heating_pss(set_ii_0-1,set_tech_SS_EY);


Equation EqEY16_SS(set_ii_0,set_pss) Rekursive Temperaturdefinition;
EqEY16_SS(set_ii_0,set_tech_SS_EY)$(set_t_help4(set_ii_0) AND
                                       set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                  var_T_pss(set_ii_0,set_tech_SS_EY)
                  =e=
                  sca_exp**(-par_Lambda_SS_EY_heatlosses(set_tech_SS_EY))*var_T_pss(set_ii_0-1,set_tech_SS_EY)
                  +(1-sca_exp**(-par_Lambda_SS_EY_heatlosses(set_tech_SS_EY)))*var_S_pss(set_ii_0-1,set_tech_SS_EY)
                  +var_heating_pss(set_ii_0-1,set_tech_SS_EY);

*Mindestbetriebszeit
***Kraftwerksbezogene dynamische Sets für den Optimierungsdurchlauf definieren und initialisieren
***par_H_pss_requon / par_H_pss_requoff: Verbleibende Prosumestorerlaufzeiten / Verbleibende Prosumestorerstillstandszeiten
***par_H_pss_minon /  par_H_pss_minoff: Prosumestorermindestlaufzeit / Prosumestorermindeststillstandszeit
***sca_numberOptimization: Länge des Optimierungshorizonts
***sca_numberStoring: Länge des Speicherhorizonts
***sca_iterator: Zähler der Optimierungsaufrufe
Equation EqEY17_SS(set_pss) Mindestbetriebszeiteneinhaltung am Periodenanfang;
EqEY17_SS(set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                  SUM(set_ii$((ORD(set_ii) > sca_numberStoring*sca_iterator) AND (ORD(set_ii) <= sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_SS_EY))), 1-var_S_pss(set_ii,set_tech_SS_EY))
                  =e=
                  0;

Equation EqEY18_SS(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung in Periodenmitte;
EqEY18_SS(set_ii_0,set_tech_SS_EY)$((ORD(set_ii_0) > sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_SS_EY)+1) AND
                                      (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_SS_EY)+1) AND
                                      set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                  SUM(set_ii_0_duplicate$((ORD(set_ii_0_duplicate) ge sca_numberStoring*sca_iterator+par_H_pss_requon(set_tech_SS_EY)+1) AND (ORD(set_ii_0_duplicate) ge ORD(set_ii_0)) AND (ORD(set_ii_0_duplicate) le (ORD(set_ii_0)+par_H_pss_minon(set_tech_SS_EY)-1)) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_SS_EY)+1) ),var_S_pss(set_ii_0_duplicate,set_tech_SS_EY))
                  =g=
                  par_H_pss_minon(set_tech_SS_EY)*(var_S_pss(set_ii_0,set_tech_SS_EY)-var_S_pss(set_ii_0-1,set_tech_SS_EY));

Equation EqEY19_SS(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung am Periodenende;
EqEY19_SS(set_ii_0,set_tech_SS_EY)$((ORD(set_ii_0) > sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minon(set_tech_SS_EY)+1) AND
                                       (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization+1) AND
                                       set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 SUM(set_ii_0_duplicate$(ORD(set_ii_0_duplicate) ge ORD(set_ii_0) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization)),var_S_pss(set_ii_0_duplicate,set_tech_SS_EY)-(var_S_pss(set_ii_0,set_tech_SS_EY)-var_S_pss(set_ii_0-1,set_tech_SS_EY)))
                 =g=
                 0;

*Mindeststillstandszeit
Equation EqEY20_SS(set_pss) Mindeststillstandszeiteneinhaltung am Periodenanfang;
EqEY20_SS(set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 SUM(set_ii$((ORD(set_ii) > sca_numberStoring*sca_iterator) AND (ORD(set_ii) <= sca_numberStoring*sca_iterator+par_H_pss_requoff(set_tech_SS_EY))),var_S_pss(set_ii,set_tech_SS_EY))
                 =e=
                 0;

Equation EqEY21_SS(set_ii_0,set_pss) Mindestbetriebszeiteneinhaltung in Periodenmitte;
EqEY21_SS(set_ii_0,set_tech_SS_EY)$((ORD(set_ii_0) > sca_numberStoring*sca_iterator+par_H_pss_requoff(set_tech_SS_EY)+1) AND
                                      (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minoff(set_tech_SS_EY)+1) AND
                                      set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                  SUM(set_ii_0_duplicate$((ORD(set_ii_0_duplicate) ge ORD(set_ii_0)) AND (ORD(set_ii_0_duplicate) le (ORD(set_ii_0)+par_H_pss_minoff(set_tech_SS_EY)-1))),1-var_S_pss(set_ii_0_duplicate,set_tech_SS_EY))
                  =g=
                  par_H_pss_minoff(set_tech_SS_EY)*var_S_pss_stopp(set_ii_0,set_tech_SS_EY);

Equation EqEY22_SS(set_ii_0,set_pss) Mindeststillstandszeiteneinhaltung am Periodenende (Equation 26 Carrion et 2006);
EqEY22_SS(set_ii_0,set_tech_SS_EY)$((ORD(set_ii_0) > sca_numberStoring*sca_iterator+sca_numberOptimization-par_H_pss_minoff(set_tech_SS_EY)+1) AND
                                       (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization+1) AND
                                       set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 SUM(set_ii_0_duplicate$(ORD(set_ii_0_duplicate) ge ORD(set_ii_0) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization+1)),1-var_S_pss(set_ii_0_duplicate,set_tech_SS_EY)-(var_S_pss(set_ii_0-1,set_tech_SS_EY)-var_S_pss(set_ii_0,set_tech_SS_EY)))
                 =g=
                 0;


$ontext
*Maximalbetriebszeit
Equation EqEY39_SS(set_pss) Maximalbetriebszeiterlaubnis am Periodenanfang;
EqEY39_SS(set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                  par_H_pss_presenton(set_tech_SS_EY) + SUM(set_ii$((ORD(set_ii) > sca_numberStoring*sca_iterator) AND (ORD(set_ii) <= sca_numberStoring*sca_iterator+par_H_pss_permon(set_tech_SS_EY))), var_S_pss(set_ii,set_tech_SS_EY))
                  =l=
                  par_H_pss_maxon(set_tech_SS_EY);

Equation EqEY40_SS(set_ii_0,set_pss) Maximalbetriebszeiterlaubnis in Periodenmitte;
EqEY40_SS(set_ii_0,set_tech_SS_EY)$((ORD(set_ii_0) > sca_numberStoring*sca_iterator+par_H_pss_permon(set_tech_SS_EY)+1) AND
                                      (ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization+1) AND
                                      set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                  SUM(set_ii_0_duplicate$((ORD(set_ii_0_duplicate) ge sca_numberStoring*sca_iterator+1) AND (ORD(set_ii_0_duplicate) ge (ORD(set_ii_0)-par_H_pss_maxon(set_tech_SS_EY)+1) AND (ORD(set_ii_0_duplicate) le sca_numberStoring*sca_iterator+sca_numberOptimization+1))),var_S_pss(set_ii_0_duplicate,set_tech_SS_EY))
                  =l=
                  par_H_pss_maxon(set_tech_SS_EY)-var_S_pss(set_ii_0,set_tech_SS_EY);

$offtext
*Verfügbarkeit
Equation EqEY41_SS(set_ii_0,set_pss) Maximalbetriebszeiterlaubnis in Periodenmitte;
EqEY41_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                  var_S_pss(set_t,set_tech_SS_EY)
                  =l=
                  par_H_pss_techavail(set_t,set_tech_SS_EY);

*Reservevorhaltung
EQUATIONS EqEY23_SS(set_ii,set_pss) Begrenzung positive Vorhaltung von Regelenergie durch Kapazitätsschranke Entnahme-Kondensationskraftwerk;
EqEY23_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1 AND par_X_E_SS_EY_condensing(set_tech_SS_EY) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_EY,set_toPss)$set_energyLink_opt('E',set_tech_SS_EY,set_toPss))
                 +var_E1_SS_EY_posres(set_t,set_tech_SS_EY)
                 +SUM(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_EY,set_toPss)$set_energyLink_opt('W',set_tech_SS_EY,set_toPss))
                 +0.1*var_S_pss(set_t,set_tech_SS_EY)*(par_P_SS_EY_max(set_tech_SS_EY)*sca_delta_ii/par_Eta_SS_EY_max(set_tech_SS_EY)-par_P_SS_EY_max(set_tech_SS_EY)*sca_delta_ii)
                 =l=
                 (1-0.1+0.1*0.1)*var_S_pss(set_t,set_tech_SS_EY)*par_P_SS_EY_max(set_tech_SS_EY)*sca_delta_ii/par_Eta_SS_EY_max(set_tech_SS_EY);

EQUATION EqEY25_SS(set_ii,set_pss) Begrenzung positive Vorhaltung von Regelenergie durch Kapazitätsschranke Entnahme-Kondensationskraftwerk;;
EqEY25_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1 AND par_X_E_SS_EY_condensing(set_tech_SS_EY) eq 1)..
                 par_alpha_SS_EY_fix(set_tech_SS_EY)*var_S_pss(set_t,set_tech_SS_EY)
                 +par_alpha_SS_EY_var(set_tech_SS_EY)*(sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_EY,set_toPss)$set_energyLink_opt('E',set_tech_SS_EY,set_toPss))
                 +var_E1_SS_EY_posres(set_t,set_tech_SS_EY)
                 +par_beta_SS_EY(set_t,set_tech_SS_EY)*sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_EY,set_toPss)$set_energyLink_opt('W',set_tech_SS_EY,set_toPss)))
                 =l=
                 var_S_pss(set_t,set_tech_SS_EY)*par_P_SS_EY_max(set_tech_SS_EY)*sca_delta_ii/par_Eta_SS_EY_max(set_tech_SS_EY);

EQUATIONS EqEY24_SS(set_ii,set_pss) Begrenzung negative Vorhaltung von Regelenergie durch Kapazitätsschranke Entnahme-Kondensationskraftwerk;
EqEY24_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1 AND par_X_E_SS_EY_condensing(set_tech_SS_EY) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_EY,set_toPss)$set_energyLink_opt('E',set_tech_SS_EY,set_toPss))
                 -var_E1_SS_EY_negres(set_t,set_tech_SS_EY)
                 +SUM(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_EY,set_toPss)$set_energyLink_opt('W',set_tech_SS_EY,set_toPss))
                 +0.1*var_S_pss(set_t,set_tech_SS_EY)*(par_P_SS_EY_max(set_tech_SS_EY)*sca_delta_ii/par_Eta_SS_EY_max(set_tech_SS_EY)-par_P_SS_EY_max(set_tech_SS_EY)*sca_delta_ii)
                 =g=
                 (1-0.1+0.1*0.1)*var_S_pss(set_t,set_tech_SS_EY)*par_P_SS_EY_min(set_tech_SS_EY)*sca_delta_ii/par_Eta_SS_EY_min(set_tech_SS_EY);


EQUATION EqEY26_SS(set_ii,set_pss) Begrenzung negative Vorhaltung von Regelenergie durch minimale elektrische Leistung Entnahme-Kondensationskraftwerk;
EqEY26_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1 AND par_X_E_SS_EY_condensing(set_tech_SS_EY) eq 1)..
                 par_alpha_SS_EY_fix(set_tech_SS_EY)*var_S_pss(set_t,set_tech_SS_EY)
                 +par_alpha_SS_EY_var(set_tech_SS_EY)*(sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_EY,set_toPss)$set_energyLink_opt('E',set_tech_SS_EY,set_toPss))
                 -var_E1_SS_EY_negres(set_t,set_tech_SS_EY)
                 +par_beta_SS_EY(set_t,set_tech_SS_EY)*sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_EY,set_toPss)$set_energyLink_opt('W',set_tech_SS_EY,set_toPss)))
                 =g=
                 var_S_pss(set_t,set_tech_SS_EY)*par_P_SS_EY_min(set_tech_SS_EY)*sca_delta_ii/par_Eta_SS_EY_min(set_tech_SS_EY);

EQUATIONS EqEY27_SS(set_ii,set_pss) Begrenzung negative Vorhaltung von Regelenergie durch maximale elektrische Leistung Entnahme-Kondensationskraftwerk;
EqEY27_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1 AND par_X_E_SS_EY_condensing(set_tech_SS_EY) eq 1)..
                 par_alpha_SS_EY_fix(set_tech_SS_EY)*var_S_pss(set_t,set_tech_SS_EY)
                 +par_alpha_SS_EY_var(set_tech_SS_EY)*(sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_EY,set_toPss)$set_energyLink_opt('E',set_tech_SS_EY,set_toPss))
                 -var_E1_SS_EY_negres(set_t,set_tech_SS_EY)
                 +par_beta_SS_EY(set_t,set_tech_SS_EY)*sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_EY,set_toPss)$set_energyLink_opt('W',set_tech_SS_EY,set_toPss)))
                 =l=
                 var_S_pss(set_t,set_tech_SS_EY)*par_P_SS_EY_max(set_tech_SS_EY)*sca_delta_ii/par_Eta_SS_EY_max(set_tech_SS_EY);

EQUATIONS EqEY28_SS(set_ii,set_pss) Begrenzung negative Vorhaltung von Regelenergie durch maximale elektrische Leistung Gegendruckkraftwerk;
EqEY28_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_EY,set_toPss)$set_energyLink_opt('E',set_tech_SS_EY,set_toPss))
                 +var_E2_SS_EY_posres(set_t,set_tech_SS_EY)
                 =l=
                 var_S_pss(set_t,set_tech_SS_EY)*par_P_SS_EY_max(set_tech_SS_EY)*sca_delta_ii;

EQUATIONS EqEY29_SS(set_ii,set_pss) Begrenzung positive Vorhaltung von Regelenergie durch maximale elektrische Leistung Gegendruckkraftwerk;
EqEY29_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_EY,set_toPss)$set_energyLink_opt('E',set_tech_SS_EY,set_toPss))
                 +var_E2_SS_EY_posres(set_t,set_tech_SS_EY)
                 =g=
                 var_S_pss(set_t,set_tech_SS_EY)*par_P_SS_EY_min(set_tech_SS_EY)*sca_delta_ii;

EQUATION EqEY30_SS(set_ii_0,set_pss) Begrenzung negative Regelenergievorhaltung;
EqEY30_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_EY,set_toPss)$set_energyLink_opt('E',set_tech_SS_EY,set_toPss))
                 -var_E2_SS_EY_negres(set_t,set_tech_SS_EY)
                 =g=
                 var_S_pss(set_t,set_tech_SS_EY)*par_P_SS_EY_min(set_tech_SS_EY)*sca_delta_ii;

EQUATION EqEY31_SS(set_ii_0,set_pss) Begrenzung negative Regelenergievorhaltung (thermisch) durch das Fernwärmenetz;
EqEY31_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 var_W_SS_EY_negres(set_t,set_tech_SS_EY)
                 =l=
                 sum(set_fromPss,var_energyFlow(set_t,'PR',set_fromPss,set_tech_SS_EY)$set_energyLink_opt('PR',set_fromPss,set_tech_SS_EY));

EQUATION EqEY32_SS(set_ii_0,set_pss) Begrenzung positive Regelenergievorhaltung (thermisch) durch das Fernwärmenetz;
EqEY32_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 var_W_SS_EY_posres(set_t,set_tech_SS_EY)
                 =l=
                 sum(set_fromPss,var_energyFlow(set_t,'NR',set_fromPss,set_tech_SS_EY)$set_energyLink_opt('NR',set_fromPss,set_tech_SS_EY));

EQUATION EqEY33_SS(set_ii_0,set_pss) Begrenzung positive Regelenergievorhaltung durch das Verhältnis elektrisch und thermisch;
EqEY33_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 var_E2_SS_EY_posres(set_t,set_tech_SS_EY)
                 =e=
                 par_beta_SS_EY(set_t,set_tech_SS_EY)*var_W_SS_EY_posres(set_t,set_tech_SS_EY) ;

EQUATION EqEY34_SS(set_ii_0,set_pss) Begrenzung negative Regelenergievorhaltung durch das Verhältnis elektrisch und thermisch;
EqEY34_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 var_E2_SS_EY_negres(set_t,set_tech_SS_EY)
                 =e=
                 par_beta_SS_EY(set_t,set_tech_SS_EY)*var_W_SS_EY_negres(set_t,set_tech_SS_EY) ;

EQUATION EqEY35_SS(set_ii_0,set_pss) Begrenzung Negative Regelenergievorhaltung durch die internen und externen Möglichkeiten der Kraftwerke;
EqEY35_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_t,'NR',set_tech_SS_EY,set_toPss)$set_energyLink_opt('NR',set_tech_SS_EY,set_toPss))
                 =l=
                 var_E1_SS_EY_negres(set_t,set_tech_SS_EY)+var_E2_SS_EY_negres(set_t,set_tech_SS_EY);

EQUATION EqEY36_SS(set_ii_0,set_pss) Begrenzung positive Regelenergievorhaltung durch die internen und externen Möglichkeiten der Kraftwerke;
EqEY36_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_model(set_tech_SS_EY) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_t,'PR',set_tech_SS_EY,set_toPss)$set_energyLink_opt('PR',set_tech_SS_EY,set_toPss))
                 =l=
                 var_E1_SS_EY_posres(set_t,set_tech_SS_EY)+var_E2_SS_EY_posres(set_t,set_tech_SS_EY);

*Variabler und absoluter Status
EQUATIONS EqEY37_SS(set_ii_0,set_pss) Statusübergabe;
EqEY37_SS(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY))..
                 var_absoluteStatus(set_t,set_tech_SS_EY)
                 =e=
                 var_S_pss_start(set_t,set_tech_SS_EY);

EQUATIONS EqEY38_SS(set_ii_0,set_pss) Statusübergabe;
EqEY38_SS(set_ii_0,set_tech_SS_EY)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_EY))..
                 var_relativeStatus(set_ii_0,set_tech_SS_EY)
                 =e=
                 var_heating_pss(set_ii_0-1,set_tech_SS_EY);



MODEL mod_tech_SS_EY_orga / EqEY96_SS, EqEY97_SS, EqEY98_SS, EqEY99_SS, EqEY100_SS, EqEY101_SS, EqEY102_SS, EqEY103_SS, EqEY104_SS, EqEY0_SS, EqEY2_SS, EqEY3_SS, EqEY4_1_SS, EqEY4_2_SS, EqEY5_1_SS, EqEY5_2_SS, EqEY6_1_SS, EqEY6_2_SS, EqEY7_1_SS,EqEY7_2_SS, EqEY8_SS, EqEY9_SS, EqEY11_SS, EqEY12_SS, EqEY13_SS, EqEY14_SS, EqEY15_SS, EqEY16_SS, EqEY17_SS , EqEY18_SS, EqEY19_SS, EqEY20_SS, EqEY21_SS, EqEY22_SS, EqEY23_SS, EqEY24_SS, EqEY25_SS, EqEY26_SS, EqEY27_SS, EqEY28_SS, EqEY29_SS, EqEY30_SS, EqEY31_SS, EqEY32_SS, EqEY33_SS, EqEY34_SS, EqEY35_SS, EqEY36_SS, EqEY37_SS, EqEY38_SS, EqEY41_SS /;
MODEL mod_tech_SS_EY_cust / EqEY96_SS, EqEY97_SS, EqEY98_SS, EqEY99_SS, EqEY100_SS, EqEY101_SS, EqEY102_SS, EqEY103_SS, EqEY104_SS, EqEY0_SS, EqEY2_SS, EqEY3_SS, EqEY4_1_SS, EqEY4_2_SS, EqEY5_1_SS, EqEY5_2_SS, EqEY6_1_SS, EqEY6_2_SS, EqEY7_1_SS,EqEY7_2_SS, EqEY8_SS, EqEY9_SS, EqEY11_SS, EqEY12_SS, EqEY13_SS, EqEY14_SS, EqEY15_SS, EqEY16_SS, EqEY17_SS , EqEY18_SS, EqEY19_SS, EqEY20_SS, EqEY21_SS, EqEY22_SS, EqEY23_SS, EqEY24_SS, EqEY25_SS, EqEY26_SS, EqEY27_SS, EqEY28_SS, EqEY29_SS, EqEY30_SS, EqEY31_SS, EqEY32_SS, EqEY33_SS, EqEY34_SS, EqEY35_SS, EqEY36_SS, EqEY37_SS, EqEY38_SS, EqEY41_SS/;

