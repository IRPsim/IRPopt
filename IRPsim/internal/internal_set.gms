

***-----------------------------------------------------------------------------
***Optimierungsseiten
***-----------------------------------------------------------------------------
ALIAS (set_toSide,set_side), (set_fromSide,set_toSide), (set_side,set_sideOH);
ALIAS (set_toSide_orga,set_side_orga), (set_fromSide_orga,set_side_orga);
ALIAS (set_toSide_cust,set_side_cust), (set_fromSide_cust,set_side_cust);
ALIAS (set_toSide_fares,set_side_fares), (set_fromSide_fares,set_side_fares);
ALIAS (set_ii,set_ii_duplicate);
ALIAS (set_ii_0,set_ii_0_duplicate);
ALIAS (set_t,set_t_duplicate);
ALIAS (set_tech_DES_ES,set_tech_DES_fromES), (set_tech_DES_ES,set_tech_DES_toES);
ALIAS (set_tech_DES_CLS,set_tech_DES_fromCLS), (set_tech_DES_CLS,set_tech_DES_toCLS);

set set_ii_resauction(set_ii,set_pss);
set_ii_resauction(set_ii,set_pss)=NO;

***-----------------------------------------------------------------------------
***Actors
***-----------------------------------------------------------------------------
set set_side_opt_orga(set_side);
set_side_opt_orga(set_side)=NO;

set set_side_opt_cust(set_side);
set_side_opt_cust(set_side)=NO

***-----------------------------------------------------------------------------
***Prosumstorer
***-----------------------------------------------------------------------------
ALIAS (set_pss,set_toPss),(set_pss,set_fromPss),(set_fromPss,set_fromPss2);

set set_pss_opt(set_pss);
set_pss_opt(set_pss)=NO;

set set_pssOH(set_side,set_pss);
set_pssOH(set_side,set_pss)=NO;

set set_pssSector(set_sector,set_pss);
set_pssSector(set_sector,set_pss)=NO;

set set_pssOHSector(set_sector,set_side,set_pss);
set_pssOHSector(set_sector,set_side,set_pss)=NO;

set set_pss_opt_cust(set_pss);
set_pss_opt_cust(set_pss)=NO;

set set_pss_opt_orga(set_pss);
set_pss_opt_orga(set_pss)=NO;

***-----------------------------------------------------------------------------
***EnergieLinks
***-----------------------------------------------------------------------------
SET set_energyLink(set_sector,set_fromPss,set_toPss);
set_energyLink(set_sector,set_fromPss,set_toPss)=NO;

set set_energyLinkOH(set_side,set_sector,set_fromPss,set_toPss);
set_energyLinkOH(set_side,set_sector,set_fromPss,set_toPss)=NO;

set set_energyLink_opt(set_sector,set_fromPss,set_toPss);
set_energyLink_opt(set_sector,set_fromPss,set_toPss)=NO;

set set_energyLink_notRC_opt(set_sector,set_fromPss,set_toPss);
set_energyLink_notRC_opt(set_sector,set_fromPss,set_toPss)=NO;

set set_energyLink_fix(set_sector,set_fromPss,set_toPss);
set_energyLink_fix(set_sector,set_fromPss,set_toPss)=NO;

set set_energyLink_opt_cust(set_sector,set_fromPss,set_toPss);
set_energyLink_opt_cust(set_sector,set_fromPss,set_toPss) = NO;

set set_energyLink_opt_orga(set_sector,set_fromPss,set_toPss);
set_energyLink_opt_orga(set_sector,set_fromPss,set_toPss) = NO;

set set_energyLinkOH_opt(set_side,set_sector,set_fromPss,set_toPss);
set_energyLinkOH_opt(set_side,set_sector,set_fromPss,set_toPss) = No;

***-----------------------------------------------------------------------------
***Leistungsmessung
***-----------------------------------------------------------------------------
set set_power_opt(set_power);
set_power_opt(set_power) = NO;

set set_powerOH(set_side,set_power);
set_powerOH(set_side,set_power)=NO;

set set_power_opt_cust(set_power);
set_power_opt_cust(set_power) = NO;

set set_power_opt_orga(set_power);
set_power_opt_orga(set_power) = NO;

set set_powerSector(set_sector,set_power);
set_powerSector(set_sector,set_power) = NO;

***-----------------------------------------------------------------------------
***LeistungsLinks
***-----------------------------------------------------------------------------
SET set_PosNeg /Pos, Neg/;

SET set_powerLink(set_power,set_PosNeg,set_sector,set_fromPss,set_toPss);
set_powerLink(set_power,set_PosNeg,set_sector,set_fromPss,set_toPss)=NO;

SET set_pss_BM(set_pss);
set_pss_BM(set_pss)=NO;







