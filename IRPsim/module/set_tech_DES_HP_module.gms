***-----------------------------------------------------------------------------
***Parameter
***-----------------------------------------------------------------------------
PARAMETER par_Q_DES_HP_max_temp(set_ii,set_tech_DES_HP) Begrenzung maximale Leistung der Wärmepumpe in Abhängigkeit der Temperatur;
PARAMETER par_COP_DES_HP(set_ii,set_tech_DES_HP) Wärmekennzahl der Wärmepumpe in Abhängigkeit der Temperatur;

***-----------------------------------------------------------------------------
***Leistungszahl
***-----------------------------------------------------------------------------

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


