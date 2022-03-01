*-------------------------------------------------------------------------------
* ##Deklarieren##
*-------------------------------------------------------------------------------
    LOOP((set_a, set_side_opt(set_side)),

    PUT Output_accounting_organizmdl;

    PUT_UTILITY 'ren' / 'output/results/' set_a.tl:0 '.' set_optsteps.tl:0 '.' set_side_opt.tl:0  '.output_accounting_organizmdl.csv';

    LOOP(set_t$set_t_store(set_t),

         PUT "# ";

         PUT "set_a" "; ";

         PUT "set_t" "; ";

*-------------------------------------------------------------------------------
* ##Header NPV##
*-------------------------------------------------------------------------------

         PUT "par_out_IuO_ESector_OrgaSide""("set_t.tl", ",set_side_opt.tl"); ";
         PUT "par_out_IuO_GSector_OrgaSide""("set_t.tl", ",set_side_opt.tl"); ";
         PUT "par_out_IuO_WSector_OrgaSide""("set_t.tl", ",set_side_opt.tl"); ";
         PUT "par_out_IuO_CSector_OrgaSide""("set_t.tl", ",set_side_opt.tl"); ";
         PUT "par_out_IuO_RSector_OrgaSide""("set_t.tl", ",set_side_opt.tl"); ";

         PUT /;

         PUT set_a.tl"; "

         PUT set_t.tl"; ";

*-------------------------------------------------------------------------------
* ##Werte NPV##
*-------------------------------------------------------------------------------

         PUT par_out_IuO_ESector_OrgaSide(set_t,set_side_opt)"; ";
         PUT par_out_IuO_GSector_OrgaSide(set_t,set_side_opt)"; ";
         PUT par_out_IuO_WSector_OrgaSide(set_t,set_side_opt)"; ";
         PUT par_out_IuO_CSector_OrgaSide(set_t,set_side_opt)"; ";     
         PUT par_out_IuO_RSector_OrgaSide(set_t,set_side_opt)"; ";

         PUT /;
         PUT /;

    );
);



























*-------------------------------------------------------------------------------
* ##Deklarieren##
*-------------------------------------------------------------------------------
LOOP((set_a),

    PUT Output_accounting_organizmdl;

    PUT_UTILITY 'ren' / 'output/results/' set_a.tl:0 '.' set_optsteps.tl:0 '.output_accounting_organizmdl.csv';

    LOOP(set_t$set_t_store(set_t),

         PUT "# ";

         PUT "set_a" "; ";

         PUT "set_t" "; ";

         PUT "par_out_Modelstat_organizationmodel" "("set_t.tl"); ";

         PUT "par_out_Solvestat_organizationmodel" "("set_t.tl"); ";

*-------------------------------------------------------------------------------
* ##Deklarieren Stromlast Kunden##
*-------------------------------------------------------------------------------
         PUT "par_out_IuO_ESector_Orga""("set_t.tl"); ";
         PUT "par_out_IuO_GSector_Orga""("set_t.tl"); ";
         PUT "par_out_IuO_WSector_Orga""("set_t.tl"); ";
         PUT "par_out_IuO_RSector_Orga""("set_t.tl"); ";
         PUT "par_out_IuO_Sector_Orga""("set_t.tl"); ";



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
         PUT par_out_IuO_ESector_Orga(set_t)"; ";
         PUT par_out_IuO_GSector_Orga(set_t)"; ";
         PUT par_out_IuO_WSector_Orga(set_t)"; ";
         PUT par_out_IuO_RSector_Orga(set_t)"; ";
         PUT par_out_IuO_Sector_Orga(set_t)"; ";


 PUT /;

         PUT /;


);

       );
