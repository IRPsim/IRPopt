*Arten Cash-Flows
set set_cashFlow_year /'Inv',
                       'Ins',
                       'OuM'
                       /;

set set_cashFlow_month /'SMS_basic',
                        'NS_basic'
                        'SS_fix'
                       /;

set set_cashFlow_special /'NaS'/;

Parameter par_cashFlow_year(set_pss,set_cashFlow_year,set_fromSide,set_toSide);
par_cashFlow_year(set_pss,set_cashFlow_year,set_fromSide,set_toSide)=0;

Parameter par_cashFlow_month(set_jj,set_pss,set_cashFlow_month,set_fromSide,set_toSide);
par_cashFlow_month(set_jj,set_pss,set_cashFlow_month,set_fromSide,set_toSide)=0;

Parameter par_cashFlow_special(set_ii_0,set_pss,set_cashFlow_special,set_fromSide,set_toSide);
par_cashFlow_special(set_ii_0,set_pss,set_cashFlow_special,set_fromSide,set_toSide)=0;

*Aufteilung Verfügbarkeitskosten
PARAMETER par_C_pss_cashFlow(set_pss);
par_C_pss_cashFlow(set_pss)$set_tech_SS(set_pss)=par_C_pss_fixFlow(set_pss);

*-------------------------------------------------------------------------------
*Basistarife
*-------------------------------------------------------------------------------
*Basistarife ohne Skalierung
*Unternehmen
par_cashFlow_month(set_jj,set_pss,'SMS_basic',set_side,set_side_fares)$(set_pssOH(set_side,set_pss)
and set_energyLink('E','EGrid',set_pss)
and not set_market_MS(set_pss)
and not set_grid_NS(set_pss))
=par_F_E_EGrid_basic(set_side_fares,set_pss);

par_cashFlow_month(set_jj,set_pss,'SMS_basic',set_side,set_side_fares)$(set_pssOH(set_side,set_pss)
and set_energyLink('W','WGrid',set_pss)
and not set_market_MS(set_pss)
and not set_grid_NS(set_pss))
=par_F_W_WGrid_basic(set_side_fares,set_pss);

par_cashFlow_month(set_jj,set_pss,'SMS_basic',set_side,set_side_fares)$(set_pssOH(set_side,set_pss)
and set_energyLink('G','GGrid',set_pss)
and not set_market_MS(set_pss)
and not set_grid_NS(set_pss))
=par_F_G_GGrid_basic(set_side_fares,set_pss);

par_cashFlow_month(set_jj,set_pss,'SMS_basic',set_side,set_side_fares)$(set_pssOH(set_side,set_pss)
and set_energyLink('H','HGrid',set_pss)
and not set_market_MS(set_pss)
and not set_grid_NS(set_pss))
=par_F_H_HGrid_basic(set_side_fares,set_pss);

par_cashFlow_month(set_jj,set_pss,'SS_fix',set_fromSide,'MS')$(set_pssOH(set_fromSide,set_pss))
=par_C_pss_cashFlow(set_pss);

*Basistarife mit Skalierung
*Kundengruppen
par_cashFlow_month(set_jj,set_pss,'SMS_basic',set_side_cust,set_side_fares)$(set_pssOH(set_side_cust,set_pss)
and set_energyLink('E','EGrid',set_pss)
and not set_market_MS(set_pss)
and not set_grid_NS(set_pss))
=(par_F_E_EGrid_basic(set_side_fares,set_pss)
 +(sca_Tax_PS_vat*(par_F_E_EGrid_basic('SMS',set_pss)+par_F_E_EGrid_basic('NS',set_pss)))$(set_side_fares_taxes(set_side_fares)))
 * par_S_DS(set_side_cust) ** X(set_pss);

par_cashFlow_month(set_jj,set_pss,'SMS_basic',set_side_cust,set_side_fares)$(set_pssOH(set_side_cust,set_pss)
and set_energyLink('W','WGrid',set_pss)
and not set_market_MS(set_pss)
and not set_grid_NS(set_pss))
=(par_F_W_WGrid_basic(set_side_fares,set_pss)
 +(sca_Tax_PS_vat*(par_F_W_WGrid_basic('SMS',set_pss)+par_F_W_WGrid_basic('NS',set_pss)))$(set_side_fares_taxes(set_side_fares)))
 * par_S_DS(set_side_cust) ** X(set_pss);

