PARAMETER par_Eta_NS_Grid(set_pss);
par_Eta_NS_Grid(set_grid_NS)=1;
par_Eta_NS_Grid(set_grid_NS_W)=par_Eta_NS_WGrid(set_grid_NS_W);

***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------

EQUATIONS EqGrid(set_ii,set_sector,set_pss) Netzbilanzierung;
EqGrid(set_t,set_sector,set_grid_NS)$set_pss_opt(set_grid_NS)..
         - SUM(set_fromPss,
         var_energyFlow(set_t,set_sector,set_fromPss,set_grid_NS)$set_energyLink_opt(set_sector,set_fromPss,set_grid_NS))*par_Eta_NS_Grid(set_grid_NS)
         + SUM(set_toPss,
         var_energyFlow(set_t,set_sector,set_grid_NS,set_toPss)$set_energyLink_opt(set_sector,set_grid_NS,set_toPss))
         =e=
         0;

EQUATIONS EqGrid_R1(set_ii,set_grid_NS) Reservekapazitätsbeschränkung;
EqGrid_R1(set_t,set_grid_NS_W)$set_pss_opt(set_grid_NS_W)..
         SUM(set_toPss,var_energyFlow(set_t,'NR',set_grid_NS_W,set_toPss)$set_energyLink_opt('NR',set_grid_NS_W,set_toPss))
         =l=
         par_SOC_NS_NRGrid_cap(set_t,set_grid_NS_W);

EQUATIONS EqGrid_R2(set_ii,set_grid_NS) Reservekapazitätsbeschränkung;
EqGrid_R2(set_t,set_grid_NS_W)$set_pss_opt(set_grid_NS_W)..
         SUM(set_toPss,var_energyFlow(set_t,'PR',set_grid_NS_W,set_toPss)$set_energyLink_opt('PR',set_grid_NS_W,set_toPss))
         =l=
         par_SOC_NS_PRGrid_cap(set_t,set_grid_NS_W);

MODEL mod_grid_NS_orga /EqGrid, EqGrid_R1, EqGrid_R2 /;


