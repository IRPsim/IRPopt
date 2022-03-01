* - description: Prosumstorer
* - type: String
* - identifier: Prosumstorer
* - default:
* - hidden: 1
SET set_pss(*) Prosumstorer
$LOAD set_pss

* - description: Leistungsmessung
* - type: String
* - identifier: Leistungsmessung
* - default:
* - hidden: 1
SET set_power(*) Leistungsmessung
$LOAD set_power

* - description: Marktteilnehmer
* - type: String
* - identifier: Marktteilnehmer
* - default:
* - hidden: 1
SET set_side(*) Gesch�ftsfeld
$LOAD set_side

* - description: Kundengruppe
* - type: String
* - identifier: Kundengruppe
* - default:
* - hidden:
* - shape: pentagon
SET set_side_cust(set_side) Kundengruppe
$LOAD set_side_cust

* - description: Gesch�ftsfeld
* - type: String
* - identifier: Gesch�ftsfeld
* - default: SMS, NS, SS, TS, DES
* - hidden: 1
* - shape: hexagon
SET set_side_orga(set_side) Gesch�ftsfelder Organisation
$LOAD set_side_orga

* - description: Institution
* - type: String
* - identifier: Institution
* - default: MS, PS
* - hidden:
SET set_side_other(set_side) Institution
$LOAD set_side_other

* - description: Marktteilnehmer
* - type: String
* - identifier: Marktteilnehmer
SET set_side_opt(set_side) Marktteilnehmer
$LOAD set_side_opt

* - description: Tarifteilnehmer
* - type: String
* - identifier: Tarifteilnehmer
* - default: SMS, NS, PS
* - hidden: 1
SET set_side_fares(set_side) Tarifteilnehmer
$LOAD set_side_fares

* - description: Tarifteilnehmer
* - type: String
* - identifier: Tarifteilnehmer
* - default: SMS, NS, SS, TS, DES, MS, PS
* - hidden: 1
SET set_side_fares_int(set_side) Tarifteilnehmer
$LOAD set_side_fares_int

* - description: Energiesektor
* - type: String
* - identifier: Energiesektor
* - default:
* - hidden: 1
SET set_sector(*) Energiesektor
$LOAD set_sector

* - description: Stromsektor
* - type: String
* - identifier: Stromsektor
* - default: E
* - hidden: 1
* - shape: circle
* - icon: icons/flash.svg
SET set_sector_E(set_sector) Energiesektoren
$LOAD set_sector_E

* - description: W�rmesektor
* - type: String
* - identifier: W�rmesektor
* - default: W
* - hidden: 1
* - shape: circle
* - icon: icons/heat.svg
SET set_sector_W(set_sector) Energiesektoren
$LOAD set_sector_W

* - description: Gassektor
* - type: String
* - identifier: Gassektor
* - default: G
* - hidden: 1
* - shape: circle
* - icon: icons/flame.svg
SET set_sector_G(set_sector) Energiesektoren
$LOAD set_sector_G

* - description: Reservesektor
* - type: String
* - identifier: Reservesektor
* - default: PR
* - hidden: 1
* - shape: circle
* - icon: icons/Reserve.svg
SET set_sector_PR(set_sector) Energiesektoren
$LOAD set_sector_PR

* - description: Reservesektor
* - type: String
* - identifier: Reservesektor
* - default: NR
* - hidden: 1
* - shape: circle
* - icon: icons/Reserve.svg
SET set_sector_NR(set_sector) Energiesektoren
$LOAD set_sector_NR

* - description: �lsektor
* - type: String
* - identifier: �lsektor
* - default: O
* - hidden: 1
* - shape: circle
* - icon: icons/oil_drum.svg
SET set_sector_O(set_sector) Energiesektoren
$LOAD set_sector_O

* - description: Biomassesektor
* - type: String
* - identifier: Biomassesektor
* - default: B
* - hidden: 1
* - shape: circle
* - icon: icons/bio_mass_eco_energy.svg
SET set_sector_B(set_sector) Energiesektoren
$LOAD set_sector_B

* - description: Abfallsektor
* - type: String
* - identifier: Abfallsektor
* - default: RF
* - hidden: 1
SET set_sector_RF(set_sector) Energiesektoren
$LOAD set_sector_RF

* - description: Holzsektor
* - type: String
* - identifier: Holzsektor
* - default: T
* - hidden: 1
SET set_sector_T(set_sector) Energiesektoren
$LOAD set_sector_T

