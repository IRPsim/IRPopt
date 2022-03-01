***-----------------------------------------------------------------------------
***Fahrplan
***-----------------------------------------------------------------------------
par_E_SS_BGP_schedule(set_t,set_tech_SS_BGP)$(par_E_SS_BGP_schedule(set_t,set_tech_SS_BGP)<0)=0;
par_W_SS_BGP_schedule(set_t,set_tech_SS_BGP)$(par_W_SS_BGP_schedule(set_t,set_tech_SS_BGP)<0)=0;
par_L_SS_BGP_fuel_schedule(set_t,set_tech_SS_BGP)$(par_L_SS_BGP_fuel_schedule(set_t,set_tech_SS_BGP)<0)=0;
par_E_SS_BGP_respos_schedule(set_t,set_tech_SS_BGP)$(par_E_SS_BGP_respos_schedule(set_t,set_tech_SS_BGP)<0)=0;
par_E_SS_BGP_resneg_schedule(set_t,set_tech_SS_BGP)$(par_E_SS_BGP_resneg_schedule(set_t,set_tech_SS_BGP)<0)=0;


EQUATIONS EqBGP1_schedule(set_ii,set_pss);
EqBGP1_schedule(set_t,set_tech_SS_BGP)$(set_pss_opt(set_tech_SS_BGP) AND par_X_pss_schedule(set_tech_SS_BGP) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'E',set_fromPss,set_tech_SS_BGP)$set_energyLink_opt('E',set_fromPss,set_tech_SS_BGP))
         + sum(set_toPss,
         var_energyFlow(set_t,'E',set_tech_SS_BGP,set_toPss)$set_energyLink_opt('E',set_tech_SS_BGP,set_toPss))
         =e= par_E_SS_BGP_schedule(set_t,set_tech_SS_BGP);

EQUATIONS EqBGP2_schedule(set_ii,set_pss);
EqBGP2_schedule(set_t,set_tech_SS_BGP)$(set_pss_opt(set_tech_SS_BGP) AND par_X_pss_schedule(set_tech_SS_BGP) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'W',set_fromPss,set_tech_SS_BGP)$set_energyLink_opt('W',set_fromPss,set_tech_SS_BGP))
         + sum(set_toPss,
         var_energyFlow(set_t,'W',set_tech_SS_BGP,set_toPss)$set_energyLink_opt('W',set_tech_SS_BGP,set_toPss))
         =e= par_W_SS_BGP_schedule(set_t,set_tech_SS_BGP);

EQUATIONS EqBGP3_schedule(set_ii,set_pss);
EqBGP3_schedule(set_t,set_tech_SS_BGP)$(set_pss_opt(set_tech_SS_BGP) AND par_X_pss_schedule(set_tech_SS_BGP) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'G',set_fromPss,set_tech_SS_BGP)$set_energyLink_opt('G',set_fromPss,set_tech_SS_BGP))
         + sum(set_toPss,
         var_energyFlow(set_t,'G',set_tech_SS_BGP,set_toPss)$set_energyLink_opt('G',set_tech_SS_BGP,set_toPss))
         =e= par_L_SS_BGP_fuel_schedule(set_t,set_tech_SS_BGP)*(-1);

EQUATIONS EqBGP4_schedule(set_ii,set_pss);
EqBGP4_schedule(set_t,set_tech_SS_BGP)$(set_pss_opt(set_tech_SS_BGP) AND par_X_pss_schedule(set_tech_SS_BGP) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'PR',set_fromPss,set_tech_SS_BGP)$set_energyLink_opt('PR',set_fromPss,set_tech_SS_BGP))
         + sum(set_toPss,
         var_energyFlow(set_t,'PR',set_tech_SS_BGP,set_toPss)$set_energyLink_opt('PR',set_tech_SS_BGP,set_toPss))
         =e= par_E_SS_BGP_respos_schedule(set_t,set_tech_SS_BGP);

EQUATIONS EqBGP5_schedule(set_ii,set_pss);
EqBGP5_schedule(set_t,set_tech_SS_BGP)$(set_pss_opt(set_tech_SS_BGP) AND par_X_pss_schedule(set_tech_SS_BGP) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'NR',set_fromPss,set_tech_SS_BGP)$set_energyLink_opt('NR',set_fromPss,set_tech_SS_BGP))
         + sum(set_toPss,
         var_energyFlow(set_t,'NR',set_tech_SS_BGP,set_toPss)$set_energyLink_opt('NR',set_tech_SS_BGP,set_toPss))
         =e= par_E_SS_BGP_resneg_schedule(set_t,set_tech_SS_BGP);


MODEL mod_tech_SS_BGP_schedule_orga / EqBGP1_schedule, EqBGP2_schedule, EqBGP3_schedule, EqBGP4_schedule, EqBGP5_schedule /;
MODEL mod_tech_SS_BGP_schedule_cust / EqBGP1_schedule, EqBGP2_schedule, EqBGP3_schedule, EqBGP4_schedule, EqBGP5_schedule /;

