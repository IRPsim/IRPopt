***-----------------------------------------------------------------------------
***Statusparameter
***-----------------------------------------------------------------------------
*Initialisierung Kraftwerksstatus
*Übergabeparameter
PARAMETER par_S_pss_initial(set_ii_0,set_pss) Initialer Kraftwerksstatus;
par_S_pss_initial(set_ii_0,set_pss)=0;
*par_S_pss_initial(set_ii_0,set_tech_DES_EY)=1;

*Verbleibende Kraftwerkslaufzeiten
*Übergabeparameter
PARAMETER par_H_pss_requon(set_pss) Verbleibende Kraftwerkslaufzeit;
par_H_pss_requon(set_pss)=0;

*Verbleibende Kraftwerkslaufzeit
*Übergabeparameter
PARAMETER par_H_pss_permon(set_pss) Verbleibende Kraftwerkslaufzeit;
par_H_pss_permon(set_pss)=0;

*Verbleibende Kraftwerksstillstandszeiten
*Übergabeparameter
PARAMETER par_H_pss_requoff(set_pss) Verbleibende Kraftwerksstillstandszeit;
par_H_pss_requoff(set_pss)=0;

*Initialisierung Kraftwerkslaufstatus/zeiten
*Übergabeparameter
PARAMETER par_S_pss_counter_presenton(set_ii_0,set_pss) Kraftwerkslaufstatus;
par_S_pss_counter_presenton(set_ii_0,set_pss)=0;
PARAMETER par_H_pss_presenton(set_pss) Kraftwerkslaufzeit;
par_H_pss_presenton(set_pss)=0;

*Initialisierung Kraftwerkstillstandsstatus/zeiten
*Übergabeparameter
PARAMETER par_S_pss_counter_presentoff(set_ii_0,set_pss) Kraftwerkstillstandsstatus;
par_S_pss_counter_presentoff(set_ii_0,set_pss)=0;
PARAMETER par_H_pss_presentoff(set_pss) Kraftwerkstillstandszeit;
par_H_pss_presentoff(set_pss)=192;

*Initialisierung Energiefluss
*Übergabeparameter
PARAMETER par_energyflow_initial(set_pss);
par_energyflow_initial(set_pss)=0;

*Speicherstand Kehrricht
PARAMETER par_SOC_pss_initial(set_ii_0,set_pss);
par_SOC_pss_initial('ii0',set_tech_SS_RC)=par_SOC_SS_RC_initial(set_tech_SS_RC);

***-----------------------------------------------------------------------------
***Betriebszeitenparameter
***-----------------------------------------------------------------------------
*Initialisierung Mindestbetriebszeit (bzw. Blocklänge bei Reservemärkte)
PARAMETER par_H_pss_minon(set_pss) Mindestbetriebszeit;
par_H_pss_minon(set_pss)=1;

par_H_pss_minon(set_tech_SS_TPS)=floor(par_H_SS_TPS_minon(set_tech_SS_TPS)/sca_delta_ii);
par_H_pss_minon(set_tech_SS_CHP)=floor(par_H_SS_CHP_minon(set_tech_SS_CHP)/sca_delta_ii);
par_H_pss_minon(set_tech_SS_RC)=floor(par_H_SS_RC_minon(set_tech_SS_RC)/sca_delta_ii);
par_H_pss_minon(set_tech_SS_EY)=floor(par_H_SS_EY_minon(set_tech_SS_EY)/sca_delta_ii);
par_H_pss_minon(set_tech_DES_EY)=floor(par_H_DES_EY_minon(set_tech_DES_EY)/sca_delta_ii);
par_H_pss_minon(set_tech_DES_CHP)=floor(par_H_DES_CHP_minon(set_tech_DES_CHP)/sca_delta_ii);

