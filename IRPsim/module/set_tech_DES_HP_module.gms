

***-----------------------------------------------------------------------------
***Parameter
***-----------------------------------------------------------------------------
PARAMETER par_Q_DES_HP_max_temp(set_ii,set_tech_DES_HP) Begrenzung maximale Leistung der Wärmepumpe in Abhängigkeit der Temperatur;
PARAMETER par_COP_DES_HP(set_ii,set_tech_DES_HP) Wärmekennzahl der Wärmepumpe in Abhängigkeit der Temperatur;
PARAMETER par_T_DES_HP_source(set_ii,set_tech_DES_HP) Quelltemperatur der Wärmepumpe je Zeitschritt;
PARAMETER par_T_DES_HP_sink(set_ii,set_tech_DES_HP) Zieltemperatur der Wärmepumpe je Zeitschritt;

***-----------------------------------------------------------------------------
***Zuordnungssets Wärmepumpentyp und Zieltemperaturmodus
***-----------------------------------------------------------------------------
*** HINWEIS: Solange das Dropdown im Frontend noch nicht verfügbar ist, werden
*** par_X_DES_HP_type / par_X_DES_HP_T_sink als Integer-Parameter (1/2/3) aus
*** input_28_tech_DES_HP.gms eingelesen und hier auf zwei 2D-Sets abgebildet.
*** Nach Fertigstellung des Dropdowns muss - je nachdem, wie die Plattform die
*** Auswahl kodiert - im Zweifel nur die Befüllung dieser beiden Sets angepasst
*** werden; die gesamte fachliche Logik darunter (COP-Formeln, Zieltemperatur-
*** berechnung) bleibt unverändert, da sie ausschließlich über die Sets
*** gesteuert wird.

SET set_HP_type_dom Wärmepumpentypen /ASHP, GSHP, WSHP/;
SET set_DES_HP_type(set_tech_DES_HP,set_HP_type_dom) Gewählter Wärmepumpentyp je Technologie;

set_DES_HP_type(set_tech_DES_HP,'ASHP') = YES$(par_X_DES_HP_type(set_tech_DES_HP)=1);
set_DES_HP_type(set_tech_DES_HP,'GSHP') = YES$(par_X_DES_HP_type(set_tech_DES_HP)=2);
set_DES_HP_type(set_tech_DES_HP,'WSHP') = YES$(par_X_DES_HP_type(set_tech_DES_HP)=3);

SET set_HP_sink_dom Zieltemperaturmodi /radiator, floor, manual/;
SET set_DES_HP_sink(set_tech_DES_HP,set_HP_sink_dom) Gewählter Zieltemperaturmodus je Technologie;

set_DES_HP_sink(set_tech_DES_HP,'radiator') = YES$(par_X_DES_HP_T_sink(set_tech_DES_HP)=1);
set_DES_HP_sink(set_tech_DES_HP,'floor')    = YES$(par_X_DES_HP_T_sink(set_tech_DES_HP)=2);
set_DES_HP_sink(set_tech_DES_HP,'manual')   = YES$(par_X_DES_HP_T_sink(set_tech_DES_HP)=3);


***-----------------------------------------------------------------------------
***Zieltemperatur
***-----------------------------------------------------------------------------
*** Formelbasis (radiator/floor): "Time series of heat demand and heat pump
*** efficiency for energy system modeling" (2019), DOI: 10.1038/s41597-019-0199-y

par_T_DES_HP_sink(set_ii,set_tech_DES_HP)$set_DES_HP_sink(set_tech_DES_HP,'radiator')
    = 40 - 1.0 * par_T_DES_HP_source(set_ii,set_tech_DES_HP);

par_T_DES_HP_sink(set_ii,set_tech_DES_HP)$set_DES_HP_sink(set_tech_DES_HP,'floor')
    = 30 - 0.5 * par_T_DES_HP_source(set_ii,set_tech_DES_HP);

