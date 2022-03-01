*-------------------------------------------------------------------------------
* ##Deklarieren##
*-------------------------------------------------------------------------------
LOOP((set_a, set_side_opt(set_side)),

    PUT Output_balancing_organizmdl;

    PUT_UTILITY 'ren' / 'output/results/' set_a.tl:0 '.' set_optsteps.tl:0 '.' set_side_opt.tl:0  '.output_balancing_organizmdl.csv';

    LOOP(set_t$set_t_store(set_t),

         PUT "# ";

         PUT "set_a" "; ";

         PUT "set_t" "; ";

         PUT "par_out_Modelstat_organizationmodel" "("set_t.tl"); ";

         PUT "par_out_Solvestat_organizationmodel" "("set_t.tl"); ";

*-------------------------------------------------------------------------------
* ##Deklarieren Energieflüsse Stromlast##
*-------------------------------------------------------------------------------
         LOOP (set_load_DS_E$(set_pssOH(set_side_opt,set_load_DS_E) and set_pss_opt(set_load_DS_E) and not set_pss_opt_cust(set_load_DS_E)),
              PUT "par_out_E_fromPss_toELoad""("set_t.tl", ",set_side_opt.tl", ",set_load_DS_E.tl"); ";
         );

                 LOOP (set_load_DS_E$(set_pssOH(set_side_opt,set_load_DS_E) and set_pss_opt(set_load_DS_E)  and not set_pss_opt_cust(set_load_DS_E)),
              PUT "par_out_E_fromEGrid_toELoad""("set_t.tl", ",set_side_opt.tl", ",set_load_DS_E.tl"); ";
         );

                 LOOP (set_load_DS_E$(set_pssOH(set_side_opt,set_load_DS_E) and set_pss_opt(set_load_DS_E)  and not set_pss_opt_cust(set_load_DS_E)),
              PUT "par_out_E_fromES_toELoad""("set_t.tl", ",set_side_opt.tl", ",set_load_DS_E.tl"); ";
         );

                 LOOP (set_load_DS_E$(set_pssOH(set_side_opt,set_load_DS_E) and set_pss_opt(set_load_DS_E)  and not set_pss_opt_cust(set_load_DS_E)),
              PUT "par_out_E_fromPV_toELoad""("set_t.tl", ",set_side_opt.tl", ",set_load_DS_E.tl"); ";
         );

                                  LOOP (set_load_DS_E$(set_pssOH(set_side_opt,set_load_DS_E) and set_pss_opt(set_load_DS_E)  and not set_pss_opt_cust(set_load_DS_E)),
              PUT "par_out_E_fromCHP_toELoad""("set_t.tl", ",set_side_opt.tl", ",set_load_DS_E.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren Energieflüsse Fernwärmelast##
*-------------------------------------------------------------------------------
         LOOP (set_load_DS_W$(set_pssOH(set_side_opt,set_load_DS_W) and set_pss_opt(set_load_DS_W)  and not set_pss_opt_cust(set_load_DS_W)),
              PUT "par_out_W_fromPss_toWLoad""("set_t.tl", ",set_side_opt.tl", ",set_load_DS_W.tl"); ";
         );

                 LOOP (set_load_DS_W$(set_pssOH(set_side_opt,set_load_DS_W) and set_pss_opt(set_load_DS_W) and not set_pss_opt_cust(set_load_DS_W)),
              PUT "par_out_W_fromWGrid_toWLoad""("set_t.tl", ",set_side_opt.tl", ",set_load_DS_W.tl"); ";
         );

                 LOOP (set_load_DS_W$(set_pssOH(set_side_opt,set_load_DS_W) and set_pss_opt(set_load_DS_W) and not set_pss_opt_cust(set_load_DS_W)),
              PUT "par_out_W_fromEB_toWLoad""("set_t.tl", ",set_side_opt.tl", ",set_load_DS_W.tl"); ";
         );

                 LOOP (set_load_DS_W$(set_pssOH(set_side_opt,set_load_DS_W) and set_pss_opt(set_load_DS_W) and not set_pss_opt_cust(set_load_DS_W)),
              PUT "par_out_W_fromNGB_toWLoad""("set_t.tl", ",set_side_opt.tl", ",set_load_DS_W.tl"); ";
         );

                 LOOP (set_load_DS_W$(set_pssOH(set_side_opt,set_load_DS_W) and set_pss_opt(set_load_DS_W) and not set_pss_opt_cust(set_load_DS_W)),
              PUT "par_out_W_fromHP_toWLoad""("set_t.tl", ",set_side_opt.tl", ",set_load_DS_W.tl"); ";
         );

                 LOOP (set_load_DS_W$(set_pssOH(set_side_opt,set_load_DS_W) and set_pss_opt(set_load_DS_W) and not set_pss_opt_cust(set_load_DS_W)),
              PUT "par_out_W_fromTS_toWLoad""("set_t.tl", ",set_side_opt.tl", ",set_load_DS_W.tl"); ";
         );

                                  LOOP (set_load_DS_W$(set_pssOH(set_side_opt,set_load_DS_W) and set_pss_opt(set_load_DS_W) and not set_pss_opt_cust(set_load_DS_W)),
              PUT "par_out_W_fromCHP_toWLoad""("set_t.tl", ",set_side_opt.tl", ",set_load_DS_W.tl"); ";
         );

                                                  LOOP (set_load_DS_W$(set_pssOH(set_side_opt,set_load_DS_W) and set_pss_opt(set_load_DS_W) and not set_pss_opt_cust(set_load_DS_W)),
              PUT "par_out_W_fromST_toWLoad""("set_t.tl", ",set_side_opt.tl", ",set_load_DS_W.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren Energieflüsse Gaslast##
*-------------------------------------------------------------------------------
         LOOP (set_load_DS_G$(set_pssOH(set_side_opt,set_load_DS_G) and set_pss_opt(set_load_DS_G) and not set_pss_opt_cust(set_load_DS_G)),
              PUT "par_out_G_fromPss_toGLoad""("set_t.tl", ",set_side_opt.tl", ",set_load_DS_G.tl"); ";
         );

                 LOOP (set_load_DS_G$(set_pssOH(set_side_opt,set_load_DS_G) and set_pss_opt(set_load_DS_G)  and not set_pss_opt_cust(set_load_DS_G)),
              PUT "par_out_G_fromGGrid_toGLoad""("set_t.tl", ",set_side_opt.tl", ",set_load_DS_G.tl"); ";
         );

                                  LOOP (set_load_DS_G$(set_pssOH(set_side_opt,set_load_DS_G) and set_pss_opt(set_load_DS_G)  and not set_pss_opt_cust(set_load_DS_G)),
              PUT "par_out_G_fromGGrid_toCHP""("set_t.tl", ",set_side_opt.tl", ",set_load_DS_G.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren Energieflüsse Stromspeicher##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT "par_out_E_fromPss_toES""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_ES.tl"); ";
         );

                 LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT "par_out_E_fromES_toPss""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_ES.tl"); ";
         );

         LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT "par_out_E_fromPV_toES""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_ES.tl"); ";
         );

                 LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT "par_out_E_fromEGrid_toES""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_ES.tl"); ";
         );

         LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT "par_out_E_fromES_toELoad""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_ES.tl"); ";
         );

                 LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT "par_out_E_fromES_toHP""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_ES.tl"); ";
         );

                 LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT "par_out_E_fromES_toEB""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_ES.tl"); ";
         );

         LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT "par_out_E_fromES_toPRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_ES.tl"); ";
         );

                 LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT "par_out_E_fromES_toNRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_ES.tl"); ";
         );

         LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1),
              PUT "par_out_E_fromES_toPRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_ES.tl"); ";
         );

                 LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1),
              PUT "par_out_E_fromES_toNRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_ES.tl"); ";
         );



*-------------------------------------------------------------------------------
* ##Deklarieren Energieflüsse Wärmespeicher##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT "par_out_W_fromPss_toTS""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_TS.tl"); ";
         );

                 LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT "par_out_E_fromES_toPss""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_TS.tl"); ";
         );

         LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT "par_out_W_fromEB_toTS""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_TS.tl"); ";
         );

                 LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT "par_out_W_fromNGB_toTS""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_TS.tl"); ";
         );

         LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT "par_out_W_fromHP_toTS""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_TS.tl"); ";
         );

                 LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT "par_out_W_fromWGrid_toTS""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_TS.tl"); ";
         );

                                  LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT "par_out_W_fromCHP_toTS""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_TS.tl"); ";
         );

                                  LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT "par_out_W_fromST_toTS""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_TS.tl"); ";
         );

         LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT "par_out_W_fromTS_toWLoad""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_TS.tl"); ";
         );

                 LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT "par_out_W_fromTS_toWGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_TS.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren Energieflüsse Gaskessel##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_NGB$(set_pssOH(set_side_opt,set_tech_DES_NGB) and set_pss_opt(set_tech_DES_NGB) and not set_pss_opt_cust(set_tech_DES_NGB)),
              PUT "par_out_G_fromPss_toNGB""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_NGB.tl"); ";
         );

                 LOOP (set_tech_DES_NGB$(set_pssOH(set_side_opt,set_tech_DES_NGB) and set_pss_opt(set_tech_DES_NGB) and not set_pss_opt_cust(set_tech_DES_NGB)),
              PUT "par_out_W_fromNGB_toPss""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_NGB.tl"); ";
         );

         LOOP (set_tech_DES_NGB$(set_pssOH(set_side_opt,set_tech_DES_NGB) and set_pss_opt(set_tech_DES_NGB) and not set_pss_opt_cust(set_tech_DES_NGB)),
              PUT "par_out_G_fromGGrid_toNGB""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_NGB.tl"); ";
         );

                 LOOP (set_tech_DES_NGB$(set_pssOH(set_side_opt,set_tech_DES_NGB) and set_pss_opt(set_tech_DES_NGB) and not set_pss_opt_cust(set_tech_DES_NGB)),
              PUT "par_out_W_fromNGB_toWLoad""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_NGB.tl"); ";
         );

                 LOOP (set_tech_DES_NGB$(set_pssOH(set_side_opt,set_tech_DES_NGB) and set_pss_opt(set_tech_DES_NGB) and not set_pss_opt_cust(set_tech_DES_NGB)),
              PUT "par_out_W_fromNGB_toTS""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_NGB.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren Energieflüsse Durchlauferhitzer##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)),
              PUT "par_out_E_fromPss_toEB""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_EB.tl"); ";
         );

         LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)),
              PUT "par_out_W_fromEB_toPss""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_EB.tl"); ";
         );

         LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)),
              PUT "par_out_E_fromEGrid_toEB""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_EB.tl"); ";
         );

         LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)),
              PUT "par_out_E_fromES_toEB""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_EB.tl"); ";
         );

         LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)),
              PUT "par_out_E_fromPV_toEB""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_EB.tl"); ";
         );

                          LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)),
              PUT "par_out_E_fromCHP_toEB""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_EB.tl"); ";
         );

                 LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)),
              PUT "par_out_W_fromEB_toWLoad""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_EB.tl"); ";
         );

                 LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)),
              PUT "par_out_W_fromEB_toTS""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_EB.tl"); ";
         );

         LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)),
              PUT "par_out_E_fromEB_toPRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_EB.tl"); ";
         );

                 LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)),
              PUT "par_out_E_fromEB_toNRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_EB.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren Energieflüsse PV-Anlage##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_PV$(set_pssOH(set_side_opt,set_tech_DES_PV) and set_pss_opt(set_tech_DES_PV) and not set_pss_opt_cust(set_tech_DES_PV)),
              PUT "par_out_E_fromPV_toPss""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_PV.tl"); ";
         );

                 LOOP (set_tech_DES_PV$(set_pssOH(set_side_opt,set_tech_DES_PV) and set_pss_opt(set_tech_DES_PV)  and not set_pss_opt_cust(set_tech_DES_PV)),
              PUT "par_out_E_fromPV_toES""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_PV.tl"); ";
         );

                 LOOP (set_tech_DES_PV$(set_pssOH(set_side_opt,set_tech_DES_PV) and set_pss_opt(set_tech_DES_PV)  and not set_pss_opt_cust(set_tech_DES_PV)),
              PUT "par_out_E_fromPV_toELoad""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_PV.tl"); ";
         );

                 LOOP (set_tech_DES_PV$(set_pssOH(set_side_opt,set_tech_DES_PV) and set_pss_opt(set_tech_DES_PV)  and not set_pss_opt_cust(set_tech_DES_PV)),
              PUT "par_out_E_fromPV_toEGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_PV.tl"); ";
         );

        LOOP (set_tech_DES_PV$(set_pssOH(set_side_opt,set_tech_DES_PV) and set_pss_opt(set_tech_DES_PV)  and not set_pss_opt_cust(set_tech_DES_PV)),
              PUT "par_out_E_DES_PV_down""("set_t.tl", ",set_tech_DES_PV.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren Energieflüsse Wärmepumpe##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_HP$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pss_opt(set_tech_DES_HP) and not set_pss_opt_cust(set_tech_DES_HP)),
              PUT "par_out_E_fromPss_toHP""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_HP.tl"); ";
         );

         LOOP (set_tech_DES_HP$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pss_opt(set_tech_DES_HP) and not set_pss_opt_cust(set_tech_DES_HP)),
              PUT "par_out_W_fromHP_toPss""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_HP.tl"); ";
         );

         LOOP (set_tech_DES_HP$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pss_opt(set_tech_DES_HP) and not set_pss_opt_cust(set_tech_DES_HP)),
              PUT "par_out_E_fromEGrid_toHP""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_HP.tl"); ";
         );

         LOOP (set_tech_DES_HP$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pss_opt(set_tech_DES_HP) and not set_pss_opt_cust(set_tech_DES_HP)),
              PUT "par_out_E_fromES_toHP""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_HP.tl"); ";
         );

         LOOP (set_tech_DES_HP$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pss_opt(set_tech_DES_HP) and not set_pss_opt_cust(set_tech_DES_HP)),
              PUT "par_out_E_fromPV_toHP""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_HP.tl"); ";
         );

         LOOP (set_tech_DES_HP$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pss_opt(set_tech_DES_HP) and not set_pss_opt_cust(set_tech_DES_HP)),
              PUT "par_out_W_fromHP_toWLoad""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_HP.tl"); ";
         );

         LOOP (set_tech_DES_HP$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pss_opt(set_tech_DES_HP) and not set_pss_opt_cust(set_tech_DES_HP)),
              PUT "par_out_W_fromHP_toTS""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_HP.tl"); ";
         );

         LOOP (set_tech_DES_HP$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pss_opt(set_tech_DES_HP) and not set_pss_opt_cust(set_tech_DES_HP)),
              PUT "par_out_E_fromHP_toPRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_HP.tl"); ";
         );

                 LOOP (set_tech_DES_HP$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pss_opt(set_tech_DES_HP) and not set_pss_opt_cust(set_tech_DES_HP)),
              PUT "par_out_E_fromHP_toNRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_HP.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren Energieflüsse Kraft-Wärme-Kopplungsanlagen####