par_cashFlow_month(set_jj,set_pss,'SMS_basic',set_side_cust,set_side_fares)$(set_pssOH(set_side_cust,set_pss)
and set_energyLink('G','GGrid',set_pss)
and not set_market_MS(set_pss)
and not set_grid_NS(set_pss))
=(par_F_G_GGrid_basic(set_side_fares,set_pss)
 +(sca_Tax_PS_vat*(par_F_G_GGrid_basic('SMS',set_pss)+par_F_G_GGrid_basic('NS',set_pss)))$(set_side_fares_taxes(set_side_fares)))
 * par_S_DS(set_side_cust) ** X(set_pss);

par_cashFlow_month(set_jj,set_pss,'SMS_basic',set_side_cust,set_side_fares)$(set_pssOH(set_side_cust,set_pss)
and set_energyLink('H','HGrid',set_pss)
and not set_market_MS(set_pss)
and not set_grid_NS(set_pss))
=(par_F_H_HGrid_basic(set_side_fares,set_pss)
 +(sca_Tax_PS_vat*(par_F_H_HGrid_basic('SMS',set_pss)+par_F_H_HGrid_basic('NS',set_pss)))$(set_side_fares_taxes(set_side_fares)))
 * par_S_DS(set_side_cust) ** X(set_pss);

par_cashFlow_month(set_jj,set_pss,'SS_fix',set_side_cust,'MS')$(set_pssOH(set_side_cust,set_pss))
=(par_C_pss_cashFlow(set_pss))
 * par_S_DS(set_side_cust) ** X(set_pss);


*Basistarife mit Skalierung
*Kundengruppen
*Germany
par_cashFlow_month(set_jj,set_pss,'SMS_basic',set_side_cust,set_side_fares)$(set_pssOH(set_side_cust,set_pss)
and set_energyLink('E','EGrid',set_pss)
and not set_market_MS(set_pss)
and not set_grid_NS(set_pss)
and sca_X_MS_DE_country=1)
=(par_F_E_EGrid_basic(set_side_fares,set_pss)
 +(sca_Tax_PS_vat*(par_F_E_EGrid_basic('SMS',set_pss)+par_F_E_EGrid_basic('NS',set_pss)+par_F_E_EGrid_basic('PS',set_pss)))$(set_side_fares_taxes(set_side_fares)))
 * par_S_DS(set_side_cust) ** X(set_pss);

par_cashFlow_month(set_jj,set_pss,'SMS_basic',set_side_cust,set_side_fares)$(set_pssOH(set_side_cust,set_pss)
and set_energyLink('W','WGrid',set_pss)
and not set_market_MS(set_pss)
and not set_grid_NS(set_pss)
and sca_X_MS_DE_country=1)
=(par_F_W_WGrid_basic(set_side_fares,set_pss)
 +(sca_Tax_PS_vat*(par_F_W_WGrid_basic('SMS',set_pss)+par_F_W_WGrid_basic('NS',set_pss)+par_F_W_WGrid_basic('PS',set_pss)))$(set_side_fares_taxes(set_side_fares)))
 * par_S_DS(set_side_cust) ** X(set_pss);

par_cashFlow_month(set_jj,set_pss,'SMS_basic',set_side_cust,set_side_fares)$(set_pssOH(set_side_cust,set_pss)
and set_energyLink('G','GGrid',set_pss)
and not set_market_MS(set_pss)
and not set_grid_NS(set_pss)
and sca_X_MS_DE_country=1)
=(par_F_G_GGrid_basic(set_side_fares,set_pss)
 +(sca_Tax_PS_vat*(par_F_G_GGrid_basic('SMS',set_pss)+par_F_G_GGrid_basic('NS',set_pss)+par_F_G_GGrid_basic('PS',set_pss)))$(set_side_fares_taxes(set_side_fares)))
 * par_S_DS(set_side_cust) ** X(set_pss);

