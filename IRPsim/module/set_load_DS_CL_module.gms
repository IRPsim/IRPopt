parameter par_DSM_DS_CL_Cup(set_load_DS_CL) maximal upward shift of load in percent of load;
parameter par_DSM_DS_CL_Cdown(set_load_DS_CL) maximal downward shift of load in percent of load;


***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------

EQUATIONS EqLoad_CL1(set_ii,set_pss) Lastdeckungsgleichung ohne Lastverschiebungsmoeglichkeit;
EqLoad_CL1(set_t,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) AND par_X_pss_model(set_load_DS_CL)=1 AND (par_DSM_DS_CL_t(set_load_DS_CL)=0 OR par_DSM_DS_CL_Cup(set_load_DS_CL)=0))..
         - sum(set_fromPss,
         var_energyFlow(set_t,'CL',set_fromPss,set_load_DS_CL)$set_energyLink_opt('CL',set_fromPss,set_load_DS_CL))
         + sum(set_toPss,
         var_energyFlow(set_t,'CL',set_load_DS_CL,set_toPss)$set_energyLink_opt('CL',set_load_DS_CL,set_toPss))
         =e= par_L_DS_CL(set_t,set_load_DS_CL)*(-1);

EQUATIONS EqLoad_CL1_1(set_ii_0,set_pss) Lastdeckungsgleichung mit Lastverschiebungsmoeglichkeit;
EqLoad_CL1_1(set_t,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0)..
         sum(set_fromPss, var_energyFlow(set_t,'CL',set_fromPss,set_load_DS_CL)$set_energyLink_opt('CL',set_fromPss,set_load_DS_CL))
         + var_DSM_down_sum(set_t,set_load_DS_CL)
         =e=
         par_L_DS_CL(set_t,set_load_DS_CL)
         + var_DSM_up_sum(set_t,set_load_DS_CL);

EQUATIONS EqLoad_CL2_I(set_ii_0,set_pss) Lastdeckungsgleichung UP=DOWN Lastverschiebungsmoeglichkeit (erste Optimierungshaelfte);
EqLoad_CL2_I(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
                                         AND (ORD(set_ii) ge sca_numberStoring*sca_iterator+1)
                                         AND (ORD(set_ii) le sca_numberStoring*(sca_iterator+1)))..
         var_DSM_up(set_ii,set_load_DS_CL)
         =e=
         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1 AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*(sca_iterator+1)),var_DSM_down(set_ii,set_ii_duplicate,set_load_DS_CL));

EQUATIONS EqLoad_CL2_II(set_ii_0,set_pss) Lastdeckungsgleichung UP=DOWN Lastverschiebungsmoeglichkeit Periodenanfang (zweite Optimierungshaelfte);
EqLoad_CL2_II(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
                                         AND (ORD(set_ii) ge sca_numberStoring*(sca_iterator+1)+1)
                                         AND (ORD(set_ii) le sca_numberStoring*(sca_iterator+2)))..
         var_DSM_up(set_ii,set_load_DS_CL)
         =e=
         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*(sca_iterator+1)+1 AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*(sca_iterator+2)),var_DSM_down(set_ii,set_ii_duplicate,set_load_DS_CL));

