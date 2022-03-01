***-----------------------------------------------------------------------------
***Parameter
***-----------------------------------------------------------------------------
PARAMETER par_HTC_SS_PV(set_ii,set_tech_SS_PV) Bestimmung Wärmeübergangskoeffizient;
PARAMETER par_T_SS_PV(set_ii,set_tech_SS_PV) Bestimmung effektive Temperatur;
PARAMETER par_T_SS_PV_module(set_ii,set_tech_SS_PV) Bestimmung elektrische Modultemperatur;
*PARAMETER par_T_SS_PV_module_avg(set_tech_SS_PV) Bestimmung Durchschnitt elektrische Modultemperatur;
PARAMETER par_T_SS_PV_module(set_ii,set_tech_SS_PV) Modultemperatur;
PARAMETER par_k_SS_PV(set_ii) Wärmeübertragungskoeffizient;
PARAMETER par_T_ES_effective(set_tech_SS_PV) Effektive Temperatur;

Scalar sca_BolzmannConst Stefan Bolzmannkonstante;
sca_BolzmannConst
=5.67*10**(-8);

par_k_SS_PV(set_ii)
=5.7+3.8*par_V_ES(set_ii);

par_T_ES_effective(set_tech_SS_PV)
=((273.15+par_T_SS_PV_module_avg(set_tech_SS_PV))+(sum(set_ii,(273.15+par_T_ES(set_ii)))/sca_optsteps))*((273.15+par_T_SS_PV_module_avg(set_tech_SS_PV))**2+(sum(set_ii,(273.15+par_T_ES(set_ii)))/sca_optsteps)**2);

par_T_SS_PV_module(set_ii,set_tech_SS_PV)
=(par_I_ES(set_ii)*par_Eta_SS_PV_optic(set_tech_SS_PV)
+ par_k_SS_PV(set_ii)*(273.15+par_T_ES(set_ii))
+ sca_BolzmannConst*par_Emiss_SS_PV(set_tech_SS_PV)*par_T_ES_effective(set_tech_SS_PV)*(par_T_ES(set_ii)+273.15)
- par_I_ES(set_ii)*par_Eta_SS_PV_module(set_tech_SS_PV)
+ par_I_ES(set_ii)*par_Eta_SS_PV_module(set_tech_SS_PV)*par_TC_SS_PV(set_tech_SS_PV)*298.15)
/(par_k_SS_PV(set_ii)+sca_BolzmannConst*par_Emiss_SS_PV(set_tech_SS_PV)*par_T_ES_effective(set_tech_SS_PV)
+par_I_ES(set_ii)*par_Eta_SS_PV_module(set_tech_SS_PV)*par_TC_SS_PV(set_tech_SS_PV));

*Vergleichswert bei fehlender Abregelung
PARAMETER par_E_SS_PV_max(set_ii,set_tech_SS_PV) Maximal mögliche Energierzeugung Photovoltaikanlage;
par_E_SS_PV_max(set_ii,set_tech_SS_PV)$(par_X_pss_model(set_tech_SS_PV) eq 1)=0;
par_E_SS_PV_max(set_ii,set_tech_SS_PV)
=min(par_P_SS_PV_max(set_tech_SS_PV) * sca_delta_ii * par_H_pss_techavail(set_ii,set_tech_SS_PV),
(par_I_ES(set_ii) * par_A_SS_PV(set_tech_SS_PV)* par_Eta_SS_PV_euro(set_tech_SS_PV)
 *(1+par_TC_SS_PV(set_tech_SS_PV)*(par_T_SS_PV_module(set_ii,set_tech_SS_PV)-298))
 * par_Eta_SS_PV_module(set_tech_SS_PV) * par_Eta_SS_PV_general(set_tech_SS_PV)
 * 10**(-6) * sca_delta_ii)*par_H_pss_techavail(set_ii,set_tech_SS_PV));

***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
*Formel Energieerzeugung mit Möglichkeit der Abregelung
EQUATIONS EqPV1_SS(set_ii,set_pss) Restriktion Energieerzeugung Photovoltaikanlage;
EqPV1_SS(set_t,set_tech_SS_PV)$(set_pss_opt(set_tech_SS_PV) AND par_X_pss_model(set_tech_SS_PV) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_PV,set_toPss)$set_energyLink_opt('E',set_tech_SS_PV,set_toPss))
                 =l=
                 (par_I_ES(set_t) * par_A_SS_PV(set_tech_SS_PV)* par_Eta_SS_PV_euro(set_tech_SS_PV)
                 * (1+par_TC_SS_PV(set_tech_SS_PV)*(par_T_SS_PV_module(set_t,set_tech_SS_PV)-298))
                 * par_Eta_SS_PV_module(set_tech_SS_PV) * par_Eta_SS_PV_general(set_tech_SS_PV)
                 * 10**(-6) * sca_delta_ii)*var_S_pss(set_t,set_tech_SS_PV);

*Maximale Leistungsbeschränkung
EQUATIONS EqPV2_SS(set_ii,set_pss) Restriktion Energieerzeugung Photovoltaikanlage;
EqPV2_SS(set_t,set_tech_SS_PV)$(set_pss_opt(set_tech_SS_PV) AND par_X_pss_model(set_tech_SS_PV) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_PV,set_toPss)$set_energyLink_opt('E',set_tech_SS_PV,set_toPss))
                 =l=
                 par_P_SS_PV_max(set_tech_SS_PV) * sca_delta_ii * var_S_pss(set_t,set_tech_SS_PV);

*Negative Regelenergie durch Abregelung der maximalen Leistung
EQUATIONS EqPV3_SS(set_ii,set_pss) Restriktion negative Regelenergie Photovoltaikanlage;
EqPV3_SS(set_t,set_tech_SS_PV)$(set_pss_opt(set_tech_SS_PV) AND par_X_pss_model(set_tech_SS_PV) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_t,'NR',set_tech_SS_PV,set_toPss)$set_energyLink_opt('NR',set_tech_SS_PV,set_toPss))
                 =l=
                 par_E_SS_PV_max(set_t,set_tech_SS_PV) - sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_PV,set_toPss)$set_energyLink_opt('E',set_tech_SS_PV,set_toPss));

*Verfügbarkeit
Equation EqPV4_SS(set_ii_0,set_pss) Verfügbarkeit;
EqPV4_SS(set_t,set_tech_SS_PV)$(set_pss_opt(set_tech_SS_PV) AND par_X_pss_model(set_tech_SS_PV) eq 1)..
                  var_S_pss(set_t,set_tech_SS_PV)
                  =l=
                  par_H_pss_techavail(set_t,set_tech_SS_PV);


MODEL mod_tech_SS_PV_orga / EqPV1_SS, EqPV2_SS, EqPV3_SS, EqPV4_SS /;
MODEL mod_tech_SS_PV_cust / EqPV1_SS, EqPV2_SS, EqPV3_SS, EqPV4_SS /;