par_T_DES_HP_sink(set_ii,set_tech_DES_HP)$set_DES_HP_sink(set_tech_DES_HP,'manual')
    = par_T_DES_HP_sink_manual(set_tech_DES_HP);
    
***-----------------------------------------------------------------------------
***Leistungszahl (COP)
***-----------------------------------------------------------------------------
*** Formelbasis: "Time series of heat demand and heat pump efficiency for energy
*** system modeling" (2019), DOI: 10.1038/s41597-019-0199-y
*** und "Impact of temperature dependent coefficient of performance of heat pumps
*** on heating systems in national and regional energy systems modelling" (2024),
*** DOI: 10.1016/j.apenergy.2024.123647

par_COP_DES_HP(set_ii,set_tech_DES_HP)$set_DES_HP_type(set_tech_DES_HP,'ASHP')
    = 6.08 - 0.0941 * (par_T_DES_HP_sink(set_ii,set_tech_DES_HP) - par_T_DES_HP_source(set_ii,set_tech_DES_HP))
           + 0.000464 * (par_T_DES_HP_sink(set_ii,set_tech_DES_HP) - par_T_DES_HP_source(set_ii,set_tech_DES_HP))**2;

*** GSHP: Herstellerangaben beziehen sich i.d.R. auf die Soletemperatur statt der
*** Erdreichtemperatur; daher Abzug von 5 K (Wärmeübergang Erdreich -> Sole),
*** analog ERA-Interim-Ansatz.
par_COP_DES_HP(set_ii,set_tech_DES_HP)$set_DES_HP_type(set_tech_DES_HP,'GSHP')
    = 10.29 - 0.2084 * (par_T_DES_HP_sink(set_ii,set_tech_DES_HP) - (par_T_DES_HP_source(set_ii,set_tech_DES_HP) - 5))
            + 0.001322 * (par_T_DES_HP_sink(set_ii,set_tech_DES_HP) - (par_T_DES_HP_source(set_ii,set_tech_DES_HP) - 5))**2;

par_COP_DES_HP(set_ii,set_tech_DES_HP)$set_DES_HP_type(set_tech_DES_HP,'WSHP')
    = 9.99 - 0.2084 * (par_T_DES_HP_sink(set_ii,set_tech_DES_HP) - par_T_DES_HP_source(set_ii,set_tech_DES_HP))
           + 0.00149 * (par_T_DES_HP_sink(set_ii,set_tech_DES_HP) - par_T_DES_HP_source(set_ii,set_tech_DES_HP))**2;

***Neu:
$ontext
PARAMETER par_X_DES_HP_type(set_ii,set_tech_DES_HP) Schaltparameter der die Quelle der Wärmepumpe definiert;
PARAMETER par_X_DES_HP_T_sink (set_ii,set_tech_DES_HP)Schaltparameter der die Zieltemperatur der Wärmepumpe definiert;
PARAMETER par_T_DES_HP_source(set_ii,set_tech_DES_HP) Quelltemperatur der Wärmepumpe;
--> Hier könnte sich auf die Außentemperatur par_T_ES bezogen werden. Hinzufügen der Bodentemperatur?

PARAMETER par_T_DES_HP_sink(set_ii,set_tech_DES_HP) Zieltemperatur der Wärmepumpe;

Nutzung von StandIn-Parametern:
par_X_DES_HP_type   -> par_Inc_PS_HP(set_tech_DES_HP)           [Förderung für Wärmepumpe durch Politik]
par_X_DES_HP_T_sink -> par_Inc_DES_HP(set_tech_DES_HP)          [Unternehmensförderung Leistung Wärmepumpe]
par_T_DES_HP_source -> Mindestens dieser Parameter sollte eine zeitliche Variabilität mitbringen!
                    -> par_T_DES_HP(set_ii,set_tech_DES_HP)     [Außentemperatur]
                    
par_C_pss_relativeFlow(set_tech_DES_HP)  [Variable Betriebskosten]
par_T_DES_HP_sink   -> Eigentlich sollte auch dieser Parameter zeitlich variabel sein
                    -> par_F_R_RGrid_pos(set_ii,PS,set_tech_DES_HP)
