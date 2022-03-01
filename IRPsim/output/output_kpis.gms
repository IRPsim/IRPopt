* - description: Gibt den Anteil des Netzbezugs an der Stromlastdeckung an.
* - type: Float
* - identifier: Netzbezugsanteil zur Stromlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_ELoad_gridcov(set_ii,set_load_DS_E);

* - description: Gibt den Anteil des Stroms aus der PV-Anlage an der Stromlastdeckung an.
* - type: Float
* - identifier: Photovoltaikbezugsanteil zur Stromlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_ELoad_pvcov(set_ii,set_load_DS_E);

* - description: Gibt den Anteil des Stroms aus der Kraft-Wärme-Kopplungsanlage an der Stromlastdeckung an.
* - type: Float
* - identifier: Kraft-Wärme-Kopplungsbezugsanteil zur Stromlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_ELoad_chpcov(set_ii,set_load_DS_E);

* - description: Gibt den Anteil des Stroms aus dem Stromspeicher an der Stromlastdeckung an.
* - type: Float
* - identifier: Stromspeicherbezugsanteil zur Stromlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_ELoad_escov(set_ii,set_load_DS_E);

* - description: Gibt den Anteil des Stroms aus dem "Sonnentank" an der Stromlastdeckung an.
* - type: Float
* - identifier: Sonnentankbezugsanteil zur Stromlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_ELoad_Sonnentankcov(set_ii,set_load_DS_E);

* - description: Gibt den Anteil des Stroms aus dem "Netzspeicher" an der Stromlastdeckung an.
* - type: Float
* - identifier: Netzspeicherbezugsanteil zur Stromlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_ELoad_NaScov(set_ii,set_load_DS_E);

* - description: Gibt den Anteil des Stroms aus der PV-Direktvermarktung an der Stromlastdeckung an.
* - type: Float
* - identifier: Direktvermarktungsbezugsanteil zur Stromlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_ELoad_PVdirectcov(set_ii,set_load_DS_E);

* - description: Gibt den Anteil des Netzbezugs an der Deckung der Wärmepumpenlast an.
* - type: Float
* - identifier: Netzbezugsanteil zur Wärmepumpenlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_HP_gridcov(set_ii,set_tech_DES_HP);

* - description: Gibt den Anteil des Stroms aus der PV-Anlage an der Deckung der Wärmepumpenlast an.
* - type: Float
* - identifier: Photovoltaikbezugsanteil zur Wärmepumpenlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_HP_pvcov(set_ii,set_tech_DES_HP);

* - description: Gibt den Anteil des Stroms aus der Kraft-Wärme-Kopplungsanlage an der Deckung der Wärmepumpenlast an.
* - type: Float
* - identifier: Kraft-Wärme-Kopplungsbezugsanteil zur Wärmepumpenlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_HP_chpcov(set_ii,set_tech_DES_HP);


* - description: Gibt den Anteil des Stroms aus dem Stromspeicher an der Deckung der Wärmepumpenlast an.
* - type: Float
* - identifier: Stromspeicherbezugsanteil zur Wärmepumpenlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_HP_escov(set_ii,set_tech_DES_HP);

* - description: Gibt den Anteil des Stroms aus dem "Sonnentank" an der Deckung der Wärmepumpenlast an.
* - type: Float
* - identifier: Sonnentankbezugsanteil zur Wärmepumpenlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_HP_Sonnentankcov(set_ii,set_tech_DES_HP);

* - description: Gibt den Anteil des Stroms aus dem "Netzspeicher" an der Deckung der Wärmepumpenlast an.
* - type: Float
* - identifier: Netzspeicherbezugsanteil zur Wärmepumpenlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_HP_NaScov(set_ii,set_tech_DES_HP);

* - description: Gibt den Anteil des Stroms aus der PV-Direktvermarktung an der Deckung der Wärmepumpenlast an.
* - type: Float
* - identifier: Direktvermarktungsbezugsanteil zur Wärmepumpenlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_HP_PVdirectcov(set_ii,set_tech_DES_HP);