* - description: K�ltesektor
* - type: String
* - identifier: K�ltesektor
* - default: C
* - hidden: 1
* - shape: circle
* - icon: icons/snowflake.svg
SET set_sector_C(set_sector) Energiesektoren
$LOAD set_sector_C

* - description: Braunkohlesektor
* - type: String
* - identifier: Braunkohlesektor
* - default: L
* - hidden: 1
* - shape: circle
* - icon: icons/coal.svg
SET set_sector_L(set_sector) Energiesektoren
$LOAD set_sector_L

* - description: Steinkohlesektor
* - type: String
* - identifier: Steinkohlesektor
* - default: HC
* - hidden: 1
* - shape: circle
* - icon: icons/coal_black.svg
SET set_sector_HC(set_sector) Energiesektoren
$LOAD set_sector_HC

* - description: Wasserstoffsektor
* - type: String
* - identifier: Wasserstoffsektor
* - default: H
* - hidden: 1
* - shape: circle
* - icon: icons/flame.svg
SET set_sector_H(set_sector) Energiesektoren
$LOAD set_sector_H

* - description: Wassersektor
* - type: String
* - identifier: Wassersektor
* - default:
* - hidden: 1
* - shape: circle
* - icon: icons/drop.svg
SET set_sector_A(set_sector) Energiesektoren
$LOAD set_sector_A

* - description: Chlorgassektor
* - type: String
* - identifier: Chlorgassektor
* - default: CL
* - hidden: 1
* - shape: circle
* - icon: icons/Cl2.svg
SET set_sector_CL(set_sector) Energiesektoren
$LOAD set_sector_CL


* - description: Natriumchlorid
* - type: String
* - identifier: Natriumchlorid
* - default: NC
* - hidden: 1
* - shape: circle
* - icon: icons/drop.svg
SET set_sector_NC(set_sector) Energiesektoren
$LOAD set_sector_NC

* - description: Natriumhydroxid
* - type: String
* - identifier: Natriumhydroxid
* - default: NO
* - hidden: 1
* - shape: circle
* - icon: icons/drop.svg
SET set_sector_NO(set_sector) Energiesektoren
$LOAD set_sector_NO


* - description: Kohlenstoffdioxid
* - type: String
* - identifier: Kohlenstoffdioxid
* - default: CO
* - hidden: 1
* - shape: circle
* - icon: icons/drop.svg
SET set_sector_CO(set_sector) Energiesektoren
$LOAD set_sector_CO

* - description: Sauerstoff
* - type: String
* - identifier: Sauerstoff
* - default: O2
* - hidden: 1
* - shape: circle
* - icon: icons/drop.svg
SET set_sector_OZ(set_sector) Energiesektoren
$LOAD set_sector_OZ

* - description: Flexibilit�tssektor
* - type: String
* - identifier: Flexibilit�tssektor
* - default: PF
* - hidden: 1
* - shape: circle
* - icon: icons/Reserve.svg
SET set_sector_PF(set_sector) Energiesektoren
$LOAD set_sector_PF

* - description: Flexibilit�tssektor
* - type: String
* - identifier: Flexibilit�tssektor
* - default: NF
* - hidden: 1
* - shape: circle
* - icon: icons/Reserve.svg
SET set_sector_NF(set_sector) Energiesektoren
$LOAD set_sector_NF

* - description: �bertragungsnetz
* - type: String
* - identifier: �bertragungsnetz
* - default:
* - hidden: 1
SET set_grid_NS(set_pss) �bertragungsnetz
$LOAD set_grid_NS

* - description: �bertragungsnetz
* - type: String
* - identifier: �bertragungsnetz
* - default:
* - hidden: 1
SET set_grid_NSTRA(set_grid_NS) �bertragungsnetz
$LOAD set_grid_NSTRA

* - description: Stromnetz
* - type: String
* - identifier: Stromnetz
* - default: EGrid
* - hidden: 1
* - shape: hexagon
* - icon: icons/electric_tower.svg
SET set_grid_NS_E(set_grid_NSTRA) Stromnetz
$LOAD set_grid_NS_E

* - description: W�rmenetz
* - type: String
* - identifier: W�rmenetz
* - default: WGrid
* - hidden: 1
* - shape: hexagon
* - icon: icons/heat_grid_2.svg
SET set_grid_NS_W(set_grid_NSTRA) W�rmenetz
$LOAD set_grid_NS_W