par_C_DES_HP_Cap(set_tech_DES_HP)        [Investitionskosten Wärmepumpe]

***-----------------------------------------------------------------------------
***Leistungszahl
***-----------------------------------------------------------------------------

*** Based on "time series of heat demand and heat pump efficiency for energy system modeling" (2019), DOI: 10.1038/s41597-019-0199-y
*** and "Impact of temperature dependent coefficient of performance of heat pumps on heating systems in national and regional energy systems modelling" (2024), DOI: 10.1016/j.apenergy.2024.123647

IF (par_X_DES_HP_T_sink(set_ii,set_tech_DES_HP) = 'radiator',...;
        par_T_DES_HP_sink(set_ii,set_tech_DES_HP) = 40 - 1.0 * par_T_DES_HP_source(set_ii,set_tech_DES_HP);
);
IF (par_X_DES_HP_T_sink(set_ii,set_tech_DES_HP) = 'floor',...;
        par_T_DES_HP_sink(set_ii,set_tech_DES_HP) = 30 - 0.5 * par_T_DES_HP_source(set_ii,set_tech_DES_HP);
);
*Anpassungen notwendig (über welchen Parameter holt sich IRPopt die manuell eingestellte Zieltemperatur rein?)
IF (par_X_DES_HP_T_sink(set_ii,set_tech_DES_HP) = 'self',...; 
        par_T_DES_HP_sink(set_ii,set_tech_DES_HP) = par_T_DES_HP_sink(set_ii,set_tech_DES_HP);
);

IF (par_X_DES_HP_type(set_ii,set_tech_DES_HP) = 'ASHP',...; 
        par_COP_DES_HP(set_ii,set_tech_DES_HP) =
        6.08 - 0.0941 * (par_T_DES_HP_sink(set_ii,set_tech_DES_HP) - par_T_DES_HP_source(set_ii,set_tech_DES_HP))
        + 0.000464 * (par_T_DES_HP_sink(set_ii,set_tech_DES_HP) - par_T_DES_HP_source(set_ii,set_tech_DES_HP))^2;
);
IF (par_X_DES_HP_type(set_ii,set_tech_DES_HP) = 'GSHP',...; 
        par_COP_DES_HP(set_ii,set_tech_DES_HP) =
        10.29 - 0.2084 * (par_T_DES_HP_sink(set_ii,set_tech_DES_HP) - par_T_DES_HP_source(set_ii,set_tech_DES_HP))
        + 0.001322 * (par_T_DES_HP_sink(set_ii,set_tech_DES_HP) - par_T_DES_HP_source(set_ii,set_tech_DES_HP))^2;
);
IF (par_X_DES_HP_type(set_ii,set_tech_DES_HP) = 'WSHP',...; 
        par_COP_DES_HP(set_ii,set_tech_DES_HP) =
        9.99 - 0.2084 * (par_T_DES_HP_sink(set_ii,set_tech_DES_HP) - par_T_DES_HP_source(set_ii,set_tech_DES_HP))
        + 0.00149 * (par_T_DES_HP_sink(set_ii,set_tech_DES_HP) - par_T_DES_HP_source(set_ii,set_tech_DES_HP))^2;
);

$offtext
par_Inc_PS_HP(set_tech_DES_HP) = 1;
par_Inc_DES_HP(set_tech_DES_HP) = 1;