* - description: Gibt den Anteil des Stroms aus dem Netzbezug an der Deckung der Durchlauferhitzerlast an.
* - type: Float
* - identifier: Netzbezugsanteil zur Durchlauferhitzerlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_EB_gridcov(set_ii,set_tech_DES_EB);

* - description: Gibt den Anteil des Stroms aus der PV-Anlage an der Deckung der Durchlauferhitzerlast an.
* - type: Float
* - identifier: Photovoltaikbezugsanteil zur Durchlauferhitzerlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_EB_pvcov(set_ii,set_tech_DES_EB);

* - description: Gibt den Anteil des Stroms aus der Kraft-Wärme-Kopplungsanlage an der Deckung der Durchlauferhitzerlast an.
* - type: Float
* - identifier: Kraft-Wärme-Kopplungsbezugsanteil zur Durchlauferhitzerlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_EB_chpcov(set_ii,set_tech_DES_EB);

* - description: Gibt den Anteil des Stroms aus dem Stromspeicher an der Deckung der Durchlauferhitzerlast an.
* - type: Float
* - identifier: Stromspeicherbezugsanteil zur Durchlauferhitzerlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_EB_escov(set_ii,set_tech_DES_EB);

* - description: Gibt den Anteil des Stroms aus dem Sonnentank an der Deckung der Durchlauferhitzerlast an.
* - type: Float
* - identifier: Sonnentankbezugsanteil zur Durchlauferhitzerlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_EB_Sonnentankcov(set_ii,set_tech_DES_EB);

* - description: Gibt den Anteil des Stroms aus dem Netzspeicher an der Deckung der Durchlauferhitzerlast an.
* - type: Float
* - identifier: Netzspeicherbezugsanteil zur Durchlauferhitzerlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_EB_NaScov(set_ii,set_tech_DES_EB);

* - description: Gibt den Anteil des Stroms aus der PV-Direktvermarktung an der Deckung der Durchlauferhitzerlast an.
* - type: Float
* - identifier: Direktvermarktungsbezugsanteil zur Durchlauferhitzerlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_EB_PVdirectcov(set_ii,set_tech_DES_EB);

* - description: Gibt die Anzahl der Ladezyklen des Stromspeichers an.
* - type: Float
* - identifier: Anzahl Ladezyklen Stromspeicher
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_N_DES_ES_cycles(set_ii, set_tech_DES_ES)

* - description: Gibt den Füllstand des Stromspeichers an.
* - type: Float
* - identifier: Füllstand Stromspeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_SOC_DES_ES(set_ii,set_tech_DES_ES);

* - description: Gibt den Füllstand des Stromspeichers in Prozent an.
* - type: Float
* - identifier: Füllstand in Prozent Stromspeicher
* - unit:
* - domain: [0,1]
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_SOC_DES_ES_percent(set_ii,set_tech_DES_ES);

* - description: Gibt den Füllstand des Wärmespeichers an.
* - type: Float
* - identifier: Füllstand Wärmespeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_SOC_DES_TS(set_ii,set_tech_DES_TS);

* - description: Gibt den Füllstand des Wärmespeichers in Prozent an.
* - type: Float
* - identifier: Füllstand in Prozent Wärmespeicher
* - unit:
* - domain: [0,1]
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_SOC_DES_TS_percent(set_ii,set_tech_DES_TS);

* - description: Gibt die Speicherverluste des Stromspeichers an.
* - type: Float
* - identifier: Speicherverluste Stromspeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_ES_losses(set_ii,set_tech_DES_ES);

* - description: Gibt die Speicherverluste des Wärmespeichers an.
* - type: Float
* - identifier: Speicherverluste Wärmespeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_DES_TS_losses(set_ii,set_tech_DES_TS);

* - description: Gibt den genutzten Teil der Speicherladeleistung an.
* - type: Float
* - identifier: Nutzungsanteil Speicherladeleistung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_P_DES_ES_chargeuse_percent(set_ii,set_tech_DES_ES);

