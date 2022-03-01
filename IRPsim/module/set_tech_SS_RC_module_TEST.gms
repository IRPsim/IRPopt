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
=((par_P_SS_RC_max(set_tech_SS_RC)*sca_delta_ii/par_Eta_SS_RC_max(set_tech_SS_RC))-(par_P_SS_RC_min(set_tech_SS_RC)*sca_delta_ii/par_Eta_SS_RC_min(set_tech_SS_RC)))/(par_P_SS_RC_max(set_tech_SS_RC)*sca_delta_ii-par_P_SS_RC_min(set_tech_SS_RC)*sca_delta_ii);

Parameter par_alpha_SS_RC_fix(set_tech_SS_RC) Fixer Anteil des Brennstoffverbrauchs (EQUATION 15 Mollenhauer et al. 2015);
par_alpha_SS_RC_fix(set_tech_SS_RC)$(par_X_pss_model(set_tech_SS_RC) eq 1)
=(par_P_SS_RC_min(set_tech_SS_RC)*sca_delta_ii/par_Eta_SS_RC_min(set_tech_SS_RC))-par_alpha_SS_RC_var(set_tech_SS_RC)*par_P_SS_RC_min(set_tech_SS_RC)*sca_delta_ii;

***-----------------------------------------------------------------------------
***Variablen
***-----------------------------------------------------------------------------
POSITIVE VARIABLE var_SOC_SS_RC(set_ii_0,set_tech_SS_RC) Kehrrichtspeicherfüllstand Kehrrichtverbrennungsanlage;
POSITIVE VARIABLE var_RF_SS_RC_discharge(set_ii_0,set_toPss) Ausgehender Kehrricht Kehrrichtverbrennungsanlage;

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

Equation EqRC99_SS(set_ii,set_sector,set_fromPss,set_toPss) Restriktion Ratio Fossile Energie und Kehrrichtenergie;
EqRC99_SS(set_t,set_sector,set_fromPss,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND set_energyLink_notRC_opt(set_sector,set_fromPss,set_tech_SS_RC))..
                 (var_RF_SS_RC_discharge(set_t,set_tech_SS_RC)* (1-par_Ratio_SS_RC(set_tech_SS_RC)))$set_toPss(set_tech_SS_RC)
                 =l=
                 var_energyFlow(set_t,set_sector,set_fromPss,set_tech_SS_RC)$set_energyLink_opt(set_sector,set_fromPss,set_tech_SS_RC);

EQUATION EqRC0_SS(set_ii_0,set_pss) Übergabe Statusvariable;
EqRC0_SS(set_t_ini,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 var_S_pss(set_t_ini,set_tech_SS_RC)
                 =e=
                 par_S_pss_initial(set_t_ini,set_tech_SS_RC);

EQUATION EqRC2_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Energieflussbegrenzung erster Zeitschritt;
EqRC2_SS(set_t_ini,set_sector,set_tech_SS_RC,set_toPss)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND set_energyLink_opt(set_sector,set_tech_SS_RC,set_toPss))..
                 var_energyFlow(set_t_ini,set_sector,set_tech_SS_RC,set_toPss)$set_energyLink_opt(set_sector,set_tech_SS_RC,set_toPss)
                 =e=
                 par_energyFlow_orga(set_t_ini,set_sector,set_tech_SS_RC,set_toPss)

EQUATION EqRC3_SS(set_ii_0,set_sector,set_fromPss,set_toPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqRC3_SS(set_ii_0,set_sector,set_fromPss,set_tech_SS_RC)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND set_energyLink_notRC_opt(set_sector,set_fromPss,set_tech_SS_RC))..
                 var_energyFlow(set_ii_0,set_sector,set_fromPss,set_tech_SS_RC)$set_energyLink_notRC_opt(set_sector,set_fromPss,set_tech_SS_RC)
                 + var_RF_SS_RC_discharge(set_ii_0,set_tech_SS_RC)$set_toPss(set_tech_SS_RC)
                 =e=
                 par_alpha_SS_RC_fix(set_tech_SS_RC)*var_S_pss(set_ii_0,set_tech_SS_RC)
                 +par_alpha_SS_RC_var(set_tech_SS_RC)*(sum(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_RC,set_toPss)$set_energyLink_notRC_opt('E',set_fromPss,set_toPss))
                 +par_beta_SS_RC(set_ii_0,set_tech_SS_RC)*sum(set_toPss,var_energyFlow(set_ii_0,'W',set_tech_SS_RC,set_toPss)$set_energyLink_notRC_opt('W',set_fromPss,set_toPss)));

