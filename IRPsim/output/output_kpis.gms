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

* - description: Gibt den Anteil des Stroms aus der Kraft-W�rme-Kopplungsanlage an der Stromlastdeckung an.
* - type: Float
* - identifier: Kraft-W�rme-Kopplungsbezugsanteil zur Stromlastdeckung
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

* - description: Gibt den Anteil des Netzbezugs an der Deckung der W�rmepumpenlast an.
* - type: Float
* - identifier: Netzbezugsanteil zur W�rmepumpenlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_HP_gridcov(set_ii,set_tech_DES_HP);

* - description: Gibt den Anteil des Stroms aus der PV-Anlage an der Deckung der W�rmepumpenlast an.
* - type: Float
* - identifier: Photovoltaikbezugsanteil zur W�rmepumpenlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_HP_pvcov(set_ii,set_tech_DES_HP);

* - description: Gibt den Anteil des Stroms aus der Kraft-W�rme-Kopplungsanlage an der Deckung der W�rmepumpenlast an.
* - type: Float
* - identifier: Kraft-W�rme-Kopplungsbezugsanteil zur W�rmepumpenlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_HP_chpcov(set_ii,set_tech_DES_HP);


* - description: Gibt den Anteil des Stroms aus dem Stromspeicher an der Deckung der W�rmepumpenlast an.
* - type: Float
* - identifier: Stromspeicherbezugsanteil zur W�rmepumpenlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_HP_escov(set_ii,set_tech_DES_HP);

* - description: Gibt den Anteil des Stroms aus dem "Sonnentank" an der Deckung der W�rmepumpenlast an.
* - type: Float
* - identifier: Sonnentankbezugsanteil zur W�rmepumpenlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_HP_Sonnentankcov(set_ii,set_tech_DES_HP);

* - description: Gibt den Anteil des Stroms aus dem "Netzspeicher" an der Deckung der W�rmepumpenlast an.
* - type: Float
* - identifier: Netzspeicherbezugsanteil zur W�rmepumpenlastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_E_E_HP_NaScov(set_ii,set_tech_DES_HP);

* - description: Gibt den Anteil des Stroms aus der PV-Direktvermarktung an der Deckung der W�rmepumpenlast an.
* - type: Float
* - identifier: Direktvermarktungsbezugsanteil zur W�rmepumpenlastdeckung
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

* - description: Gibt den Anteil des Stroms aus der Kraft-W�rme-Kopplungsanlage an der Deckung der Durchlauferhitzerlast an.
* - type: Float
* - identifier: Kraft-W�rme-Kopplungsbezugsanteil zur Durchlauferhitzerlastdeckung
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

* - description: Gibt den F�llstand des Stromspeichers an.
* - type: Float
* - identifier: F�llstand Stromspeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_SOC_DES_ES(set_ii,set_tech_DES_ES);

* - description: Gibt den F�llstand des Stromspeichers in Prozent an.
* - type: Float
* - identifier: F�llstand in Prozent Stromspeicher
* - unit:
* - domain: [0,1]
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_SOC_DES_ES_percent(set_ii,set_tech_DES_ES);

* - description: Gibt den F�llstand des W�rmespeichers an.
* - type: Float
* - identifier: F�llstand W�rmespeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: max, min, avg
PARAMETER par_out_SOC_DES_TS(set_ii,set_tech_DES_TS);

* - description: Gibt den F�llstand des W�rmespeichers in Prozent an.
* - type: Float
* - identifier: F�llstand in Prozent W�rmespeicher
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

* - description: Gibt die Speicherverluste des W�rmespeichers an.
* - type: Float
* - identifier: Speicherverluste W�rmespeicher
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

* - description: Gibt die Vorhaltung positiver Regelenergie durch die Kraft-W�rme-Kopplungsanlage an.
* - type: Float
* - identifier: Vorhaltung positive Regelenergie Kraft-W�rme-Kopplung
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_CHP_respos(set_ii,set_tech_DES_CHP);

* - description: Gibt die Vorhaltung negativer Regelenergie durch die Kraft-W�rme-Kopplungsanlage an.
* - type: Float
* - identifier: Vorhaltung negative Regelenergie Kraft-W�rme-Kopplung
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_CHP_resneg(set_ii,set_tech_DES_CHP);

* - description: Gibt die Vorhaltung negativer Regelenergie durch die W�rmepumpe an.
* - type: Float
* - identifier: Vorhaltung negative Regelenergie W�rmepumpe
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

