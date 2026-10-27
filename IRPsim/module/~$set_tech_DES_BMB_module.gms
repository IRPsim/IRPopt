***-----------------------------------------------------------------------------
*** Biomasseboiler (Pelletkessel) mit lastabhaengiger Effizienzkurve nach
*** Carlon et al. (2015):
***     eta(beta) = eta_nom * (1 - exp(-K * beta)),   beta = Q_out/(Q_N*son) in [0,1]
***
*** LINEARISIERUNG:
***   - exp() wird NUR in den PARAMETER-Zuweisungen ausgewertet; alle
***     EQUATIONS sind linear.
***   - Der Brennstoffbedarf f(q) ist in q konvex, die Chorden-Approximation
***     ueberschaetzt leicht (konservativ) und die Segmente fuellen im
***     Optimum automatisch in richtiger Reihenfolge – keine zusatzlichen
***     binfaelligen Variablen, nur var_S_pss.
***   - Der Grenzwert f(beta->0) = Q_N*delta/(eta_nom*K) entspricht dem
***     Zünd-/Leerlaufbrennstoff und wird pro Betriebszeitraum (var_S_pss)
***     gebucht.
***   - Genauigkeit: Anzahl der Stuetzstellen ueber set_seg_DES_BMB erhoehebbar.
***-----------------------------------------------------------------------------

SET set_seg_DES_BMB(*) Lastsegmente der linearisierten Effizienzkurve /1*10/;
ALIAS (set_seg_DES_BMB, j_bmb);

PARAMETER par_beta_DES_BMB_j(set_seg_DES_BMB)                  Stuetzpunkt Lastfaktor
          par_q_DES_BMB_seg(set_tech_DES_BMB,set_seg_DES_BMB)  Segmentbreite [MWh]
          par_f_DES_BMB_stuetz(set_tech_DES_BMB,set_seg_DES_BMB) Brennstoff am Stuetzpunkt [MWh]
          par_m_DES_BMB(set_tech_DES_BMB,set_seg_DES_BMB)      marginale Brennstoffmenge pro Segment
          par_fuel_DES_BMB_0(set_tech_DES_BMB)                 Zuendbrennstoff pro Zeitschritt [MWh];

*Stuetzpunkte gleichmaessig von 0 bis 1
par_beta_DES_BMB_j(j_bmb) = ord(j_bmb)/card(set_seg_DES_BMB);

*Segmentbreiten (nur fuer Technologien mit Leistung > 0, sonst Division durch 0 spaeter)
par_q_DES_BMB_seg(set_tech_DES_BMB,j_bmb)$(par_Q_DES_BMB_max(set_tech_DES_BMB) > 0)
    = par_Q_DES_BMB_max(set_tech_DES_BMB) * sca_delta_ii
      * (par_beta_DES_BMB_j(j_bmb) - par_beta_DES_BMB_j(j_bmb-1));

*Zuend-/Leerlaufbrennstoff: Grenzwert f(beta->0) = Q*dt/(eta_nom*K)
par_fuel_DES_BMB_0(set_tech_DES_BMB)$(par_Q_DES_BMB_max(set_tech_DES_BMB) > 0)
    = par_Q_DES_BMB_max(set_tech_DES_BMB) * sca_delta_ii
      / (par_Eta_DES_BMB_nom(set_tech_DES_BMB) * par_K_DES_BMB(set_tech_DES_BMB));

*Brennstoffbedarf an den Stuetzpunkten
par_f_DES_BMB_stuetz(set_tech_DES_BMB,j_bmb)$(par_Q_DES_BMB_max(set_tech_DES_BMB) > 0)
    = par_Q_DES_BMB_max(set_tech_DES_BMB) * sca_delta_ii * par_beta_DES_BMB_j(j_bmb)
      / (par_Eta_DES_BMB_nom(set_tech_DES_BMB)
         * (1 - exp(-par_K_DES_BMB(set_tech_DES_BMB) * par_beta_DES_BMB_j(j_bmb))));

*Steigungen der Chorden, ohne loop
par_m_DES_BMB(set_tech_DES_BMB,j_bmb)$(par_Q_DES_BMB_max(set_tech_DES_BMB) > 0)
    = ( par_f_DES_BMB_stuetz(set_tech_DES_BMB,j_bmb)
        - par_fuel_DES_BMB_0(set_tech_DES_BMB)$(ord(j_bmb) = 1)
        - par_f_DES_BMB_stuetz(set_tech_DES_BMB,j_bmb-1)$(ord(j_bmb) > 1) )
      / par_q_DES_BMB_seg(set_tech_DES_BMB,j_bmb);

