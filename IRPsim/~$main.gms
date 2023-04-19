***-----------------------------------------------------------------------------
*** #IRPsim 2014-2016#
*** ##Lehrstuhl f?r Energiemanagement und Nachhaltigkeit##
*** ##Universit?t Leipzig##
*** ##Fabian Scheller##
***-----------------------------------------------------------------------------

***-----------------------------------------------------------------------------
***##Erstellen und Aufrufen der GDX Datenbank##
***-----------------------------------------------------------------------------
***Einlesen leerer Mengen zulassen
$ONEMPTY
$ONORDER

**Erstellen der GDX auf Basis der Spezifikation
*$CALL GDXXRW ./input/modelinput.xlsx @./input/input_specification.txt


***Einlesen der GDX
$GDXIN modelinput.gdx
*$GDXIN job-3340-jahr-0-parameter.gdx

SET set_percent_SOC_reduction /pp0*pp100/;



***-----------------------------------------------------------------------------
***##Deklarieren und Initialisieren der ext. Eingabesets und -parameter##
***-----------------------------------------------------------------------------
$INCLUDE ./input/input_01_opt.gms
$INCLUDE ./input/input_02_set.gms
$INCLUDE ./input/input_03_country_selection.gms

$INCLUDE ./input/input_04_tech_pss_economical.gms
$INCLUDE ./input/input_05_tech_pss_technical.gms

$INCLUDE ./input/input_06_link_energy.gms
$INCLUDE ./input/input_06_link_energy_EY.gms
$INCLUDE ./input/input_06_link_energy_EY_SS.gms
$INCLUDE ./input/input_06_link_energy_CL.gms
$INCLUDE ./input/input_07_link_power.gms

$INCLUDE ./input/input_08_ds.gms
$INCLUDE ./input/input_09_optimizationhighness.gms
$INCLUDE ./input/input_10_accounting_optimizationhighness.gms
$INCLUDE ./input/input_11_ps.gms
$INCLUDE ./input/input_12_ms.gms
$INCLUDE ./input/input_13_es.gms
$INCLUDE ./input/input_14_scaling.gms
$INCLUDE ./input/input_15_grid.gms

$INCLUDE ./input/input_16_fares_E_EGrid.gms
$INCLUDE ./input/input_17_fares_W_WGrid.gms
$INCLUDE ./input/input_17_fares_C_CGrid.gms
$INCLUDE ./input/input_17_fares_H_HGrid.gms
$INCLUDE ./input/input_18_fares_G_GGrid.gms
$INCLUDE ./input/input_29_fares_R_RGrid.gms

$INCLUDE ./input/input_20_load_DS_E.gms
$INCLUDE ./input/input_21_load_DS_W.gms
$INCLUDE ./input/input_22_load_DS_G.gms
$INCLUDE ./input/input_21_load_DS_C.gms
$INCLUDE ./input/input_21_load_DS_H.gms
$INCLUDE ./input/input_21_load_DS_CL.gms
$INCLUDE ./input/input_23_tech_DES_ES.gms
$INCLUDE ./input/input_24_tech_DES_TS.gms
$INCLUDE ./input/input_24_tech_DES_CS.gms
$INCLUDE ./input/input_24_tech_DES_HS.gms
$INCLUDE ./input/input_24_tech_DES_CLS.gms
$INCLUDE ./input/input_24_tech_DES_GS.gms
$INCLUDE ./input/input_25_tech_DES_PV.gms
$INCLUDE ./input/input_26_tech_DES_EB.gms
$INCLUDE ./input/input_26_tech_DES_CR.gms
$INCLUDE ./input/input_27_tech_DES_NGB.gms
$INCLUDE ./input/input_27_tech_DES_FC.gms
$INCLUDE ./input/input_27_tech_DES_EY.gms
$INCLUDE ./input/input_26_tech_DES_SC.gms
$INCLUDE ./input/input_28_tech_DES_HP.gms
$INCLUDE ./input/input_29_tech_DES_CHP.gms
$INCLUDE ./input/input_30_tech_DES_ST.gms

$INCLUDE ./input/input_31_tech_SS_WT.gms
$INCLUDE ./input/input_32_tech_SS_PV.gms
$INCLUDE ./input/input_33_tech_SS_RH.gms
$INCLUDE ./input/input_34_tech_SS_CHP.gms
$INCLUDE ./input/input_35_tech_SS_RC.gms
$INCLUDE ./input/input_36_tech_SS_ETB.gms
$INCLUDE ./input/input_37_tech_SS_TPS.gms
$INCLUDE ./input/input_38_tech_SS_PLB.gms
$INCLUDE ./input/input_39_tech_SS_PHS.gms
$INCLUDE ./input/input_40_tech_SS_TC.gms
$INCLUDE ./input/input_41_tech_SS_BGP.gms
$INCLUDE ./input/input_36_tech_SS_FC.gms
$INCLUDE ./input/input_36_tech_SS_EY.gms
$INCLUDE ./input/input_36_tech_SS_MT.gms