* - description: Gibt den genutzten Teil der Speicherentladeleistung an.
* - type: Float
* - identifier: Nutzungsanteil Speicherentladeleistung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_P_DES_ES_dischargeuse_percent(set_ii,set_tech_DES_ES);

* - description: Gibt den genutzten Teil der Speicherladeleistung an.
* - type: Float
* - identifier: Nutzungsanteil Speicherladeleistung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_Q_DES_TS_chargeuse_percent(set_ii,set_tech_DES_TS);

* - description: Gibt den genutzten Teil der Speicherentladeleistung an.
* - type: Float
* - identifier: Nutzungsanteil Speicherentladeleistung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_Q_DES_TS_dischargeuse_percent(set_ii,set_tech_DES_TS);

* - description: Gibt die Vorhaltung positiver Regelenergie durch den Stromspeicher an.
* - type: Float
* - identifier: Vorhaltung positive Regelenergie Stromspeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_ES_respos(set_ii,set_tech_DES_ES);

* - description: Gibt die Vorhaltung negativer Regelenergie durch den Stromspeicher an.
* - type: Float
* - identifier: Vorhaltung negative Regelenergie Stromspeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_ES_resneg(set_ii,set_tech_DES_ES);

* - description: Gibt die Vorhaltung positiver Regelenergie durch die Kraft-Wärme-Kopplungsanlage an.
* - type: Float
* - identifier: Vorhaltung positive Regelenergie Kraft-Wärme-Kopplung
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_CHP_respos(set_ii,set_tech_DES_CHP);

* - description: Gibt die Vorhaltung negativer Regelenergie durch die Kraft-Wärme-Kopplungsanlage an.
* - type: Float
* - identifier: Vorhaltung negative Regelenergie Kraft-Wärme-Kopplung
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_CHP_resneg(set_ii,set_tech_DES_CHP);

* - description: Gibt die Vorhaltung negativer Regelenergie durch die Wärmepumpe an.
* - type: Float
* - identifier: Vorhaltung negative Regelenergie Wärmepumpe
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_HP_resneg(set_ii,set_tech_DES_HP);

* - description: Gibt die Vorhaltung negativer Regelenergie durch den Durchlauferhitzer an.
* - type: Float
* - identifier: Vorhaltung negative Regelenergie Durchlauferhitzer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_EB_resneg(set_ii,set_tech_DES_EB);

* - description: Gibt die Eigenerzeugung zur Stromlastdeckung an.
* - type: Float
* - identifier: Eigenerzeugung zur Stromlastdeckung
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_DS_E_selfcons(set_ii,set_side);

* - description: Gibt den Anteil der Eigenerzeugung an der Stromlastdeckung an.
* - type: Float
* - identifier: Eigenerzeugungsanteil zur Stromlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_DS_E_selfcons_percent(set_ii,set_side);

* - description: Gibt den Bezug aus dem Sonnentank zur Stromlastdeckung an.
* - type: Float
* - identifier: Sonnentankbezug zur Stromlastdeckung
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_DS_E_BM_Sonnentankcons(set_ii,set_side);

* - description: Gibt den Anteil des Sonnentankbezugs an der Stromlastdeckung an.
* - type: Float
* - identifier: Sonnentankbezugsanteil zur Stromlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_DS_E_BM_Sonnentankcons_percent(set_ii,set_side);

* - description: Gibt den Bezug aus dem Netzspeicher zur Stromlastdeckung an.
* - type: Float
* - identifier: Netzspeicherbezug zur Stromlastdeckung
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_DS_E_BM_NaScons(set_ii,set_side);

* - description: Gibt den Anteil des Netzspeicherbezugs an der Stromlastdeckung an.
* - type: Float
* - identifier: Netzspeicherbezugsanteil zur Stromlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_DS_E_BM_NaScons_percent(set_ii,set_side);

* - description: Gibt die nichtgenutzte PV-Erzeugung an.
* - type: Float
* - identifier: Abgeregelte PV-Erzeugung
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_PV_down(set_ii,set_tech_DES_PV);