*EQUATIONS EqLoad_CL2a_I(set_ii_0,set_pss) Lastdeckungsgleichung UP=DOWN Lastverschiebungsmoeglichkeit Periodenanfang (erste Optimierungshaelfte);
*EqLoad_CL2a_I(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
*                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
*                                         AND (ORD(set_ii) ge sca_numberStoring*sca_iterator+1)
*                                         AND (ORD(set_ii) le sca_numberStoring*sca_iterator+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)))..
*         var_DSM_up(set_ii,set_load_DS_CL)
*         =e=
*         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1 AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
*                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring),var_DSM_down(set_ii,set_ii_duplicate,set_load_DS_CL));
*
*EQUATIONS EqLoad_CL2a_II(set_ii_0,set_pss) Lastdeckungsgleichung UP=DOWN Lastverschiebungsmoeglichkeit Periodenanfang (zweite Optimierungshaelfte);
*EqLoad_CL2a_II(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
*                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
*                                         AND (ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring)
*                                         AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)))..
*         var_DSM_up(set_ii,set_load_DS_CL)
*         =e=
*         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1+sca_numberStoring AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
*                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring),var_DSM_down(set_ii,set_ii_duplicate,set_load_DS_CL));
*
*EQUATIONS EqLoad_CL2m_I(set_ii_0,set_pss) Lastdeckungsgleichung UP=DOWN Lastverschiebungsmoeglichkeit Periodenmitte (erste Optimierungshaelfte);
*EqLoad_CL2m_I(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
*                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
*                                         AND (ORD(set_ii) ge sca_numberStoring*sca_iterator+1+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL))
*                                         AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)))..
*         var_DSM_up(set_ii,set_load_DS_CL)
*         =e=
*         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1 AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
*                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring),var_DSM_down(set_ii,set_ii_duplicate,set_load_DS_CL));
*
*EQUATIONS EqLoad_CL2m_II(set_ii_0,set_pss) Lastdeckungsgleichung UP=DOWN Lastverschiebungsmoeglichkeit Periodenmitte (zweite Optimierungshaelfte);
*EqLoad_CL2m_II(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
*                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
*                                         AND (ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL))
*                                         AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)))..
*         var_DSM_up(set_ii,set_load_DS_CL)
*         =e=
*         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1+sca_numberStoring AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
*                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring),var_DSM_down(set_ii,set_ii_duplicate,set_load_DS_CL));
*
*
*EQUATIONS EqLoad_CL2e_I(set_ii_0,set_pss) Lastdeckungsgleichung UP=DOWN Lastverschiebungsmoeglichkeit Periodenende (erste Optimierungshaelfte);
*EqLoad_CL2e_I(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
*                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
*                                         AND (ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL))
*                                         AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring))..
*         var_DSM_up(set_ii,set_load_DS_CL)
*         =e=
*         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1 AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
*                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring),var_DSM_down(set_ii,set_ii_duplicate,set_load_DS_CL));
*
*EQUATIONS EqLoad_CL2e_II(set_ii_0,set_pss) Lastdeckungsgleichung UP=DOWN Lastverschiebungsmoeglichkeit Periodenende (zweite Optimierungshaelfte);
*EqLoad_CL2e_II(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
*                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
*                                         AND (ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring+sca_numberStoring-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL))
*                                         AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring))..
*         var_DSM_up(set_ii,set_load_DS_CL)
*         =e=
*         sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1+sca_numberStoring AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
*                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring),var_DSM_down(set_ii,set_ii_duplicate,set_load_DS_CL));


EQUATIONS EqLoad_CL3(set_ii_0,set_pss) Summierung Lastverschiebung inkl. Regelenergievorhaltung;
EqLoad_CL3(set_t,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0)..
         var_DSM_up(set_t,set_load_DS_CL)
         =e=
         var_DSM_up_sum(set_t,set_load_DS_CL);
*         +SUM(set_toPss,var_energyFlow(set_t,'PR',set_load_DS_CL,set_toPss)$set_energyLink_opt('PR',set_load_DS_CL,set_toPss));

EQUATIONS EqLoad_CL4a_I(set_ii_0,set_pss) Summierung Lastreduktionen inklusive Regelenergievorhaltung Periodenanfang (erste Optimierungshaelfte);
EqLoad_CL4a_I(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
                                         AND (ORD(set_ii) ge sca_numberStoring*sca_iterator+1)
                                         AND (ORD(set_ii) le sca_numberStoring*sca_iterator+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)))..
          sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1 AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring),var_DSM_down(set_ii_duplicate,set_ii,set_load_DS_CL))
          =e=
          var_DSM_down_sum(set_ii,set_load_DS_CL);
*          + SUM(set_toPss,var_energyFlow(set_ii,'NR',set_load_DS_CL,set_toPss)$set_energyLink_opt('NR',set_load_DS_CL,set_toPss));

EQUATIONS EqLoad_CL4a_II(set_ii_0,set_pss) Summierung Lastreduktionen inklusive Regelenergievorhaltung Periodenanfang (zweite Optimierungshaelfte);
EqLoad_CL4a_II(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
                                         AND (ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring)
                                         AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)))..
          sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1+sca_numberStoring AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring),var_DSM_down(set_ii_duplicate,set_ii,set_load_DS_CL))
          =e=
          var_DSM_down_sum(set_ii,set_load_DS_CL);
*          + SUM(set_toPss,var_energyFlow(set_ii,'NR',set_load_DS_CL,set_toPss)$set_energyLink_opt('NR',set_load_DS_CL,set_toPss));

EQUATIONS EqLoad_CL4m_I(set_ii_0,set_pss) Summierung Lastreduktionen inklusive Regelenergievorhaltung Periodenmitte (erste Optimierungshaelfte);
EqLoad_CL4m_I(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
                                         AND (ORD(set_ii) ge sca_numberStoring*sca_iterator+1+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL))
                                         AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)))..
          sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1 AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring),var_DSM_down(set_ii_duplicate,set_ii,set_load_DS_CL))
          =e=
          var_DSM_down_sum(set_ii,set_load_DS_CL);
