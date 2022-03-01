* - description: Gibt den elektrischen Energiefluss zwischen Prosumstorern an.
* - type: Float
* - identifier: Elektrischer Energiefluss zwischen Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromPss_toPss(set_ii,set_pss,set_pss);

* - description: Gibt den thermischen Energiefluss zwischen Prosumstorern an.
* - type: Float
* - identifier: Thermischer Energiefluss zwischen Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromPss_toPss(set_ii,set_pss,set_pss);

* - description: Gibt den Erdgas-Energiefluss zwischen Prosumstorern an.
* - type: Float
* - identifier: Erdgas-Energiefluss zwischen Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_G_fromPss_toPss(set_ii,set_pss,set_pss);

* - description: Gibt den Biomasse-Energiefluss zwischen Prosumstorern an.
* - type: Float
* - identifier: Biomasse-Energiefluss  zwischen Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_B_fromPss_toPss(set_ii,set_pss,set_pss);

* - description: Gibt den Öl-Energiefluss zwischen Prosumstorern an.
* - type: Float
* - identifier: Öl-Energiefluss zwischen Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_O_fromPss_toPss(set_ii,set_pss,set_pss);

* - description: Gibt den Abfall-Energiefluss zwischen Prosumstorern an.
* - type: Float
* - identifier: Abfall-Energiefluss zwischen Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_RF_fromPss_toPss(set_ii,set_pss,set_pss);

* - description: Gibt den Holz-Energiefluss zwischen Prosumstorern an.
* - type: Float
* - identifier: Holz-Energiefluss zwischen Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_T_fromPss_toPss(set_ii,set_pss,set_pss);

* - description: Gibt den Kälte-Energiefluss zwischen Prosumstorer an.
* - type: Float
* - identifier: Kohle-Energiefluss zwischen Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_C_fromPss_toPss(set_ii,set_pss,set_pss);

* - description: Gibt den Braunkohle-Energiefluss zwischen Prosumstorer an.
* - type: Float
* - identifier: Braunkohle-Energiefluss zwischen Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_fromPss_toPss(set_ii,set_pss,set_pss);

* - description: Gibt den Steinkohle-Energiefluss zwischen Prosumstorern an.
* - type: Float
* - identifier: Steinkohle-Energiefluss zwischen Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_HC_fromPss_toPss(set_ii,set_pss,set_pss);

* - description: Gibt die Positive Reservevorhaltung zwischen Prosumstorern an.
* - type: Float
* - identifier: Positive Reservevorhaltung zwischen Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_PR_fromPss_toPss(set_ii,set_pss,set_pss);

