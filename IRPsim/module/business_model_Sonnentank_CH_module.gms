Parameter par_SOC_DES_ES_Sonnentank_cust(set_ii_0,set_tech_DES_ES);
Parameter par_SOC_DES_ES_Sonnentank_orga(set_ii_0,set_tech_DES_ES);
PARAMETER par_SOC_DES_ES_Sonnentank_percentage(set_ii_0,set_tech_DES_ES);

Parameter par_P_DES_ES_Sonnentank_cust_charge(set_ii_0,set_tech_DES_ES);
Parameter par_P_DES_ES_Sonnentank_cust_discharge(set_ii_0,set_tech_DES_ES);
Parameter par_P_DES_ES_Sonnentank_orga_charge(set_ii_0,set_tech_DES_ES);
Parameter par_P_DES_ES_Sonnentank_orga_discharge(set_ii_0,set_tech_DES_ES);

set_pss_BM(set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1)=YES;
set_pss_BM(set_tech_DES_PV)$(par_X_BM_Sonnentank_DES_PV(set_tech_DES_PV)=1)=YES;
set_pss_BM(set_load_DS_E)$(par_X_BM_Sonnentank_DS_E(set_load_DS_E)=1)=YES;

*Geschäftsmodellzuordnung
par_X_BM_indirectselfcons(set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1)=1;

*Interne Validierungsregel
par_X_BM_Sonnentank_DES_PV(set_tech_DES_PV)$(sum(set_side_orga$set_pssOH(set_side_orga,set_tech_DES_PV),1)>0)=0;

*Erzeuge energyLinks
*set_energyLink('E',set_tech_DES_PV,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1 and par_X_BM_Sonnentank_DES_PV(set_tech_DES_PV)=1)=yes;
*set_energyLink('E',set_tech_DES_ES,set_load_DS_E)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1 and par_X_BM_Sonnentank_DS_E(set_load_DS_E)=1)=yes;
*set_energyLink('E',set_tech_DES_PV,set_load_DS_E)$(par_X_BM_Sonnentank_DS_E(set_load_DS_E)=1 and par_X_BM_Sonnentank_DES_PV(set_tech_DES_PV)=1)=yes;

*set_energyLink('E','EGrid',set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1)=yes;
*set_energyLink('E',set_tech_DES_ES,'EGrid')$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1)=yes;

*set_energyLink('PR',set_tech_DES_ES,'PRGrid')$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1)=yes;
*set_energyLink('NR',set_tech_DES_ES,'NRGrid')$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1)=yes;

*Tarifzuordnung Vertrieb
par_energyLinkTarif(set_ii,set_fromSide,'SMS','E',set_tech_DES_PV,set_tech_DES_ES)$
(set_pssOH(set_fromSide,set_tech_DES_PV)
and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1
and par_X_BM_Sonnentank_DES_PV(set_tech_DES_PV)=1
and set_energyLink('E',set_tech_DES_PV,set_tech_DES_ES))
=par_F_E_BM_Sonnentank_energyinfeed(set_ii,'SMS',set_tech_DES_PV);

par_energyLinkTarif(set_ii,set_fromSide,'NS','E',set_tech_DES_PV,set_tech_DES_ES)$
(set_pssOH(set_fromSide,set_tech_DES_PV)
and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1
and par_X_BM_Sonnentank_DES_PV(set_tech_DES_PV)=1
and set_energyLink('E',set_tech_DES_PV,set_tech_DES_ES))
=par_F_E_BM_Sonnentank_energyinfeed(set_ii,'NS',set_tech_DES_PV)$(sca_X_BM_Sonnentank_NS_disclosure=0);

par_energyLinkTarif(set_ii,set_side_orga,'NS','E',set_tech_DES_PV,set_tech_DES_ES)$
(par_OH_Side_BM(set_side_orga,'Sonnentank')=1
and par_X_BM_Sonnentank_DES_PV(set_tech_DES_PV)=1
and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1
and set_energyLink('E',set_tech_DES_PV,set_tech_DES_ES))
=par_F_E_BM_Sonnentank_energyinfeed(set_ii,'NS',set_tech_DES_PV)$(sca_X_BM_Sonnentank_NS_disclosure=1);

