* - description: Bitte geben Sie hier die Kapazität des Stromspeichers an
* - type: Float
* - identifier: Kapazität Stromspeicher
* - unit: [MWh]
* - domain: (0,)
* - default: 0.007
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOC_DES_ES_cap(set_tech_DES_ES) Maximale Kapazität Stromspeicher
$LOAD par_SOC_DES_ES_cap

* - description: Bitte geben Sie hier den maximalen Füllstand des Stromspeichers an
* - type: Float
* - identifier: Maximaler Füllstand Stromspeicher
* - unit:
* - domain: [0,1]
* - default: 1
* - validation: par_SOC_DES_ES_max(set_tech_DES_ES) >= par_SOC_DES_ES_min(set_tech_DES_ES)
* - hidden:
* - processing:
PARAMETER par_SOC_DES_ES_max(set_tech_DES_ES) Maximaler Füllstand Stromspeicher
$LOAD par_SOC_DES_ES_max

* - description: Bitte geben Sie hier den minimalen Füllstand des Stromspeichers an
* - type: Float
* - identifier: Minimaler Füllstand Stromspeicher
* - unit:
* - domain: [0,1]
* - default: 0.2
* - validation: par_SOC_DES_ES_min(set_tech_DES_ES) <= par_SOC_DES_ES_max(set_tech_DES_ES)
* - hidden:
* - processing:
PARAMETER par_SOC_DES_ES_min(set_tech_DES_ES) Minimaler Füllstand Stromspeicher
$LOAD par_SOC_DES_ES_min

* - description: Bitte geben Sie hier die maximale Ladeleistung des Stromspeichers an
* - type: Float
* - identifier: Maximale Ladeleistung Stromspeicher
* - unit: [MW]
* - domain: (0,)
* - default: 0.002
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_ES_charge_max(set_tech_DES_ES) Maximale Ladeleistung Stromspeicher
$LOAD par_P_DES_ES_charge_max

* - description: Bitte geben Sie hier die maximale Entladeleistung des Stromspeichers an
* - type: Float
* - identifier: Maximale Entladeleistung Stromspeicher
* - unit: [MW]
* - domain: (0,)
* - default: 0.002
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_ES_discharge_max(set_tech_DES_ES) Maximale Entladeleistung Stromspeicher
$LOAD par_P_DES_ES_discharge_max

* - description: Bitte geben Sie hier den Wirkungsgrad des Ladevorgangs beim Stromspeicher an
* - type: Float
* - identifier: Laden-Wirkungsgrad Elektrischer Speicher
* - unit:
* - domain: (0,1]
* - default: 0.95
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_ES_charge(set_tech_DES_ES) Laden-Wirkungsgrad Elektrischer Speicher
$LOAD par_Eta_DES_ES_charge

* - description: Bitte geben Sie hier den Wirkungsgrad des Enladevorgangs beim Stromspeicher an
* - type: Float
* - identifier: Entladen-Wirkungsgrad Stromspeicher
* - unit:
* - domain: (0,1]
* - default: 0.95
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_ES_discharge(set_tech_DES_ES) Entladen-Wirkungsgrad Stromspeicher
$LOAD par_Eta_DES_ES_discharge

* - description: Bitte geben Sie hier die anteilige Selbstentladung des Stromspeichers pro Zeitschritt an
* - type: Float
* - identifier: Selbstentladung pro Zeitschritt Stromspeicher
* - unit:
* - domain: [0,1]
* - default: 0.99
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_ES_selfdischarge(set_tech_DES_ES) Selbstentladen-Wirkungsgrad Stromspeicher
$LOAD par_Eta_DES_ES_selfdischarge

* - description: Bitte legen Sie hier fest, welcher Anteil der Kapazität des Stromspeichers für die Bereitstellung von Reserveenergie genutzt werden kann
* - type: Boolean
* - identifier: Bereitstellung von Reserveenergie durch Stromspeicher
* - unit:
* - domain: [0|1]
* - default: 1
* - validation:
* - hidden: 1
* - processing:
PARAMETER par_X_E_DES_ES_res(set_tech_DES_ES) Bereitstellung von Reserveenergie durch Stromspeicher
$LOAD par_X_E_DES_ES_res