*          + SUM(set_toPss,var_energyFlow(set_ii,'NR',set_load_DS_CL,set_toPss)$set_energyLink_opt('NR',set_load_DS_CL,set_toPss));

EQUATIONS EqLoad_CL4m_II(set_ii_0,set_pss) Summierung Lastreduktionen inklusive Regelenergievorhaltung Periodenmitte (zweite Optimierungshaelfte);
EqLoad_CL4m_II(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
                                         AND (ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL))
                                         AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)))..
          sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1+sca_numberStoring AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring),var_DSM_down(set_ii_duplicate,set_ii,set_load_DS_CL))
          =e=
          var_DSM_down_sum(set_ii,set_load_DS_CL);
*          + SUM(set_toPss,var_energyFlow(set_ii,'NR',set_load_DS_CL,set_toPss)$set_energyLink_opt('NR',set_load_DS_CL,set_toPss));

EQUATIONS EqLoad_CL4e_I(set_ii_0,set_pss) Summierung Lastreduktionen inklusive Regelenergievorhaltung Periodenende (erste Optimierungshaelfte);
EqLoad_CL4e_I(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
                                         AND (ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL))
                                         AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring))..
          sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1 AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring),var_DSM_down(set_ii_duplicate,set_ii,set_load_DS_CL))
          =e=
          var_DSM_down_sum(set_ii,set_load_DS_CL);
*          + SUM(set_toPss,var_energyFlow(set_ii,'NR',set_load_DS_CL,set_toPss)$set_energyLink_opt('NR',set_load_DS_CL,set_toPss));

EQUATIONS EqLoad_CL4e_II(set_ii_0,set_pss) Summierung Lastreduktionen inklusive Regelenergievorhaltung Periodenende (zweite Optimierungshaelfte);
EqLoad_CL4e_II(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
                                         AND (ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring+sca_numberStoring-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL))
                                         AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring))..
          sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1+sca_numberStoring AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring),var_DSM_down(set_ii_duplicate,set_ii,set_load_DS_CL))
          =e=
          var_DSM_down_sum(set_ii,set_load_DS_CL);
*          + SUM(set_toPss,var_energyFlow(set_ii,'NR',set_load_DS_CL,set_toPss)$set_energyLink_opt('NR',set_load_DS_CL,set_toPss));

EQUATIONS EqLoad_CL5a_I(set_ii_0,set_pss) Wiederherstellung Lastverschiebung Periodenanfang (erste Optimierungshaelfte);
EqLoad_CL5a_I(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
                                         AND (ORD(set_ii) ge sca_numberStoring*sca_iterator+1)
                                         AND (ORD(set_ii) le sca_numberStoring*sca_iterator+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)))..
          var_DSM_up(set_ii,set_load_DS_CL)
          =l=
          par_DSM_DS_CL_Cup(set_load_DS_CL)*(sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1 AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring),par_L_DS_CL(set_ii_duplicate,set_load_DS_CL))-par_L_DS_CL(set_ii, set_load_DS_CL));

EQUATIONS EqLoad_CL5a_II(set_ii_0,set_pss) Wiederherstellung Lastverschiebung Periodenanfang (zweite Optimierungshaelfte);
EqLoad_CL5a_II(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
                                         AND (ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring)
                                         AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)))..
          var_DSM_up(set_ii,set_load_DS_CL)
          =l=
          par_DSM_DS_CL_Cup(set_load_DS_CL)*(sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1+sca_numberStoring AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring),par_L_DS_CL(set_ii_duplicate,set_load_DS_CL))-par_L_DS_CL(set_ii, set_load_DS_CL));

EQUATIONS EqLoad_CL5m_I(set_ii_0,set_pss) Wiederherstellung Lastverschiebung Periodenmitte (erste Optimierungshaelfte);
EqLoad_CL5m_I(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
                                         AND (ORD(set_ii) ge sca_numberStoring*sca_iterator+1+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL))
                                         AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)))..
          var_DSM_up(set_ii,set_load_DS_CL)
          =l=
          par_DSM_DS_CL_Cup(set_load_DS_CL)*(sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1 AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring),par_L_DS_CL(set_ii_duplicate,set_load_DS_CL))-par_L_DS_CL(set_ii, set_load_DS_CL));

