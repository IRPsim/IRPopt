* - description: Bitte geben Sie hier die maximale Kapazität des Kältespeichers an
* - type: Float
* - identifier: Maximale Kapazität Kältespeicher
* - unit: [MWh]
* - domain: (0,)
* - default: 0.03
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOC_DES_CS_cap(set_tech_DES_CS) Kapazität Kältespeicher
$LOAD  par_SOC_DES_CS_cap

* - description: Bitte geben Sie hier den maximalen Füllstand des Kältespeichers an
* - type: Float
* - identifier: Maximaler Füllstand Kältespeicher
* - unit:
* - domain: [0,1]
* - default: 1
* - validation: par_SOC_DES_CS_max(set_tech_DES_CS) >= par_SOC_DES_CS_min(set_tech_DES_CS)
* - hidden:
* - processing:
PARAMETER par_SOC_DES_CS_max(set_tech_DES_CS) Maximaler Füllstand Kältespeicher
$LOAD  par_SOC_DES_CS_max

* - description: Bitte geben Sie hier den minimalen Füllstand des Kältespeichers an
* - type: Float
* - identifier: Minimaler Füllstand Kältespeicher
* - unit:
* - domain: [0,1]
* - default: 0
* - validation: par_SOC_DES_CS_min(set_tech_DES_CS) <= par_SOC_DES_CS_max(set_tech_DES_CS)
* - hidden:
* - processing:
PARAMETER par_SOC_DES_CS_min(set_tech_DES_CS) Minimaler Füllstand Kältespeicher
$LOAD  par_SOC_DES_CS_min

* - description: Bitte geben Sie hier die maximale Ladeleistung des Kältespeichers an
* - type: Float
* - identifier: Maximale Ladeleistung Kältespeicher
* - unit: [MW]
* - domain: (0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_CS_charge_max(set_tech_DES_CS) Maximale Ladeleistung Kältespeicher
$LOAD par_Q_DES_CS_charge_max

* - description: Bitte geben Sie hier die maximale Entladeleistung des Kältespeichers an
* - type: Float
* - identifier: Maximale Entladeleistung Kältespeicher
* - unit: [MW]
* - domain: (0,)
* - default: 0.02
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_CS_discharge_max(set_tech_DES_CS) Maximale Entladeleistung Kältespeicher
$LOAD par_Q_DES_CS_discharge_max

* - description: Bitte geben Sie hier den Wirkungsgrad des Ladevorgangs beim Kältespeicher an
* - type: Float
* - identifier: Laden-Wirkungsgrad Kältespeicher
* - unit:
* - domain: (0,1]
* - default: 0.95
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_CS_charge(set_tech_DES_CS) Laden-Wirkungsgrad Kältespeicher
$LOAD par_Eta_DES_CS_charge

* - description: Bitte geben Sie hier den Wirkungsgrad des Entladevorgangs beim Kältespeicher an
* - type: Float
* - identifier: Entladen-Wirkungsgrad Kältespeicher
* - unit:
* - domain: (0,1]
* - default: 0.95
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_CS_discharge(set_tech_DES_CS) Entladen-Wirkungsgrad Kältespeicher
$LOAD par_Eta_DES_CS_discharge

* - description: Bitte geben Sie hier die anteilige Selbstentladung des Kältespeichers pro Zeitschritt an
* - type: Float
* - identifier: Selbstentladung pro Zeitschritt Kältespeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_CS_selfdischarge(set_tech_DES_CS) Selbstentladen-Wirkungsgrad Kältespeicher
$LOAD par_Eta_DES_CS_selfdischarge

* - description: Bitte geben Sie hier den jährlichen Abnutzungsgrad des Kältespeichers an
* - type: Float
* - identifier: Jährlicher Abnutzungsgrad Kältespeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_CS(set_tech_DES_CS) Jährlicher Abnutzungsgrad Kältespeicher
$LOAD par_Wear_DES_CS

* - description: Bitte geben Sie hier die jährliche Preisentwicklung des Kältespeichers an
* - type: Float
* - identifier: Jährliche Preisentwicklung Kältespeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_CS(set_tech_DES_CS) Jährliche Preisentwicklung Kältespeicher
$LOAD par_Learning_DES_CS

* - description: Bitte geben Sie hier die Lebensdauer des Kältespeichers in Jahren an
* - type: Integer
* - identifier: Technische Lebensdauer Kältespeicher
* - unit: [a]
* - domain: [0,50]
* - default: 20
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_CS(set_tech_DES_CS) Technoische Lebensdauer Kältespeicher
$LOAD par_Life_DES_CS

* - description: Bitte geben Sie hier die anfallenden Investitionskosten für den Kältespeicher an
* - type: Float
* - identifier: Investitionskosten Kältespeicher
* - unit: [EUR]
* - domain: [0,)
* - default: 3500
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_CS_Cap(set_tech_DES_CS) Investitionskosten Kältespeicher
$LOAD par_C_DES_CS_Cap

* - description: Bitte geben Sie hier die jährliche Kostenentwicklung für den Kältespeicher an
* - type: Boolean
* - identifier: Kostenentwicklung Kältespeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_CS_Cap(set_tech_DES_CS) Investitionskosten Kältespeicher
$LOAD par_Ctrend_DES_CS_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation des Kältespeichers entfallen
* - type: Float
* - identifier: Anteilige Installationskosten Kältespeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_CS_Ins(set_tech_DES_CS) Anteilige Installationskosten Kältespeicher
$LOAD par_Alpha_DES_CS_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz für Wartung- und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand Kältespeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_CS_OuM(set_tech_DES_CS)
$LOAD par_Alpha_DES_CS_OuM

* - description: Bitte geben Sie ein, wie viel Unternehmensförderung pro MWh der Kältespeicher erhalten soll
* - type: Float
* - identifier: Unternehmensförderung Kapazität Kältespeicher
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_CS(set_tech_DES_CS) Unternehmensförderung Leistung Kältespeicher
$LOAD par_Inc_DES_CS

