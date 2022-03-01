***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------

EQUATIONS EqST1(set_ii,set_pss) Restriktion Energieerzeugung Solarthermieanlage;
EqST1(set_t,set_tech_DES_ST)$(set_pss_opt(set_tech_DES_ST) AND par_X_pss_model(set_tech_DES_ST)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'W',set_tech_DES_ST,set_toPss)$set_energyLink_opt('W',set_tech_DES_ST,set_toPss))
                 =l=
                 par_I_ES(set_t) * par_A_DES_ST(set_tech_DES_ST) * par_Eta_DES_ST(set_tech_DES_ST) * 10**(-6) * sca_delta_ii;

EQUATIONS EqST2(set_ii,set_fromPss,set_toPss,set_side) Restriktion Eigenverbrauch Solarthermieanlage zur korrektur von Mittelungseffekten;
EqST2(set_t,set_tech_DES_ST,set_load_DS_W,set_side)$(set_pss_opt(set_tech_DES_ST) AND par_X_pss_model(set_tech_DES_ST)=1 and
                                                     set_pssOH(set_side,set_tech_DES_ST) and
                                                     set_pssOH(set_side,set_load_DS_W) and
                                                     set_energyLink('E',set_tech_DES_ST,set_load_DS_W) and
                                                     par_X_DS_W_self(set_load_DS_W)=1)..
                 var_energyFlow(set_t,'W',set_tech_DES_ST,set_load_DS_W)$set_energyLink_opt('W',set_tech_DES_ST,set_load_DS_W)
                 =l=
                 par_L_DS_W_self(set_t,set_load_DS_W);


MODEL mod_tech_DES_ST_orga / EqST1, EqST2 /;
MODEL mod_tech_DES_ST_cust / EqST1, EqST2 /;

*Vergleichswert bei fehlender Abregelung
PARAMETER par_W_DES_ST_max(set_ii,set_tech_DES_ST) Maximal mögliche Energierzeugung Solarthermieanlage zum Vergleich hinsichtlich Abregelung;
par_W_DES_ST_max(set_ii,set_tech_DES_ST)
=par_I_ES(set_ii) * par_A_DES_ST(set_tech_DES_ST) * par_Eta_DES_ST(set_tech_DES_ST) * 10**(-6) * sca_delta_ii;
