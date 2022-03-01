* - description: Bitte geben Sie hier die maximale Kapazit�t des W�rmespeichers an
* - type: Float
* - identifier: Maximale Kapazit�t W�rmespeicher
* - unit: [MWh]
* - domain: (0,)
* - default: 0.03
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOC_DES_TS_cap(set_tech_DES_TS) Kapazit�t W�rmespeicher
$LOAD  par_SOC_DES_TS_cap

* - description: Bitte geben Sie hier den maximalen F�llstand des W�rmespeichers an
* - type: Float
* - identifier: Maximaler F�llstand W�rmespeicher
* - unit:
* - domain: [0,1]
* - default: 1
* - validation: par_SOC_DES_TS_max(set_tech_DES_TS) >= par_SOC_DES_TS_min(set_tech_DES_TS)
* - hidden:
* - processing:
PARAMETER par_SOC_DES_TS_max(set_tech_DES_TS) Maximaler F�llstand W�rmespeicher
$LOAD  par_SOC_DES_TS_max

* - description: Bitte geben Sie hier den minimalen F�llstand des W�rmespeichers an
* - type: Float
* - identifier: Minimaler F�llstand W�rmespeicher
* - unit:
* - domain: [0,1]
* - default: 0
* - validation: par_SOC_DES_TS_min(set_tech_DES_TS) <= par_SOC_DES_TS_max(set_tech_DES_TS)
* - hidden:
* - processing:
PARAMETER par_SOC_DES_TS_min(set_tech_DES_TS) Minimaler F�llstand W�rmespeicher
$LOAD  par_SOC_DES_TS_min

* - description: Bitte geben Sie hier die maximale Ladeleistung des W�rmespeichers an
* - type: Float
* - identifier: Maximale Ladeleistung W�rmespeicher
* - unit: [MW]
* - domain: (0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_TS_charge_max(set_tech_DES_TS) Maximale Ladeleistung W�rmespeicher
$LOAD par_Q_DES_TS_charge_max

* - description: Bitte geben Sie hier die maximale Entladeleistung des W�rmespeichers an
* - type: Float
* - identifier: Maximale Entladeleistung W�rmespeicher
* - unit: [MW]
* - domain: (0,)
* - default: 0.02
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_TS_discharge_max(set_tech_DES_TS) Maximale Entladeleistung W�rmespeicher
$LOAD par_Q_DES_TS_discharge_max

* - description: Bitte geben Sie hier den Wirkungsgrad des Ladevorgangs beim W�rmespeicher an
* - type: Float
* - identifier: Laden-Wirkungsgrad W�rmespeicher
* - unit:
* - domain: (0,1]
* - default: 0.95
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_TS_charge(set_tech_DES_TS) Laden-Wirkungsgrad W�rmespeicher
$LOAD par_Eta_DES_TS_charge

* - description: Bitte geben Sie hier den Wirkungsgrad des Entladevorgangs beim W�rmespeicher an
* - type: Float
* - identifier: Entladen-Wirkungsgrad W�rmespeicher
* - unit:
* - domain: (0,1]
* - default: 0.95
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_TS_discharge(set_tech_DES_TS) EntLaden-Wirkungsgrad W�rmespeicher
$LOAD par_Eta_DES_TS_discharge

* - description: Bitte geben Sie hier die anteilig Selbstentladung des W�rmespeichers pro Zeitschritt an
* - type: Float
* - identifier: Selbstentladung pro Zeitschritt W�rmespeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_TS_selfdischarge(set_tech_DES_TS) SelbstentLaden-Wirkungsgrad W�rmespeicher
$LOAD par_Eta_DES_TS_selfdischarge

* - description: Bitte geben Sie hier den j�hrlichen Abnutzungsgrad des W�rmespeichers an
* - type: Float
* - identifier: J�hrlicher Abnutzungsgrad W�rmespeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_TS(set_tech_DES_TS) J�hrlicher Abnutzungsgrad W�rmespeicher
$LOAD par_Wear_DES_TS

* - description: Bitte geben Sie hier die j�hrliche Preisentwicklung des W�rmespeichers an
* - type: Float
* - identifier: J�hrliche Preisentwicklung W�rmespeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_TS(set_tech_DES_TS) J�hrliche Preisentwicklung W�rmespeicher
$LOAD par_Learning_DES_TS

* - description: Bitte geben Sie hier die Lebensdauer des W�rmespeichers in Jahren an
* - type: Integer
* - identifier: Technische Lebensdauer W�rmespeicher
* - unit: [a]
* - domain: [0,50]
* - default: 20
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_TS(set_tech_DES_TS) Technische Lebensdauer W�rmespeicher
$LOAD par_Life_DES_TS

* - description: Bitte geben Sie hier die Investitionskosten f�r den W�rmespeicher an
* - type: Float
* - identifier: Investitionskosten W�rmespeicher
* - unit: [EUR]
* - domain: [0,)
* - default: 3500
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_TS_Cap(set_tech_DES_TS) Investitionskosten W�rmespeicher
$LOAD par_C_DES_TS_Cap

* - description: Bitte geben Sie hier die j�hrliche Kostenentwicklung f�r den W�rmespeicher an
* - type: Boolean
* - identifier: Kostenentwicklung W�rmespeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_TS_Cap(set_tech_DES_TS) Investitionskosten Stromspeicher
$LOAD par_Ctrend_DES_TS_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation des W�rmespeichers entfallen
* - type: Float
* - identifier: Anteilige Installationskosten W�rmespeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_TS_Ins(set_tech_DES_TS) Anteilige Installationskosten W�rmespeicher
$LOAD par_Alpha_DES_TS_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz f�r Wartung und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand W�rmespeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_TS_OuM(set_tech_DES_TS)
$LOAD par_Alpha_DES_TS_OuM

* - description: Bitte geben Sie ein, wie viel Unternehmensf�rderung pro MWh der W�rmespeicher erhalten soll
* - type: Float
* - identifier: Unternehmensf�rderung Kapazit�t W�rmespeicher
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_TS(set_tech_DES_TS) Unternehmensf�rderung Leistung W�rmespeicher
$LOAD par_Inc_DES_TS

* - description: Bitte geben Sie ein, wie viel Prozent der Ladeleistung zur Verf�gung stehen soll
* - type: Float
* - identifier: Prozentuale Verf�gung Ladeleistung
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_TS_charge_utilpercent(set_ii,set_tech_DES_TS) Maximale Ladeleistung Stromspeicher
$LOAD par_Q_DES_TS_charge_utilpercent

* - description: Bitte geben Sie ein, wie viel Prozent der Entladeleistung zur Verf�gung stehen soll
* - type: Float
* - identifier: Prozentuale Verf�gung Entladeleistung
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_TS_discharge_utilpercent(set_ii,set_tech_DES_TS) Maximale Entladeleistung Stromspeicher
$LOAD par_Q_DES_TS_discharge_utilpercent

* - description: Bitte geben Sie ein, wie viel Prozent der Kapazit�t zur Verf�gung stehen soll
* - type: Float
* - identifier: Prozentuale Verf�gung Kapazit�t
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOC_DES_TS_utilpercent(set_ii,set_tech_DES_TS) Maximale Ladeleistung Stromspeicher
$LOAD par_SOC_DES_TS_utilpercent