$INCLUDE ./input/input_42_tech_SS_PHS_schedule.gms
$INCLUDE ./input/input_43_tech_SS_WT_schedule.gms
$INCLUDE ./input/input_44_tech_SS_PV_schedule.gms
$INCLUDE ./input/input_45_tech_SS_RH_schedule.gms
$INCLUDE ./input/input_46_tech_SS_CHP_schedule.gms
$INCLUDE ./input/input_47_tech_SS_RC_schedule.gms
$INCLUDE ./input/input_48_tech_SS_TPS_schedule.gms
$INCLUDE ./input/input_49_tech_SS_BGP_schedule.gms
$INCLUDE ./input/input_50_tech_SS_PLB_schedule.gms
$INCLUDE ./input/input_51_tech_SS_TC_schedule.gms
$INCLUDE ./input/input_52_tech_SS_ETB_schedule.gms

$INCLUDE ./input/input_53_businessmodel_optimizationhighness.gms
$INCLUDE ./input/input_54_businessmodel_PV-direct.gms
$INCLUDE ./input/input_55_businessmodel_sonnentank.gms
$INCLUDE ./input/input_56_businessmodel_NaS.gms



***-----------------------------------------------------------------------------
***##Deklarieren und Bestimmen interner bzw. dynamischer Eingabesets und -parameter##
***-----------------------------------------------------------------------------
$INCLUDE ./internal/internal_set.gms
$INCLUDE ./internal/internal_parameter.gms
$INCLUDE ./internal/internal_loop.gms

if (card(set_ii)=8760,
    sca_delta_ii=1;
);


$ontext
par_X_CL_DES_CLS_tank(set_tech_DES_CLS)=0;
*par_SOC_DES_CLS_cap('RTC0')=13;
*par_P_DES_CLS_discharge_max('RTC0')=13;
*par_P_DES_CLS_charge_max('RTC0')=13;
*sca_numberOptimization=12;
par_C_MS_E(set_ii)=1;
*par_DSM_DS_CL_t(set_load_DS_CL)=0;
par_Eta_DES_EY(set_tech_DES_EY)=1;
par_F_E_EGrid_energy(set_ii,'SMS','EY1')=1;
par_F_E_EGrid_energy('ii1','SMS','EY1')=1;
par_F_E_EGrid_energy('ii2','SMS','EY1')=2;
par_F_E_EGrid_energy('ii3','SMS','EY1')=3;
par_F_E_EGrid_energy('ii4','SMS','EY1')=4;
par_F_E_EGrid_energy('ii5','SMS','EY1')=5;
par_F_E_EGrid_energy('ii6','SMS','EY1')=6;
par_F_E_EGrid_energy('ii7','SMS','EY1')=7;
par_F_E_EGrid_energy('ii8','SMS','EY1')=8;
par_F_E_EGrid_energy('ii9','SMS','EY1')=9;
par_F_E_EGrid_energy('ii10','SMS','EY1')=10;
par_F_E_EGrid_energy('ii11','SMS','EY1')=11;
par_F_E_EGrid_energy('ii12','SMS','EY1')=12;
par_F_E_EGrid_energy(set_ii,'SMS','EY1')=1;
*par_F_E_EGrid_energy(set_ii,'SMS','EY1')=1;
par_C_pss_absoluteStatus(set_pss)=0;
$Offtext
***-----------------------------------------------------------------------------
***##Deklarieren und Initialisieren der Modulparameter, -variablen und -gleichungen##
***-----------------------------------------------------------------------------
$INCLUDE ./module/define_energyLink_module.gms
$INCLUDE ./module/define_powerLink_module.gms
$INCLUDE ./module/define_optimizationhighness_module.gms

$INCLUDE ./module/define_operationInitialization.gms
$INCLUDE ./module/define_sectoralaffiliation_module.gms
$INCLUDE ./module/define_scaling.gms



$INCLUDE ./module/define_fares_CH_module.gms
$INCLUDE ./module/define_fares_GER_module.gms

$INCLUDE ./module/define_cashFlow_module.gms

$INCLUDE ./module/define_relativeStatusCost_module.gms
$INCLUDE ./module/define_absoluteStatusCost_module.gms

$INCLUDE ./module/set_energyLink_module.gms
$INCLUDE ./module/set_powerLink_module.gms
$INCLUDE ./module/set_grid_NS_module.gms
$INCLUDE ./module/set_market_MS_module.gms
$INCLUDE ./module/set_load_DS_module.gms
$INCLUDE ./module/set_load_DS_H_module.gms
$INCLUDE ./module/set_load_DS_CL_module.gms

$INCLUDE ./module/set_tech_DES_ES_module.gms
$INCLUDE ./module/set_tech_DES_TS_module.gms
$INCLUDE ./module/set_tech_DES_CS_module.gms
$INCLUDE ./module/set_tech_DES_HS_module.gms
$INCLUDE ./module/set_tech_DES_CLS_module.gms
$INCLUDE ./module/set_tech_DES_GS_module.gms
$INCLUDE ./module/set_tech_DES_NGB_module.gms
$INCLUDE ./module/set_tech_DES_EB_module.gms
$INCLUDE ./module/set_tech_DES_PV_module.gms
$INCLUDE ./module/set_tech_DES_HP_module.gms
$INCLUDE ./module/set_tech_DES_ST_module.gms
$INCLUDE ./module/set_tech_DES_CHP_module.gms
$INCLUDE ./module/set_tech_DES_CR_module.gms
$INCLUDE ./module/set_tech_DES_SC_module.gms
$INCLUDE ./module/set_tech_DES_FC_module.gms
$INCLUDE ./module/set_tech_DES_EY_module.gms

