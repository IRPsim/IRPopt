***-----------------------------------------------------------------------------
***Fahrplan
***-----------------------------------------------------------------------------
par_E_SS_CHP_schedule(set_t,set_tech_SS_CHP)$(par_E_SS_CHP_schedule(set_t,set_tech_SS_CHP)<0)=0;
par_W_SS_CHP_schedule(set_t,set_tech_SS_CHP)$(par_W_SS_CHP_schedule(set_t,set_tech_SS_CHP)<0)=0;
par_L_SS_CHP_fuel_schedule(set_t,set_tech_SS_CHP)$(par_L_SS_CHP_fuel_schedule(set_t,set_tech_SS_CHP)<0)=0;
par_E_SS_CHP_respos_schedule(set_t,set_tech_SS_CHP)$(par_E_SS_CHP_respos_schedule(set_t,set_tech_SS_CHP)<0)=0;
par_E_SS_CHP_resneg_schedule(set_t,set_tech_SS_CHP)$(par_E_SS_CHP_resneg_schedule(set_t,set_tech_SS_CHP)<0)=0;


EQUATIONS EqCHP1_schedule(set_ii,set_pss);
EqCHP1_schedule(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_schedule(set_tech_SS_CHP) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'E',set_fromPss,set_tech_SS_CHP)$set_energyLink_opt('E',set_fromPss,set_tech_SS_CHP))
         + sum(set_toPss,
         var_energyFlow(set_t,'E',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('E',set_tech_SS_CHP,set_toPss))
         =e= par_E_SS_CHP_schedule(set_t,set_tech_SS_CHP);

EQUATIONS EqCHP2_schedule(set_ii,set_pss);
EqCHP2_schedule(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_schedule(set_tech_SS_CHP) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'W',set_fromPss,set_tech_SS_CHP)$set_energyLink_opt('W',set_fromPss,set_tech_SS_CHP))
         + sum(set_toPss,
         var_energyFlow(set_t,'W',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('W',set_tech_SS_CHP,set_toPss))
         =e= par_W_SS_CHP_schedule(set_t,set_tech_SS_CHP);

EQUATIONS EqCHP3_schedule(set_ii,set_pss);
EqCHP3_schedule(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_schedule(set_tech_SS_CHP) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'G',set_fromPss,set_tech_SS_CHP)$set_energyLink_opt('G',set_fromPss,set_tech_SS_CHP))
         + sum(set_toPss,
         var_energyFlow(set_t,'G',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('G',set_tech_SS_CHP,set_toPss))
         =e= par_L_SS_CHP_fuel_schedule(set_t,set_tech_SS_CHP)*(-1);

EQUATIONS EqCHP4_schedule(set_ii,set_pss);
EqCHP4_schedule(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_schedule(set_tech_SS_CHP) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'PR',set_fromPss,set_tech_SS_CHP)$set_energyLink_opt('PR',set_fromPss,set_tech_SS_CHP))
         + sum(set_toPss,
         var_energyFlow(set_t,'PR',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('PR',set_tech_SS_CHP,set_toPss))
         =e= par_E_SS_CHP_respos_schedule(set_t,set_tech_SS_CHP);

EQUATIONS EqCHP5_schedule(set_ii,set_pss);
EqCHP5_schedule(set_t,set_tech_SS_CHP)$(set_pss_opt(set_tech_SS_CHP) AND par_X_pss_schedule(set_tech_SS_CHP) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'NR',set_fromPss,set_tech_SS_CHP)$set_energyLink_opt('NR',set_fromPss,set_tech_SS_CHP))
         + sum(set_toPss,
         var_energyFlow(set_t,'NR',set_tech_SS_CHP,set_toPss)$set_energyLink_opt('NR',set_tech_SS_CHP,set_toPss))
         =e= par_E_SS_CHP_resneg_schedule(set_t,set_tech_SS_CHP);


MODEL mod_tech_SS_CHP_schedule_orga / EqCHP1_schedule, EqCHP2_schedule, EqCHP3_schedule, EqCHP4_schedule, EqCHP5_schedule /;
MODEL mod_tech_SS_CHP_schedule_cust / EqCHP1_schedule, EqCHP2_schedule, EqCHP3_schedule, EqCHP4_schedule, EqCHP5_schedule /;
