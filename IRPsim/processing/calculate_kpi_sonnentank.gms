par_SOC_DES_ES_Sonnentank_cust(set_ii,set_tech_DES_ES)$(par_SOC_DES_ES_Sonnentank_cust(set_ii,set_tech_DES_ES)=0)
=eps;

par_SOC_DES_ES_Sonnentank_orga(set_ii,set_tech_DES_ES)$(par_SOC_DES_ES_Sonnentank_orga(set_ii,set_tech_DES_ES)=0)
=eps;


$ontext
*PV Eigenverbrauch auf Kundenseite
*Einzeln
PARAMETER erg_PV_Sonnentank_cust_sc(set_tech_DES_PV);
erg_PV_Sonnentank_cust_sc(set_tech_DES_PV)$(par_X_BM_Sonnentank_DES_PV(set_tech_DES_PV) eq 1 and sum((set_toPss,set_ii),var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss)) ne 0)
=sum((set_toPss,set_ii),var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$(par_X_BM_indirectselfcons(set_toPss)<>1 and sum(set_side_cust$(set_pssOH(set_side_cust,set_toPss) and set_pssOH(set_side_cust,set_tech_DES_PV)),1)>0))
/ sum((set_toPss,set_ii),var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_toPss)$set_energyLink_opt('E',set_tech_DES_PV,set_toPss));

PARAMETER erg_GRID_Sonnentank_cust_revaut(set_load_DS_E);
erg_GRID_Sonnentank_cust_revaut(set_load_DS_E)$(par_X_BM_Sonnentank_DS_E(set_load_DS_E) eq 1 and sum((set_fromPss,set_ii),var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E)) ne 0)
=sum((set_grid_NS_E,set_ii),var_energyFlow.l(set_ii,'E',set_grid_NS_E,set_load_DS_E)$set_energyLink_opt('E',set_grid_NS_E,set_load_DS_E))
/ sum((set_fromPss,set_ii),var_energyFlow.l(set_ii,'E',set_fromPss,set_load_DS_E)$set_energyLink_opt('E',set_fromPss,set_load_DS_E));
$offtext


PARAMETER erg_IuO_Sonnentank_cust_addit_fav(set_side_cust);
erg_IuO_Sonnentank_cust_addit_fav(set_side_cust)
=sum((set_ii,set_tech_DES_PV,set_tech_DES_ES),var_energyFlow.l(set_ii,'E',set_tech_DES_PV,set_tech_DES_ES)$(set_pssOH(set_side_cust,set_tech_DES_ES) and set_pssOH(set_side_cust,set_tech_DES_PV)))*21.686;

$ontext
PARAMETER erg_IuO_Sonnentank_cust_addit_unfav(set_side_cust);
erg_IuO_Sonnentank_cust_addit_unfav(set_side_cust)
=

PARAMETER erg_IuO_Sonnentank_cust_addit_requ(set_side_cust);
erg_IuO_Sonnentank_cust_addit_requ(set_side_cust)
$offtext
*Sonnentank absolute Werte
*Sonnentank auf Kundenseiten
*Einzeln
PARAMETER erg_SOC_Sonnentank_cust_ind_abs(set_ii,set_tech_DES_ES);
erg_SOC_Sonnentank_cust_ind_abs(set_ii,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES) eq 1)
=par_SOC_DES_ES_Sonnentank_cust(set_ii,set_tech_DES_ES);
erg_SOC_Sonnentank_cust_ind_abs(set_ii,set_tech_DES_ES)$(erg_SOC_Sonnentank_cust_ind_abs(set_ii,set_tech_DES_ES)=0)
=eps;

PARAMETER erg_SOC_Sonnentank_cust_ind_abs_max(set_tech_DES_ES);
erg_SOC_Sonnentank_cust_ind_abs_max(set_tech_DES_ES) = smax(set_ii,erg_SOC_Sonnentank_cust_ind_abs(set_ii,set_tech_DES_ES));

PARAMETER erg_SOC_Sonnentank_cust_ind_abs_avg(set_tech_DES_ES);
erg_SOC_Sonnentank_cust_ind_abs_avg(set_tech_DES_ES)$(card(set_ii) ne 0) = sum(set_ii,erg_SOC_Sonnentank_cust_ind_abs(set_ii,set_tech_DES_ES))/card(set_ii);