* - description: Gasnetz
* - type: String
* - identifier: Gasnetz
* - default: GGrid
* - hidden: 1
* - shape: hexagon
* - icon: icons/industrial_pipe.svg
SET set_grid_NS_G(set_grid_NSTRA) Gasnetz
$LOAD set_grid_NS_G

* - description: Wasserstoffnetz
* - type: String
* - identifier: Wasserstoffnetz
* - default: HGrid
* - hidden: 1
* - shape: hexagon
* - icon: icons/valve.svg
SET set_grid_NS_H(set_grid_NSTRA) Gasnetz
$LOAD set_grid_NS_H

* - description: Reservenetz
* - type: String
* - identifier: Reservenetz
* - default: RGrid
* - hidden: 1
* - shape: hexagon
* - icon: icons/reserve_grid.svg
SET set_grid_NS_R(set_grid_NSTRA) Reservenetz
$LOAD set_grid_NS_R

* - description: Flexibilit�tsnetz
* - type: String
* - identifier: Flexibilit�tsnetz
* - default: FGrid
* - hidden: 1
* - shape: hexagon
* - icon: icons/reserve_grid.svg
SET set_grid_NS_F(set_grid_NSTRA) Reservenetz
$LOAD set_grid_NS_F

* - description: K�ltenetz
* - type: String
* - identifier: K�ltenetz
* - default: CGrid
* - hidden: 1
* - shape: hexagon
* - icon: icons/cooling_grid_2.svg
SET set_grid_NS_C(set_grid_NSTRA) K�ltenetz
$LOAD set_grid_NS_C

* - description: Lastgang
* - type: String
* - identifier: Lastgang
* - hidden: 1
SET set_load_DS(set_pss) Lastgang
$LOAD set_load_DS

* - description: Verbrauchertechnologie
* - type: String
* - identifier: Verbrauchertechnologie
* - hidden: 1
SET set_load_DSLOA(set_load_DS) Verbrauchertechnologien
$LOAD set_load_DSLOA

* - description: Strom-Verbrauchertechnologie
* - type: String
* - identifier: Strom-Verbrauchertechnologie
* - shape: octagon
* - icon: icons/plug_and_plug_connection.svg
SET set_load_DS_E(set_load_DSLOA) Verbrauchertechnologien
$LOAD set_load_DS_E

* - description: W�rme-Verbrauchertechnologie
* - type: String
* - identifier: W�rme-Verbrauchertechnologien
* - shape: octagon
* - icon: icons/heating_black_tool.svg
SET set_load_DS_W(set_load_DSLOA) Verbrauchertechnologien
$LOAD set_load_DS_W

* - description: Erdgas-Verbrauchertechnologien
* - type: String
* - identifier: Erdgas-Verbrauchertechnologien
* - shape: octagon
* - icon: icons/stove.svg
SET set_load_DS_G(set_load_DSLOA) Verbrauchertechnologien
$LOAD set_load_DS_G

* - description: Wasserstoff-Verbrauchertechnologien
* - type: String
* - identifier: Wasserstoff-Verbrauchertechnologien
* - shape: octagon
* - icon: icons/ecologic_fuel.svg
SET set_load_DS_H(set_load_DSLOA) Verbrauchertechnologien
$LOAD set_load_DS_H

* - description: K�lte-Verbrauchertechnologie
* - type: String
* - identifier: K�lte-Verbrauchertechnologie
* - shape: octagon
* - icon: icons/fridge.svg
SET set_load_DS_C(set_load_DSLOA) Verbrauchertechnologien
$LOAD set_load_DS_C

* - description: Chlor-Verbrauchertechnologie
* - type: String
* - identifier: Chlor-Verbrauchertechnologie
* - shape: octagon
* - icon: icons/fridge.svg
SET set_load_DS_CL(set_load_DSLOA) Verbrauchertechnologien
$LOAD set_load_DS_CL

* - description: Energiemarkt
* - type: String
* - identifier: Energiemarkt
* - default:
* - hidden: 1
SET set_market_MS(set_pss) Energiemarkt
$LOAD set_market_MS

* - description: Reservepool
* - type: String
* - identifier: Reservepool
* - default: PRPool, SRPool, TRPool, FXPool
* - hidden: 1
SET set_market_MS_P(set_market_MS) Reservepool
$LOAD set_market_MS_P

