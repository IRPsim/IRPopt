*Tarifzuordnung
*Verg�tung bei Direktvermarktung zur Last ohne Mehrwertsteuer
par_energyLinkTarif(set_ii,set_side_fares,set_side,'E',set_tech_DES_PV,set_load_DS_E)$
(set_pssOH(set_side,set_tech_DES_PV)
and par_X_BM_PVdirect_DS_E(set_load_DS_E)=1
and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1
and sca_X_MS_DE_country=1)
=par_F_E_BM_PVdirect_energyinfeed(set_ii,set_side_fares,set_tech_DES_PV);


*Verg�tung bei Direktvermarktung zur Last ohne Mehrwertsteuer
par_energyLinkTarif(set_ii,'NS',set_side,'E',set_tech_DES_PV,set_load_DS_E)$
(set_pssOH(set_side,set_tech_DES_PV)
and par_X_BM_PVdirect_DS_E(set_load_DS_E)=1
and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1
and sca_X_MS_DE_country=1
and sca_X_RegDirekt=1)
=par_F_E_BM_PVdirect_energyinfeed(set_ii,'NS',set_tech_DES_PV)*0.025;


*Verg�tung bei Direktvermarktung zur Last mit Mehrwertsteuer aus Kundensicht
par_energyLinkTarif(set_ii,set_side_cust,'PS','E',set_tech_DES_PV,set_load_DS_E)$
(set_pssOH(set_side_cust,set_tech_DES_PV)
and par_X_BM_PVdirect_DS_E(set_load_DS_E)=1
and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1
and par_X_DS_business(set_side_cust)=1
and sca_X_MS_DE_country=1)
=sum(set_side_fares,par_energyLinkTarif(set_ii,set_side_fares,set_side_cust,'E',set_tech_DES_PV,set_load_DS_E))*sca_Tax_PS_vat;

*Verg�tung zur W�rmepumpe bei Direktvermarktung ohne Mehrwertsteuer
par_energyLinkTarif(set_ii,set_side_fares,set_side,'E',set_tech_DES_PV,set_tech_DES_HP)$
(set_pssOH(set_side,set_tech_DES_PV)
and par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)=1
and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1
and sca_X_MS_DE_country=1)
=par_F_E_BM_PVdirect_energyinfeed(set_ii,set_side_fares,set_tech_DES_PV);

*Verg�tung bei Direktvermarktung zur W�rmepumpe mit Mehrwertsteuer aus Kundensicht
par_energyLinkTarif(set_ii,set_side_cust,'PS','E',set_tech_DES_PV,set_tech_DES_HP)$
(set_pssOH(set_side_cust,set_tech_DES_PV)
and par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)=1
and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1
and par_X_DS_business(set_side_cust)=1
and sca_X_MS_DE_country=1)
=sum(set_side_fares,par_energyLinkTarif(set_ii,set_side_fares,set_side_cust,'E',set_tech_DES_PV,set_tech_DES_HP))*sca_Tax_PS_vat;

*Verg�tung bei Netzeinspeisung ohne Mehrwertsteuer
par_energyLinkTarif(set_ii,set_side_fares,set_side,'E',set_tech_DES_PV,'EGrid')$
(set_pssOH(set_side,set_tech_DES_PV)
and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1
and sca_X_MS_DE_country=1)
=par_F_E_EGrid_energyinfeed(set_ii,set_side_fares,set_tech_DES_PV);

*Verg�tung bei Netzeinspeisung mit Mehrwertsteuer aus Kundensicht
par_energyLinkTarif(set_ii,set_side_cust,'PS','E',set_tech_DES_PV,'EGrid')$
(set_pssOH(set_side_cust,set_tech_DES_PV)
and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1
and par_X_DS_business(set_side_cust)=1
and sca_X_MS_DE_country=1)
=sum(set_side_fares,par_energyLinkTarif(set_ii,set_side_fares,set_side_cust,'E',set_tech_DES_PV,'EGrid'))*sca_Tax_PS_vat;

*Geb�hr f�r direktvermarkteten Strom zur Stromlast mit Mehrwertsteuer
par_energyLinkTarif(set_ii,set_side_cust,set_side_fares,'E',set_tech_DES_PV,set_load_DS_E)$
(set_pssOH(set_side_cust,set_load_DS_E)
and par_X_BM_PVdirect_DS_E(set_load_DS_E)=1
and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1
and sca_X_MS_DE_country=1)
= par_F_E_BM_PVdirect_energy(set_ii,set_side_fares,set_load_DS_E)
+(sca_Tax_PS_vat*(par_F_E_BM_PVdirect_energy(set_ii,'NS',set_load_DS_E)+par_F_E_BM_PVdirect_energy(set_ii,'SMS',set_load_DS_E)+par_F_E_BM_PVdirect_energy(set_ii,'PS',set_load_DS_E)))$(set_side_fares_taxes(set_side_fares));