$INCLUDE ./module/set_tech_SS_PHS_module.gms
$INCLUDE ./module/set_tech_SS_PHS_schedule_module.gms
$INCLUDE ./module/set_tech_SS_WT_module.gms
$INCLUDE ./module/set_tech_SS_WT_schedule_module.gms
$INCLUDE ./module/set_tech_SS_CHP_module.gms
$INCLUDE ./module/set_tech_SS_CHP_schedule_module.gms
$INCLUDE ./module/set_tech_SS_RC_module.gms
$INCLUDE ./module/set_tech_SS_RC_schedule_module.gms
$INCLUDE ./module/set_tech_SS_PV_module.gms
$INCLUDE ./module/set_tech_SS_PV_schedule_module.gms
$INCLUDE ./module/set_tech_SS_RH_module.gms
$INCLUDE ./module/set_tech_SS_RH_schedule_module.gms
$INCLUDE ./module/set_tech_SS_ETB_module.gms
*$INCLUDE ./module/set_tech_SS_ETB_schedule_module.gms
$INCLUDE ./module/set_tech_SS_TPS_module.gms
$INCLUDE ./module/set_tech_SS_TPS_schedule_module.gms
*$INCLUDE ./module/set_tech_SS_BGP_module.gms
$INCLUDE ./module/set_tech_SS_BGP_schedule_module.gms
$INCLUDE ./module/set_tech_SS_PLB_module.gms
*$INCLUDE ./module/set_tech_SS_PLB_schedule_module.gms
$INCLUDE ./module/set_tech_SS_TC_schedule_module.gms
$INCLUDE ./module/set_tech_SS_EY_module.gms

$INCLUDE ./module/business_model_PV_direct_CH_module.gms
$INCLUDE ./module/business_model_PV_direct_GER_module.gms

$INCLUDE ./module/business_model_NaS_CH_module.gms
$INCLUDE ./module/business_model_Sonnentank_CH_module.gms

$INCLUDE ./module/define_correction.gms


***-----------------------------------------------------------------------------
***##Deklarieren und Initialisieren der Zielfunktion und des Optimierungsmodells##
***-----------------------------------------------------------------------------
*Bestimmen der Zielfunktion
$INCLUDE ./module/objective_function_module.gms

*Auswahl Restriktionen Unternehmensmodell
MODEL IRPsimEvolution_orga /     mod_Objective_orga,
                                 mod_energyLink_orga,
                                 mod_grid_NS_orga,
                                 mod_market_MS_orga,
                                 mod_Power_orga,
                                 mod_load_DS_orga,
                                 mod_load_DS_H_orga,
                                 mod_load_DS_CL_orga,
                                 mod_tech_SS_WT_schedule_orga,
                                 mod_tech_SS_WT_orga,
                                 mod_tech_SS_PV_schedule_orga,
                                 mod_tech_SS_PV_orga,
                                 mod_tech_SS_CHP_schedule_orga,
                                 mod_tech_SS_CHP_orga,
                                 mod_tech_SS_EY_orga,
                                 mod_tech_SS_PHS_schedule_orga,
                                 mod_tech_SS_PHS_orga,
                                 mod_tech_SS_RC_orga
                                 mod_tech_SS_RC_schedule_orga,
                                 mod_tech_SS_RH_schedule_orga,
                                 mod_tech_SS_RH_orga
                                 mod_tech_SS_TPS_schedule_orga,
                                 mod_tech_SS_TPS_orga
                                 mod_tech_SS_BGP_schedule_orga,
*                                 mod_tech_SS_BGP_orga
                                 mod_tech_SS_ETB_orga,
*                                 mod_tech_SS_ETB_schedule_orga,
                                 mod_tech_SS_PLB_orga,
*                                 mod_tech_SS_PLB_schedule_orga,
                                 mod_tech_DES_ES_orga,
                                 mod_tech_DES_TS_orga,
                                 mod_tech_DES_GS_orga,
                                 mod_tech_DES_HS_orga,
                                 mod_tech_DES_CLS_orga,
                                 mod_tech_DES_CS_orga,
                                 mod_tech_DES_EB_orga,
                                 mod_tech_DES_NGB_orga,
                                 mod_tech_DES_PV_orga,
                                 mod_tech_DES_HP_orga,
                                 mod_tech_DES_ST_orga,
                                 mod_tech_DES_SC_orga,
                                 mod_tech_DES_CR_orga,
                                 mod_tech_DES_CHP_orga,
                                 mod_tech_SS_TC_schedule_orga,
                                 mod_BM_NaS_orga,
                                 mod_tech_DES_FC_orga,
                                 mod_tech_DES_EY_orga

                                 /;