* - description: Energiemarkt
* - type: String
* - identifier: Energiemarkt
* - default:
* - hidden: 1
SET set_market_MSPHY(set_market_MS) Energiemarkt
$LOAD set_market_MSPHY

* - description: Strommarkt
* - type: String
* - identifier: Strommarkt
* - default: EMarket
* - hidden: 1
* - shape: gear
* - icon: icons/spot_market.svg
SET set_market_MS_E(set_market_MSPHY) Strommarkt
$LOAD set_market_MS_E

* - description: W�rmemarkt
* - type: String
* - identifier: W�rmemarkt
* - default: WMarket
* - hidden: 1
* - shape: gear
* - icon: icons/heat.svg
SET set_market_MS_W(set_market_MSPHY) W�rmemarkt
$LOAD set_market_MS_W

* - description: Gasmarkt
* - type: String
* - identifier: Gasmarkt
* - default: GMarket
* - hidden: 1
* - shape: gear
* - icon: icons/gas_market.svg
SET set_market_MS_G(set_market_MSPHY) Gasmarkt
$LOAD set_market_MS_G

* - description: Reservemarkt
* - type: String
* - identifier: Reservemarkt
* - default: PPRMarket, PSRMarket, PTRMarket, NPRMarket, NSRMarket, NTRMarket, FXPMarket, FXNMarket
* - hidden: 1
* - shape: gear
* - icon: icons/reserve_market.svg
SET set_market_MS_R(set_market_MSPHY) Reservemarkt
$LOAD set_market_MS_R

* - description: �lmarkt
* - type: String
* - identifier: �lmarkt
* - default: OMarket
* - hidden: 1
* - shape: gear
* - icon: icons/oil_market.svg
SET set_market_MS_O(set_market_MSPHY) �lmarkt
$LOAD set_market_MS_O

* - description: Biomassemarkt
* - type: String
* - identifier: Biomassemarkt
* - default: LBMarket, SBMarket, GBMarket
* - hidden: 1
* - shape: gear
* - icon: icons/biomass_market.svg
SET set_market_MS_B(set_market_MSPHY) Biomassemarkt
$LOAD set_market_MS_B

* - description: Abfallmarkt
* - type: String
* - identifier: Abfallmarkt
* - default: RFMarket
* - hidden: 1
* - shape: gear
* - icon: icons/wiping-trash.svg
SET set_market_MS_RF(set_market_MSPHY) Abfallmarkt
$LOAD set_market_MS_RF

* - description: K�ltemarkt
* - type: String
* - identifier: K�ltemarkt
* - default: CMarket
* - hidden: 1
* - shape: gear
* - icon: icons/snowflake.svg
SET set_market_MS_C(set_market_MSPHY) K�ltemarkt
$LOAD set_market_MS_C

* - description: Steinkohlemarkt
* - type: String
* - identifier: Steinkohlemarkt
* - default: HCMarket
* - hidden: 1
* - shape: gear
* - icon: icons/hard_coal_market.svg
SET set_market_MS_HC(set_market_MSPHY) Steinkohlemarkt
$LOAD set_market_MS_HC

* - description: Braunkohlemarkt
* - type: String
* - identifier: Braunkohlemarkt
* - default: LMarket
* - hidden: 1
* - shape: gear
* - icon: icons/lignite_market.svg
SET set_market_MS_L(set_market_MSPHY) Braunkohlemarkt
$LOAD set_market_MS_L

* - description: Wasserstoffmarkt
* - type: String
* - identifier: Wasserstoffmarkt
* - default: HMarket
* - hidden: 1
* - shape: gear
* - icon: icons/gas_market.svg
SET set_market_MS_H(set_market_MSPHY) Gasmarkt
$LOAD set_market_MS_H

* - description: Chemischer-Stoffmarkt
* - type: String
* - identifier: Chemischer-Stoffmarkt
* - default: CLMarket
* - hidden: 1
* - shape: gear
* - icon: icons/gas_market.svg
SET set_market_MS_CL(set_market_MSPHY) Gasmarkt
$LOAD set_market_MS_CL

* - description: Zentrale Energietechnologie
* - type: String
* - identifier: Zentrale Energietechnologie
* - hidden: 1
SET set_tech_SS(set_pss) Erzeugertechnologie
$LOAD set_tech_SS