* - description: Gibt die Eigenerzeugung zur W�rmelastdeckung an.
* - type: Float
* - identifier: Eigenerzeugung zur W�rmelastdeckung
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_DS_W_selfcons(set_ii,set_side);

* - description: Gibt den Anteil der Eigenerzeugung an der W�rmelastdeckung an.
* - type: Float
* - identifier: Eigenerzeugungsanteil zur W�rmelastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_DS_W_selfcons_percent(set_ii,set_side);

* - description: Gibt den Fremdbezug zur W�rmelastdeckung an.
* - type: Float
* - identifier: Fremdbezug zur W�rmelastdeckung
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_DS_W_extcons(set_ii,set_side);

* - description: Gibt den Anteil des Fremdbezugs an der W�rmelastdeckung an.
* - type: Float
* - identifier: Fremdbezugsanteil zur W�rmelastdeckung
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_DS_W_extcons_percent(set_ii,set_side);

* - description: Gibt die Verg�tungsh�he f�r die Flexibilit�tsbereitstellung des Stromspeichers an.
* - type: Float
* - identifier: Flexibilit�tserl�se Stromspeicher
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_ES_flexibility(set_ii, set_tech_DES_ES);

* - description: Gibt die Verg�tungsh�he f�r die Flexibilit�tsbereitstellung des W�rmespeichers an.
* - type: Float
* - identifier: Flexibilit�tserl�se W�rmespeicher
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_TS_flexibility_cust(set_ii, set_tech_DES_TS);

* - description: Gibt die Verg�tungsh�he f�r die Flexibilit�tsbereitstellung des Durchlauferhitzers an.
* - type: Float
* - identifier: Flexibilit�tserl�se Durchlauferhitzer
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_EB_flexibility_cust(set_ii, set_tech_DES_EB);

* - description: Gibt die H�he der Einspeiseverg�tung der PV-Anlage an.
* - type: Float
* - identifier: Einspeiseverg�tung PV-Anlage
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_PV_trading(set_ii, set_tech_DES_PV);


* - description: Gibt die Verg�tungsh�he f�r die Flexibilit�tsbereitstellung der W�rmepumpe an.
* - type: Float
* - identifier: Flexibilit�tserl�se W�rmepumpe
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_HP_flexibility_cust(set_ii, set_tech_DES_HP);

* - description: Gibt das Flexibilit�tsangebot des Stromspeichers durch das Laden an.
* - type: Float
* - identifier: Flexibilit�tsangebot Stromspeicher Laden
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_ES_flexoffer_charge(set_ii, set_tech_DES_ES);

* - description: Gibt das Flexibilit�tsangebot des Stromspeichers durch das Entladen an.
* - type: Float
* - identifier: Flexibilit�tsangebot Stromspeicher Entladen
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_ES_flexoffer_discharge(set_ii, set_tech_DES_ES);

* - description: Gibt das Flexibilit�tsangebot des W�rmespeichers durch das Laden an.
* - type: Float
* - identifier: Flexibilit�tsangebot W�rmespeicher Laden
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_DES_TS_flexoffer_charge(set_ii, set_tech_DES_TS);

* - description: Gibt das Flexibilit�tsangebot des W�rmespeichers durch das Entladen an.
* - type: Float
* - identifier: Flexibilit�tsangebot W�rmespeicher Entladen
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_DES_TS_flexoffer_discharge(set_ii, set_tech_DES_TS);

* - description: Gibt das Flexibilit�tsangebot des Durchlauferhitzer an.
* - type: Float
* - identifier: Flexibilit�tsangebot Durchlauferhitzer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_EB_flexoffer(set_ii, set_tech_DES_EB);

* - description: Gibt das Flexibilit�tsangebot der PV-Anlage an.
* - type: Float
* - identifier: Flexibilit�tsangebot PV-Anlage
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_PV_flexoffer(set_ii, set_tech_DES_PV);

* - description: Gibt das Flexibilit�tsangebot der W�rmepumpe an.
* - type: Float
* - identifier: Flexibilit�tsangebot W�rmepumpe
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_HP_flexoffer(set_ii, set_tech_DES_HP);

* - description: Gibt die Flexibilit�tsnachfrage des Stromspeichers an.
* - type: Float
* - identifier: Flexibilit�tsnachfrage Stromspeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_ES_flexdemand_cust(set_ii, set_tech_DES_ES);