*Sonnentank auf Kundenseite
*Aufsummiert
PARAMETER erg_SOC_Sonnentank_cust_nei_abs(set_ii);
erg_SOC_Sonnentank_cust_nei_abs(set_ii)
=sum(set_tech_DES_ES,erg_SOC_Sonnentank_cust_ind_abs(set_ii,set_tech_DES_ES));
erg_SOC_Sonnentank_cust_nei_abs(set_ii)$(erg_SOC_Sonnentank_cust_nei_abs(set_ii)=0)
=eps;

PARAMETER erg_SOC_Sonnentank_cust_nei_abs_max;
erg_SOC_Sonnentank_cust_nei_abs_max = smax(set_ii,erg_SOC_Sonnentank_cust_nei_abs(set_ii));

PARAMETER erg_SOC_Sonnentank_cust_nei_abs_avg;
erg_SOC_Sonnentank_cust_nei_abs_avg$(card(set_ii) ne 0) = sum(set_ii,erg_SOC_Sonnentank_cust_nei_abs(set_ii))/card(set_ii);

*Sonnentank auf Unternehmensseite
*Einzeln
PARAMETER erg_SOC_Sonnentank_orga_ind_abs(set_ii,set_tech_DES_ES);
erg_SOC_Sonnentank_orga_ind_abs(set_ii,set_tech_DES_ES)
=par_SOC_DES_ES_Sonnentank_orga(set_ii,set_tech_DES_ES);
erg_SOC_Sonnentank_orga_ind_abs(set_ii,set_tech_DES_ES)$(erg_SOC_Sonnentank_orga_ind_abs(set_ii,set_tech_DES_ES)=0)
=eps;

PARAMETER erg_SOC_Sonnentank_orga_ind_abs_max(set_tech_DES_ES);
erg_SOC_Sonnentank_orga_ind_abs_max(set_tech_DES_ES) = smax(set_ii,erg_SOC_Sonnentank_orga_ind_abs(set_ii,set_tech_DES_ES));

PARAMETER erg_SOC_Sonnentank_orga_ind_abs_avg(set_tech_DES_ES);
erg_SOC_Sonnentank_orga_ind_abs_avg(set_tech_DES_ES)$(card(set_ii) ne 0) = sum(set_ii,erg_SOC_Sonnentank_orga_ind_abs(set_ii,set_tech_DES_ES))/card(set_ii);


*Sonnentank auf Unternehmensseite
*Aufsummiert
PARAMETER erg_SOC_Sonnentank_orga_nei_abs(set_ii);
erg_SOC_Sonnentank_orga_nei_abs(set_ii)
=sum(set_tech_DES_ES,erg_SOC_Sonnentank_orga_ind_abs(set_ii,set_tech_DES_ES));
erg_SOC_Sonnentank_orga_nei_abs(set_ii)$(erg_SOC_Sonnentank_orga_nei_abs(set_ii)=0)
=eps;

PARAMETER erg_SOC_Sonnentank_orga_nei_abs_max;
erg_SOC_Sonnentank_orga_nei_abs_max = smax(set_ii,erg_SOC_Sonnentank_orga_nei_abs(set_ii));

PARAMETER erg_SOC_Sonnentank_orga_nei_abs_avg;
erg_SOC_Sonnentank_orga_nei_abs_avg$(card(set_ii) ne 0) = sum(set_ii,erg_SOC_Sonnentank_orga_nei_abs(set_ii))/card(set_ii);


*Sonnentank prozentuale Werte

*Sonnentank auf Kundenseite
*Einzeln
PARAMETER erg_SOC_Sonnentank_cust_ind_pct(set_ii,set_tech_DES_ES);
erg_SOC_Sonnentank_cust_ind_pct(set_ii,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES) eq 1 and par_SOC_DES_ES_cap(set_tech_DES_ES) ne 0)
=erg_SOC_Sonnentank_cust_ind_abs(set_ii,set_tech_DES_ES)/par_SOC_DES_ES_cap(set_tech_DES_ES);
erg_SOC_Sonnentank_cust_ind_pct(set_ii,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES) eq 1 and par_SOC_DES_ES_cap(set_tech_DES_ES) eq 0)
=1;
erg_SOC_Sonnentank_cust_ind_pct(set_ii,set_tech_DES_ES)$(erg_SOC_Sonnentank_cust_ind_pct(set_ii,set_tech_DES_ES)=0)
=eps;


PARAMETER erg_SOC_Sonnentank_cust_ind_pct_max(set_tech_DES_ES);
erg_SOC_Sonnentank_cust_ind_pct_max(set_tech_DES_ES) = smax(set_ii,erg_SOC_Sonnentank_cust_ind_pct(set_ii,set_tech_DES_ES));

