***-----------------------------------------------------------------------------
***Fahrplan
***-----------------------------------------------------------------------------
par_E_SS_TPS_schedule(set_t,set_tech_SS_TPS)$(par_E_SS_TPS_schedule(set_t,set_tech_SS_TPS)<0)=0;
par_L_SS_TPS_fuel_schedule(set_t,set_tech_SS_TPS)$(par_L_SS_TPS_fuel_schedule(set_t,set_tech_SS_TPS)<0)=0;
par_E_SS_TPS_respos_schedule(set_t,set_tech_SS_TPS)$(par_E_SS_TPS_respos_schedule(set_t,set_tech_SS_TPS)<0)=0;
par_E_SS_TPS_resneg_schedule(set_t,set_tech_SS_TPS)$(par_E_SS_TPS_resneg_schedule(set_t,set_tech_SS_TPS)<0)=0;


EQUATIONS EqTPS1_schedule(set_ii,set_pss);
EqTPS1_schedule(set_t,set_tech_SS_TPS)$(set_pss_opt(set_tech_SS_TPS) AND par_X_pss_schedule(set_tech_SS_TPS) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'E',set_fromPss,set_tech_SS_TPS)$set_energyLink_opt('E',set_fromPss,set_tech_SS_TPS))
         + sum(set_toPss,
         var_energyFlow(set_t,'E',set_tech_SS_TPS,set_toPss)$set_energyLink_opt('E',set_tech_SS_TPS,set_toPss))
         =e= par_E_SS_TPS_schedule(set_t,set_tech_SS_TPS);

EQUATIONS EqTPS3_schedule(set_ii,set_pss);
EqTPS3_schedule(set_t,set_tech_SS_TPS)$(set_pss_opt(set_tech_SS_TPS) AND par_X_pss_schedule(set_tech_SS_TPS) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'G',set_fromPss,set_tech_SS_TPS)$set_energyLink_opt('G',set_fromPss,set_tech_SS_TPS))
         + sum(set_toPss,
         var_energyFlow(set_t,'G',set_tech_SS_TPS,set_toPss)$set_energyLink_opt('G',set_tech_SS_TPS,set_toPss))
         =e= par_L_SS_TPS_fuel_schedule(set_t,set_tech_SS_TPS)*(-1);

EQUATIONS EqTPS4_schedule(set_ii,set_pss);
EqTPS4_schedule(set_t,set_tech_SS_TPS)$(set_pss_opt(set_tech_SS_TPS) AND par_X_pss_schedule(set_tech_SS_TPS) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'PR',set_fromPss,set_tech_SS_TPS)$set_energyLink_opt('PR',set_fromPss,set_tech_SS_TPS))
         + sum(set_toPss,
         var_energyFlow(set_t,'PR',set_tech_SS_TPS,set_toPss)$set_energyLink_opt('PR',set_tech_SS_TPS,set_toPss))
         =e= par_E_SS_TPS_respos_schedule(set_t,set_tech_SS_TPS);

EQUATIONS EqTPS5_schedule(set_ii,set_pss);
EqTPS5_schedule(set_t,set_tech_SS_TPS)$(set_pss_opt(set_tech_SS_TPS) AND par_X_pss_schedule(set_tech_SS_TPS) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'NR',set_fromPss,set_tech_SS_TPS)$set_energyLink_opt('NR',set_fromPss,set_tech_SS_TPS))
         + sum(set_toPss,
         var_energyFlow(set_t,'NR',set_tech_SS_TPS,set_toPss)$set_energyLink_opt('NR',set_tech_SS_TPS,set_toPss))
         =e= par_E_SS_TPS_resneg_schedule(set_t,set_tech_SS_TPS);


MODEL mod_tech_SS_TPS_schedule_orga / EqTPS1_schedule, EqTPS3_schedule, EqTPS4_schedule, EqTPS5_schedule /;
MODEL mod_tech_SS_TPS_schedule_cust / EqTPS1_schedule, EqTPS3_schedule, EqTPS4_schedule, EqTPS5_schedule /;