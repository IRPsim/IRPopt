***-----------------------------------------------------------------------------
***Zielfunktionsvariablen
***-----------------------------------------------------------------------------

VARIABLE var_Objective;

***-----------------------------------------------------------------------------
***Zielfunktionsgleichungen
***-----------------------------------------------------------------------------

EQUATIONS EqObj Zielfunktion Kosten;

EqObj..        var_Objective =e=
               sum((set_side_opt,set_t),
                 -sum((set_toSide,set_energyLink_opt),var_energyFlow(set_t,set_energyLink_opt)*par_energyLinkTarif(set_t,set_side_opt,set_toSide,set_energyLink_opt))
                 +sum((set_fromSide,set_energyLink_opt),var_energyFlow(set_t,set_energyLink_opt)*par_energyLinkTarif(set_t,set_fromSide,set_side_opt,set_energyLink_opt))
               )
               +sum((set_side_opt,set_m),
                 -sum((set_toSide,set_power_opt),var_powerMeasurement(set_m,set_power_opt)*par_powerLinkTarif(set_m,set_power_opt,set_side_opt,set_toSide)/par_DF_powerLink(set_power_opt))
                 +sum((set_fromSide,set_power_opt),var_powerMeasurement(set_m,set_power_opt)*par_powerLinkTarif(set_m,set_power_opt,set_fromSide,set_side_opt)/par_DF_powerLink(set_power_opt))
               )
               +sum((set_side_opt,set_t),
                -sum((set_toSide,set_pss_opt),var_relativeStatus(set_t,set_pss_opt)*par_relativeStatusCost(set_pss_opt,set_side_opt,set_toSide))
                -sum((set_toSide,set_pss_opt),var_absoluteStatus(set_t,set_pss_opt)*par_absoluteStatusCost(set_pss_opt,set_side_opt,set_toSide))
               )
;

model mod_Objective_orga /EqObj/;
model mod_Objective_cust /EqObj/;

