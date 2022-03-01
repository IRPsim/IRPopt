***-----------------------------------------------------------------------------
***Fahrplan
***-----------------------------------------------------------------------------
PARAMETER par_E_SS_PV_schedule_nom(set_tech_SS_PV);
par_E_SS_PV_schedule(set_ii,set_tech_SS_PV)$(par_E_SS_PV_schedule(set_ii,set_tech_SS_PV)<0)=0;
par_E_SS_PV_schedule_nom(set_tech_SS_PV) = sum(set_ii,par_E_SS_PV_schedule(set_ii,set_tech_SS_PV));
par_E_SS_PV_schedule(set_ii,set_tech_SS_PV)$(par_E_SS_PV_schedule(set_ii,set_tech_SS_PV) ne 0)=par_E_SS_PV_schedule(set_ii,set_tech_SS_PV)* par_Scale_pss_schedule(set_tech_SS_PV) / par_E_SS_PV_schedule_nom(set_tech_SS_PV);



EQUATIONS EqPV1_schedule(set_ii,set_pss);
EqPV1_schedule(set_t,set_tech_SS_PV)$(set_pss_opt(set_tech_SS_PV) AND par_X_pss_schedule(set_tech_SS_PV) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'E',set_fromPss,set_tech_SS_PV)$set_energyLink_opt('E',set_fromPss,set_tech_SS_PV))
         + sum(set_toPss,
         var_energyFlow(set_t,'E',set_tech_SS_PV,set_toPss)$set_energyLink_opt('E',set_tech_SS_PV,set_toPss))
         =l= par_E_SS_PV_schedule(set_t,set_tech_SS_PV);

MODEL mod_tech_SS_PV_schedule_orga / EqPV1_schedule /;
MODEL mod_tech_SS_PV_schedule_cust / EqPV1_schedule /;
