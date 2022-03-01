*-------------------------------------------------------------------------------
* Tarifüberschreibungen
*-------------------------------------------------------------------------------
*Optimierungstarife werden für die NPV Berechnung mit realen Tarifen überschrieben
*Überschreibung Wärme-Penalty
par_energyLinkTarif(set_ii,set_side,'MS','W','WMarket',set_load_DS_W)$(set_t_store(set_ii) and set_pssOH(set_side,set_load_DS_W))
=0;

*Überschreibung Förderung-Netzspeicher-Einspeisung
par_energyLinkTarif(set_ii,set_side,set_side_fares,'E',set_tech_DES_PV,set_tech_DES_ES)$
(set_pssOH(set_side,set_tech_DES_PV)
and par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1
and par_X_BM_NaS_DES_PV(set_tech_DES_PV)=1
and set_t_store(set_ii))
=par_F_E_BM_NaS_energyinfeed(set_ii,set_side_fares,set_tech_DES_PV)
+(sca_Tax_PS_vat*(par_F_E_BM_NaS_energyinfeed(set_ii,'NS',set_tech_DES_PV)+par_F_E_BM_NaS_energyinfeed(set_ii,'SMS',set_tech_DES_PV)))$(set_side_fares_taxes(set_side_fares));

*Überschreibung Tarife Direktstrom und Direktvermarktung für den deutschen Markt
$INCLUDE ./processing/define_fares_GER_preprocessing.gms

*-------------------------------------------------------------------------------
* Initialisierungen
*-------------------------------------------------------------------------------

*Gutschrift der Energie im Netzspeicher
*Cash Flow hinzufügen (Kapazitätsvergütung)
par_cashFlow_special(set_ii,set_tech_DES_ES,'NaS','SMS',set_side_opt)$(set_t_fin(set_ii) and set_t_store(set_ii)
                                                                                         and par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1
                                                                                         and set_side_cust(set_side_opt)
                                                                                         and set_pssOH(set_side_opt,set_tech_DES_ES)
                                                                                         and (var_SOC_DES_ES.l(set_ii,set_tech_DES_ES)-par_SOC_DES_ES_NaS_initial)>0)=
         (var_SOC_DES_ES.l(set_ii,set_tech_DES_ES)-par_SOC_DES_ES_NaS_initial)
         *average_spot;

*Erzeugungsverhältnis zentrale Kraftwerke
*Verhältnis zur Verteilung der Betriebskosten bestimmen

par_SOH_pss_sector_var(set_ii,'E',set_fromPss)$(set_t_store(set_ii) and set_tech_SS(set_fromPss) and sum(set_toPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss))+var_energyFlow.l(set_ii,'W',set_fromPss,set_toPss)$(set_energyLink_opt('W',set_fromPss,set_toPss))) ne 0)
=sum(set_toPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss)))
/ sum(set_toPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss))+var_energyFlow.l(set_ii,'W',set_fromPss,set_toPss)$(set_energyLink_opt('W',set_fromPss,set_toPss)));

par_SOH_pss_sector_var(set_ii,'W',set_fromPss)$(set_t_store(set_ii) and set_tech_SS(set_fromPss) and sum(set_toPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss))+var_energyFlow.l(set_ii,'W',set_fromPss,set_toPss)$(set_energyLink_opt('W',set_fromPss,set_toPss))) ne 0)
=sum(set_toPss,var_energyFlow.l(set_ii,'W',set_fromPss,set_toPss)$(set_energyLink_opt('W',set_fromPss,set_toPss)))
/ sum(set_toPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss))+var_energyFlow.l(set_ii,'W',set_fromPss,set_toPss)$(set_energyLink_opt('W',set_fromPss,set_toPss)));