*-------------------------------------------------------------------------------
           LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT "par_out_E_fromCHP_toPss""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_CHP.tl"); ";
         );

                            LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT "par_out_E_fromCHP_toES""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_CHP.tl"); ";
         );

                            LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT "par_out_E_fromCHP_toELoad""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_CHP.tl"); ";
         );

                            LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT "par_out_E_fromCHP_toEGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_CHP.tl"); ";
         );

                            LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT "par_out_E_fromCHP_toHP""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_CHP.tl"); ";
         );

                            LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT "par_out_E_fromCHP_toEB""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_CHP.tl"); ";
         );

                            LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT "par_out_G_fromPss_toCHP""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_CHP.tl"); ";
         );

                                            LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT "par_out_G_fromGGrid_toCHP""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_CHP.tl"); ";
         );

                                            LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT "par_out_W_fromCHP_toPss""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_CHP.tl"); ";
         );

                                            LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT "par_out_W_fromCHP_toWLoad""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_CHP.tl"); ";
         );

                                            LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT "par_out_W_fromCHP_toTS""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_CHP.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren Energieflüsse Solarthermie####
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_ST$(set_pssOH(set_side_opt,set_tech_DES_ST) and set_pss_opt(set_tech_DES_ST) and not set_pss_opt_cust(set_tech_DES_ST)),
              PUT "par_out_W_fromST_toPss""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_ST.tl"); ";
         );

         LOOP (set_tech_DES_ST$(set_pssOH(set_side_opt,set_tech_DES_ST) and set_pss_opt(set_tech_DES_ST) and not set_pss_opt_cust(set_tech_DES_ST)),
              PUT "par_out_W_fromST_toWLoad""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_ST.tl"); ";
         );

         LOOP (set_tech_DES_ST$(set_pssOH(set_side_opt,set_tech_DES_ST) and set_pss_opt(set_tech_DES_ST) and not set_pss_opt_cust(set_tech_DES_ST)),
              PUT "par_out_W_fromST_toTS""("set_t.tl", ",set_side_opt.tl", ",set_tech_DES_ST.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren Energieflüsse Windturbine##
*-------------------------------------------------------------------------------
         LOOP (set_tech_SS_WT$(set_pssOH(set_side_opt,set_tech_SS_WT) and set_pss_opt(set_tech_SS_WT) and not set_pss_opt_cust(set_tech_SS_WT)),
              PUT "par_out_E_fromWT_toEGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_WT.tl"); ";
         );
         LOOP (set_tech_SS_WT$(set_pssOH(set_side_opt,set_tech_SS_WT) and set_pss_opt(set_tech_SS_WT) and not set_pss_opt_cust(set_tech_SS_WT)),
              PUT "par_out_E_fromWT_toEMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_WT.tl"); ";
         );
         LOOP (set_tech_SS_WT$(set_pssOH(set_side_opt,set_tech_SS_WT) and set_pss_opt(set_tech_SS_WT) and not set_pss_opt_cust(set_tech_SS_WT)),
              PUT "par_out_PR_fromWT_toRMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_WT.tl"); ";
         );
         LOOP (set_tech_SS_WT$(set_pssOH(set_side_opt,set_tech_SS_WT) and set_pss_opt(set_tech_SS_WT) and not set_pss_opt_cust(set_tech_SS_WT)),
              PUT "par_out_NR_fromWT_toRMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_WT.tl"); ";
         );
         LOOP (set_tech_SS_WT$(set_pssOH(set_side_opt,set_tech_SS_WT) and set_pss_opt(set_tech_SS_WT) and not set_pss_opt_cust(set_tech_SS_WT)),
              PUT "par_out_PR_fromWT_toRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_WT.tl"); ";
         );
         LOOP (set_tech_SS_WT$(set_pssOH(set_side_opt,set_tech_SS_WT) and set_pss_opt(set_tech_SS_WT) and not set_pss_opt_cust(set_tech_SS_WT)),
              PUT "par_out_E_fromWT_toPHS""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_WT.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren Energieflüsse PV-Anlage##
*-------------------------------------------------------------------------------
         LOOP (set_tech_SS_PV$(set_pssOH(set_side_opt,set_tech_SS_PV) and set_pss_opt(set_tech_SS_PV) and not set_pss_opt_cust(set_tech_SS_PV)),
              PUT "par_out_E_fromPV_toEGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_PV.tl"); ";
         );
         LOOP (set_tech_SS_PV$(set_pssOH(set_side_opt,set_tech_SS_PV) and set_pss_opt(set_tech_SS_PV) and not set_pss_opt_cust(set_tech_SS_PV)),
              PUT "par_out_E_fromPV_toEMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_PV.tl"); ";
         );
         LOOP (set_tech_SS_PV$(set_pssOH(set_side_opt,set_tech_SS_PV) and set_pss_opt(set_tech_SS_PV) and not set_pss_opt_cust(set_tech_SS_PV)),
              PUT "par_out_PR_fromPV_toRMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_PV.tl"); ";
         );
         LOOP (set_tech_SS_PV$(set_pssOH(set_side_opt,set_tech_SS_PV) and set_pss_opt(set_tech_SS_PV) and not set_pss_opt_cust(set_tech_SS_PV)),
              PUT "par_out_NR_fromPV_toRMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_PV.tl"); ";
         );
         LOOP (set_tech_SS_PV$(set_pssOH(set_side_opt,set_tech_SS_PV) and set_pss_opt(set_tech_SS_PV) and not set_pss_opt_cust(set_tech_SS_PV)),
              PUT "par_out_PR_fromPV_toRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_PV.tl"); ";
         );
         LOOP (set_tech_SS_PV$(set_pssOH(set_side_opt,set_tech_SS_PV) and set_pss_opt(set_tech_SS_PV) and not set_pss_opt_cust(set_tech_SS_PV)),
              PUT "par_out_NR_fromPV_toRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_PV.tl"); ";
         );
        LOOP (set_tech_SS_PV$(set_pssOH(set_side_opt,set_tech_SS_PV) and set_pss_opt(set_tech_SS_PV) and not set_pss_opt_cust(set_tech_SS_PV)),
              PUT "par_out_E_fromPV_toPHS""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_PV.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren Energieflüsse Laufwasserkraftwerke##
*-------------------------------------------------------------------------------
         LOOP (set_tech_SS_RH$(set_pssOH(set_side_opt,set_tech_SS_RH) and set_pss_opt(set_tech_SS_RH) and not set_pss_opt_cust(set_tech_SS_RH)),
              PUT "par_out_E_fromRH_toEGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_RH.tl"); ";
         );
         LOOP (set_tech_SS_RH$(set_pssOH(set_side_opt,set_tech_SS_RH) and set_pss_opt(set_tech_SS_RH) and not set_pss_opt_cust(set_tech_SS_RH)),
              PUT "par_out_E_fromRH_toEMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_RH.tl"); ";
         );
         LOOP (set_tech_SS_RH$(set_pssOH(set_side_opt,set_tech_SS_RH) and set_pss_opt(set_tech_SS_RH) and not set_pss_opt_cust(set_tech_SS_RH)),
              PUT "par_out_PR_fromRH_toRMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_RH.tl"); ";
         );
         LOOP (set_tech_SS_RH$(set_pssOH(set_side_opt,set_tech_SS_RH) and set_pss_opt(set_tech_SS_RH) and not set_pss_opt_cust(set_tech_SS_RH)),
              PUT "par_out_NR_fromRH_toRMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_RH.tl"); ";
         );
         LOOP (set_tech_SS_RH$(set_pssOH(set_side_opt,set_tech_SS_RH) and set_pss_opt(set_tech_SS_RH) and not set_pss_opt_cust(set_tech_SS_RH)),
              PUT "par_out_PR_fromRH_toRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_RH.tl"); ";
         );
         LOOP (set_tech_SS_RH$(set_pssOH(set_side_opt,set_tech_SS_RH) and set_pss_opt(set_tech_SS_RH) and not set_pss_opt_cust(set_tech_SS_RH)),
              PUT "par_out_NR_fromRH_toRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_RH.tl"); ";
         );
         LOOP (set_tech_SS_RH$(set_pssOH(set_side_opt,set_tech_SS_RH) and set_pss_opt(set_tech_SS_RH) and not set_pss_opt_cust(set_tech_SS_RH)),
              PUT "par_out_E_fromRH_toPHS""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_RH.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren Energieflüsse Kraft-Wärme-Kopplungsanlagen##
*-------------------------------------------------------------------------------
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP) ),
              PUT "par_out_G_fromGGrid_toCHP""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_CHP.tl"); ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP) ),
              PUT "par_out_G_fromGMarket_toCHP""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_CHP.tl"); ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP) ),
              PUT "par_out_O_fromGMarket_toCHP""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_CHP.tl"); ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP) ),
              PUT "par_out_HC_fromGMarket_toCHP""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_CHP.tl"); ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP) ),
              PUT "par_out_L_fromGMarket_toCHP""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_CHP.tl"); ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP) ),
              PUT "par_out_E_fromCHP_toEGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_CHP.tl"); ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP) ),
              PUT "par_out_W_fromCHP_toWGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_CHP.tl"); ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP) ),
              PUT "par_out_E_fromCHP_toEMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_CHP.tl"); ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP) ),
              PUT "par_out_W_fromCHP_toWMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_CHP.tl"); ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP) ),
              PUT "par_out_PR_fromCHP_toRMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_CHP.tl"); ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP) ),
              PUT "par_out_NR_fromCHP_toRMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_CHP.tl"); ";
         );
        LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP) ),
              PUT "par_out_PR_fromCHP_toRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_CHP.tl"); ";
         );
        LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP) ),
              PUT "par_out_NR_fromCHP_toRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_CHP.tl"); ";
         );
        LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP) ),
              PUT "par_out_E_fromCHP_toPHS""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_CHP.tl"); ";
         );


