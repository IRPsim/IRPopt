parameter par_DSM_DS_E_Cup(set_load_DS_E) maximal upward shift of load in percent of load;
parameter par_DSM_DS_E_Cdown(set_load_DS_E) maximal downward shift of load in percent of load;

POSITIVE VARIABLE var_DSM_down(set_ii_0,set_ii_0, set_pss) demand delayed in timestep ii;
POSITIVE VARIABLE var_DSM_down_sum(set_ii_0,set_pss) demand delayed in timestep ii;
POSITIVE VARIABLE var_DSM_up(set_ii_0, set_pss) demand served in timestep ii;
POSITIVE VARIABLE var_DSM_up_sum(set_ii_0, set_pss) demand served in timestep ii;
POSITIVE VARIABLE var_DSM_shift(set_pss) demand served in timestep ii;

***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------

EQUATIONS EqLoad_E1(set_ii,set_pss) Lastdeckungsgleichung elektrische Last;
EqLoad_E1(set_t,set_load_DS_E)$(set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1 and (par_DSM_DS_E_t(set_load_DS_E)=0 or par_DSM_DS_E_Cup(set_load_DS_E)=0))..
         - sum(set_fromPss,
         var_energyFlow(set_t,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E))
         + sum(set_toPss,
         var_energyFlow(set_t,'E',set_load_DS_E,set_toPss)$set_energyLink_opt('E',set_load_DS_E,set_toPss))
         =e= par_L_DS_E(set_t,set_load_DS_E)*(-1);

*done
EQUATIONS EqLoad_E1_1(set_ii_0,set_pss) Lastdeckungsgleichung elektrische Last am ersten Periodenanfang;
EqLoad_E1_1(set_ii,set_load_DS_E)$(set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1
                                         AND(ORD(set_ii) ge sca_numberStoring*sca_iterator+1) AND (ORD(set_ii) le sca_numberStoring*sca_iterator+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)..

         - sum(set_fromPss, var_energyFlow(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E))
         + sum(set_toPss,var_energyFlow(set_ii,'E',set_load_DS_E,set_toPss)$set_energyLink_opt('E',set_load_DS_E,set_toPss))
         =e=
         (par_L_DS_E(set_ii,set_load_DS_E)
         + var_DSM_up(set_ii,set_load_DS_E)
         -sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1 AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)),var_DSM_down(set_ii_duplicate, set_ii, set_load_DS_E)))*(-1);

EQUATIONS EqLoad_E1_1_second(set_ii_0,set_pss) Lastdeckungsgleichung elektrische Last am ersten Periodenanfang;
EqLoad_E1_1_second(set_ii,set_load_DS_E)$(set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1
                                         AND(ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring) AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)..

         - sum(set_fromPss, var_energyFlow(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E))
         + sum(set_toPss,var_energyFlow(set_ii,'E',set_load_DS_E,set_toPss)$set_energyLink_opt('E',set_load_DS_E,set_toPss))
         =e=
         (par_L_DS_E(set_ii,set_load_DS_E)
         + var_DSM_up(set_ii,set_load_DS_E)
         -sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1+sca_numberStoring AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)),var_DSM_down(set_ii_duplicate, set_ii, set_load_DS_E)))*(-1);

EQUATIONS EqLoad_E1_2_1(set_ii_0, set_pss) Lastdeckungsgleichung elektrische Last Periodenmitte;
EqLoad_E1_2_1(set_ii, set_load_DS_E)$(set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1
                                         AND(ORD(set_ii) ge sca_numberStoring*sca_iterator+1+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)) AND (ORD(set_ii) le (sca_numberStoring*sca_iterator+sca_numberStoring)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)..
         - sum(set_fromPss, var_energyFlow(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E))
         + sum(set_toPss,var_energyFlow(set_ii,'E',set_load_DS_E,set_toPss)$set_energyLink_opt('E',set_load_DS_E,set_toPss))
         =e=
         (par_L_DS_E(set_ii,set_load_DS_E)
         + var_DSM_up(set_ii,set_load_DS_E)
         -sum(set_ii_duplicate$(ORD(set_ii_duplicate)>= ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND (ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))),var_DSM_down(set_ii_duplicate, set_ii, set_load_DS_E)))*(-1);

