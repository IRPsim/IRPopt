***Tarife Hilfsparameter
PARAMETER par_energyLinkTarif(set_ii,set_fromSide,set_toSide,set_sector,set_fromPss,set_toPss);
par_energyLinkTarif(set_ii,set_fromSide,set_toSide,set_sector,set_fromPss,set_toPss)=0;

PARAMETER par_powerLinkTarif(set_jj,set_power,set_fromSide,set_toSide);
par_powerLinkTarif(set_jj,set_power,set_fromSide,set_toSide)=0;

SET set_side_fares_taxes(set_side_fares);
set_side_fares_taxes(set_side_fares)=NO;
set_side_fares_taxes('PS')=YES;

***Arbeitstarife Netzbezug
***Kundentarife inkl. Mehrwertsteuer
***Energiefluss Grid->PSS
par_energyLinkTarif(set_ii,set_fromSide_cust,set_toSide_fares,'E',set_grid_NS_E,set_pss)$(set_pssOH(set_fromSide_cust,set_pss)
and set_energyLink('E',set_grid_NS_E,set_pss)
and (set_tech_DES(set_pss) or set_load_DS(set_pss)))
=par_F_E_EGrid_energy(set_ii,set_toSide_fares,set_pss)
+(sca_Tax_PS_vat*(par_F_E_EGrid_energy(set_ii,'NS',set_pss)+par_F_E_EGrid_energy(set_ii,'SMS',set_pss)))$(set_side_fares_taxes(set_toSide_fares));

par_energyLinkTarif(set_ii,set_fromSide_cust,set_toSide_fares,'W',set_grid_NS_W,set_pss)$(set_pssOH(set_fromSide_cust,set_pss)
and set_energyLink('W',set_grid_NS_W,set_pss)
and (set_tech_DES(set_pss) or set_load_DS(set_pss)))
=par_F_W_WGrid_energy(set_ii,set_toSide_fares,set_pss)
+(sca_Tax_PS_vat*(par_F_W_WGrid_energy(set_ii,'NS',set_pss)+par_F_W_WGrid_energy(set_ii,'SMS',set_pss)))$(set_side_fares_taxes(set_toSide_fares));

par_energyLinkTarif(set_ii,set_fromSide_cust,set_toSide_fares,'G',set_grid_NS_G,set_pss)$(set_pssOH(set_fromSide_cust,set_pss)
and set_energyLink('G',set_grid_NS_G,set_pss)
and (set_tech_DES(set_pss) or set_load_DS(set_pss)))
=par_F_G_GGrid_energy(set_ii,set_toSide_fares,set_pss)
+(sca_Tax_PS_vat*(par_F_G_GGrid_energy(set_ii,'NS',set_pss)+par_F_G_GGrid_energy(set_ii,'SMS',set_pss)))$(set_side_fares_taxes(set_toSide_fares));

par_energyLinkTarif(set_ii,set_fromSide_cust,set_toSide_fares,'C',set_grid_NS_C,set_pss)$(set_pssOH(set_fromSide_cust,set_pss)
and set_energyLink('C',set_grid_NS_C,set_pss)
and (set_tech_DES(set_pss) or set_load_DS(set_pss)))
=par_F_C_CGrid_energy(set_ii,set_toSide_fares,set_pss)
+(sca_Tax_PS_vat*(par_F_C_CGrid_energy(set_ii,'NS',set_pss)+par_F_C_CGrid_energy(set_ii,'SMS',set_pss)))$(set_side_fares_taxes(set_toSide_fares));

par_energyLinkTarif(set_ii,set_fromSide_cust,set_toSide_fares,'C',set_grid_NS_H,set_pss)$(set_pssOH(set_fromSide_cust,set_pss)
and set_energyLink('H',set_grid_NS_H,set_pss)
and (set_tech_DES(set_pss) or set_load_DS(set_pss)))
=par_F_H_HGrid_energy(set_ii,set_toSide_fares,set_pss)
+(sca_Tax_PS_vat*(par_F_H_HGrid_energy(set_ii,'NS',set_pss)+par_F_H_HGrid_energy(set_ii,'SMS',set_pss)))$(set_side_fares_taxes(set_toSide_fares));

