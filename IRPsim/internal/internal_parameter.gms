SCALAR sca_exp Eulersche Zahl /2.718281828/
SCALAR sca_ECU Elektrochemische Einheit /1/
SCALAR sca_ECU_NAOH Eulersche Zahl /0.9/
SCALAR sca_ECU_H2 Eulersche Zahl /33/

PARAMETER par_Last_Day_of_Month(set_jj)  /Januar=31, Februar=59, Maerz=90,
                                         April=120, Mai=151, Juni=181,
                                         Juli=212, August=243, September=273,
                                         Oktober=304, November=334, Dezember=365/;

PARAMETER Days_in_Month(set_jj) /Januar=31, Februar=28, Maerz=31,
                        April=30, Mai=31, Juni=30,
                        Juli=31, August=31, September=30,
                        Oktober=31, November=30, Dezember=31/;

PARAMETER par_Prosumstorer(set_ii,set_sector,set_pss);
par_Prosumstorer(set_ii,set_sector,set_pss)=0;


PARAMETER par_ABX(set_side_orga);
par_ABX('SMS')=1.5;

PARAMETER par_X_powerLink_lowerbound_forecast(set_jj,set_power);
par_X_powerLink_lowerbound_forecast(set_jj,set_power) =0;

PARAMETER par_cashFlow_timestep_sum(set_ii_0,set_sector,set_fromSide,set_toSide);
par_cashFlow_timestep_sum(set_ii_0,set_sector,set_fromSide,set_toSide)=0;

PARAMETER par_cashFlow_timestep_sum_reference(set_ii_0,set_sector,set_fromSide,set_toSide);
par_cashFlow_timestep_sum_reference(set_ii_0,set_sector,set_fromSide,set_toSide)=0;

PARAMETER par_cashFlow_year_sum(set_sector,set_fromSide,set_toSide);
par_cashFlow_year_sum(set_sector,set_fromSide,set_toSide)=0;

PARAMETER par_NPV_sector_timestep(set_ii_0,set_sector,set_side);
par_NPV_sector_timestep(set_ii_0,set_sector,set_side)=0;

PARAMETER par_NPV_sector_timestep_reference(set_ii_0,set_sector,set_side);
par_NPV_sector_timestep_reference(set_ii_0,set_sector,set_side)=0;

PARAMETER par_NPV_timestep(set_ii_0,set_side);
par_NPV_timestep(set_ii_0,set_side)=0;

PARAMETER par_NPV_sector_year(set_sector,set_side);
par_NPV_sector_year(set_sector,set_side)=0;

PARAMETER par_NPV_year(set_side);
par_NPV_year(set_side)=0;

PARAMETER par_NPV_timestep_sector_orga(set_ii_0,set_sector);
par_NPV_timestep_sector_orga(set_ii_0,set_sector)=0;

PARAMETER par_NPV_timestep_orga(set_ii_0);
par_NPV_timestep_orga(set_ii_0)=0;

Scalar sca_NPV_year_orga;
sca_NPV_year_orga=0;

PARAMETER par_NPV_timestep_sector_cust(set_ii_0,set_sector);
par_NPV_timestep_sector_cust(set_ii_0,set_sector)=0;

PARAMETER par_NPV_timestep_cust(set_ii_0);
par_NPV_timestep_cust(set_ii_0)=0;

Scalar sca_NPV_year_cust;
sca_NPV_year_cust=0;

PARAMETER par_DF_powerLink(set_power);
par_DF_powerLink(set_power)=0;

PARAMETER par_X_BM_indirectselfcons(set_pss);
par_X_BM_indirectselfcons(set_pss)=0;

PARAMETER par_energyFlow_reference(set_ii,set_sector,set_fromPss,set_toPss);

PARAMETER par_X_BM_NPV(set_pss);

SCALAR sca_X_custmodel;
sca_X_custmodel=0;

SCALAR sca_X_orgamodel;
sca_X_orgamodel=0;

Parameter par_O_sector_timestep(set_ii_0,set_sector,set_side);
par_O_sector_timestep(set_ii_0,set_sector,set_side)=0;
Parameter par_I_sector_timestep(set_ii_0,set_sector,set_side);
par_I_sector_timestep(set_ii_0,set_sector,set_side)=0;