* - description: Gibt die Negative Reservevorhaltung zwischen Prosumstorern an.
* - type: Float
* - identifier: Negative Reservevorhaltung zwischen Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_NR_fromPss_toPss(set_ii,set_pss,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Prosumstorer zur Stromlast an.
* - type: Float
* - identifier: Elektrischer-Energiefluss Prosumstorer zu Stromlast
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromPss_toELoad(set_ii,set_side,set_pss);

* - description: Gibt den Wärmeenergiefluss vom Prosumstorer zur thermischen Last an.
* - type: Float
* - identifier: Wärmeenergiefluss Prosumstorer zu Thermische Last
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromPss_toWLoad(set_ii,set_side,set_pss);

* - description: Gibt den Gasenergiefluss vom Prosumstorer zur Erdgaslast an.
* - type: Float
* - identifier: Gasenergiefluss Prosumstorer zu Gast Last
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_G_fromPss_toGLoad(set_ii,set_side,set_pss);



* - description: Gibt den elektrischen Energiefluss vom Stromnetz zur Stromlast an.
* - type: Float
* - identifier: Elektrischer Energiefluss Stromnetz zu Stromlast
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromEGrid_toELoad(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Stromspeicher zur Stromlast an.
* - type: Float
* - identifier: Elektrischer Energiefluss Stromspeicher zu Stromlast
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromES_toELoad(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der PV-Anlage zur Stromlast an.
* - type: Float
* - identifier: Elektrischer Energiefluss PV-Anlage zu Stromlast
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromPV_toELoad(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der Kraft-Wärme-Kopplungsanlage zur Stromlast an.
* - type: Float
* - identifier: Elektrischer Energiefluss Kraft-Wärme-Kopplungsanlage zu Stromlast
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromCHP_toELoad(set_ii,set_side,set_pss);

* - description: Gibt den Wärmeenergiefluss vom Fernwärmenetz zur thermischen Last an.
* - type: Float
* - identifier: Wärmeenergiefluss Fernwärmenetz zu Thermische Last
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromWGrid_toWLoad(set_ii,set_side,set_pss);

* - description: Gibt den Wärmeenergiefluss vom Durchlauferhitzer zur thermischen Last an.
* - type: Float
* - identifier: Wärmeenergiefluss Durchlauferhitzer zu Thermische Last
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromEB_toWLoad(set_ii,set_side,set_pss);

* - description: Gibt den Wärmeenergiefluss vom Gaskessel zur thermischen Last an.
* - type: Float
* - identifier: Wärmeenergiefluss Gaskessel zu Thermische Last
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromNGB_toWLoad(set_ii,set_side,set_pss);

* - description: Gibt den Wärmeenergiefluss von der Wärmepumpe zur thermischen Last an.
* - type: Float
* - identifier: Wärmeenergiefluss Wärmepumpe zu Thermische Last
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromHP_toWLoad(set_ii,set_side,set_pss);

* - description: Gibt den Wärmeenergiefluss vom Wärmespeicher zur thermischen Last an.
* - type: Float
* - identifier: Wärmeenergiefluss Wärmespeicher zu Thermische Last
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromTS_toWLoad(set_ii,set_side,set_pss);

* - description: Gibt den Wärmeenergiefluss von der Kraft-Wärme-Kopplungsanlage zur thermischen Last an.
* - type: Float
* - identifier: Wärmeenergiefluss Kraft-Wärme-Kopplungsanlage zu Thermische Last
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromCHP_toWLoad(set_ii,set_side,set_pss);

* - description: Gibt den Wärmeenergiefluss von der Solarthermieanlage zur thermischen Last an.
* - type: Float
* - identifier: Wärmeenergiefluss Solarthermie zu Thermische Last
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromST_toWLoad(set_ii,set_side,set_pss);

* - description: Gibt den Gasenergiefluss vom Gasnetz zur Erdgaslast an.
* - type: Float
* - identifier: Gasenergiefluss Gasnetz zu Erdgaslast
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_G_fromGGrid_toGLoad(set_ii,set_side,set_pss);

* - description: Gibt den Gasenergiefluss vom Gasnetz zur Kraft-Wärme-Kopplungsanlage an.
* - type: Float
* - identifier: Gasenergiefluss Gasnetz zu Kraft-Wärme-Kopplungsanlage
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_G_fromGGrid_toCHP(set_ii,set_side,set_pss);

* - description: Gibt den Gasenergiefluss vom Gasmarkt zur Kraft-Wärme-Kopplungsanlage an.
* - type: Float
* - identifier: Gasenergiefluss vom Gasmarkt zu Kraft-Wärme-Kopplungsanlage
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_G_fromGMarket_toCHP(set_ii,set_side,set_pss);

* - description: Gibt den Ölenergiefluss vom Ölmarkt zur Kraft-Wärme-Kopplungsanlage an.
* - type: Float
* - identifier: Ölenergiefluss Ölmarktt zu Kraft-Wärme-Kopplungsanlage
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_O_fromGMarket_toCHP(set_ii,set_side,set_pss);

* - description: Gibt den Kohleenergiefluss vom Braunkohlemarkt zur Kraft-Wärme-Kopplungsanlage an.
* - type: Float
* - identifier: Kohleenergiefluss Braunkohlemarkt zu Kraft-Wärme-Kopplungsanlage
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_fromGMarket_toCHP(set_ii,set_side,set_pss);

* - description: Gibt den Kohleenergiefluss vom Steinkohlemarkt zur Kraft-Wärme-Kopplungsanlage an.
* - type: Float
* - identifier: Kohleenergiefluss Steinkohlemarkt zu Kraft-Wärme-Kopplungsanlage
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_HC_fromGMarket_toCHP(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Stromspeicher zum Prosumstorer an.
* - type: Float
* - identifier: Elektrischer Energiefluss Stromspeicher zu Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromES_toPss(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Prosumstorer zum Stromspeicher an.
* - type: Float
* - identifier: Elektrischer Energiefluss Prosumstorer zu Stromspeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromPss_toES(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der PV-Anlage zum Stromspeicher an.
* - type: Float
* - identifier: Elektrischer Energiefluss PV-Anlage zu Stromspeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromPV_toES(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Stromnetz zum Stromspeicher an.
* - type: Float
* - identifier: Elektrischer Energiefluss Stromnetz zu Stromspeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromEGrid_toES(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der Kraft-Wärme-Kopplungsanlage zum Stromspeicher an.
* - type: Float
* - identifier: Elektrischer Energiefluss Kraft-Wärme-Kopplungsanlage zu Stromspeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromCHP_toES(set_ii,set_side,set_pss);

* - description: Gibt die Elektrische Energievorhaltung als Energiefluss des Stromspeichers zum positiven Reservenetz an.
* - type: Float
* - identifier: Elektrische Energievorhaltung Stromspeicher zu Positives Reservenetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromES_toPRGrid(set_ii,set_side,set_pss);

* - description: Gibt die Elektrische Energievorhaltung als Energiefluss des Stromspeichers zum negativen Reservenetz an.
* - type: Float
* - identifier: Elektrische Energievorhaltung Stromspeicher zu Negatives Reservenetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromES_toNRGrid(set_ii,set_side,set_pss);


* - description: Gibt den thermischen Energiefluss vom Wärmespeicher zum Prosumstorer an.
* - type: Float
* - identifier: Thermischer Energiefluss Wärmespeicher zu Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromTS_toPss(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss vom Prosumstorer zum Wärmespeicher an.
* - type: Float
* - identifier: Thermischer Energiefluss Prosumstorer zu Wärmespeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromPss_toTS(set_ii,set_side,set_pss);


* - description: Gibt den thermischen Energiefluss vom Durchlauferhitzer zum Wärmespeicher an.
* - type: Float
* - identifier: Thermischer Energiefluss Durchlauferhitzer zu Wärmespeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromEB_toTS(set_ii,set_side,set_pss);

* - description: Gibt die Elektrische Energievorhaltung als Energiefluss vom Durchlauferhitzer zum positiven Reservenetz an.
* - type: Float
* - identifier: Elektrische Energievorhaltung Durchlauferhitzer zu Positives Reservenetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromEB_toPRGrid(set_ii,set_side,set_pss);

* - description: Gibt die Elektrische Energievorhaltung als Energiefluss vom Durchlauferhitzer zum negativen Reservenetz an.
* - type: Float
* - identifier: Elektrische Energievorhaltung Durchlauferhitzer zu Negatives Reservenetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromEB_toNRGrid(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss vom Gasboiler zum Wärmespeicher an.
* - type: Float
* - identifier: Thermischer Energiefluss Gasboiler zu Wärmespeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromNGB_toTS(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss von der Wärmepumpe zum Wärmespeicher an.
* - type: Float
* - identifier: Thermischer Energiefluss Wärmepumpe zu Wärmespeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromHP_toTS(set_ii,set_side,set_pss);

* - description: Gibt die Elektrische Energievorhaltung als Energiefluss von der Wärmepumpe zum positiven Reservenetz an.
* - type: Float
* - identifier: Elektrische Energievorhaltung Wärmepumpe zu Positives Reservenetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromHP_toPRGrid(set_ii,set_side,set_pss);

* - description: Gibt die Elektrische Energievorhaltung als Energiefluss von der Wärmepumpe zum negativen Reservenetz an.
* - type: Float
* - identifier: Elektrische Energievorhaltung Wärmepumpe zu Negatives Reservenetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromHP_toNRGrid(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss vom Fernwärmenetz zum Wärmespeicher an.
* - type: Float
* - identifier: Thermischer Energiefluss Fernwärmenetz zu Wärmespeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromWGrid_toTS(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss von der Kraft-Wärme-Kopplungsanlage zum Wärmespeicher an.
* - type: Float
* - identifier: Thermischer Energiefluss Kraft-Wärme-Kopplungsanlage zu Wärmespeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromCHP_toTS(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss von der Solarthermieanlage zum Wärmespeicher an.
* - type: Float
* - identifier: Thermischer Energiefluss Solarthermie zu Wärmespeicher
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromST_toTS(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss vom Wärmespeicher zum Fernwärmenetz an.
* - type: Float
* - identifier: Thermischer Energiefluss Wärmespeicher zu Fernwärmenetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromTS_toWGrid(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss vom Elektrodenheizkessel zum Fernwärmenetz an.
* - type: Float
* - identifier: Thermischer Energiefluss Elektrodenheizkessel zu Fernwärmenetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromETB_toWGrid(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss vom Elektrodenheizkessel zum Wärmemarkt an.
* - type: Float
* - identifier: Thermischer Energiefluss Elektrodenheizkessel zu Wärmemarkt
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromETB_toWMarket(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss vom Gaskessel zum Prosumstorer an.
* - type: Float
* - identifier: Thermischer Energiefluss Gaskessel zu Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromNGB_toPss(set_ii,set_side,set_pss);


* - description: Gibt den thermischen Energiefluss von der Kraft-Wärme-Kopplungsanlage zum Prosumstorer
* - type: Float
* - identifier: Thermischer Energiefluss Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromCHP_toPss(set_ii,set_side,set_pss);

* - description: Gibt den Gas-Energiefluss vom Prosumstorer zum Gaskessel an.
* - type: Float
* - identifier: Gas-Energiefluss Prosumstorer zu Gaskessel
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_G_fromPss_toNGB(set_ii,set_side,set_pss);

* - description: Gibt den Gas-Energiefluss vom Gasnetz zur Kraft-Wärme-Kopplungsanlage an.
* - type: Float
* - identifier: Gas-Energiefluss Gasnetz zu Kraft-Wärme-Kopplungsanlage
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_G_fromPss_toCHP(set_ii,set_side,set_pss);

* - description: Gibt den Gas-Energiefluss vom Gasnetz zum Gasboiler an.
* - type: Float
* - identifier: Gas-Energiefluss Gaskessel zu Gasboiler
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_G_fromGGrid_toNGB(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss vom Durchlauferhitzer zum Prosumstorer an.
* - type: Float
* - identifier: Thermischer Energiefluss Durchlauferhitzer zu Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromEB_toPss(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Prosumstorer zum Durchlauferhitzer an.
* - type: Float
* - identifier: Elektrischer Energiefluss Prosumstorer zu Durchlauferhitzer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromPss_toEB(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Stromnetz zum Durchlauferhitzer an.
* - type: Float
* - identifier: Elektrischer Energiefluss Stromnetz zu Durchlauferhitzer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromEGrid_toEB(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Stromspeicher zum Durchlauferhitzer an.
* - type: Float
* - identifier: Elektrischer Energiefluss Stromspeicher zu Durchlauferhitzer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromES_toEB(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der PV-Anlage zum Durchlauferhitzer an.
* - type: Float
* - identifier: Elektrischer Energiefluss PV-Anlage zu Durchlauferhitzer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromPV_toEB(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der Kraft-Wärme-Kopplungsanlage zum Durchlauferhitzer an.
* - type: Float
* - identifier: Elektrischer Energiefluss Kraft-Wärme-Kopplungsanlage zu Durchlauferhitzer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromCHP_toEB(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der PV-Anlage zum Prosumstorer an.
* - type: Float
* - identifier: Elektrischer Energiefluss PV-Anlage zu Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromPV_toPss(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der Kraft-Wärme-Kopplungsanlage zum Prosumstorer an.
* - type: Float
* - identifier: Elektrischer Energiefluss Kraft-Wärme-Kopplungsanlage zu Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromCHP_toPss(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss von der Solarthermieanlage zum Prosumstorer an.
* - type: Float
* - identifier: Thermischer Energiefluss Solarthermie zu Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromST_toPss(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der PV-Anlage zum Stromnetz an.
* - type: Float
* - identifier: Elektrischer Energiefluss PV-Anlage zu Stromnetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromPV_toEGrid(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss von der Wärmepumpe zum Prosumstorer an.
* - type: Float
* - identifier: Thermischer Energiefluss Wärmepumpe zu Prosumstorer
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromHP_toPss(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Prosumstorer zur Wärmepumpe an.
* - type: Float
* - identifier: Elektrischer Energiefluss Prosumstorer zu Wärmepumpe
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromPss_toHP(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Stromnetz zur Wärmepumpe an.
* - type: Float
* - identifier: Elektrischer Energiefluss Stromnetz zu Wärmepumpe
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromEGrid_toHP(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Stromspeicher zur Wärmepumpe an.
* - type: Float
* - identifier: Elektrischer Energiefluss Stromspeicher zu Wärmepumpe
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromES_toHP(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der PV-Anlage zur Wärmepumpe an.
* - type: Float
* - identifier: Elektrischer Energiefluss  PV-Anlage zu Wärmepumpe
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromPV_toHP(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der Kraft-Wärme-Kopplungsanlage zur Wärmepumpe an.
* - type: Float
* - identifier: Elektrischer Energiefluss Kraft-Wärme-Kopplungsanlage zu Wärmepumpe
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromCHP_toHP(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der Windkraftanlage zum Stromnetz an.
* - type: Float
* - identifier: Elektrischer Energiefluss Windkraftanlage zu Stromnetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromWT_toEGrid(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der Windkraftanlage zum Strommarkt an.
* - type: Float
* - identifier: Elektrischer Energiefluss Windkraftanlage zu Strommarkt
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromWT_toEMarket(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der Windkraftanlage zum Elektrodenheizkessel an.
* - type: Float
* - identifier: Elektrischer Energiefluss Windkraftanlage zu Elektrodenheizkessel
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromWT_toETB(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der Windkraftanlage zum Pumpspeicherkraftwerk an.
* - type: Float
* - identifier: Elektrischer Energiefluss Windkraftanlage zu Pumpspeicherkraftwerk
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromWT_toPHS(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung positiver Regelleistung als Energiefluss von der Windkraftanlage zum Regelenergiepool an.
* - type: Float
* - identifier: Vorhaltung positiver Regelleistung durch die Windkraftanlage zu Regelenergiepool
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_PR_fromWT_toRMarket(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung negativer Regelleistung als Energiefluss von der Windkraftanlage zum Regelenergiepool an.
* - type: Float
* - identifier: Negative Vorhaltung Energiefluss Windkraftanlage zu Regelenergiepool
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_NR_fromWT_toRMarket(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung positiver Regelleistung als Energiefluss von der Windkraftanlage zum Regelenergienetz an.
* - type: Float
* - identifier: Positive Vorhaltung Energiefluss Windkraftanlage zu Regelenergienetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_PR_fromWT_toRGrid(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung negativer Regelleistung als Energiefluss von der Windkraftanlage zum Regelenergienetz an.
* - type: Float
* - identifier: Negative Vorhaltung Energiefluss Windkraftanlage zu Regelenergienetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_NR_fromWT_toRGrid(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der PV-Anlage zum Strommarkt an.
* - type: Float
* - identifier: Elektrischer Energiefluss PV-Anlage zu Strommarkt
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromPV_toEMarket(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der PV-Anlage zum Elektrodenheizkessel an.
* - type: Float
* - identifier: Elektrischer Energiefluss PV-Anlage zu Elektrodenheizkessel
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromPV_toETB(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Stromnetz zum Elektrodenheizkessel an.
* - type: Float
* - identifier: Elektrischer Energiefluss Stromnetz zu Elektrodenheizkessel
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromEGrid_toETB(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Strommarkt zum Elektrodenheizkessel an.
* - type: Float
* - identifier: Elektrischer Energiefluss Strommarkt zu Elektrodenheizkessel
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromEMarket_toETB(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Biomassekraftwerk vom Stromnetz zum Elektrodenheizkessel an.
* - type: Float
* - identifier: Elektrischer Energiefluss Biomassekraftwerk zu Elektrodenheizkessel
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromBGP_toETB(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der PV-Anlage zum Pumpspeicherkraftwerk an.
* - type: Float
* - identifier: Elektrischer Energiefluss PV-Anlage zu Pumpspeicherkraftwerke
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromPV_toPHS(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Laufwasserkraftwerk zum Stromnetz an.
* - type: Float
* - identifier: Elektrischer Energiefluss Laufwasserkraftwerk zu Stromnetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromRH_toEGrid(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Laufwasserkraftwerk zum Strommarkt an.
* - type: Float
* - identifier: Elektrischer Energiefluss Laufwasserkraftwerk zu Strommarkt
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromRH_toEMarket(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Laufwasserkraftwerk zum Elektrodenheizkessel an.
* - type: Float
* - identifier: Elektrischer Energiefluss Laufwasserkraftwerk zu Elektrodenheizkessel
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromRH_toETB(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Laufwasserkraftwerk zum Pumpspeicherkraftwerk an.
* - type: Float
* - identifier: Elektrischer Energiefluss Laufwasserkraftwerk zu Pumpspeicherkraftwerke
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromRH_toPHS(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss von der Kraft-Wärme-Kopplungsanlage zum Fernwärmenetz an.
* - type: Float
* - identifier: Thermischer Energiefluss Kraft-Wärme-Kopplungsanlage zu Fernwärmenetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromCHP_toWGrid(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der Kraft-Wärme-Kopplungsanlage zum Stromnetz an.
* - type: Float
* - identifier: Elektrischer Energiefluss Kraft-Wärme-Kopplungsanlage zu Stromnetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromCHP_toEGrid(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der Kraft-Wärme-Kopplungsanlage zum Strommarkt an.
* - type: Float
* - identifier: Elektrischer Energiefluss Kraft-Wärme-Kopplungsanlage zu Strommarkt
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromCHP_toEMarket(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der Kraft-Wärme-Kopplungsanlage zum Elektrodenheizkessel an.
* - type: Float
* - identifier: Elektrischer Energiefluss Kraft-Wärme-Kopplungsanlage zu Elektrodenheizkessel
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromCHP_toETB(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der Kraft-Wärme-Kopplungsanlage zum Pumpspeicherkraftwerk an.
* - type: Float
* - identifier: Elektrischer Energiefluss Kraft-Wärme-Kopplungsanlage zu Pumpspeicherkraftwerke
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromCHP_toPHS(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss von der Kraft-Wärme-Kopplungsanlage zum Wärmemarkt an.
* - type: Float
* - identifier: Thermischer Energiefluss Kraft-Wärme-Kopplungsanlage zu Wärmemarkt
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromCHP_toWMarket(set_ii,set_side,set_pss);

* - description: Gibt den Gas-Energiefluss vom Gasnetz zur Kehrrichtverwertungsanlage an.
* - type: Float
* - identifier: Gas-Energiefluss Gasnetz zu Kehrrichtverwertungsanlage
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_G_fromGGrid_toRC(set_ii,set_side,set_pss);

* - description: Gibt den Gas-Energiefluss vom Gasmarkt zur Kehrrichtverwertungsanlage an.
* - type: Float
* - identifier: Gas-Energiefluss Gasmarkt zu Kehrrichtverwertungsanlage
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_G_fromGMarket_toRC(set_ii,set_side,set_pss);

* - description: Gibt den Abfall-Energiefluss vom Abfallmarkt zur Kehrrichtverwertungsanlage an.
* - type: Float
* - identifier: Abfall-Energiefluss Abfallmarkt zu Kehrrichtverwertungsanlage
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_RF_fromRFMarket_toRC(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss von der Kehrrichtverwertungsanlage zum Fernwärmenetz an.
* - type: Float
* - identifier: Thermischer Energiefluss Kehrrichtverwertungsanlage zu Fernwärmenetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromRC_toWGrid(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss vom Spitzenlastkessel zum Fernwärmenetz an.
* - type: Float
* - identifier: Thermischer Energiefluss Spitzenlastkessel zu Fernwärmenetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromPLB_toWGrid(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss vom Spitzenlastkessel zum Wärmemarkt an.
* - type: Float
* - identifier: Thermischer Energiefluss Spitzenlastkessel zu Wärmemarkt
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromPLB_toWMarket(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der Kehrrichtverwertungsanlage zum Stromnetz an.
* - type: Float
* - identifier: Elektrischer Energiefluss Kehrrichtverwertungsanlage zu Stromnetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromRC_toEGrid(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss von der Kehrrichtverwertungsanlage zum Strommarkt an.
* - type: Float
* - identifier: Elektrischer Energiefluss Kehrrichtverwertungsanlage zu Strommarkt
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromRC_toEMarket(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss von der Kehrrichtverwertungsanlage zum Wärmemarkt an.
* - type: Float
* - identifier: Thermischer Energiefluss Kehrrichtverwertungsanlage zu Wärmemarkt
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_W_fromRC_toWMarket(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss von der Kehrrichtverwertungsanlage zum Elektrodenheizkessel an.
* - type: Float
* - identifier: Thermischer Energiefluss Kehrrichtverwertungsanlage zu Elektrodenheizkessel
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromRC_toETB(set_ii,set_side,set_pss);

* - description: Gibt den thermischen Energiefluss von der Kehrrichtverwertungsanlage zum Pumpspeicherkraftwerk an.
* - type: Float
* - identifier: Thermischer Energiefluss Kehrrichtverwertungsanlage zu Pumpspeicherkraftwerke
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromRC_toPHS(set_ii,set_side,set_pss);

* - description: Gibt den Gas Energiefluss vom Gasnetz zum Pumpspeicherkraftwerk an.
* - type: Float
* - identifier: Gas Energiefluss Gasnetz zu Pumpspeicherkraftwerke
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromPHS_toEGrid(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Stromnetz zum Pumpspeicherkraftwerk an.
* - type: Float
* - identifier: Elektrischer Energiefluss Stromnetz zu Pumpspeicherkraftwerke
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromEGrid_toPHS(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Strommarkt zum Pumpspeicherkraftwerke an.
* - type: Float
* - identifier: Elektrischer Energiefluss Strommarkt zu Pumpspeicherkraftwerke
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromEMarket_toPHS(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Pumpspeicherkraftwerk zum Strommarkt an.
* - type: Float
* - identifier: Elektrischer Energiefluss Pumpspeicherkraftwerk zu Strommarkt
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromPHS_toEMarket(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Pumpspeicherkraftwerk zum Elektrodenheizkessel an.
* - type: Float
* - identifier: Elektrischer Energiefluss Pumpspeicherkraftwerk zu Elektrodenheizkessel
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromPHS_toETB(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Pumpspeicherkraftwerk zum Pumpspeicherkraftwerk an.
* - type: Float
* - identifier: Elektrischer Energiefluss Pumpspeicherkraftwerk zu Pumpspeicherkraftwerke
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromPHS_toPHS(set_ii,set_side,set_pss);

* - description: Gibt den Gasenergiefluss vom Gasnetz zum Kondensationskraftwerke an.
* - type: Float
* - identifier: Gasenergiefluss Gasnetz zu Kondensationskraftwerke
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_G_fromGGrid_toTPS(set_ii,set_side,set_pss);

* - description: Gibt den Gasenergiefluss vom Gasnetz zum Spitzenlastkessel an.
* - type: Float
* - identifier: Gasenergiefluss Gasnetz zu Spitzenlastkessel
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_G_fromGGrid_toPLB(set_ii,set_side,set_pss);

* - description: Gibt den Gasenergiefluss vom Gasmarkt zum Spitzenlastkessel an.
* - type: Float
* - identifier: Gasenergiefluss Gasmarkt zu Spitzenlastkessel
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_G_fromGMarket_toPLB(set_ii,set_side,set_pss);


* - description: Gibt den Gasenergiefluss vom Gasmarkt zum Kondensationskraftwerke an.
* - type: Float
* - identifier: Gasenergiefluss Gasmarkt zu Kondensationskraftwerke
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_G_fromGMarket_toTPS(set_ii,set_side,set_pss);

* - description: Gibt den Ölenergiefluss vom Ölmarkt zum Kondensationskraftwerk an.
* - type: Float
* - identifier: Ölenergiefluss Ölmarktt zu Kondensationskraftwerke
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_O_fromGMarket_toTPS(set_ii,set_side,set_pss);

* - description: Gibt den Kohleenergiefluss vom Braunkohlemarkt zum Kondensationskraftwerk an.
* - type: Float
* - identifier: Kohleenergiefluss Braunkohlemarkt zu Kondensationskraftwerke
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_L_fromGMarket_toTPS(set_ii,set_side,set_pss);

* - description: Gibt den Kohleenergiefluss vom Steinkohlemarkt zum Kondensationskraftwerk an.
* - type: Float
* - identifier: Kohleenergiefluss Steinkohlemarkt zu Kondensationskraftwerke
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_HC_fromGMarket_toTPS(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Kondensationskraftwerk zum Stromnetz an.
* - type: Float
* - identifier: Elektrischer Energiefluss Kondensationskraftwerk zu Stromnetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromTPS_toEGrid(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Kondensationskraftwerk zum Strommarkt an.
* - type: Float
* - identifier: Elektrischer Energiefluss Kondensationskraftwerk zu Strommarkt
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromTPS_toEMarket(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Kondensationskraftwerk zum Elektrodenheizkessel an.
* - type: Float
* - identifier: Elektrischer Energiefluss Kondensationskraftwerk zu Elektrodenheizkessel
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromTPS_toETB(set_ii,set_side,set_pss);

* - description: Gibt den elektrischen Energiefluss vom Kondensationskraftwerk zum Pumpspeicherkraftwerke an.
* - type: Float
* - identifier: Elektrischer Energiefluss Kondensationskraftwerk zu Pumpspeicherkraftwerke
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_E_fromTPS_toPHS(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung positiver Regelleistung als Energiefluss von der PV-Anlage zum Regelenergiepool an.
* - type: Float
* - identifier: Positive Vorhaltung Energiefluss PV-Anlage zu Regelenergiepool
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_PR_fromPV_toRMarket(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung negativer Regelleistung als Energiefluss von der PV-Anlage zum Regelenergiepool an.
* - type: Float
* - identifier: Negative Vorhaltung Energiefluss PV-Anlage zu Regelenergiepool
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_NR_fromPV_toRMarket(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung positiver Regelleistung als Energiefluss von der PV-Anlage zum Regelenergienetz an.
* - type: Float
* - identifier: Positive Vorhaltung Energiefluss PV-Anlage zu Regelenergienetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_PR_fromPV_toRGrid(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung negativer Regelleistung als Energiefluss von der PV-Anlage zum Regelenergienetz an.
* - type: Float
* - identifier: Negative Vorhaltung Energiefluss PV-Anlage zu Regelenergienetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_NR_fromPV_toRGrid(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung positiver Regelleistung als Energiefluss von der PV-Anlage zum Regelenergiepool an.
* - type: Float
* - identifier: Positive Vorhaltung Energiefluss PV-Anlage zu Regelenergiepool
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_PR_fromRH_toRMarket(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung negativer Regelleistung als Energiefluss vom Laufwasserkraftwerk zum Regelenergiepool an.
* - type: Float
* - identifier: Negative Vorhaltung Energiefluss Laufwasserkraftwerk zu Regelenergiepool
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_NR_fromRH_toRMarket(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung positiver Regelleistung als Energiefluss vom Laufwasserkraftwerk zum Regelenergienetz an.
* - type: Float
* - identifier: Positive Vorhaltung Energiefluss Laufwasserkraftwerk zu Regelenergienetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_PR_fromRH_toRGrid(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung negativer Regelleistung als Energiefluss vom Laufwasserkraftwerk zum Regelenergienetz an.
* - type: Float
* - identifier: Negative Vorhaltung Energiefluss Laufwasserkraftwerk zu Regelenergienetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_NR_fromRH_toRGrid(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung positiver Regelleistung als Energiefluss von der Kraft-Wärme-Kopplungsanlage zum Regelenergiepool an.
* - type: Float
* - identifier: Positive Vorhaltung Energiefluss Kraft-Wärme-Kopplungsanlage zu Regelenergiepool
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_PR_fromCHP_toRMarket(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung negativer Regelleistung als Energiefluss von der Kraft-Wärme-Kopplungsanlage zum Regelenergiepool an.
* - type: Float
* - identifier: Negative Vorhaltung Energiefluss Kraft-Wärme-Kopplungsanlage zu Regelenergiepool
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_NR_fromCHP_toRMarket(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung positiver Regelleistung als Energiefluss von der Kraft-Wärme-Kopplungsanlage zum Regelenergienetz an.
* - type: Float
* - identifier: Positive Vorhaltung Energiefluss Kraft-Wärme-Kopplungsanlage zu Regelenergienetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_PR_fromCHP_toRGrid(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung negativer Regelleistung als Energiefluss von der Kraft-Wärme-Kopplungsanlage zum Regelenergienetz an.
* - type: Float
* - identifier: Negative Vorhaltung Energiefluss Kraft-Wärme-Kopplungsanlage zu Regelenergienetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_NR_fromCHP_toRGrid(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung positiver Regelleistung als Energiefluss von der Kehrrichtverwertungsanlage zum Regelenergiepool an.
* - type: Float
* - identifier: Positive Vorhaltung Energiefluss Kehrrichtverwertungsanlage zu Regelenergiepool
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_PR_fromRC_toRMarket(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung negativer Regelleistung als Energiefluss von der Kehrrichtverwertungsanlage zum Regelenergiepool an.
* - type: Float
* - identifier: Negative Vorhaltung Energiefluss Kehrrichtverwertungsanlage zu Regelenergiepool
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_NR_fromRC_toRMarket(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung positiver Regelleistung als Energiefluss von der Kehrrichtverwertungsanlage zum Regelenergienetz an.
* - type: Float
* - identifier: Positive Vorhaltung Energiefluss Kehrrichtverwertungsanlage zu Regelenergienetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_PR_fromRC_toRGrid(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung negativer Regelleistung als Energiefluss von der Kehrrichtverwertungsanlage zum Regelenergienetz an.
* - type: Float
* - identifier: Negative Vorhaltung Energiefluss Kehrrichtverwertungsanlage zu Regelenergienetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_NR_fromRC_toRGrid(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung positiver Regelleistung als Energiefluss vom Pumpspeicherkraftwerk zum Regelenergiepool an.
* - type: Float
* - identifier: Positive Vorhaltung Energiefluss Pumpspeicherkraftwerk zu Regelenergiepool
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_PR_fromPHS_toRMarket(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung negativer Regelleistung als Energiefluss vom Pumpspeicherkraftwerk zum Regelenergiepool an.
* - type: Float
* - identifier: Negative Vorhaltung Energiefluss Pumpspeicherkraftwerk zu Regelenergiepool
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_NR_fromPHS_toRMarket(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung positiver Regelleistung als Energiefluss vom Pumpspeicherkraftwerk zum Regelenergienetz an.
* - type: Float
* - identifier: Positive Vorhaltung Energiefluss Pumpspeicherkraftwerk zu Regelenergienetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_PR_fromPHS_toRGrid(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung negativer Regelleistung als Energiefluss vom Pumpspeicherkraftwerk zum Regelenergienetz an.
* - type: Float
* - identifier: Negative Vorhaltung Energiefluss Pumpspeicherkraftwerk zu Regelenergienetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_NR_fromPHS_toRGrid(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung positiver Regelleistung als Energiefluss vom Kondensationskraftwerk zum Regelenergiepool an.
* - type: Float
* - identifier: Positive Vorhaltung Energiefluss Kondensationskraftwerk zu Regelenergiepool
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_PR_fromTPS_toRMarket(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung negativer Regelleistung als Energiefluss vom Kondensationskraftwerk zum Regelenergiepool an.
* - type: Float
* - identifier: Negative Vorhaltung Energiefluss Kondensationskraftwerk zu Regelenergiepool
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_NR_fromTPS_toRMarket(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung positiver Regelleistung als Energiefluss vom Kondensationskraftwerk zum Regelenergienetz an.
* - type: Float
* - identifier: Positive Vorhaltung Energiefluss Kondensationskraftwerk zu Regelenergienetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_PR_fromTPS_toRGrid(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung negativer Regelleistung als Energiefluss vom Kondensationskraftwerk zum Regelenergienetz an.
* - type: Float
* - identifier: Negative Vorhaltung Energiefluss Kondensationskraftwerk zu Regelenergienetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_NR_fromTPS_toRGrid(set_ii,set_side,set_pss);


* - description: Gibt die Vorhaltung positiver Regelleistung als Energiefluss vom Elektrodenheizkessel zum Regelenergiepool an.
* - type: Float
* - identifier: Positive Vorhaltung Energiefluss Elektrodenheizkessel zu Regelenergiepool
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_PR_fromETB_toRMarket(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung negativer Regelleistung als Energiefluss vom Elektrodenheizkessel zum Regelenergiepool an.
* - type: Float
* - identifier: Negative Vorhaltung Energiefluss Elektrodenheizkessel zu Regelenergiepool
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_NR_fromETB_toRMarket(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung positiver Regelleistung als Energiefluss vom Elektrodenheizkessel zum Regelenergienetz an.
* - type: Float
* - identifier: Positive Vorhaltung Energiefluss Elektrodenheizkessel zu Regelenergienetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_PR_fromETB_toRGrid(set_ii,set_side,set_pss);

* - description: Gibt die Vorhaltung negativer Regelleistung als Energiefluss vom Elektrodenheizkessel zum Regelenergienetz an.
* - type: Float
* - identifier: Negative Vorhaltung Energiefluss Elektrodenheizkessel zu Regelenergienetz
* - unit: [MWh]
* - domain:
* - validation:
* - hidden:
* - overview: 1
* - processing: sum, max, min, avg
PARAMETER par_out_NR_fromETB_toRGrid(set_ii,set_side,set_pss);