***Arbeitstarife Netzeinspeisung
***Kundentarife
***Energiefluss PSS->Grid
par_energyLinkTarif(set_ii,set_fromSide_fares,set_toSide_cust,'E',set_pss,set_grid_NS_E)$(set_pssOH(set_toSide_cust,set_pss)
and set_energyLink('E',set_pss,set_grid_NS_E)
and (set_tech_DES(set_pss) or set_load_DS(set_pss)))
=par_F_E_EGrid_energyinfeed(set_ii,set_fromSide_fares,set_pss);

***Arbeitstarif Reservevorhaltung
***Kundentarife
***Energiefluss PSS->RGrid
par_energyLinkTarif(set_ii,set_fromSide_fares,set_toSide_cust,'PR',set_pss,set_grid_NS_R)$(set_pssOH(set_toSide_cust,set_pss)
and set_energyLink('PR',set_pss,set_grid_NS_R)
and (set_tech_DES(set_pss) or set_load_DS(set_pss)))
=par_F_R_RGrid_pos(set_ii,set_fromSide_fares,set_pss);

par_energyLinkTarif(set_ii,set_fromSide_fares,set_toSide_cust,'NR',set_pss,set_grid_NS_R)$(set_pssOH(set_toSide_cust,set_pss)
and set_energyLink('NR',set_pss,set_grid_NS_R)
and (set_tech_DES(set_pss) or set_load_DS(set_pss)))
=par_F_R_RGrid_neg(set_ii,set_fromSide_fares,set_pss);

***Arbeitstarife Netzeinspeisung
***Geschäftsfeldtarife
***Energiefluss PSS->Grid
par_energyLinkTarif(set_ii,set_side_fares_int,set_fromSide_orga,'E',set_pss,set_grid_NS_E)$(set_pssOH(set_fromSide_orga,set_pss)
and set_energyLink('E',set_pss,set_grid_NS_E)
and (set_tech_SS(set_pss) or set_tech_DES(set_pss) or set_load_DS(set_pss)))
=par_F_E_EGrid_intenergyinfeed(set_ii,set_side_fares_int,set_pss);

par_energyLinkTarif(set_ii,set_side_fares_int,set_fromSide_orga,'W',set_pss,set_grid_NS_W)$(set_pssOH(set_fromSide_orga,set_pss)
and set_energyLink('W',set_pss,set_grid_NS_W)
and (set_tech_SS(set_pss) or set_tech_DES(set_pss) or set_load_DS(set_pss)))
=par_F_W_WGrid_intenergyinfeed(set_ii,set_side_fares_int,set_pss);

***Arbeitstarife Netzbezug
***Geschäftsfeldtarife
***Energiefluss Grid->PSS
par_energyLinkTarif(set_ii,set_fromSide_orga,set_side_fares_int,'E',set_grid_NS_E,set_pss)$(set_pssOH(set_fromSide_orga,set_pss)
and set_energyLink('E',set_grid_NS_E,set_pss)
and (set_tech_SS(set_pss) or set_tech_DES(set_pss) or set_load_DS(set_pss)))
=par_F_E_EGrid_intenergy(set_ii,set_side_fares_int,set_pss);

par_energyLinkTarif(set_ii,set_fromSide_orga,set_side_fares_int,'W',set_grid_NS_W,set_pss)$(set_pssOH(set_fromSide_orga,set_pss)
and set_energyLink('W',set_grid_NS_W,set_pss)
and (set_tech_SS(set_pss) or set_tech_DES(set_pss) or set_load_DS(set_pss)))
=par_F_W_WGrid_intenergy(set_ii,set_side_fares_int,set_pss);

par_energyLinkTarif(set_ii,set_fromSide_orga,set_side_fares_int,'G',set_grid_NS_G,set_pss)$(set_pssOH(set_fromSide_orga,set_pss)
and set_energyLink('G',set_grid_NS_G,set_pss)
and (set_tech_SS(set_pss) or set_tech_DES(set_pss) or set_load_DS(set_pss)))
=par_F_G_GGrid_intenergy(set_ii,set_side_fares_int,set_pss);

par_energyLinkTarif(set_ii,set_fromSide_orga,set_side_fares_int,'H',set_grid_NS_H,set_pss)$(set_pssOH(set_fromSide_orga,set_pss)
and set_energyLink('H',set_grid_NS_H,set_pss)
and (set_tech_SS(set_pss) or set_tech_DES(set_pss) or set_load_DS(set_pss)))
=par_F_H_HGrid_intenergy(set_ii,set_side_fares_int,set_pss);