* - description: Erzeugertechnologie
* - type: String
* - identifier: Erzeugertechnologie
* - hidden: 1
SET set_tech_SSGEN(set_tech_SS) Erzeugertechnologie
$LOAD set_tech_SSGEN

* - description: Dezentrale Energietechnologie
* - type: String
* - identifier: Dezentrale Energietechnologie
* - hidden: 1
SET set_tech_DES(set_pss) Erzeugertechnologie
$LOAD set_tech_DES

* - description: Erzeugertechnologie
* - type: String
* - identifier: Erzeugertechnologie
* - hidden: 1
SET set_tech_DEGEN(set_tech_DES) Erzeugertechnologie
$LOAD set_tech_DEGEN

* - description: Speichertechnologie
* - type: String
* - identifier: Speichertechnologie
* - hidden: 1
SET set_tech_DESTO(set_tech_DES) Speichertechnologie
$LOAD set_tech_DESTO

* - description: Stromspeicher
* - type: String
* - identifier: Stromspeicher
* - shape: diamond
* - icon: icons/car_battery.svg
SET set_tech_DES_ES(set_tech_DESTO) Stromspeicher
$LOAD set_tech_DES_ES

* - description: W�rmespeicher
* - type: String
* - identifier: W�rmespeicher
* - shape: diamond
* - icon: icons/heat_reservoir.svg
SET set_tech_DES_TS(set_tech_DESTO) W�rmespeicher
$LOAD set_tech_DES_TS

* - description: K�ltespeicher
* - type: String
* - identifier: K�ltespeicher
* - shape: diamond
* - icon: icons/cold_ice_cubes.svg
SET set_tech_DES_CS(set_tech_DESTO) K�ltespeicher
$LOAD set_tech_DES_CS

* - description: Gasspeicher
* - type: String
* - identifier: Gasspeicher
* - shape: diamond
* - icon: icons/gas_storage.svg
SET set_tech_DES_GS(set_tech_DESTO) Gasspeicher
$LOAD set_tech_DES_GS

* - description: Chlorspeicher
* - type: String
* - identifier: Chlorspeicher
* - shape: diamond
* - icon: icons/gas_storage.svg
SET set_tech_DES_CLS(set_tech_DESTO) Chlorspeicher
$LOAD set_tech_DES_CLS

* - description: Wasserstoffspeicher
* - type: String
* - identifier: Wasserstoffspeicher
* - shape: diamond
* - icon: icons/gas_storage.svg
SET set_tech_DES_HS(set_tech_DESTO) Wasserstoffspeicher
$LOAD set_tech_DES_HS

* - description: Heizkessel
* - type: String
* - identifier: Heizkessel
* - shape: square
* - icon: icons/water_heater.svg
SET set_tech_DES_NGB(set_tech_DEGEN) Heizkessel
$LOAD set_tech_DES_NGB

* - description: Durchlauferhitzer
* - type: String
* - identifier: Durchlauferhitzer
* - shape: square
* - icon: icons/water_heater.svg
SET set_tech_DES_EB(set_tech_DEGEN) Durchlauferhitzer
$LOAD set_tech_DES_EB

* - description: W�rmepumpe
* - type: String
* - identifier: W�rmepumpe
* - shape: square
* - icon: icons/home.svg
SET set_tech_DES_HP(set_tech_DEGEN) W�rmepumpen
$LOAD set_tech_DES_HP

* - description: Solarthermie-Anlage
* - type: String
* - identifier: Solarthermie-Anlage
* - shape: square
* - icon: icons/solar_system.svg
SET set_tech_DES_ST(set_tech_DEGEN) Solarthermie-Anlage
$LOAD set_tech_DES_ST

* - description: Kraft-W�rme-Kopplungsanlage
* - type: String
* - identifier: Kraft-W�rme-Kopplungsanlage
* - shape: square
* - icon: icons/water-heater_2.svg
SET set_tech_DES_CHP(set_tech_DEGEN) Kraft-W�rme-Kopplungsanlage
$LOAD set_tech_DES_CHP

* - description: Elektrolyseur
* - type: String
* - identifier: Elektrolyseur
* - shape: square
* - icon: icons/hydrogen.svg
SET set_tech_DES_EY(set_tech_DEGEN) Elektrolyseur
$LOAD set_tech_DES_EY