par_SOH_pss_sector_var(set_ii,'E',set_fromPss)$(set_t_store(set_ii) and set_tech_DES(set_fromPss) and sum(set_toPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss))+var_energyFlow.l(set_ii,'W',set_fromPss,set_toPss)$(set_energyLink_opt('W',set_fromPss,set_toPss))) ne 0)
=sum(set_toPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss)))
/ sum(set_toPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss))+var_energyFlow.l(set_ii,'W',set_fromPss,set_toPss)$(set_energyLink_opt('W',set_fromPss,set_toPss)));

par_SOH_pss_sector_var(set_ii,'W',set_fromPss)$(set_t_store(set_ii) and set_tech_DES(set_fromPss) and sum(set_toPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss))+var_energyFlow.l(set_ii,'W',set_fromPss,set_toPss)$(set_energyLink_opt('W',set_fromPss,set_toPss))) ne 0)
=sum(set_toPss,var_energyFlow.l(set_ii,'W',set_fromPss,set_toPss)$(set_energyLink_opt('W',set_fromPss,set_toPss)))
/ sum(set_toPss,var_energyFlow.l(set_ii,'E',set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss))+var_energyFlow.l(set_ii,'W',set_fromPss,set_toPss)$(set_energyLink_opt('W',set_fromPss,set_toPss)));

par_SOH_pss_sector_var(set_ii,'CL',set_fromPss)$(set_t_store(set_ii) and set_tech_DES(set_fromPss) and sum(set_toPss,var_energyFlow.l(set_ii,'CL',set_fromPss,set_toPss)) ne 0)=1;


*-------------------------------------------------------------------------------
* NPV-Berechnung
*-------------------------------------------------------------------------------
*Berechnungen CashFlow
par_cashFlow_timestep_sum(set_ii,set_sector,set_fromSide,set_toSide)$set_t_store(set_ii)=
*Viertelstündliche variable Zahlungen Energie
         sum((set_fromPss,set_toPss)$set_energyLink(set_sector,set_fromPss,set_toPss),
         var_energyFlow.l(set_ii,set_sector,set_fromPss,set_toPss)*par_energyLinkTarif(set_ii,set_fromSide,set_toSide,set_sector,set_fromPss,set_toPss))
*Viertelstündliche relative Statuskosten
         + sum(set_pss,
         var_relativeStatus.l(set_ii,set_pss)*par_relativeStatusCost(set_pss,set_fromSide,set_toSide)*par_SOH_pss_sector_var(set_ii,set_sector,set_pss))
*Viertelstündliche absolute Statuskosten
         + sum(set_pss,
         var_absoluteStatus.l(set_ii,set_pss)*par_absoluteStatusCost(set_pss,set_fromSide,set_toSide)*par_SOH_pss_sector_var(set_ii,set_sector,set_pss))
*Monatliche variable Zahlungen
         + sum(set_jj$((par_Last_Day_of_Month(set_jj)/sca_delta_ii*24 >= ord(set_ii)
                      and par_Last_Day_of_Month(set_jj-1)/sca_delta_ii*24 < ord(set_ii))),
                sca_delta_ii/Days_in_Month(set_jj)/24*
                (sum(set_power,var_powerMeasurement.l(set_jj,set_power)$set_powerSector(set_sector,set_power)*par_powerLinkTarif(set_jj,set_power,set_fromSide,set_toSide)/par_DF_powerLink(set_power))
*Monatliche Cash-Flows
         +sum((set_pss,set_cashFlow_month),
         par_cashFlow_month(set_jj,set_pss,set_cashFlow_month,set_fromSide,set_toSide)*par_SOH_pss_sector(set_sector,set_pss)))
*Jährliche Cash-Flows
         +sum((set_pss,set_cashFlow_year),
         par_cashFlow_year(set_pss,set_cashFlow_year,set_fromSide,set_toSide)*par_SOH_pss_sector(set_sector,set_pss))/8760*sca_delta_ii
*Spezielle Cash-Flows
         +sum((set_pss,set_cashFlow_special),
         par_cashFlow_special(set_ii,set_pss,set_cashFlow_special,set_fromSide,set_toSide)*par_SOH_pss_sector(set_sector,set_pss)));