*Auswahl Restriktionen Kundenmodell
MODEL IRPsimEvolution_cust /     mod_Objective_cust,
                                 mod_Power_cust,
                                 mod_load_DS_cust,
                                 mod_load_DS_H_cust,
                                 mod_load_DS_CL_cust,
                                 mod_tech_SS_WT_schedule_cust,
                                 mod_tech_SS_WT_cust,
                                 mod_tech_SS_PV_schedule_cust,
                                 mod_tech_SS_PV_cust,
                                 mod_tech_SS_CHP_schedule_cust,
                                 mod_tech_SS_PHS_schedule_cust,
                                 mod_tech_SS_PHS_cust,
                                 mod_tech_SS_RC_cust,
                                 mod_tech_SS_RC_schedule_cust,
                                 mod_tech_SS_RH_schedule_cust,
                                 mod_tech_SS_RH_cust,
                                 mod_tech_DES_ES_cust,
                                 mod_tech_DES_TS_cust
                                 mod_tech_DES_GS_cust,
                                 mod_tech_DES_HS_cust,
                                 mod_tech_DES_CLS_cust,
                                 mod_tech_DES_CS_cust
                                 mod_tech_DES_EB_cust,
                                 mod_tech_DES_NGB_cust,
                                 mod_tech_DES_PV_cust,
                                 mod_tech_DES_HP_cust,
                                 mod_tech_DES_ST_cust,
                                 mod_tech_DES_SC_cust,
                                 mod_tech_DES_CR_cust,
                                 mod_tech_DES_CHP_cust,
                                 mod_tech_DES_FC_cust,
                                 mod_tech_DES_EY_cust
                                 /;

***-----------------------------------------------------------------------------
***##Deklarieren der Ausgabedateien und -parameter##
***-----------------------------------------------------------------------------
***Deklarieren der Ausgabedateien
FILE Output_balancing_customermdl / './output/results/output_balancing_customermdl.csv' /;
FILE Output_balancing_organizmdl / './output/results/output_balancing_organizmdl.csv' /;
FILE Output_accounting_customermdl / './output/results/output_accounting_customermdl.csv' /;
FILE Output_accounting_organizmdl / './output/results/output_accounting_organizmdl.csv' /;

***Formatieren der deklarierten Ausgabedateien
***.nd-Funktion (number of decimals) legt die max. Anzahl an Nachkommastellen fest
Output_balancing_customermdl.nd = 6;
Output_balancing_organizmdl.nd = 6;
Output_accounting_customermdl.nd = 6;
Output_accounting_organizmdl.nd = 6;

***.lw-Funktion (number of decimals) legt die Set-Elemt-Bezeichner Beschr?nkung fest
Output_balancing_customermdl.lw = 0;
Output_balancing_organizmdl.lw = 0;
Output_accounting_customermdl.lw = 0;
Output_accounting_organizmdl.lw = 0;

***.pw-Funktion (pagewidth) legt die max. Anzahl Spalten fest
Output_balancing_customermdl.pw = 32767;
Output_balancing_organizmdl.pw = 32767;
Output_accounting_customermdl.pw = 32767;
Output_accounting_organizmdl.pw = 32767;

***Deklarieren der Ausgabeparameter
$INCLUDE ./output/output_opt.gms
$INCLUDE ./output/output_npv.gms
$INCLUDE ./output/output_kpis.gms
$INCLUDE ./output/output_energy.gms
$INCLUDE ./output/output_power.gms
$INCLUDE ./output/output_bm.gms



***-----------------------------------------------------------------------------
***##Erstellen und Aufrufen der lokalen Test


***-----------------------------------------------------------------------------
***Testsets zum Begrenzen der Schleifendurchl?ufe
*$INCLUDE ./internal/internal_tests.gms


***-----------------------------------------------------------------------------
***##Setzen der Optimalit?tskriterien des Solvers##
***-----------------------------------------------------------------------------
***Verwenden der Solver OPTION Files
***Feasibility Tolerance: eprhs = 0.000000001
IRPsimEvolution_cust.optfile=1;
IRPsimEvolution_orga.optfile=1;

***Angabe eines absoluten gaps: optca (criterium absolute)
***Maximale Abweichung der ermittelten L?sung von der optimalen L?sung
*OPTION optca = 5000;

***Angabe eines relativen gaps: optcr (criterium relative)
***Maximale Abweichung der ermittelten L?sung von der optimalen L?sung
***Standardeinstellung optcr = 0.1

OPTION optcr=0.05;

***Angabe eines absoluten gaps: optcr (criterium absolute)
***Maximale Abweichung der ermittelten L?sung von der optimalen L?sung
***Standardeinstellung optcr = 0.1
*OPTION optca = 0.01;

***Angabe der Zeitbeschr?nkung
***Maximale Anzahl der Rechenzeit zur Ermittlung der L?sung
OPTION reslim = 1000;

***Angabe der Iterationsbeschr?nkung
***Maximale Anzahl der Iterationen zur Ermittlung der L?sung
*OPTION iterlim = 2e9;

***-----------------------------------------------------------------------------
***##Setzen der Reportinginformationen des Listings##
***-----------------------------------------------------------------------------
***Befehl Reporting Toolausgabe
*OPTION PROFILE=3;

***Einschr?nkung Reporting Toolausgabe
*OPTION PROFILETOL=0;

***Hinzuf?gen von Modellbezogenen Ausgaben
***Stufen sind on, off und silent
OPTION Solslack=0;

***Hinzuf?gen von Solverbezogenen Ausgaben
***Stufen sind on und off
OPTION solprint=off;

***Hinzuf?gen eines prio Solvers
***Stufen sind on und off
*Option solver=abc;