* - description: Brennstoffzelle
* - type: String
* - identifier: Brennstoffzelle
* - shape: square
* - icon: icons/electrolysis.svg
SET set_tech_DES_FC(set_tech_DEGEN) Brennstoffzelle
$LOAD set_tech_DES_FC

* - description: Geothermie-Anlage
* - type: String
* - identifier: Geothermie-Anlage
* - shape: square
SET set_tech_DES_GTP(set_tech_DES) Geothermie-Anlage
$LOAD set_tech_DES_GTP

* - description: Kompressionsk�ltemaschine
* - type: String
* - identifier: Kompressionsk�ltemaschine
* - shape: square
* - icon: icons/freezer.svg
SET set_tech_DES_CR(set_tech_DEGEN) K�ltemaschine
$LOAD set_tech_DES_CR

* - description: Absorptionsk�ltemaschine
* - type: String
* - identifier: Absorptionsk�ltemaschine
* - shape: square
* - icon: icons/freezer.svg
SET set_tech_DES_SC(set_tech_DEGEN) K�ltemaschine
$LOAD set_tech_DES_SC

* - description: PV-Anlage
* - type: String
* - identifier: PV-Anlage
* - shape: square
* - icon: icons/solar_energy.svg
SET set_tech_DES_PV(set_tech_DEGEN) PV-Anlage
$LOAD set_tech_DES_PV

* - description: Windkraftanlage
* - type: String
* - identifier: Windkraftanlage
* - shape: square
* - icon: icons/wind_turbine.svg
SET set_tech_SS_WT(set_tech_SSGEN) Windkraftanlage
$LOAD set_tech_SS_WT

* - description: Kraft-W�rme-Kopplungsanlage
* - type: String
* - identifier: Kraft-W�rme-Kopplungsanlage
* - shape: square
* - icon: icons/factory_CHP.svg
SET set_tech_SS_CHP(set_tech_SSGEN) Kraft-W�rme-Kopplungsanlage
$LOAD set_tech_SS_CHP

* - description: Laufwasserkraftwerk
* - type: String
* - identifier: Laufwasserkraftwerk
* - shape: square
* - icon: icons/hydro_power_generation.svg
SET set_tech_SS_RH(set_tech_SSGEN) Laufwasserkraftwerke
$LOAD set_tech_SS_RH

* - description: PV-Anlage
* - type: String
* - identifier: PV-Anlage
* - shape: square
* - icon: icons/solar_energy.svg
SET set_tech_SS_PV(set_tech_SSGEN) PV-Anlage
$LOAD set_tech_SS_PV

* - description: M�llverwertungsanlage
* - type: String
* - identifier: M�llverwertungsanlage
* - shape: square
* - icon: icons/power-plant.svg
SET set_tech_SS_RC(set_tech_SSGEN) M�llverwertungsanlage
$LOAD set_tech_SS_RC

* - description: Kondensationskraftwerk
* - type: String
* - identifier: Kondensationskraftwerk
* - shape: square
* - icon: icons/factory_2.svg
SET set_tech_SS_TPS(set_tech_SSGEN) Kondensationskraftwerk
$LOAD set_tech_SS_TPS

* - description: Elektrodenheizkessel
* - type: String
* - identifier: Elektrodenheizkessel
SET set_tech_SS_ETB(set_tech_SS) Elektrodenheizkessel
$LOAD set_tech_SS_ETB

* - description: Methanisierungsanlage
* - type: String
* - identifier: Methanisierungsanlage
SET set_tech_SS_MT(set_tech_SS) Elektrodenheizkessel
$LOAD set_tech_SS_MT

* - description: Elektrolyseur
* - type: String
* - identifier: Elektrolyseur
SET set_tech_SS_EY(set_tech_SS) Elektrodenheizkessel
$LOAD set_tech_SS_EY

* - description: Brennstoffzelle
* - type: String
* - identifier: Brennstoffzelle
SET set_tech_SS_FC(set_tech_SS) Elektrodenheizkessel
$LOAD set_tech_SS_FC

* - description: Biomassekraftwerk
* - type: String
* - identifier: Biomassekraftwerk
* - shape: square
* - icon: icons/power_plant_bio.svg
SET set_tech_SS_BGP(set_tech_SS) Biomassekraftwerk
$LOAD set_tech_SS_BGP