*-------------------------------------------------------------------------------
* NPV-Nachberechnungen
*-------------------------------------------------------------------------------
*Akteursspezifischer und Sektorenbezogener CashFlow pro Optimierungsjahr
par_cashFlow_year_sum(set_sector,set_fromSide,set_toSide)=sum(set_t_store,par_cashFlow_timestep_sum(set_t_store,set_sector,set_fromSide,set_toSide));

*Akteursspezifischer und Sektorenbezogener CashFlow pro Zeitschritt
par_NPV_sector_timestep(set_t_store,set_sector,set_side)=
         -sum((set_toSide),par_cashFlow_timestep_sum(set_t_store,set_sector,set_side,set_toSide))
         +sum((set_fromSide),par_cashFlow_timestep_sum(set_t_store,set_sector,set_fromSide,set_side));

*Akteursspezifischer und Sektorenbezogener CashFlow (nur Einnahmen) pro Zeitschritt

par_O_sector_timestep(set_t_store,set_sector,set_side)=-sum((set_toSide),par_cashFlow_timestep_sum(set_t_store,set_sector,set_side,set_toSide));


par_I_sector_timestep(set_t_store,set_sector,set_side)=+sum((set_fromSide),par_cashFlow_timestep_sum(set_t_store,set_sector,set_fromSide,set_side));


*Akteursspezifischer Gesamt-CashFlow pro Zeitschritt
par_NPV_timestep(set_t_store,set_side)= sum(set_sector,par_NPV_sector_timestep(set_t_store,set_sector,set_side));

par_NPV_timestep_sector_orga(set_t_store,set_sector)=sum(set_side_orga,par_NPV_sector_timestep(set_t_store,set_sector,set_side_orga));

par_NPV_timestep_orga(set_t_store)=sum(set_sector,par_NPV_timestep_sector_orga(set_t_store,set_sector));

par_NPV_timestep_cust(set_t_store)=sum(set_side_cust,par_NPV_timestep(set_t_store,set_side_cust));

par_out_IuO_ESector_CustSide(set_ii,set_side_opt)= par_NPV_sector_timestep(set_ii,'E',set_side_opt);

par_out_IuO_GSector_CustSide(set_ii,set_side_opt)$set_t_store(set_ii)= par_NPV_sector_timestep(set_ii,'G',set_side_opt);

par_out_IuO_WSector_CustSide(set_ii,set_side_opt)$set_t_store(set_ii)= par_NPV_sector_timestep(set_ii,'W',set_side_opt);

par_out_IuO_CSector_CustSide(set_ii,set_side_opt)$set_t_store(set_ii)= par_NPV_sector_timestep(set_ii,'C',set_side_opt);

par_out_IuO_RSector_CustSide(set_ii,set_side_opt)$set_t_store(set_ii)= par_NPV_sector_timestep(set_ii,'PR',set_side_opt) + par_NPV_sector_timestep(set_ii,'NR',set_side_opt);

par_out_IuO_Sector_CustSide(set_ii,set_side_opt)$set_t_store(set_ii) = par_NPV_timestep(set_ii,set_side_opt);

par_out_IuO_ESector_CustSide_ind(set_ii,set_side_opt)$(set_t_store(set_ii) and par_S_DS_total(set_side_opt) ne 0)= par_NPV_sector_timestep(set_ii,'E',set_side_opt)/par_S_DS_total(set_side_opt);

par_out_IuO_GSector_CustSide_ind(set_ii,set_side_opt)$(set_t_store(set_ii) and par_S_DS_total(set_side_opt) ne 0)= par_NPV_sector_timestep(set_ii,'G',set_side_opt)/par_S_DS_total(set_side_opt);

par_out_IuO_WSector_CustSide_ind(set_ii,set_side_opt)$(set_t_store(set_ii) and par_S_DS_total(set_side_opt) ne 0)= par_NPV_sector_timestep(set_ii,'W',set_side_opt)/par_S_DS_total(set_side_opt);