par_cashFlow_month(set_jj,set_pss,'SMS_basic',set_side_cust,set_side_fares)$(set_pssOH(set_side_cust,set_pss)
and set_energyLink('H','HGrid',set_pss)
and not set_market_MS(set_pss)
and not set_grid_NS(set_pss)
and sca_X_MS_DE_country=1)
=(par_F_H_HGrid_basic(set_side_fares,set_pss)
 +(sca_Tax_PS_vat*(par_F_H_HGrid_basic('SMS',set_pss)+par_F_H_HGrid_basic('NS',set_pss)+par_F_H_HGrid_basic('PS',set_pss)))$(set_side_fares_taxes(set_side_fares)))
 * par_S_DS(set_side_cust) ** X(set_pss);

*-------------------------------------------------------------------------------
* Bestimme jährliche Abschreibungsfaktoren für Investitionen in DES
*-------------------------------------------------------------------------------
set it /1*50/;

PARAMETER par_Learning(set_tech_DES);
par_Learning(set_tech_DES)=0;
PARAMETER par_COH(set_side,set_tech_DES);
par_COH(set_side,set_tech_DES)=0;
PARAMETER par_C_Cap(set_tech_DES);
par_C_Cap(set_tech_DES)=0;
PARAMETER par_Inc_orga(set_tech_DES);
par_Inc_orga(set_tech_DES)=0;
PARAMETER par_Inc_ps(set_tech_DES);
par_Inc_ps(set_tech_DES)=0;
PARAMETER par_Alpha_OuM(set_tech_DES);
par_Alpha_OuM(set_tech_DES)=0;
PARAMETER par_Alpha_Ins(set_tech_DES);
par_Alpha_OuM(set_tech_DES)=0;
PARAMETER par_S_BM(set_BM,set_pss);
par_S_BM(set_BM,set_pss)=1;

par_C_Cap(set_tech_DES_ES)=par_C_DES_ES_Cap(set_tech_DES_ES);
par_C_Cap(set_tech_DES_TS)=par_C_DES_TS_Cap(set_tech_DES_TS);
par_C_Cap(set_tech_DES_CS)=par_C_DES_CS_Cap(set_tech_DES_CS);
par_C_Cap(set_tech_DES_NGB)=par_C_DES_NGB_Cap(set_tech_DES_NGB);
par_C_Cap(set_tech_DES_EB)=par_C_DES_EB_Cap(set_tech_DES_EB);
par_C_Cap(set_tech_DES_PV)=par_C_DES_PV_Cap(set_tech_DES_PV);
par_C_Cap(set_tech_DES_HP)=par_C_DES_HP_Cap(set_tech_DES_HP);
par_C_Cap(set_tech_DES_ST)=par_C_DES_ST_Cap(set_tech_DES_ST);
par_C_Cap(set_tech_DES_CHP)=par_C_DES_CHP_Cap(set_tech_DES_CHP);
par_C_Cap(set_tech_DES_CR)=par_C_DES_CR_Cap(set_tech_DES_CR);
par_C_Cap(set_tech_DES_SC)=par_C_DES_SC_Cap(set_tech_DES_SC);
par_C_Cap(set_tech_DES_EY)=par_C_DES_EY_Cap(set_tech_DES_EY);
par_C_Cap(set_tech_DES_CLS)=par_C_DES_CLS_Cap(set_tech_DES_CLS);
par_C_Cap(set_tech_DES_HS)=par_C_DES_HS_Cap(set_tech_DES_HS);
par_C_Cap(set_tech_DES_FC)=par_C_DES_FC_Cap(set_tech_DES_FC);
par_C_Cap(set_tech_DES_GS)=par_C_DES_GS_Cap(set_tech_DES_GS);

