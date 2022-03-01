* - description: Bitte geben Sie hier die maximale Kapazit�t des K�ltespeichers an
* - type: Float
* - identifier: Maximale Kapazit�t K�ltespeicher
* - unit: [MWh]
* - domain: (0,)
* - default: 0.03
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOC_DES_CS_cap(set_tech_DES_CS) Kapazit�t K�ltespeicher
$LOAD  par_SOC_DES_CS_cap

* - description: Bitte geben Sie hier den maximalen F�llstand des K�ltespeichers an
* - type: Float
* - identifier: Maximaler F�llstand K�ltespeicher
* - unit:
* - domain: [0,1]
* - default: 1
* - validation: par_SOC_DES_CS_max(set_tech_DES_CS) >= par_SOC_DES_CS_min(set_tech_DES_CS)
* - hidden:
* - processing:
PARAMETER par_SOC_DES_CS_max(set_tech_DES_CS) Maximaler F�llstand K�ltespeicher
$LOAD  par_SOC_DES_CS_max

* - description: Bitte geben Sie hier den minimalen F�llstand des K�ltespeichers an
* - type: Float
* - identifier: Minimaler F�llstand K�ltespeicher
* - unit:
* - domain: [0,1]
* - default: 0
* - validation: par_SOC_DES_CS_min(set_tech_DES_CS) <= par_SOC_DES_CS_max(set_tech_DES_CS)
* - hidden:
* - processing:
PARAMETER par_SOC_DES_CS_min(set_tech_DES_CS) Minimaler F�llstand K�ltespeicher
$LOAD  par_SOC_DES_CS_min

* - description: Bitte geben Sie hier die maximale Ladeleistung des K�ltespeichers an
* - type: Float
* - identifier: Maximale Ladeleistung K�ltespeicher
* - unit: [MW]
* - domain: (0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_CS_charge_max(set_tech_DES_CS) Maximale Ladeleistung K�ltespeicher
$LOAD par_Q_DES_CS_charge_max

* - description: Bitte geben Sie hier die maximale Entladeleistung des K�ltespeichers an
* - type: Float
* - identifier: Maximale Entladeleistung K�ltespeicher
* - unit: [MW]
* - domain: (0,)
* - default: 0.02
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_CS_discharge_max(set_tech_DES_CS) Maximale Entladeleistung K�ltespeicher
$LOAD par_Q_DES_CS_discharge_max

* - description: Bitte geben Sie hier den Wirkungsgrad des Ladevorgangs beim K�ltespeicher an
* - type: Float
* - identifier: Laden-Wirkungsgrad K�ltespeicher
* - unit:
* - domain: (0,1]
* - default: 0.95
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_CS_charge(set_tech_DES_CS) Laden-Wirkungsgrad K�ltespeicher
$LOAD par_Eta_DES_CS_charge

* - description: Bitte geben Sie hier den Wirkungsgrad des Entladevorgangs beim K�ltespeicher an
* - type: Float
* - identifier: Entladen-Wirkungsgrad K�ltespeicher
* - unit:
* - domain: (0,1]
* - default: 0.95
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_CS_discharge(set_tech_DES_CS) Entladen-Wirkungsgrad K�ltespeicher
$LOAD par_Eta_DES_CS_discharge

* - description: Bitte geben Sie hier die anteilige Selbstentladung des K�ltespeichers pro Zeitschritt an
* - type: Float
* - identifier: Selbstentladung pro Zeitschritt K�ltespeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_CS_selfdischarge(set_tech_DES_CS) Selbstentladen-Wirkungsgrad K�ltespeicher
$LOAD par_Eta_DES_CS_selfdischarge

* - description: Bitte geben Sie hier den j�hrlichen Abnutzungsgrad des K�ltespeichers an
* - type: Float
* - identifier: J�hrlicher Abnutzungsgrad K�ltespeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_CS(set_tech_DES_CS) J�hrlicher Abnutzungsgrad K�ltespeicher
$LOAD par_Wear_DES_CS

* - description: Bitte geben Sie hier die j�hrliche Preisentwicklung des K�ltespeichers an
* - type: Float
* - identifier: J�hrliche Preisentwicklung K�ltespeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_CS(set_tech_DES_CS) J�hrliche Preisentwicklung K�ltespeicher
$LOAD par_Learning_DES_CS

* - description: Bitte geben Sie hier die Lebensdauer des K�ltespeichers in Jahren an
* - type: Integer
* - identifier: Technische Lebensdauer K�ltespeicher
* - unit: [a]
* - domain: [0,50]
* - default: 20
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_CS(set_tech_DES_CS) Technoische Lebensdauer K�ltespeicher
$LOAD par_Life_DES_CS

* - description: Bitte geben Sie hier die anfallenden Investitionskosten f�r den K�ltespeicher an
* - type: Float
* - identifier: Investitionskosten K�ltespeicher
* - unit: [EUR]
* - domain: [0,)
* - default: 3500
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_CS_Cap(set_tech_DES_CS) Investitionskosten K�ltespeicher
$LOAD par_C_DES_CS_Cap

* - description: Bitte geben Sie hier die j�hrliche Kostenentwicklung f�r den K�ltespeicher an
* - type: Boolean
* - identifier: Kostenentwicklung K�ltespeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_CS_Cap(set_tech_DES_CS) Investitionskosten K�ltespeicher
$LOAD par_Ctrend_DES_CS_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation des K�ltespeichers entfallen
* - type: Float
* - identifier: Anteilige Installationskosten K�ltespeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_CS_Ins(set_tech_DES_CS) Anteilige Installationskosten K�ltespeicher
$LOAD par_Alpha_DES_CS_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz f�r Wartung- und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand K�ltespeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_CS_OuM(set_tech_DES_CS)
$LOAD par_Alpha_DES_CS_OuM

* - description: Bitte geben Sie ein, wie viel Unternehmensf�rderung pro MWh der K�ltespeicher erhalten soll
* - type: Float
* - identifier: Unternehmensf�rderung Kapazit�t K�ltespeicher
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_CS(set_tech_DES_CS) Unternehmensf�rderung Leistung K�ltespeicher
$LOAD par_Inc_DES_CS