sca_H_MS_PR_pri_min=4;
sca_H_MS_PR_sec_min=4;
sca_H_MS_PR_ter_min=4;
*Reservepools Blocklänge
par_H_pss_minon('PRPool')=floor(max(1,(max(sca_delta_ii,min(sca_H_MS_PR_pri_min/sca_delta_ii,sca_numberStoring)))));
par_H_pss_minon('SRPool')=floor(max(1,(max(sca_delta_ii,min(sca_H_MS_PR_sec_min/sca_delta_ii,sca_numberStoring)))));
par_H_pss_minon('TRPool')=floor(max(1,(max(sca_delta_ii,min(sca_H_MS_PR_ter_min/sca_delta_ii,sca_numberStoring)))));
par_H_pss_minon('FXPool')=floor(max(1,(max(sca_delta_ii,min(sca_H_MS_PR_fx_min/sca_delta_ii,sca_numberStoring)))));


*Initialisierung Maximalbetriebszeit
PARAMETER par_H_pss_maxon(set_pss) Maximalbetriebszeit;
par_H_pss_maxon(set_pss)=0;
par_H_pss_maxon(set_tech_SS_CHP)=floor(par_H_SS_CHP_maxon(set_tech_SS_CHP)/sca_delta_ii);
par_H_pss_maxon(set_tech_SS_TPS)=floor(par_H_SS_TPS_maxon(set_tech_SS_TPS)/sca_delta_ii);
par_H_pss_maxon(set_tech_SS_RC)=floor(par_H_SS_RC_maxon(set_tech_SS_RC)/sca_delta_ii);
par_H_pss_maxon(set_tech_SS_EY)=floor(par_H_SS_EY_maxon(set_tech_SS_EY)/sca_delta_ii);
par_H_pss_maxon(set_tech_DES_EY)=floor(par_H_DES_EY_maxon(set_tech_DES_EY)/sca_delta_ii);
par_H_pss_maxon(set_tech_DES_CHP)=floor(par_H_DES_CHP_maxon(set_tech_DES_CHP)/sca_delta_ii);

*Initialisierung Mindeststillstandszeit
PARAMETER par_H_pss_minoff(set_pss) Mindeststillstandszeit;
par_H_pss_minoff(set_pss)=0;

par_H_pss_minoff(set_tech_SS_TPS)=floor(par_H_SS_TPS_minoff(set_tech_SS_TPS)/sca_delta_ii);
par_H_pss_minoff(set_tech_SS_CHP)=floor(par_H_SS_CHP_minoff(set_tech_SS_CHP)/sca_delta_ii);
par_H_pss_minoff(set_tech_SS_RC)=floor(par_H_SS_RC_minoff(set_tech_SS_RC)/sca_delta_ii);
par_H_pss_minoff(set_tech_SS_EY)=floor(par_H_SS_EY_minoff(set_tech_SS_EY)/sca_delta_ii);
par_H_pss_minoff(set_tech_DES_EY)=floor(par_H_DES_EY_minoff(set_tech_DES_EY)/sca_delta_ii);
par_H_pss_minoff(set_tech_DES_CHP)=floor(par_H_DES_CHP_minoff(set_tech_DES_CHP)/sca_delta_ii);

***-----------------------------------------------------------------------------
***Auktionsparameter
***-----------------------------------------------------------------------------
*Initialisierung Reserveauktionstarife
SCALAR sca_ii_reseauction;
sca_ii_reseauction=0;

PARAMETER par_R_MS_RMarket(set_ii,set_sector,set_pss);
par_R_MS_RMarket(set_ii,set_sector,set_pss)=0;


