PARAMETER par_relativeStatusCost(set_pss,set_fromSide,set_toSide);
par_relativeStatusCost(set_pss,set_fromSide,set_toSide)=0;

par_relativeStatusCost(set_pss,set_fromSide,'MS')$(set_pssOH(set_fromSide,set_pss))
=par_C_pss_relativeStatus(set_pss);