par_Inc_orga(set_tech_DES_ES)=par_Inc_DES_ES(set_tech_DES_ES)*Size(set_tech_DES_ES);
par_Inc_orga(set_tech_DES_TS)=par_Inc_DES_TS(set_tech_DES_TS)*Size(set_tech_DES_TS);
par_Inc_orga(set_tech_DES_CS)=par_Inc_DES_CS(set_tech_DES_CS)*Size(set_tech_DES_CS);
par_Inc_orga(set_tech_DES_NGB)=par_Inc_DES_NGB(set_tech_DES_NGB)*Size(set_tech_DES_NGB);
par_Inc_orga(set_tech_DES_EB)=par_Inc_DES_EB(set_tech_DES_EB)*Size(set_tech_DES_EB);
par_Inc_orga(set_tech_DES_PV)=par_Inc_DES_PV(set_tech_DES_PV)*Size(set_tech_DES_PV);
par_Inc_orga(set_tech_DES_HP)=par_Inc_DES_HP(set_tech_DES_HP)*Size(set_tech_DES_HP);
par_Inc_orga(set_tech_DES_ST)=par_Inc_DES_ST(set_tech_DES_ST)*Size(set_tech_DES_ST);
par_Inc_orga(set_tech_DES_CHP)=par_Inc_DES_CHP(set_tech_DES_CHP)*Size(set_tech_DES_CHP);
par_Inc_orga(set_tech_DES_CR)=par_Inc_DES_CR(set_tech_DES_CR)*Size(set_tech_DES_CR);
par_Inc_orga(set_tech_DES_SC)=par_Inc_DES_SC(set_tech_DES_SC)*Size(set_tech_DES_SC);
par_Inc_orga(set_tech_DES_EY)=par_Inc_DES_EY(set_tech_DES_EY)*Size(set_tech_DES_EY);
par_Inc_orga(set_tech_DES_CLS)=par_Inc_DES_CLS(set_tech_DES_CLS)*Size(set_tech_DES_CLS);
par_Inc_orga(set_tech_DES_HS)=par_Inc_DES_HS(set_tech_DES_HS)*Size(set_tech_DES_HS);
par_Inc_orga(set_tech_DES_FC)=par_Inc_DES_FC(set_tech_DES_FC)*Size(set_tech_DES_FC);
par_Inc_orga(set_tech_DES_GS)=par_Inc_DES_GS(set_tech_DES_GS)*Size(set_tech_DES_GS);

par_Inc_ps(set_tech_DES_ES)=par_Inc_PS_ES(set_tech_DES_ES)*Size(set_tech_DES_ES);
par_Inc_ps(set_tech_DES_TS)=par_Inc_PS_TS(set_tech_DES_TS)*Size(set_tech_DES_TS);
par_Inc_ps(set_tech_DES_CS)=par_Inc_PS_CS(set_tech_DES_CS)*Size(set_tech_DES_CS);
par_Inc_ps(set_tech_DES_NGB)=par_Inc_PS_NGB(set_tech_DES_NGB)*Size(set_tech_DES_NGB);
par_Inc_ps(set_tech_DES_EB)=par_Inc_PS_EB(set_tech_DES_EB)*Size(set_tech_DES_EB);
par_Inc_ps(set_tech_DES_PV)=par_Inc_PS_PV(set_tech_DES_PV)*Size(set_tech_DES_PV);
par_Inc_ps(set_tech_DES_HP)=par_Inc_PS_HP(set_tech_DES_HP)*Size(set_tech_DES_HP);
par_Inc_ps(set_tech_DES_ST)=par_Inc_PS_ST(set_tech_DES_ST)*Size(set_tech_DES_ST);
par_Inc_ps(set_tech_DES_CHP)=par_Inc_PS_CHP(set_tech_DES_CHP)*Size(set_tech_DES_CHP);
par_Inc_ps(set_tech_DES_CR)=par_Inc_PS_CR(set_tech_DES_CR)*Size(set_tech_DES_CR);
par_Inc_ps(set_tech_DES_SC)=par_Inc_PS_SC(set_tech_DES_SC)*Size(set_tech_DES_SC);
par_Inc_ps(set_tech_DES_EY)=par_Inc_PS_EY(set_tech_DES_EY)*Size(set_tech_DES_EY);
par_Inc_ps(set_tech_DES_CLS)=par_Inc_PS_CLS(set_tech_DES_CLS)*Size(set_tech_DES_CLS);
par_Inc_ps(set_tech_DES_HS)=par_Inc_PS_HS(set_tech_DES_HS)*Size(set_tech_DES_HS);
par_Inc_ps(set_tech_DES_FC)=par_Inc_PS_FC(set_tech_DES_FC)*Size(set_tech_DES_FC);
par_Inc_ps(set_tech_DES_GS)=par_Inc_PS_GS(set_tech_DES_GS)*Size(set_tech_DES_GS);