par_energyLinkTarif(set_ii,set_side_cust,'PS','E',set_tech_DES_PV,set_load_DS_E)$
(set_pssOH(set_side_cust,set_load_DS_E)
and par_X_BM_PVdirect_DS_E(set_load_DS_E)=1
and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1
and sca_X_MS_DE_country=1)
= 0;

*Geb�hr f�r direktvermarkteten Strom zur W�rmepumpenlast mit Mehrwertsteuer
par_energyLinkTarif(set_ii,set_side_cust,set_side_fares,'E',set_tech_DES_PV,set_tech_DES_HP)$
(set_pssOH(set_side_cust,set_tech_DES_HP)
and par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)=1
and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1
and sca_X_MS_DE_country=1)
= par_F_E_BM_PVdirect_energy(set_ii,set_side_fares,set_tech_DES_HP)
+(sca_Tax_PS_vat*(par_F_E_BM_PVdirect_energy(set_ii,'NS',set_tech_DES_HP)+par_F_E_BM_PVdirect_energy(set_ii,'SMS',set_tech_DES_HP)+par_F_E_BM_PVdirect_energy(set_ii,'PS',set_tech_DES_HP)))$(set_side_fares_taxes(set_side_fares));

*Leistungsmessung
set_powerLink(set_power_E,'Pos','E',set_tech_DES_PV,set_load_DS_E)$
(par_X_BM_PVdirect_DS_E(set_load_DS_E)=1
and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1
and set_powerLink(set_power_E,'Pos','E','EGrid',set_load_DS_E)
and sca_X_MS_DE_country=1)
=yes;

set_powerLink(set_power_E,'Pos','E',set_tech_DES_PV,set_tech_DES_HP)$
(par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)=1
and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1
and set_powerLink(set_power_E,'Pos','E','EGrid',set_tech_DES_HP)
and sca_X_MS_DE_country=1)
=yes;








*Tarifzuordnung
*Verg�tung bei Direktvermarktung zur Last ohne Mehrwertsteuer
par_energyLinkTarif(set_ii,set_side_fares,set_side,'E',set_tech_DES_PV,set_load_DS_E)$
(set_pssOH(set_side,set_tech_DES_PV)
and par_X_BM_PVdirect_DS_E(set_load_DS_E)=1
and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1
and sca_X_MS_DE_country=1)
=par_F_E_BM_PVdirect_energyinfeed(set_ii,set_side_fares,set_tech_DES_PV);


*Verg�tung bei Direktvermarktung zur Last ohne Mehrwertsteuer
par_energyLinkTarif(set_ii,'NS',set_side,'E',set_tech_DES_PV,set_load_DS_E)$
(set_pssOH(set_side,set_tech_DES_PV)
and par_X_BM_PVdirect_DS_E(set_load_DS_E)=1
and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1
and sca_X_MS_DE_country=1
and sca_X_RegDirekt=1)
=par_F_E_BM_PVdirect_energyinfeed(set_ii,'NS',set_tech_DES_PV)*0.025;


*Verg�tung bei Direktvermarktung zur Last mit Mehrwertsteuer aus Kundensicht
par_energyLinkTarif(set_ii,set_side_cust,'PS','E',set_tech_DES_CHP,set_load_DS_E)$
(set_pssOH(set_side_cust,set_tech_DES_CHP)
and par_X_BM_PVdirect_DS_E(set_load_DS_E)=1
and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1
and par_X_DS_business(set_side_cust)=1
and sca_X_MS_DE_country=1)
=sum(set_side_fares,par_energyLinkTarif(set_ii,set_side_fares,set_side_cust,'E',set_tech_DES_CHP,set_load_DS_E))*sca_Tax_PS_vat;

*Verg�tung zur W�rmepumpe bei Direktvermarktung ohne Mehrwertsteuer
par_energyLinkTarif(set_ii,set_side_fares,set_side,'E',set_tech_DES_CHP,set_tech_DES_HP)$
(set_pssOH(set_side,set_tech_DES_CHP)
and par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)=1
and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1
and sca_X_MS_DE_country=1)
=par_F_E_BM_PVdirect_energyinfeed(set_ii,set_side_fares,set_tech_DES_CHP);