*Checkfare Hilfsparameter zur Verbesserung der Performance
*Sind die Zeitreihen komplett 0 wird der Initialierung der Auktionsaufrufe übersprungen
PARAMETER par_checkfare(set_sector,set_pss);
par_checkfare('PR','PPRMarket')=sum(set_ii,par_R_MS_PR_pri(set_ii));
par_checkfare('PR','PSRMarket')=sum(set_ii,par_R_MS_PR_sec(set_ii));
par_checkfare('PR','PTRMarket')= sum(set_ii,par_R_MS_PR_ter(set_ii));
par_checkfare('PR','FXPMarket')=sum(set_ii,par_R_MS_PR_fx(set_ii));
par_checkfare('NR','NPRMarket')=sum(set_ii,par_R_MS_NR_pri(set_ii));
par_checkfare('NR','NSRMarket')=sum(set_ii,par_R_MS_NR_sec(set_ii));
par_checkfare('NR','NTRMarket')=sum(set_ii,par_R_MS_NR_ter(set_ii));
par_checkfare('NR','FXNMarket')=sum(set_ii,par_R_MS_NR_fx(set_ii));



*Auktionstarife / Startzeitpunkte Vorhaltung Primärenergie
IF(par_checkfare('PR','PPRMarket') ne 0 OR par_checkfare('NR','NPRMarket') ne 0,
IF(SUM(set_pss$set_energyLink('PR',set_pss,'PPRMarket'),1)>0 OR SUM(set_pss$set_energyLink('NR',set_pss,'NPRMarket'),1)>0,

FOR(sca_ii_reseauction=1 to sca_optsteps,
par_R_MS_RMarket(set_ii,'PR','PPRMarket')$(ORD(set_ii) eq sca_ii_reseauction)=sum(set_ii_duplicate$(ORD(set_ii_duplicate) ge sca_ii_reseauction AND ORD(set_ii_duplicate) le sca_ii_reseauction+par_H_pss_minon('PRPool')-1),par_R_MS_PR_pri(set_ii_duplicate));
par_R_MS_RMarket(set_ii,'NR','NPRMarket')$(ORD(set_ii) eq sca_ii_reseauction)=sum(set_ii_duplicate$(ORD(set_ii_duplicate) ge sca_ii_reseauction AND ORD(set_ii_duplicate) le sca_ii_reseauction+par_H_pss_minon('PRPool')-1),par_R_MS_NR_pri(set_ii_duplicate));

*par_R_MS_RMarket(set_ii,'PR','PPRMarket')$(sca_X_MS_pri_sim=1)=par_R_MS_RMarket(set_ii,'NR','NPRMarket')*0.5;
*par_R_MS_RMarket(set_ii,'NR','NPRMarket')$(sca_X_MS_pri_sim=1)=par_R_MS_RMarket(set_ii,'NR','NPRMarket')*0.5;

sca_ii_reseauction=sca_ii_reseauction+par_H_pss_minon('PRPool')-1;
);
);
);

*Auktionstarife / Startzeitpunkte Vorhaltung Sekundärenergie
IF(par_checkfare('PR','PSRMarket') ne 0 OR par_checkfare('NR','NSRMarket') ne 0,
IF(SUM(set_pss$set_energyLink('PR',set_pss,'PSRMarket'),1)>0 OR SUM(set_pss$set_energyLink('NR',set_pss,'NSRMarket'),1)>0,

FOR(sca_ii_reseauction=1 to sca_optsteps,
par_R_MS_RMarket(set_ii,'PR','PSRMarket')$(ORD(set_ii) eq sca_ii_reseauction)=sum(set_ii_duplicate$(ORD(set_ii_duplicate) ge sca_ii_reseauction AND ORD(set_ii_duplicate) le sca_ii_reseauction+par_H_pss_minon('SRPool')-1),par_R_MS_PR_sec(set_ii_duplicate));
par_R_MS_RMarket(set_ii,'NR','NSRMarket')$(ORD(set_ii) eq sca_ii_reseauction)=sum(set_ii_duplicate$(ORD(set_ii_duplicate) ge sca_ii_reseauction AND ORD(set_ii_duplicate) le sca_ii_reseauction+par_H_pss_minon('SRPool')-1),par_R_MS_NR_sec(set_ii_duplicate));

sca_ii_reseauction=sca_ii_reseauction+par_H_pss_minon('SRPool')-1;
);
);
);

