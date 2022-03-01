*-------------------------------------------------------------------------------
* Tarifüberschreibungen Direktvermarktung
*-------------------------------------------------------------------------------
*Tarifzuordnung
*Vergütung bei Direktvermarktung zur Last ohne Mehrwertsteuer
$ontext
par_energyLinkTarif(set_ii,'NS',set_side,'E',set_tech_DES_PV,set_load_DS_E)$
(set_pssOH(set_side,set_tech_DES_PV)
and par_X_BM_PVdirect_DS_E(set_load_DS_E)=1
and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1
and sca_X_MS_DE_country=1
and sca_X_RegDirekt=1)
=0;

*Vergütung bei Direktvermarktung zur Last mit Mehrwertsteuer aus Kundensicht
par_energyLinkTarif(set_ii,set_side_cust,'PS','E',set_tech_DES_PV,set_load_DS_E)$
(set_pssOH(set_side_cust,set_tech_DES_PV)
and par_X_BM_PVdirect_DS_E(set_load_DS_E)=1
and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1
and par_X_DS_business(set_side_cust)=1
and sca_X_MS_DE_country=1
and sca_X_RegDirekt=1)
=(par_energyLinkTarif(set_ii,'SMS',set_side_cust,'E',set_tech_DES_PV,set_load_DS_E) + par_energyLinkTarif(set_ii,'PS',set_side_cust,'E',set_tech_DES_PV,set_load_DS_E))*sca_Tax_PS_vat;
$offtext

par_energyLinkTarif(set_ii,set_side_cust,set_side_fares,'E',set_tech_DES_PV,set_load_DS_E)$
(set_pssOH(set_side_cust,set_load_DS_E)
and par_X_BM_PVdirect_DS_E(set_load_DS_E)=1
and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1
and sca_X_MS_DE_country=1)
= par_F_E_BM_PVdirect_energy(set_ii,set_side_fares,set_load_DS_E)
+(sca_Tax_PS_vat*(par_F_E_BM_PVdirect_energy(set_ii,'NS',set_load_DS_E)+par_F_E_BM_PVdirect_energy(set_ii,'SMS',set_load_DS_E)+par_F_E_BM_PVdirect_energy(set_ii,'PS',set_load_DS_E)))$(set_side_fares_taxes(set_side_fares));

*neu
par_energyLinkTarif(set_ii,set_side_cust,set_side_fares,'E',set_tech_DES_CHP,set_load_DS_E)$
(set_pssOH(set_side_cust,set_load_DS_E)
and par_X_BM_PVdirect_DS_E(set_load_DS_E)=1
and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1
and sca_X_MS_DE_country=1)
= par_F_E_BM_PVdirect_energy(set_ii,set_side_fares,set_load_DS_E)
+(sca_Tax_PS_vat*(par_F_E_BM_PVdirect_energy(set_ii,'NS',set_load_DS_E)+par_F_E_BM_PVdirect_energy(set_ii,'SMS',set_load_DS_E)+par_F_E_BM_PVdirect_energy(set_ii,'PS',set_load_DS_E)))$(set_side_fares_taxes(set_side_fares));