EQUATIONS EqLoad_E1_2_1_second(set_ii_0, set_pss) Lastdeckungsgleichung elektrische Last Periodenmitte;
EqLoad_E1_2_1_second(set_ii, set_load_DS_E)$(set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1
                                         AND(ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)) AND (ORD(set_ii) le (sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)..
         - sum(set_fromPss, var_energyFlow(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E))
         + sum(set_toPss,var_energyFlow(set_ii,'E',set_load_DS_E,set_toPss)$set_energyLink_opt('E',set_load_DS_E,set_toPss))
         =e=
         (par_L_DS_E(set_ii,set_load_DS_E)
         + var_DSM_up(set_ii,set_load_DS_E)
         -sum(set_ii_duplicate$(ORD(set_ii_duplicate)>= ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND (ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))),var_DSM_down(set_ii_duplicate, set_ii, set_load_DS_E)))*(-1);


EQUATIONS EqLoad_E1_3_1(set_ii_0, set_pss) Lastdeckungsgleichung elektrische Last Tagesende;
EqLoad_E1_3_1(set_ii, set_load_DS_E)$(set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1
                                         AND(ORD(set_ii) ge sca_numberStoring*sca_iterator+sca_numberStoring+1-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)) AND (ORD(set_ii) le (sca_numberStoring*sca_iterator+sca_numberStoring)) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)..
         - sum(set_fromPss, var_energyFlow(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E))
         + sum(set_toPss,var_energyFlow(set_ii,'E',set_load_DS_E,set_toPss)$set_energyLink_opt('E',set_load_DS_E,set_toPss))
         =e=
         (par_L_DS_E(set_ii,set_load_DS_E)
         + var_DSM_up(set_ii,set_load_DS_E)
         -sum(set_ii_duplicate$(ORD(set_ii_duplicate)>= ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND (ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring)),var_DSM_down(set_ii_duplicate, set_ii, set_load_DS_E)))*(-1);

EQUATIONS EqLoad_E1_3_1_second(set_ii_0, set_pss) Lastdeckungsgleichung elektrische Last Tagesende;
EqLoad_E1_3_1_second(set_ii, set_load_DS_E)$(set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1
                                         AND(ORD(set_ii) ge sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring+1-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)) AND (ORD(set_ii) le (sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)..
         - sum(set_fromPss, var_energyFlow(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E))
         + sum(set_toPss,var_energyFlow(set_ii,'E',set_load_DS_E,set_toPss)$set_energyLink_opt('E',set_load_DS_E,set_toPss))
         =e=
         (par_L_DS_E(set_ii,set_load_DS_E)
         + var_DSM_up(set_ii,set_load_DS_E)
         -sum(set_ii_duplicate$(ORD(set_ii_duplicate)>= ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND (ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)),var_DSM_down(set_ii_duplicate, set_ii, set_load_DS_E)))*(-1);


Equation EqLoad_E2_1(set_ii_0,set_pss) Eq7 am ersten Periodenanfang;
EqLoad_E2_1(set_ii, set_load_DS_E)$((ORD(set_ii) ge sca_numberStoring*sca_iterator+1)
                                  AND(ORD(set_ii) le sca_numberStoring*sca_iterator+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))
                                  AND (set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)..
         var_DSM_up(set_ii, set_load_DS_E)
         =e=
         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1 AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND ORD(set_ii_duplicate)<=Ord(set_ii)+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)),
         var_DSM_down(set_ii,set_ii_duplicate, set_load_DS_E));

Equation EqLoad_E2_1_second(set_ii_0,set_pss) Eq7 am ersten Periodenanfang;
EqLoad_E2_1_second(set_ii, set_load_DS_E)$((ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring)
                                  AND(ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))
                                  AND (set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)..
         var_DSM_up(set_ii, set_load_DS_E)
         =e=
         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1+sca_numberStoring AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND ORD(set_ii_duplicate)<=Ord(set_ii)+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)),
         var_DSM_down(set_ii,set_ii_duplicate, set_load_DS_E));