*-------------------------------------------------------------------------------
* ##Deklarieren Energieflüsse Kehrrichtverwertungsanlagen##
*-------------------------------------------------------------------------------
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT "par_out_G_fromGGrid_toRC""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_RC.tl"); ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT "par_out_G_fromGMarket_toRC""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_RC.tl"); ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT "par_out_RF_fromRFMarket_toRC""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_RC.tl"); ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT "par_out_E_fromRC_toEGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_RC.tl"); ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT "par_out_W_fromRC_toWGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_RC.tl"); ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT "par_out_E_fromRC_toEMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_RC.tl"); ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT "par_out_W_fromRC_toWMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_RC.tl"); ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT "par_out_PR_fromRC_toRMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_RC.tl"); ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT "par_out_NR_fromRC_toRMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_RC.tl"); ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT "par_out_PR_fromRC_toRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_RC.tl"); ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT "par_out_NR_fromRC_toRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_RC.tl"); ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT "par_out_E_fromRC_toPHS""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_RC.tl"); ";
         );


*-------------------------------------------------------------------------------
* ##Deklarieren Energieflüsse Pumpspeicherkraftwerke##
*-------------------------------------------------------------------------------
         LOOP (set_tech_SS_PHS$(set_pssOH(set_side_opt,set_tech_SS_PHS) and set_pss_opt(set_tech_SS_PHS) and not set_pss_opt_cust(set_tech_SS_PHS)) ,
              PUT "par_out_E_fromEGrid_toPHS""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_PHS.tl"); ";
         );
         LOOP (set_tech_SS_PHS$(set_pssOH(set_side_opt,set_tech_SS_PHS) and set_pss_opt(set_tech_SS_PHS) and not set_pss_opt_cust(set_tech_SS_PHS)),
              PUT "par_out_E_fromEMarket_toPHS""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_PHS.tl"); ";
         );
         LOOP (set_tech_SS_PHS$(set_pssOH(set_side_opt,set_tech_SS_PHS) and set_pss_opt(set_tech_SS_PHS) and not set_pss_opt_cust(set_tech_SS_PHS)) ,
              PUT "par_out_E_fromPHS_toEGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_PHS.tl"); ";
         );
         LOOP (set_tech_SS_PHS$(set_pssOH(set_side_opt,set_tech_SS_PHS) and set_pss_opt(set_tech_SS_PHS) and not set_pss_opt_cust(set_tech_SS_PHS)),
              PUT "par_out_E_fromPHS_toEMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_PHS.tl"); ";
         );
         LOOP (set_tech_SS_PHS$(set_pssOH(set_side_opt,set_tech_SS_PHS) and set_pss_opt(set_tech_SS_PHS) and not set_pss_opt_cust(set_tech_SS_PHS)) ,
              PUT "par_out_PR_fromPHS_toRMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_PHS.tl"); ";
         );
         LOOP (set_tech_SS_PHS$(set_pssOH(set_side_opt,set_tech_SS_PHS) and set_pss_opt(set_tech_SS_PHS) and not set_pss_opt_cust(set_tech_SS_PHS)),
              PUT "par_out_NR_fromPHS_toRMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_PHS.tl"); ";
         );
         LOOP (set_tech_SS_PHS$(set_pssOH(set_side_opt,set_tech_SS_PHS) and set_pss_opt(set_tech_SS_PHS) and not set_pss_opt_cust(set_tech_SS_PHS)) ,
              PUT "par_out_PR_fromPHS_toRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_PHS.tl"); ";
         );
         LOOP (set_tech_SS_PHS$(set_pssOH(set_side_opt,set_tech_SS_PHS) and set_pss_opt(set_tech_SS_PHS) and not set_pss_opt_cust(set_tech_SS_PHS)),
              PUT "par_out_NR_fromPHS_toRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_PHS.tl"); ";
         );
         LOOP (set_tech_SS_PHS$(set_pssOH(set_side_opt,set_tech_SS_PHS) and set_pss_opt(set_tech_SS_PHS) and not set_pss_opt_cust(set_tech_SS_PHS)),
              PUT "par_out_E_fromPHS_toPHS""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_PHS.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren Energieflüsse Kondensationskraftwerke##
*-------------------------------------------------------------------------------
         LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS) ),
              PUT "par_out_G_fromGGrid_toTPS""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_TPS.tl"); ";
         );
         LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS) ),
              PUT "par_out_G_fromGMarket_toTPS""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_TPS.tl"); ";
         );
         LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS) ),
              PUT "par_out_O_fromGMarket_toTPS""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_TPS.tl"); ";
         );
         LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS) ),
              PUT "par_out_HC_fromGMarket_toTPS""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_TPS.tl"); ";
         );
         LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS) ),
              PUT "par_out_L_fromGMarket_toTPS""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_TPS.tl"); ";
         );
         LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS) ),
              PUT "par_out_E_fromTPS_toEGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_TPS.tl"); ";
         );
         LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS) ),
              PUT "par_out_E_fromTPS_toEMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_TPS.tl"); ";
         );
         LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS) ),
              PUT "par_out_PR_fromTPS_toRMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_TPS.tl"); ";
         );
         LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS) ),
              PUT "par_out_NR_fromTPS_toRMarket""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_TPS.tl"); ";
         );
        LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS) ),
              PUT "par_out_PR_fromTPS_toRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_TPS.tl"); ";
         );
        LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS) ),
              PUT "par_out_NR_fromTPS_toRGrid""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_TPS.tl"); ";
         );
        LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS) ),
              PUT "par_out_E_fromTPS_toPHS""("set_t.tl", ",set_side_opt.tl", ",set_tech_SS_TPS.tl"); ";
         );


*-------------------------------------------------------------------------------
* ##Deklarieren KPI Verbrauchsverhalten##
*-------------------------------------------------------------------------------
*        PUT "par_out_L_DS_E_selfcons""("set_t.tl", ",set_side_opt.tl"); ";
*        PUT "par_out_L_DS_E_BM_PVdirectcons""("set_t.tl", ",set_side_opt.tl"); ";
*        PUT "par_out_L_DS_E_BM_NaScons""("set_t.tl", ",set_side_opt.tl"); ";
*        PUT "par_out_L_DS_E_BM_Sonnentankcons""("set_t.tl", ",set_side_opt.tl"); ";
*        PUT "par_out_L_DS_E_extcons""("set_t.tl", ",set_side_opt.tl"); ";

*        PUT "par_out_L_DS_W_selfcons""("set_t.tl", ",set_side_opt.tl"); ";
*        PUT "par_out_L_DS_W_extcons""("set_t.tl", ",set_side_opt.tl"); ";

*        PUT "par_out_L_DS_E_selfcons_percent""("set_t.tl", ",set_side_opt.tl"); ";
*        PUT "par_out_L_DS_E_BM_PVdirectcons_percent""("set_t.tl", ",set_side_opt.tl"); ";
*        PUT "par_out_L_DS_E_BM_NaScons_percent""("set_t.tl", ",set_side_opt.tl"); ";
*        PUT "par_out_L_DS_E_BM_Sonnentankcons_percent""("set_t.tl", ",set_side_opt.tl"); ";
*        PUT "par_out_L_DS_E_extcons_percent""("set_t.tl", ",set_side_opt.tl"); ";

*        PUT "par_out_L_DS_W_selfcons_percent""("set_t.tl", ",set_side_opt.tl"); ";
*        PUT "par_out_L_DS_W_extcons_percent""("set_t.tl", ",set_side_opt.tl"); ";




*-------------------------------------------------------------------------------
*-------------------------------------------------------------------------------
* ##Ausgabe##
*-------------------------------------------------------------------------------
*-------------------------------------------------------------------------------
         PUT /;

         PUT set_a.tl"; "

         PUT set_t.tl"; ";

         PUT par_out_Modelstat_organizationmodel(set_t)"; ";

         PUT par_out_Solvestat_organizationmodel(set_t)"; ";