par_energyLinkTarif(set_ii,set_fromSide,'PS','E',set_tech_DES_PV,set_tech_DES_ES)$
(set_pssOH(set_fromSide,set_tech_DES_PV)
and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1
and par_X_BM_Sonnentank_DES_PV(set_tech_DES_PV)=1
and set_energyLink('E',set_tech_DES_PV,set_tech_DES_ES))
=sca_Tax_PS_vat*par_energyLinkTarif(set_ii,set_fromSide,'SMS','E',set_tech_DES_PV,set_tech_DES_ES)
+sca_Tax_PS_vat*par_energyLinkTarif(set_ii,set_fromSide,'NS','E',set_tech_DES_PV,set_tech_DES_ES)$(sca_X_BM_Sonnentank_NS_disclosure=0)
+sca_Tax_PS_vat*par_F_E_BM_Sonnentank_energyinfeed(set_ii,'PS',set_tech_DES_PV)$(sca_X_BM_Sonnentank_PS_disclosure=0 and sca_X_MS_DE_country=1)
+par_F_E_BM_Sonnentank_energyinfeed(set_ii,'PS',set_tech_DES_PV)$(sca_X_BM_Sonnentank_PS_disclosure=0);

par_energyLinkTarif(set_ii,set_side_orga,'PS','E',set_tech_DES_PV,set_tech_DES_ES)$
(par_OH_Side_BM(set_side_orga,'Sonnentank')=1
and par_X_BM_Sonnentank_DES_PV(set_tech_DES_PV)=1
and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1
and set_energyLink('E',set_tech_DES_PV,set_tech_DES_ES))
=par_F_E_BM_Sonnentank_energyinfeed(set_ii,'PS',set_tech_DES_PV)$(sca_X_BM_Sonnentank_PS_disclosure=1)
+sca_Tax_PS_vat*par_F_E_BM_Sonnentank_energyinfeed(set_ii,'NS',set_tech_DES_PV)$(sca_X_BM_Sonnentank_NS_disclosure=1);

par_energyLinkTarif(set_ii,set_fromSide,'SMS','E',set_tech_DES_ES,set_load_DS_E)$
(set_pssOH(set_fromSide,set_load_DS_E)
and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1
and par_X_BM_Sonnentank_DS_E(set_load_DS_E)=1
and set_energyLink('E',set_tech_DES_ES,set_load_DS_E))
=-par_F_E_BM_Sonnentank_energy(set_ii,'SMS',set_load_DS_E);

par_energyLinkTarif(set_ii,set_fromSide,'NS','E',set_tech_DES_ES,set_load_DS_E)$
(set_pssOH(set_fromSide,set_load_DS_E)
and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1
and par_X_BM_Sonnentank_DS_E(set_load_DS_E)=1
and set_energyLink('E',set_tech_DES_ES,set_load_DS_E))
=par_F_E_BM_Sonnentank_energy(set_ii,'NS',set_load_DS_E)$(sca_X_BM_Sonnentank_NS_disclosure=0);

par_energyLinkTarif(set_ii,set_side_orga,'NS','E',set_tech_DES_ES,set_load_DS_E)$
(par_OH_Side_BM(set_side_orga,'Sonnentank')=1
and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1
and par_X_BM_Sonnentank_DS_E(set_load_DS_E)=1
and set_energyLink('E',set_tech_DES_ES,set_load_DS_E))
=par_F_E_BM_Sonnentank_energy(set_ii,'NS',set_load_DS_E)$(sca_X_BM_Sonnentank_NS_disclosure=1);