***Arbeitstarif Reservevorhaltung
***Geschäftsfeldtarife
***Energiefluss PSS->RGrid
par_energyLinkTarif(set_ii,set_fromSide_orga,set_side_fares_int,'PR',set_pss,set_grid_NS_R)$(set_pssOH(set_fromSide_orga,set_pss)
and set_energyLink('PR',set_pss,set_grid_NS_R)
and (set_tech_SS(set_pss) or set_tech_DES(set_pss) or set_load_DS(set_pss)))
=par_F_R_RGrid_intpos(set_ii,set_side_fares_int,set_pss);

par_energyLinkTarif(set_ii,set_fromSide_orga,set_side_fares_int,'NR',set_pss,set_grid_NS_R)$(set_pssOH(set_fromSide_orga,set_pss)
and set_energyLink('NR',set_pss,set_grid_NS_R)
and (set_tech_SS(set_pss) or set_tech_DES(set_pss) or set_load_DS(set_pss)))
=par_F_R_RGrid_intneg(set_ii,set_side_fares_int,set_pss);

***Energiefluss PSS->RPool
par_energyLinkTarif(set_ii,set_fromSide_orga,set_side_fares_int,'PR',set_pss,set_market_MS_P)$(set_pssOH(set_fromSide_orga,set_pss)
and set_energyLink('PR',set_pss,set_market_MS_P)
and (set_tech_SS(set_pss) or set_tech_DES(set_pss) or set_load_DS(set_pss)))
=par_F_R_RGrid_intpos(set_ii,set_side_fares_int,set_pss);

par_energyLinkTarif(set_ii,set_fromSide_orga,set_side_fares_int,'NR',set_pss,set_market_MS_P)$(set_pssOH(set_fromSide_orga,set_pss)
and set_energyLink('NR',set_pss,set_market_MS_P)
and (set_tech_SS(set_pss) or set_tech_DES(set_pss) or set_load_DS(set_pss)))
=par_F_R_RGrid_intneg(set_ii,set_side_fares_int,set_pss);

***Arbeitstarife Energiemarkt
***Kundentarife und Geschäftsfeldtarife exkl. MwSt
***Energiefluss Markt->PSS
par_energyLinkTarif(set_ii,set_fromSide,'MS','E',set_market_MS_E,set_toPss)$(set_pssOH(set_fromSide,set_toPss)
and set_energyLink('E',set_market_MS_E,set_toPss)
and (set_tech_SS(set_toPss) or set_tech_DES(set_toPss) or set_grid_NS(set_toPss)))
=(par_C_MS_E(set_ii)+par_C_MS_E_SwissGrid(set_ii))*(1 + sca_X_MS_EUR_C_E*(sca_exchange_MS-1));

***Energiefluss PSS->PSS
***inkl. Arbeitstarife Relative Kosten
par_energyLinkTarif(set_ii,set_fromSide,'MS','E',set_fromPss,set_toPss)$(set_pssOH(set_fromSide,set_fromPss)
and set_energyLink('E',set_fromPss,set_toPss)
and (set_tech_SS(set_toPss) or set_tech_DES(set_toPss) or set_grid_NS(set_toPss)))
=par_energyLinkTarif(set_ii,set_fromSide,'MS','E',set_fromPss,set_toPss)
+par_Emis_pss_CO2(set_fromPss)*par_C_MS_GC(set_ii)*(1+sca_X_MS_EUR_C_GC*(sca_exchange_MS-1));

par_energyLinkTarif(set_ii,set_fromSide,'MS','W',set_market_MS_W,set_toPss)$(set_pssOH(set_fromSide,set_toPss)
and set_energyLink('W',set_market_MS_W,set_toPss)
and (set_tech_SS(set_toPss) or set_tech_DES(set_toPss) or set_grid_NS(set_toPss)))
=par_C_MS_W(set_ii)*(1 + sca_X_MS_EUR_C_W*(sca_exchange_MS-1))
+par_Emis_pss_CO2(set_toPss)*par_C_MS_CO2(set_ii)*(1+sca_X_MS_EUR_C_GC*(sca_exchange_MS-1));