par_out_IuO_CSector_CustSide_ind(set_ii,set_side_opt)$(set_t_store(set_ii) and par_S_DS_total(set_side_opt) ne 0)= par_NPV_sector_timestep(set_ii,'C',set_side_opt)/par_S_DS_total(set_side_opt);

par_out_IuO_RSector_CustSide_ind(set_ii,set_side_opt)$(set_t_store(set_ii) and par_S_DS_total(set_side_opt) ne 0)= (par_NPV_sector_timestep(set_ii,'PR',set_side_opt) + par_NPV_sector_timestep(set_ii,'NR',set_side_opt))/par_S_DS_total(set_side_opt);

par_out_IuO_Sector_CustSide_ind(set_ii,set_side_opt)$(set_t_store(set_ii) and par_S_DS_total(set_side_opt) ne 0) = par_NPV_timestep(set_ii,set_side_opt)/par_S_DS_total(set_side_opt);

par_out_IuO_Sector_Cust(set_ii)$set_t_store(set_ii)=par_NPV_timestep_cust(set_ii);

par_out_IuO_ESector_OrgaSide(set_ii,set_side_opt)$set_t_store(set_ii)=par_NPV_sector_timestep(set_ii,'E',set_side_opt);

par_out_IuO_GSector_OrgaSide(set_ii,set_side_opt)$set_t_store(set_ii)=par_NPV_sector_timestep(set_ii,'G',set_side_opt);

par_out_IuO_CSector_OrgaSide(set_ii,set_side_opt)$set_t_store(set_ii)=par_NPV_sector_timestep(set_ii,'C',set_side_opt);

par_out_IuO_WSector_OrgaSide(set_ii,set_side_opt)$set_t_store(set_ii)=par_NPV_sector_timestep(set_ii,'W',set_side_opt);

par_out_IuO_RSector_OrgaSide(set_ii,set_side_opt)$set_t_store(set_ii)=par_NPV_sector_timestep(set_ii,'PR',set_side_opt) + par_NPV_sector_timestep(set_ii,'NR',set_side_opt);

par_out_IuO_ESector_Orga(set_ii)$set_t_store(set_ii)=par_NPV_timestep_sector_orga(set_ii,'E');

par_out_IuO_GSector_Orga(set_ii)$set_t_store(set_ii)=par_NPV_timestep_sector_orga(set_ii,'G');

par_out_IuO_WSector_Orga(set_ii)$set_t_store(set_ii)=par_NPV_timestep_sector_orga(set_ii,'W');

par_out_IuO_RSector_Orga(set_ii)$set_t_store(set_ii)=par_NPV_timestep_sector_orga(set_ii,'NR') + par_NPV_timestep_sector_orga(set_ii,'PR');

par_out_IuO_Sector_Orga(set_ii)$set_t_store(set_ii)=par_NPV_timestep_orga(set_ii);

*-------------------------------------------------------------------------------
* Tarifinitialisierungen
*-------------------------------------------------------------------------------

*Optimierungstarife werden für die Optimierung mit zielfördernden Tarifen überschrieben
*Hinzufügen Wärme-Penalty
par_energyLinkTarif(set_ii,set_side_cust,'MS','W','WMarket',set_load_DS_W)$(set_pssOH(set_side_cust,set_load_DS_W))
=10000001;

*Hinzufügen Förderung Netzspeicher-Einspeisung
par_energyLinkTarif(set_ii,set_side,set_side_fares,'E',set_tech_DES_PV,set_tech_DES_ES)$
(set_pssOH(set_side,set_tech_DES_PV)
and par_X_BM_NaS_DES_ES(set_tech_DES_ES)=1
and par_X_BM_NaS_DES_PV(set_tech_DES_PV)=1)
=-10;