par_COH(set_side,set_tech_DES_ES)$(par_X_pss_model(set_tech_DES_ES)=1)=par_COH_DES_ES_side(set_side,set_tech_DES_ES);
par_COH(set_side,set_tech_DES_TS)$(par_X_pss_model(set_tech_DES_TS)=1)=par_COH_DES_TS_side(set_side,set_tech_DES_TS);
par_COH(set_side,set_tech_DES_CS)$(par_X_pss_model(set_tech_DES_CS)=1)=par_COH_DES_CS_side(set_side,set_tech_DES_CS);
par_COH(set_side,set_tech_DES_NGB)$(par_X_pss_model(set_tech_DES_NGB)=1)=par_COH_DES_NGB_side(set_side,set_tech_DES_NGB);
par_COH(set_side,set_tech_DES_EB)$(par_X_pss_model(set_tech_DES_EB)=1)=par_COH_DES_EB_side(set_side,set_tech_DES_EB);
par_COH(set_side,set_tech_DES_PV)$(par_X_pss_model(set_tech_DES_PV)=1)=par_COH_DES_PV_side(set_side,set_tech_DES_PV);
par_COH(set_side,set_tech_DES_HP)$(par_X_pss_model(set_tech_DES_HP)=1)=par_COH_DES_HP_side(set_side,set_tech_DES_HP);
par_COH(set_side,set_tech_DES_ST)$(par_X_pss_model(set_tech_DES_ST)=1)=par_COH_DES_ST_side(set_side,set_tech_DES_ST);
par_COH(set_side,set_tech_DES_CHP)$(par_X_pss_model(set_tech_DES_CHP)=1)=par_COH_DES_CHP_side(set_side,set_tech_DES_CHP);
par_COH(set_side,set_tech_DES_CR)$(par_X_pss_model(set_tech_DES_CR)=1)=par_COH_DES_CR_side(set_side,set_tech_DES_CR);
par_COH(set_side,set_tech_DES_SC)$(par_X_pss_model(set_tech_DES_SC)=1)=par_COH_DES_SC_side(set_side,set_tech_DES_SC);
par_COH(set_side,set_tech_DES_EY)$(par_X_pss_model(set_tech_DES_EY)=1)=par_COH_DES_EY_side(set_side,set_tech_DES_EY);
par_COH(set_side,set_tech_DES_CLS)$(par_X_pss_model(set_tech_DES_CLS)=1)=par_COH_DES_CLS_side(set_side,set_tech_DES_CLS);
par_COH(set_side,set_tech_DES_HS)$(par_X_pss_model(set_tech_DES_HS)=1)=par_COH_DES_HS_side(set_side,set_tech_DES_HS);
par_COH(set_side,set_tech_DES_FC)$(par_X_pss_model(set_tech_DES_FC)=1)=par_COH_DES_FC_side(set_side,set_tech_DES_FC);
par_COH(set_side,set_tech_DES_GS)$(par_X_pss_model(set_tech_DES_GS)=1)=par_COH_DES_GS_side(set_side,set_tech_DES_GS);


*par_COH(set_side,set_tech_SS_PV)=par_COH_SS_PV_side(set_side,set_tech_SS_PV);
*par_COH(set_side,set_tech_SS_TPS)=par_COH_SS_TPS_side(set_side,set_tech_SS_TPS);
*par_COH(set_side,set_tech_SS_WT)=par_COH_SS_WT_side(set_side,set_tech_SS_WT);
*par_COH(set_side,set_tech_SS_RH)=par_COH_SS_RH_side(set_side,set_tech_SS_RH);
*par_COH(set_side,set_tech_SS_CHP)=par_COH_SS_CHP_side(set_side,set_tech_SS_CHP);
*par_COH(set_side,set_tech_SS_PHS)=par_COH_SS_PHS_side(set_side,set_tech_SS_PHS);
*par_COH(set_side,set_tech_SS_ETB)=par_COH_SS_ETB_side(set_side,set_tech_SS_ETB);
*par_COH(set_side,set_tech_SS_PLB)=par_COH_SS_PLB_side(set_side,set_tech_SS_PLB);
*par_COH(set_side,set_tech_SS_RC)=par_COH_SS_RC_side(set_side,set_tech_SS_RC);