EQUATIONS EqLoad_E2_2_1(set_ii_0, set_pss) Eq7 in Periodenmitte;
EqLoad_E2_2_1(set_ii, set_load_DS_E)$((ORD(set_ii) ge sca_numberStoring*sca_iterator+1+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))
                                  AND (ORD(set_ii) le (sca_numberStoring*sca_iterator+sca_numberStoring)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))
                                  AND (set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)..
         var_DSM_up(set_ii, set_load_DS_E)
         =e=
         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)),
         var_DSM_down(set_ii,set_ii_duplicate, set_load_DS_E));

EQUATIONS EqLoad_E2_2_1_second(set_ii_0, set_pss) Eq7 in Periodenmitte;
EqLoad_E2_2_1_second(set_ii, set_load_DS_E)$((ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))
                                  AND (ORD(set_ii) le (sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))
                                  AND (set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)..
         var_DSM_up(set_ii, set_load_DS_E)
         =e=
         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)),
         var_DSM_down(set_ii,set_ii_duplicate, set_load_DS_E));


EQUATIONS EqLoad_E2_3_1(set_ii_0, set_pss) Eq7 am Tagesende;
EqLoad_E2_3_1(set_ii, set_load_DS_E)$((ORD(set_ii) ge sca_numberStoring*sca_iterator+sca_numberStoring+1-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))
                                  AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring)
                                  AND (set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)..
         var_DSM_up(set_ii, set_load_DS_E)
         =e=
         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring),
         var_DSM_down(set_ii,set_ii_duplicate, set_load_DS_E));

EQUATIONS EqLoad_E2_3_1_second(set_ii_0, set_pss) Eq7 am Tagesende;
EqLoad_E2_3_1_second(set_ii, set_load_DS_E)$((ORD(set_ii) ge sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring+1-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))
                                  AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)
                                  AND (set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)..
         var_DSM_up(set_ii, set_load_DS_E)
         =e=
         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring),
         var_DSM_down(set_ii,set_ii_duplicate, set_load_DS_E));

EQUATIONS EqLoad_E3(set_ii_0,set_pss) Eq8 über gesamten Abschnitt;
EqLoad_E3(set_t, set_load_DS_E)$(set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1)..
         var_DSM_up(set_t, set_load_DS_E)
         =l=
         par_DSM_DS_E_Cup(set_load_DS_E)*par_L_DS_E(set_t, set_load_DS_E);


Equation EqLoad_E4_1(set_ii_0, set_pss) Eq9 am ersten Periodenanfang;
EqLoad_E4_1(set_ii_duplicate, set_load_DS_E)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+1)
                                  AND (ORD(set_ii_duplicate) le sca_numberStoring*sca_iterator+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)
                                  AND (set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1))..
         sum(set_ii$(ORD(set_ii)>=sca_numberStoring*sca_iterator+1 AND ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND ORD(set_ii)<=ORD(set_ii_duplicate)+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_E))
         =l=
         par_DSM_DS_E_Cdown(set_load_DS_E)*par_L_DS_E(set_ii_duplicate, set_load_DS_E);

Equation EqLoad_E4_1_second(set_ii_0, set_pss) Eq9 am ersten Periodenanfang;
EqLoad_E4_1_second(set_ii_duplicate, set_load_DS_E)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+1+sca_numberStoring)
                                  AND (ORD(set_ii_duplicate) le sca_numberStoring*sca_iterator+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)
                                  AND (set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1))..
         sum(set_ii$(ORD(set_ii)>=sca_numberStoring*sca_iterator+1+sca_numberStoring AND ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND ORD(set_ii)<=ORD(set_ii_duplicate)+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_E))
         =l=
         par_DSM_DS_E_Cdown(set_load_DS_E)*par_L_DS_E(set_ii_duplicate, set_load_DS_E);