LOOP((set_ii,set_tech_DES_HP),
*radiator heating
    IF (par_Inc_DES_HP(set_tech_DES_HP) = 1,
            par_F_R_RGrid_pos(set_ii,'PS',set_tech_DES_HP) = 40 - 1.0 * par_T_DES_HP(set_ii,set_tech_DES_HP);
    );
*floor heating
    IF (par_Inc_DES_HP(set_tech_DES_HP) = 2,
            par_F_R_RGrid_pos(set_ii,'PS',set_tech_DES_HP) = 30 - 0.5 * par_T_DES_HP(set_ii,set_tech_DES_HP);
    );
*manual sink temperature
*Anpassungen notwendig (über welchen Parameter holt sich IRPopt die manuell eingestellte Zieltemperatur rein?)
    IF (par_Inc_DES_HP(set_tech_DES_HP) = 3, 
            par_F_R_RGrid_pos(set_ii,'PS',set_tech_DES_HP) = par_F_R_RGrid_pos(set_ii,'PS',set_tech_DES_HP);
    );
);    

LOOP((set_ii,set_tech_DES_HP),
*ASHP
    IF (par_Inc_PS_HP(set_tech_DES_HP) = 1, 
            par_COP_DES_HP(set_ii,set_tech_DES_HP) =
            6.08 - 0.0941* (par_F_R_RGrid_pos(set_ii,'PS',set_tech_DES_HP) - par_T_DES_HP(set_ii,set_tech_DES_HP))
            + 0.000464 * (par_F_R_RGrid_pos(set_ii,'PS',set_tech_DES_HP) - par_T_DES_HP(set_ii,set_tech_DES_HP))*(par_F_R_RGrid_pos(set_ii,'PS',set_tech_DES_HP) - par_T_DES_HP(set_ii,set_tech_DES_HP));
    );
*GSHP: For GSHP, the manufacturer data refer to the brine temperature rather than the ground temperature.
*To account for the heat transfer from the ground to the brine, a temperature difference of 5 K is subtracted from the ERA-Interim ground temperature. 
    IF (par_Inc_PS_HP(set_tech_DES_HP) = 2, 
            par_COP_DES_HP(set_ii,set_tech_DES_HP) =
            10.29 - 0.2084 * (par_F_R_RGrid_pos(set_ii,'PS',set_tech_DES_HP) - (par_T_DES_HP(set_ii,set_tech_DES_HP)-5))
            + 0.001322 * (par_F_R_RGrid_pos(set_ii,'PS',set_tech_DES_HP) - (par_T_DES_HP(set_ii,set_tech_DES_HP)-5))**2;
    );
*WSHP
    IF (par_Inc_PS_HP(set_tech_DES_HP) = 3, 
            par_COP_DES_HP(set_ii,set_tech_DES_HP) =
            9.99 - 0.2084 * (par_F_R_RGrid_pos(set_ii,'PS',set_tech_DES_HP) - par_T_DES_HP(set_ii,set_tech_DES_HP))
            + 0.00149 * (par_F_R_RGrid_pos(set_ii,'PS',set_tech_DES_HP) - par_T_DES_HP(set_ii,set_tech_DES_HP))**2;
    );
);    


par_Q_DES_HP_max_temp(set_ii,set_tech_DES_HP) = par_Q_DES_HP_max(set_tech_DES_HP);