PARAMETER erg_SOC_Sonnentank_cust_ind_pct_avg(set_tech_DES_ES);
erg_SOC_Sonnentank_cust_ind_pct_avg(set_tech_DES_ES)$(card(set_ii) ne 0) = sum(set_ii,erg_SOC_Sonnentank_cust_ind_pct(set_ii,set_tech_DES_ES))/card(set_ii);

*Sonnentank auf Kundenseite
*Aufsummiert
PARAMETER erg_SOC_Sonnentank_cust_nei_pct(set_ii);
erg_SOC_Sonnentank_cust_nei_pct(set_ii)$(sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES)) ne 0)
=erg_SOC_Sonnentank_cust_nei_abs(set_ii)/sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES));
erg_SOC_Sonnentank_cust_nei_pct(set_ii)$(sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES)) eq 0)
=1;
erg_SOC_Sonnentank_cust_nei_pct(set_ii)$(erg_SOC_Sonnentank_cust_nei_pct(set_ii)=0)
=eps;

PARAMETER erg_SOC_Sonnentank_cust_nei_pct_max;
erg_SOC_Sonnentank_cust_nei_pct_max = smax(set_ii,erg_SOC_Sonnentank_cust_nei_pct(set_ii));

PARAMETER erg_SOC_Sonnentank_cust_nei_pct_avg;
erg_SOC_Sonnentank_cust_nei_pct_avg$(card(set_ii) ne 0) = sum(set_ii,erg_SOC_Sonnentank_cust_nei_pct(set_ii))/card(set_ii);

*Sonnentank auf Unternehmensseite
*Einzeln
PARAMETER erg_SOC_Sonnentank_orga_ind_pct(set_ii,set_tech_DES_ES);
erg_SOC_Sonnentank_orga_ind_pct(set_ii,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES) eq 1 and par_SOC_DES_ES_cap(set_tech_DES_ES) ne 0)
=par_SOC_DES_ES_Sonnentank_orga(set_ii,set_tech_DES_ES)/par_SOC_DES_ES_cap(set_tech_DES_ES);
erg_SOC_Sonnentank_orga_ind_pct(set_ii,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES) eq 1 and par_SOC_DES_ES_cap(set_tech_DES_ES) eq 0)
=1;
erg_SOC_Sonnentank_orga_ind_pct(set_ii,set_tech_DES_ES)$(erg_SOC_Sonnentank_orga_ind_pct(set_ii,set_tech_DES_ES)=0)
=eps;

PARAMETER erg_SOC_Sonnentank_orga_ind_pct_max(set_tech_DES_ES);
erg_SOC_Sonnentank_orga_ind_pct_max(set_tech_DES_ES) = smax(set_ii,erg_SOC_Sonnentank_orga_ind_pct(set_ii,set_tech_DES_ES));

PARAMETER erg_SOC_Sonnentank_orga_ind_pct_avg(set_tech_DES_ES);
erg_SOC_Sonnentank_orga_ind_pct_avg(set_tech_DES_ES)$(card(set_ii) ne 0) = sum(set_ii,erg_SOC_Sonnentank_orga_ind_pct(set_ii,set_tech_DES_ES))/card(set_ii);

*Sonnentank auf Organisationsseite
*Aufsummiert
PARAMETER erg_SOC_Sonnentank_orga_nei_pct(set_ii);
erg_SOC_Sonnentank_orga_nei_pct(set_ii)$(sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES)) ne 0)
=erg_SOC_Sonnentank_orga_nei_abs(set_ii)/sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES));
erg_SOC_Sonnentank_orga_nei_pct(set_ii)$(sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES)) eq 0)
=1;
erg_SOC_Sonnentank_orga_nei_pct(set_ii)$(erg_SOC_Sonnentank_orga_nei_pct(set_ii)=0)
=eps;

PARAMETER erg_SOC_Sonnentank_orga_nei_pct_max;
erg_SOC_Sonnentank_orga_nei_pct_max = smax(set_ii,erg_SOC_Sonnentank_orga_nei_pct(set_ii));

PARAMETER erg_SOC_Sonnentank_orga_nei_pct_avg;
erg_SOC_Sonnentank_orga_nei_pct_avg$(card(set_ii) ne 0) = sum(set_ii,erg_SOC_Sonnentank_orga_nei_pct(set_ii))/card(set_ii);



