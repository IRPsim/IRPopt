***-----------------------------------------------------------------------------
***Parameter
***-----------------------------------------------------------------------------
PARAMETER par_E_SS_RH_max(set_ii,set_tech_SS_RH) Maximal mögliche Energierzeugung Photovoltaikanlage;
par_E_SS_RH_max(set_ii,set_tech_SS_RH)$(par_X_pss_model(set_tech_SS_RH) eq 1)=0;
par_E_SS_RH_max(set_ii,set_tech_SS_RH)
=min(par_P_SS_RH_max(set_tech_SS_RH) * sca_delta_ii * par_H_pss_techavail(set_ii,set_tech_SS_RH), (9.81 * par_WFH_SS_RH(set_tech_SS_RH) * par_WMF_SS_RH(set_tech_SS_RH) * par_Eta_SS_RH(set_tech_SS_RH) * 10**(-6) * sca_delta_ii)*par_H_pss_techavail(set_ii,set_tech_SS_RH))
***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
EQUATIONS EqRH1_SS(set_ii,set_pss) Restriktion Energieerzeugung Laufwasserkraftwerk;
EqRH1_SS(set_t,set_tech_SS_RH)$(set_pss_opt(set_tech_SS_RH) AND par_X_pss_model(set_tech_SS_RH) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_RH,set_toPss)$set_energyLink_opt('E',set_tech_SS_RH,set_toPss))
                 =l=
                 (9.81 * par_WFH_SS_RH(set_tech_SS_RH) * par_WMF_SS_RH(set_tech_SS_RH) * par_Eta_SS_RH(set_tech_SS_RH) * 10**(-6) * sca_delta_ii)*var_S_pss(set_t,set_tech_SS_RH);
*Erdbeschleunigungskonstante (9,81) [m/s2] * Fallhöhe [m] * Wassermassenstrom [kg/s] * Wirkungsgrad der Turbine [] * delta Zeitschritt der Simulation * Umrechnungsfaktor 10^-6

EQUATIONS EqRH2_SS(set_ii,set_pss) Restriktion maximale Leistung Laufwasserkraftwerk;
EqRH2_SS(set_t,set_tech_SS_RH)$(set_pss_opt(set_tech_SS_RH) AND par_X_pss_model(set_tech_SS_RH) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_RH,set_toPss)$set_energyLink_opt('E',set_tech_SS_RH,set_toPss))
                 =l=
                 par_P_SS_RH_max(set_tech_SS_RH) * sca_delta_ii * var_S_pss(set_t,set_tech_SS_RH);

EQUATIONS EqRH3_SS(set_ii,set_pss) Restriktion negative Regelenergie Laufwasserkraftwerk;
EqRH3_SS(set_t,set_tech_SS_RH)$(set_pss_opt(set_tech_SS_RH) AND par_X_pss_model(set_tech_SS_RH) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_t,'NR',set_tech_SS_RH,set_toPss)$set_energyLink_opt('NR',set_tech_SS_RH,set_toPss))
                 =l=
                 par_E_SS_RH_max(set_t,set_tech_SS_RH)-sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_RH,set_toPss)$set_energyLink_opt('E',set_tech_SS_RH,set_toPss));

*Verfügbarkeit
Equation EqRH4_SS(set_ii_0,set_pss) Verfügbarkeit;
EqRH4_SS(set_t,set_tech_SS_RH)$(set_pss_opt(set_tech_SS_RH) AND par_X_pss_model(set_tech_SS_RH) eq 1)..
                  var_S_pss(set_t,set_tech_SS_RH)
                  =l=
                  par_H_pss_techavail(set_t,set_tech_SS_RH);

MODEL mod_tech_SS_RH_orga / EqRH1_SS, EqRH2_SS, EqRH3_SS, EqRH4_SS /;
MODEL mod_tech_SS_RH_cust / EqRH1_SS, EqRH2_SS, EqRH3_SS, EqRH4_SS /;
