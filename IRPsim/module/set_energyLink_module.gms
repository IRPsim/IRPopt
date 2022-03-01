***-----------------------------------------------------------------------------
***Parameter
***-----------------------------------------------------------------------------
PARAMETER par_energyFlow_Cust(set_ii_0,set_sector,set_fromPss,set_toPss);
par_energyFlow_Cust(set_ii_0,set_sector,set_fromPss,set_toPss)=0;

PARAMETER par_energyFlow_Orga(set_ii_0,set_sector,set_fromPss,set_toPss);
par_energyFlow_Orga(set_ii_0,set_sector,set_fromPss,set_toPss)=0;

PARAMETER par_S_pss_cust(set_ii_0,set_pss) Statusvariable der Kraftwerke im Zeitschritt;
par_S_pss_cust(set_ii_0,set_pss)=0;

PARAMETER par_S_pss_orga(set_ii_0,set_pss) Statusvariable der Kraftwerke im Zeitschritt;
par_S_pss_orga(set_ii_0,set_pss)=0;

***-----------------------------------------------------------------------------
***Variablen
***-----------------------------------------------------------------------------
POSITIVE VARIABLE var_energyFlow(set_ii_0,set_sector,set_fromPss,set_toPss) Energiefluss in den einzelnen Sektoren zwischen den Prosumstorer im Zeitschritt;
POSITIVE VARIABLE var_H_pss_presenton(set_pss) Aktuelle Laufzeit;
POSITIVE VARIABLE var_H_pss_presentoff(set_pss) Aktuelle Stillstandszeit;
POSITIVE VARIABLE var_T_pss(set_ii_0,set_pss) Kraftwerkstemperaturlevel - normalized to [0-1];
POSITIVE VARIABLE var_heating_pss(set_ii_0,set_pss) Heizlevel - normalized to [0-1];
POSITIVE VARIABLE var_P_pss_maxpresent(set_ii_0,set_pss) Leistung des Kraftwerks zum aktuellen Zeitpunkt;
POSITIVE VARIABLE var_L_pss_present(set_ii_0,set_sector,set_pss) Brennstoffnachfrage von Modul Tech CHP  zur Zeit t in MWh;
POSITIVE VARIABLE var_relativeStatus(set_ii_0,set_pss) Relative Statusvariable der Kraftwerke im Zeitschritt;
BINARY VARIABLE var_absoluteStatus(set_ii_0,set_pss) Absolute Statusvariable der Kraftwerke im Zeitschritt;
BINARY VARIABLE var_S_pss(set_ii_0,set_pss) Statusvariable der Kraftwerke im Zeitschritt;
BINARY VARIABLE var_S_pss_start(set_ii_0,set_pss) Statusvariable der Kraftwerke im Zeitschritt;
BINARY VARIABLE var_S_pss_stopp(set_ii_0,set_pss) Statusvariable der Kraftwerke im Zeitschritt;

var_energyFlow.l('ii0',set_sector,set_fromPss,set_toPss)$(set_pss_opt(set_fromPss) and set_pss_opt(set_toPss) and set_energyLink_opt(set_sector,set_fromPss,set_toPss))=0;
*var_T_pss.l('ii0',set_pss)$(set_pss_opt(set_pss))=0;
*var_heating_pss.l('ii0',set_pss)$(set_pss_opt(set_pss))=0;
var_P_pss_maxpresent.l('ii0',set_pss)$(set_pss_opt(set_pss))=0;
var_L_pss_present.l('ii0',set_sector,set_pss)$(set_pss_opt(set_pss))=0;
*var_relativeStatus.l('ii0',set_pss)$(set_pss_opt(set_pss))=0;
*var_absoluteStatus.l('ii0',set_pss)$(set_pss_opt(set_pss))=0;
var_S_pss.l('ii0',set_pss)$(set_pss_opt(set_pss))=0;
var_S_pss_start.l('ii0',set_pss)$(set_pss_opt(set_pss))=0;
var_S_pss_stopp.l('ii0',set_pss)$(set_pss_opt(set_pss))=0;

*var_energyFlow.up(set_ii_0,set_sector,set_fromPss,set_toPss) = 100;

***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------

EQUATIONS EqPort(set_ii_0,set_sector,set_fromPss,set_toPss);

EqPort(set_t,set_sector,set_fromPss,set_toPss)$(set_energyLink_fix(set_sector,set_fromPss,set_toPss))..
         var_energyFlow(set_t,set_sector,set_fromPss,set_toPss)
         =E= par_energyFlow_cust(set_t,set_sector,set_fromPss,set_toPss);

model mod_energyLink_orga /EqPort/;