* - description: Bitte legen Sie hier fest, welcher Anteil der Kapazität des Stromspeichers nur für die Speicherung von eigens erzeugten Strom genutzt werden soll
* - type: Boolean
* - identifier: Optional nur Speicherung Eigenerzeugung durch Stromspeicher ermöglichen
* - unit:
* - domain: [0|1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_E_DES_ES_selfgen(set_tech_DES_ES) Speicheroption Eigenerzeugung oder Netzbezug
$LOAD par_X_E_DES_ES_selfgen

* - description: Bitte geben Sie hier den jährlichen Abnutzungsgrad des Stromspeichers an
* - type: Float
* - identifier: Jährlicher Abnutzungsgrad des Stromspeichers
* - unit:
* - domain: [0,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_ES(set_tech_DES_ES) Jährlicher Abnutzungsgrad des Stromspeichers
$LOAD par_Wear_DES_ES

* - description: Bitte geben Sie hier die jährliche Preisveränderung für den Stromspeicher aufgrund von Lerneffekten an
* - type: Float
* - identifier: Jährliche Preisentwicklung des Stromspeichers
* - unit:
* - domain: [-0.99,0.99]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_ES(set_tech_DES_ES) Jährliche Preisentwicklung des Stromspeichers
$LOAD par_Learning_DES_ES

* - description: Bitte geben Sie hier die Lebensdauer des Stromspeichers in Jahren an
* - type: Integer
* - identifier: Kalendarische Lebensdauer des Stromspeichers
* - unit: [a]
* - domain: (0,50]
* - default: 12
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_ES(set_tech_DES_ES) Kalendarische Lebensdauer des Stromspeichers
$LOAD par_Life_DES_ES

* - description: Bitte geben Sie hier die Investitionskosten für den Stromspeicher an
* - type: Float
* - identifier: Investitionskosten Stromspeicher
* - unit: [EUR]
* - domain: [0,)
* - default: 2780
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_ES_Cap(set_tech_DES_ES) Investitionskosten Stromspeicher
$LOAD par_C_DES_ES_Cap

* - description: Bitte geben Sie hier die jährliche Kostenentwicklung für den Stromspeicher an
* - type: Boolean
* - identifier: Kostenentwicklung Stromspeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_ES_Cap(set_tech_DES_ES) Investitionskosten Stromspeicher
$LOAD par_Ctrend_DES_ES_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation des Stromspeichers entfallen soll
* - type: Float
* - identifier: Anteilige Installationskosten Stromspeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_ES_Ins(set_tech_DES_ES) Anteilige Installationskosten Stromspeicher
$LOAD par_Alpha_DES_ES_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz für Wartung und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand Stromspeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_ES_OuM(set_tech_DES_ES) Anteiliger Betriebs- und Wartungsaufwand Stromspeicher
$LOAD par_Alpha_DES_ES_OuM

* - description: Bitte geben Sie ein, wie viel Unternehmensförderung pro MWh der Stromspeicher erhalten soll
* - type: Float
* - identifier: Unternehmensförderung Leistung Stromspeicher
* - unit: [EUR / MW]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_ES(set_tech_DES_ES) Unternehmensförderung Leistung Stromspeicher
$LOAD par_Inc_DES_ES

* - description: Bitte wählen Sie "Ja", wenn Sie ein gleichzeitiges Laden und Entladen ausschließen möchten
* - type: Boolean
* - identifier: Restriktion simultanes Laden und Entladen
* - unit:
* - domain: [0|1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_E_DES_ES_sim(set_tech_DES_ES) Simultanes Laden und Entladen
$LOAD par_X_E_DES_ES_sim

* - description: Bitte geben Sie ein, wie viel Prozent der Ladeleistung zur Verfügung stehen soll
* - type: Float
* - identifier: Prozentuale Verfügung Ladeleistung
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_ES_charge_utilpercent(set_ii,set_tech_DES_ES) Maximale Ladeleistung Stromspeicher
$LOAD par_P_DES_ES_charge_utilpercent

* - description: Bitte geben Sie ein, wie viel Prozent der Entladeleistung zur Verfügung stehen soll
* - type: Float
* - identifier: Prozentuale Verfügung Entladeleistung
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_ES_discharge_utilpercent(set_ii,set_tech_DES_ES) Maximale Entladeleistung Stromspeicher
$LOAD par_P_DES_ES_discharge_utilpercent

* - description: Bitte geben Sie ein, wie viel Prozent der Kapazität zur Verfügung stehen soll
* - type: Float
* - identifier: Prozentuale Verfügung Kapazität
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOC_DES_ES_utilpercent(set_ii,set_tech_DES_ES) Maximale Ladeleistung Stromspeicher
$LOAD par_SOC_DES_ES_utilpercent