par_energyLinkTarif(set_ii,set_fromSide,'PS','E',set_tech_DES_ES,set_load_DS_E)$
(set_pssOH(set_fromSide,set_load_DS_E)
and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1
and par_X_BM_Sonnentank_DS_E(set_load_DS_E)=1
and set_energyLink('E',set_tech_DES_ES,set_load_DS_E))
=sca_Tax_PS_vat*par_energyLinkTarif(set_ii,set_fromSide,'SMS','E',set_tech_DES_ES,set_load_DS_E)
+sca_Tax_PS_vat*par_energyLinkTarif(set_ii,set_fromSide,'NS','E',set_tech_DES_ES,set_load_DS_E)$(sca_X_BM_Sonnentank_NS_disclosure=0)
+sca_Tax_PS_vat*par_F_E_BM_Sonnentank_energy(set_ii,'PS',set_load_DS_E)$(sca_X_MS_DE_country=1 and sca_X_BM_Sonnentank_PS_disclosure=0)
+par_F_E_BM_Sonnentank_energy(set_ii,'PS',set_load_DS_E)$(sca_X_BM_Sonnentank_PS_disclosure=0);

par_energyLinkTarif(set_ii,set_side_orga,'PS','E',set_tech_DES_ES,set_load_DS_E)$
(par_OH_Side_BM(set_side_orga,'Sonnentank')=1
and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1
and par_X_BM_Sonnentank_DS_E(set_load_DS_E)=1
and set_energyLink('E',set_tech_DES_ES,set_load_DS_E))
=par_F_E_BM_Sonnentank_energy(set_ii,'PS',set_load_DS_E)$(sca_X_BM_Sonnentank_PS_disclosure=1)
+sca_Tax_PS_vat*par_energyLinkTarif(set_ii,'SMS','NS','E',set_tech_DES_ES,set_load_DS_E)$(sca_X_BM_Sonnentank_NS_disclosure=1);

par_energyLinkTarif(set_ii,set_side,set_side_fares,'E','EGrid',set_tech_DES_ES)$
(set_pssOH(set_side,set_tech_DES_ES)
and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1)
=0;


*Fehlerbehebung Infeasible
par_energyLinkTarif(set_ii,set_side_orga,'MS','E',set_grid_NS_E,set_tech_DES_ES)$
(set_pssOH(set_side_orga,set_tech_DES_ES)
and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1
and not set_energyLink('E',set_grid_NS_E,set_tech_DES_ES)
and not set_energyLink('E',set_tech_DES_ES,set_grid_NS_E))
=1000;
*Fehlerbehebung Infeasible
set_energyLink('E','EGrid',set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1)=yes;
set_energyLinkOH(set_side_orga,'E','EGrid',set_tech_DES_ES)$(set_pssOH(set_side_orga,set_tech_DES_ES)$set_energyLink('E','EGrid',set_tech_DES_ES) AND par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1)=yes;


*Cash-Flow Zuordnung
par_cashFlow_month(set_jj,set_tech_DES_PV,'SMS_basic',set_side_cust,set_side_orga)$(par_X_BM_Sonnentank_DES_PV(set_tech_DES_PV)=1
                                                                                    and set_pssOH(set_side_cust,set_tech_DES_PV) and par_OH_Side_BM(set_side_orga,'Sonnentank')=1)
=(sca_F_SMS_E_fee_Sonnentank*par_S_DS(set_side_cust));

par_cashFlow_month(set_jj,set_tech_DES_PV,'SMS_basic',set_side_cust,'PS')$(par_X_BM_Sonnentank_DES_PV(set_tech_DES_PV)=1
                                                                           and set_pssOH(set_side_cust,set_tech_DES_PV))
=sca_Tax_PS_vat*(sca_F_SMS_E_fee_Sonnentank*par_S_DS(set_side_cust));

*Geschäftsmodellspezifische Optimierungshoheiten
set_pssOH(set_side_orga,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1 and par_OH_Side_BM(set_side_orga,'Sonnentank')=1 and par_X_pss_model(set_tech_DES_ES)=1)=yes;

set_pssOH(set_side_cust,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1 and par_X_pss_model(set_tech_DES_ES)=1 and sum(set_tech_DES_PV$set_pssOH(set_side_cust,set_tech_DES_PV),1 and par_X_BM_Sonnentank_DES_PV(set_tech_DES_PV)=1 and set_energyLink('E',set_tech_DES_PV,set_tech_DES_ES))>0)=yes;

