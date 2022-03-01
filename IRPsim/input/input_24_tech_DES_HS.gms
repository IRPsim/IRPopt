* - description: Bitte geben Sie hier die maximale Kapazität des Wasserstoffspeichers an
* - type: Float
* - identifier: Maximale Kapazität Wasserstoffspeicher
* - unit: [MWh]
* - domain: (0,)
* - default: 0.03
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOC_DES_HS_cap(set_tech_DES_HS) Kapazität Wasserstoffspeicher
$LOAD  par_SOC_DES_HS_cap

* - description: Bitte geben Sie hier den maximalen Füllstand des Wasserstoffspeichers an
* - type: Float
* - identifier: Maximaler Füllstand Wasserstoffspeicher
* - unit:
* - domain: [0,1]
* - default: 1
* - validation: par_SOC_DES_HS_max(set_tech_DES_HS) >= par_SOC_DES_HS_min(set_tech_DES_HS)
* - hidden:
* - processing:
PARAMETER par_SOC_DES_HS_max(set_tech_DES_HS) Maximaler Füllstand Wasserstoffspeicher
$LOAD  par_SOC_DES_HS_max

* - description: Bitte geben Sie hier den minimalen Füllstand des Wasserstoffspeichers an
* - type: Float
* - identifier: Minimaler Füllstand Wasserstoffspeicher
* - unit:
* - domain: [0,1]
* - default: 0
* - validation: par_SOC_DES_HS_min(set_tech_DES_HS) <= par_SOC_DES_HS_max(set_tech_DES_HS)
* - hidden:
* - processing:
PARAMETER par_SOC_DES_HS_min(set_tech_DES_HS) Minimaler Füllstand Wasserstoffspeicher
$LOAD  par_SOC_DES_HS_min

* - description: Bitte geben Sie hier die maximale Ladeleistung des Wasserstoffspeichers an
* - type: Float
* - identifier: Maximale Ladeleistung Wasserstoffspeicher
* - unit: [MW]
* - domain: (0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_HS_charge_max(set_tech_DES_HS) Maximale Ladeleistung Wasserstoffspeicher
$LOAD par_P_DES_HS_charge_max

* - description: Bitte geben Sie hier die maximale Entladeleistung des Wasserstoffspeichers an
* - type: Float
* - identifier: Maximale Entladeleistung Wasserstoffspeicher
* - unit: [MW]
* - domain: (0,)
* - default: 0.02
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_HS_discharge_max(set_tech_DES_HS) Maximale Entladeleistung Wasserstoffspeicher
$LOAD par_P_DES_HS_discharge_max

* - description: Bitte geben Sie hier den Wirkungsgrad des Ladevorgangs beim Wasserstoffspeicher an
* - type: Float
* - identifier: Laden-Wirkungsgrad Wasserstoffspeicher
* - unit:
* - domain: (0,1]
* - default: 0.95
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_HS_charge(set_tech_DES_HS) Laden-Wirkungsgrad Wasserstoffspeicher
$LOAD par_Eta_DES_HS_charge

* - description: Bitte geben Sie hier den Wirkungsgrad des Entladevorgangs beim Wasserstoffspeicher an
* - type: Float
* - identifier: Entladen-Wirkungsgrad Wasserstoffspeicher
* - unit:
* - domain: (0,1]
* - default: 0.95
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_HS_discharge(set_tech_DES_HS) EntLaden-Wirkungsgrad Wasserstoffspeicher
$LOAD par_Eta_DES_HS_discharge

* - description: Bitte geben Sie hier die anteilig Selbstentladung des Wasserstoffspeichers pro Zeitschritt an
* - type: Float
* - identifier: Selbstentladung pro Zeitschritt Wasserstoffspeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_HS_selfdischarge(set_tech_DES_HS) SelbstentLaden-Wirkungsgrad Wasserstoffspeicher
$LOAD par_Eta_DES_HS_selfdischarge

* - description: Bitte geben Sie hier den jährlichen Abnutzungsgrad des Wasserstoffspeichers an
* - type: Float
* - identifier: Jährlicher Abnutzungsgrad Wasserstoffspeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_HS(set_tech_DES_HS) Jährlicher Abnutzungsgrad Wasserstoffspeicher
$LOAD par_Wear_DES_HS

* - description: Bitte geben Sie hier die jährliche Preisentwicklung des Wasserstoffspeichers an
* - type: Float
* - identifier: Jährliche Preisentwicklung Wasserstoffspeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_HS(set_tech_DES_HS) Jährliche Preisentwicklung Wasserstoffspeicher
$LOAD par_Learning_DES_HS

* - description: Bitte geben Sie hier die Lebensdauer des Wasserstoffspeichers in Jahren an
* - type: Integer
* - identifier: Technische Lebensdauer Wasserstoffspeicher
* - unit: [a]
* - domain: [0,50]
* - default: 20
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_HS(set_tech_DES_HS) Technische Lebensdauer Wasserstoffspeicher
$LOAD par_Life_DES_HS

* - description: Bitte geben Sie hier die Investitionskosten für den Wasserstoffspeicher an
* - type: Float
* - identifier: Investitionskosten Wasserstoffspeicher
* - unit: [EUR]
* - domain: [0,)
* - default: 3500
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_HS_Cap(set_tech_DES_HS) Investitionskosten Wasserstoffspeicher
$LOAD par_C_DES_HS_Cap

* - description: Bitte geben Sie hier die jährliche Kostenentwicklung für den Wasserstoffspeicher an
* - type: Boolean
* - identifier: Kostenentwicklung Wasserstoffspeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_HS_Cap(set_tech_DES_HS) Investitionskosten Stromspeicher
$LOAD par_Ctrend_DES_HS_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation des Wasserstoffspeichers entfallen
* - type: Float
* - identifier: Anteilige Installationskosten Wasserstoffspeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_HS_Ins(set_tech_DES_HS) Anteilige Installationskosten Wasserstoffspeicher
$LOAD par_Alpha_DES_HS_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz für Wartung und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand Wasserstoffspeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_HS_OuM(set_tech_DES_HS)
$LOAD par_Alpha_DES_HS_OuM

* - description: Bitte geben Sie ein, wie viel Unternehmensförderung pro MWh der Wasserstoffspeicher erhalten soll
* - type: Float
* - identifier: Unternehmensförderung Kapazität Wasserstoffspeicher
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_HS(set_tech_DES_HS) Unternehmensförderung Leistung Wasserstoffspeicher
$LOAD par_Inc_DES_HS

* - description: Bitte geben Sie ein, wie viel Prozent der Ladeleistung zur Verfügung stehen soll
* - type: Float
* - identifier: Prozentuale Verfügung Ladeleistung
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_HS_charge_utilpercent(set_ii,set_tech_DES_HS) Maximale Ladeleistung Stromspeicher
$LOAD par_P_DES_HS_charge_utilpercent

* - description: Bitte geben Sie ein, wie viel Prozent der Entladeleistung zur Verfügung stehen soll
* - type: Float
* - identifier: Prozentuale Verfügung Entladeleistung
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_HS_discharge_utilpercent(set_ii,set_tech_DES_HS) Maximale Entladeleistung Stromspeicher
$LOAD par_P_DES_HS_discharge_utilpercent

* - description: Bitte geben Sie ein, wie viel Prozent der Kapazität zur Verfügung stehen soll
* - type: Float
* - identifier: Prozentuale Verfügung Kapazität
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOC_DES_HS_utilpercent(set_ii,set_tech_DES_HS) Maximale Ladeleistung Stromspeicher
$LOAD par_SOC_DES_HS_utilpercent