*Auktionstarife / Startzeitpunkte Vorhaltung Tertiärenergie
IF(par_checkfare('PR','PTRMarket') ne 0 OR par_checkfare('NR','NTRMarket') ne 0,
IF(SUM(set_pss$set_energyLink('PR',set_pss,'PTRMarket'),1)>0 OR SUM(set_pss$set_energyLink('NR',set_pss,'NTRMarket'),1)>0,

FOR(sca_ii_reseauction=1 to sca_optsteps,
par_R_MS_RMarket(set_ii,'PR','PTRMarket')$(ORD(set_ii) eq sca_ii_reseauction)=sum(set_ii_duplicate$(ORD(set_ii_duplicate) ge sca_ii_reseauction AND ORD(set_ii_duplicate) le sca_ii_reseauction+par_H_pss_minon('TRPool')-1),par_R_MS_PR_ter(set_ii_duplicate));
par_R_MS_RMarket(set_ii,'NR','NTRMarket')$(ORD(set_ii) eq sca_ii_reseauction)=sum(set_ii_duplicate$(ORD(set_ii_duplicate) ge sca_ii_reseauction AND ORD(set_ii_duplicate) le sca_ii_reseauction+par_H_pss_minon('TRPool')-1),par_R_MS_NR_ter(set_ii_duplicate));

sca_ii_reseauction=sca_ii_reseauction+par_H_pss_minon('TRPool')-1;
);
);
);

*Auktionstarife / Startzeitpunkte Vorhaltung Flexibilitätsenergie
IF(par_checkfare('PR','FXPMarket') ne 0 OR par_checkfare('NR','FXNMarket') ne 0,
IF(SUM(set_pss$set_energyLink('PR',set_pss,'FXPMarket'),1)>0 OR SUM(set_pss$set_energyLink('NR',set_pss,'FXNMarket'),1)>0,

FOR(sca_ii_reseauction=1 to sca_optsteps,
par_R_MS_RMarket(set_ii,'PR','FXPMarket')$(ORD(set_ii) eq sca_ii_reseauction)=sum(set_ii_duplicate$(ORD(set_ii_duplicate) ge sca_ii_reseauction AND ORD(set_ii_duplicate) le sca_ii_reseauction+par_H_pss_minon('FXPool')-1),par_R_MS_PR_fx(set_ii_duplicate));
par_R_MS_RMarket(set_ii,'NR','FXNMarket')$(ORD(set_ii) eq sca_ii_reseauction)=sum(set_ii_duplicate$(ORD(set_ii_duplicate) ge sca_ii_reseauction AND ORD(set_ii_duplicate) le sca_ii_reseauction+par_H_pss_minon('FXPool')-1),par_R_MS_NR_fx(set_ii_duplicate));

sca_ii_reseauction=sca_ii_reseauction+par_H_pss_minon('FXPool')-1;
);
);
);



***-----------------------------------------------------------------------------
***Leistungsparameter
***-----------------------------------------------------------------------------
*Initialisierung Leistungsminimum
PARAMETER par_P_pss_min(set_ii,set_sector,set_pss) Leistungsminimum;
par_P_pss_min(set_ii,set_sector,set_pss) = 0;