*-------------------------------------------------------------------------------
* ##Ausgabe Energieflüsse Stromlast##
*-------------------------------------------------------------------------------
         LOOP (set_load_DS_E$(set_pssOH(set_side_opt,set_load_DS_E) and set_pss_opt(set_load_DS_E) and not set_pss_opt_cust(set_load_DS_E)),
              PUT par_out_E_fromPss_toELoad(set_t,set_side_opt,set_load_DS_E)"; ";
         );

         LOOP (set_load_DS_E$(set_pssOH(set_side_opt,set_load_DS_E)  and set_pss_opt(set_load_DS_E) and not set_pss_opt_cust(set_load_DS_E)),
              PUT par_out_E_fromEGrid_toELoad(set_t,set_side_opt,set_load_DS_E)"; ";
         );

         LOOP (set_load_DS_E$(set_pssOH(set_side_opt,set_load_DS_E)  and set_pss_opt(set_load_DS_E) and not set_pss_opt_cust(set_load_DS_E)),
              PUT par_out_E_fromES_toELoad(set_t,set_side_opt,set_load_DS_E)"; ";
         );

        LOOP (set_load_DS_E$(set_pssOH(set_side_opt,set_load_DS_E) and set_pss_opt(set_load_DS_E) and not set_pss_opt_cust(set_load_DS_E)),
              PUT par_out_E_fromPV_toELoad(set_t,set_side_opt,set_load_DS_E)"; ";
         );

                         LOOP (set_load_DS_E$(set_pssOH(set_side_opt,set_load_DS_E) and set_pss_opt(set_load_DS_E) and not set_pss_opt_cust(set_load_DS_E)),
              PUT par_out_E_fromCHP_toELoad(set_t,set_side_opt,set_load_DS_E)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe Energieflüsse Fernwärmelast##
*-------------------------------------------------------------------------------
         LOOP (set_load_DS_W$(set_pssOH(set_side_opt,set_load_DS_W)  and set_pss_opt(set_load_DS_W) and not set_pss_opt_cust(set_load_DS_W)),
              PUT par_out_W_fromPss_toWLoad(set_t,set_side_opt,set_load_DS_W)"; ";
         );

                 LOOP (set_load_DS_W$(set_pssOH(set_side_opt,set_load_DS_W)  and set_pss_opt(set_load_DS_W) and not set_pss_opt_cust(set_load_DS_W)),
              PUT par_out_W_fromWGrid_toWLoad(set_t,set_side_opt,set_load_DS_W)"; ";
         );

                 LOOP (set_load_DS_W$(set_pssOH(set_side_opt,set_load_DS_W)  and set_pss_opt(set_load_DS_W) and not set_pss_opt_cust(set_load_DS_W)),
              PUT par_out_W_fromEB_toWLoad(set_t,set_side_opt,set_load_DS_W)"; ";
         );

                 LOOP (set_load_DS_W$(set_pssOH(set_side_opt,set_load_DS_W)  and set_pss_opt(set_load_DS_W) and not set_pss_opt_cust(set_load_DS_W)),
              PUT par_out_W_fromNGB_toWLoad(set_t,set_side_opt,set_load_DS_W)"; ";
         );

                 LOOP (set_load_DS_W$(set_pssOH(set_side_opt,set_load_DS_W)  and set_pss_opt(set_load_DS_W) and not set_pss_opt_cust(set_load_DS_W)),
              PUT par_out_W_fromHP_toWLoad(set_t,set_side_opt,set_load_DS_W)"; ";
         );

                 LOOP (set_load_DS_W$(set_pssOH(set_side_opt,set_load_DS_W)  and set_pss_opt(set_load_DS_W) and not set_pss_opt_cust(set_load_DS_W)),
              PUT par_out_W_fromTS_toWLoad(set_t,set_side_opt,set_load_DS_W)"; ";
         );

                                  LOOP (set_load_DS_W$(set_pssOH(set_side_opt,set_load_DS_W)  and set_pss_opt(set_load_DS_W) and not set_pss_opt_cust(set_load_DS_W)),
              PUT par_out_W_fromCHP_toWLoad(set_t,set_side_opt,set_load_DS_W)"; ";
         );

                                  LOOP (set_load_DS_W$(set_pssOH(set_side_opt,set_load_DS_W)  and set_pss_opt(set_load_DS_W) and not set_pss_opt_cust(set_load_DS_W)),
              PUT par_out_W_fromST_toWLoad(set_t,set_side_opt,set_load_DS_W)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe Energieflüsse Gaslast##
*-------------------------------------------------------------------------------
         LOOP (set_load_DS_G$(set_pssOH(set_side_opt,set_load_DS_G) and set_pss_opt(set_load_DS_G) and not set_pss_opt_cust(set_load_DS_G)),
              PUT par_out_G_fromPss_toGLoad(set_t,set_side_opt,set_load_DS_G)"; ";
         );

                 LOOP (set_load_DS_G$(set_pssOH(set_side_opt,set_load_DS_G) and set_pss_opt(set_load_DS_G) and not set_pss_opt_cust(set_load_DS_G)),
              PUT par_out_G_fromGGrid_toGLoad(set_t,set_side_opt,set_load_DS_G)"; ";
         );

                                  LOOP (set_load_DS_G$(set_pssOH(set_side_opt,set_load_DS_G) and set_pss_opt(set_load_DS_G) and not set_pss_opt_cust(set_load_DS_G)),
              PUT par_out_G_fromGGrid_toCHP(set_t,set_side_opt,set_load_DS_G)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe Energieflüsse Stromspeicher##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT par_out_E_fromPss_toES(set_t,set_side_opt,set_tech_DES_ES)"; ";
         );

                 LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT par_out_E_fromES_toPss(set_t,set_side_opt,set_tech_DES_ES)"; ";
         );

         LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT par_out_E_fromPV_toES(set_t,set_side_opt,set_tech_DES_ES)"; ";
         );

                 LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT par_out_E_fromEGrid_toES(set_t,set_side_opt,set_tech_DES_ES)"; ";
         );

         LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT par_out_E_fromES_toELoad(set_t,set_side_opt,set_tech_DES_ES)"; ";
         );

                 LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT par_out_E_fromES_toHP(set_t,set_side_opt,set_tech_DES_ES)"; ";
         );

                 LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT par_out_E_fromES_toEB(set_t,set_side_opt,set_tech_DES_ES)"; ";
         );

         LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT par_out_E_fromES_toPRGrid(set_t,set_side_opt,set_tech_DES_ES)"; ";
         );

         LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT par_out_E_fromES_toNRGrid(set_t,set_side_opt,set_tech_DES_ES)"; ";
         );

         LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1),
              PUT par_out_E_fromES_toPRGrid(set_t,set_side_opt,set_tech_DES_ES)"; ";
         );

         LOOP (set_tech_DES_ES$(set_pssOH(set_side_opt,set_tech_DES_ES) and set_pss_opt(set_tech_DES_ES) and par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1),
              PUT par_out_E_fromES_toNRGrid(set_t,set_side_opt,set_tech_DES_ES)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe Energieflüsse Wärmespeicher##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT par_out_W_fromPss_toTS(set_t,set_side_opt,set_tech_DES_TS)"; ";
         );

                 LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT par_out_E_fromES_toPss(set_t,set_side_opt,set_tech_DES_TS)"; ";
         );

         LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT par_out_W_fromEB_toTS(set_t,set_side_opt,set_tech_DES_TS)"; ";
         );

                 LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT par_out_W_fromNGB_toTS(set_t,set_side_opt,set_tech_DES_TS)"; ";
         );

         LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT par_out_W_fromHP_toTS(set_t,set_side_opt,set_tech_DES_TS)"; ";
         );

                 LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT par_out_W_fromWGrid_toTS(set_t,set_side_opt,set_tech_DES_TS)"; ";
         );

                                  LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT par_out_W_fromCHP_toTS(set_t,set_side_opt,set_tech_DES_TS)"; ";
         );

                                                  LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT par_out_W_fromST_toTS(set_t,set_side_opt,set_tech_DES_TS)"; ";
         );

         LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT par_out_W_fromTS_toWLoad(set_t,set_side_opt,set_tech_DES_TS)"; ";
         );

                 LOOP (set_tech_DES_TS$(set_pssOH(set_side_opt,set_tech_DES_TS) and set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT par_out_W_fromTS_toWGrid(set_t,set_side_opt,set_tech_DES_TS)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe Energieflüsse Gaskessel##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_NGB$(set_pssOH(set_side_opt,set_tech_DES_NGB) and set_pss_opt(set_tech_DES_NGB) and not set_pss_opt_cust(set_tech_DES_NGB)),
              PUT par_out_G_fromPss_toNGB(set_t,set_side_opt,set_tech_DES_NGB)"; ";
         );

                 LOOP (set_tech_DES_NGB$(set_pssOH(set_side_opt,set_tech_DES_NGB) and set_pss_opt(set_tech_DES_NGB) and not set_pss_opt_cust(set_tech_DES_NGB)),
              PUT par_out_W_fromNGB_toPss(set_t,set_side_opt,set_tech_DES_NGB)"; ";
         );

         LOOP (set_tech_DES_NGB$(set_pssOH(set_side_opt,set_tech_DES_NGB) and set_pss_opt(set_tech_DES_NGB) and not set_pss_opt_cust(set_tech_DES_NGB)),
              PUT par_out_G_fromGGrid_toNGB(set_t,set_side_opt,set_tech_DES_NGB)"; ";
         );

                 LOOP (set_tech_DES_NGB$(set_pssOH(set_side_opt,set_tech_DES_NGB) and set_pss_opt(set_tech_DES_NGB) and not set_pss_opt_cust(set_tech_DES_NGB)),
              PUT par_out_W_fromNGB_toWLoad(set_t,set_side_opt,set_tech_DES_NGB)"; ";
         );

                 LOOP (set_tech_DES_NGB$(set_pssOH(set_side_opt,set_tech_DES_NGB) and set_pss_opt(set_tech_DES_NGB) and not set_pss_opt_cust(set_tech_DES_NGB)),
              PUT par_out_W_fromNGB_toTS(set_t,set_side_opt,set_tech_DES_NGB)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe Energieflüsse Durchlauferhitzer##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)),
              PUT par_out_E_fromPss_toEB(set_t,set_side_opt,set_tech_DES_EB)"; ";
         );

         LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)),
              PUT par_out_W_fromEB_toPss(set_t,set_side_opt,set_tech_DES_EB)"; ";
         );

         LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)),
              PUT par_out_E_fromEGrid_toEB(set_t,set_side_opt,set_tech_DES_EB)"; ";
         );

         LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)),
              PUT par_out_E_fromES_toEB(set_t,set_side_opt,set_tech_DES_EB)"; ";
         );

         LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)),
              PUT par_out_E_fromPV_toEB(set_t,set_side_opt,set_tech_DES_EB)"; ";
         );

                          LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)),
              PUT par_out_E_fromCHP_toEB(set_t,set_side_opt,set_tech_DES_EB)"; ";
         );

                 LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)),
              PUT par_out_W_fromEB_toWLoad(set_t,set_side_opt,set_tech_DES_EB)"; ";
         );

                 LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)) ,
              PUT par_out_W_fromEB_toTS(set_t,set_side_opt,set_tech_DES_EB)"; ";
         );

         LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB)and not set_pss_opt_cust(set_tech_DES_EB)),
              PUT par_out_E_fromEB_toPRGrid(set_t,set_side_opt,set_tech_DES_EB)"; ";
         );


         LOOP (set_tech_DES_EB$(set_pssOH(set_side_opt,set_tech_DES_EB) and set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)),
              PUT par_out_E_fromEB_toNRGrid(set_t,set_side_opt,set_tech_DES_EB)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe Energieflüsse PV-Anlage##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_PV$(set_pssOH(set_side_opt,set_tech_DES_PV) and set_pss_opt(set_tech_DES_PV) and not set_pss_opt_cust(set_tech_DES_PV)),
              PUT par_out_E_fromPV_toPss(set_t,set_side_opt,set_tech_DES_PV)"; ";
         );

                 LOOP (set_tech_DES_PV$(set_pssOH(set_side_opt,set_tech_DES_PV) and set_pss_opt(set_tech_DES_PV)  and not set_pss_opt_cust(set_tech_DES_PV)),
              PUT par_out_E_fromPV_toES(set_t,set_side_opt,set_tech_DES_PV)"; ";
         );

                 LOOP (set_tech_DES_PV$(set_pssOH(set_side_opt,set_tech_DES_PV) and set_pss_opt(set_tech_DES_PV)  and not set_pss_opt_cust(set_tech_DES_PV)),
              PUT par_out_E_fromPV_toELoad(set_t,set_side_opt,set_tech_DES_PV)"; ";
         );

                 LOOP (set_tech_DES_PV$(set_pssOH(set_side_opt,set_tech_DES_PV) and set_pss_opt(set_tech_DES_PV)  and not set_pss_opt_cust(set_tech_DES_PV)),
              PUT par_out_E_fromPV_toEGrid(set_t,set_side_opt,set_tech_DES_PV)"; ";
         );

         LOOP (set_tech_DES_PV$(set_pssOH(set_side_opt,set_tech_DES_PV) and set_pss_opt(set_tech_DES_PV)  and not set_pss_opt_cust(set_tech_DES_PV)),
              PUT par_out_E_DES_PV_down(set_t,set_tech_DES_PV)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe Energieflüsse Wärmepumpe##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_HP$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pss_opt(set_tech_DES_HP)  and not set_pss_opt_cust(set_tech_DES_HP)),
              PUT par_out_E_fromPss_toHP(set_t,set_side_opt,set_tech_DES_HP)"; ";
         );

         LOOP (set_tech_DES_HP$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pss_opt(set_tech_DES_HP) and not set_pss_opt_cust(set_tech_DES_HP)),
              PUT par_out_W_fromHP_toPss(set_t,set_side_opt,set_tech_DES_HP)"; ";
         );

         LOOP (set_tech_DES_HP$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pss_opt(set_tech_DES_HP) and not set_pss_opt_cust(set_tech_DES_HP)),
              PUT par_out_E_fromEGrid_toHP(set_t,set_side_opt,set_tech_DES_HP)"; ";
         );

         LOOP (set_tech_DES_HP$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pss_opt(set_tech_DES_HP) and not set_pss_opt_cust(set_tech_DES_HP)),
              PUT par_out_E_fromES_toHP(set_t,set_side_opt,set_tech_DES_HP)"; ";
         );

         LOOP (set_tech_DES_HP$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pss_opt(set_tech_DES_HP) and not set_pss_opt_cust(set_tech_DES_HP)),
              PUT par_out_E_fromPV_toHP(set_t,set_side_opt,set_tech_DES_HP)"; ";
         );

         LOOP (set_tech_DES_HP$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pss_opt(set_tech_DES_HP) and not set_pss_opt_cust(set_tech_DES_HP)),
              PUT par_out_W_fromHP_toWLoad(set_t,set_side_opt,set_tech_DES_HP)"; ";
         );

         LOOP (set_tech_DES_HP$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pss_opt(set_tech_DES_HP) and not set_pss_opt_cust(set_tech_DES_HP)),
              PUT par_out_W_fromHP_toTS(set_t,set_side_opt,set_tech_DES_HP)"; ";
         );

         LOOP (set_tech_DES_HP$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pss_opt(set_tech_DES_HP) and not set_pss_opt_cust(set_tech_DES_HP)),
              PUT par_out_E_fromHP_toPRGrid(set_t,set_side_opt,set_tech_DES_HP)"; ";
         );

         LOOP (set_tech_DES_HP$(set_pssOH(set_side_opt,set_tech_DES_HP) and set_pss_opt(set_tech_DES_HP) and not set_pss_opt_cust(set_tech_DES_HP)),
              PUT par_out_E_fromHP_toNRGrid(set_t,set_side_opt,set_tech_DES_HP)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe Energieflüsse Kraft-Wärme-Kopplungsanlagen####
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT par_out_E_fromCHP_toPss(set_t,set_side_opt,set_tech_DES_CHP)"; ";
         );

                         LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT par_out_E_fromCHP_toES(set_t,set_side_opt,set_tech_DES_CHP)"; ";
         );

                         LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT par_out_E_fromCHP_toELoad(set_t,set_side_opt,set_tech_DES_CHP)"; ";
         );

                         LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT par_out_E_fromCHP_toEGrid(set_t,set_side_opt,set_tech_DES_CHP)"; ";
         );

                         LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT par_out_E_fromCHP_toHP(set_t,set_side_opt,set_tech_DES_CHP)"; ";
         );

                         LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT par_out_E_fromCHP_toEB(set_t,set_side_opt,set_tech_DES_CHP)"; ";
         );

                         LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT par_out_G_fromPss_toCHP(set_t,set_side_opt,set_tech_DES_CHP)"; ";
         );

                         LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT par_out_G_fromGGrid_toCHP(set_t,set_side_opt,set_tech_DES_CHP)"; ";
         );

                         LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT par_out_W_fromCHP_toPss(set_t,set_side_opt,set_tech_DES_CHP)"; ";
         );

                         LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT par_out_W_fromCHP_toWLoad(set_t,set_side_opt,set_tech_DES_CHP)"; ";
         );

                                         LOOP (set_tech_DES_CHP$(set_pssOH(set_side_opt,set_tech_DES_CHP) and set_pss_opt(set_tech_DES_CHP) and not set_pss_opt_cust(set_tech_DES_CHP)),
              PUT par_out_W_fromCHP_toTS(set_t,set_side_opt,set_tech_DES_CHP)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe Energieflüsse Solarthermie########
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_ST$(set_pssOH(set_side_opt,set_tech_DES_ST) and set_pss_opt(set_tech_DES_ST) and not set_pss_opt_cust(set_tech_DES_ST)),
              PUT par_out_W_fromST_toPss(set_t,set_side_opt,set_tech_DES_ST)"; ";
         );

                        LOOP (set_tech_DES_ST$(set_pssOH(set_side_opt,set_tech_DES_ST) and set_pss_opt(set_tech_DES_ST) and not set_pss_opt_cust(set_tech_DES_ST)),
              PUT par_out_W_fromST_toWLoad(set_t,set_side_opt,set_tech_DES_ST)"; ";
         );

                        LOOP (set_tech_DES_ST$(set_pssOH(set_side_opt,set_tech_DES_ST) and set_pss_opt(set_tech_DES_ST) and not set_pss_opt_cust(set_tech_DES_ST)),
              PUT par_out_W_fromST_toTS(set_t,set_side_opt,set_tech_DES_ST)"; ";
         );



