parameter par_DSM_DS_H_Cup(set_load_DS_H) maximal upward shift of load in percent of load;
parameter par_DSM_DS_H_Cdown(set_load_DS_H) maximal downward shift of load in percent of load;


***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------

EQUATIONS EqLoad_H1(set_ii,set_pss) Lastdeckungsgleichung elektrische Last;
EqLoad_H1(set_t,set_load_DS_H)$(set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1 and (par_DSM_DS_H_t(set_load_DS_H)=0 or par_DSM_DS_H_Cup(set_load_DS_H)=0))..
         - sum(set_fromPss,
         var_energyFlow(set_t,'H',set_fromPss,set_load_DS_H)$set_energyLink_opt('H',set_fromPss,set_load_DS_H))
         + sum(set_toPss,
         var_energyFlow(set_t,'H',set_load_DS_H,set_toPss)$set_energyLink_opt('H',set_load_DS_H,set_toPss))
         =e= par_L_DS_H(set_t,set_load_DS_H)*(-1);

*done
EQUATIONS EqLoad_H1_1(set_ii_0,set_pss) Lastdeckungsgleichung elektrische Last am ersten Periodenanfang;
EqLoad_H1_1(set_ii,set_load_DS_H)$(set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1
                                         AND(ORD(set_ii) ge sca_numberStoring*sca_iterator+1) AND (ORD(set_ii) le sca_numberStoring*sca_iterator+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)..

         - sum(set_fromPss, var_energyFlow(set_ii,'H',set_fromPss,set_load_DS_H)$set_energyLink_opt('H',set_fromPss,set_load_DS_H))
         + sum(set_toPss,var_energyFlow(set_ii,'H',set_load_DS_H,set_toPss)$set_energyLink_opt('H',set_load_DS_H,set_toPss))
         =e=
         (par_L_DS_H(set_ii,set_load_DS_H)
         + var_DSM_up(set_ii,set_load_DS_H)
         -sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1 AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)),var_DSM_down(set_ii_duplicate, set_ii, set_load_DS_H)))*(-1);

EQUATIONS EqLoad_H1_1_second(set_ii_0,set_pss) Lastdeckungsgleichung elektrische Last am ersten Periodenanfang;
EqLoad_H1_1_second(set_ii,set_load_DS_H)$(set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1
                                         AND(ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring) AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)..

         - sum(set_fromPss, var_energyFlow(set_ii,'H',set_fromPss,set_load_DS_H)$set_energyLink_opt('H',set_fromPss,set_load_DS_H))
         + sum(set_toPss,var_energyFlow(set_ii,'H',set_load_DS_H,set_toPss)$set_energyLink_opt('H',set_load_DS_H,set_toPss))
         =e=
         (par_L_DS_H(set_ii,set_load_DS_H)
         + var_DSM_up(set_ii,set_load_DS_H)
         -sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1+sca_numberStoring AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)),var_DSM_down(set_ii_duplicate, set_ii, set_load_DS_H)))*(-1);

EQUATIONS EqLoad_H1_2_1(set_ii_0, set_pss) Lastdeckungsgleichung elektrische Last Periodenmitte;
EqLoad_H1_2_1(set_ii, set_load_DS_H)$(set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1
                                         AND(ORD(set_ii) ge sca_numberStoring*sca_iterator+1+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)) AND (ORD(set_ii) le (sca_numberStoring*sca_iterator+sca_numberStoring)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)..
         - sum(set_fromPss, var_energyFlow(set_ii,'H',set_fromPss,set_load_DS_H)$set_energyLink_opt('H',set_fromPss,set_load_DS_H))
         + sum(set_toPss,var_energyFlow(set_ii,'H',set_load_DS_H,set_toPss)$set_energyLink_opt('H',set_load_DS_H,set_toPss))
         =e=
         (par_L_DS_H(set_ii,set_load_DS_H)
         + var_DSM_up(set_ii,set_load_DS_H)
         -sum(set_ii_duplicate$(ORD(set_ii_duplicate)>= ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND (ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))),var_DSM_down(set_ii_duplicate, set_ii, set_load_DS_H)))*(-1);