par_P_pss_min(set_ii,'PR','PPRMarket')$(par_R_MS_RMarket(set_ii,'PR','PPRMarket') ne 0)= sca_P_MS_PR_pri_min;
par_P_pss_min(set_ii,'PR','PSRMarket')$(par_R_MS_RMarket(set_ii,'PR','PSRMarket') ne 0)= sca_P_MS_PR_sec_min;
par_P_pss_min(set_ii,'PR','PTRMarket')$(par_R_MS_RMarket(set_ii,'PR','PTRMarket') ne 0)= sca_P_MS_PR_ter_min;
par_P_pss_min(set_ii,'PR','FXPMarket')$(par_R_MS_RMarket(set_ii,'PR','FXPMarket') ne 0)= par_P_MS_PR_fx_min(set_ii);
par_P_pss_min(set_ii,'NR','NPRMarket')$(par_R_MS_RMarket(set_ii,'NR','NPRMarket') ne 0)= sca_P_MS_NR_pri_min;
par_P_pss_min(set_ii,'NR','NSRMarket')$(par_R_MS_RMarket(set_ii,'NR','NSRMarket') ne 0)= sca_P_MS_NR_sec_min;
par_P_pss_min(set_ii,'NR','NTRMarket')$(par_R_MS_RMarket(set_ii,'NR','NTRMarket') ne 0)= sca_P_MS_NR_sec_min;
par_P_pss_min(set_ii,'NR','FXNMarket')$(par_R_MS_RMarket(set_ii,'NR','FXNMarket') ne 0)= par_P_MS_NR_fx_min(set_ii);

par_P_pss_min(set_ii,'E',set_tech_SS_CHP)=par_P_SS_CHP_min(set_tech_SS_CHP);
par_P_pss_min(set_ii,'E',set_tech_SS_TPS)=par_P_SS_TPS_min(set_tech_SS_TPS);
par_P_pss_min(set_ii,'E',set_tech_SS_RC)=par_P_SS_RC_min(set_tech_SS_RC);
par_P_pss_min(set_ii,'E',set_tech_SS_EY)=par_P_SS_EY_min(set_tech_SS_EY);
par_P_pss_min(set_ii,'E',set_tech_DES_EY)=par_P_DES_EY_min(set_tech_DES_EY);
par_P_pss_min(set_ii,'E',set_tech_DES_CHP)=par_P_DES_CHP_min(set_tech_DES_CHP);

*Initialisierung Leistungsmaximum
PARAMETER par_P_pss_max(set_ii,set_sector,set_pss) Leistungsmaximum;
par_P_pss_max(set_ii,set_sector,set_pss) = 0;

par_P_pss_max(set_ii,'PR','PPRMarket')$(par_R_MS_RMarket(set_ii,'PR','PPRMarket') ne 0)= par_P_MS_PR_pri_max(set_ii);
par_P_pss_max(set_ii,'PR','PSRMarket')$(par_R_MS_RMarket(set_ii,'PR','PSRMarket') ne 0)= par_P_MS_PR_sec_max(set_ii);
par_P_pss_max(set_ii,'PR','PTRMarket')$(par_R_MS_RMarket(set_ii,'PR','PTRMarket') ne 0)= par_P_MS_PR_ter_max(set_ii);
par_P_pss_max(set_ii,'PR','FXPMarket')$(par_R_MS_RMarket(set_ii,'PR','FXPMarket') ne 0)= par_P_MS_PR_fx_max(set_ii);
par_P_pss_max(set_ii,'NR','NPRMarket')$(par_R_MS_RMarket(set_ii,'NR','NPRMarket') ne 0)= par_P_MS_NR_pri_max(set_ii);
par_P_pss_max(set_ii,'NR','NSRMarket')$(par_R_MS_RMarket(set_ii,'NR','NSRMarket') ne 0)= par_P_MS_NR_sec_max(set_ii);
par_P_pss_max(set_ii,'NR','NTRMarket')$(par_R_MS_RMarket(set_ii,'NR','NTRMarket') ne 0)= par_P_MS_NR_ter_max(set_ii);
par_P_pss_max(set_ii,'NR','FXNMarket')$(par_R_MS_RMarket(set_ii,'NR','FXNMarket') ne 0)= par_P_MS_NR_fx_max(set_ii);

