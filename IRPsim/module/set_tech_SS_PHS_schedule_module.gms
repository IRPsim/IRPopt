***-----------------------------------------------------------------------------
***Fahrplan
***-----------------------------------------------------------------------------
par_E_SS_PHS_pump_schedule(set_t,set_tech_SS_PHS)$(par_E_SS_PHS_pump_schedule(set_t,set_tech_SS_PHS)<0)=0;
par_E_SS_PHS_turbine_schedule(set_t,set_tech_SS_PHS)$(par_E_SS_PHS_turbine_schedule(set_t,set_tech_SS_PHS)<0)=0;
par_E_SS_PHS_respos_schedule(set_t,set_tech_SS_PHS)$(par_E_SS_PHS_respos_schedule(set_t,set_tech_SS_PHS)<0)=0;
par_E_SS_PHS_resneg_schedule(set_t,set_tech_SS_PHS)$(par_E_SS_PHS_resneg_schedule(set_t,set_tech_SS_PHS)<0)=0;

EQUATIONS EqPHS1_schedule(set_ii,set_pss);
EqPHS1_schedule(set_t,set_tech_SS_PHS)$(set_pss_opt(set_tech_SS_PHS) AND par_X_pss_schedule(set_tech_SS_PHS) eq 1)..
         + sum(set_toPss,
         var_energyFlow(set_t,'E',set_tech_SS_PHS,set_toPss)$set_energyLink_opt('E',set_tech_SS_PHS,set_toPss))
         =e= par_E_SS_PHS_pump_schedule(set_t,set_tech_SS_PHS);


EQUATIONS EqPHS2_schedule(set_ii,set_pss);
EqPHS2_schedule(set_t,set_tech_SS_PHS)$(set_pss_opt(set_tech_SS_PHS) AND par_X_pss_schedule(set_tech_SS_PHS) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'E',set_fromPss,set_tech_SS_PHS)$set_energyLink_opt('E',set_fromPss,set_tech_SS_PHS))
         =e= par_E_SS_PHS_turbine_schedule(set_t,set_tech_SS_PHS)*(-1);


EQUATIONS EqPHS3_schedule(set_ii,set_pss);
EqPHS3_schedule(set_t,set_tech_SS_PHS)$(set_pss_opt(set_tech_SS_PHS) AND par_X_pss_schedule(set_tech_SS_PHS) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'PR',set_fromPss,set_tech_SS_PHS)$set_energyLink_opt('PR',set_fromPss,set_tech_SS_PHS))
         + sum(set_toPss,
         var_energyFlow(set_t,'PR',set_tech_SS_PHS,set_toPss)$set_energyLink_opt('PR',set_tech_SS_PHS,set_toPss))
         =e= par_E_SS_PHS_respos_schedule(set_t,set_tech_SS_PHS);

EQUATIONS EqPHS4_schedule(set_ii,set_pss);
EqPHS4_schedule(set_t,set_tech_SS_PHS)$(set_pss_opt(set_tech_SS_PHS) AND par_X_pss_schedule(set_tech_SS_PHS) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'NR',set_fromPss,set_tech_SS_PHS)$set_energyLink_opt('NR',set_fromPss,set_tech_SS_PHS))
         + sum(set_toPss,
         var_energyFlow(set_t,'NR',set_tech_SS_PHS,set_toPss)$set_energyLink_opt('NR',set_tech_SS_PHS,set_toPss))
         =e= par_E_SS_PHS_resneg_schedule(set_t,set_tech_SS_PHS);


MODEL mod_tech_SS_PHS_schedule_orga / EqPHS1_schedule, EqPHS2_schedule, EqPHS3_schedule, EqPHS4_schedule /;
MODEL mod_tech_SS_PHS_schedule_cust / EqPHS1_schedule, EqPHS2_schedule, EqPHS3_schedule, EqPHS4_schedule /;

