PARAMETER par_absoluteStatusCost(set_pss,set_fromSide,set_toSide);
par_absoluteStatusCost(set_pss,set_fromSide,set_toSide)=0;

par_absoluteStatusCost(set_pss,set_fromSide,'MS')$(set_pssOH(set_fromSide,set_pss))
=par_C_pss_absoluteStatus(set_pss);
