***-----------------------------------------------------------------------------
***Fahrplan
***-----------------------------------------------------------------------------
par_E_SS_RH_schedule(set_t,set_tech_SS_RH)$(par_E_SS_RH_schedule(set_t,set_tech_SS_RH)<0)=0;

EQUATIONS EqRH1_schedule(set_ii,set_pss);
EqRH1_schedule(set_t,set_tech_SS_RH)$(set_pss_opt(set_tech_SS_RH) AND par_X_pss_schedule(set_tech_SS_RH) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'E',set_fromPss,set_tech_SS_RH)$set_energyLink_opt('E',set_fromPss,set_tech_SS_RH))
         + sum(set_toPss,
         var_energyFlow(set_t,'E',set_tech_SS_RH,set_toPss)$set_energyLink_opt('E',set_tech_SS_RH,set_toPss))
         =e= par_E_SS_RH_schedule(set_t,set_tech_SS_RH);


MODEL mod_tech_SS_RH_schedule_orga / EqRH1_schedule /;
MODEL mod_tech_SS_RH_schedule_cust / EqRH1_schedule /;
