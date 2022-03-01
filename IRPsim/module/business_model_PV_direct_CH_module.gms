set_pss_BM(set_tech_DES_PV)$(par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1)=YES;
set_pss_BM(set_tech_DES_HP)$(par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)=1)=YES;
set_pss_BM(set_load_DS_E)$(par_X_BM_PVdirect_DS_E(set_load_DS_E)=1)=YES;

*Interne Validierungsregel
par_X_BM_PVdirect_DS_E(set_load_DS_E)$
(sum(set_side_cust$set_pssOH(set_side_cust,set_load_DS_E),
sum(set_tech_DES_PV$set_pssOH(set_side_cust,set_tech_DES_PV),par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)))=1)
=0;

*Erzeuge energyLinks
set_energyLink('E',set_tech_DES_PV,set_load_DS_E)$(par_X_BM_PVdirect_DS_E(set_load_DS_E)=1 and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1)=yes;
set_energyLink('E',set_tech_DES_PV,set_tech_DES_HP)$(par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)=1 and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1)=yes;

*neu
set_energyLink('E',set_tech_DES_CHP,set_load_DS_E)$(par_X_BM_PVdirect_DS_E(set_load_DS_E)=1 and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1)=yes;

*Geschäftsmodellspezifische Optimierungshoheiten
set_energyLinkOH(set_side,'E',set_tech_DES_PV,set_load_DS_E)$
         (par_X_BM_PVdirect_DS_E(set_load_DS_E)=1 and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1 and
         (set_pssOH(set_side,set_tech_DES_PV) or set_pssOH(set_side,set_load_DS_E)))=yes;
set_energyLinkOH(set_side,'E',set_tech_DES_PV,set_tech_DES_HP)$
         (par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)=1 and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1 and
         (set_pssOH(set_side,set_tech_DES_PV) or set_pssOH(set_side,set_tech_DES_HP)))=yes;

*neu
set_energyLinkOH(set_side,'E',set_tech_DES_CHP,set_load_DS_E)$
         (par_X_BM_PVdirect_DS_E(set_load_DS_E)=1 and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1 and
         (set_pssOH(set_side,set_tech_DES_CHP) or set_pssOH(set_side,set_load_DS_E)))=yes;

*Tarifzuordnung
par_energyLinkTarif(set_ii,set_side_fares,set_side,'E',set_tech_DES_PV,set_load_DS_E)$
(set_pssOH(set_side,set_tech_DES_PV) and par_X_BM_PVdirect_DS_E(set_load_DS_E)=1 and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1)
=par_F_E_BM_PVdirect_energyinfeed(set_ii,set_side_fares,set_tech_DES_PV);
par_energyLinkTarif(set_ii,set_side_fares,set_side,'E',set_tech_DES_PV,set_tech_DES_HP)$
(set_pssOH(set_side,set_tech_DES_PV) and par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)=1 and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1)
=par_F_E_BM_PVdirect_energyinfeed(set_ii,set_side_fares,set_tech_DES_PV);

par_energyLinkTarif(set_ii,'SMS',set_side,'E',set_tech_DES_PV,'EGrid')$
(set_pssOH(set_side,set_tech_DES_PV) and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1)
= par_F_E_EGrid_energyinfeed(set_ii,'SMS',set_tech_DES_PV)+par_F_E_EGrid_energyinfeed(set_ii,'PS',set_tech_DES_PV);
par_energyLinkTarif(set_ii,'PS',set_side,'E',set_tech_DES_PV,'EGrid')$
(set_pssOH(set_side,set_tech_DES_PV)  and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1)
= 0;

par_energyLinkTarif(set_ii,set_side,set_side_fares,'E',set_tech_DES_PV,set_load_DS_E)$
(set_pssOH(set_side,set_load_DS_E) and par_X_BM_PVdirect_DS_E(set_load_DS_E)=1 and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1)
= par_F_E_BM_PVdirect_energy(set_ii,set_side_fares,set_load_DS_E)
+(sca_Tax_PS_vat*(par_F_E_BM_PVdirect_energy(set_ii,'NS',set_load_DS_E)+par_F_E_BM_PVdirect_energy(set_ii,'SMS',set_load_DS_E)))$(set_side_fares_taxes(set_side_fares));

par_energyLinkTarif(set_ii,set_side,set_side_fares,'E',set_tech_DES_PV,set_tech_DES_HP)$
(set_pssOH(set_side,set_tech_DES_HP) and par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)=1 and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1)
= par_F_E_BM_PVdirect_energy(set_ii,set_side_fares,set_tech_DES_HP)
+(sca_Tax_PS_vat*(par_F_E_BM_PVdirect_energy(set_ii,'NS',set_tech_DES_HP)+par_F_E_BM_PVdirect_energy(set_ii,'SMS',set_tech_DES_HP)))$(set_side_fares_taxes(set_side_fares));