* - description: Gibt den Bezug aus Direkvermarktung zur Stromlastdeckung an.
* - type: Float
* - identifier: Direkvermarktungsbezug zur Stromlastdeckung
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_DS_E_BM_PVdirectcons(set_ii,set_side);

* - description: Gibt den Anteil des Direkvermarktungsbezugs an der Stromlastdeckung an.
* - type: Float
* - identifier: Direkvermarktungsbezugsanteil zur Stromlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_DS_E_BM_PVdirectcons_percent(set_ii,set_side);

* - description: Gibt den Fremdbezug zur Stromlastdeckung an.
* - type: Float
* - identifier: Fremdbezug zur Stromlastdeckung
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_DS_E_extcons(set_ii,set_side);

* - description: Gibt den Anteil des Fremdbezugs an der Stromlastdeckung an.
* - type: Float
* - identifier: Fremdbezugsanteil zur Stromlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_DS_E_extcons_percent(set_ii,set_side);

* - description: Gibt die Eigenerzeugung zur Wärmelastdeckung an.
* - type: Float
* - identifier: Eigenerzeugung zur Wärmelastdeckung
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_DS_W_selfcons(set_ii,set_side);

* - description: Gibt den Anteil der Eigenerzeugung an der Wärmelastdeckung an.
* - type: Float
* - identifier: Eigenerzeugungsanteil zur Wärmelastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_DS_W_selfcons_percent(set_ii,set_side);

* - description: Gibt den Fremdbezug zur Wärmelastdeckung an.
* - type: Float
* - identifier: Fremdbezug zur Wärmelastdeckung
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_DS_W_extcons(set_ii,set_side);

* - description: Gibt den Anteil des Fremdbezugs an der Wärmelastdeckung an.
* - type: Float
* - identifier: Fremdbezugsanteil zur Wärmelastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_DS_W_extcons_percent(set_ii,set_side);

* - description: Gibt die Vergütungshöhe für die Flexibilitätsbereitstellung des Stromspeichers an.
* - type: Float
* - identifier: Flexibilitätserlöse Stromspeicher
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_ES_flexibility(set_ii, set_tech_DES_ES);

* - description: Gibt die Vergütungshöhe für die Flexibilitätsbereitstellung des Wärmespeichers an.
* - type: Float
* - identifier: Flexibilitätserlöse Wärmespeicher
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_TS_flexibility_cust(set_ii, set_tech_DES_TS);

* - description: Gibt die Vergütungshöhe für die Flexibilitätsbereitstellung des Durchlauferhitzers an.
* - type: Float
* - identifier: Flexibilitätserlöse Durchlauferhitzer
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_EB_flexibility_cust(set_ii, set_tech_DES_EB);

* - description: Gibt die Höhe der Einspeisevergütung der PV-Anlage an.
* - type: Float
* - identifier: Einspeisevergütung PV-Anlage
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_PV_trading(set_ii, set_tech_DES_PV);


* - description: Gibt die Vergütungshöhe für die Flexibilitätsbereitstellung der Wärmepumpe an.
* - type: Float
* - identifier: Flexibilitätserlöse Wärmepumpe
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_HP_flexibility_cust(set_ii, set_tech_DES_HP);

* - description: Gibt das Flexibilitätsangebot des Stromspeichers durch das Laden an.
* - type: Float
* - identifier: Flexibilitätsangebot Stromspeicher Laden
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_ES_flexoffer_charge(set_ii, set_tech_DES_ES);

* - description: Gibt das Flexibilitätsangebot des Stromspeichers durch das Entladen an.
* - type: Float
* - identifier: Flexibilitätsangebot Stromspeicher Entladen
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_ES_flexoffer_discharge(set_ii, set_tech_DES_ES);

* - description: Gibt das Flexibilitätsangebot des Wärmespeichers durch das Laden an.
* - type: Float
* - identifier: Flexibilitätsangebot Wärmespeicher Laden
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_DES_TS_flexoffer_charge(set_ii, set_tech_DES_TS);

* - description: Gibt das Flexibilitätsangebot des Wärmespeichers durch das Entladen an.
* - type: Float
* - identifier: Flexibilitätsangebot Wärmespeicher Entladen
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_DES_TS_flexoffer_discharge(set_ii, set_tech_DES_TS);

