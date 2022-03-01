***-----------------------------------------------------------------------------
***Fahrplan
***-----------------------------------------------------------------------------
par_E_SS_EY_schedule(set_t,set_tech_SS_EY)$(par_E_SS_EY_schedule(set_t,set_tech_SS_EY)<0)=0;
par_W_SS_EY_schedule(set_t,set_tech_SS_EY)$(par_W_SS_EY_schedule(set_t,set_tech_SS_EY)<0)=0;
par_L_SS_EY_fuel_schedule(set_t,set_tech_SS_EY)$(par_L_SS_EY_fuel_schedule(set_t,set_tech_SS_EY)<0)=0;
par_E_SS_EY_respos_schedule(set_t,set_tech_SS_EY)$(par_E_SS_EY_respos_schedule(set_t,set_tech_SS_EY)<0)=0;
par_E_SS_EY_resneg_schedule(set_t,set_tech_SS_EY)$(par_E_SS_EY_resneg_schedule(set_t,set_tech_SS_EY)<0)=0;


EQUATIONS EqEY1_schedule(set_ii,set_pss);
EqEY1_schedule(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_schedule(set_tech_SS_EY) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'H',set_fromPss,set_tech_SS_EY)$set_energyLink_opt('H',set_fromPss,set_tech_SS_EY))
         + sum(set_toPss,
         var_energyFlow(set_t,'H',set_tech_SS_EY,set_toPss)$set_energyLink_opt('H',set_tech_SS_EY,set_toPss))
         =e= par_E_SS_EY_schedule(set_t,set_tech_SS_EY);

EQUATIONS EqEY2_schedule(set_ii,set_pss);
EqEY2_schedule(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_schedule(set_tech_SS_EY) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'W',set_fromPss,set_tech_SS_EY)$set_energyLink_opt('W',set_fromPss,set_tech_SS_EY))
         + sum(set_toPss,
         var_energyFlow(set_t,'W',set_tech_SS_EY,set_toPss)$set_energyLink_opt('W',set_tech_SS_EY,set_toPss))
         =e= par_W_SS_EY_schedule(set_t,set_tech_SS_EY);

EQUATIONS EqEY3_schedule(set_ii,set_pss);
EqEY3_schedule(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_schedule(set_tech_SS_EY) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'G',set_fromPss,set_tech_SS_EY)$set_energyLink_opt('G',set_fromPss,set_tech_SS_EY))
         + sum(set_toPss,
         var_energyFlow(set_t,'G',set_tech_SS_EY,set_toPss)$set_energyLink_opt('G',set_tech_SS_EY,set_toPss))
         =e= par_L_SS_EY_fuel_schedule(set_t,set_tech_SS_EY)*(-1);

EQUATIONS EqEY4_schedule(set_ii,set_pss);
EqEY4_schedule(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_schedule(set_tech_SS_EY) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'PR',set_fromPss,set_tech_SS_EY)$set_energyLink_opt('PR',set_fromPss,set_tech_SS_EY))
         + sum(set_toPss,
         var_energyFlow(set_t,'PR',set_tech_SS_EY,set_toPss)$set_energyLink_opt('PR',set_tech_SS_EY,set_toPss))
         =e= par_E_SS_EY_respos_schedule(set_t,set_tech_SS_EY);

EQUATIONS EqEY5_schedule(set_ii,set_pss);
EqEY5_schedule(set_t,set_tech_SS_EY)$(set_pss_opt(set_tech_SS_EY) AND par_X_pss_schedule(set_tech_SS_EY) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'NR',set_fromPss,set_tech_SS_EY)$set_energyLink_opt('NR',set_fromPss,set_tech_SS_EY))
         + sum(set_toPss,
         var_energyFlow(set_t,'NR',set_tech_SS_EY,set_toPss)$set_energyLink_opt('NR',set_tech_SS_EY,set_toPss))
         =e= par_E_SS_EY_resneg_schedule(set_t,set_tech_SS_EY);


MODEL mod_tech_SS_EY_schedule_orga / EqEY1_schedule, EqEY2_schedule, EqEY3_schedule, EqEY4_schedule, EqEY5_schedule /;
MODEL mod_tech_SS_EY_schedule_cust / EqEY1_schedule, EqEY2_schedule, EqEY3_schedule, EqEY4_schedule, EqEY5_schedule /;