* - description: Spitzenlastkessel
* - type: String
* - identifier: Spitzenlastkessel
SET set_tech_SS_PLB(set_tech_SS) Spitzenlastkessel
$LOAD set_tech_SS_PLB

* - description: Pumpspeicherkraftwerk
* - type: String
* - identifier: Pumpspeicherkraftwerk
* - shape: square
* - icon: icons/hydro_power_pump_storage.svg
SET set_tech_SS_PHS(set_tech_SSGEN) Pumpspeicherkraftwerk
$LOAD set_tech_SS_PHS

* - description: Solarthermie-Anlage
* - type: String
* - identifier: Solarthermie-Anlage
* - shape: square
* - icon: icons/solar_system.svg
SET set_tech_SS_TC(set_tech_SS) Holzverbrennungsanlage
$LOAD set_tech_SS_TC

* - description: Stromleistungsmessungspunkt
* - type: String
* - identifier: Stromleistungsmessungspunkt
* - default:
SET set_power_E(set_power) Stromleistungsmessungspunkt
$LOAD set_power_E

* - description: Erdgasleistungsmessungspunkt
* - type: String
* - identifier: Erdgasleistungsmessungspunkt
SET set_power_G(set_power) Erdgasleistungsmessungspunkt
$LOAD set_power_G

* - description: Wasserstoffleistungsmessungspunkt
* - type: String
* - identifier: Wasserstoffleistungsmessungspunkt
SET set_power_H(set_power) Wasserstoffleistungsmessungspunkt
$LOAD set_power_H

* - description: W�rmeleistungsmessungspunkt
* - type: String
* - identifier: W�rmeleistungsmessungspunkt
SET set_power_W(set_power) W�rmeleistungsmessungspunkt
$LOAD set_power_W

* - description: Stromleistungsmessungspunkt
* - type: String
* - identifier: Stromleistungsmessungspunkt
* - default:
SET set_power_E_MS(set_power) Stromleistungsmessungspunkt
$LOAD set_power_E_MS

* - description: Erdgasleistungsmessungspunkt
* - type: String
* - identifier: Erdgasleistungsmessungspunkt
* - default:
SET set_power_G_MS(set_power) Erdgasleistungsmessungspunkt
$LOAD set_power_G_MS

* - description: Gesch�ftsmodell
* - type: String
* - identifier: Gesch�ftsmodell
* - default:
* - hidden: 1
SET set_BM(*) Gesch�ftsmodell
$LOAD set_BM

* - description: Gesch�ftsmodell
* - type: String
* - identifier: Gesch�ftsmodell
* - default: Sonnentank
* - hidden: 1
SET set_BM_Sonnentank(set_BM) Gesch�ftsmodell
$LOAD set_BM_Sonnentank

* - description: Gesch�ftsmodell
* - type: String
* - identifier: Gesch�ftsmodell
* - default: Netzspeicher
* - hidden: 1
SET set_BM_Netzspeicher(set_BM) Gesch�ftsmodell
$LOAD set_BM_Netzspeicher

* - description: Gesch�ftsmodell
* - type: String
* - identifier: Gesch�ftsmodell
* - default: Direktvermarktung
* - hidden: 1
SET set_BM_Direktvermarktung(set_BM) Gesch�ftsmodell
$LOAD set_BM_Direktvermarktung

* - description: Gesch�ftsmodell
* - type: String
* - identifier: Gesch�ftsmodell
* - default: Lastverschiebung
* - hidden: 1
SET set_BM_Lastverschiebung(set_BM) Gesch�ftsmodell
$LOAD set_BM_Lastverschiebung

* - description: Gesch�ftsmodell
* - type: String
* - identifier: Gesch�ftsmodell
* - default: Elektromobilitaet
* - hidden: 1
SET set_BM_Elektromobilitaet(set_BM) Gesch�ftsmodell
$LOAD set_BM_Elektromobilitaet

* - description: Gesch�ftsmodell
* - type: String
* - identifier: Gesch�ftsmodell
* - default: PowerToGas
* - hidden: 1
SET set_BM_P2G(set_BM) Gesch�ftsmodell
$LOAD set_BM_P2G

* - description: Gesch�ftsmodell
* - type: String
* - identifier: Gesch�ftsmodell
* - default: PowerToHeat
* - hidden: 1
SET set_BM_P2H(set_BM) Gesch�ftsmodell
$LOAD set_BM_P2H