EQUATIONS EqLoad_H1_2_1_second(set_ii_0, set_pss) Lastdeckungsgleichung elektrische Last Periodenmitte;
EqLoad_H1_2_1_second(set_ii, set_load_DS_H)$(set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1
                                         AND(ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)) AND (ORD(set_ii) le (sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)..
         - sum(set_fromPss, var_energyFlow(set_ii,'H',set_fromPss,set_load_DS_H)$set_energyLink_opt('H',set_fromPss,set_load_DS_H))
         + sum(set_toPss,var_energyFlow(set_ii,'H',set_load_DS_H,set_toPss)$set_energyLink_opt('H',set_load_DS_H,set_toPss))
         =e=
         (par_L_DS_H(set_ii,set_load_DS_H)
         + var_DSM_up(set_ii,set_load_DS_H)
         -sum(set_ii_duplicate$(ORD(set_ii_duplicate)>= ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND (ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))),var_DSM_down(set_ii_duplicate, set_ii, set_load_DS_H)))*(-1);


EQUATIONS EqLoad_H1_3_1(set_ii_0, set_pss) Lastdeckungsgleichung elektrische Last Tagesende;
EqLoad_H1_3_1(set_ii, set_load_DS_H)$(set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1
                                         AND(ORD(set_ii) ge sca_numberStoring*sca_iterator+sca_numberStoring+1-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)) AND (ORD(set_ii) le (sca_numberStoring*sca_iterator+sca_numberStoring)) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)..
         - sum(set_fromPss, var_energyFlow(set_ii,'H',set_fromPss,set_load_DS_H)$set_energyLink_opt('H',set_fromPss,set_load_DS_H))
         + sum(set_toPss,var_energyFlow(set_ii,'H',set_load_DS_H,set_toPss)$set_energyLink_opt('H',set_load_DS_H,set_toPss))
         =e=
         (par_L_DS_H(set_ii,set_load_DS_H)
         + var_DSM_up(set_ii,set_load_DS_H)
         -sum(set_ii_duplicate$(ORD(set_ii_duplicate)>= ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND (ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring)),var_DSM_down(set_ii_duplicate, set_ii, set_load_DS_H)))*(-1);

EQUATIONS EqLoad_H1_3_1_second(set_ii_0, set_pss) Lastdeckungsgleichung elektrische Last Tagesende;
EqLoad_H1_3_1_second(set_ii, set_load_DS_H)$(set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1
                                         AND(ORD(set_ii) ge sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring+1-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)) AND (ORD(set_ii) le (sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)..
         - sum(set_fromPss, var_energyFlow(set_ii,'H',set_fromPss,set_load_DS_H)$set_energyLink_opt('H',set_fromPss,set_load_DS_H))
         + sum(set_toPss,var_energyFlow(set_ii,'H',set_load_DS_H,set_toPss)$set_energyLink_opt('H',set_load_DS_H,set_toPss))
         =e=
         (par_L_DS_H(set_ii,set_load_DS_H)
         + var_DSM_up(set_ii,set_load_DS_H)
         -sum(set_ii_duplicate$(ORD(set_ii_duplicate)>= ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND (ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)),var_DSM_down(set_ii_duplicate, set_ii, set_load_DS_H)))*(-1);


Equation EqLoad_H2_1(set_ii_0,set_pss) Eq7 am ersten Periodenanfang;
EqLoad_H2_1(set_ii, set_load_DS_H)$((ORD(set_ii) ge sca_numberStoring*sca_iterator+1)
                                  AND(ORD(set_ii) le sca_numberStoring*sca_iterator+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))
                                  AND (set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)..
         var_DSM_up(set_ii, set_load_DS_H)
         =e=
         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1 AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND ORD(set_ii_duplicate)<=Ord(set_ii)+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)),
         var_DSM_down(set_ii,set_ii_duplicate, set_load_DS_H));

Equation EqLoad_H2_1_second(set_ii_0,set_pss) Eq7 am ersten Periodenanfang;
EqLoad_H2_1_second(set_ii, set_load_DS_H)$((ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring)
                                  AND(ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))
                                  AND (set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)..
         var_DSM_up(set_ii, set_load_DS_H)
         =e=
         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1+sca_numberStoring AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND ORD(set_ii_duplicate)<=Ord(set_ii)+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)),
         var_DSM_down(set_ii,set_ii_duplicate, set_load_DS_H));


EQUATIONS EqLoad_H2_2_1(set_ii_0, set_pss) Eq7 in Periodenmitte;
EqLoad_H2_2_1(set_ii, set_load_DS_H)$((ORD(set_ii) ge sca_numberStoring*sca_iterator+1+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))
                                  AND (ORD(set_ii) le (sca_numberStoring*sca_iterator+sca_numberStoring)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))
                                  AND (set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)..
         var_DSM_up(set_ii, set_load_DS_H)
         =e=
         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)),
         var_DSM_down(set_ii,set_ii_duplicate, set_load_DS_H));