*Überschreibung Tarife Direktstrom und Direktvermarktung für den deutschen Markt
$INCLUDE ./processing/define_fares_GER_postprocessing.gms


*Testparameter berechnen
*par_cashFlow_timestep_sum_help1(set_ii,set_sector,set_fromSide,set_toSide)$set_t_store(set_ii)=
*sum((set_fromPss,set_toPss)$set_energyLink(set_sector,set_fromPss,set_toPss),var_energyFlow.l(set_ii,set_sector,set_fromPss,set_toPss)*par_energyLinkTarif(set_ii,set_fromSide,set_toSide,set_sector,set_fromPss,set_toPss));

*par_cashFlow_timestep_sum_help2(set_ii,set_sector,set_fromSide,set_toSide)$set_t_store(set_ii)=
*sum(set_pss,var_absoluteStatus.l(set_ii,set_pss)*par_absoluteStatusCost(set_pss,set_fromSide,set_toSide)*par_SOH_pss_sector_var(set_ii,set_sector,set_pss));
$ontext
par_cashFlow_timestep_sum_help1(set_ii,set_sector,set_fromSide,set_toSide)$set_t_store(set_ii)=
sum((set_fromPss,set_toPss)$set_energyLink(set_sector,set_fromPss,set_toPss),var_energyFlow.l(set_ii,set_sector,set_fromPss,set_toPss)*par_energyLinkTarif(set_ii,set_fromSide,set_toSide,set_sector,set_fromPss,set_toPss));

par_cashFlow_timestep_sum_help2(set_ii,set_sector,set_fromSide,set_toSide)$set_t_store(set_ii)=
sum(set_jj$((par_Last_Day_of_Month(set_jj)/sca_delta_ii*24 >= ord(set_ii)
                      and par_Last_Day_of_Month(set_jj-1)/sca_delta_ii*24 < ord(set_ii))),
                sca_delta_ii/Days_in_Month(set_jj)/24*
*Monatliche variable Zahlungen
                (sum(set_power,var_powerMeasurement.l(set_jj,set_power)$set_powerSector(set_sector,set_power)*par_powerLinkTarif(set_jj,set_power,set_fromSide,set_toSide)/par_DF_powerLink(set_power))));

par_cashFlow_timestep_sum_help3(set_ii,set_sector,set_fromSide,set_toSide)$set_t_store(set_ii)=
sum(set_jj$((par_Last_Day_of_Month(set_jj)/sca_delta_ii*24 >= ord(set_ii)
                      and par_Last_Day_of_Month(set_jj-1)/sca_delta_ii*24 < ord(set_ii))),
                sca_delta_ii/Days_in_Month(set_jj)/24*
                 sum((set_pss,set_cashFlow_month),
                  par_cashFlow_month(set_jj,set_pss,set_cashFlow_month,set_fromSide,set_toSide)));

par_cashFlow_timestep_sum_help4_Inv(set_ii,set_fromSide,set_toSide)$set_t_store(set_ii)=
         sum(set_pss,par_cashFlow_year(set_pss,'Inv',set_fromSide,set_toSide))/8760*sca_delta_ii;

par_cashFlow_timestep_sum_help4_Ins(set_ii,set_fromSide,set_toSide)$set_t_store(set_ii)=
         sum(set_pss,par_cashFlow_year(set_pss,'Ins',set_fromSide,set_toSide))/8760*sca_delta_ii;

par_cashFlow_timestep_sum_help4_OuM(set_ii,set_fromSide,set_toSide)$set_t_store(set_ii)=
         sum(set_pss,par_cashFlow_year(set_pss,'OuM',set_fromSide,set_toSide))/8760*sca_delta_ii;

par_cashFlow_timestep_sum_help5(set_ii,set_fromSide,set_toSide)$set_t_store(set_ii)=
         sum((set_pss,set_cashFlow_special),
         par_cashFlow_special(set_ii,set_pss,set_cashFlow_special,set_fromSide,set_toSide));
$offtext