EQUATIONS EqLoad_E4_2_1(set_ii_0,set_pss) Eq9 in Periodenmitte ;
EqLoad_E4_2_1(set_ii_duplicate, set_load_DS_E)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+1+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))
                                  AND (ORD(set_ii_duplicate) le (sca_numberStoring*sca_iterator+sca_numberStoring)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)
                                  AND (set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1))..
         sum(set_ii$(ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND (ORD(set_ii)<=ORD(set_ii_duplicate)+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_E))
         =l=
         par_DSM_DS_E_Cdown(set_load_DS_E)*par_L_DS_E(set_ii_duplicate, set_load_DS_E);

EQUATIONS EqLoad_E4_2_1_second(set_ii_0,set_pss) Eq9 in Periodenmitte ;
EqLoad_E4_2_1_second(set_ii_duplicate, set_load_DS_E)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+1+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))
                                  AND (ORD(set_ii_duplicate) le (sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)
                                  AND (set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1))..
         sum(set_ii$(ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND (ORD(set_ii)<=ORD(set_ii_duplicate)+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_E))
         =l=
         par_DSM_DS_E_Cdown(set_load_DS_E)*par_L_DS_E(set_ii_duplicate, set_load_DS_E);


EQUATIONS EqLoad_E4_3_1(set_ii_0,set_pss) Eq9 am Tagesende;
EqLoad_E4_3_1(set_ii_duplicate, set_load_DS_E)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+sca_numberStoring+1-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))
                                  AND (ORD(set_ii_duplicate) le sca_numberStoring*sca_iterator+sca_numberStoring and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)
                                  AND (set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1))..
         sum(set_ii$(ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND (ORD(set_ii)<=sca_numberStoring*sca_iterator+sca_numberStoring)),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_E))
         =l=
         par_DSM_DS_E_Cdown(set_load_DS_E)*par_L_DS_E(set_ii_duplicate, set_load_DS_E);

EQUATIONS EqLoad_E4_3_1_second(set_ii_0,set_pss) Eq9 am Tagesende;
EqLoad_E4_3_1_second(set_ii_duplicate, set_load_DS_E)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring+1-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))
                                  AND (ORD(set_ii_duplicate) le sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)
                                  AND (set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1))..
         sum(set_ii$(ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND (ORD(set_ii)<=sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_E))
         =l=
         par_DSM_DS_E_Cdown(set_load_DS_E)*par_L_DS_E(set_ii_duplicate, set_load_DS_E);

Equation EqLoad_E5_1(set_ii_0, set_pss) Eq10 am ersten Periodenanfang;
EqLoad_E5_1(set_ii_duplicate, set_load_DS_E)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+1)
                                  AND (ORD(set_ii_duplicate) le sca_numberStoring*sca_iterator+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))
                                  AND (set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)..
         var_DSM_up(set_ii_duplicate, set_load_DS_E)
         + sum(set_ii$(ORD(set_ii)>=sca_numberStoring*sca_iterator+1 AND ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND ORD(set_ii)<=ORD(set_ii_duplicate)+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_E))
         =l=
         max(par_DSM_DS_E_Cup(set_load_DS_E)*par_L_DS_E(set_ii_duplicate, set_load_DS_E),par_DSM_DS_E_Cdown(set_load_DS_E)*par_L_DS_E(set_ii_duplicate, set_load_DS_E));

Equation EqLoad_E5_1_second(set_ii_0, set_pss) Eq10 am ersten Periodenanfang;
EqLoad_E5_1_second(set_ii_duplicate, set_load_DS_E)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+1+sca_numberStoring)
                                  AND (ORD(set_ii_duplicate) le sca_numberStoring*sca_iterator+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)+sca_numberStoring)
                                  AND (set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)..
         var_DSM_up(set_ii_duplicate, set_load_DS_E)
         + sum(set_ii$(ORD(set_ii)>=sca_numberStoring*sca_iterator+sca_numberStoring+1 AND ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E) AND ORD(set_ii)<=ORD(set_ii_duplicate)+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_E))
         =l=
         max(par_DSM_DS_E_Cup(set_load_DS_E)*par_L_DS_E(set_ii_duplicate, set_load_DS_E),par_DSM_DS_E_Cdown(set_load_DS_E)*par_L_DS_E(set_ii_duplicate, set_load_DS_E));