* - description: Gibt das Flexibilitätsangebot des Durchlauferhitzer an.
* - type: Float
* - identifier: Flexibilitätsangebot Durchlauferhitzer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_EB_flexoffer(set_ii, set_tech_DES_EB);

* - description: Gibt das Flexibilitätsangebot der PV-Anlage an.
* - type: Float
* - identifier: Flexibilitätsangebot PV-Anlage
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_PV_flexoffer(set_ii, set_tech_DES_PV);

* - description: Gibt das Flexibilitätsangebot der Wärmepumpe an.
* - type: Float
* - identifier: Flexibilitätsangebot Wärmepumpe
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_HP_flexoffer(set_ii, set_tech_DES_HP);

* - description: Gibt die Flexibilitätsnachfrage des Stromspeichers an.
* - type: Float
* - identifier: Flexibilitätsnachfrage Stromspeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_ES_flexdemand_cust(set_ii, set_tech_DES_ES);

* - description: Gibt die Flexibilitätsnachfrage des Wärmespeichers an.
* - type: Float
* - identifier: Flexibilitätsnachfrage Wärmespeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_TS_flexdemand_cust(set_ii, set_tech_DES_TS);

* - description: Gibt die Flexibilitätsnachfrage des Durchlauferhitzers an.
* - type: Float
* - identifier: Flexibilitätsnachfrage Durchlauferhitzer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_EB_flexdemand_cust(set_ii, set_tech_DES_EB);

* - description: Gibt die Flexibilitätsnachfrage der PV-Anlage an.
* - type: Float
* - identifier: Flexibilitätsnachfrage PV-Anlage
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_PV_flexdemand_cust(set_ii, set_tech_DES_PV);

* - description: Gibt die Flexibilitätsnachfrage der Wärmepumpe an.
* - type: Float
* - identifier: Flexibilitätsnachfrage Wärmepumpe
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_HP_flexdemand_cust(set_ii, set_tech_DES_HP);

* - description: Ausgabeparameter Strommarkt Arbeitsbilanz
* - type: Float
* - identifier: Strommarkt Arbeitsbilanz
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_TS_trading_spot_energy(set_ii);

* - description: Ausgabeparameter Strommarkt Leistungsbilanz
* - type: Float
* - identifier: Strommarkt Leistungsbilanz
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_TS_trading_spot_power(set_ii);

* - description: Ausgabeparameter Gasmarkt Arbeitsbilanz
* - type: Float
* - identifier: Gasmarkt Arbeitsbilanz
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_TS_trading_gas_energy(set_ii);

* - description: Ausgabeparameter Gasmarkt Leistungsbilanz
* - type: Float
* - identifier: Gasmarkt Leistungsbilanz
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_TS_trading_gas_power(set_ii);

* - description: Gibt den Lastdeckungsgrad der Wärmelast an.
* - type: Float
* - identifier: Lastdeckungsgrad Wärmelast
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_DS_load_cov(set_ii,set_load_DS_W);

* - description: Gibt die technologiespezifischen Gesamtkosten abzüglich der Erlöse an.
* - type: Float
* - identifier: Technologiebilanzierung Gesamtkosten
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, avg
PARAMETER par_out_O_DES_PSS_Total(set_ii,set_pss);

* - description: Gibt die technologiespezifischen Investitionskosten an.
* - type: Float
* - identifier: Technologiebilanzierung Investitionskosten
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, avg
PARAMETER par_out_O_DES_PSS_Cap(set_ii,set_pss);

* - description: Gibt den technologiespezifischen Betriebs- und Wartungsaufwand an.
* - type: Float
* - identifier: Technologiebilanzierung Betriebs- und Wartungsaufwand
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, avg
PARAMETER par_out_O_DES_PSS_OuM(set_ii,set_pss);

* - description: Gibt die technologiespezifischen Installationskosten an.
* - type: Float
* - identifier: Technologiebilanzierung Installationskosten
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, avg
PARAMETER par_out_O_DES_PSS_Ins(set_ii,set_pss);