set_energyLinkOH(set_side_cust,'E',set_tech_DES_PV,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1 and par_X_pss_model(set_tech_DES_ES)=1 and set_energyLink('E',set_tech_DES_PV,set_tech_DES_ES) and set_pssOH(set_side_cust,set_tech_DES_PV))=yes;
set_energyLinkOH(set_side_cust,'E',set_tech_DES_ES,set_load_DS_E)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1 and par_X_pss_model(set_tech_DES_ES)=1 and set_pssOH(set_side_cust,set_load_DS_E) and set_energyLink('E',set_tech_DES_ES,set_load_DS_E) and set_pssOH(set_side_cust,set_load_DS_E))=yes;

set_energyLinkOH(set_side_orga,'E',set_tech_DES_PV,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1 and par_X_pss_model(set_tech_DES_ES)=1 and set_energyLink('E',set_tech_DES_PV,set_tech_DES_ES) and par_OH_Side_BM(set_side_orga,'Sonnentank')=1)=yes;
set_energyLinkOH(set_side_orga,'E',set_tech_DES_ES,set_load_DS_E)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1 and par_X_pss_model(set_tech_DES_ES)=1 and set_energyLink('E',set_tech_DES_ES,set_load_DS_E) and par_OH_Side_BM(set_side_orga,'Sonnentank')=1)=yes;

set_energyLinkOH(set_side_orga,'E','EGrid',set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1 and par_X_pss_model(set_tech_DES_ES)=1 and par_OH_Side_BM(set_side_orga,'Sonnentank')=1)=yes;
set_energyLinkOH(set_side_orga,'E',set_tech_DES_ES,'EGrid')$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1 and par_X_pss_model(set_tech_DES_ES)=1 and par_OH_Side_BM(set_side_orga,'Sonnentank')=1)=yes;
set_energyLinkOH(set_side_cust,'E','EGrid',set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1 and par_X_pss_model(set_tech_DES_ES)=1)=no;
set_energyLinkOH(set_side_cust,'E',set_tech_DES_ES,'EGrid')$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1 and par_X_pss_model(set_tech_DES_ES)=1)=no;

set_energyLinkOH(set_side_orga,'PR',set_tech_DES_ES,set_grid_NS_R)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1 and par_X_pss_model(set_tech_DES_ES)=1 and par_OH_Side_BM(set_side_orga,'Sonnentank')=1)=yes;
set_energyLinkOH(set_side_orga,'NR',set_tech_DES_ES,set_grid_NS_R)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1 and par_X_pss_model(set_tech_DES_ES)=1 and par_OH_Side_BM(set_side_orga,'Sonnentank')=1)=yes;
set_energyLinkOH(set_side_cust,'PR',set_tech_DES_ES,set_grid_NS_R)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1 and par_X_pss_model(set_tech_DES_ES)=1)=no;
set_energyLinkOH(set_side_cust,'NR',set_tech_DES_ES,set_grid_NS_R)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1 and par_X_pss_model(set_tech_DES_ES)=1)=no;


*Skalierung des Speichers über Basismodell
par_SOC_DES_ES_initial(set_ii_0,set_tech_DES_ES)$((ORD(set_ii_0)=1) and (BM_Sonnentank(set_tech_DES_ES) eq 1)) = 0;

*Hinweis/Validierungsregel:      Optimierungshoheit muss einer Teilnehmenden Kundengruppe zugewiesen werden,
*                                Entscheidung über Skalierung muss unter Systemkomponenten getroffen werden

Parameter par_SOC_DES_ES_initial_Sonnentank_cust(set_ii_0,set_tech_DES_ES);
par_SOC_DES_ES_initial_Sonnentank_cust(set_ii_0,set_tech_DES_ES)$(BM_Sonnentank(set_tech_DES_ES) eq 1)=par_SOC_DES_ES_initial(set_ii_0,set_tech_DES_ES);
Parameter par_SOC_DES_ES_initial_Sonnentank_orga(set_ii_0,set_tech_DES_ES);
par_SOC_DES_ES_initial_Sonnentank_orga(set_ii_0,set_tech_DES_ES)$(BM_Sonnentank(set_tech_DES_ES) eq 1)=par_SOC_DES_ES_initial(set_ii_0,set_tech_DES_ES);