* - description: Gibt die Flexibilit�tsnachfrage des W�rmespeichers an.
* - type: Float
* - identifier: Flexibilit�tsnachfrage W�rmespeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_TS_flexdemand_cust(set_ii, set_tech_DES_TS);

* - description: Gibt die Flexibilit�tsnachfrage des Durchlauferhitzers an.
* - type: Float
* - identifier: Flexibilit�tsnachfrage Durchlauferhitzer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_EB_flexdemand_cust(set_ii, set_tech_DES_EB);

* - description: Gibt die Flexibilit�tsnachfrage der PV-Anlage an.
* - type: Float
* - identifier: Flexibilit�tsnachfrage PV-Anlage
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_PV_flexdemand_cust(set_ii, set_tech_DES_PV);

* - description: Gibt die Flexibilit�tsnachfrage der W�rmepumpe an.
* - type: Float
* - identifier: Flexibilit�tsnachfrage W�rmepumpe
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

* - description: Gibt den Lastdeckungsgrad der W�rmelast an.
* - type: Float
* - identifier: Lastdeckungsgrad W�rmelast
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_DS_load_cov(set_ii,set_load_DS_W);

* - description: Gibt die technologiespezifischen Gesamtkosten abz�glich der Erl�se an.
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

* - description: Gibt die technologiespezifischen Verg�tungserl�se an.
* - type: Float
* - identifier: Technologiebilanzierung Verg�tungserl�se
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_PSS_Comp(set_ii,set_pss);

* - description: Gibt die technologiespezifischen Gesch�ftsmodellerl�se an.
* - type: Float
* - identifier: Technologiebilanzierung Gesch�ftsmodellerl�se
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

* - description: Gibt die technologiespezifischen Erl�se aus Verg�tungszahlungen an.
* - type: Float
* - identifier: Technologiebilanzierung Verg�tung
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

* - description: Gibt die Erl�se der PV-Anlage an.
* - type: Float
* - identifier: Erl�se PV-Anlage
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_DES_PV_accounting_cust(set_ii, set_tech_DES_PV);


* - description: Ausgabeparameter Technologiebilanzierung W�rmepumpe
* - type: Float
* - identifier: Technologiebilanzierung W�rmepumpe
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

* - description: Gibt die Stromverkaufserl�se aus der PV-Direktvermarktung an.
* - type: Float
* - identifier: PV-Direktvermarktung Verkaufserl�se
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

* - description: Gibt den Energieeigenbedarf im Gesch�ftsmodell "PV-Direktvermarktung" an.
* - type: Float
* - identifier: PV-Direktvermarktung Energieeigenbedarf
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_BM_PVdirect_cons_cust(set_ii,set_tech_DES_PV);

* - description: Gibt die Verg�tungsh�he f�r die Flexibilit�tsbereitstellung des W�rmespeichers an.
* - type: Float
* - identifier: Flexibilit�tserl�se W�rmespeicher
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_TS_flexibility_orga(set_ii, set_tech_DES_TS);

* - description: Gibt die Verg�tungsh�he f�r die Flexibilit�tsbereitstellung des Durchlauferhitzers an.
* - type: Float
* - identifier: Flexibilit�tserl�se Durchlauferhitzer
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_EB_flexibility_orga(set_ii, set_tech_DES_EB);

* - description: Gibt die Verg�tungsh�he f�r die Flexibilit�tsbereitstellung der W�rmepumpe an.
* - type: Float
* - identifier: Flexibilit�tserl�se W�rmepumpe
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_HP_flexibility_orga(set_ii, set_tech_DES_HP);

* - description: Gibt das Flexibilit�tsangebot des Stromspeichers an.
* - type: Float
* - identifier: Flexibilit�tsangebot Stromspeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_ES_flexoffer_orga(set_ii, set_tech_DES_ES);

* - description: Gibt das Flexibilit�tsangebot des W�rmespeichers an.
* - type: Float
* - identifier: Flexibilit�tsangebot W�rmespeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_TS_flexoffer_orga(set_ii, set_tech_DES_TS);

* - description: Gibt das Flexibilit�tsangebot des Durchlauferhitzers an.
* - type: Float
* - identifier: Flexibilit�tsangebot Durchlauferhitzer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_EB_flexoffer_orga(set_ii, set_tech_DES_EB);

* - description: Gibt das Flexibilit�tsangebot der PV-Anlage an.
* - type: Float
* - identifier: Flexibilit�tsangebot PV-Anlage
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_PV_flexoffer_orga(set_ii, set_tech_DES_PV);

