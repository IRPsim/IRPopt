***-----------------------------------------------------------------------------
***Fahrplan
***-----------------------------------------------------------------------------
PARAMETER par_E_SS_WT_schedule_nom(set_tech_SS_WT);
par_E_SS_WT_schedule(set_ii,set_tech_SS_WT)$(par_E_SS_WT_schedule(set_ii,set_tech_SS_WT)<0)=0;
par_E_SS_WT_schedule_nom(set_tech_SS_WT) = sum(set_ii,par_E_SS_WT_schedule(set_ii,set_tech_SS_WT));
par_E_SS_WT_schedule(set_ii,set_tech_SS_WT)$(par_E_SS_WT_schedule(set_ii,set_tech_SS_WT) ne 0)=par_E_SS_WT_schedule(set_ii,set_tech_SS_WT)* par_Scale_pss_schedule(set_tech_SS_WT) / par_E_SS_WT_schedule_nom(set_tech_SS_WT);


par_E_SS_WT_schedule(set_ii,set_tech_SS_WT)$(par_E_SS_WT_schedule(set_ii,set_tech_SS_WT)<0) = 0;
par_E_SS_WT_resneg_schedule(set_ii,set_tech_SS_WT)$(par_E_SS_WT_resneg_schedule(set_ii,set_tech_SS_WT)<0) = 0;
par_E_SS_WT_respos_schedule(set_ii,set_tech_SS_WT)$(par_E_SS_WT_respos_schedule(set_ii,set_tech_SS_WT)<0) = 0;

EQUATIONS EqWT1_schedule(set_ii,set_pss);
EqWT1_schedule(set_t,set_tech_SS_WT)$(set_pss_opt(set_tech_SS_WT) AND par_X_pss_schedule(set_tech_SS_WT) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'E',set_fromPss,set_tech_SS_WT)$set_energyLink_opt('E',set_fromPss,set_tech_SS_WT))
         + sum(set_toPss,
         var_energyFlow(set_t,'E',set_tech_SS_WT,set_toPss)$set_energyLink_opt('E',set_tech_SS_WT,set_toPss))
         =l= par_E_SS_WT_schedule(set_t,set_tech_SS_WT);

EQUATIONS EqWT2_schedule(set_ii,set_pss);
EqWT2_schedule(set_t,set_tech_SS_WT)$(set_pss_opt(set_tech_SS_WT) AND par_X_pss_schedule(set_tech_SS_WT) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'NR',set_fromPss,set_tech_SS_WT)$set_energyLink_opt('NR',set_fromPss,set_tech_SS_WT))
         + sum(set_toPss,
         var_energyFlow(set_t,'NR',set_tech_SS_WT,set_toPss)$set_energyLink_opt('NR',set_tech_SS_WT,set_toPss))
         =e= par_E_SS_WT_resneg_schedule(set_t,set_tech_SS_WT);

EQUATIONS EqWT3_schedule(set_ii,set_pss);
EqWT3_schedule(set_t,set_tech_SS_WT)$(set_pss_opt(set_tech_SS_WT) AND par_X_pss_schedule(set_tech_SS_WT) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'PR',set_fromPss,set_tech_SS_WT)$set_energyLink_opt('PR',set_fromPss,set_tech_SS_WT))
         + sum(set_toPss,
         var_energyFlow(set_t,'PR',set_tech_SS_WT,set_toPss)$set_energyLink_opt('NR',set_tech_SS_WT,set_toPss))
         =e= par_E_SS_WT_respos_schedule(set_t,set_tech_SS_WT);

MODEL mod_tech_SS_WT_schedule_orga / EqWT1_schedule, EqWT2_schedule, EqWT3_schedule /;
MODEL mod_tech_SS_WT_schedule_cust / EqWT1_schedule, EqWT2_schedule, EqWT3_schedule  /;