par_energyLinkTarif(set_ii,set_fromSide,'MS','C',set_market_MS_C,set_toPss)$(set_pssOH(set_fromSide,set_toPss)
and set_energyLink('C',set_market_MS_C,set_toPss)
and (set_tech_SS(set_toPss) or set_tech_DES(set_toPss) or set_grid_NS(set_toPss)))
=par_C_MS_Cool(set_ii)*(1 + sca_X_MS_EUR_C_Cool*(sca_exchange_MS-1))
+par_Emis_pss_CO2(set_toPss)*par_C_MS_CO2(set_ii)*(1+sca_X_MS_EUR_C_GC*(sca_exchange_MS-1));

par_energyLinkTarif(set_ii,set_fromSide,'MS','G',set_market_MS_G,set_toPss)$(set_pssOH(set_fromSide,set_toPss)
and set_energyLink('G',set_market_MS_G,set_toPss)
and (set_load_DS(set_toPss) or set_tech_SS(set_toPss) or set_tech_DES(set_toPss) or set_grid_NS(set_toPss)))
=par_C_MS_fuel(set_ii)*(1 + sca_X_MS_EUR_C_fuel*(sca_exchange_MS-1))
+par_Emis_pss_CO2(set_toPss)*par_C_MS_CO2(set_ii)*(1+sca_X_MS_EUR_C_GC*(sca_exchange_MS-1));

par_energyLinkTarif(set_ii,set_fromSide,'MS','G',set_market_MS_H,set_toPss)$(set_pssOH(set_fromSide,set_toPss)
and set_energyLink('G',set_market_MS_H,set_toPss)
and (set_load_DS(set_toPss) or set_tech_SS(set_toPss) or set_tech_DES(set_toPss) or set_grid_NS(set_toPss)))
=par_C_MS_fuel(set_ii)*(1 + sca_X_MS_EUR_C_fuel*(sca_exchange_MS-1))
+par_Emis_pss_CO2(set_toPss)*par_C_MS_CO2(set_ii)*(1+sca_X_MS_EUR_C_HC*(sca_exchange_MS-1));

par_energyLinkTarif(set_ii,set_fromSide,'MS','HC',set_market_MS_G,set_toPss)$(set_pssOH(set_fromSide,set_toPss)
and set_energyLink('HC',set_market_MS_G,set_toPss)
and (set_tech_SS(set_toPss) or set_tech_DES(set_toPss)))
=par_C_MS_HC(set_ii)*(1 + sca_X_MS_EUR_C_HC*(sca_exchange_MS-1))
+par_Emis_pss_CO2(set_toPss)*par_C_MS_CO2(set_ii)*(1+sca_X_MS_EUR_C_GC*(sca_exchange_MS-1));

par_energyLinkTarif(set_ii,set_fromSide,'MS','L',set_market_MS_L,set_toPss)$(set_pssOH(set_fromSide,set_toPss)
and set_energyLink('L',set_market_MS_L,set_toPss)
and (set_tech_SS(set_toPss) or set_tech_DES(set_toPss)))
=par_C_MS_L(set_ii)*(1 + sca_X_MS_EUR_C_L*(sca_exchange_MS-1))
+par_Emis_pss_CO2(set_toPss)*par_C_MS_CO2(set_ii)*(1+sca_X_MS_EUR_C_GC*(sca_exchange_MS-1));

par_energyLinkTarif(set_ii,'MS',set_fromSide,'RF',set_market_MS_RF,set_toPss)$(set_pssOH(set_fromSide,set_toPss)
and set_energyLink('RF',set_market_MS_RF,set_toPss)
and (set_tech_SS(set_toPss) or set_tech_DES(set_toPss)))
=par_C_MS_RF(set_ii)*(1 + sca_X_MS_EUR_C_RF*(sca_exchange_MS-1));

par_energyLinkTarif(set_ii,set_fromSide,'MS','O',set_market_MS_O,set_toPss)$(set_pssOH(set_fromSide,set_toPss)
and set_energyLink('O',set_market_MS_O,set_toPss)
and (set_tech_SS(set_toPss) or set_tech_DES(set_toPss)))
=par_C_MS_O(set_ii)*(1 + sca_X_MS_EUR_C_O*(sca_exchange_MS-1))
+par_Emis_pss_CO2(set_toPss)*par_C_MS_CO2(set_ii)*(1+sca_X_MS_EUR_C_GC*(sca_exchange_MS-1));