PARAMETER erg_NPV_Sonnentank_cust_nei_abs(set_ii);
erg_NPV_Sonnentank_cust_nei_abs(set_ii)$(card(set_side_cust) ne 0)=sum(set_side_cust,par_NPV_timestep(set_ii,set_side_cust))/card(set_side_cust);

PARAMETER erg_NPV_Sonnentank_cust_nei_avg;
erg_NPV_Sonnentank_cust_nei_avg$(card(set_side_cust) ne 0)=sum((set_ii,set_side_cust),par_NPV_timestep(set_ii,set_side_cust))/card(set_side_cust);

PARAMETER erg_NPV_Sonnentank_orga_nei_avg(set_side_orga);
erg_NPV_Sonnentank_orga_nei_avg(set_side_orga)$(card(set_side_cust) ne 0)=sum((set_ii,set_side_cust),par_NPV_timestep(set_ii,set_side_orga))/card(set_side_cust);

*Sonnentank auf Kundenseite
*Einzeln
PARAMETER erg_SOC_Sonnentank_cust_ind_pct(set_ii,set_tech_DES_ES);
erg_SOC_Sonnentank_cust_ind_pct(set_ii,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES) eq 1 and par_SOC_DES_ES_cap(set_tech_DES_ES) ne 0)
=erg_SOC_Sonnentank_cust_ind_abs(set_ii,set_tech_DES_ES)/par_SOC_DES_ES_cap(set_tech_DES_ES);
erg_SOC_Sonnentank_cust_ind_pct(set_ii,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES) eq 1 and par_SOC_DES_ES_cap(set_tech_DES_ES) eq 0)
=1;
erg_SOC_Sonnentank_cust_ind_pct(set_ii,set_tech_DES_ES)$(erg_SOC_Sonnentank_cust_ind_pct(set_ii,set_tech_DES_ES)=0)
=eps;


PARAMETER erg_SOC_Sonnentank_cust_ind_pct_max(set_tech_DES_ES);
erg_SOC_Sonnentank_cust_ind_pct_max(set_tech_DES_ES) = smax(set_ii,erg_SOC_Sonnentank_cust_ind_pct(set_ii,set_tech_DES_ES));

PARAMETER erg_SOC_Sonnentank_cust_ind_pct_avg(set_tech_DES_ES);
erg_SOC_Sonnentank_cust_ind_pct_avg(set_tech_DES_ES)$(card(set_ii) ne 0) = sum(set_ii,erg_SOC_Sonnentank_cust_ind_pct(set_ii,set_tech_DES_ES))/card(set_ii);

*Sonnentank auf Kundenseite
*Aufsummiert
PARAMETER erg_SOC_Sonnentank_cust_nei_pct(set_ii);
erg_SOC_Sonnentank_cust_nei_pct(set_ii)$(sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES)) ne 0)
=erg_SOC_Sonnentank_cust_nei_abs(set_ii)/sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES));
erg_SOC_Sonnentank_cust_nei_pct(set_ii)$(sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES)) eq 0)
=1;
erg_SOC_Sonnentank_cust_nei_pct(set_ii)$(erg_SOC_Sonnentank_cust_nei_pct(set_ii)=0)
=eps;

PARAMETER erg_SOC_Sonnentank_cust_nei_pct_max;
erg_SOC_Sonnentank_cust_nei_pct_max = smax(set_ii,erg_SOC_Sonnentank_cust_nei_pct(set_ii));

PARAMETER erg_SOC_Sonnentank_cust_nei_pct_avg;
erg_SOC_Sonnentank_cust_nei_pct_avg$(card(set_ii) ne 0) = sum(set_ii,erg_SOC_Sonnentank_cust_nei_pct(set_ii))/card(set_ii);

*Sonnentank auf Organisationsseite
*Einzeln
PARAMETER erg_SOC_Sonnentank_orga_ind_pct(set_ii,set_tech_DES_ES);
erg_SOC_Sonnentank_orga_ind_pct(set_ii,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES) eq 1 and par_SOC_DES_ES_cap(set_tech_DES_ES) ne 0)
=par_SOC_DES_ES_Sonnentank_orga(set_ii,set_tech_DES_ES)/par_SOC_DES_ES_cap(set_tech_DES_ES);
erg_SOC_Sonnentank_orga_ind_pct(set_ii,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES) eq 1 and par_SOC_DES_ES_cap(set_tech_DES_ES) eq 0)
=1;
erg_SOC_Sonnentank_orga_ind_pct(set_ii,set_tech_DES_ES)$(erg_SOC_Sonnentank_orga_ind_pct(set_ii,set_tech_DES_ES)=0)
=eps;