EQUATION EqRC4_1_SS(set_ii,set_sector,set_fromPss,set_toPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqRC4_1_SS(set_t,set_sector,set_fromPss,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND set_energyLink_notRC_opt(set_sector,set_fromPss,set_tech_SS_RC))..
                 var_energyFlow(set_t,'G','GMarket',set_tech_SS_RC)$set_energyLink_notRC_opt(set_sector,set_fromPss,set_tech_SS_RC)
                 + var_RF_SS_RC_discharge(set_t,set_tech_SS_RC)$set_toPss(set_tech_SS_RC)
                 =l=
                 var_S_pss(set_t,set_tech_SS_RC)*par_P_SS_RC_max(set_tech_SS_RC)/par_Eta_SS_RC_max(set_tech_SS_RC)*sca_delta_ii;

EQUATION EqRC6_1_SS(set_ii,set_sector,set_fromPss,set_toPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqRC6_1_SS(set_t,set_sector,set_fromPss,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND set_energyLink_notRC_opt(set_sector,set_fromPss,set_tech_SS_RC))..
                 var_energyFlow(set_t,set_sector,set_fromPss,set_tech_SS_RC)$set_energyLink_notRC_opt(set_sector,set_fromPss,set_tech_SS_RC)
                 + var_RF_SS_RC_discharge(set_t,set_tech_SS_RC)$set_toPss(set_tech_SS_RC)
                 =g=
                 var_S_pss(set_t,set_tech_SS_RC)*par_P_SS_RC_min(set_tech_SS_RC)/par_Eta_SS_RC_min(set_tech_SS_RC)*sca_delta_ii;


MODEL mod_tech_SS_RC_orga / EqRC0_SS, EqRC2_SS, EqRC3_SS, EqRC4_1_SS, EqRC6_1_SS, EqRC96_SS, EqRC97_SS, EqRC98_SS, EqRC99_SS  /;
MODEL mod_tech_SS_RC_cust / EqRC0_SS, EqRC2_SS, EqRC3_SS, EqRC4_1_SS, EqRC6_1_SS, EqRC96_SS, EqRC97_SS, EqRC98_SS, EqRC99_SS /;


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
                 var_energyFlow(set_t_ini,set_sector,set_tech_SS_RC,set_toPss)$set_energyLink_opt(set_sector,set_tech_SS_RC,set_toPss)
                 =e=
                 par_energyFlow_orga(set_t_ini,set_sector,set_tech_SS_RC,set_toPss)

EQUATION EqRC3_SS(set_ii_0,set_toPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqRC3_SS(set_ii_0,set_tech_SS_RC)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 var_Fossil_SS_RC_additional(set_ii_0,set_tech_SS_RC)
                 + var_RF_SS_RC_discharge(set_ii_0,set_tech_SS_RC)
                 =e=
                 par_alpha_SS_RC_fix(set_tech_SS_RC)*var_S_pss(set_ii_0,set_tech_SS_RC)
                 +par_alpha_SS_RC_var(set_tech_SS_RC)*(sum(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 +par_beta_SS_RC(set_ii_0,set_tech_SS_RC)*sum(set_toPss,var_energyFlow(set_ii_0,'W',set_tech_SS_RC,set_toPss)$set_energyLink_opt('W',set_tech_SS_RC,set_toPss)));

EQUATION EqRC4_1_SS(set_ii,set_toPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqRC4_1_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 var_Fossil_SS_RC_additional(set_t,set_tech_SS_RC)
                 + var_RF_SS_RC_discharge(set_t,set_tech_SS_RC)
                 =l=
                 var_S_pss(set_t,set_tech_SS_RC)*par_P_SS_RC_max(set_tech_SS_RC)/par_Eta_SS_RC_max(set_tech_SS_RC)*sca_delta_ii;

EQUATION EqRC4_2_SS(set_ii,set_fromPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqRC4_2_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 =l=
                 var_S_pss(set_t,set_tech_SS_RC)*par_P_SS_RC_max(set_tech_SS_RC)*sca_delta_ii;

Equation EqRC5_1_SS(set_ii,set_pss) Restriktion maximale Wärmeauskopplung Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk inkl. positiver Reserveenergievorhaltung;
EqRC5_1_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                  sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_RC,set_toPss)$set_energyLink_opt('W',set_tech_SS_RC,set_toPss))
                  +var_W_SS_RC_posres(set_t,set_tech_SS_RC)
                  =l=
                  var_S_pss(set_t,set_tech_SS_RC)*par_Q_SS_RC_max(set_tech_SS_RC)*sca_delta_ii;

Equation EqRC5_2_SS(set_ii,set_pss) Restriktion maximale Wärmeauskopplung Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk inkl. negativer Reserveenergievorhaltung;
EqRC5_2_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                  sum(set_toPss,var_energyFlow(set_t,'W',set_tech_SS_RC,set_toPss)$set_energyLink_opt('W',set_tech_SS_RC,set_toPss))
                  -var_W_SS_RC_negres(set_t,set_tech_SS_RC)
                  =g=
                  0;

*Begrenzung Kesselgröße nach unten
EQUATION EqRC6_1_SS(set_ii,set_toPss) Restriktion Brennstoffverbrauch Entnahme-Kondensationskraftwerk & Gegendruckkraftwerk;
EqRC6_1_SS(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1)..
                 var_Fossil_SS_RC_additional(set_t,set_tech_SS_RC)
                 + var_RF_SS_RC_discharge(set_t,set_tech_SS_RC)
                 =g=
                 var_S_pss(set_t,set_tech_SS_RC)*par_P_SS_RC_min(set_tech_SS_RC)/par_Eta_SS_RC_min(set_tech_SS_RC)*sca_delta_ii;

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
EQUATION EqRC8_SS(set_ii_0,set_pss) Restriktion maximale Wärmeauskopplung Entnahme-Kondensationskraftwerk;
EqRC8_SS(set_ii_0,set_tech_SS_RC)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND par_X_W_SS_RC_condensing(set_tech_SS_RC) eq 1)..
                 sum(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 =l=
                 (var_Fossil_SS_RC_additional(set_ii_0,set_tech_SS_RC) + var_RF_SS_RC_discharge(set_ii_0,set_tech_SS_RC))
                 -sum(set_toPss,var_energyFlow(set_ii_0,'W',set_tech_SS_RC,set_toPss)$set_energyLink_opt('W',set_tech_SS_RC,set_toPss))
                 -0.1*(var_Fossil_SS_RC_additional(set_ii_0,set_tech_SS_RC) + var_RF_SS_RC_discharge(set_ii_0,set_tech_SS_RC))
                 -0.1*var_S_pss(set_ii_0,set_tech_SS_RC)*(par_P_SS_RC_max(set_tech_SS_RC)*sca_delta_ii/par_Eta_SS_RC_max(set_tech_SS_RC)-par_P_SS_RC_max(set_tech_SS_RC)*sca_delta_ii)
                 +0.1*0.1*(var_Fossil_SS_RC_additional(set_ii_0,set_tech_SS_RC) + var_RF_SS_RC_discharge(set_ii_0,set_tech_SS_RC));

*Begrenzung maximale Wärmeauskopplung
*Für Gegendruckkraftwerke mit ist gleich und ohne Termin für Kondensationsverluste
EQUATION EqRC9_SS(set_ii_0,set_fromPss) Restriktion maximale Wärmeauskopplung Gegendruckkraftwerk;
EqRC9_SS(set_ii_0,set_tech_SS_RC)$(set_t_help(set_ii_0) AND set_pss_opt(set_tech_SS_RC) AND par_X_pss_model(set_tech_SS_RC) eq 1 AND par_X_W_SS_RC_pressure(set_tech_SS_RC) eq 1)..
                 sum(set_toPss,var_energyFlow(set_ii_0,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
                 =e=
                 var_Fossil_SS_RC_additional(set_ii_0,set_tech_SS_RC) + var_RF_SS_RC_discharge(set_ii_0,set_tech_SS_RC)
                 -sum(set_toPss,var_energyFlow(set_ii_0,'W',set_tech_SS_RC,set_toPss)$set_energyLink_opt('W',set_tech_SS_RC,set_toPss))
                 -0.1*(var_Fossil_SS_RC_additional(set_ii_0,set_tech_SS_RC) + var_RF_SS_RC_discharge(set_ii_0,set_tech_SS_RC));



MODEL mod_tech_SS_RC_orga / EqRC0_SS, EqRC2_SS, EqRC3_SS, EqRC4_1_SS, EqRC4_2_SS, EqRC5_1_SS, EqRC5_2_SS, EqRC6_1_SS, EqRC6_2_SS, EqRC7_1_SS, EqRC7_2_SS, EqRC8_SS, EqRC9_SS, EqRC96_SS, EqRC97_SS, EqRC98_SS, EqRC99_SS, EqRC100_SS, EqRC101_SS, EqRC102_SS, EqRC103_SS, EqRC104_SS/;
MODEL mod_tech_SS_RC_cust / EqRC0_SS, EqRC2_SS, EqRC3_SS, EqRC4_1_SS, EqRC4_2_SS, EqRC5_1_SS, EqRC5_2_SS, EqRC6_1_SS, EqRC6_2_SS, EqRC7_1_SS, EqRC7_2_SS, EqRC8_SS, EqRC9_SS, EqRC96_SS, EqRC97_SS, EqRC98_SS, EqRC99_SS, EqRC100_SS, EqRC101_SS, EqRC102_SS, EqRC103_SS, EqRC104_SS/;