*-------------------------------------------------------------------------------
* ##Ausgeben Energieflüsse Windturbine##
*-------------------------------------------------------------------------------
         LOOP (set_tech_SS_WT$(set_pssOH(set_side_opt,set_tech_SS_WT) and set_pss_opt(set_tech_SS_WT) and not set_pss_opt_cust(set_tech_SS_WT)),
              PUT par_out_E_fromWT_toEGrid(set_t,set_side_opt,set_tech_SS_WT)"; ";
         );
         LOOP (set_tech_SS_WT$(set_pssOH(set_side_opt,set_tech_SS_WT) and set_pss_opt(set_tech_SS_WT) and not set_pss_opt_cust(set_tech_SS_WT)),
              PUT par_out_E_fromWT_toEMarket(set_t,set_side_opt,set_tech_SS_WT)"; ";
         );
         LOOP (set_tech_SS_WT$(set_pssOH(set_side_opt,set_tech_SS_WT) and set_pss_opt(set_tech_SS_WT) and not set_pss_opt_cust(set_tech_SS_WT)),
              PUT par_out_PR_fromWT_toRMarket(set_t,set_side_opt,set_tech_SS_WT)"; ";
         );
         LOOP (set_tech_SS_WT$(set_pssOH(set_side_opt,set_tech_SS_WT) and set_pss_opt(set_tech_SS_WT) and not set_pss_opt_cust(set_tech_SS_WT)),
              PUT par_out_NR_fromWT_toRMarket(set_t,set_side_opt,set_tech_SS_WT)"; ";
         );
         LOOP (set_tech_SS_WT$(set_pssOH(set_side_opt,set_tech_SS_WT) and set_pss_opt(set_tech_SS_WT) and not set_pss_opt_cust(set_tech_SS_WT)),
              PUT par_out_PR_fromWT_toRGrid(set_t,set_side_opt,set_tech_SS_WT)"; ";
         );
         LOOP (set_tech_SS_WT$(set_pssOH(set_side_opt,set_tech_SS_WT) and set_pss_opt(set_tech_SS_WT) and not set_pss_opt_cust(set_tech_SS_WT)),
              PUT par_out_E_fromWT_toPHS(set_t,set_side_opt,set_tech_SS_WT)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgeben Energieflüsse PV-Anlage##
*-------------------------------------------------------------------------------
         LOOP (set_tech_SS_PV$(set_pssOH(set_side_opt,set_tech_SS_PV) and set_pss_opt(set_tech_SS_PV) and not set_pss_opt_cust(set_tech_SS_PV)),
              PUT par_out_E_fromPV_toEGrid(set_t,set_side_opt,set_tech_SS_PV)"; ";
         );
         LOOP (set_tech_SS_PV$(set_pssOH(set_side_opt,set_tech_SS_PV) and set_pss_opt(set_tech_SS_PV) and not set_pss_opt_cust(set_tech_SS_PV)),
              PUT par_out_E_fromPV_toEMarket(set_t,set_side_opt,set_tech_SS_PV)"; ";
         );
         LOOP (set_tech_SS_PV$(set_pssOH(set_side_opt,set_tech_SS_PV) and set_pss_opt(set_tech_SS_PV) and not set_pss_opt_cust(set_tech_SS_PV)),
              PUT par_out_PR_fromPV_toRMarket(set_t,set_side_opt,set_tech_SS_PV)"; ";
         );
         LOOP (set_tech_SS_PV$(set_pssOH(set_side_opt,set_tech_SS_PV) and set_pss_opt(set_tech_SS_PV) and not set_pss_opt_cust(set_tech_SS_PV)),
              PUT par_out_NR_fromPV_toRMarket(set_t,set_side_opt,set_tech_SS_PV)"; ";
         );
         LOOP (set_tech_SS_PV$(set_pssOH(set_side_opt,set_tech_SS_PV) and set_pss_opt(set_tech_SS_PV) and not set_pss_opt_cust(set_tech_SS_PV)),
              PUT par_out_PR_fromPV_toRGrid(set_t,set_side_opt,set_tech_SS_PV)"; ";
         );
         LOOP (set_tech_SS_PV$(set_pssOH(set_side_opt,set_tech_SS_PV) and set_pss_opt(set_tech_SS_PV) and not set_pss_opt_cust(set_tech_SS_PV)),
              PUT par_out_NR_fromPV_toRGrid(set_t,set_side_opt,set_tech_SS_PV)"; ";
         );
        LOOP (set_tech_SS_PV$(set_pssOH(set_side_opt,set_tech_SS_PV) and set_pss_opt(set_tech_SS_PV) and not set_pss_opt_cust(set_tech_SS_PV)),
              PUT par_out_E_fromPV_toPHS(set_t,set_side_opt,set_tech_SS_PV)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgeben Energieflüsse Laufwasserkraftwerke##
*-------------------------------------------------------------------------------
         LOOP (set_tech_SS_RH$(set_pssOH(set_side_opt,set_tech_SS_RH) and set_pss_opt(set_tech_SS_RH) and not set_pss_opt_cust(set_tech_SS_RH)),
              PUT par_out_E_fromRH_toEGrid(set_t,set_side_opt,set_tech_SS_RH)"; ";
         );
         LOOP (set_tech_SS_RH$(set_pssOH(set_side_opt,set_tech_SS_RH) and set_pss_opt(set_tech_SS_RH) and not set_pss_opt_cust(set_tech_SS_RH)),
              PUT par_out_E_fromRH_toEMarket(set_t,set_side_opt,set_tech_SS_RH)"; ";
         );
         LOOP (set_tech_SS_RH$(set_pssOH(set_side_opt,set_tech_SS_RH) and set_pss_opt(set_tech_SS_RH) and not set_pss_opt_cust(set_tech_SS_RH)),
              PUT par_out_PR_fromRH_toRMarket(set_t,set_side_opt,set_tech_SS_RH)"; ";
         );
         LOOP (set_tech_SS_RH$(set_pssOH(set_side_opt,set_tech_SS_RH) and set_pss_opt(set_tech_SS_RH) and not set_pss_opt_cust(set_tech_SS_RH)),
              PUT par_out_NR_fromRH_toRMarket(set_t,set_side_opt,set_tech_SS_RH)"; ";
         );
         LOOP (set_tech_SS_RH$(set_pssOH(set_side_opt,set_tech_SS_RH) and set_pss_opt(set_tech_SS_RH) and not set_pss_opt_cust(set_tech_SS_RH)),
              PUT par_out_PR_fromRH_toRGrid(set_t,set_side_opt,set_tech_SS_RH)"; ";
         );
         LOOP (set_tech_SS_RH$(set_pssOH(set_side_opt,set_tech_SS_RH) and set_pss_opt(set_tech_SS_RH) and not set_pss_opt_cust(set_tech_SS_RH)),
              PUT par_out_NR_fromRH_toRGrid(set_t,set_side_opt,set_tech_SS_RH)"; ";
         );
         LOOP (set_tech_SS_RH$(set_pssOH(set_side_opt,set_tech_SS_RH) and set_pss_opt(set_tech_SS_RH) and not set_pss_opt_cust(set_tech_SS_RH)),
              PUT par_out_E_fromRH_toPHS(set_t,set_side_opt,set_tech_SS_RH)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgeben Energieflüsse Kraft-Wärme-Kopplungsanlagen##
*-------------------------------------------------------------------------------
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP)),
              PUT par_out_G_fromGGrid_toCHP(set_t,set_side_opt,set_tech_SS_CHP)"; ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP)),
              PUT par_out_G_fromGMarket_toCHP(set_t,set_side_opt,set_tech_SS_CHP)"; ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP)),
              PUT par_out_O_fromGMarket_toCHP(set_t,set_side_opt,set_tech_SS_CHP)"; ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP)),
              PUT par_out_HC_fromGMarket_toCHP(set_t,set_side_opt,set_tech_SS_CHP)"; ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP)),
              PUT par_out_L_fromGMarket_toCHP(set_t,set_side_opt,set_tech_SS_CHP)"; ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP)),
              PUT par_out_E_fromCHP_toEGrid(set_t,set_side_opt,set_tech_SS_CHP)"; ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP)),
              PUT par_out_W_fromCHP_toWGrid(set_t,set_side_opt,set_tech_SS_CHP)"; ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP)),
              PUT par_out_E_fromCHP_toEMarket(set_t,set_side_opt,set_tech_SS_CHP)"; ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP)),
              PUT par_out_W_fromCHP_toWMarket(set_t,set_side_opt,set_tech_SS_CHP)"; ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP)),
              PUT par_out_PR_fromCHP_toRMarket(set_t,set_side_opt,set_tech_SS_CHP)"; ";
         );
         LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP)),
              PUT par_out_NR_fromCHP_toRMarket(set_t,set_side_opt,set_tech_SS_CHP)"; ";
         );
        LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP)),
              PUT par_out_PR_fromCHP_toRGrid(set_t,set_side_opt,set_tech_SS_CHP)"; ";
         );
        LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP)),
              PUT par_out_NR_fromCHP_toRGrid(set_t,set_side_opt,set_tech_SS_CHP)"; ";
         );
        LOOP (set_tech_SS_CHP$(set_pssOH(set_side_opt,set_tech_SS_CHP) and set_pss_opt(set_tech_SS_CHP) and not set_pss_opt_cust(set_tech_SS_CHP)),
              PUT par_out_E_fromCHP_toPHS(set_t,set_side_opt,set_tech_SS_CHP)"; ";
         );


