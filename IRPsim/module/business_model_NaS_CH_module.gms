set_pss_BM(set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1)=YES;
set_pss_BM(set_tech_DES_PV)$(par_X_BM_NaS_DES_PV(set_tech_DES_PV)=1)=YES;

scalar average_spot;
average_spot = sum(set_ii,par_C_MS_E(set_ii))/card(set_ii);

*Geschäftsmodellzuordnung
par_X_BM_indirectselfcons(set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1)=1;

*Interne Validierungsregel
par_X_BM_NaS_DES_PV(set_tech_DES_PV)$(sum(set_side_orga$set_pssOH(set_side_orga,set_tech_DES_PV),1)>0)=0;
set_energyLink('E',set_tech_DES_PV,'EGrid')$(par_X_BM_NaS_DES_PV(set_tech_DES_PV)=1)=no;


*Interne Grenzen
***Monatsweise PV Produktion und Last berechnen, wenn positiv, aufaddieren --> Initialwert
Parameter Delta_m_PV(set_ii_0);
Scalar par_SOC_DES_ES_NaS_initial;
par_SOC_DES_ES_NaS_initial=0;


Delta_m_PV(set_ii)
         =sum(set_tech_DES_PV$par_X_BM_NaS_DES_PV(set_tech_DES_PV),par_I_ES(set_ii) * par_A_DES_PV(set_tech_DES_PV) * par_Eta_DES_PV(set_tech_DES_PV) * 10**(-6) * sca_delta_ii)
          -sum(set_load_DS_E$par_X_BM_NaS_DS_E(set_load_DS_E),par_L_DS_E(set_ii,set_load_DS_E));

Loop(set_ii,
         if(par_SOC_DES_ES_NaS_initial>0,
                 par_SOC_DES_ES_NaS_initial=par_SOC_DES_ES_NaS_initial+Delta_m_PV(set_ii);
         else
                 par_SOC_DES_ES_NaS_initial=Delta_m_PV(set_ii);
         );
);

if(par_SOC_DES_ES_NaS_initial<0,par_SOC_DES_ES_NaS_initial=0);

par_SOC_DES_ES_initial(set_ii_0,set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1 and ORD(set_ii_0)=1)=par_SOC_DES_ES_NaS_initial;

par_SOC_DES_ES_cap(set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1) = 2*sum(set_ii,sum(set_tech_DES_PV$par_X_BM_NaS_DES_PV(set_tech_DES_PV), par_I_ES(set_ii) * par_A_DES_PV(set_tech_DES_PV) * par_Eta_DES_PV(set_tech_DES_PV) * 10**(-6) * sca_delta_ii));
par_SOC_DES_ES_cap_help(set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1)= par_SOC_DES_ES_cap(set_tech_DES_ES);

par_P_DES_ES_charge_max(set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1)
         = 2*smax(set_ii,sum(set_tech_DES_PV$par_X_BM_NaS_DES_PV(set_tech_DES_PV),par_I_ES(set_ii) * par_A_DES_PV(set_tech_DES_PV) * par_Eta_DES_PV(set_tech_DES_PV) * 10**(-6) * sca_delta_ii)/sca_delta_ii);

par_P_DES_ES_discharge_max(set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1)
         = 2*smax(set_ii,sum(set_load_DS_E$par_X_BM_NaS_DS_E(set_load_DS_E),par_L_DS_E(set_ii,set_load_DS_E)/sca_delta_ii));

par_Eta_DES_ES_discharge(set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1)
         = 1;

par_Eta_DES_ES_charge(set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1)
         = 1;

par_Eta_DES_ES_selfdischarge(set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1)
         = 0;

*Kosten Netzspeicher
par_C_DES_ES_Cap(set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1)
         = 0;
par_cashFlow_year(set_tech_DES_ES,'Inv',set_side,'MS')$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1)
         =0;
par_cashFlow_year(set_tech_DES_ES,'Ins',set_side,'MS')$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1)
         =0;
par_cashFlow_year(set_tech_DES_ES,'OuM',set_side,'MS')$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1)
         =0;



*Erzeuge energyLinks
set_energyLink('E',set_tech_DES_PV,set_load_DS_E)$(par_X_BM_NaS_DES_PV(set_tech_DES_PV)=1 and (sum(set_side_cust$(set_pssOH(set_side_cust,set_tech_DES_PV) and set_pssOH(set_side_cust,set_load_DS_E)),1)>0))=yes;
set_energyLink('E',set_tech_DES_PV,set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1 and par_X_BM_NaS_DES_PV(set_tech_DES_PV)=1)=yes;
set_energyLink('E',set_tech_DES_ES,set_load_DS_E)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1 and par_X_BM_NaS_DS_E(set_load_DS_E)=1)=yes;

set_energyLink('E','EGrid',set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1)=yes;
set_energyLink('E',set_tech_DES_ES,'EGrid')$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1)=yes;