par_energyLinkTarif(set_ii,set_fromSide,'MS','B','SBMarket',set_toPss)$(set_pssOH(set_fromSide,set_toPss)
and set_energyLink('B','SBMarket',set_toPss)
and (set_tech_SS(set_toPss) or set_tech_DES(set_toPss)))
=par_C_MS_B_s(set_ii)*(1 + sca_X_MS_EUR_C_B*(sca_exchange_MS-1))
+par_Emis_pss_CO2(set_toPss)*par_C_MS_CO2(set_ii)*(1+sca_X_MS_EUR_C_GC*(sca_exchange_MS-1));

par_energyLinkTarif(set_ii,set_fromSide,'MS','B','LBMarket',set_toPss)$(set_pssOH(set_fromSide,set_toPss)
and set_energyLink('B','LBMarket',set_toPss)
and (set_tech_SS(set_toPss) or set_tech_DES(set_toPss)))
=par_C_MS_B_l(set_ii)*(1 + sca_X_MS_EUR_C_B*(sca_exchange_MS-1))
+par_Emis_pss_CO2(set_toPss)*par_C_MS_CO2(set_ii)*(1+sca_X_MS_EUR_C_GC*(sca_exchange_MS-1));

par_energyLinkTarif(set_ii,set_fromSide,'MS','B','GBMarket',set_toPss)$(set_pssOH(set_fromSide,set_toPss)
and set_energyLink('B','GBMarket',set_toPss)
and (set_tech_SS(set_toPss) or set_tech_DES(set_toPss)))
=par_C_MS_B_g(set_ii)*(1 + sca_X_MS_EUR_C_B*(sca_exchange_MS-1))
+par_Emis_pss_CO2(set_toPss)*par_C_MS_CO2(set_ii)*(1+sca_X_MS_EUR_C_GC*(sca_exchange_MS-1));

***Arbeitstarife Energiemarkt
***Kundentarife inkl. Mehrwertsteuer
***Energiefluss Markt->PSS
par_energyLinkTarif(set_ii,set_fromSide_cust,'PS',set_sector,set_market_MS,set_toPss)$(set_pssOH(set_fromSide_cust,set_toPss)
and set_energyLink(set_sector,set_market_MS,set_toPss)
and (set_tech_DES(set_toPss) or set_load_DS(set_toPss)))
=sca_Tax_PS_vat*par_energyLinkTarif(set_ii,set_fromSide_cust,'MS',set_sector,set_market_MS,set_toPss);

***Arbeitstarife Energiemarkt
***Energiefluss PSS->Markt
par_energyLinkTarif(set_ii,'MS',set_fromSide,'E',set_fromPss,set_market_MS_E)$(set_pssOH(set_fromSide,set_fromPss)
and set_energyLink('E',set_fromPss,set_market_MS_E)
and not set_market_MS(set_fromPss))
=par_C_MS_E(set_ii)*(1+sca_X_MS_EUR_C_E*(sca_exchange_MS-1));

par_energyLinkTarif(set_ii,'MS',set_fromSide,'W',set_fromPss,set_market_MS_W)$(set_pssOH(set_fromSide,set_fromPss)
and set_energyLink('W',set_fromPss,set_market_MS_W)
and not set_market_MS(set_fromPss))
=par_C_MS_W_sale(set_ii)*(1 + sca_X_MS_EUR_C_W*(sca_exchange_MS-1));

***Arbeitstarife Energiemarkt / Gasabgabe
***Energiefluss Markt->PSS
par_energyLinkTarif(set_ii,set_fromSide,'MS','G',set_grid_NS_G,set_load_DS_G)$(set_pssOH(set_fromSide,set_grid_NS_G)
and set_energyLink('G',set_grid_NS_G,set_load_DS_G))
=par_C_MS_CO2(set_ii)*0.2*(1 +sca_X_MS_EUR_C_CO2*(sca_exchange_MS-1));