* - description: Gibt die technologiespezifischen Vergütungserlöse an.
* - type: Float
* - identifier: Technologiebilanzierung Vergütungserlöse
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_PSS_Comp(set_ii,set_pss);

* - description: Gibt die technologiespezifischen Geschäftsmodellerlöse an.
* - type: Float
* - identifier: Technologiebilanzierung Geschäftsmodellerlöse
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_PSS_BMComp(set_ii,set_pss);


* - description: Ausgabeparameter Technologiebilanzierung Stromspeicher
* - type: Float
* - identifier: Technologiebilanzierung Stromspeicher
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_DES_ES_accounting_cust(set_ii, set_tech_DES_ES);

* - description: Gibt die technologiespezifischen Erlöse aus Vergütungszahlungen an.
* - type: Float
* - identifier: Technologiebilanzierung Vergütung
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_DES_TS_accounting_cust(set_ii, set_tech_DES_TS);

* - description: Ausgabeparameter Technologiebilanzierung Durchlauferhitzer
* - type: Float
* - identifier: Technologiebilanzierung Durchlauferhitzer
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_DES_EB_accounting_cust(set_ii, set_tech_DES_EB);

* - description: Gibt die Erlöse der PV-Anlage an.
* - type: Float
* - identifier: Erlöse PV-Anlage
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_DES_PV_accounting_cust(set_ii, set_tech_DES_PV);


* - description: Ausgabeparameter Technologiebilanzierung Wärmepumpe
* - type: Float
* - identifier: Technologiebilanzierung Wärmepumpe
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_DES_HP_accounting_cust(set_ii, set_tech_DES_HP);

* - description: Ausgabeparameter Technologiebilanzierung Erdgasboiler
* - type: Float
* - identifier: Technologiebilanzierung Erdgasboiler
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_DES_NGB_accounting_cust(set_ii, set_tech_DES_NGB);

* - description: Gibt die Stromverkaufserlöse aus der PV-Direktvermarktung an.
* - type: Float
* - identifier: PV-Direktvermarktung Verkaufserlöse
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_BM_PVdirect_cust(set_ii,set_tech_DES_PV);

* - description: Gibt die gelieferte Gesamtenergie aus der PV-Direktvermarktung an.
* - type: Float
* - identifier: PV-Direktvermarktung Gesamtenergie
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_BM_PVdirect_cust(set_ii,set_tech_DES_PV);

* - description: Gibt das Energieangebot aus der PV-Direktvermarktung an.
* - type: Float
* - identifier: PV-Direktvermarktung Energieangebot
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_BM_PVdirect_offer_cust(set_ii,set_tech_DES_PV);

* - description: Gibt den Energieeigenbedarf im Geschäftsmodell "PV-Direktvermarktung" an.
* - type: Float
* - identifier: PV-Direktvermarktung Energieeigenbedarf
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_BM_PVdirect_cons_cust(set_ii,set_tech_DES_PV);

* - description: Gibt die Vergütungshöhe für die Flexibilitätsbereitstellung des Wärmespeichers an.
* - type: Float
* - identifier: Flexibilitätserlöse Wärmespeicher
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_TS_flexibility_orga(set_ii, set_tech_DES_TS);

* - description: Gibt die Vergütungshöhe für die Flexibilitätsbereitstellung des Durchlauferhitzers an.
* - type: Float
* - identifier: Flexibilitätserlöse Durchlauferhitzer
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_EB_flexibility_orga(set_ii, set_tech_DES_EB);

* - description: Gibt die Vergütungshöhe für die Flexibilitätsbereitstellung der Wärmepumpe an.
* - type: Float
* - identifier: Flexibilitätserlöse Wärmepumpe
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_HP_flexibility_orga(set_ii, set_tech_DES_HP);

* - description: Gibt das Flexibilitätsangebot des Stromspeichers an.
* - type: Float
* - identifier: Flexibilitätsangebot Stromspeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_ES_flexoffer_orga(set_ii, set_tech_DES_ES);