EQUATIONS EqLoad_H2_2_1_second(set_ii_0, set_pss) Eq7 in Periodenmitte;
EqLoad_H2_2_1_second(set_ii, set_load_DS_H)$((ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))
                                  AND (ORD(set_ii) le (sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))
                                  AND (set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)..
         var_DSM_up(set_ii, set_load_DS_H)
         =e=
         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)),
         var_DSM_down(set_ii,set_ii_duplicate, set_load_DS_H));


EQUATIONS EqLoad_H2_3_1(set_ii_0, set_pss) Eq7 am Tagesende;
EqLoad_H2_3_1(set_ii, set_load_DS_H)$((ORD(set_ii) ge sca_numberStoring*sca_iterator+sca_numberStoring+1-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))
                                  AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring)
                                  AND (set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)..
         var_DSM_up(set_ii, set_load_DS_H)
         =e=
         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring),
         var_DSM_down(set_ii,set_ii_duplicate, set_load_DS_H));

EQUATIONS EqLoad_H2_3_1_second(set_ii_0, set_pss) Eq7 am Tagesende;
EqLoad_H2_3_1_second(set_ii, set_load_DS_H)$((ORD(set_ii) ge sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring+1-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))
                                  AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)
                                  AND (set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)..
         var_DSM_up(set_ii, set_load_DS_H)
         =e=
         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring),
         var_DSM_down(set_ii,set_ii_duplicate, set_load_DS_H));

EQUATIONS EqLoad_H3(set_ii_0,set_pss) Eq8 über gesamten Abschnitt;
EqLoad_H3(set_t, set_load_DS_H)$(set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1)..
         var_DSM_up(set_t, set_load_DS_H)
         =l=
         par_DSM_DS_H_Cup(set_load_DS_H)*par_L_DS_H(set_t, set_load_DS_H);


Equation EqLoad_H4_1(set_ii_0, set_pss) Eq9 am ersten Periodenanfang;
EqLoad_H4_1(set_ii_duplicate, set_load_DS_H)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+1)
                                  AND (ORD(set_ii_duplicate) le sca_numberStoring*sca_iterator+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)
                                  AND (set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1))..
         sum(set_ii$(ORD(set_ii)>=sca_numberStoring*sca_iterator+1 AND ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND ORD(set_ii)<=ORD(set_ii_duplicate)+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_H))
         =l=
         par_DSM_DS_H_Cdown(set_load_DS_H)*par_L_DS_H(set_ii_duplicate, set_load_DS_H);

Equation EqLoad_H4_1_second(set_ii_0, set_pss) Eq9 am ersten Periodenanfang;
EqLoad_H4_1_second(set_ii_duplicate, set_load_DS_H)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+1+sca_numberStoring)
                                  AND (ORD(set_ii_duplicate) le sca_numberStoring*sca_iterator+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)
                                  AND (set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1))..
         sum(set_ii$(ORD(set_ii)>=sca_numberStoring*sca_iterator+1+sca_numberStoring AND ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND ORD(set_ii)<=ORD(set_ii_duplicate)+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_H))
         =l=
         par_DSM_DS_H_Cdown(set_load_DS_H)*par_L_DS_H(set_ii_duplicate, set_load_DS_H);

EQUATIONS EqLoad_H4_2_1(set_ii_0,set_pss) Eq9 in Periodenmitte ;
EqLoad_H4_2_1(set_ii_duplicate, set_load_DS_H)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+1+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))
                                  AND (ORD(set_ii_duplicate) le (sca_numberStoring*sca_iterator+sca_numberStoring)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)
                                  AND (set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1))..
         sum(set_ii$(ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND (ORD(set_ii)<=ORD(set_ii_duplicate)+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_H))
         =l=
         par_DSM_DS_H_Cdown(set_load_DS_H)*par_L_DS_H(set_ii_duplicate, set_load_DS_H);

EQUATIONS EqLoad_H4_2_1_second(set_ii_0,set_pss) Eq9 in Periodenmitte ;
EqLoad_H4_2_1_second(set_ii_duplicate, set_load_DS_H)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+1+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))
                                  AND (ORD(set_ii_duplicate) le (sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)
                                  AND (set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1))..
         sum(set_ii$(ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND (ORD(set_ii)<=ORD(set_ii_duplicate)+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_H))
         =l=
         par_DSM_DS_H_Cdown(set_load_DS_H)*par_L_DS_H(set_ii_duplicate, set_load_DS_H);


EQUATIONS EqLoad_H4_3_1(set_ii_0,set_pss) Eq9 am Tagesende;
EqLoad_H4_3_1(set_ii_duplicate, set_load_DS_H)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+sca_numberStoring+1-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))
                                  AND (ORD(set_ii_duplicate) le sca_numberStoring*sca_iterator+sca_numberStoring and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)
                                  AND (set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1))..
         sum(set_ii$(ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND (ORD(set_ii)<=sca_numberStoring*sca_iterator+sca_numberStoring)),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_H))
         =l=
         par_DSM_DS_H_Cdown(set_load_DS_H)*par_L_DS_H(set_ii_duplicate, set_load_DS_H);