par_energyLinkTarif(set_ii,set_fromSide,'MS','G',set_grid_NS_G,set_tech_DES_NGB)$(set_pssOH(set_fromSide,set_grid_NS_G)
and set_energyLink('G',set_grid_NS_G,set_tech_DES_NGB))
=par_C_MS_CO2(set_ii)*0.2*(1 +sca_X_MS_EUR_C_CO2*(sca_exchange_MS-1));

par_energyLinkTarif(set_ii,set_fromSide,'MS','G',set_grid_NS_G,set_tech_DES_CHP)$(set_pssOH(set_fromSide,set_grid_NS_G)
and set_energyLink('G',set_grid_NS_G,set_tech_DES_CHP))
=par_C_MS_CO2(set_ii)*0.2*(1 +sca_X_MS_EUR_C_CO2*(sca_exchange_MS-1));
*0.2 = Erdgas Emissionsfaktor http://www.prima-klima-weltweit.de/co2/kompens-berechnen.php

***Arbeitstarife Reservemarkt
***Energiefluss RPool->RMarket
par_energyLinkTarif(set_ii,'MS',set_fromSide_orga,'PR',set_market_MS_P,set_market_MS_R)$(set_pssOH(set_fromSide_orga,set_market_MS_P)
and set_energyLink('PR',set_market_MS_P,set_market_MS_R))
=par_R_MS_RMarket(set_ii,'PR',set_market_MS_R)*(1 + sca_X_MS_EUR_R_pri*(sca_exchange_MS-1));

par_energyLinkTarif(set_ii,'MS',set_fromSide_orga,'NR',set_market_MS_P,set_market_MS_R)$(set_pssOH(set_fromSide_orga,set_market_MS_P)
and set_energyLink('NR',set_market_MS_P,set_market_MS_R))
=par_R_MS_RMarket(set_ii,'NR',set_market_MS_R)*(1 + sca_X_MS_EUR_R_pri*(sca_exchange_MS-1));

***Strafe für Thermischen Über- und Unterdeckung
***Kundentarif
***Energiefluss Market->Load
par_energyLinkTarif(set_ii,set_fromSide_cust,'MS','W','WMarket',set_load_DS_W)$(set_pssOH(set_fromSide_cust,set_load_DS_W)
and set_energyLink('W','WMarket',set_load_DS_W))
=10000001;

***Leistungstarife Netzbezug
par_powerLinkTarif(set_jj,set_power_E,set_fromSide,set_toSide_fares)$(par_OH_DS_powerE_side(set_fromSide,set_power_E)=1)
=par_F_E_EGrid_capacity(set_toSide_fares,set_power_E)
+(sca_Tax_PS_vat*(par_F_E_EGrid_capacity('SMS',set_power_E)
+par_F_E_EGrid_capacity('NS',set_power_E)))$(set_side_fares_taxes(set_toSide_fares));

par_powerLinkTarif(set_jj,set_power_W,set_fromSide,set_toSide_fares)$(par_OH_DS_powerW_side(set_fromSide,set_power_W)=1)
=par_F_W_WGrid_capacity(set_toSide_fares,set_power_W)
+(sca_Tax_PS_vat*(par_F_W_WGrid_capacity('SMS',set_power_W)
+par_F_W_WGrid_capacity('NS',set_power_W)))$(set_side_fares_taxes(set_toSide_fares));

par_powerLinkTarif(set_jj,set_power_G,set_fromSide,set_toSide_fares)$(par_OH_DS_powerG_side(set_fromSide,set_power_G)=1)
=par_F_G_GGrid_capacity(set_toSide_fares,set_power_G)
+(sca_Tax_PS_vat*(par_F_G_GGrid_capacity('SMS',set_power_G)
+par_F_G_GGrid_capacity('NS',set_power_G)))$(set_side_fares_taxes(set_toSide_fares));

***Leistungstarif Kosten Netzanschlusspunkt
par_powerLinkTarif(set_jj,set_power_E_MS,set_fromSide,'MS')$(set_pssOH(set_fromSide,'EMarket'))
=sca_C_MS_P_SwissGrid*(1 + sca_X_MS_EUR_C_E *(sca_exchange_MS-1));;

par_powerLinkTarif(set_jj,set_power_G_MS,set_fromSide,'MS')$(set_pssOH(set_fromSide,'GMarket'))
=sca_C_MS_B*(1 + sca_X_MS_EUR_C_fuel *(sca_exchange_MS-1));;


