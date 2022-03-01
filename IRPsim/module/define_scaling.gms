*-------------------------------------------------------------------------------
* Bestimme jährliches Kundengruppenwachstum
*-------------------------------------------------------------------------------
PARAMETER par_S_DS_a_growth(set_a_total,set_side_cust);
PARAMETER par_S_DS_a_total(set_a_total,set_side_cust);
PARAMETER test_y(set_a_total,set_side_cust);
par_S_DS_a_growth(set_a_total,set_side_cust)$(ord(set_a_total)=1)=par_S_DS(set_side_cust);
par_S_DS_a_total(set_a_total,set_side_cust)$(ord(set_a_total)=1)=par_S_DS(set_side_cust);


LOOP(set_a_total$(ord(set_a_total)>1 and ord(set_a_total) <= sca_a + 1),
       par_S_DS_a_growth(set_a_total,set_side_cust) = round(par_S_DS_a_total(set_a_total-1,set_side_cust) * par_S_DS_growth(set_side_cust) + par_S_DS_growth_absolute(set_a_total,set_side_cust));
       par_S_DS_a_total(set_a_total,set_side_cust) = par_S_DS_a_total(set_a_total-1,set_side_cust) + par_S_DS_a_growth(set_a_total,set_side_cust);
       par_S_DS(set_side_cust)=par_S_DS_a_total(set_a_total,set_side_cust);

*Negative Kundengruppengrößen verhindern
       par_S_DS(set_side_cust)$(par_S_DS(set_side_cust)<0)=0;

*Wachstumswerte begrenzen, wenn Kundengruppen gleich 0 oder kleiner 0 sind
       par_S_DS_a_growth(set_a_total,set_side_cust)$(par_S_DS_a_total(set_a_total-1,set_side_cust)>0 and par_S_DS_a_total(set_a_total,set_side_cust)<0)= par_S_DS_a_total(set_a_total-1,set_side_cust)*(-1);
       par_S_DS_a_growth(set_a_total,set_side_cust)$(par_S_DS_a_total(set_a_total-1,set_side_cust)<=0 and par_S_DS_a_total(set_a_total,set_side_cust)<0)=0;

);

*-------------------------------------------------------------------------------
* Skalierung und Normierung DS
*-------------------------------------------------------------------------------
PARAMETER par_L_DS_E_nom(set_load_DS_E);
PARAMETER par_L_DS_E_self_nom(set_load_DS_E);
PARAMETER par_L_DS_W_nom(set_load_DS_W);
PARAMETER par_L_DS_W_self_nom(set_load_DS_W);
PARAMETER par_L_DS_C_nom(set_load_DS_C);
PARAMETER par_L_DS_C_self_nom(set_load_DS_C);
PARAMETER par_L_DS_G_nom(set_load_DS_G);
PARAMETER par_L_DS_H_nom(set_load_DS_H);
PARAMETER par_L_DS_CL_nom(set_load_DS_CL);

par_L_DS_E_nom(set_load_DS_E)=sum(set_ii,par_L_DS_E(set_ii,set_load_DS_E));
par_L_DS_E_self_nom(set_load_DS_E)=sum(set_ii,par_L_DS_E_self(set_ii,set_load_DS_E));
par_L_DS_W_nom(set_load_DS_W) = sum(set_ii,par_L_DS_W(set_ii,set_load_DS_W));
par_L_DS_W_self_nom(set_load_DS_W)=sum(set_ii,par_L_DS_W_self(set_ii,set_load_DS_W));
par_L_DS_C_nom(set_load_DS_C) = sum(set_ii,par_L_DS_C(set_ii,set_load_DS_C));
par_L_DS_C_self_nom(set_load_DS_C)=sum(set_ii,par_L_DS_C_self(set_ii,set_load_DS_C));
par_L_DS_G_nom(set_load_DS_G) = sum(set_ii,par_L_DS_G(set_ii,set_load_DS_G));
par_L_DS_H_nom(set_load_DS_H) = sum(set_ii,par_L_DS_H(set_ii,set_load_DS_H));
par_L_DS_CL_nom(set_load_DS_CL) = sum(set_ii,par_L_DS_CL(set_ii,set_load_DS_CL));