EQUATIONS EqLoad_H4_3_1_second(set_ii_0,set_pss) Eq9 am Tagesende;
EqLoad_H4_3_1_second(set_ii_duplicate, set_load_DS_H)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring+1-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))
                                  AND (ORD(set_ii_duplicate) le sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)
                                  AND (set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1))..
         sum(set_ii$(ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND (ORD(set_ii)<=sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_H))
         =l=
         par_DSM_DS_H_Cdown(set_load_DS_H)*par_L_DS_H(set_ii_duplicate, set_load_DS_H);

Equation EqLoad_H5_1(set_ii_0, set_pss) Eq10 am ersten Periodenanfang;
EqLoad_H5_1(set_ii_duplicate, set_load_DS_H)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+1)
                                  AND (ORD(set_ii_duplicate) le sca_numberStoring*sca_iterator+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))
                                  AND (set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)..
         var_DSM_up(set_ii_duplicate, set_load_DS_H)
         + sum(set_ii$(ORD(set_ii)>=sca_numberStoring*sca_iterator+1 AND ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND ORD(set_ii)<=ORD(set_ii_duplicate)+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_H))
         =l=
         max(par_DSM_DS_H_Cup(set_load_DS_H)*par_L_DS_H(set_ii_duplicate, set_load_DS_H),par_DSM_DS_H_Cdown(set_load_DS_H)*par_L_DS_H(set_ii_duplicate, set_load_DS_H));

Equation EqLoad_H5_1_second(set_ii_0, set_pss) Eq10 am ersten Periodenanfang;
EqLoad_H5_1_second(set_ii_duplicate, set_load_DS_H)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+1+sca_numberStoring)
                                  AND (ORD(set_ii_duplicate) le sca_numberStoring*sca_iterator+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)+sca_numberStoring)
                                  AND (set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)..
         var_DSM_up(set_ii_duplicate, set_load_DS_H)
         + sum(set_ii$(ORD(set_ii)>=sca_numberStoring*sca_iterator+sca_numberStoring+1 AND ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H) AND ORD(set_ii)<=ORD(set_ii_duplicate)+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_H))
         =l=
         max(par_DSM_DS_H_Cup(set_load_DS_H)*par_L_DS_H(set_ii_duplicate, set_load_DS_H),par_DSM_DS_H_Cdown(set_load_DS_H)*par_L_DS_H(set_ii_duplicate, set_load_DS_H));


EQUATIONS EqLoad_H5_2_1(set_ii_0, set_pss) Eq10 in Periodenmitte;
EqLoad_H5_2_1(set_ii_duplicate, set_load_DS_H)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+1+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))
                                  AND (ORD(set_ii_duplicate) le (sca_numberStoring*sca_iterator+sca_numberStoring)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))
                                  AND (set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)..
         var_DSM_up(set_ii_duplicate, set_load_DS_H)
         + sum(set_ii$((ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)) AND (ORD(set_ii)<=ORD(set_ii_duplicate)+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_H))
         =l=
           max(par_DSM_DS_H_Cup(set_load_DS_H)*par_L_DS_H(set_ii_duplicate, set_load_DS_H),par_DSM_DS_H_Cdown(set_load_DS_H)*par_L_DS_H(set_ii_duplicate, set_load_DS_H));

