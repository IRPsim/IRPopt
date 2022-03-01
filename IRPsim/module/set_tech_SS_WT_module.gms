***-----------------------------------------------------------------------------
***Parameter
***-----------------------------------------------------------------------------
PARAMETER par_V_SS_WT_hubheight(set_ii,set_tech_SS_WT) Windgeschwindigkeit in Nabenhöhe;
par_V_SS_WT_hubheight(set_ii,set_tech_SS_WT)$(par_X_pss_model(set_tech_SS_WT) eq 1)=par_V_ES(set_ii)*(log(par_Hub_SS_WT_height(set_tech_SS_WT)/sca_Z_ES_0)/log(sca_MH_ES_V/sca_Z_ES_0));
*sca_Z_ES_0,Offene See 0.0002,Wattgebiete 0.005,Flaches Gelände 0.03,Landwirtschaftliches Gelände 0.2,Parklandschaften 1,Innentstädte 2
par_V_SS_WT_hubheight(set_ii,set_tech_SS_WT)$(par_V_SS_WT_hubheight(set_ii,set_tech_SS_WT)=0)=0.0000001;

PARAMETER par_T_SS_WT_hubheight(set_ii,set_tech_SS_WT) Temperatur in Nabenhöhe;
par_T_SS_WT_hubheight(set_ii,set_tech_SS_WT)$(par_X_pss_model(set_tech_SS_WT) eq 1)=par_T_ES(set_ii)-0.0065*(par_Hub_SS_WT_height(set_tech_SS_WT)-sca_MH_ES_T);

PARAMETER par_EPF_ES(set_ii,set_tech_SS_WT) Energy Pattern Faktor;
par_EPF_ES(set_ii,set_tech_SS_WT)$(par_X_pss_model(set_tech_SS_WT) eq 1) =1+0.2794*(par_V_SS_WT_hubheight(set_ii,set_tech_SS_WT))**(-0.8674);

PARAMETER par_E_SS_WT_max(set_ii,set_tech_SS_WT) Maximal mögliche Energierzeugung Windturbine;
par_E_SS_WT_max(set_ii,set_tech_SS_WT)$(par_X_pss_model(set_tech_SS_WT) eq 1)=0;
par_E_SS_WT_max(set_ii,set_tech_SS_WT)$(par_X_pss_model(set_tech_SS_WT) eq 1 AND (par_V_SS_WT_hubheight(set_ii,set_tech_SS_WT) < par_V_SS_WT_up(set_tech_SS_WT)))
=0;
par_E_SS_WT_max(set_ii,set_tech_SS_WT)$(par_X_pss_model(set_tech_SS_WT) eq 1 AND (par_V_SS_WT_hubheight(set_ii,set_tech_SS_WT) >= par_V_SS_WT_up(set_tech_SS_WT)) AND (par_V_SS_WT_hubheight(set_ii,set_tech_SS_WT) < par_V_SS_WT_max(set_tech_SS_WT)))
=min(par_P_SS_WT_max(set_tech_SS_WT)*sca_delta_ii*par_H_pss_techavail(set_ii,set_tech_SS_WT),
(par_CP_SS_WT_max(set_tech_SS_WT)*1/2*par_Rho_SS_WT_height(set_tech_SS_WT)*(par_R_SS_WT_diameter(set_tech_SS_WT)/2)**2*3.14159265359*(par_V_SS_WT_hubheight(set_ii,set_tech_SS_WT))**3*par_Eta_SS_WT_generator(set_tech_SS_WT)*par_Eta_SS_WT_drivetrain(set_tech_SS_WT)*par_EPF_ES(set_ii,set_tech_SS_WT)*sca_delta_ii*10**(-6))*par_H_pss_techavail(set_ii,set_tech_SS_WT));
par_E_SS_WT_max(set_ii,set_tech_SS_WT)$(par_X_pss_model(set_tech_SS_WT) eq 1 AND (par_V_SS_WT_hubheight(set_ii,set_tech_SS_WT) >= par_V_SS_WT_max(set_tech_SS_WT)) AND (par_V_SS_WT_hubheight(set_ii,set_tech_SS_WT) < par_V_SS_WT_down(set_tech_SS_WT)))
=par_P_SS_WT_max(set_tech_SS_WT)*sca_delta_ii*par_H_pss_techavail(set_ii,set_tech_SS_WT);
par_E_SS_WT_max(set_ii,set_tech_SS_WT)$(par_X_pss_model(set_tech_SS_WT) eq 1 AND par_X_pss_model(set_tech_SS_WT) eq 1 AND (par_V_SS_WT_hubheight(set_ii,set_tech_SS_WT) >= par_V_SS_WT_down(set_tech_SS_WT)))
=0;
***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
EQUATIONS EqWT1_SS(set_ii,set_pss) Restriktion Energieerzeugung Windkraftanlage;
EqWT1_SS(set_t,set_tech_SS_WT)$(set_pss_opt(set_tech_SS_WT) AND par_X_pss_model(set_tech_SS_WT) eq 1 AND (par_V_SS_WT_hubheight(set_t,set_tech_SS_WT) < par_V_SS_WT_up(set_tech_SS_WT)))..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_WT,set_toPss)$set_energyLink_opt('E',set_tech_SS_WT,set_toPss))
                 =e=
                 0;