Parameter par_S_DS_total(set_side);
par_S_DS_total(set_side) = 1;
par_S_DS_total(set_side_cust) = par_S_DS(set_side_cust);

par_L_DS_E(set_ii,set_load_DS_E)$(par_L_DS_E_nom(set_load_DS_E) ne 0) = par_L_DS_E(set_ii,set_load_DS_E) * par_L_DS_E_avg(set_load_DS_E) / par_L_DS_E_nom(set_load_DS_E) * sum(set_side$set_pssOH(set_side,set_load_DS_E),par_S_DS_total(set_side))**par_X_DS_E_scaling(set_load_DS_E);

par_L_DS_E_self(set_ii,set_load_DS_E)$(par_L_DS_E_self_nom(set_load_DS_E)  ne 0) = par_L_DS_E_self(set_ii,set_load_DS_E) * par_L_DS_E_avg(set_load_DS_E) / par_L_DS_E_self_nom(set_load_DS_E) *sum(set_side$set_pssOH(set_side,set_load_DS_E),par_S_DS_total(set_side))**par_X_DS_E_scaling(set_load_DS_E);

par_L_DS_W(set_ii,set_load_DS_W)$(par_L_DS_W_nom(set_load_DS_W) ne 0) = par_L_DS_W(set_ii,set_load_DS_W) * par_L_DS_W_avg(set_load_DS_W) / par_L_DS_W_nom(set_load_DS_W) * sum(set_side$set_pssOH(set_side,set_load_DS_W),par_S_DS_total(set_side))**par_X_DS_W_scaling(set_load_DS_W);

par_L_DS_C(set_ii,set_load_DS_C)$(par_L_DS_C_nom(set_load_DS_C) ne 0) = par_L_DS_C(set_ii,set_load_DS_C) * par_L_DS_C_avg(set_load_DS_C) / par_L_DS_C_nom(set_load_DS_C) * sum(set_side$set_pssOH(set_side,set_load_DS_C),par_S_DS_total(set_side))**par_X_DS_C_scaling(set_load_DS_C);

par_L_DS_W_self(set_ii,set_load_DS_W)$(par_L_DS_W_self_nom(set_load_DS_W)  ne 0) = par_L_DS_W_self(set_ii,set_load_DS_W) * par_L_DS_W_avg(set_load_DS_W) / par_L_DS_W_self_nom(set_load_DS_W) *sum(set_side$set_pssOH(set_side,set_load_DS_W),par_S_DS_total(set_side))**par_X_DS_W_scaling(set_load_DS_W);

par_L_DS_C_self(set_ii,set_load_DS_C)$(par_L_DS_C_self_nom(set_load_DS_C)  ne 0) = par_L_DS_C_self(set_ii,set_load_DS_C) * par_L_DS_C_avg(set_load_DS_C) / par_L_DS_C_self_nom(set_load_DS_C) *sum(set_side$set_pssOH(set_side,set_load_DS_C),par_S_DS_total(set_side))**par_X_DS_C_scaling(set_load_DS_C);

par_L_DS_G(set_ii,set_load_DS_G)$(par_L_DS_G_nom(set_load_DS_G) ne 0) = par_L_DS_G(set_ii,set_load_DS_G) * par_L_DS_G_avg(set_load_DS_G) / par_L_DS_G_nom(set_load_DS_G) * sum(set_side$set_pssOH(set_side,set_load_DS_G),par_S_DS_total(set_side))**par_X_DS_G_scaling(set_load_DS_G);