EQUATIONS EqLoad_E5_2_1(set_ii_0, set_pss) Eq10 in Periodenmitte;
EqLoad_E5_2_1(set_ii_duplicate, set_load_DS_E)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+1+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))
                                  AND (ORD(set_ii_duplicate) le (sca_numberStoring*sca_iterator+sca_numberStoring)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))
                                  AND (set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)..
         var_DSM_up(set_ii_duplicate, set_load_DS_E)
         + sum(set_ii$((ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)) AND (ORD(set_ii)<=ORD(set_ii_duplicate)+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_E))
         =l=
           max(par_DSM_DS_E_Cup(set_load_DS_E)*par_L_DS_E(set_ii_duplicate, set_load_DS_E),par_DSM_DS_E_Cdown(set_load_DS_E)*par_L_DS_E(set_ii_duplicate, set_load_DS_E));

EQUATIONS EqLoad_E5_2_1_second(set_ii_0, set_pss) Eq10 in Periodenmitte;
EqLoad_E5_2_1_second(set_ii_duplicate, set_load_DS_E)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+1+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))
                                  AND (ORD(set_ii_duplicate) le (sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))
                                  AND (set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)..
         var_DSM_up(set_ii_duplicate, set_load_DS_E)
         + sum(set_ii$((ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)) AND (ORD(set_ii)<=ORD(set_ii_duplicate)+(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_E))
         =l=
           max(par_DSM_DS_E_Cup(set_load_DS_E)*par_L_DS_E(set_ii_duplicate, set_load_DS_E),par_DSM_DS_E_Cdown(set_load_DS_E)*par_L_DS_E(set_ii_duplicate, set_load_DS_E));

EQUATIONS EqLoad_E5_3_1(set_ii_0, set_pss) Eq10 am Tagesende;
EqLoad_E5_3_1(set_ii_duplicate, set_load_DS_E)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+sca_numberStoring+1-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))
                                  AND (ORD(set_ii_duplicate) le sca_numberStoring*sca_iterator+sca_numberStoring)
                                  AND (set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)..
         var_DSM_up(set_ii_duplicate, set_load_DS_E)
         + sum(set_ii$((ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)) AND (ORD(set_ii)<=sca_numberStoring*sca_iterator+sca_numberStoring)),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_E))
         =l=
           max(par_DSM_DS_E_Cup(set_load_DS_E)*par_L_DS_E(set_ii_duplicate, set_load_DS_E),par_DSM_DS_E_Cdown(set_load_DS_E)*par_L_DS_E(set_ii_duplicate, set_load_DS_E));