*$offtext
$ontext
LOOP((set_ii,set_tech_DES_HP),
          IF (par_T_DES_HP(set_ii,set_tech_DES_HP) <= -20,
                 par_COP_DES_HP(set_ii,set_tech_DES_HP) = 1;
                 par_Q_DES_HP_max_temp(set_ii,set_tech_DES_HP) = par_Q_DES_HP_max(set_tech_DES_HP) * 0.4;
          );
          IF (par_T_DES_HP(set_ii,set_tech_DES_HP) > -20 AND par_T_DES_HP(set_ii,set_tech_DES_HP) <= -10 ,
                 par_COP_DES_HP(set_ii,set_tech_DES_HP) = 1.5;
                 par_Q_DES_HP_max_temp(set_ii,set_tech_DES_HP) = par_Q_DES_HP_max(set_tech_DES_HP) * 0.5;
          );
          IF (par_T_DES_HP(set_ii,set_tech_DES_HP) > -10 AND par_T_DES_HP(set_ii,set_tech_DES_HP) <= 0 ,
                 par_COP_DES_HP(set_ii,set_tech_DES_HP) = 2;
                 par_Q_DES_HP_max_temp(set_ii,set_tech_DES_HP) = par_Q_DES_HP_max(set_tech_DES_HP) * 0.6;
         );
         IF (par_T_DES_HP(set_ii,set_tech_DES_HP) > 0 AND par_T_DES_HP(set_ii,set_tech_DES_HP) <= 5 ,
                 par_COP_DES_HP(set_ii,set_tech_DES_HP) = 2.5;
                 par_Q_DES_HP_max_temp(set_ii,set_tech_DES_HP) = par_Q_DES_HP_max(set_tech_DES_HP) * 0.7;
         );
         IF (par_T_DES_HP(set_ii,set_tech_DES_HP) > 5 AND par_T_DES_HP(set_ii,set_tech_DES_HP) <= 10 ,
                 par_COP_DES_HP(set_ii,set_tech_DES_HP) = 2.5;
                 par_Q_DES_HP_max_temp(set_ii,set_tech_DES_HP) = par_Q_DES_HP_max(set_tech_DES_HP) * 0.8;
         );
         IF (par_T_DES_HP(set_ii,set_tech_DES_HP) > 10 AND par_T_DES_HP(set_ii,set_tech_DES_HP) <= 15 ,
                 par_COP_DES_HP(set_ii,set_tech_DES_HP) = 3;
                 par_Q_DES_HP_max_temp(set_ii,set_tech_DES_HP) = par_Q_DES_HP_max(set_tech_DES_HP) * 0.9;
         );
         IF (par_T_DES_HP(set_ii,set_tech_DES_HP) > 15 AND par_T_DES_HP(set_ii,set_tech_DES_HP) <= 18,
                 par_COP_DES_HP(set_ii,set_tech_DES_HP) = 3.5;
                 par_Q_DES_HP_max_temp(set_ii,set_tech_DES_HP) = par_Q_DES_HP_max(set_tech_DES_HP) * 1;
         );
         IF (par_T_DES_HP(set_ii,set_tech_DES_HP) > 18 AND par_T_DES_HP(set_ii,set_tech_DES_HP) <= 20,
                 par_COP_DES_HP(set_ii,set_tech_DES_HP) = 4;
                 par_Q_DES_HP_max_temp(set_ii,set_tech_DES_HP) = par_Q_DES_HP_max(set_tech_DES_HP) * 1;
         );
         IF (par_T_DES_HP(set_ii,set_tech_DES_HP) > 20 AND par_T_DES_HP(set_ii,set_tech_DES_HP) <=25,
                 par_COP_DES_HP(set_ii,set_tech_DES_HP) = 4.5;
                 par_Q_DES_HP_max_temp(set_ii,set_tech_DES_HP) = par_Q_DES_HP_max(set_tech_DES_HP) * 1;
         );
         IF (par_T_DES_HP(set_ii,set_tech_DES_HP) > 25,
                 par_COP_DES_HP(set_ii,set_tech_DES_HP) = 5;
                 par_Q_DES_HP_max_temp(set_ii,set_tech_DES_HP) = par_Q_DES_HP_max(set_tech_DES_HP) * 1;
         );

         IF (par_T_DES_HP(set_ii,set_tech_DES_HP) > 35,
                 par_COP_DES_HP(set_ii,set_tech_DES_HP) = 4.07;
                 par_Q_DES_HP_max_temp(set_ii,set_tech_DES_HP) = par_Q_DES_HP_max(set_tech_DES_HP) * 1;
         );
);

$offtext