par_L_DS_H(set_ii,set_load_DS_H)$(par_L_DS_H_nom(set_load_DS_H) ne 0) = par_L_DS_H(set_ii,set_load_DS_H) * par_L_DS_H_avg(set_load_DS_H) / par_L_DS_H_nom(set_load_DS_H) * sum(set_side$set_pssOH(set_side,set_load_DS_H),par_S_DS_total(set_side))**par_X_DS_H_scaling(set_load_DS_H);

par_L_DS_CL(set_ii,set_load_DS_CL)$(par_L_DS_CL_nom(set_load_DS_CL) ne 0) = par_L_DS_CL(set_ii,set_load_DS_CL) * par_L_DS_CL_avg(set_load_DS_CL) / par_L_DS_CL_nom(set_load_DS_CL) * sum(set_side$set_pssOH(set_side,set_load_DS_CL),par_S_DS_total(set_side))**par_X_DS_CL_scaling(set_load_DS_CL);
*-------------------------------------------------------------------------------
*Abnutzung und Skalierung DES
*-------------------------------------------------------------------------------
Parameter Size(set_pss);
Size(set_pss)=0;
Parameter Wear(set_pss);
Wear(set_pss)=0;
Parameter Life(set_pss);
Life(set_pss)=0;
Parameter X(set_pss);
X(set_pss)=0;
Parameter BM_Sonnentank(set_pss);
BM_Sonnentank(set_pss)=0;
Parameter BM_NaS(set_pss);
BM_NaS(set_pss)=0;

par_C_DES_PV_Cap(set_tech_DES_PV)=par_C_DES_PV_Cap(set_tech_DES_PV)*par_A_DES_PV(set_tech_DES_PV);
par_C_DES_ST_Cap(set_tech_DES_ST)=par_C_DES_ST_Cap(set_tech_DES_ST)*par_A_DES_ST(set_tech_DES_ST);

Size(set_tech_DES_ES) = par_SOC_DES_ES_cap(set_tech_DES_ES);
Size(set_tech_DES_HS) = par_SOC_DES_HS_cap(set_tech_DES_HS);
Size(set_tech_DES_CLS) = par_SOC_DES_CLS_cap(set_tech_DES_CLS);
Size(set_tech_DES_TS) = par_SOC_DES_TS_cap(set_tech_DES_TS);
Size(set_tech_DES_CS) = par_SOC_DES_CS_cap(set_tech_DES_CS);
Size(set_tech_DES_GS) = par_SOC_DES_GS_cap(set_tech_DES_GS);

Size(set_tech_DES_NGB) = par_Q_DES_NGB_max(set_tech_DES_NGB);
Size(set_tech_DES_EB) = par_Q_DES_EB_max(set_tech_DES_EB);
Size(set_tech_DES_PV) = par_A_DES_PV(set_tech_DES_PV);
Size(set_tech_DES_ST) = par_A_DES_ST(set_tech_DES_ST);
Size(set_tech_DES_CHP) = par_P_DES_CHP_max(set_tech_DES_CHP);
Size(set_tech_DES_HP) = par_Q_DES_HP_max(set_tech_DES_HP);
Size(set_tech_DES_CR) = par_Q_DES_CR_max(set_tech_DES_CR);
Size(set_tech_DES_SC) = par_Q_DES_SC_max(set_tech_DES_SC);
Size(set_tech_DES_FC) = par_P_DES_FC_max(set_tech_DES_FC);
Size(set_tech_DES_EY) = par_P_DES_EY_max(set_tech_DES_EY);