EQUATIONS EqLoad_E5_3_1_second(set_ii_0, set_pss) Eq10 am Tagesende;
EqLoad_E5_3_1_second(set_ii_duplicate, set_load_DS_E)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring+1-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E))
                                  AND (ORD(set_ii_duplicate) le sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)
                                  AND (set_pss_opt(set_load_DS_E) and par_X_pss_model(set_load_DS_E)=1) and par_DSM_DS_E_t(set_load_DS_E) > 0 and par_DSM_DS_E_Cup(set_load_DS_E) > 0)..
         var_DSM_up(set_ii_duplicate, set_load_DS_E)
         + sum(set_ii$((ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_E_t(set_load_DS_E)) AND (ORD(set_ii)<=sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_E))
         =l=
           max(par_DSM_DS_E_Cup(set_load_DS_E)*par_L_DS_E(set_ii_duplicate, set_load_DS_E),par_DSM_DS_E_Cdown(set_load_DS_E)*par_L_DS_E(set_ii_duplicate, set_load_DS_E));


EQUATIONS EqLoad_G1(set_ii,set_pss) Lastdeckungsgleichung gasbezogene Last;
EqLoad_G1(set_t,set_load_DS_G)$(set_pss_opt(set_load_DS_G) and par_X_pss_model(set_load_DS_G)=1)..
         - sum(set_fromPss,
         var_energyFlow(set_t,'G',set_fromPss,set_load_DS_G)$set_energyLink_opt('G',set_fromPss,set_load_DS_G))
         + sum(set_toPss,
         var_energyFlow(set_t,'G',set_load_DS_G,set_toPss)$set_energyLink_opt('G',set_load_DS_G,set_toPss))
         =e= par_L_DS_G(set_t,set_load_DS_G)*(-1);


EQUATIONS EqLoad_W1(set_ii,set_pss) Lastdeckungsgleichung thermische Last;
EqLoad_W1(set_t,set_load_DS_W)$(set_pss_opt(set_load_DS_W) and par_X_pss_model(set_load_DS_W)=1)..
         - sum(set_fromPss,
         var_EnergyFlow(set_t,'W',set_fromPss,set_load_DS_W)$set_energyLink_opt('W',set_fromPss,set_load_DS_W))
         + sum(set_toPss,
         var_EnergyFlow(set_t,'W',set_load_DS_W,set_toPss)$set_energyLink_opt('W',set_load_DS_W,set_toPss))
         =e= par_L_DS_W(set_t,set_load_DS_W)*(-1);

EQUATIONS EqLoad_C1(set_ii,set_pss) Lastdeckungsgleichung thermische Last;
EqLoad_C1(set_t,set_load_DS_C)$(set_pss_opt(set_load_DS_C) and par_X_pss_model(set_load_DS_C)=1)..
         - sum(set_fromPss,
         var_EnergyFlow(set_t,'C',set_fromPss,set_load_DS_C)$set_energyLink_opt('C',set_fromPss,set_load_DS_C))
         + sum(set_toPss,
         var_EnergyFlow(set_t,'C',set_load_DS_C,set_toPss)$set_energyLink_opt('C',set_load_DS_C,set_toPss))
         =e= par_L_DS_C(set_t,set_load_DS_C)*(-1);


model mod_load_DS_orga /EqLoad_E1, EqLoad_E1_1, EqLoad_E1_1_second, EqLoad_E1_2_1, EqLoad_E1_2_1_second, EqLoad_E1_3_1, EqLoad_E1_3_1_second, EqLoad_E2_1, EqLoad_E2_1_second, EqLoad_E2_2_1, EqLoad_E2_2_1_second, EqLoad_E2_3_1, EqLoad_E2_3_1_second, EqLoad_E3, EqLoad_E4_1, EqLoad_E4_1_second, EqLoad_E4_2_1, EqLoad_E4_2_1_second, EqLoad_E4_3_1, EqLoad_E4_3_1_second, EqLoad_E5_1, EqLoad_E5_1_second, EqLoad_E5_2_1, EqLoad_E5_2_1_second, EqLoad_E5_3_1, EqLoad_E5_3_1_second, EqLoad_G1, EqLoad_W1, EqLoad_C1/;
model mod_load_DS_cust /EqLoad_E1, EqLoad_E1_1, EqLoad_E1_1_second, EqLoad_E1_2_1, EqLoad_E1_2_1_second, EqLoad_E1_3_1, EqLoad_E1_3_1_second, EqLoad_E2_1, EqLoad_E2_1_second, EqLoad_E2_2_1, EqLoad_E2_2_1_second, EqLoad_E2_3_1, EqLoad_E2_3_1_second, EqLoad_E3, EqLoad_E4_1, EqLoad_E4_1_second, EqLoad_E4_2_1, EqLoad_E4_2_1_second, EqLoad_E4_3_1, EqLoad_E4_3_1_second, EqLoad_E5_1, EqLoad_E5_1_second, EqLoad_E5_2_1, EqLoad_E5_2_1_second, EqLoad_E5_3_1, EqLoad_E5_3_1_second, EqLoad_G1, EqLoad_W1, EqLoad_C1/;