EQUATIONS EqLoad_CL5m_II(set_ii_0,set_pss) Wiederherstellung Lastverschiebung Periodenmitte (zweite Optimierungshaelfte);
EqLoad_CL5m_II(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
                                         AND (ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL))
                                         AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)))..
          var_DSM_up(set_ii,set_load_DS_CL)
          =l=
          par_DSM_DS_CL_Cup(set_load_DS_CL)*(sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1+sca_numberStoring AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring),par_L_DS_CL(set_ii_duplicate,set_load_DS_CL))-par_L_DS_CL(set_ii, set_load_DS_CL));

EQUATIONS EqLoad_CL5e_I(set_ii_0,set_pss) Wiederherstellung Lastverschiebung Periodenmitte (erste Optimierungshaelfte);
EqLoad_CL5e_I(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
                                         AND (ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL))
                                         AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring))..
          var_DSM_up(set_ii,set_load_DS_CL)
          =l=
          par_DSM_DS_CL_Cup(set_load_DS_CL)*(sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1 AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring),par_L_DS_CL(set_ii_duplicate,set_load_DS_CL))-par_L_DS_CL(set_ii, set_load_DS_CL));

EQUATIONS EqLoad_CL5e_II(set_ii_0,set_pss) Wiederherstellung Lastverschiebung Periodenmitte (zweite Optimierungshaelfte);
EqLoad_CL5e_II(set_ii,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0
                                         AND (ORD(set_ii) ge sca_numberStoring*sca_iterator+1+sca_numberStoring+sca_numberStoring-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL))
                                         AND (ORD(set_ii) le sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring))..
          var_DSM_up(set_ii,set_load_DS_CL)
          =l=
          par_DSM_DS_CL_Cup(set_load_DS_CL)*(sum(set_ii_duplicate$(ORD(set_ii_duplicate)>=sca_numberStoring*sca_iterator+1+sca_numberStoring AND ORD(set_ii_duplicate)>=ORD(set_ii)-(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL)
                                         AND ORD(set_ii_duplicate)<=ORD(set_ii)+(1/sca_delta_ii)*par_DSM_DS_CL_t(set_load_DS_CL) AND ORD(set_ii_duplicate)<=sca_numberStoring*sca_iterator+sca_numberStoring+sca_numberStoring),par_L_DS_CL(set_ii_duplicate,set_load_DS_CL))-par_L_DS_CL(set_ii, set_load_DS_CL));

EQUATIONS EqLoad_CL6(set_ii_0,set_pss) Begrenzung Lastverschiebung;
EqLoad_CL6(set_t,set_load_DS_CL)$(set_pss_opt(set_load_DS_CL) and par_X_pss_model(set_load_DS_CL)=1
                                         AND par_DSM_DS_CL_t(set_load_DS_CL)>0 AND par_DSM_DS_CL_Cup(set_load_DS_CL)>0)..
         var_DSM_down_sum(set_t,set_load_DS_CL)
         =l=
         par_DSM_DS_CL_Cdown(set_load_DS_CL)*par_L_DS_CL(set_t, set_load_DS_CL);

*EqLoad_CL2_I, EqLoad_CL2_II,
*EqLoad_CL2a_I, EqLoad_CL2a_II, EqLoad_CL2m_I, EqLoad_CL2m_II, EqLoad_CL2e_I, EqLoad_CL2e_II,
model mod_load_DS_CL_orga /EqLoad_CL1, EqLoad_CL1_1, EqLoad_CL2_I, EqLoad_CL2_II, EqLoad_CL3, EqLoad_CL4a_I, EqLoad_CL4a_II, EqLoad_CL4m_I, EqLoad_CL4m_II, EqLoad_CL4e_I, EqLoad_CL4e_II, EqLoad_CL5a_I, EqLoad_CL5a_II, EqLoad_CL5m_I, EqLoad_CL5m_II, EqLoad_CL5e_I, EqLoad_CL5e_II, EqLoad_CL6/;
model mod_load_DS_CL_cust /EqLoad_CL1, EqLoad_CL1_1, EqLoad_CL2_I, EqLoad_CL2_II, EqLoad_CL3, EqLoad_CL4a_I, EqLoad_CL4a_II, EqLoad_CL4m_I, EqLoad_CL4m_II, EqLoad_CL4e_I, EqLoad_CL4e_II, EqLoad_CL5a_I, EqLoad_CL5a_II, EqLoad_CL5m_I, EqLoad_CL5m_II, EqLoad_CL5e_I, EqLoad_CL5e_II, EqLoad_CL6/;