*-------------------------------------------------------------------------------
*Variablen
*-------------------------------------------------------------------------------
POSITIVE VARIABLE var_Q_DES_HP(set_ii,set_tech_DES_HP) Hilfsvariable Erzeugung Wärmeenergie Wärmepumpe;
POSITIVE VARIABLE var_Q_DES_HR(set_ii,set_tech_DES_HP) Hilfsvariable Erzeugung Wärmeenergie Heizstab;
POSITIVE VARIABLE var_E_DES_HR_negres(set_ii,set_tech_DES_HP) Hilfsvariable Begrenzung Reserveenergie des Heizstabes;
POSITIVE VARIABLE var_E_DES_HP_negres(set_ii,set_tech_DES_HP) Hilfsvariable Begrenzung Reserveenergie der Wärmepumpe;
POSITIVE VARIABLE var_E_DES_HR_posres(set_ii,set_tech_DES_HP) Hilfsvariable Begrenzung Reserveenergie des Heizstabes;
POSITIVE VARIABLE var_E_DES_HP_posres(set_ii,set_tech_DES_HP) Hilfsvariable Begrenzung Reserveenergie der Wärmepumpe;
*-------------------------------------------------------------------------------
*Gleichungen
*-------------------------------------------------------------------------------
EQUATIONS EqHP1(set_ii,set_pss) Restriktion Erzeugung Wärmeenergie Wärmepumpe;
EqHP1(set_t,set_tech_DES_HP)$(set_pss_opt(set_tech_DES_HP) AND par_X_pss_model(set_tech_DES_HP)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'W',set_tech_DES_HP,set_toPss)$set_energyLink_opt('W',set_tech_DES_HP,set_toPss))
                 =e=
                 (var_Q_DES_HP(set_t,set_tech_DES_HP) + var_Q_DES_HR(set_t,set_tech_DES_HP)) * sca_delta_ii;

EQUATIONS EqHP2(set_ii,set_pss) Restriktion maximale Kapazität Wärmepumpe;
EqHP2(set_t,set_tech_DES_HP)$(set_pss_opt(set_tech_DES_HP) AND par_X_pss_model(set_tech_DES_HP)=1)..
                 var_E_DES_HR_negres(set_t,set_tech_DES_HP) * par_Eta_DES_HR(set_tech_DES_HP)
                 + var_E_DES_HP_negres(set_t,set_tech_DES_HP) * par_COP_DES_HP(set_t,set_tech_DES_HP)
                 + (var_Q_DES_HP(set_t,set_tech_DES_HP)
                 +  var_Q_DES_HR(set_t,set_tech_DES_HP)) * sca_delta_ii
                 =l=
                 par_Q_DES_HP_max(set_tech_DES_HP) * par_Q_DES_HP_utilpercent(set_t,set_tech_DES_HP) * sca_delta_ii;

EQUATIONS EqHP3(set_ii,set_pss) Restriktion temperaturabhängige Kapazität Wärmepumpe ;
EqHP3(set_t,set_tech_DES_HP)$(set_pss_opt(set_tech_DES_HP) AND par_X_pss_model(set_tech_DES_HP)=1)..
                 var_Q_DES_HP(set_t,set_tech_DES_HP) * sca_delta_ii + var_E_DES_HP_negres(set_t,set_tech_DES_HP) * par_COP_DES_HP(set_t,set_tech_DES_HP)
                 =l=
                 par_Q_DES_HP_max_temp(set_t,set_tech_DES_HP) * sca_delta_ii;

EQUATIONS EqHP4(set_ii,set_pss) Restriktion benötigte Primärenergie;
EqHP4(set_t,set_tech_DES_HP)$(set_pss_opt(set_tech_DES_HP) AND par_X_pss_model(set_tech_DES_HP)=1)..
                 sum(set_fromPss,var_energyFlow(set_t,'E',set_fromPss,set_tech_DES_HP)$set_energyLink_opt('E',set_fromPss,set_tech_DES_HP))
                 =e=
                 var_Q_DES_HP(set_t,set_tech_DES_HP) * sca_delta_ii / par_COP_DES_HP(set_t,set_tech_DES_HP) + var_Q_DES_HR(set_t,set_tech_DES_HP) * sca_delta_ii / par_Eta_DES_HR(set_tech_DES_HP);