***-----------------------------------------------------------------------------
***##Aufrufen der Optimierungsschleife und des Solvers##
***-----------------------------------------------------------------------------
***Optimierungsaufrufe in Abh?ngigkeit der Optimierungsschritte
LOOP(set_optsteps(set_iii),

***Dynamische Sets f?r den Optimierungsdurchlauf definieren und initialisieren
***sca_numberOptimization: L?nge des Optimierungshorizonts
***sca_numberStoring: L?nge des Speicherhorizonts
***sca_iterator: Z?hler der Optimierungsaufrufe
***sca_finalcall: Allerletztes Element der Optimierung
   set_t(set_ii)=NO;
   set_t(set_ii)=YES$(ORD(set_ii) > sca_numberStoring*sca_iterator AND
                      ORD(set_ii) <= sca_numberStoring*sca_iterator+sca_numberOptimization);
   set_t_duplicate(set_ii)=set_t(set_ii);
   set_t_store(set_ii)=YES$(ORD(set_ii) > sca_numberStoring*sca_iterator AND
                            ORD(set_ii) <= sca_numberStoring*sca_iterator+sca_numberStoring);
   set_t_help(set_ii_0)=NO;
   set_t_help(set_ii_0)=YES$(ORD(set_ii_0) > sca_numberStoring*sca_iterator+1 AND
                             ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization+1);
   set_t_help_store(set_ii_0)=NO;
   set_t_help_store(set_ii_0)=YES$(ORD(set_ii_0) > sca_numberStoring*sca_iterator+1 AND
                             ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberStoring+1);
   set_t_help2(set_ii_0)=NO;
   set_t_help2(set_ii_0)=YES$(ORD(set_ii_0) > sca_numberStoring*sca_iterator AND
                              ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization);
   set_t_help3(set_ii_0)=NO;
   set_t_help3(set_ii_0)=YES$(ORD(set_ii_0) = sca_numberStoring*sca_iterator+2);
   set_t_help4(set_ii_0)=NO;
   set_t_help4(set_ii_0)=YES$(ORD(set_ii_0) > sca_numberStoring*sca_iterator+2 AND
                             ORD(set_ii_0) <= sca_numberStoring*sca_iterator+sca_numberOptimization+1);
   set_t_ini(set_ii_0)=NO;
   set_t_ini(set_ii_0)=YES$(ORD(set_ii_0) = sca_numberStoring*sca_iterator+1);
   set_t_fin(set_ii_0)=NO;
   set_t_fin(set_ii_0)=YES$(ORD(set_ii_0) = sca_finalcall);

   set_m(set_jj)=YES$(par_Last_Day_of_Month(set_jj)/sca_delta_ii*24 >= sca_numberStoring*(sca_iterator+1) AND
                      par_Last_Day_of_Month(set_jj-1)/sca_delta_ii*24 < sca_numberStoring*(sca_iterator+1));

***-----------------------------------------------------------------------------
***##Definieren der Customer-Sets und Aufrufen des Customer-Solvers##
***-----------------------------------------------------------------------------
***Modellaufruf Kundenmodell
   sca_X_custmodel = 1;
   sca_X_orgamodel = 0;

***Akteursspezifikation und initialisierung
   set_side_opt(set_side)=NO;
   set_side_opt(set_side_cust)=YES;

***Prosumstorerspezifikation und -initialisierung
   set_pss_opt(set_pss)=NO;
   set_pss_opt(set_pss)=YES$(SUM(set_side_opt$set_pssOH(set_side_opt,set_pss),1)>0);

***Energielinkspezifikation und -initialisierung
   set_energyLink_opt(set_sector,set_fromPss,set_toPss)=NO;
   set_energyLink_opt(set_sector,set_fromPss,set_toPss)=YES$(SUM(set_side_opt$set_energyLinkOH(set_side_opt,set_sector,set_fromPss,set_toPss),1)>0 AND set_energyLink(set_sector,set_fromPss,set_toPss));

***Leistungsspezifikation und -initialisierung
   set_power_opt(set_power)=NO;
   set_power_opt(set_power)=YES$(SUM(set_side_opt$set_powerOH(set_side_opt,set_power),1)>0);

***Speicherstand BM Sonnentank
   par_SOC_DES_ES_initial(set_t_ini,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1)=par_SOC_DES_ES_initial_Sonnentank_cust(set_t_ini,set_tech_DES_ES);

***Optionale Erzeugung von GDX-Files nach jedem Optimierungsaufruf
***IRPsimEvolution_cust.savePoint = 2;
   SOLVE IRPsimEvolution_cust maximizing var_Objective using mip;
***Zwischenspeichern Kundenmodellkonfiguration und Korrektur der minimalen Optimierungsabweichung
   par_energyFlow_cust(set_t,set_energyLink_opt) = max(0,var_energyFlow.l(set_t,set_energyLink_opt));
   par_S_pss_cust(set_ii_0,set_pss)=var_S_pss.l(set_ii_0,set_pss);
   set_side_opt_cust(set_side)=YES$(set_side_opt(set_side));
   set_energyLink_opt_cust(set_sector,set_fromPss,set_toPss)=YES$(set_energyLink_opt(set_sector,set_fromPss,set_toPss));
   set_pss_opt_cust(set_pss) = set_pss_opt(set_pss);
   set_power_opt_cust(set_power) = set_power_opt(set_power);

***?bergabe der Energieverbindungen auf Kundenseite
   set_energyLink_fix(set_sector,set_fromPss,set_toPss)=NO;
   set_energyLink_fix(set_sector,set_fromPss,set_toPss)=YES$(set_energyLink_opt(set_sector,set_fromPss,set_toPss));

***Speicherstand BM Sonnentank
   par_SOC_DES_ES_initial_Sonnentank_cust(set_t,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) OR set_pss_opt_cust(set_tech_DES_ES) AND par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1)=max(0,var_SOC_DES_ES_help.l(set_t, set_tech_DES_ES));
   par_SOC_DES_ES_Sonnentank_cust(set_t,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1)=max(0,var_SOC_DES_ES.l(set_t, set_tech_DES_ES));