par_Learning(set_tech_DES_ES)=par_Learning_DES_ES(set_tech_DES_ES);
par_Learning(set_tech_DES_TS)=par_Learning_DES_TS(set_tech_DES_TS);
par_Learning(set_tech_DES_CS)=par_Learning_DES_CS(set_tech_DES_CS);
par_Learning(set_tech_DES_NGB)=par_Learning_DES_NGB(set_tech_DES_NGB);
par_Learning(set_tech_DES_EB)=par_Learning_DES_EB(set_tech_DES_EB);
par_Learning(set_tech_DES_PV)=par_Learning_DES_PV(set_tech_DES_PV);
par_Learning(set_tech_DES_HP)=par_Learning_DES_HP(set_tech_DES_HP);
par_Learning(set_tech_DES_CHP)=par_Learning_DES_CHP(set_tech_DES_CHP);
par_Learning(set_tech_DES_CR)=par_Learning_DES_CR(set_tech_DES_CR);
par_Learning(set_tech_DES_SC)=par_Learning_DES_SC(set_tech_DES_SC);
par_Learning(set_tech_DES_EY)=par_Learning_DES_EY(set_tech_DES_EY);
par_Learning(set_tech_DES_CLS)=par_Learning_DES_CLS(set_tech_DES_CLS);
par_Learning(set_tech_DES_HS)=par_Learning_DES_HS(set_tech_DES_HS);
par_Learning(set_tech_DES_FC)=par_Learning_DES_FC(set_tech_DES_FC);
par_Learning(set_tech_DES_GS)=par_Learning_DES_GS(set_tech_DES_GS);
par_S_BM('Sonnentank',set_tech_DES_ES)$(par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1)=sum(set_side_cust,par_S_DS(set_side_cust)$set_pssOH(set_side_cust,set_tech_DES_ES));

*Kostenberechnung Kapitalkosten
*Kosten dezentrale Systeme auf Unternehmensseite
*Ohne Mehrwertsteuer
par_cashFlow_year(set_tech_DES,'Inv',set_side_orga,'MS')$(par_COH(set_side_orga,set_tech_DES)=1 and sum(it$(ord(it)<=Life(set_tech_DES)), ((1 + par_Learning(set_tech_DES))/(1 + sca_i_DES))**(ord(it)-1)) <> 0)
=  par_C_Cap(set_tech_DES)
         *(1 + par_Learning(set_tech_DES))**sca_a
         /sum(it$(ord(it)<=Life(set_tech_DES)), ((1 + par_Learning(set_tech_DES))/(1 + sca_i_DES))**(ord(it)-1));

*Kosten dezentrale Systeme auf Unternehmensseite Sonnentank
*Ohne Mehrwertsteuer
*Skalierung Kundenanzahl
par_cashFlow_year(set_tech_DES_ES,'Inv',set_side_orga,'MS')$(par_COH(set_side_orga,set_tech_DES_ES)=1 AND par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1)
=  par_C_Cap(set_tech_DES_ES)
         *(1 + par_Learning(set_tech_DES_ES))**sca_a
         /sum(it$(ord(it)<=Life(set_tech_DES_ES)), ((1 + par_Learning(set_tech_DES_ES))/(1 + sca_i_DES))**(ord(it)-1))
         *sum(set_BM,par_S_BM(set_BM,set_tech_DES_ES)$(set_BM_Sonnentank(set_BM) AND par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)=1));