EQUATIONS EqHP5(set_ii,set_pss) Restriktion maximaler Wärmeabfluss zur Vorhaltung negativer Regelenergie;
EqHP5(set_t,set_tech_DES_HP)$(set_pss_opt(set_tech_DES_HP) AND par_X_pss_model(set_tech_DES_HP)=1)..
                 var_E_DES_HP_negres(set_t,set_tech_DES_HP) * par_COP_DES_HP(set_t,set_tech_DES_HP) + var_E_DES_HR_negres(set_t, set_tech_DES_HP) * par_Eta_DES_HR(set_tech_DES_HP)
                 =l=
                 sum(set_fromPss,var_energyFlow(set_t,'NR',set_fromPss,set_tech_DES_HP)$set_energyLink_opt('NR',set_fromPss,set_tech_DES_HP));

EQUATIONS EqHP6(set_ii,set_pss) Restriktion Strombezug Vorhaltung negativer Regelenergie;
EqHP6(set_t,set_tech_DES_HP)$(set_pss_opt(set_tech_DES_HP) AND par_X_pss_model(set_tech_DES_HP)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'NR',set_tech_DES_HP,set_toPss)$set_energyLink_opt('NR',set_tech_DES_HP,set_toPss))
                 =e=
                 var_E_DES_HP_negres(set_t,set_tech_DES_HP) + var_E_DES_HR_negres(set_t, set_tech_DES_HP);

EQUATIONS EqHP7(set_ii,set_pss) Restriktion maximaler Stromabwurf;
EqHP7(set_t,set_tech_DES_HP)$(set_pss_opt(set_tech_DES_HP) AND par_X_pss_model(set_tech_DES_HP)=1)..
                 var_E_DES_HP_posres(set_t,set_tech_DES_HP) + var_E_DES_HR_posres(set_t, set_tech_DES_HP)
                 =l=
                 var_Q_DES_HP(set_t,set_tech_DES_HP) * sca_delta_ii / par_COP_DES_HP(set_t,set_tech_DES_HP) + var_Q_DES_HR(set_t,set_tech_DES_HP) * sca_delta_ii / par_Eta_DES_HR(set_tech_DES_HP);

EQUATIONS EqHP8(set_ii,set_pss) Restriktion maximale Wärmezurückstellung zur Vorhaltung positiver Regelenergie;
EqHP8(set_t,set_tech_DES_HP)$(set_pss_opt(set_tech_DES_HP) AND par_X_pss_model(set_tech_DES_HP)=1)..
                 var_E_DES_HP_posres(set_t,set_tech_DES_HP) * par_COP_DES_HP(set_t,set_tech_DES_HP) + var_E_DES_HR_posres(set_t, set_tech_DES_HP) * par_Eta_DES_HR(set_tech_DES_HP)
                 =l=
                 sum(set_fromPss,var_energyFlow(set_t,'PR',set_fromPss,set_tech_DES_HP)$set_energyLink_opt('PR',set_fromPss,set_tech_DES_HP));

EQUATIONS EqHP9(set_ii,set_pss) Restriktion Stromabwurf Vorhaltung positiver Regelenergie;
EqHP9(set_t,set_tech_DES_HP)$(set_pss_opt(set_tech_DES_HP) AND par_X_pss_model(set_tech_DES_HP)=1)..
                 sum(set_toPss,var_energyFlow(set_t,'PR',set_tech_DES_HP,set_toPss)$set_energyLink_opt('PR',set_tech_DES_HP,set_toPss))
                 =e=
                 var_E_DES_HP_posres(set_t,set_tech_DES_HP) + var_E_DES_HR_posres(set_t, set_tech_DES_HP);


model mod_tech_DES_HP_cust /EqHP1, EqHP2, EqHP3, EqHP4, EqHP5, EqHP6, EqHP7, EqHP8, EqHP9/;
model mod_tech_DES_HP_orga /EqHP1, EqHP2, EqHP3, EqHP4, EqHP5, EqHP6, EqHP7, EqHP8, EqHP9/;