Wear(set_tech_DES_ES) = par_Wear_DES_ES(set_tech_DES_ES);
Wear(set_tech_DES_CLS) = par_Wear_DES_CLS(set_tech_DES_CLS);
Wear(set_tech_DES_TS) = par_Wear_DES_TS(set_tech_DES_TS);
Wear(set_tech_DES_NGB) = par_Wear_DES_NGB(set_tech_DES_NGB);
Wear(set_tech_DES_EB) = par_Wear_DES_EB(set_tech_DES_EB);
Wear(set_tech_DES_PV) = par_Wear_DES_PV(set_tech_DES_PV);
Wear(set_tech_DES_HP) = par_Wear_DES_HP(set_tech_DES_HP);
Wear(set_tech_DES_CHP) = par_Wear_DES_CHP(set_tech_DES_CHP);
Wear(set_tech_DES_ST) = par_Wear_DES_ST(set_tech_DES_ST);
Wear(set_tech_DES_CR) = par_Wear_DES_CR(set_tech_DES_CR);
Wear(set_tech_DES_SC) = par_Wear_DES_SC(set_tech_DES_SC);
Wear(set_tech_DES_CS) = par_Wear_DES_CS(set_tech_DES_CS);
Wear(set_tech_DES_HS) = par_Wear_DES_HS(set_tech_DES_HS);
Wear(set_tech_DES_FC) = par_Wear_DES_FC(set_tech_DES_FC);
Wear(set_tech_DES_EY) = par_Wear_DES_EY(set_tech_DES_EY);
Wear(set_tech_DES_GS) = par_Wear_DES_GS(set_tech_DES_GS);

Life(set_tech_DES_ES) = par_Life_DES_ES(set_tech_DES_ES);
Life(set_tech_DES_CLS) = par_Life_DES_CLS(set_tech_DES_CLS);
Life(set_tech_DES_TS) = par_Life_DES_TS(set_tech_DES_TS);
Life(set_tech_DES_NGB) = par_Life_DES_NGB(set_tech_DES_NGB);
Life(set_tech_DES_EB) = par_Life_DES_EB(set_tech_DES_EB);
Life(set_tech_DES_PV) = par_Life_DES_PV(set_tech_DES_PV);
Life(set_tech_DES_HP) = par_Life_DES_HP(set_tech_DES_HP);
Life(set_tech_DES_CHP) = par_Life_DES_CHP(set_tech_DES_CHP);
Life(set_tech_DES_ST) = par_Life_DES_ST(set_tech_DES_ST);
Life(set_tech_DES_CR) = par_Life_DES_CR(set_tech_DES_CR);
Life(set_tech_DES_SC) = par_Life_DES_SC(set_tech_DES_SC);
Life(set_tech_DES_CS) = par_Life_DES_CS(set_tech_DES_CS);
Life(set_tech_DES_HS) = par_Life_DES_HS(set_tech_DES_HS);
Life(set_tech_DES_FC) = par_Life_DES_FC(set_tech_DES_FC);
Life(set_tech_DES_EY) = par_Life_DES_EY(set_tech_DES_EY);
Life(set_tech_DES_GS) = par_Life_DES_GS(set_tech_DES_GS);

X(set_load_DS_E) = par_X_DS_E_scaling(set_load_DS_E);
X(set_load_DS_W) = par_X_DS_W_scaling(set_load_DS_W);
X(set_load_DS_G) = par_X_DS_G_scaling(set_load_DS_G);
X(set_load_DS_C) = par_X_DS_C_scaling(set_load_DS_C);
X(set_load_DS_H) = par_X_DS_H_scaling(set_load_DS_H);

X(set_tech_DES_ES) = par_X_E_DES_ES_scaling(set_tech_DES_ES);
X(set_tech_DES_CLS) = par_X_CL_DES_CLS_scaling(set_tech_DES_CLS);
X(set_tech_DES_TS) = par_X_W_DES_TS_scaling(set_tech_DES_TS);
X(set_tech_DES_NGB) = par_X_W_DES_NGB_scaling(set_tech_DES_NGB);
X(set_tech_DES_EB) = par_X_W_DES_EB_scaling(set_tech_DES_EB);
X(set_tech_DES_PV) = par_X_E_DES_PV_scaling(set_tech_DES_PV);
X(set_tech_DES_HP) = par_X_W_DES_HP_scaling(set_tech_DES_HP);
X(set_tech_DES_CHP) = par_X_DES_CHP_scaling(set_tech_DES_CHP);
X(set_tech_DES_ST) = par_X_W_DES_ST_scaling(set_tech_DES_ST);
X(set_tech_DES_CR) = par_X_C_DES_CR_scaling(set_tech_DES_CR);
X(set_tech_DES_SC) = par_X_C_DES_SC_scaling(set_tech_DES_SC);
X(set_tech_DES_CS) = par_X_C_DES_CS_scaling(set_tech_DES_CS);
X(set_tech_DES_HS) = par_X_H_DES_HS_scaling(set_tech_DES_HS);
X(set_tech_DES_FC) = par_X_H_DES_FC_scaling(set_tech_DES_FC);
X(set_tech_DES_EY) = par_X_H_DES_EY_scaling(set_tech_DES_EY);
X(set_tech_DES_GS) = par_X_G_DES_GS_scaling(set_tech_DES_GS);