* - description: Gibt das Flexibilitätsangebot des Wärmespeichers an.
* - type: Float
* - identifier: Flexibilitätsangebot Wärmespeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_TS_flexoffer_orga(set_ii, set_tech_DES_TS);

* - description: Gibt das Flexibilitätsangebot des Durchlauferhitzers an.
* - type: Float
* - identifier: Flexibilitätsangebot Durchlauferhitzer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_EB_flexoffer_orga(set_ii, set_tech_DES_EB);

* - description: Gibt das Flexibilitätsangebot der PV-Anlage an.
* - type: Float
* - identifier: Flexibilitätsangebot PV-Anlage
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_PV_flexoffer_orga(set_ii, set_tech_DES_PV);

* - description: Gibt das Flexibilitätsangebot der Wärmepumpe an.
* - type: Float
* - identifier: Flexibilitätsangebot Wärmepumpe
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_HP_flexoffer_orga(set_ii, set_tech_DES_HP);

* - description: Gibt die Flexibilitätsnachfrage des Stromspeicher an.
* - type: Float
* - identifier: Flexibilitätsnachfrage Stromspeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_ES_flexdemand_cust(set_ii, set_tech_DES_ES);

* - description: Gibt die Flexibilitätsnachfrage des Wärmespeicher an.
* - type: Float
* - identifier: Flexibilitätsnachfrage Wärmespeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_TS_flexdemand_cust(set_ii, set_tech_DES_TS);

* - description: Gibt die Flexibilitätsnachfrage des Durchlauferhitzer an.
* - type: Float
* - identifier: Flexibilitätsnachfrage Durchlauferhitzer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_EB_flexdemand_cust(set_ii, set_tech_DES_EB);

* - description: Gibt die Flexibilitätsnachfrage der PV-Anlage an.
* - type: Float
* - identifier: Flexibilitätsnachfrage PV-Anlage
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_PV_flexdemand_cust(set_ii, set_tech_DES_PV);

* - description: Gibt die Flexibilitätsnachfrage der Wärmepumpe an.
* - type: Float
* - identifier: Flexibilitätsnachfrage Wärmepumpe
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_HP_flexdemand_cust(set_ii, set_tech_DES_HP);



* - description: Gibt die Vergütungshöhe für die Flexibilitätsbereitstellung der Stromspeicher an.
* - type: Float
* - identifier: Flexibilitätserlöse Stromspeicher
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_DES_ES_accounting_orga(set_ii, set_tech_DES_ES);

* - description: Ausgabeparameter Technologiebilanzierung Wärmespeicher
* - type: Float
* - identifier: Technologiebilanzierung Wärmespeicher
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_DES_TS_accounting_orga(set_ii, set_tech_DES_TS);

* - description: Ausgabeparameter Technologiebilanzierung Durchlauferhitzer
* - type: Float
* - identifier: Technologiebilanzierung Durchlauferhitzer
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_DES_EB_accounting_orga(set_ii, set_tech_DES_EB);

* - description: Gint die Großhandelserlöse der PV-Anlage an.
* - type: Float
* - identifier: Großhandelserlöse PV-Anlage
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_DES_PV_accounting_orga(set_ii, set_tech_DES_PV);


* - description: Ausgabeparameter Technologiebilanzierung Wärmepumpe
* - type: Float
* - identifier: Technologiebilanzierung Wärmepumpe
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_DES_HP_accounting_orga(set_ii, set_tech_DES_HP);

* - description: Ausgabeparameter Technologiebilanzierung Erdgasboiler
* - type: Float
* - identifier: Technologiebilanzierung Erdgasboiler
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_DES_NGB_accounting_orga(set_ii, set_tech_DES_NGB);

* - description: Gibt die Verkaufserlöse aus der PV-Direktvermarktung an.
* - type: Float
* - identifier: PV-Direktvermarktung Verkaufserlöse
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_BM_PVdirect_orga(set_ii,set_tech_DES_PV);

* - description: Gibt das Energieangebot aus der PV-Direktvermarktung an.
* - type: Float
* - identifier: PV-Direktvermarktung Energieangebot
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_BM_PVdirect_offer_orga(set_ii,set_tech_DES_PV);