POSITIVE VARIABLE var_u_DES_BMB(set_t,set_tech_DES_BMB,set_seg_DES_BMB) thermische Leistung im Lastsegment [MWh];

***-----------------------------------------------------------------------------
***Gleichungen
***-----------------------------------------------------------------------------
EQUATIONS EqBMB1(set_ii,set_sector,set_pss) Waermeabgabe = Summe der Segmentanteile;
EqBMB1(set_t,set_sector,set_tech_DES_BMB)$(set_pss_opt(set_tech_DES_BMB) AND par_X_pss_model(set_tech_DES_BMB)=1 AND set_secondaryenergylink(set_sector,set_tech_DES_BMB)) ..
                 sum(set_toPss,var_energyFlow(set_t,set_sector,set_tech_DES_BMB,set_toPss)$set_energyLink_opt(set_sector,set_tech_DES_BMB,set_toPss))
                 =e=
                 sum(set_seg_DES_BMB,var_u_DES_BMB(set_t,set_tech_DES_BMB,set_seg_DES_BMB));

EQUATIONS EqBMB2(set_ii,set_sector,set_pss) Biomasseeinsatz stueckweise linear (Zuendanteil + Segmente);
EqBMB2(set_t,set_sector,set_tech_DES_BMB)$(set_pss_opt(set_tech_DES_BMB) AND par_X_pss_model(set_tech_DES_BMB)=1 AND set_secondaryenergylink(set_sector,set_tech_DES_BMB)) ..
                 sum(set_fromPss,var_energyFlow(set_t,'B',set_fromPss,set_tech_DES_BMB)$set_energyLink_opt('B',set_fromPss,set_tech_DES_BMB))
                 =g=
                 par_fuel_DES_BMB_0(set_tech_DES_BMB)*var_S_pss(set_t,set_tech_DES_BMB)
                 + sum(set_seg_DES_BMB,par_m_DES_BMB(set_tech_DES_BMB,set_seg_DES_BMB)*var_u_DES_BMB(set_t,set_tech_DES_BMB,set_seg_DES_BMB));
            
EQUATIONS EqBMB3(set_ii,set_tech_DES_BMB,set_seg_DES_BMB) Segmentgrenzen (nur bei Betrieb);
EqBMB3(set_t,set_tech_DES_BMB,set_seg_DES_BMB)$(set_pss_opt(set_tech_DES_BMB) AND par_X_pss_model(set_tech_DES_BMB) = 1) ..
                var_u_DES_BMB(set_t,set_tech_DES_BMB,set_seg_DES_BMB)
                =l=
        par_q_DES_BMB_seg(set_tech_DES_BMB,set_seg_DES_BMB) * var_S_pss(set_t,set_tech_DES_BMB);

EQUATIONS EqBMB4(set_ii,set_sector,set_pss) Restriktion maximale Kapazitaet Biomasseboiler;
EqBMB4(set_t,set_sector,set_tech_DES_BMB)$(set_pss_opt(set_tech_DES_BMB) AND par_X_pss_model(set_tech_DES_BMB)=1 AND set_secondaryenergylink(set_sector,set_tech_DES_BMB)) ..
                 sum(set_toPss,var_energyFlow(set_t,set_sector,set_tech_DES_BMB,set_toPss)$set_energyLink_opt(set_sector,set_tech_DES_BMB,set_toPss))
                 =l=
                 par_Q_DES_BMB_max(set_tech_DES_BMB)*par_Q_DES_BMB_utilpercent(set_t,set_tech_DES_BMB)*sca_delta_ii;

EQUATIONS EqBMB5(set_ii,set_sector,set_pss) Restriktion minimale Leistung Biomasseboiler;
EqBMB5(set_t,set_sector,set_tech_DES_BMB)$(set_pss_opt(set_tech_DES_BMB) AND par_X_pss_model(set_tech_DES_BMB)=1 AND set_secondaryenergylink(set_sector,set_tech_DES_BMB) AND par_Q_DES_BMB_min(set_tech_DES_BMB) > 0) ..
                 sum(set_toPss,var_energyFlow(set_t,set_sector,set_tech_DES_BMB,set_toPss)$set_energyLink_opt(set_sector,set_tech_DES_BMB,set_toPss))
                 =g=
                 par_Q_DES_BMB_min(set_tech_DES_BMB)*sca_delta_ii*var_S_pss(set_t,set_tech_DES_BMB);

MODEL mod_tech_DES_BMB_orga / EqBMB1, EqBMB2, EqBMB3, EqBMB4, EqBMB5 /;
MODEL mod_tech_DES_BMB_cust / EqBMB1, EqBMB2, EqBMB3, EqBMB4, EqBMB5 /;