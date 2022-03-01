***-----------------------------------------------------------------------------
***Parameter
***-----------------------------------------------------------------------------
PARAMETER par_Max_P(set_jj,set_power);
par_Max_P(set_jj,set_power) = 0;
par_Max_P(set_jj,set_power_E)$(par_X_powerLinkE_lowerbound_absolute(set_power_E)=1)=par_P_powerLinkE_lowerbound(set_power_E);
par_Max_P(set_jj,set_power_W)$(par_X_powerLinkW_lowerbound_absolute(set_power_W)=1)=par_Q_powerLinkW_lowerbound(set_power_W);
par_Max_P(set_jj,set_power_G)$(par_X_powerLinkG_lowerbound_absolute(set_power_G)=1)=par_G_powerLinkG_lowerbound(set_power_G);
par_Max_P(set_jj,set_power_H)$(par_X_powerLinkH_lowerbound_absolute(set_power_H)=1)=par_H_powerLinkH_lowerbound(set_power_H);
par_Max_P(set_jj,set_power_E_MS)=sca_P_MS_powerLink_SwissGrid_lowerbound;

PARAMETER par_Max_P_help(set_ii,set_power);
par_Max_P_help(set_ii,set_power_opt) = 0;

par_X_powerLink_lowerbound_forecast(set_jj,set_power_E)=par_X_powerLinkE_lowerbound_forecast(set_power_E);
par_X_powerLink_lowerbound_forecast(set_jj,set_power_W)=par_X_powerLinkW_lowerbound_forecast(set_power_W);
par_X_powerLink_lowerbound_forecast(set_jj,set_power_G)=par_X_powerLinkG_lowerbound_forecast(set_power_G);
par_X_powerLink_lowerbound_forecast(set_jj,set_power_H)=par_X_powerLinkH_lowerbound_forecast(set_power_H);
***-----------------------------------------------------------------------------
***Variablen
***-----------------------------------------------------------------------------
POSITIVE VARIABLE var_powerMeasurement(set_jj,set_power);
*var_powerMeasurement.up(set_jj,set_power) = 100000;

***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
*Bestimmen der Leistungsmessungsvariable auf Basis der erhöhenden und reduzierenden Energieflüsse
EQUATIONS EqPower1(set_ii,set_jj,set_power);
EqPower1(set_t,set_m,set_power_opt)$(par_X_power_model(set_power_opt)=1)..
         - sum((set_sector,set_fromPss,set_toPss)$set_powerLink(set_power_opt,'Neg',set_sector,set_fromPss,set_toPss),
         var_energyFlow(set_t,set_sector,set_fromPss,set_toPss))
         + sum((set_sector,set_fromPss,set_toPss)$set_powerLink(set_power_opt,'Pos',set_sector,set_fromPss,set_toPss),
         var_energyFlow(set_t,set_sector,set_fromPss,set_toPss))
         =l= var_powerMeasurement(set_m,set_power_opt);

*Initialiseren der monatlichen Leistungsmessungsvariable auf Basis der rollierenden Ergebnisse
EQUATIONS EqPower2(set_jj,set_power);
EqPower2 (set_m,set_power_opt)$(par_X_power_model(set_power_opt)=1)..
         par_Max_P(set_m,set_power_opt) =l= var_powerMeasurement(set_m,set_power_opt);

*Begrenzen der monatlichen elektrischen Leistungsmessungsvaribale auf Basis der Anschlussbeschränkung
EQUATIONS EqPower3(set_jj,set_power);
EqPower3 (set_m,set_power_E)$(par_X_power_model(set_power_E)=1 and par_X_power_max(set_power_E)=1 and set_power_opt(set_power_E))..
         var_powerMeasurement(set_m,set_power_E) =l= par_P_powerLinkE_max(set_power_E);





model mod_Power_orga /EqPower1, EqPower2, EqPower3 /;
model mod_Power_cust /EqPower1, EqPower2, EqPower3/;
