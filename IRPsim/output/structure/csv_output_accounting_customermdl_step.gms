*-------------------------------------------------------------------------------
* ##Deklarieren##
*-------------------------------------------------------------------------------
LOOP((set_a, set_side_opt(set_side)),

    PUT Output_accounting_customermdl;

    PUT_UTILITY 'ren' / 'output/results/' set_a.tl:0 '.' set_optsteps.tl:0 '.' set_side_opt.tl:0  '.output_accounting_customermdl.csv';

    LOOP(set_t$set_t_store(set_t),

         PUT "# ";

         PUT "set_a" "; ";

         PUT "set_t" "; ";

*-------------------------------------------------------------------------------
* ##Header NPV##
*-------------------------------------------------------------------------------
         PUT "par_out_S_DS""("set_t.tl", ",set_side_opt.tl"); ";
         PUT "par_out_IuO_ESector_CustSide""("set_t.tl", ",set_side_opt.tl"); ";
         PUT "par_out_IuO_GSector_CustSide""("set_t.tl", ",set_side_opt.tl"); ";
         PUT "par_out_IuO_WSector_CustSide""("set_t.tl", ",set_side_opt.tl"); ";
         PUT "par_out_IuO_CSector_CustSide""("set_t.tl", ",set_side_opt.tl"); ";
         PUT "par_out_IuO_RSector_CustSide""("set_t.tl", ",set_side_opt.tl"); ";
         PUT "par_out_IuO_Sector_CustSide""("set_t.tl", ",set_side_opt.tl"); ";

         PUT "par_out_IuO_ESector_CustSide_ind""("set_t.tl", ",set_side_opt.tl"); ";
         PUT "par_out_IuO_GSector_CustSide_ind""("set_t.tl", ",set_side_opt.tl"); ";
         PUT "par_out_IuO_WSector_CustSide_ind""("set_t.tl", ",set_side_opt.tl"); ";
         PUT "par_out_IuO_CSector_CustSide_ind""("set_t.tl", ",set_side_opt.tl"); ";
         PUT "par_out_IuO_RSector_CustSide_ind""("set_t.tl", ",set_side_opt.tl"); ";



         PUT /;

         PUT set_a.tl"; "

         PUT set_t.tl"; ";

*-------------------------------------------------------------------------------
* ##Werte NPV##
*-------------------------------------------------------------------------------

         PUT par_out_S_DS(set_t,set_side_opt)"; ";
         PUT par_out_IuO_ESector_CustSide(set_t,set_side_opt)"; ";
         PUT par_out_IuO_GSector_CustSide(set_t,set_side_opt)"; ";
         PUT par_out_IuO_WSector_CustSide(set_t,set_side_opt)"; ";
         PUT par_out_IuO_CSector_CustSide(set_t,set_side_opt)"; ";
         PUT par_out_IuO_RSector_CustSide(set_t,set_side_opt)"; ";
         PUT par_out_IuO_Sector_Cust(set_t)"; ";

         PUT par_out_IuO_ESector_CustSide_ind(set_t,set_side_opt)"; ";
         PUT par_out_IuO_GSector_CustSide_ind(set_t,set_side_opt)"; ";
         PUT par_out_IuO_WSector_CustSide_ind(set_t,set_side_opt)"; ";
         PUT par_out_IuO_CSector_CustSide(set_t,set_side_opt)"; ";
         PUT par_out_IuO_RSector_CustSide_ind(set_t,set_side_opt)"; ";


         PUT /;
         PUT /;

    );
);










LOOP((set_a),

    PUT Output_accounting_customermdl;

    PUT_UTILITY 'ren' / 'output/results/' set_a.tl:0 '.' set_optsteps.tl:0  '.output_accounting_customermdl.csv';

    LOOP(set_t$set_t_store(set_t),

         PUT "# ";

         PUT "set_a" "; ";

         PUT "set_t" "; ";

*-------------------------------------------------------------------------------
* ##Header NPV##
*-------------------------------------------------------------------------------

         PUT "par_out_IuO_Sector_Cust""("set_t.tl"); ";


         PUT /;

         PUT set_a.tl"; "

         PUT set_t.tl"; ";

*-------------------------------------------------------------------------------
* ##Werte NPV##
*-------------------------------------------------------------------------------

         PUT par_out_IuO_Sector_Cust(set_t)"; ";


         PUT /;
         PUT /;

    );
);