***Berechnen und Initialisieren der Evaluationsparameter
$INCLUDE ./processing/calculate_npv_module.gms
$INCLUDE ./processing/calculate_kpi_module.gms
$INCLUDE ./processing/calculate_energy_module.gms
$INCLUDE ./processing/calculate_power_module.gms
$INCLUDE ./processing/calculate_opt_module.gms

***Ausgeben der Optimierungsergebnisse des Kundenmodells
$INCLUDE ./output/structure/csv_output_balancing_customermdl_step.gms
$INCLUDE ./output/structure/csv_output_accounting_customermdl_step.gms

***Modellaufruf
   sca_X_custmodel = 0;
   sca_X_orgamodel = 0;

***-----------------------------------------------------------------------------
***##Definieren der Organisation-Sets und Aufrufen des Organisation-Solver##
***-----------------------------------------------------------------------------
***Modellaufruf Unternehmensmodell
   sca_X_custmodel = 0;
   sca_X_orgamodel = 1;

***Akteursspezifikation und initialisierung
   set_side_opt(set_side)=NO;
   set_side_opt(set_side_orga)=YES;

***Prosumstorerspezifikation und -initialisierung
   set_pss_opt(set_pss)=NO;
   set_pss_opt(set_pss)=YES$(SUM(set_side_opt$set_pssOH(set_side_opt,set_pss),1)>0);

***Energielinkspezifikation und -initialisierung

   set_energyLink_opt(set_sector,set_fromPss,set_toPss)=NO;
   set_energyLink_opt(set_sector,set_fromPss,set_toPss)=YES$((SUM(set_side_opt$set_energyLinkOH(set_side_opt,set_sector,set_fromPss,set_toPss),1)>0) AND set_energyLink(set_sector,set_fromPss,set_toPss));

***Leistungsspezifikation und -initialisierung
   set_power_opt(set_power)=NO;
   set_power_opt(set_power)=YES$(SUM(set_side_opt$set_powerOH(set_side_opt,set_power),1)>0);

***Speicherstand BM Sonnentank
   par_SOC_DES_ES_initial(set_t_ini,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1)=par_SOC_DES_ES_initial_Sonnentank_orga(set_t_ini,set_tech_DES_ES);
*** Speicherf?llstand Ende=Anfang f?r Wasserstoffspeicher
   var_SOC_DES_HS.fx(set_t_fin,set_tech_DES_HS)$((set_pss_opt(set_tech_DES_HS) OR set_pss_opt_cust(set_tech_DES_HS))) = par_SOC_DES_HS_initial('ii0',set_tech_DES_HS);

***Optionale Erzeugung von GDX-Files nach jedem Optimierungsaufruf
***IRPsimEvolution_cust.savePoint = 2;
  SOLVE IRPsimEvolution_orga maximizing var_Objective using mip;

***Zwischenspeichern Kundenmodellkonfiguration
   par_energyFlow_orga(set_t,set_energyLink_opt) = max(0,var_energyFlow.l(set_t,set_energyLink_opt));
   set_side_opt_orga(set_side)=YES$(set_side_opt(set_side));
   set_energyLink_opt_orga(set_sector,set_fromPss,set_toPss)=YES$(set_energyLink_opt(set_sector,set_fromPss,set_toPss));
   set_pss_opt_orga(set_pss) = set_pss_opt(set_pss);
   set_power_opt_orga(set_power) = set_power_opt(set_power);
   par_SOC_DES_ES_Sonnentank_orga(set_t,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1)=max(0,var_SOC_DES_ES.l(set_t, set_tech_DES_ES));

***Berechnen und Initialisieren der Evaluationsparameter
$INCLUDE ./processing/calculate_npv_module.gms
$INCLUDE ./processing/calculate_kpi_module.gms
$INCLUDE ./processing/calculate_energy_module.gms
$INCLUDE ./processing/calculate_power_module.gms
$INCLUDE ./processing/calculate_opt_module.gms

***Ausgeben der Optimierungsergebnisse des Organisationsmodells
$INCLUDE ./output/structure/csv_output_balancing_organizmdl_step.gms
$INCLUDE ./output/structure/csv_output_accounting_organizmdl_step.gms

***Modellaufruf
   sca_X_custmodel = 0;
   sca_X_orgamodel = 0;


***-----------------------------------------------------------------------------
***##?bergabe der Initialwerte f?r die weiteren Optimierungsschleifen##
***-----------------------------------------------------------------------------