BM_Sonnentank(set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES) = 1) = 1;
BM_NaS(set_tech_DES_ES)$(par_X_BM_NaS_DES_ES(set_tech_DES_ES) = 1) = 1;

X(set_pss)$(sum(set_side_orga$set_pssOH(set_side_orga,set_pss),1)>0 and sum(set_side_cust$set_pssOH(set_side_cust,set_pss),1)=0)=0;

*Abfangen Fehler OH Unternehmensseite beim Quartiersspeicher
set_pssOH(set_side_cust,set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1 and sum(set_tech_DES_PV$set_pssOH(set_side_cust,set_tech_DES_PV),par_X_BM_Sonnentank_DES_PV(set_tech_DES_PV))>0 and sum(set_tech_DES_PV$set_energyLink('E',set_tech_DES_PV,set_tech_DES_PV),1)>0)=yes;

*Skalierung der Technologien
*Kundenwachstum und Abnutzung
Size(set_pss)$sum(set_side_cust$set_pssOH(set_side_cust,set_pss),1) = Size(set_pss)*((1 - Wear(set_pss))**mod(sca_a, Life(set_pss)))**(1-X(set_pss))*
sum(set_side_cust$set_pssOH(set_side_cust,set_pss),
        sum(set_a_total$(ord(set_a_total) <= sca_a + 1),
               par_S_DS_a_growth(set_a_total,set_side_cust)*(1 - Wear(set_pss))**mod(sca_a-ord(set_a_total)+1, Life(set_pss))
        )
)**X(set_pss);

par_SOC_DES_ES_cap(set_tech_DES_ES) = Size(set_tech_DES_ES);
par_SOC_DES_TS_cap(set_tech_DES_TS) = Size(set_tech_DES_TS);
par_Q_DES_NGB_max(set_tech_DES_NGB) = Size(set_tech_DES_NGB);
par_Q_DES_EB_max(set_tech_DES_EB) = Size(set_tech_DES_EB);
par_A_DES_PV(set_tech_DES_PV) = Size(set_tech_DES_PV);
par_A_DES_ST(set_tech_DES_ST) = Size(set_tech_DES_ST);
par_Q_DES_HP_max(set_tech_DES_HP) = Size(set_tech_DES_HP);
par_P_DES_CHP_max(set_tech_DES_CHP) = Size(set_tech_DES_CHP);
par_Q_DES_CR_max(set_tech_DES_CR) = Size(set_tech_DES_CR);
par_Q_DES_SC_max(set_tech_DES_SC) = Size(set_tech_DES_SC);
par_SOC_DES_CS_cap(set_tech_DES_CS) = Size(set_tech_DES_CS);
par_SOC_DES_HS_cap(set_tech_DES_HS) = Size(set_tech_DES_HS);
par_SOC_DES_CLS_cap(set_tech_DES_CLS) = Size(set_tech_DES_CLS);
par_SOC_DES_GS_cap(set_tech_DES_GS) = Size(set_tech_DES_GS);
par_P_DES_FC_max(set_tech_DES_FC) = Size(set_tech_DES_FC);
par_P_DES_EY_max(set_tech_DES_EY) = Size(set_tech_DES_EY);