*-------------------------------------------------------------------------------
* ##Ausgeben Energieflüsse Kehrrichtverwertungsanlagen##
*-------------------------------------------------------------------------------
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT par_out_G_fromGGrid_toRC(set_t,set_side_opt,set_tech_SS_RC)"; ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT par_out_G_fromGMarket_toRC(set_t,set_side_opt,set_tech_SS_RC)"; ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT par_out_RF_fromRFMarket_toRC(set_t,set_side_opt,set_tech_SS_RC)"; ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT par_out_E_fromRC_toEGrid(set_t,set_side_opt,set_tech_SS_RC)"; ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT par_out_W_fromRC_toWGrid(set_t,set_side_opt,set_tech_SS_RC)"; ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT par_out_E_fromRC_toEMarket(set_t,set_side_opt,set_tech_SS_RC)"; ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT par_out_W_fromRC_toWMarket(set_t,set_side_opt,set_tech_SS_RC)"; ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT par_out_PR_fromRC_toRMarket(set_t,set_side_opt,set_tech_SS_RC)"; ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT par_out_NR_fromRC_toRMarket(set_t,set_side_opt,set_tech_SS_RC)"; ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT par_out_PR_fromRC_toRGrid(set_t,set_side_opt,set_tech_SS_RC)"; ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT par_out_NR_fromRC_toRGrid(set_t,set_side_opt,set_tech_SS_RC)"; ";
         );
         LOOP (set_tech_SS_RC$(set_pssOH(set_side_opt,set_tech_SS_RC) and set_pss_opt(set_tech_SS_RC) and not set_pss_opt_cust(set_tech_SS_RC)),
              PUT par_out_E_fromRC_toPHS(set_t,set_side_opt,set_tech_SS_RC)"; ";
         );


*-------------------------------------------------------------------------------
* ##Ausgeben Energieflüsse Pumpspeicherkraftwerke##
*-------------------------------------------------------------------------------
         LOOP (set_tech_SS_PHS$(set_pssOH(set_side_opt,set_tech_SS_PHS) and set_pss_opt(set_tech_SS_PHS) and not set_pss_opt_cust(set_tech_SS_PHS)) ,
              PUT par_out_E_fromEGrid_toPHS(set_t,set_side_opt,set_tech_SS_PHS)"; ";
         );
         LOOP (set_tech_SS_PHS$(set_pssOH(set_side_opt,set_tech_SS_PHS) and set_pss_opt(set_tech_SS_PHS) and not set_pss_opt_cust(set_tech_SS_PHS)),
              PUT par_out_E_fromEMarket_toPHS(set_t,set_side_opt,set_tech_SS_PHS)"; ";
         );
         LOOP (set_tech_SS_PHS$(set_pssOH(set_side_opt,set_tech_SS_PHS) and set_pss_opt(set_tech_SS_PHS) and not set_pss_opt_cust(set_tech_SS_PHS)) ,
              PUT par_out_E_fromPHS_toEGrid(set_t,set_side_opt,set_tech_SS_PHS)"; ";
         );
         LOOP (set_tech_SS_PHS$(set_pssOH(set_side_opt,set_tech_SS_PHS) and set_pss_opt(set_tech_SS_PHS) and not set_pss_opt_cust(set_tech_SS_PHS)),
              PUT par_out_E_fromPHS_toEMarket(set_t,set_side_opt,set_tech_SS_PHS)"; ";
         );
         LOOP (set_tech_SS_PHS$(set_pssOH(set_side_opt,set_tech_SS_PHS) and set_pss_opt(set_tech_SS_PHS) and not set_pss_opt_cust(set_tech_SS_PHS)) ,
              PUT par_out_PR_fromPHS_toRMarket(set_t,set_side_opt,set_tech_SS_PHS)"; ";
         );
         LOOP (set_tech_SS_PHS$(set_pssOH(set_side_opt,set_tech_SS_PHS) and set_pss_opt(set_tech_SS_PHS) and not set_pss_opt_cust(set_tech_SS_PHS)),
              PUT par_out_NR_fromPHS_toRMarket(set_t,set_side_opt,set_tech_SS_PHS)"; ";
         );
         LOOP (set_tech_SS_PHS$(set_pssOH(set_side_opt,set_tech_SS_PHS) and set_pss_opt(set_tech_SS_PHS) and not set_pss_opt_cust(set_tech_SS_PHS)) ,
              PUT par_out_PR_fromPHS_toRGrid(set_t,set_side_opt,set_tech_SS_PHS)"; ";
         );
         LOOP (set_tech_SS_PHS$(set_pssOH(set_side_opt,set_tech_SS_PHS) and set_pss_opt(set_tech_SS_PHS) and not set_pss_opt_cust(set_tech_SS_PHS)),
              PUT par_out_NR_fromPHS_toRGrid(set_t,set_side_opt,set_tech_SS_PHS)"; ";
         );
         LOOP (set_tech_SS_PHS$(set_pssOH(set_side_opt,set_tech_SS_PHS) and set_pss_opt(set_tech_SS_PHS) and not set_pss_opt_cust(set_tech_SS_PHS)),
              PUT par_out_E_fromPHS_toPHS(set_t,set_side_opt,set_tech_SS_PHS)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgeben Energieflüsse Kondensationskraftwerke##
*-------------------------------------------------------------------------------
         LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS)),
              PUT par_out_G_fromGGrid_toTPS(set_t,set_side_opt,set_tech_SS_TPS)"; ";
         );
         LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS)),
              PUT par_out_G_fromGMarket_toTPS(set_t,set_side_opt,set_tech_SS_TPS)"; ";
         );
         LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS)),
              PUT par_out_O_fromGMarket_toTPS(set_t,set_side_opt,set_tech_SS_TPS)"; ";
         );
         LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS)),
              PUT par_out_HC_fromGMarket_toTPS(set_t,set_side_opt,set_tech_SS_TPS)"; ";
         );
         LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS)),
              PUT par_out_L_fromGMarket_toTPS(set_t,set_side_opt,set_tech_SS_TPS)"; ";
         );
         LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS)),
              PUT par_out_E_fromTPS_toEGrid(set_t,set_side_opt,set_tech_SS_TPS)"; ";
         );
         LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS)),
              PUT par_out_E_fromTPS_toEMarket(set_t,set_side_opt,set_tech_SS_TPS)"; ";
         );
         LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS)),
              PUT par_out_PR_fromTPS_toRMarket(set_t,set_side_opt,set_tech_SS_TPS)"; ";
         );
         LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS)),
              PUT par_out_NR_fromTPS_toRMarket(set_t,set_side_opt,set_tech_SS_TPS)"; ";
         );
        LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS)),
              PUT par_out_PR_fromTPS_toRGrid(set_t,set_side_opt,set_tech_SS_TPS)"; ";
         );
        LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS)),
              PUT par_out_NR_fromTPS_toRGrid(set_t,set_side_opt,set_tech_SS_TPS)"; ";
         );
        LOOP (set_tech_SS_TPS$(set_pssOH(set_side_opt,set_tech_SS_TPS) and set_pss_opt(set_tech_SS_TPS) and not set_pss_opt_cust(set_tech_SS_TPS)),
              PUT par_out_E_fromTPS_toPHS(set_t,set_side_opt,set_tech_SS_TPS)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe KPI Verbrauchsverhalten##
*-------------------------------------------------------------------------------
*         PUT par_out_L_DS_E_selfcons(set_t,set_side_opt)"; ";
*         PUT par_out_L_DS_E_BM_PVdirectcons(set_t,set_side_opt)"; ";
*         PUT par_out_L_DS_E_BM_NaScons(set_t,set_side_opt)"; ";
*         PUT par_out_L_DS_E_BM_Sonnentankcons(set_t,set_side_opt)"; ";
*         PUT par_out_L_DS_E_extcons(set_t,set_side_opt)"; ";

*         PUT par_out_L_DS_W_selfcons(set_t,set_side_opt)"; ";
*         PUT par_out_L_DS_W_extcons(set_t,set_side_opt)"; ";

*         PUT par_out_L_DS_E_selfcons_percent(set_t,set_side_opt)"; ";
*         PUT par_out_L_DS_E_BM_PVdirectcons_percent(set_t,set_side_opt)"; ";
*         PUT par_out_L_DS_E_BM_NaScons_percent(set_t,set_side_opt)"; ";
*         PUT par_out_L_DS_E_BM_Sonnentankcons_percent(set_t,set_side_opt)"; ";
*         PUT par_out_L_DS_E_extcons_percent(set_t,set_side_opt)"; ";

*         PUT par_out_L_DS_W_selfcons_percent(set_t,set_side_opt)"; ";
*         PUT par_out_L_DS_W_extcons_percent(set_t,set_side_opt)"; ";

  PUT /;
         PUT /;
);
       );