*Verg�tung bei Direktvermarktung zur W�rmepumpe mit Mehrwertsteuer aus Kundensicht
par_energyLinkTarif(set_ii,set_side_cust,'PS','E',set_tech_DES_CHP,set_tech_DES_HP)$
(set_pssOH(set_side_cust,set_tech_DES_CHP)
and par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)=1
and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1
and par_X_DS_business(set_side_cust)=1
and sca_X_MS_DE_country=1)
=sum(set_side_fares,par_energyLinkTarif(set_ii,set_side_fares,set_side_cust,'E',set_tech_DES_CHP,set_tech_DES_HP))*sca_Tax_PS_vat;

*Verg�tung bei Netzeinspeisung ohne Mehrwertsteuer
par_energyLinkTarif(set_ii,set_side_fares,set_side,'E',set_tech_DES_CHP,'EGrid')$
(set_pssOH(set_side,set_tech_DES_CHP)
and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1
and sca_X_MS_DE_country=1)
=par_F_E_EGrid_energyinfeed(set_ii,set_side_fares,set_tech_DES_CHP);

*Verg�tung bei Netzeinspeisung mit Mehrwertsteuer aus Kundensicht
par_energyLinkTarif(set_ii,set_side_cust,'PS','E',set_tech_DES_CHP,'EGrid')$
(set_pssOH(set_side_cust,set_tech_DES_CHP)
and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1
and par_X_DS_business(set_side_cust)=1
and sca_X_MS_DE_country=1)
=sum(set_side_fares,par_energyLinkTarif(set_ii,set_side_fares,set_side_cust,'E',set_tech_DES_CHP,'EGrid'))*sca_Tax_PS_vat;

*Geb�hr f�r direktvermarkteten Strom zur Stromlast mit Mehrwertsteuer
par_energyLinkTarif(set_ii,set_side_cust,set_side_fares,'E',set_tech_DES_CHP,set_load_DS_E)$
(set_pssOH(set_side_cust,set_load_DS_E)
and par_X_BM_PVdirect_DS_E(set_load_DS_E)=1
and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1
and sca_X_MS_DE_country=1)
= par_F_E_BM_PVdirect_energy(set_ii,set_side_fares,set_load_DS_E)
+(sca_Tax_PS_vat*(par_F_E_BM_PVdirect_energy(set_ii,'NS',set_load_DS_E)+par_F_E_BM_PVdirect_energy(set_ii,'SMS',set_load_DS_E)+par_F_E_BM_PVdirect_energy(set_ii,'PS',set_load_DS_E)))$(set_side_fares_taxes(set_side_fares));

par_energyLinkTarif(set_ii,set_side_cust,'PS','E',set_tech_DES_CHP,set_load_DS_E)$
(set_pssOH(set_side_cust,set_load_DS_E)
and par_X_BM_PVdirect_DS_E(set_load_DS_E)=1
and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1
and sca_X_MS_DE_country=1)
= 0;

*Geb�hr f�r direktvermarkteten Strom zur W�rmepumpenlast mit Mehrwertsteuer
par_energyLinkTarif(set_ii,set_side_cust,set_side_fares,'E',set_tech_DES_CHP,set_tech_DES_HP)$
(set_pssOH(set_side_cust,set_tech_DES_HP)
and par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)=1
and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1
and sca_X_MS_DE_country=1)
= par_F_E_BM_PVdirect_energy(set_ii,set_side_fares,set_tech_DES_HP)
+(sca_Tax_PS_vat*(par_F_E_BM_PVdirect_energy(set_ii,'NS',set_tech_DES_HP)+par_F_E_BM_PVdirect_energy(set_ii,'SMS',set_tech_DES_HP)+par_F_E_BM_PVdirect_energy(set_ii,'PS',set_tech_DES_HP)))$(set_side_fares_taxes(set_side_fares));

*Leistungsmessung
set_powerLink(set_power_E,'Pos','E',set_tech_DES_CHP,set_load_DS_E)$
(par_X_BM_PVdirect_DS_E(set_load_DS_E)=1
and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1
and set_powerLink(set_power_E,'Pos','E','EGrid',set_load_DS_E)
and sca_X_MS_DE_country=1)
=yes;

set_powerLink(set_power_E,'Pos','E',set_tech_DES_CHP,set_tech_DES_HP)$
(par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)=1
and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1
and set_powerLink(set_power_E,'Pos','E','EGrid',set_tech_DES_HP)
and sca_X_MS_DE_country=1)
=yes;