*Kosten dezentrale Systeme auf Kundenseite
*Inklusive Mehrwertsteuer
*Skalierung Kundenanzahl gemäß Festlegung
par_cashFlow_year(set_tech_DES,'Inv',set_side_cust,'MS')$(par_COH(set_side_cust,set_tech_DES)=1)
=(1+sca_Tax_PS_vat)*(par_C_Cap(set_tech_DES)
         *(1 + par_Learning(set_tech_DES))**sca_a
         /sum(it$(ord(it)<=Life(set_tech_DES)), ((1 + par_Learning(set_tech_DES))/(1 + sca_i_DES))**(ord(it)-1))
         *par_S_DS(set_side_cust) ** X(set_tech_DES));

*Kosten dezentrale Systeme auf Kundenseite
*Ohne Mehrwertsteuer bei Kleinunternehmerregelung
*Skalierung Kundenanzahl gemäß Festlegung
*Für den deutschen Markt sca_X_MS_DE_country =1
par_cashFlow_year(set_tech_DES,'Inv',set_side_cust,'MS')$(par_COH(set_side_cust,set_tech_DES)=1 AND par_X_DS_business(set_side_cust)=1 AND sca_X_MS_DE_country=1)
= par_C_Cap(set_tech_DES)
         *(1 + par_Learning(set_tech_DES))**sca_a
         /sum(it$(ord(it)<=Life(set_tech_DES)), ((1 + par_Learning(set_tech_DES))/(1 + sca_i_DES))**(ord(it)-1))
         *par_S_DS(set_side_cust) ** X(set_tech_DES);

*Kostenberechnung OuM
par_Alpha_OuM(set_tech_DES_ES)=par_Alpha_DES_ES_OuM(set_tech_DES_ES);
par_Alpha_OuM(set_tech_DES_TS)=par_Alpha_DES_TS_OuM(set_tech_DES_TS);
par_Alpha_OuM(set_tech_DES_CS)=par_Alpha_DES_CS_OuM(set_tech_DES_CS);
par_Alpha_OuM(set_tech_DES_NGB)=par_Alpha_DES_NGB_OuM(set_tech_DES_NGB);
par_Alpha_OuM(set_tech_DES_EB)=par_Alpha_DES_EB_OuM(set_tech_DES_EB);
par_Alpha_OuM(set_tech_DES_PV)=par_Alpha_DES_PV_OuM(set_tech_DES_PV);
par_Alpha_OuM(set_tech_DES_HP)=par_Alpha_DES_HP_OuM(set_tech_DES_HP);
par_Alpha_OuM(set_tech_DES_CHP)=par_Alpha_DES_CHP_OuM(set_tech_DES_CHP);
par_Alpha_OuM(set_tech_DES_ST)=par_Alpha_DES_ST_OuM(set_tech_DES_ST);
par_Alpha_OuM(set_tech_DES_CR)=par_Alpha_DES_CR_OuM(set_tech_DES_CR);
par_Alpha_OuM(set_tech_DES_SC)=par_Alpha_DES_SC_OuM(set_tech_DES_SC);
par_Alpha_OuM(set_tech_DES_EY)=par_Alpha_DES_EY_OuM(set_tech_DES_EY);
par_Alpha_OuM(set_tech_DES_CLS)=par_Alpha_DES_CLS_OuM(set_tech_DES_CLS);
par_Alpha_OuM(set_tech_DES_HS)=par_Alpha_DES_HS_OuM(set_tech_DES_HS);
par_Alpha_OuM(set_tech_DES_FC)=par_Alpha_DES_FC_OuM(set_tech_DES_FC);
par_Alpha_OuM(set_tech_DES_GS)=par_Alpha_DES_GS_OuM(set_tech_DES_GS);

par_cashFlow_year(set_tech_DES,'OuM',set_side_orga,'MS')$(par_COH(set_side_orga,set_tech_DES)=1)
=par_cashFlow_year(set_tech_DES,'Inv',set_side_orga,'MS')*par_Alpha_OuM(set_tech_DES);

par_cashFlow_year(set_tech_DES,'OuM',set_side_cust,'MS')$(par_COH(set_side_cust,set_tech_DES)=1)
=par_cashFlow_year(set_tech_DES,'Inv',set_side_cust,'MS')*par_Alpha_OuM(set_tech_DES);