***Optimierungsschleifenbedingungen iterieren
   sca_iterator=sca_iterator + 1;
   set_t_ini(set_ii_0)=NO;
   set_t_ini(set_ii_0)=YES$(ORD(set_ii_0) = sca_numberStoring*sca_iterator+1);

***Speicherf?llstand ?bergeben
   par_SOC_DES_ES_initial(set_t_ini,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) OR set_pss_opt_cust(set_tech_DES_ES)) = max(0,var_SOC_DES_ES_help.l(set_t_ini, set_tech_DES_ES));
   par_SOC_DES_TS_initial(set_t_ini,set_tech_DES_TS)$(set_pss_opt(set_tech_DES_TS) OR set_pss_opt_cust(set_tech_DES_TS)) = max(0,var_SOC_DES_TS_help.l(set_t_ini, set_tech_DES_TS));
   par_SOC_DES_GS_initial(set_t_ini,set_tech_DES_GS)$(set_pss_opt(set_tech_DES_GS) OR set_pss_opt_cust(set_tech_DES_GS)) = max(0,var_SOC_DES_GS_help.l(set_t_ini, set_tech_DES_GS));
   par_SOC_DES_CS_initial(set_t_ini,set_tech_DES_CS)$(set_pss_opt(set_tech_DES_CS) OR set_pss_opt_cust(set_tech_DES_CS)) = max(0,var_SOC_DES_CS_help.l(set_t_ini, set_tech_DES_CS));
   par_SOC_DES_HS_initial(set_t_ini,set_tech_DES_HS)$(set_pss_opt(set_tech_DES_HS) OR set_pss_opt_cust(set_tech_DES_HS)) = max(0,var_SOC_DES_HS_help.l(set_t_ini, set_tech_DES_HS));
   par_SOC_DES_CLS_initial(set_t_ini,set_tech_DES_CLS)$(set_pss_opt(set_tech_DES_CLS) OR set_pss_opt_cust(set_tech_DES_CLS)) = max(0,var_SOC_DES_CLS_help.l(set_t_ini, set_tech_DES_CLS));
   par_SOC_SS_PHS_initial(set_t_ini,set_tech_SS_PHS)$(set_pss_opt(set_tech_SS_PHS) OR set_pss_opt_cust(set_tech_SS_PHS)) = max(0,var_SOC_SS_PHS_help.l(set_t_ini,set_tech_SS_PHS));
   par_SOC_pss_initial(set_t_ini,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) OR set_pss_opt_cust(set_tech_SS_RC))= max(0,var_SOC_SS_RC.l(set_t_ini,set_tech_SS_RC));


***Speicherf?llstand festsetzen
*   var_SOC_DES_ES.fx(set_t_fin,set_tech_DES_ES)$((set_pss_opt(set_tech_DES_ES) OR set_pss_opt_cust(set_tech_DES_ES)) AND par_X_BM_NaS_DES_ES(set_tech_DES_ES)<>1 AND par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)<>1) = par_SOC_DES_ES_initial('ii0',set_tech_DES_ES);
*   var_SOC_DES_TS.fx(set_t_fin,set_tech_DES_TS)$(set_pss_opt(set_tech_DES_TS) OR set_pss_opt_cust(set_tech_DES_TS)) = par_SOC_DES_TS_initial('ii0',set_tech_DES_TS);
*   var_SOC_SS_PHS.fx(set_t_fin,set_tech_SS_PHS)$(set_pss_opt(set_tech_SS_PHS) OR set_pss_opt_cust(set_tech_SS_PHS)) = par_SOC_SS_PHS_initial('ii0',set_tech_SS_PHS);
*   var_SOC_DES_CLS_help.fx(set_t_fin,set_tech_DES_CLS)$(set_pss_opt(set_tech_DES_CLS) OR set_pss_opt_cust(set_tech_DES_CLS)) = par_SOC_DES_CLS_initial('ii0',set_tech_DES_CLS);

***Speicherf?llstand BM Sonnentank ?bergeben
   par_SOC_DES_ES_initial_Sonnentank_orga(set_t_ini,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) OR set_pss_opt_cust(set_tech_DES_ES) AND par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1)=max(0,var_SOC_DES_ES_help.l(set_t_ini, set_tech_DES_ES));

***Speicherzyklen ?bergeben
   par_E_DES_ES_charge_total_initial(set_t_ini,set_tech_DES_ES)$(set_pss_opt(set_tech_DES_ES) OR set_pss_opt_cust(set_tech_DES_ES)) = max(0,var_E_DES_ES_charge_total.l(set_t_ini,set_tech_DES_ES));

***Maximalleistung ?bergeben
   par_Max_P(set_m,set_power)$(set_power_opt(set_power) OR set_power_opt_cust(set_power)) = max(var_powerMeasurement.l(set_m,set_power), par_Max_P(set_m,set_power));

