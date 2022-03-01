***-----------------------------------------------------------------------------
***Parameter
***-----------------------------------------------------------------------------
*Vergleichswert bei fehlender Abregelung
PARAMETER par_E_DES_PV_max(set_ii,set_tech_DES_PV) Maximal mögliche Energierzeugung Photovoltaikanlage zum Vergleich hinsichtlich Abregelung;
par_E_DES_PV_max(set_ii,set_tech_DES_PV)
=par_I_ES(set_ii) * par_A_DES_PV(set_tech_DES_PV) * par_Eta_DES_PV(set_tech_DES_PV) * 10**(-6) * sca_delta_ii;

***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
EQUATIONS EqPV1(set_ii,set_pss) Restriktion Energieerzeugung Photovoltaikanlage;
EqPV1(set_t,set_tech_DES_PV)$(set_pss_opt(set_tech_DES_PV) AND par_X_pss_model(set_tech_DES_PV)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss))
                 =l=
                 par_I_ES(set_t) * par_A_DES_PV(set_tech_DES_PV) * par_Eta_DES_PV(set_tech_DES_PV) * 10**(-6) * sca_delta_ii;

EQUATIONS EqPV2(set_ii,set_fromPss,set_toPss,set_side) Restriktion Eigenverbrauch Photovoltaikanlage zur korrektur von Mittelungseffekten;
EqPV2(set_t,set_tech_DES_PV,set_load_DS_E,set_side)$(set_pss_opt(set_tech_DES_PV) AND par_X_pss_model(set_tech_DES_PV)=1 AND
                                                     set_pssOH(set_side,set_tech_DES_PV) and
                                                     set_pssOH(set_side,set_load_DS_E) and
                                                     set_energyLink('E',set_tech_DES_PV,set_load_DS_E) and
                                                     par_X_DS_E_self(set_load_DS_E)=1 and not
                                                     par_X_BM_NaS_DES_PV(set_tech_DES_PV)=1)..
                 var_energyFlow(set_t,'E',set_tech_DES_PV,set_load_DS_E)$set_energyLink_opt('E',set_tech_DES_PV,set_load_DS_E)
                 =l=
                 par_L_DS_E_self(set_t,set_load_DS_E);

*Negative Regelenergie durch Abregelung der maximalen Leistung
EQUATIONS EqPV3(set_ii,set_pss) Restriktion negative Regelenergie Photovoltaikanlage;
EqPV3(set_t,set_tech_DES_PV)$(set_pss_opt(set_tech_DES_PV) AND par_X_pss_model(set_tech_DES_PV)=1)..
                 SUM(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_PV,set_toPss)$set_energyLink_opt('NR',set_tech_DES_PV,set_toPss))
                 =l=
                 par_E_DES_PV_max(set_t,set_tech_DES_PV) - sum(set_toPss,var_energyFlow(set_t,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss));



MODEL mod_tech_DES_PV_orga / EqPV1, EqPV2, EqPV3 /;
MODEL mod_tech_DES_PV_cust / EqPV1, EqPV2, EqPV3 /;

