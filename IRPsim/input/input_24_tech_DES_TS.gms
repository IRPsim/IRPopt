* - description: Bitte geben Sie hier die maximale Kapazität des Wärmespeichers an
* - type: Float
* - identifier: Maximale Kapazität Wärmespeicher
* - unit: [MWh]
* - domain: (0,)
* - default: 0.03
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOC_DES_TS_cap(set_tech_DES_TS) Kapazität Wärmespeicher
$LOAD  par_SOC_DES_TS_cap

* - description: Bitte geben Sie hier den maximalen Füllstand des Wärmespeichers an
* - type: Float
* - identifier: Maximaler Füllstand Wärmespeicher
* - unit:
* - domain: [0,1]
* - default: 1
* - validation: par_SOC_DES_TS_max(set_tech_DES_TS) >= par_SOC_DES_TS_min(set_tech_DES_TS)
* - hidden:
* - processing:
PARAMETER par_SOC_DES_TS_max(set_tech_DES_TS) Maximaler Füllstand Wärmespeicher
$LOAD  par_SOC_DES_TS_max

* - description: Bitte geben Sie hier den minimalen Füllstand des Wärmespeichers an
* - type: Float
* - identifier: Minimaler Füllstand Wärmespeicher
* - unit:
* - domain: [0,1]
* - default: 0
* - validation: par_SOC_DES_TS_min(set_tech_DES_TS) <= par_SOC_DES_TS_max(set_tech_DES_TS)
* - hidden:
* - processing:
PARAMETER par_SOC_DES_TS_min(set_tech_DES_TS) Minimaler Füllstand Wärmespeicher
$LOAD  par_SOC_DES_TS_min

* - description: Bitte geben Sie hier die maximale Ladeleistung des Wärmespeichers an
* - type: Float
* - identifier: Maximale Ladeleistung Wärmespeicher
* - unit: [MW]
* - domain: (0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_TS_charge_max(set_tech_DES_TS) Maximale Ladeleistung Wärmespeicher
$LOAD par_Q_DES_TS_charge_max

* - description: Bitte geben Sie hier die maximale Entladeleistung des Wärmespeichers an
* - type: Float
* - identifier: Maximale Entladeleistung Wärmespeicher
* - unit: [MW]
* - domain: (0,)
* - default: 0.02
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_TS_discharge_max(set_tech_DES_TS) Maximale Entladeleistung Wärmespeicher
$LOAD par_Q_DES_TS_discharge_max

* - description: Bitte geben Sie hier den Wirkungsgrad des Ladevorgangs beim Wärmespeicher an
* - type: Float
* - identifier: Laden-Wirkungsgrad Wärmespeicher
* - unit:
* - domain: (0,1]
* - default: 0.95
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_TS_charge(set_tech_DES_TS) Laden-Wirkungsgrad Wärmespeicher
$LOAD par_Eta_DES_TS_charge

* - description: Bitte geben Sie hier den Wirkungsgrad des Entladevorgangs beim Wärmespeicher an
* - type: Float
* - identifier: Entladen-Wirkungsgrad Wärmespeicher
* - unit:
* - domain: (0,1]
* - default: 0.95
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_TS_discharge(set_tech_DES_TS) EntLaden-Wirkungsgrad Wärmespeicher
$LOAD par_Eta_DES_TS_discharge

* - description: Bitte geben Sie hier die anteilig Selbstentladung des Wärmespeichers pro Zeitschritt an
* - type: Float
* - identifier: Selbstentladung pro Zeitschritt Wärmespeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_TS_selfdischarge(set_tech_DES_TS) SelbstentLaden-Wirkungsgrad Wärmespeicher
$LOAD par_Eta_DES_TS_selfdischarge

* - description: Bitte geben Sie hier den jährlichen Abnutzungsgrad des Wärmespeichers an
* - type: Float
* - identifier: Jährlicher Abnutzungsgrad Wärmespeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_TS(set_tech_DES_TS) Jährlicher Abnutzungsgrad Wärmespeicher
$LOAD par_Wear_DES_TS

* - description: Bitte geben Sie hier die jährliche Preisentwicklung des Wärmespeichers an
* - type: Float
* - identifier: Jährliche Preisentwicklung Wärmespeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_TS(set_tech_DES_TS) Jährliche Preisentwicklung Wärmespeicher
$LOAD par_Learning_DES_TS

* - description: Bitte geben Sie hier die Lebensdauer des Wärmespeichers in Jahren an
* - type: Integer
* - identifier: Technische Lebensdauer Wärmespeicher
* - unit: [a]
* - domain: [0,50]
* - default: 20
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_TS(set_tech_DES_TS) Technische Lebensdauer Wärmespeicher
$LOAD par_Life_DES_TS

* - description: Bitte geben Sie hier die Investitionskosten für den Wärmespeicher an
* - type: Float
* - identifier: Investitionskosten Wärmespeicher
* - unit: [EUR]
* - domain: [0,)
* - default: 3500
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_TS_Cap(set_tech_DES_TS) Investitionskosten Wärmespeicher
$LOAD par_C_DES_TS_Cap

* - description: Bitte geben Sie hier die jährliche Kostenentwicklung für den Wärmespeicher an
* - type: Boolean
* - identifier: Kostenentwicklung Wärmespeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_TS_Cap(set_tech_DES_TS) Investitionskosten Stromspeicher
$LOAD par_Ctrend_DES_TS_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation des Wärmespeichers entfallen
* - type: Float
* - identifier: Anteilige Installationskosten Wärmespeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_TS_Ins(set_tech_DES_TS) Anteilige Installationskosten Wärmespeicher
$LOAD par_Alpha_DES_TS_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz für Wartung und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand Wärmespeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_TS_OuM(set_tech_DES_TS)
$LOAD par_Alpha_DES_TS_OuM

* - description: Bitte geben Sie ein, wie viel Unternehmensförderung pro MWh der Wärmespeicher erhalten soll
* - type: Float
* - identifier: Unternehmensförderung Kapazität Wärmespeicher
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_TS(set_tech_DES_TS) Unternehmensförderung Leistung Wärmespeicher
$LOAD par_Inc_DES_TS

* - description: Bitte geben Sie ein, wie viel Prozent der Ladeleistung zur Verfügung stehen soll
* - type: Float
* - identifier: Prozentuale Verfügung Ladeleistung
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_TS_charge_utilpercent(set_ii,set_tech_DES_TS) Maximale Ladeleistung Stromspeicher
$LOAD par_Q_DES_TS_charge_utilpercent

* - description: Bitte geben Sie ein, wie viel Prozent der Entladeleistung zur Verfügung stehen soll
* - type: Float
* - identifier: Prozentuale Verfügung Entladeleistung
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_TS_discharge_utilpercent(set_ii,set_tech_DES_TS) Maximale Entladeleistung Stromspeicher
$LOAD par_Q_DES_TS_discharge_utilpercent

* - description: Bitte geben Sie ein, wie viel Prozent der Kapazität zur Verfügung stehen soll
* - type: Float
* - identifier: Prozentuale Verfügung Kapazität
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOC_DES_TS_utilpercent(set_ii,set_tech_DES_TS) Maximale Ladeleistung Stromspeicher
$LOAD par_SOC_DES_TS_utilpercent