***Maximalleistungsgrenzen initial vorgeben
   par_Max_P('Februar',set_power)$(par_X_powerLink_lowerbound_forecast('Februar',set_power)=1 AND (set_power_opt(set_power) OR set_power_opt_cust(set_power))) = par_Max_P('Januar',set_power) / 2 ;
   par_Max_P('Maerz',set_power)$(par_X_powerLink_lowerbound_forecast('Maerz',set_power)=1 AND (set_power_opt(set_power) OR set_power_opt_cust(set_power))) = par_Max_P('Februar',set_power) / 2 ;
   par_Max_P('April',set_power)$(par_X_powerLink_lowerbound_forecast('April',set_power)=1 AND (set_power_opt(set_power) OR set_power_opt_cust(set_power))) = par_Max_P('Maerz',set_power) / 2 ;
   par_Max_P('Mai',set_power)$(par_X_powerLink_lowerbound_forecast('Mai',set_power)=1 AND (set_power_opt(set_power) OR set_power_opt_cust(set_power))) = par_Max_P('April',set_power) / 2 ;
   par_Max_P('Juni',set_power)$(par_X_powerLink_lowerbound_forecast('Juni',set_power)=1 AND (set_power_opt(set_power) OR set_power_opt_cust(set_power))) = par_Max_P('Mai',set_power) / 2 ;
   par_Max_P('Juli',set_power)$(par_X_powerLink_lowerbound_forecast('Juli',set_power)=1 AND (set_power_opt(set_power) OR set_power_opt_cust(set_power))) = par_Max_P('Juni',set_power) / 2 ;
   par_Max_P('August',set_power)$(par_X_powerLink_lowerbound_forecast('August',set_power)=1 AND (set_power_opt(set_power) OR set_power_opt_cust(set_power))) = par_Max_P('Juli',set_power) / 2 ;
   par_Max_P('September',set_power)$(par_X_powerLink_lowerbound_forecast('September',set_power)=1 AND (set_power_opt(set_power) OR set_power_opt_cust(set_power))) = par_Max_P('August',set_power) / 2 ;
   par_Max_P('Oktober',set_power)$(par_X_powerLink_lowerbound_forecast('Oktober',set_power)=1 AND (set_power_opt(set_power) OR set_power_opt_cust(set_power))) = par_Max_P('September',set_power) / 2 ;
   par_Max_P('November',set_power)$(par_X_powerLink_lowerbound_forecast('November',set_power)=1 AND (set_power_opt(set_power) OR set_power_opt_cust(set_power))) = par_Max_P('Oktober',set_power) / 2 ;
   par_Max_P('Dezember',set_power)$(par_X_powerLink_lowerbound_forecast('Dezember',set_power)=1 AND (set_power_opt(set_power) OR set_power_opt_cust(set_power))) = par_Max_P('November',set_power) / 2 ;

***Prosumestorerausnutzung ?bergeben
***Kraftwerksstatus
   par_S_pss_initial(set_t_ini,set_pss)$(set_pss_opt(set_pss) OR set_pss_opt_cust(set_pss))=var_S_pss.l(set_t_ini,set_pss);

***Aktuelle Prosumestorerlaufzeiten bzw. -stillstandszeiten ?bergeben
Loop(set_t_help_store(set_ii_0) ,
   par_S_pss_counter_presenton(set_ii_0,set_pss)$(set_t_help_store(set_ii_0) AND (set_pss_opt(set_pss) OR set_pss_opt_cust(set_pss)))=(1+ par_S_pss_counter_presenton(set_ii_0-1,set_pss))*var_S_pss.l(set_ii_0,set_pss);
   par_S_pss_counter_presentoff(set_ii_0,set_pss)$(set_t_help_store(set_ii_0) AND (set_pss_opt(set_pss) OR set_pss_opt_cust(set_pss)))=(1+ par_S_pss_counter_presentoff(set_ii_0-1,set_pss))*(1-var_S_pss.l(set_ii_0,set_pss));
);
   par_H_pss_presenton(set_pss)$(set_pss_opt(set_pss) OR set_pss_opt_cust(set_pss))=SUM(set_t_ini,par_S_pss_counter_presenton(set_t_ini,set_pss));
   par_H_pss_presentoff(set_pss)$(set_pss_opt(set_pss) OR set_pss_opt_cust(set_pss))=SUM(set_t_ini,par_S_pss_counter_presentoff(set_t_ini,set_pss));

***Verbleibende Prosumestorerlaufzeiten bzw. -stillstandszeiten ?bergeben
   par_H_pss_requon(set_pss)$(set_pss_opt(set_pss) OR set_pss_opt_cust(set_pss))= max(0, min(CARD(set_t),(par_H_pss_minon(set_pss)-par_H_pss_presenton(set_pss))*SUM(set_t_ini,var_S_pss.l(set_t_ini,set_pss))));
   par_H_pss_requoff(set_pss)$(set_pss_opt(set_pss) OR set_pss_opt_cust(set_pss))= max(0,min(CARD(set_t),(par_H_pss_minoff(set_pss)-par_H_pss_presentoff(set_pss))*(1-SUM(set_t_ini,var_S_pss.l(set_t_ini,set_pss)))));
   par_H_pss_permon(set_pss)$(set_pss_opt(set_pss) OR set_pss_opt_cust(set_pss))= max(0,min(CARD(set_t),(par_H_pss_maxon(set_pss)-par_H_pss_presenton(set_pss))*SUM(set_t_ini,var_S_pss.l(set_t_ini,set_pss))));

);

*$INCLUDE ./processing/postprocessing.gms