par_P_DES_ES_charge_max(set_tech_DES_ES)$(BM_Sonnentank(set_tech_DES_ES) ne 1 and sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_ES),1)) = par_P_DES_ES_charge_max(set_tech_DES_ES) * sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_ES),par_S_DS(set_side_cust)) ** par_X_E_DES_ES_scaling(set_tech_DES_ES);
par_P_DES_ES_discharge_max(set_tech_DES_ES)$(BM_Sonnentank(set_tech_DES_ES) ne 1 and sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_ES),1)) = par_P_DES_ES_discharge_max(set_tech_DES_ES) * sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_ES),par_S_DS(set_side_cust)) ** par_X_E_DES_ES_scaling(set_tech_DES_ES);

par_P_DES_ES_charge_max(set_tech_DES_ES)$(BM_Sonnentank(set_tech_DES_ES) eq 1 and sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_ES),1)) = par_P_DES_ES_charge_max(set_tech_DES_ES) * sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_ES),par_S_DS(set_side_cust)) ** par_X_E_DES_ES_scaling(set_tech_DES_ES);
par_P_DES_ES_discharge_max(set_tech_DES_ES)$(BM_Sonnentank(set_tech_DES_ES) eq 1 and sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_ES),1))= par_P_DES_ES_discharge_max(set_tech_DES_ES) * sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_ES),par_S_DS(set_side_cust)) ** par_X_E_DES_ES_scaling(set_tech_DES_ES);

par_Q_DES_TS_charge_max(set_tech_DES_TS)$(sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_TS),1)) = par_Q_DES_TS_charge_max(set_tech_DES_TS) * sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_TS),par_S_DS(set_side_cust)) ** par_X_W_DES_TS_scaling(set_tech_DES_TS);
par_Q_DES_TS_discharge_max(set_tech_DES_TS)$(sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_TS),1))= par_Q_DES_TS_discharge_max(set_tech_DES_TS) * sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_TS),par_S_DS(set_side_cust)) ** par_X_W_DES_TS_scaling(set_tech_DES_TS);

par_P_DES_HS_charge_max(set_tech_DES_HS)$(sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_HS),1)) = par_P_DES_HS_charge_max(set_tech_DES_HS) * sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_HS),par_S_DS(set_side_cust)) ** par_X_H_DES_HS_scaling(set_tech_DES_HS);
par_P_DES_HS_discharge_max(set_tech_DES_HS)$(sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_HS),1))= par_P_DES_HS_discharge_max(set_tech_DES_HS) * sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_HS),par_S_DS(set_side_cust)) ** par_X_H_DES_HS_scaling(set_tech_DES_HS);

par_P_DES_GS_charge_max(set_tech_DES_GS)$(sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_GS),1)) = par_P_DES_GS_charge_max(set_tech_DES_GS) * sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_GS),par_S_DS(set_side_cust)) ** par_X_G_DES_GS_scaling(set_tech_DES_GS);
par_P_DES_GS_discharge_max(set_tech_DES_GS)$(sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_GS),1))= par_P_DES_GS_discharge_max(set_tech_DES_GS) * sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_GS),par_S_DS(set_side_cust)) ** par_X_G_DES_GS_scaling(set_tech_DES_GS);

par_P_DES_CLS_charge_max(set_tech_DES_CLS)$(sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_CLS),1)) = par_P_DES_CLS_charge_max(set_tech_DES_CLS) * sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_CLS),par_S_DS(set_side_cust)) ** par_X_CL_DES_CLS_scaling(set_tech_DES_CLS);
par_P_DES_CLS_discharge_max(set_tech_DES_CLS)$(sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_CLS),1))= par_P_DES_CLS_discharge_max(set_tech_DES_CLS) * sum(set_side_cust$set_pssOH(set_side_cust,set_tech_DES_CLS),par_S_DS(set_side_cust)) ** par_X_CL_DES_CLS_scaling(set_tech_DES_CLS);