*Tarifzuordnung
*Einspeisen in den Netzspeicher hins. Optimierung fördern
*Einspeiseförderung wird im NPV Modul durch die Kosten überschrieben
par_energyLinkTarif(set_ii,set_side,set_side_fares,'E',set_tech_DES_PV,set_tech_DES_ES)$
(set_pssOH(set_side,set_tech_DES_PV)
and par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1
and par_X_BM_NaS_DES_PV(set_tech_DES_PV)=1)
=-10;
*=par_F_E_BM_NaS_energyinfeed(set_ii,set_side_fares,set_pss)
*+(sca_Tax_PS_vat*(par_F_E_EGrid_energy(set_ii,'NS',set_pss)+par_F_E_EGrid_energy(set_ii,'SMS',set_pss)))$(set_side_fares_taxes(set_side_fares));

par_energyLinkTarif(set_ii,set_side,set_side_fares,'E',set_tech_DES_ES,set_load_DS_E)$
(set_pssOH(set_side,set_load_DS_E)
and par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1
and par_X_BM_NaS_DS_E(set_load_DS_E)=1)
=par_F_E_BM_NaS_energy(set_ii,set_side_fares,set_load_DS_E)
+(sca_Tax_PS_vat*(par_F_E_BM_NaS_energy(set_ii,'NS',set_load_DS_E)+par_F_E_BM_NaS_energy(set_ii,'SMS',set_load_DS_E)))$(set_side_fares_taxes(set_side_fares));

par_energyLinkTarif(set_ii,set_side,set_side_fares,'E','EGrid',set_tech_DES_ES)$
(set_pssOH(set_side,set_tech_DES_ES) and par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1)
=0;

par_energyLinkTarif(set_ii,set_side_fares,set_side,'E',set_tech_DES_PV,'EGrid')$
(set_pssOH(set_side,set_tech_DES_PV)
and par_X_BM_NaS_DES_PV(set_tech_DES_PV)=1
and set_energyLink('E',set_tech_DES_PV,'EGrid')
and not set_market_MS(set_tech_DES_PV)
and not set_grid_NS(set_tech_DES_PV))
=par_F_E_EGrid_energyinfeed(set_ii,set_side_fares,set_tech_DES_PV);

*Geschäftsmodellspezifische Optimierungshoheiten
set_pssOH(set_side_orga,set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1 and par_OH_Side_BM(set_side_orga,'Sonnentank')=1)=no;
set_pssOH(set_side_cust,set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1 and sum(set_tech_DES_PV$set_pssOH(set_side_cust,set_tech_DES_PV),par_X_BM_NaS_DES_PV(set_tech_DES_PV))>0)=yes;

set_energyLinkOH(set_side_cust,'E',set_tech_DES_PV,set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1 and par_X_BM_NaS_DES_PV(set_tech_DES_PV)=1 and set_pssOH(set_side_cust,set_tech_DES_ES))=yes;
set_energyLinkOH(set_side_cust,'E',set_tech_DES_ES,set_load_DS_E)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1 and par_X_BM_NaS_DS_E(set_load_DS_E)=1 and  set_pssOH(set_side_cust,set_load_DS_E))=yes;

set_energyLinkOH(set_side_cust,'E','EGrid',set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1)=no;
set_energyLinkOH(set_side_cust,'E',set_tech_DES_ES,'EGrid')$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1)=no;

set_energyLinkOH(set_side_orga,'E','EGrid',set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1 and par_OH_Side_BM(set_side_orga,'Sonnentank')=1)=yes;
set_energyLinkOH(set_side_orga,'E',set_tech_DES_ES,'EGrid')$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1 and par_OH_Side_BM(set_side_orga,'Sonnentank')=1)=yes;



*Gleichung stellt sicher, dass Einspeisung/Bezug in/vom virtuellen Speicher Einspeisung/Bezug in/vom Netz entspricht

EQUATIONS EqBM_NaS1(set_ii,set_pss);
EqBM_NaS1(set_t,set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1)..

         var_energyFlow(set_t,'E',set_tech_DES_ES,'EGrid')
         =e= sum(set_tech_DES_PV$(par_X_BM_NaS_DES_PV(set_tech_DES_PV)=1),par_energyFlow_cust(set_t,'E',set_tech_DES_PV,set_tech_DES_ES));

EQUATIONS EqBM_NaS2(set_ii,set_pss);
EqBM_NaS2(set_t,set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1)..

         var_energyFlow(set_t,'E','EGrid',set_tech_DES_ES)
         =e= sum(set_load_DS_E$(par_X_BM_NaS_DS_E(set_load_DS_E)=1),par_energyFlow_cust(set_t,'E',set_tech_DES_ES,set_load_DS_E));



model mod_BM_NaS_orga /EqBM_NaS1, EqBM_NaS2/;