*Kostenberechnung Installation
par_Alpha_Ins(set_tech_DES_ES)=par_Alpha_DES_ES_Ins(set_tech_DES_ES);
par_Alpha_Ins(set_tech_DES_TS)=par_Alpha_DES_TS_Ins(set_tech_DES_TS);
par_Alpha_Ins(set_tech_DES_CS)=par_Alpha_DES_CS_Ins(set_tech_DES_CS);
par_Alpha_Ins(set_tech_DES_NGB)=par_Alpha_DES_NGB_Ins(set_tech_DES_NGB);
par_Alpha_Ins(set_tech_DES_EB)=par_Alpha_DES_EB_Ins(set_tech_DES_EB);
par_Alpha_Ins(set_tech_DES_PV)=par_Alpha_DES_PV_Ins(set_tech_DES_PV);
par_Alpha_Ins(set_tech_DES_HP)=par_Alpha_DES_HP_Ins(set_tech_DES_HP);
par_Alpha_Ins(set_tech_DES_CHP)=par_Alpha_DES_CHP_Ins(set_tech_DES_CHP);
par_Alpha_Ins(set_tech_DES_ST)=par_Alpha_DES_ST_Ins(set_tech_DES_ST);
par_Alpha_Ins(set_tech_DES_CR)=par_Alpha_DES_CR_Ins(set_tech_DES_CR);
par_Alpha_Ins(set_tech_DES_SC)=par_Alpha_DES_SC_Ins(set_tech_DES_SC);
par_Alpha_Ins(set_tech_DES_EY)=par_Alpha_DES_EY_Ins(set_tech_DES_EY);
par_Alpha_Ins(set_tech_DES_CLS)=par_Alpha_DES_CLS_Ins(set_tech_DES_CLS);
par_Alpha_Ins(set_tech_DES_HS)=par_Alpha_DES_HS_Ins(set_tech_DES_HS);
par_Alpha_Ins(set_tech_DES_FC)=par_Alpha_DES_FC_Ins(set_tech_DES_FC);
par_Alpha_Ins(set_tech_DES_GS)=par_Alpha_DES_GS_Ins(set_tech_DES_GS);

par_cashFlow_year(set_tech_DES,'Ins',set_side_orga,'MS')$(par_COH(set_side_orga,set_tech_DES)=1)
=par_cashFlow_year(set_tech_DES,'Inv',set_side_orga,'MS')*par_Alpha_Ins(set_tech_DES);

par_cashFlow_year(set_tech_DES,'Ins',set_side_cust,'MS')$(par_COH(set_side_cust,set_tech_DES)=1)
=par_cashFlow_year(set_tech_DES,'Inv',set_side_cust,'MS')*par_Alpha_Ins(set_tech_DES);



$ontext
*Einzelausgaben zu Testzwecken
Display par_C_Cap,par_Learning,sca_a,Life,par_Learning,sca_i_DES;
DISPLAY par_COH;

PARAMETER par_cashFlow_year_cap(set_sector,set_pss,set_cashFlow_year,set_fromSide,set_toSide);
PARAMETER par_cashFlow_year_dep(set_sector,set_pss,set_cashFlow_year,set_fromSide,set_toSide);
PARAMETER par_cashFlow_year_learning(set_sector,set_pss,set_cashFlow_year,set_fromSide,set_toSide);
par_cashFlow_year_cap(set_sector,set_tech_DES,'Inv',set_side_orga,'MS')$(par_COH(set_side_orga,set_tech_DES)=1)
=  par_C_Cap(set_sector,set_tech_DES);

par_cashFlow_year_dep(set_sector,set_tech_DES,'Inv',set_side_orga,'MS')$(par_COH(set_side_orga,set_tech_DES)=1)
=  (1 + par_Learning(set_tech_DES))**sca_a;

par_cashFlow_year_learning(set_sector,set_tech_DES,'Inv',set_side_orga,'MS')$(par_COH(set_side_orga,set_tech_DES)=1)
=  sum(it$(ord(it)<=Life(set_tech_DES)), ((1 + par_Learning(set_tech_DES))/(1 + sca_i_DES))**(ord(it)-1));
$offtext