* - description: Gibt den Eigenstrombedarf aus der PV-Direktvermarktung an.
* - type: Float
* - identifier: PV-Direktvermarktung Energieeigenbedarf
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_BM_PVdirect_cons_orga(set_ii,set_tech_DES_PV);

* - description: Gibt den Eigenstrombedarf als Anteil an der Gesamterzeugung der PV-Direktvermarktung an.
* - type: Float
* - identifier: Energieanteil Eigenbedarf vs. Erzeugung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_DES_PV_ratio_selfvstotal(set_ii,set_tech_DES_PV);

* - description: Gibt die Einspeisung in den Sonnentank als Anteil an der Gesamterzeugung an.
* - type: Float
* - identifier: Energieanteil Sonnentankeinspeisung vs. Erzeugung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_DES_PV_ratio_sonnentankvstotal(set_ii,set_tech_DES_PV);

* - description: Gibt die Einspeisung in den Netzspeicher als Anteil an der Gesamterzeugung an.
* - type: Float
* - identifier: Energieanteil Netzspeichereinspeisung vs. Erzeugung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_DES_PV_ratio_netzspeichervstotal(set_ii,set_tech_DES_PV);

* - description: Gibt den Direktvermarktungsstrom als Anteil an der Gesamterzeugung an.
* - type: Float
* - identifier: Energieanteil Direktvermarktung vs. Erzeugung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_DES_PV_ratio_directvstotal(set_ii,set_tech_DES_PV);

* - description: Gibt die Netzinspeisung als Anteil an der Gesamterzeugung an.
* - type: Float
* - identifier: Energieanteil Netzeinspeisung vs. Erzeugung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_DES_PV_ratio_othervstotal(set_ii,set_tech_DES_PV);

* - description: Gibt die Vergütungshöhe für die Vorhaltung positiver Regelleistung des Stromspeichers an.
* - type: Float
* - identifier: Vergütung Vorhaltung positive Regelenergie Stromspeicher
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_ES_respos(set_ii,set_tech_DES_ES);

* - description: Gibt die Vergütungshöhe für die Vorhaltung negativer Regelleistung des Stromspeichers an.
* - type: Float
* - identifier: Vergütung Vorhaltung negative Regelenergie Stromspeicher
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_ES_resneg(set_ii,set_tech_DES_ES);

* - description: Gibt die Vergütungshöhe für die Vorhaltung positiver Regelleistung der Kraft-Wärme-Kopplungsanlage an.
* - type: Float
* - identifier: Vergütung Vorhaltung positive Regelenergie Kraft-Wärme-Kopplung
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_CHP_resneg(set_ii,set_tech_DES_CHP);

* - description: Gibt die Vergütungshöhe für die Vorhaltung negativer Regelleistung der Kraft-Wärme-Kopplungsanlage an.
* - type: Float
* - identifier: Vergütung Vorhaltung negative Regelenergie Kraft-Wärme-Kopplungsanlage
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_CHP_respos(set_ii,set_tech_DES_CHP);

* - description: Gibt die Vergütungshöhe für die Vorhaltung negativer Regelleistung des Durchlauferhitzers an.
* - type: Float
* - identifier: Vergütung Vorhaltung negative Regelenergie Durchlauferhitzer
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_EB_resneg(set_ii,set_tech_DES_EB);

* - description: Gibt die Vergütungshöhe für die Vorhaltung negativer Regelleistung der Wärmepumpe an.
* - type: Float
* - identifier: Vergütung Vorhaltung negative Regelenergie Wärmepumpe
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_HP_resneg(set_ii,set_tech_DES_HP);

* - description: Gibt die CO2-Emissionen an.
* - type: Float
* - identifier: CO2 Emissionen
* - unit: [tCO2]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_CO2_market_energy(set_ii)

* - description: Gibt die Anzahl der Kunden in einer Kundengruppe an.
* - type: Float
* - identifier: Kundengruppengröße
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_S_DS(set_ii,set_side)