par_P_pss_max(set_ii,'E',set_tech_SS_CHP)= par_P_SS_CHP_max(set_tech_SS_CHP);
par_P_pss_max(set_ii,'E',set_tech_SS_TPS)= par_P_SS_TPS_max(set_tech_SS_TPS);
par_P_pss_max(set_ii,'E',set_tech_SS_RC)= par_P_SS_RC_max(set_tech_SS_RC);
par_P_pss_max(set_ii,'E',set_tech_SS_EY)= par_P_SS_EY_max(set_tech_SS_EY);
par_P_pss_max(set_ii,'E',set_tech_DES_EY)= par_P_DES_EY_max(set_tech_DES_EY);

*Initialisierung Anfahr- und Hochfahrgeschwindigkeit
PARAMETER par_P_pss_ru_general(set_pss) Hochfahrgeschwindikgkeit;
PARAMETER par_P_pss_ru_start(set_pss) Hochfahrgeschwindikgkeit;
par_P_pss_ru_general(set_pss) = 0;
par_P_pss_ru_start(set_pss)=0;

*Einschränkung beim Hochfahren des Kraftwerks - zunächst auf Pmin
par_P_pss_ru_start(set_tech_SS_CHP)=par_P_SS_CHP_min(set_tech_SS_CHP);
par_P_pss_ru_general(set_tech_SS_CHP)=par_P_SS_CHP_ru_general(set_tech_SS_CHP);
par_P_pss_ru_start(set_tech_SS_CHP)$(par_P_pss_ru_start(set_tech_SS_CHP)=0)=par_P_SS_CHP_rd_general(set_tech_SS_CHP);
par_P_pss_ru_start(set_tech_SS_RC)=par_P_SS_RC_min(set_tech_SS_RC);
par_P_pss_ru_general(set_tech_SS_RC)=par_P_SS_RC_ru_general(set_tech_SS_RC);
par_P_pss_ru_start(set_tech_SS_RC)$(par_P_pss_ru_start(set_tech_SS_RC)=0)=par_P_SS_RC_rd_general(set_tech_SS_RC);
par_P_pss_ru_start(set_tech_SS_TPS)=par_P_SS_TPS_min(set_tech_SS_TPS);
par_P_pss_ru_general(set_tech_SS_TPS)=par_P_SS_TPS_ru_general(set_tech_SS_TPS);
par_P_pss_ru_start(set_tech_SS_TPS)$(par_P_pss_ru_start(set_tech_SS_TPS)=0)=par_P_SS_TPS_rd_general(set_tech_SS_TPS);
par_P_pss_ru_start(set_tech_SS_EY)=par_P_SS_EY_min(set_tech_SS_EY);
par_P_pss_ru_general(set_tech_SS_EY)=par_P_SS_EY_ru_general(set_tech_SS_EY);
par_P_pss_ru_start(set_tech_SS_EY)$(par_P_pss_ru_start(set_tech_SS_EY)=0)=par_P_SS_EY_rd_general(set_tech_SS_EY);
par_P_pss_ru_start(set_tech_DES_EY)=par_P_DES_EY_min(set_tech_DES_EY);
par_P_pss_ru_general(set_tech_DES_EY)=par_P_DES_EY_ru_general(set_tech_DES_EY);
par_P_pss_ru_start(set_tech_DES_EY)$(par_P_pss_ru_start(set_tech_DES_EY)=0)=par_P_DES_EY_rd_general(set_tech_DES_EY);
par_P_pss_ru_start(set_tech_DES_CHP)=par_P_DES_CHP_min(set_tech_DES_CHP);
par_P_pss_ru_general(set_tech_DES_CHP)=par_P_DES_CHP_ru_general(set_tech_DES_CHP);
par_P_pss_ru_start(set_tech_DES_CHP)$(par_P_pss_ru_start(set_tech_DES_CHP)=0)=par_P_DES_CHP_rd_general(set_tech_DES_CHP);

*Initialisierung Abschlafte- und Herunterfahrgeschwindigkeit
PARAMETER par_P_pss_rd_general(set_pss) Herunterfahrgeschwindigkeit;
PARAMETER par_P_pss_rd_stop(set_pss) Herunterfahrgeschwindigkeit;
par_P_pss_rd_general(set_pss) = 0;
par_P_pss_rd_stop(set_pss)=0;