*-------------------------------------------------------------------------------
* ##Deklarieren##
*-------------------------------------------------------------------------------
LOOP((set_a),

    PUT Output_balancing_organizmdl;

    PUT_UTILITY 'ren' / 'output/results/' set_a.tl:0 '.' set_optsteps.tl:0 '.output_balancing_organizmdl.csv';

    LOOP(set_t$set_t_store(set_t),

         PUT "# ";

         PUT "set_a" "; ";

         PUT "set_t" "; ";

         PUT "par_out_Modelstat_organizationmodel" "("set_t.tl"); ";

         PUT "par_out_Solvestat_organizationmodel" "("set_t.tl"); ";

*-------------------------------------------------------------------------------
* ##Deklarieren Energieflüsse##
*-------------------------------------------------------------------------------
         LOOP ((set_fromPss, set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss) and not set_energyLink_opt_cust('E',set_fromPss,set_toPss)),
              PUT "par_out_E_fromPss_toPss""("set_t.tl", ",set_fromPss.tl", ",set_toPss.tl"); ";
         );

         LOOP ((set_fromPss, set_toPss)$(set_energyLink_opt('W',set_fromPss,set_toPss) and not set_energyLink_opt_cust('W',set_fromPss,set_toPss)),
              PUT "par_out_W_fromPss_toPss""("set_t.tl", ",set_fromPss.tl", ",set_toPss.tl"); ";
         );

         LOOP ((set_fromPss, set_toPss)$(set_energyLink_opt('G',set_fromPss,set_toPss) and not set_energyLink_opt_cust('G',set_fromPss,set_toPss)),
              PUT "par_out_G_fromPss_toPss""("set_t.tl", ",set_fromPss.tl", ",set_toPss.tl"); ";
         );

                 LOOP ((set_fromPss, set_toPss)$(set_energyLink_opt('C',set_fromPss,set_toPss) and not set_energyLink_opt_cust('C',set_fromPss,set_toPss)),
              PUT "par_out_C_fromPss_toPss""("set_t.tl", ",set_fromPss.tl", ",set_toPss.tl"); ";
         );

         LOOP ((set_fromPss,set_toPss)$(set_energyLink_opt('B',set_fromPss,set_toPss) and not set_energyLink_opt_cust('G',set_fromPss,set_toPss)),
              PUT par_out_B_fromPss_toPss(set_t,set_fromPss,set_toPss)"; ";
         );

         LOOP ((set_fromPss,set_toPss)$(set_energyLink_opt('O',set_fromPss,set_toPss) and not set_energyLink_opt_cust('G',set_fromPss,set_toPss)),
              PUT par_out_O_fromPss_toPss(set_t,set_fromPss,set_toPss)"; ";
         );

         LOOP ((set_fromPss,set_toPss)$(set_energyLink_opt('RF',set_fromPss,set_toPss) and not set_energyLink_opt_cust('G',set_fromPss,set_toPss)),
              PUT par_out_RF_fromPss_toPss(set_t,set_fromPss,set_toPss)"; ";
         );

         LOOP ((set_fromPss,set_toPss)$(set_energyLink_opt('L',set_fromPss,set_toPss) and not set_energyLink_opt_cust('G',set_fromPss,set_toPss)),
              PUT par_out_L_fromPss_toPss(set_t,set_fromPss,set_toPss)"; ";
         );

         LOOP ((set_fromPss,set_toPss)$(set_energyLink_opt('HC',set_fromPss,set_toPss) and not set_energyLink_opt_cust('G',set_fromPss,set_toPss)),
              PUT par_out_HC_fromPss_toPss(set_t,set_fromPss,set_toPss)"; ";
         );

         LOOP ((set_fromPss, set_toPss)$(set_energyLink_opt('PR',set_fromPss,set_toPss) and not set_energyLink_opt_cust('PR',set_fromPss,set_toPss)),
              PUT "par_out_PR_fromPss_toPss""("set_t.tl", ",set_fromPss.tl", ",set_toPss.tl"); ";
         );

         LOOP ((set_fromPss, set_toPss)$(set_energyLink_opt('NR',set_fromPss,set_toPss) and not set_energyLink_opt_cust('NR',set_fromPss,set_toPss)),
              PUT "par_out_NR_fromPss_toPss""("set_t.tl", ",set_fromPss.tl", ",set_toPss.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren Leistungsmessungen##
*-------------------------------------------------------------------------------
        LOOP (set_power$(set_power_opt(set_power) and not set_power_opt_cust(set_power)),
              PUT "par_out_PowerMeasurement""("set_t.tl", ",set_power.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren KPI Speicherzyklen##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)) ,
              PUT "par_out_N_DES_ES_cycles""("set_t.tl", ",set_tech_DES_ES.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren KPI Speicherständer##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT "par_out_SOC_DES_ES""("set_t.tl", ",set_tech_DES_ES.tl"); ";
         );

         LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT "par_out_SOC_DES_ES_percent""("set_t.tl", ",set_tech_DES_ES.tl"); ";
         );

         LOOP (set_tech_DES_TS$(set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT "par_out_SOC_DES_TS""("set_t.tl", ",set_tech_DES_TS.tl"); ";
         );

         LOOP (set_tech_DES_TS$(set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT "par_out_SOC_DES_TS_percent""("set_t.tl", ",set_tech_DES_TS.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren KPI Speicherverluste##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT "par_out_E_DES_ES_losses""("set_t.tl", ",set_tech_DES_ES.tl"); ";
         );


         LOOP (set_tech_DES_TS$(set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT "par_out_W_DES_TS_losses""("set_t.tl", ",set_tech_DES_TS.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren Leistungsanteile##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT "par_out_P_DES_ES_chargeuse_percent""("set_t.tl", ",set_tech_DES_ES.tl"); ";
         );

                 LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              PUT "par_out_P_DES_ES_dischargeuse_percent""("set_t.tl", ",set_tech_DES_ES.tl"); ";
         );


         LOOP (set_tech_DES_TS$(set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT "par_out_Q_DES_TS_chargeuse_percent""("set_t.tl", ",set_tech_DES_TS.tl"); ";
         );

                  LOOP (set_tech_DES_TS$(set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              PUT "par_out_Q_DES_TS_dischargeuse_percent""("set_t.tl", ",set_tech_DES_TS.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren KPI Regelenergieangebot##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES)) ,
              PUT "par_out_E_DES_ES_resneg""("set_t.tl", ",set_tech_DES_ES.tl"); ";
         );

         LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES)),
              PUT "par_out_E_DES_ES_respos""("set_t.tl", ",set_tech_DES_ES.tl"); ";
         );

         LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES)) ,
              PUT "par_out_I_DES_ES_resneg""("set_t.tl", ",set_tech_DES_ES.tl"); ";
         );

         LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES)),
              PUT "par_out_I_DES_ES_respos""("set_t.tl", ",set_tech_DES_ES.tl"); ";
         );

         LOOP (set_tech_DES_HP$(set_pss_opt(set_tech_DES_HP)),
              PUT "par_out_E_DES_HP_resneg""("set_t.tl", ",set_tech_DES_HP.tl"); ";
         );

         LOOP (set_tech_DES_EB$(set_pss_opt(set_tech_DES_EB)),
              PUT "par_out_E_DES_EB_resneg""("set_t.tl", ",set_tech_DES_EB.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren PV-Direct##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_PV$(set_pss_opt(set_tech_DES_PV) and not set_pss_opt_cust(set_tech_DES_PV)),
              PUT "par_out_I_BM_PVdirect_cust""("set_t.tl", ",set_tech_DES_PV.tl"); ";
         );

        LOOP (set_tech_DES_PV$(set_pss_opt(set_tech_DES_PV) and not set_pss_opt_cust(set_tech_DES_PV)),
              PUT "par_out_E_BM_PVdirect_offer_cust""("set_t.tl", ",set_tech_DES_PV.tl"); ";
         );

         LOOP (set_tech_DES_PV$(set_pss_opt(set_tech_DES_PV) and not set_pss_opt_cust(set_tech_DES_PV)),
              PUT "par_out_E_BM_PVdirect_cons_cust""("set_t.tl", ",set_tech_DES_PV.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren PV-Erzeugungsanteile##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_PV$set_pss_opt(set_tech_DES_PV),
              PUT "par_out_E_DES_PV_ratio_selfvstotal""("set_t.tl", ",set_tech_DES_PV.tl"); ";
         );

         LOOP (set_tech_DES_PV$set_pss_opt(set_tech_DES_PV),
              PUT "par_out_E_DES_PV_ratio_sonnentankvstotal""("set_t.tl", ",set_tech_DES_PV.tl"); ";
         );

         LOOP (set_tech_DES_PV$set_pss_opt(set_tech_DES_PV),
              PUT "par_out_E_DES_PV_ratio_netzspeichervstotal""("set_t.tl", ",set_tech_DES_PV.tl"); ";
         );

        LOOP (set_tech_DES_PV$set_pss_opt(set_tech_DES_PV),
              PUT "par_out_E_DES_PV_ratio_directvstotal""("set_t.tl", ",set_tech_DES_PV.tl"); ";
         );

         LOOP (set_tech_DES_PV$set_pss_opt(set_tech_DES_PV),
              PUT "par_out_E_DES_PV_ratio_othervstotal""("set_t.tl", ",set_tech_DES_PV.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren KPI Stromlastdeckung##
*-------------------------------------------------------------------------------
         LOOP (set_load_DS_E$set_pss_opt(set_load_DS_E),
              PUT "par_out_E_E_ELoad_gridcov""("set_t.tl", ",set_load_DS_E.tl"); ";
         );

         LOOP (set_load_DS_E$set_pss_opt(set_load_DS_E),
              PUT "par_out_E_E_ELoad_pvcov""("set_t.tl", ",set_load_DS_E.tl"); ";
         );


         LOOP (set_load_DS_E$set_pss_opt(set_load_DS_E),
              PUT "par_out_E_E_ELoad_escov""("set_t.tl", ",set_load_DS_E.tl"); ";
         );

         LOOP (set_load_DS_E$set_pss_opt(set_load_DS_E),
              PUT "par_out_E_E_ELoad_Sonnentankcov""("set_t.tl", ",set_load_DS_E.tl"); ";
         );

         LOOP (set_load_DS_E$set_pss_opt(set_load_DS_E),
              PUT "par_out_E_E_ELoad_NaScov""("set_t.tl", ",set_load_DS_E.tl"); ";
         );

         LOOP (set_load_DS_E$set_pss_opt(set_load_DS_E),
              PUT "par_out_E_E_ELoad_PVdirectcov""("set_t.tl", ",set_load_DS_E.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren KPI Wärmepumpenlastdeckung##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_HP$set_pss_opt(set_tech_DES_HP),
              PUT "par_out_E_E_HP_gridcov""("set_t.tl", ",set_tech_DES_HP.tl"); ";
         );

         LOOP (set_tech_DES_HP$set_pss_opt(set_tech_DES_HP),
              PUT "par_out_E_E_HP_pvcov""("set_t.tl", ",set_tech_DES_HP.tl"); ";
         );

         LOOP (set_tech_DES_HP$set_pss_opt(set_tech_DES_HP),
              PUT "par_out_E_E_HP_escov""("set_t.tl", ",set_tech_DES_HP.tl"); ";
         );

         LOOP (set_tech_DES_HP$set_pss_opt(set_tech_DES_HP),
              PUT "par_out_E_E_HP_PVdirectcov""("set_t.tl", ",set_tech_DES_HP.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren KPI Durchlauferhitzerlastdeckung##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_EB$set_pss_opt(set_tech_DES_EB),
              PUT "par_out_E_E_EB_gridcov""("set_t.tl", ",set_tech_DES_EB.tl"); ";
         );

         LOOP (set_tech_DES_EB$set_pss_opt(set_tech_DES_EB),
              PUT "par_out_E_E_EB_pvcov""("set_t.tl", ",set_tech_DES_EB.tl"); ";
         );

         LOOP (set_tech_DES_EB$set_pss_opt(set_tech_DES_EB),
              PUT "par_out_E_E_EB_escov""("set_t.tl", ",set_tech_DES_EB.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Deklarieren KPI Wärmelastdeckung##
*-------------------------------------------------------------------------------
         LOOP (set_load_DS_W$(set_pss_opt(set_load_DS_W) and not set_pss_opt_cust(set_load_DS_W)),
              PUT "par_out_W_DS_load_cov""("set_t.tl", ",set_load_DS_W.tl"); ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe KPI Bilanzierung####
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES$set_pss_opt(set_tech_DES),
              PUT "par_out_O_DES_PSS_Total""("set_t.tl", ",set_tech_DES.tl"); ";
         );

         LOOP (set_tech_DES$set_pss_opt(set_tech_DES),
              PUT "par_out_O_DES_PSS_Cap""("set_t.tl", ",set_tech_DES.tl"); ";
         );

         LOOP (set_tech_DES$set_pss_opt(set_tech_DES),
              PUT "par_out_O_DES_PSS_OuM""("set_t.tl", ",set_tech_DES.tl"); ";
         );

         LOOP (set_tech_DES$set_pss_opt(set_tech_DES),
              PUT "par_out_O_DES_PSS_Ins""("set_t.tl", ",set_tech_DES.tl"); ";
         );

         LOOP (set_tech_DES$set_pss_opt(set_tech_DES),
              PUT "par_out_I_DES_PSS_Comp""("set_t.tl", ",set_tech_DES.tl"); ";
         );

         PUT "par_out_IuO_TS_trading_spot_energy""("set_t.tl"); ";
         PUT "par_out_IuO_TS_trading_spot_power""("set_t.tl"); ";
         PUT "par_out_IuO_TS_trading_gas_energy""("set_t.tl"); ";
         PUT "par_out_IuO_TS_trading_gas_power""("set_t.tl"); ";

*-------------------------------------------------------------------------------
* ##Ausgabe##
*-------------------------------------------------------------------------------
         PUT /;

         PUT set_a.tl"; "

         PUT set_t.tl"; ";

         PUT par_out_Modelstat_organizationmodel(set_t)"; ";

         PUT par_out_Solvestat_organizationmodel(set_t)"; ";

*-------------------------------------------------------------------------------
* ##Deklarieren Stromlast Kunden##
*-------------------------------------------------------------------------------
         LOOP ((set_fromPss,set_toPss)$(set_energyLink_opt('E',set_fromPss,set_toPss) and not set_energyLink_opt_cust('E',set_fromPss,set_toPss)),
              PUT par_out_E_fromPss_toPss(set_t,set_fromPss,set_toPss)"; ";
         );

         LOOP ((set_fromPss,set_toPss)$(set_energyLink_opt('W',set_fromPss,set_toPss) and not set_energyLink_opt_cust('W',set_fromPss,set_toPss)),
              PUT par_out_W_fromPss_toPss(set_t,set_fromPss,set_toPss)"; ";
         );

         LOOP ((set_fromPss,set_toPss)$(set_energyLink_opt('G',set_fromPss,set_toPss) and not set_energyLink_opt_cust('G',set_fromPss,set_toPss)),
              PUT par_out_G_fromPss_toPss(set_t,set_fromPss,set_toPss)"; ";
         );

                LOOP ((set_fromPss,set_toPss)$(set_energyLink_opt('C',set_fromPss,set_toPss) and not set_energyLink_opt_cust('C',set_fromPss,set_toPss)),
              PUT par_out_C_fromPss_toPss(set_t,set_fromPss,set_toPss)"; ";
         );

         LOOP ((set_fromPss,set_toPss)$(set_energyLink_opt('B',set_fromPss,set_toPss) and not set_energyLink_opt_cust('G',set_fromPss,set_toPss)),
              PUT par_out_B_fromPss_toPss(set_t,set_fromPss,set_toPss)"; ";
         );

         LOOP ((set_fromPss,set_toPss)$(set_energyLink_opt('O',set_fromPss,set_toPss) and not set_energyLink_opt_cust('G',set_fromPss,set_toPss)),
              PUT par_out_O_fromPss_toPss(set_t,set_fromPss,set_toPss)"; ";
         );

         LOOP ((set_fromPss,set_toPss)$(set_energyLink_opt('RF',set_fromPss,set_toPss) and not set_energyLink_opt_cust('G',set_fromPss,set_toPss)),
              PUT par_out_RF_fromPss_toPss(set_t,set_fromPss,set_toPss)"; ";
         );

         LOOP ((set_fromPss,set_toPss)$(set_energyLink_opt('L',set_fromPss,set_toPss) and not set_energyLink_opt_cust('G',set_fromPss,set_toPss)),
              PUT par_out_L_fromPss_toPss(set_t,set_fromPss,set_toPss)"; ";
         );

         LOOP ((set_fromPss,set_toPss)$(set_energyLink_opt('HC',set_fromPss,set_toPss) and not set_energyLink_opt_cust('G',set_fromPss,set_toPss)),
              PUT par_out_HC_fromPss_toPss(set_t,set_fromPss,set_toPss)"; ";
         );

         LOOP ((set_fromPss,set_toPss)$(set_energyLink_opt('PR',set_fromPss,set_toPss) and not set_energyLink_opt_cust('PR',set_fromPss,set_toPss)),
              PUT par_out_PR_fromPss_toPss(set_t,set_fromPss,set_toPss)"; ";
         );

         LOOP ((set_fromPss,set_toPss)$(set_energyLink_opt('NR',set_fromPss,set_toPss) and not set_energyLink_opt_cust('NR',set_fromPss,set_toPss)),
              PUT par_out_NR_fromPss_toPss(set_t,set_fromPss,set_toPss)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe Leistungsmessungen##
*-------------------------------------------------------------------------------
         LOOP (set_power$(set_power_opt(set_power) and not set_power_opt_cust(set_power)),
              PUT par_out_PowerMeasurement(set_t,set_power)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe KPI Speicherstand##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              Put par_out_N_DES_ES_cycles(set_t,set_tech_DES_ES)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe KPI Speicherständer##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              Put par_out_SOC_DES_ES(set_t,set_tech_DES_ES)"; ";
         );

         LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              Put par_out_SOC_DES_ES_percent(set_t,set_tech_DES_ES)"; ";
         );

         LOOP (set_tech_DES_TS$(set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              Put par_out_SOC_DES_TS(set_t,set_tech_DES_TS)"; ";
         );

         LOOP (set_tech_DES_TS$(set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              Put par_out_SOC_DES_TS_percent(set_t,set_tech_DES_TS)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe KPI Speicherverluste##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              Put par_out_E_DES_ES_losses(set_t,set_tech_DES_ES)"; ";
         );


         LOOP (set_tech_DES_TS$(set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              Put par_out_W_DES_TS_losses(set_t,set_tech_DES_TS)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe KPI Leistungsanteile##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              Put par_out_P_DES_ES_chargeuse_percent(set_t,set_tech_DES_ES)"; ";
         );

         LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES) and not set_pss_opt_cust(set_tech_DES_ES)),
              Put par_out_P_DES_ES_dischargeuse_percent(set_t,set_tech_DES_ES)"; ";
         );

         LOOP (set_tech_DES_TS$(set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              Put par_out_Q_DES_TS_chargeuse_percent(set_t,set_tech_DES_TS)"; ";
         );


         LOOP (set_tech_DES_TS$(set_pss_opt(set_tech_DES_TS) and not set_pss_opt_cust(set_tech_DES_TS)),
              Put par_out_Q_DES_TS_dischargeuse_percent(set_t,set_tech_DES_TS)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe KPI Regelenergieangebot##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES)),
              Put par_out_E_DES_ES_resneg(set_t,set_tech_DES_ES)"; ";
         );

         LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES)),
              Put par_out_E_DES_ES_respos(set_t,set_tech_DES_ES)"; ";
         );

         LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES)),
              Put par_out_I_DES_ES_resneg(set_t,set_tech_DES_ES)"; ";
         );

         LOOP (set_tech_DES_ES$(set_pss_opt(set_tech_DES_ES)),
              Put par_out_I_DES_ES_respos(set_t,set_tech_DES_ES)"; ";
         );

         LOOP (set_tech_DES_HP$(set_pss_opt(set_tech_DES_HP) and not set_pss_opt_cust(set_tech_DES_HP)),
              Put par_out_E_DES_HP_resneg(set_t,set_tech_DES_HP)"; ";
         );

         LOOP (set_tech_DES_EB$(set_pss_opt(set_tech_DES_EB) and not set_pss_opt_cust(set_tech_DES_EB)),
              Put par_out_E_DES_EB_resneg(set_t,set_tech_DES_EB)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe PV-Direct##
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_PV$(set_pss_opt(set_tech_DES_PV) and not set_pss_opt_cust(set_tech_DES_PV)),
              PUT par_out_I_BM_PVdirect_cust(set_t,set_tech_DES_PV)"; ";
         );

        LOOP (set_tech_DES_PV$(set_pss_opt(set_tech_DES_PV) and not set_pss_opt_cust(set_tech_DES_PV)),
              PUT par_out_E_BM_PVdirect_offer_cust(set_t,set_tech_DES_PV)"; ";
         );

         LOOP (set_tech_DES_PV$(set_pss_opt(set_tech_DES_PV) and not set_pss_opt_cust(set_tech_DES_PV)),
              PUT par_out_E_BM_PVdirect_cons_cust(set_t,set_tech_DES_PV)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe PV-Erzeugungsanteile####
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_PV$set_pss_opt(set_tech_DES_PV),
              PUT par_out_E_DES_PV_ratio_selfvstotal(set_t,set_tech_DES_PV)"; ";
         );

                 LOOP (set_tech_DES_PV$set_pss_opt(set_tech_DES_PV),
              PUT par_out_E_DES_PV_ratio_sonnentankvstotal(set_t,set_tech_DES_PV)"; ";
         );

                 LOOP (set_tech_DES_PV$set_pss_opt(set_tech_DES_PV),
              PUT par_out_E_DES_PV_ratio_netzspeichervstotal(set_t,set_tech_DES_PV)"; ";
         );

        LOOP (set_tech_DES_PV$set_pss_opt(set_tech_DES_PV),
              PUT par_out_E_DES_PV_ratio_directvstotal(set_t,set_tech_DES_PV)"; ";
         );

         LOOP (set_tech_DES_PV$set_pss_opt(set_tech_DES_PV),
              PUT par_out_E_DES_PV_ratio_othervstotal(set_t,set_tech_DES_PV)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe KPI Stromlastdeckung####
*-------------------------------------------------------------------------------
         LOOP (set_load_DS_E$set_pss_opt(set_load_DS_E),
              PUT par_out_E_E_ELoad_gridcov(set_t,set_load_DS_E)"; ";
         );

         LOOP (set_load_DS_E$set_pss_opt(set_load_DS_E),
              PUT par_out_E_E_ELoad_pvcov(set_t,set_load_DS_E)"; ";
         );

         LOOP (set_load_DS_E$set_pss_opt(set_load_DS_E),
              PUT par_out_E_E_ELoad_escov(set_t,set_load_DS_E)"; ";
         );

         LOOP (set_load_DS_E$set_pss_opt(set_load_DS_E),
              PUT par_out_E_E_ELoad_Sonnentankcov(set_t,set_load_DS_E)"; ";
         );

         LOOP (set_load_DS_E$set_pss_opt(set_load_DS_E),
              PUT par_out_E_E_ELoad_NaScov(set_t,set_load_DS_E)"; ";
         );

         LOOP (set_load_DS_E$set_pss_opt(set_load_DS_E),
              PUT par_out_E_E_ELoad_PVdirectcov(set_t,set_load_DS_E)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe KPI Wärmepumpenlastdeckung####
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_HP$set_pss_opt(set_tech_DES_HP),
              PUT par_out_E_E_HP_gridcov(set_t,set_tech_DES_HP)"; ";
         );

         LOOP (set_tech_DES_HP$set_pss_opt(set_tech_DES_HP),
              PUT par_out_E_E_HP_pvcov(set_t,set_tech_DES_HP)"; ";
         );

         LOOP (set_tech_DES_HP$set_pss_opt(set_tech_DES_HP),
              PUT par_out_E_E_HP_escov(set_t,set_tech_DES_HP)"; ";
         );

         LOOP (set_tech_DES_HP$set_pss_opt(set_tech_DES_HP),
              PUT par_out_E_E_HP_PVdirectcov(set_t,set_tech_DES_HP)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe KPI Durchlauferhitzerlastdeckung####
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES_EB$set_pss_opt(set_tech_DES_EB),
              PUT par_out_E_E_EB_gridcov(set_t,set_tech_DES_EB)"; ";
         );

         LOOP (set_tech_DES_EB$set_pss_opt(set_tech_DES_EB),
              PUT par_out_E_E_EB_pvcov(set_t,set_tech_DES_EB)"; ";
         );

         LOOP (set_tech_DES_EB$set_pss_opt(set_tech_DES_EB),
              PUT par_out_E_E_EB_escov(set_t,set_tech_DES_EB)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe KPI Wärmelastdeckung##
*-------------------------------------------------------------------------------
         LOOP (set_load_DS_W$(set_pss_opt(set_load_DS_W) and not set_pss_opt_cust(set_load_DS_W)),
              Put par_out_W_DS_load_cov(set_t,set_load_DS_W)"; ";
         );

*-------------------------------------------------------------------------------
* ##Ausgabe KPI Bilanzierung####
*-------------------------------------------------------------------------------
         LOOP (set_tech_DES$set_pss_opt(set_tech_DES),
              PUT par_out_O_DES_PSS_Total(set_t,set_tech_DES)"; ";
         );

         LOOP (set_tech_DES$set_pss_opt(set_tech_DES),
              PUT par_out_O_DES_PSS_Cap(set_t,set_tech_DES)"; ";
         );

         LOOP (set_tech_DES$set_pss_opt(set_tech_DES),
              PUT par_out_O_DES_PSS_OuM(set_t,set_tech_DES)"; ";
         );

         LOOP (set_tech_DES$set_pss_opt(set_tech_DES),
              PUT par_out_O_DES_PSS_Ins(set_t,set_tech_DES)"; ";
         );

         LOOP (set_tech_DES$set_pss_opt(set_tech_DES),
              PUT par_out_I_DES_PSS_Comp(set_t,set_tech_DES)"; ";
         );

         PUT par_out_IuO_TS_trading_spot_energy(set_t)"; ";
         PUT par_out_IuO_TS_trading_spot_power(set_t)"; ";
         PUT par_out_IuO_TS_trading_gas_energy(set_t)"; ";
         PUT par_out_IuO_TS_trading_gas_power(set_t)"; ";





 PUT /;

         PUT /;


);

       );