PARAMETER erg_SOC_Sonnentank_orga_ind_pct_max(set_tech_DES_ES);
erg_SOC_Sonnentank_orga_ind_pct_max(set_tech_DES_ES) = smax(set_ii,erg_SOC_Sonnentank_orga_ind_pct(set_ii,set_tech_DES_ES));

PARAMETER erg_SOC_Sonnentank_orga_ind_pct_avg(set_tech_DES_ES);
erg_SOC_Sonnentank_orga_ind_pct_avg(set_tech_DES_ES)$(card(set_ii) ne 0) = sum(set_ii,erg_SOC_Sonnentank_orga_ind_pct(set_ii,set_tech_DES_ES))/card(set_ii);

*Sonnentank auf Organisationsseite
*Aufsummiert
PARAMETER erg_SOC_Sonnentank_orga_nei_pct(set_ii);
erg_SOC_Sonnentank_orga_nei_pct(set_ii)$(sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES)) ne 0)
=erg_SOC_Sonnentank_orga_nei_abs(set_ii)/sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES));
erg_SOC_Sonnentank_orga_nei_pct(set_ii)$(sum(set_tech_DES_ES,par_SOC_DES_ES_cap(set_tech_DES_ES)) eq 0)
=1;
erg_SOC_Sonnentank_orga_nei_pct(set_ii)$(erg_SOC_Sonnentank_orga_nei_pct(set_ii)=0)
=eps;

PARAMETER erg_SOC_Sonnentank_orga_nei_pct_max;
erg_SOC_Sonnentank_orga_nei_pct_max = smax(set_ii,erg_SOC_Sonnentank_orga_nei_pct(set_ii));

PARAMETER erg_SOC_Sonnentank_orga_nei_pct_avg;
erg_SOC_Sonnentank_orga_nei_pct_avg$(card(set_ii) ne 0) = sum(set_ii,erg_SOC_Sonnentank_orga_nei_pct(set_ii))/card(set_ii);



PARAMETER erg_NPV_Sonnentank_cust_nei_abs(set_ii);
erg_NPV_Sonnentank_cust_nei_abs(set_ii)$(card(set_side_cust) ne 0)=sum(set_side_cust,par_NPV_timestep(set_ii,set_side_cust))/card(set_side_cust);

PARAMETER erg_NPV_Sonnentank_cust_nei_avg;
erg_NPV_Sonnentank_cust_nei_avg$(card(set_side_cust) ne 0)=sum((set_ii,set_side_cust),par_NPV_timestep(set_ii,set_side_cust))/card(set_side_cust);

PARAMETER erg_NPV_Sonnentank_orga_nei_avg(set_side_orga);
erg_NPV_Sonnentank_orga_nei_avg(set_side_orga)$(card(set_side_cust) ne 0)=sum((set_ii,set_side_cust),par_NPV_timestep(set_ii,set_side_orga))/card(set_side_cust);


*Trading
*Spot
PARAMETER erg_NPV_Sonnentank_orga_spot_abs;
erg_NPV_Sonnentank_orga_spot_abs=
sum((set_ii),sum(set_tech_DES_ES,var_energyFlow.l(set_ii,'E',set_tech_DES_ES,'EGrid'))*par_energyLinkTarif(set_ii,'MS','SMS','E','EGrid','EMarket')
- sum(set_tech_DES_ES,var_energyFlow.l(set_ii,'E','EGrid',set_tech_DES_ES)*par_energyLinkTarif(set_ii,'SMS','MS','E','EMarket','EGrid')));

PARAMETER erg_NPV_Sonnentank_orga_spot_posres;
erg_NPV_Sonnentank_orga_spot_posres
=sum((set_ii,set_market_MS_P,set_market_MS_R),var_energyFlow.l(set_ii,'PR',set_market_MS_P,set_market_MS_R)*par_energyLinkTarif(set_ii,'MS','SMS','PR',set_market_MS_P,set_market_MS_R));


PARAMETER erg_NPV_Sonnentank_orga_spot_negres;
erg_NPV_Sonnentank_orga_spot_negres=
sum((set_ii,set_market_MS_P,set_market_MS_R),var_energyFlow.l(set_ii,'NR',set_market_MS_P,set_market_MS_R)*par_energyLinkTarif(set_ii,'MS','SMS','NR',set_market_MS_P,set_market_MS_R));