par_energyLinkTarif(set_ii,'SMS','PS','E',set_tech_DES_PV,'EGrid')$(set_energyLink('E',set_tech_DES_PV,'EGrid')
and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1)
= 0;

*neu KWK
par_energyLinkTarif(set_ii,set_side_fares,set_side,'E',set_tech_DES_CHP,set_load_DS_E)$
(set_pssOH(set_side,set_tech_DES_CHP) and par_X_BM_PVdirect_DS_E(set_load_DS_E)=1 and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1)
=par_F_E_BM_PVdirect_energyinfeed(set_ii,set_side_fares,set_tech_DES_CHP);
par_energyLinkTarif(set_ii,set_side_fares,set_side,'E',set_tech_DES_CHP,set_tech_DES_HP)$
(set_pssOH(set_side,set_tech_DES_CHP) and par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)=1 and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1)
=par_F_E_BM_PVdirect_energyinfeed(set_ii,set_side_fares,set_tech_DES_CHP);

par_energyLinkTarif(set_ii,'SMS',set_side,'E',set_tech_DES_CHP,'EGrid')$
(set_pssOH(set_side,set_tech_DES_CHP) and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1)
= par_F_E_EGrid_energyinfeed(set_ii,'SMS',set_tech_DES_CHP)+par_F_E_EGrid_energyinfeed(set_ii,'PS',set_tech_DES_CHP);
par_energyLinkTarif(set_ii,'PS',set_side,'E',set_tech_DES_CHP,'EGrid')$
(set_pssOH(set_side,set_tech_DES_CHP)  and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1)
= 0;

par_energyLinkTarif(set_ii,set_side,set_side_fares,'E',set_tech_DES_CHP,set_load_DS_E)$
(set_pssOH(set_side,set_load_DS_E) and par_X_BM_PVdirect_DS_E(set_load_DS_E)=1 and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1)
= par_F_E_BM_PVdirect_energy(set_ii,set_side_fares,set_load_DS_E)
+(sca_Tax_PS_vat*(par_F_E_BM_PVdirect_energy(set_ii,'NS',set_load_DS_E)+par_F_E_BM_PVdirect_energy(set_ii,'SMS',set_load_DS_E)))$(set_side_fares_taxes(set_side_fares));

par_energyLinkTarif(set_ii,set_side,set_side_fares,'E',set_tech_DES_CHP,set_tech_DES_HP)$
(set_pssOH(set_side,set_tech_DES_HP) and par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)=1 and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1)
= par_F_E_BM_PVdirect_energy(set_ii,set_side_fares,set_tech_DES_HP)
+(sca_Tax_PS_vat*(par_F_E_BM_PVdirect_energy(set_ii,'NS',set_tech_DES_HP)+par_F_E_BM_PVdirect_energy(set_ii,'SMS',set_tech_DES_HP)))$(set_side_fares_taxes(set_side_fares));

par_energyLinkTarif(set_ii,'SMS','PS','E',set_tech_DES_CHP,'EGrid')$(set_energyLink('E',set_tech_DES_CHP,'EGrid')
and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1)
= 0;


*Leistungsmessung
set_powerLink(set_power_E,'Pos','E',set_tech_DES_PV,set_load_DS_E)$
(par_X_BM_PVdirect_DS_E(set_load_DS_E)=1 and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1 and
set_powerLink(set_power_E,'Pos','E','EGrid',set_load_DS_E))
=yes;
set_powerLink(set_power_E,'Pos','E',set_tech_DES_PV,set_tech_DES_HP)$
(par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)=1 and par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)=1 and
set_powerLink(set_power_E,'Pos','E','EGrid',set_tech_DES_HP))
=yes;

*neu KWK
set_powerLink(set_power_E,'Pos','E',set_tech_DES_CHP,set_load_DS_E)$
(par_X_BM_PVdirect_DS_E(set_load_DS_E)=1 and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1 and
set_powerLink(set_power_E,'Pos','E','EGrid',set_load_DS_E))
=yes;
set_powerLink(set_power_E,'Pos','E',set_tech_DES_CHP,set_tech_DES_HP)$
(par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)=1 and par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)=1 and
set_powerLink(set_power_E,'Pos','E','EGrid',set_tech_DES_HP))
=yes;