*Keine Einschränkung beim Herunterfahren des Kraftwerks - sofort Pmax
par_P_pss_rd_stop(set_tech_SS_CHP)=par_P_SS_CHP_min(set_tech_SS_CHP);
par_P_pss_rd_general(set_tech_SS_CHP)=par_P_SS_CHP_rd_general(set_tech_SS_CHP);
par_P_pss_rd_stop(set_tech_SS_RC)=par_P_SS_RC_min(set_tech_SS_RC);
par_P_pss_rd_general(set_tech_SS_RC)=par_P_SS_RC_rd_general(set_tech_SS_RC);
par_P_pss_rd_stop(set_tech_SS_TPS)=par_P_SS_TPS_min(set_tech_SS_TPS);
par_P_pss_rd_general(set_tech_SS_TPS)=par_P_SS_TPS_rd_general(set_tech_SS_TPS);
par_P_pss_rd_stop(set_tech_SS_EY)=par_P_SS_EY_min(set_tech_SS_EY);
par_P_pss_rd_general(set_tech_SS_EY)=par_P_SS_EY_rd_general(set_tech_SS_EY);
par_P_pss_rd_stop(set_tech_DES_EY)=par_P_DES_EY_min(set_tech_DES_EY);
par_P_pss_rd_general(set_tech_DES_EY)=par_P_DES_EY_rd_general(set_tech_DES_EY);
par_P_pss_rd_stop(set_tech_DES_CHP)=par_P_DES_CHP_min(set_tech_DES_CHP);
par_P_pss_rd_general(set_tech_DES_CHP)=par_P_DES_CHP_rd_general(set_tech_DES_CHP);

***-----------------------------------------------------------------------------
***Verfügbarkeitsparameter
***-----------------------------------------------------------------------------
*Initialisierung Technische Verfügbarkeit
PARAMETER par_H_pss_techavail(set_ii,set_pss) Technische Verfügbarkeit;
par_H_pss_techavail(set_ii,set_pss)=1;

par_H_pss_techavail(set_ii,set_tech_SS_CHP)$(par_X_E_SS_CHP_avail(set_ii,set_tech_SS_CHP)=0)=0;
par_H_pss_techavail(set_ii,set_tech_SS_TPS)$(par_X_E_SS_TPS_avail(set_ii,set_tech_SS_TPS)=0)=0;
par_H_pss_techavail(set_ii,set_tech_SS_RC)$(par_X_W_SS_RC_avail(set_ii,set_tech_SS_RC)=0)=0;
par_H_pss_techavail(set_ii,set_tech_SS_WT)$(par_X_E_SS_WT_avail(set_ii,set_tech_SS_WT)=0)=0;
par_H_pss_techavail(set_ii,set_tech_SS_PV)$(par_X_E_SS_PV_avail(set_ii,set_tech_SS_PV)=0)=0;
par_H_pss_techavail(set_ii,set_tech_SS_RH)$(par_X_E_SS_RH_avail(set_ii,set_tech_SS_RH)=0)=0;
par_H_pss_techavail(set_ii,set_tech_SS_PHS)$(par_X_E_SS_PHS_avail(set_ii,set_tech_SS_PHS)=0)=0;
par_H_pss_techavail(set_ii,set_tech_SS_EY)$(par_X_E_SS_EY_avail(set_ii,set_tech_SS_EY)=0)=0;
par_H_pss_techavail(set_ii,set_tech_DES_EY)$(par_X_E_DES_EY_avail(set_ii,set_tech_DES_EY)=0)=0;
par_H_pss_techavail(set_ii,set_tech_DES_CHP)$(par_X_E_DES_CHP_avail(set_ii,set_tech_DES_CHP)=0)=0;