EQUATIONS EqWT2_SS(set_ii,set_pss) Restriktion Energieerzeugung Windkraftanlage;
EqWT2_SS(set_t,set_tech_SS_WT)$(set_pss_opt(set_tech_SS_WT) AND par_X_pss_model(set_tech_SS_WT) eq 1 AND (par_V_SS_WT_hubheight(set_t,set_tech_SS_WT) >= par_V_SS_WT_up(set_tech_SS_WT)) AND (par_V_SS_WT_hubheight(set_t,set_tech_SS_WT) < par_V_SS_WT_max(set_tech_SS_WT)))..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_WT,set_toPss)$set_energyLink_opt('E',set_tech_SS_WT,set_toPss))
                 =l=
                 (par_CP_SS_WT_max(set_tech_SS_WT)*1/2*par_Rho_SS_WT_height(set_tech_SS_WT)*(par_R_SS_WT_diameter(set_tech_SS_WT)/2)**2*3.14159265359*(par_V_SS_WT_hubheight(set_t,set_tech_SS_WT))**3*par_Eta_SS_WT_generator(set_tech_SS_WT)*par_Eta_SS_WT_drivetrain(set_tech_SS_WT)*par_EPF_ES(set_t,set_tech_SS_WT)*sca_delta_ii*10**(-6))*var_S_pss(set_t,set_tech_SS_WT);


EQUATIONS EqWT3_SS(set_ii,set_pss) Restriktion Energieerzeugung Windkraftanlage;
EqWT3_SS(set_t,set_tech_SS_WT)$(set_pss_opt(set_tech_SS_WT) AND par_X_pss_model(set_tech_SS_WT) eq 1 AND (par_V_SS_WT_hubheight(set_t,set_tech_SS_WT) >= par_V_SS_WT_max(set_tech_SS_WT)) AND (par_V_SS_WT_hubheight(set_t,set_tech_SS_WT) < par_V_SS_WT_down(set_tech_SS_WT)))..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_WT,set_toPss)$set_energyLink_opt('E',set_tech_SS_WT,set_toPss))
                 =l=
                 par_P_SS_WT_max(set_tech_SS_WT) * sca_delta_ii * var_S_pss(set_t,set_tech_SS_WT);

EQUATIONS EqWT4_SS(set_ii,set_pss) Restriktion Energieerzeugung Windkraftanlage;
EqWT4_SS(set_t,set_tech_SS_WT)$(set_pss_opt(set_tech_SS_WT) AND par_X_pss_model(set_tech_SS_WT) eq 1 AND (par_V_SS_WT_hubheight(set_t,set_tech_SS_WT) >= par_V_SS_WT_down(set_tech_SS_WT)))..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_WT,set_toPss)$set_energyLink_opt('E',set_tech_SS_WT,set_toPss))
                 =e=
                 0;

EQUATIONS EqWT5_SS(set_ii,set_pss) Restriktion Energieerzeugung Windkraftanlage;
EqWT5_SS(set_t,set_tech_SS_WT)$(set_pss_opt(set_tech_SS_WT) AND par_X_pss_model(set_tech_SS_WT) eq 1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_WT,set_toPss)$set_energyLink_opt('E',set_tech_SS_WT,set_toPss))
                 =l=
                 par_P_SS_WT_max(set_tech_SS_WT) * sca_delta_ii * var_S_pss(set_t,set_tech_SS_WT) ;


EQUATIONS EqWT6_SS(set_ii,set_pss) Restriktion negative Regelenergie Windkraftanlage;
EqWT6_SS(set_t,set_tech_SS_WT)$(set_pss_opt(set_tech_SS_WT) AND par_X_pss_model(set_tech_SS_WT) eq 1)..
                 SUM(set_toPss,var_energyFlow(set_t,'NR',set_tech_SS_WT,set_toPss)$set_energyLink_opt('NR',set_tech_SS_WT,set_toPss))
                 =l=
                 par_E_SS_WT_max(set_t,set_tech_SS_WT)-sum(set_toPss,var_energyFlow(set_t,'E',set_tech_SS_WT,set_toPss)$set_energyLink_opt('E',set_tech_SS_WT,set_toPss));

*Verfügbarkeit
Equation EqWT7_SS(set_ii_0,set_pss) Verfügbarkeit;
EqWT7_SS(set_t,set_tech_SS_WT)$(set_pss_opt(set_tech_SS_WT) AND par_X_pss_model(set_tech_SS_WT) eq 1)..
                  var_S_pss(set_t,set_tech_SS_WT)
                  =l=
                  par_H_pss_techavail(set_t,set_tech_SS_WT);

MODEL mod_tech_SS_WT_orga / EqWT1_SS, EqWT2_SS, EqWT3_SS, EqWT4_SS, EqWT5_SS, EqWT6_SS, EqWT7_SS /;
MODEL mod_tech_SS_WT_cust / EqWT1_SS, EqWT2_SS, EqWT3_SS, EqWT4_SS, EqWT5_SS, EqWT6_SS, EqWT7_SS /;