* - description: Gibt das Flexibilit�tsangebot der W�rmepumpe an.
* - type: Float
* - identifier: Flexibilit�tsangebot W�rmepumpe
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_HP_flexoffer_orga(set_ii, set_tech_DES_HP);

* - description: Gibt die Flexibilit�tsnachfrage des Stromspeicher an.
* - type: Float
* - identifier: Flexibilit�tsnachfrage Stromspeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_ES_flexdemand_cust(set_ii, set_tech_DES_ES);

* - description: Gibt die Flexibilit�tsnachfrage des W�rmespeicher an.
* - type: Float
* - identifier: Flexibilit�tsnachfrage W�rmespeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_TS_flexdemand_cust(set_ii, set_tech_DES_TS);

* - description: Gibt die Flexibilit�tsnachfrage des Durchlauferhitzer an.
* - type: Float
* - identifier: Flexibilit�tsnachfrage Durchlauferhitzer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_EB_flexdemand_cust(set_ii, set_tech_DES_EB);

* - description: Gibt die Flexibilit�tsnachfrage der PV-Anlage an.
* - type: Float
* - identifier: Flexibilit�tsnachfrage PV-Anlage
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_PV_flexdemand_cust(set_ii, set_tech_DES_PV);

* - description: Gibt die Flexibilit�tsnachfrage der W�rmepumpe an.
* - type: Float
* - identifier: Flexibilit�tsnachfrage W�rmepumpe
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_DES_HP_flexdemand_cust(set_ii, set_tech_DES_HP);



* - description: Gibt die Verg�tungsh�he f�r die Flexibilit�tsbereitstellung der Stromspeicher an.
* - type: Float
* - identifier: Flexibilit�tserl�se Stromspeicher
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_DES_ES_accounting_orga(set_ii, set_tech_DES_ES);

* - description: Ausgabeparameter Technologiebilanzierung W�rmespeicher
* - type: Float
* - identifier: Technologiebilanzierung W�rmespeicher
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

* - description: Gint die Gro�handelserl�se der PV-Anlage an.
* - type: Float
* - identifier: Gro�handelserl�se PV-Anlage
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_DES_PV_accounting_orga(set_ii, set_tech_DES_PV);


* - description: Ausgabeparameter Technologiebilanzierung W�rmepumpe
* - type: Float
* - identifier: Technologiebilanzierung W�rmepumpe
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

* - description: Gibt die Verkaufserl�se aus der PV-Direktvermarktung an.
* - type: Float
* - identifier: PV-Direktvermarktung Verkaufserl�se
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

* - description: Gibt die Verg�tungsh�he f�r die Vorhaltung positiver Regelleistung des Stromspeichers an.
* - type: Float
* - identifier: Verg�tung Vorhaltung positive Regelenergie Stromspeicher
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_ES_respos(set_ii,set_tech_DES_ES);

* - description: Gibt die Verg�tungsh�he f�r die Vorhaltung negativer Regelleistung des Stromspeichers an.
* - type: Float
* - identifier: Verg�tung Vorhaltung negative Regelenergie Stromspeicher
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_ES_resneg(set_ii,set_tech_DES_ES);

* - description: Gibt die Verg�tungsh�he f�r die Vorhaltung positiver Regelleistung der Kraft-W�rme-Kopplungsanlage an.
* - type: Float
* - identifier: Verg�tung Vorhaltung positive Regelenergie Kraft-W�rme-Kopplung
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_CHP_resneg(set_ii,set_tech_DES_CHP);

* - description: Gibt die Verg�tungsh�he f�r die Vorhaltung negativer Regelleistung der Kraft-W�rme-Kopplungsanlage an.
* - type: Float
* - identifier: Verg�tung Vorhaltung negative Regelenergie Kraft-W�rme-Kopplungsanlage
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_CHP_respos(set_ii,set_tech_DES_CHP);

* - description: Gibt die Verg�tungsh�he f�r die Vorhaltung negativer Regelleistung des Durchlauferhitzers an.
* - type: Float
* - identifier: Verg�tung Vorhaltung negative Regelenergie Durchlauferhitzer
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_I_DES_EB_resneg(set_ii,set_tech_DES_EB);

* - description: Gibt die Verg�tungsh�he f�r die Vorhaltung negativer Regelleistung der W�rmepumpe an.
* - type: Float
* - identifier: Verg�tung Vorhaltung negative Regelenergie W�rmepumpe
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
* - identifier: Kundengruppengr��e
* - unit:
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_S_DS(set_ii,set_side)
