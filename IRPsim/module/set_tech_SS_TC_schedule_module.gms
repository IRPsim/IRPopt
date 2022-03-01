***-----------------------------------------------------------------------------
***Fahrplan
***-----------------------------------------------------------------------------
PARAMETER par_W_SS_TC_schedule_nom(set_tech_SS_TC);
par_W_SS_TC_schedule_nom(set_tech_SS_TC) = sum(set_ii,par_W_SS_TC_schedule(set_ii,set_tech_SS_TC));
par_W_SS_TC_schedule(set_ii,set_tech_SS_TC)$(par_W_SS_TC_schedule_nom(set_tech_SS_TC) ne 0) = par_W_SS_TC_schedule(set_ii,set_tech_SS_TC) * par_Scale_pss_schedule(set_tech_SS_TC) / par_W_SS_TC_schedule_nom(set_tech_SS_TC) * sum(set_side$set_pssOH(set_side,set_tech_SS_TC),par_S_DS_total(set_side))**par_Scale_pss_schedule(set_tech_SS_TC);


***-----------------------------------------------------------------------------
***Fahrplan
***-----------------------------------------------------------------------------
par_W_SS_TC_schedule(set_ii, set_tech_SS_TC)$(par_W_SS_TC_schedule(set_ii, set_tech_SS_TC)<0)=0;

EQUATIONS EqTC1_schedule(set_ii,set_pss);
EqTC1_schedule(set_t,set_tech_SS_TC)$(set_pss_opt(set_tech_SS_TC) AND par_X_pss_schedule(set_tech_SS_TC) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'W',set_fromPss,set_tech_SS_TC)$set_energyLink_opt('W',set_fromPss,set_tech_SS_TC))
         + sum(set_toPss,
         var_energyFlow(set_t,'W',set_tech_SS_TC,set_toPss)$set_energyLink_opt('W',set_tech_SS_TC,set_toPss))
         =e= par_W_SS_TC_schedule(set_t,set_tech_SS_TC);

MODEL mod_tech_SS_TC_schedule_orga / EqTC1_schedule /;
MODEL mod_tech_SS_TC_schedule_cust / EqTC1_schedule /;