EQUATIONS EqLoad_H5_2_1_second(set_ii_0, set_pss) Eq10 in Periodenmitte;
EqLoad_H5_2_1_second(set_ii_duplicate, set_load_DS_H)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+1+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))
                                  AND (ORD(set_ii_duplicate) le (sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))
                                  AND (set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)..
         var_DSM_up(set_ii_duplicate, set_load_DS_H)
         + sum(set_ii$((ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)) AND (ORD(set_ii)<=ORD(set_ii_duplicate)+(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_H))
         =l=
           max(par_DSM_DS_H_Cup(set_load_DS_H)*par_L_DS_H(set_ii_duplicate, set_load_DS_H),par_DSM_DS_H_Cdown(set_load_DS_H)*par_L_DS_H(set_ii_duplicate, set_load_DS_H));

EQUATIONS EqLoad_H5_3_1(set_ii_0, set_pss) Eq10 am Tagesende;
EqLoad_H5_3_1(set_ii_duplicate, set_load_DS_H)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+sca_numberStoring+1-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))
                                  AND (ORD(set_ii_duplicate) le sca_numberStoring*sca_iterator+sca_numberStoring)
                                  AND (set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)..
         var_DSM_up(set_ii_duplicate, set_load_DS_H)
         + sum(set_ii$((ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)) AND (ORD(set_ii)<=sca_numberStoring*sca_iterator+sca_numberStoring)),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_H))
         =l=
           max(par_DSM_DS_H_Cup(set_load_DS_H)*par_L_DS_H(set_ii_duplicate, set_load_DS_H),par_DSM_DS_H_Cdown(set_load_DS_H)*par_L_DS_H(set_ii_duplicate, set_load_DS_H));

EQUATIONS EqLoad_H5_3_1_second(set_ii_0, set_pss) Eq10 am Tagesende;
EqLoad_H5_3_1_second(set_ii_duplicate, set_load_DS_H)$((ORD(set_ii_duplicate) ge sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring+1-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H))
                                  AND (ORD(set_ii_duplicate) le sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)
                                  AND (set_pss_opt(set_load_DS_H) and par_X_pss_model(set_load_DS_H)=1) and par_DSM_DS_H_t(set_load_DS_H) > 0 and par_DSM_DS_H_Cup(set_load_DS_H) > 0)..
         var_DSM_up(set_ii_duplicate, set_load_DS_H)
         + sum(set_ii$((ORD(set_ii)>=ORD(set_ii_duplicate)-(1/sca_delta_ii)*par_DSM_DS_H_t(set_load_DS_H)) AND (ORD(set_ii)<=sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring)),var_DSM_down(set_ii, set_ii_duplicate, set_load_DS_H))
         =l=
           max(par_DSM_DS_H_Cup(set_load_DS_H)*par_L_DS_H(set_ii_duplicate, set_load_DS_H),par_DSM_DS_H_Cdown(set_load_DS_H)*par_L_DS_H(set_ii_duplicate, set_load_DS_H));


model mod_load_DS_H_orga /EqLoad_H1, EqLoad_H1_1, EqLoad_H1_1_second, EqLoad_H1_2_1, EqLoad_H1_2_1_second, EqLoad_H1_3_1, EqLoad_H1_3_1_second, EqLoad_H2_1, EqLoad_H2_1_second, EqLoad_H2_2_1, EqLoad_H2_2_1_second, EqLoad_H2_3_1, EqLoad_H2_3_1_second, EqLoad_H3, EqLoad_H4_1, EqLoad_H4_1_second, EqLoad_H4_2_1, EqLoad_H4_2_1_second, EqLoad_H4_3_1, EqLoad_H4_3_1_second, EqLoad_H5_1, EqLoad_H5_1_second, EqLoad_H5_2_1, EqLoad_H5_2_1_second, EqLoad_H5_3_1, EqLoad_H5_3_1_second/;
model mod_load_DS_H_cust /EqLoad_H1, EqLoad_H1_1, EqLoad_H1_1_second, EqLoad_H1_2_1, EqLoad_H1_2_1_second, EqLoad_H1_3_1, EqLoad_H1_3_1_second, EqLoad_H2_1, EqLoad_H2_1_second, EqLoad_H2_2_1, EqLoad_H2_2_1_second, EqLoad_H2_3_1, EqLoad_H2_3_1_second, EqLoad_H3, EqLoad_H4_1, EqLoad_H4_1_second, EqLoad_H4_2_1, EqLoad_H4_2_1_second, EqLoad_H4_3_1, EqLoad_H4_3_1_second, EqLoad_H5_1, EqLoad_H5_1_second, EqLoad_H5_2_1, EqLoad_H5_2_1_second, EqLoad_H5_3_1, EqLoad_H5_3_1_second/;
