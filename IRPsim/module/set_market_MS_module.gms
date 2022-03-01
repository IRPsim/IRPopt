***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------

EQUATIONS EqMarket1(set_ii_0,set_sector,set_toPss) Reservemarkt-Blockgebotslänge;
EqMarket1(set_ii,set_sector,set_market_MS_P)$((ORD(set_ii) ge sca_numberStoring*sca_iterator+1)
                                               AND (ORD(set_ii) le (sca_numberStoring*sca_iterator+sca_numberOptimization))
                                               AND set_pss_opt(set_market_MS_P)
                                               AND (set_sector_NR(set_sector) OR set_sector_PR(set_sector)))..
         SUM(set_fromPss,
         var_energyFlow(set_ii,set_sector,set_fromPss,set_market_MS_P)$set_energyLink_opt(set_sector,set_fromPss,set_market_MS_P))
         =g=
         SUM(set_ii_duplicate$(mod(ord(set_ii_duplicate),par_H_pss_minon(set_market_MS_P)) eq  1  AND ORD(set_ii_duplicate) le ORD(set_ii)
                                 AND ORD(set_ii_duplicate) > ORD(set_ii)-par_H_pss_minon(set_market_MS_P)),
         SUM(set_toPss,
         var_energyFlow(set_ii_duplicate,set_sector,set_market_MS_P,set_toPss)$set_energyLink_opt(set_sector,set_market_MS_P,set_toPss)));

EQUATIONS EqMarket2(set_ii_0,set_sector,set_fromPss,set_toPss) Reservemarkt-Mindestrestriktion;
EqMarket2(set_ii,set_sector,set_market_MS_P,set_market_MS_R)$(mod(ord(set_ii),par_H_pss_minon(set_market_MS_P)) eq  1 AND set_t(set_ii)
         AND set_energyLink_opt(set_sector,set_market_MS_P,set_market_MS_R) AND set_pss_opt(set_market_MS_R) AND (set_sector_NR(set_sector) OR set_sector_PR(set_sector)))..
         var_energyFlow(set_ii,set_sector,set_market_MS_P,set_market_MS_R)
         =g=
         par_P_pss_min(set_ii,set_sector,set_market_MS_R)*sca_delta_ii*var_S_pss(set_ii,set_market_MS_R);

EQUATIONS EqMarket3(set_ii_0,set_sector,set_fromPss,set_toPss) Reservemarkt-Maximalrestriktion;
EqMarket3(set_ii,set_sector,set_market_MS_P,set_market_MS_R)$(mod(ord(set_ii),par_H_pss_minon(set_market_MS_P)) eq  1 AND set_t(set_ii)
         AND set_energyLink_opt(set_sector,set_market_MS_P,set_market_MS_R) AND set_pss_opt(set_market_MS_R) AND (set_sector_NR(set_sector) OR set_sector_PR(set_sector)) )..
         var_energyFlow(set_ii,set_sector,set_market_MS_P,set_market_MS_R)
         =l=
         par_P_pss_max(set_ii,set_sector,set_market_MS_R)*sca_delta_ii*var_S_pss(set_ii,set_market_MS_R);

EQUATIONS EqMarket4(set_ii_0) Reservemarkt-Symmetrisches Gebot;
EqMarket4(set_ii)$(mod(ord(set_ii),par_H_pss_minon('PRPool')) eq  1 AND set_t(set_ii)
         AND set_energyLink_opt('NR','PRPool','NPRMarket') AND set_energyLink_opt('PR','PRPool','PPRMarket') AND sca_X_MS_pri_sim=1) ..
         var_energyFlow(set_ii,'NR','PRPool','NPRMarket')
         =e=
         var_energyFlow(set_ii,'PR','PRPool','PPRMarket')

EQUATIONS EqMarket5(set_ii_0,set_sector,set_fromPss,set_toPss) Reservemarkt-Mindestrestriktion;
EqMarket5(set_ii,set_sector,'FXPool',set_market_MS_R)$(mod(ord(set_ii),par_H_pss_minon('FXPool')) eq  1 AND set_t(set_ii)
         AND set_energyLink_opt(set_sector,'FXPool',set_market_MS_R) AND set_pss_opt(set_market_MS_R) AND (set_sector_NR(set_sector) OR set_sector_PR(set_sector)))..
         var_energyFlow(set_ii,set_sector,'FXPool',set_market_MS_R)
         =g=
         par_P_pss_min(set_ii,set_sector,set_market_MS_R)*sca_delta_ii;

MODEL mod_market_MS_orga /EqMarket1,EqMarket2,EqMarket3,EqMarket4,EqMarket5/;
