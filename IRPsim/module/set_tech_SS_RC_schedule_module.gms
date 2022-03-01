***-----------------------------------------------------------------------------
***Fahrplan
***-----------------------------------------------------------------------------
par_E_SS_RC_schedule(set_t,set_tech_SS_RC)$(par_E_SS_RC_schedule(set_t,set_tech_SS_RC)<0)=0;
par_W_SS_RC_schedule(set_t,set_tech_SS_RC)$(par_W_SS_RC_schedule(set_t,set_tech_SS_RC)<0)=0;
par_L_SS_RC_fuel_schedule(set_t,set_tech_SS_RC)$(par_L_SS_RC_fuel_schedule(set_t,set_tech_SS_RC)<0)=0;
par_E_SS_RC_resneg_schedule(set_t,set_tech_SS_RC)$(par_E_SS_RC_resneg_schedule(set_t,set_tech_SS_RC)<0)=0;
par_E_SS_RC_respos_schedule(set_t,set_tech_SS_RC)$(par_E_SS_RC_respos_schedule(set_t,set_tech_SS_RC)<0)=0;

EQUATIONS EqRC0_schedule(set_ii,set_pss);
EqRC0_schedule(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_schedule(set_tech_SS_RC) eq 1)..
         var_energyFlow(set_t,'RF','RFMarket',set_tech_SS_RC)$set_energyLink_opt('RF','RFMarket',set_tech_SS_RC)
         =e= par_W_SS_RC_schedule(set_t,set_tech_SS_RC)*par_Ratio_SS_RC(set_tech_SS_RC);

EQUATIONS EqRC1_schedule(set_ii,set_pss);
EqRC1_schedule(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_schedule(set_tech_SS_RC) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'E',set_fromPss,set_tech_SS_RC)$set_energyLink_opt('E',set_fromPss,set_tech_SS_RC))
         + sum(set_toPss,
         var_energyFlow(set_t,'E',set_tech_SS_RC,set_toPss)$set_energyLink_opt('E',set_tech_SS_RC,set_toPss))
         =e= par_E_SS_RC_schedule(set_t,set_tech_SS_RC);

EQUATIONS EqRC2_schedule(set_ii,set_pss);
EqRC2_schedule(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_schedule(set_tech_SS_RC) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'W',set_fromPss,set_tech_SS_RC)$set_energyLink_opt('W',set_fromPss,set_tech_SS_RC))
         + sum(set_toPss,
         var_energyFlow(set_t,'W',set_tech_SS_RC,set_toPss)$set_energyLink_opt('W',set_tech_SS_RC,set_toPss))
         =l= par_W_SS_RC_schedule(set_t,set_tech_SS_RC);

EQUATIONS EqRC3_schedule(set_ii,set_pss);
EqRC3_schedule(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_schedule(set_tech_SS_RC) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'G',set_fromPss,set_tech_SS_RC)$set_energyLink_opt('G',set_fromPss,set_tech_SS_RC))
         + sum(set_toPss,
         var_energyFlow(set_t,'G',set_tech_SS_RC,set_toPss)$set_energyLink_opt('G',set_tech_SS_RC,set_toPss))
         =e= par_L_SS_RC_fuel_schedule(set_t,set_tech_SS_RC)*(-1);

EQUATIONS EqRC4_schedule(set_ii,set_pss);
EqRC4_schedule(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_schedule(set_tech_SS_RC) eq 1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'NR',set_fromPss,set_tech_SS_RC)$set_energyLink_opt('NR',set_fromPss,set_tech_SS_RC))
         + sum(set_toPss,
         var_energyFlow(set_t,'NR',set_tech_SS_RC,set_toPss)$set_energyLink_opt('NR',set_tech_SS_RC,set_toPss))
         =e= par_E_SS_RC_resneg_schedule(set_t,set_tech_SS_RC);

EQUATIONS EqRC5_schedule(set_ii,set_pss);
EqRC5_schedule(set_t,set_tech_SS_RC)$(set_pss_opt(set_tech_SS_RC) AND par_X_pss_schedule(set_tech_SS_RC) eq 1)..
        - sum(set_fromPss,
         var_energyFlow(set_t,'PR',set_fromPss,set_tech_SS_RC)$set_energyLink_opt('PR',set_fromPss,set_tech_SS_RC))
         + sum(set_toPss,
         var_energyFlow(set_t,'PR',set_tech_SS_RC,set_toPss)$set_energyLink_opt('PR',set_tech_SS_RC,set_toPss))
         =e= par_E_SS_RC_respos_schedule(set_t,set_tech_SS_RC);

MODEL mod_tech_SS_RC_schedule_orga / EqRC0_schedule, EqRC1_schedule, EqRC2_schedule, EqRC3_schedule, EqRC4_schedule, EqRC5_schedule /;
MODEL mod_tech_SS_RC_schedule_cust / EqRC0_schedule, EqRC1_schedule, EqRC2_schedule, EqRC3_schedule, EqRC4_schedule, EqRC5_schedule /;

