* - description: Bitte geben Sie hier die maximale Kapazit�t des Gasspeichers an
* - type: Float
* - identifier: Maximale Kapazit�t Gasspeicher
* - unit: [MWh]
* - domain: (0,)
* - default: 0.03
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOC_DES_GS_cap(set_tech_DES_GS) Kapazit�t Gasspeicher
$LOAD  par_SOC_DES_GS_cap

* - description: Bitte geben Sie hier den maximalen F�llstand des Gasspeichers an
* - type: Float
* - identifier: Maximaler F�llstand Gasspeicher
* - unit:
* - domain: [0,1]
* - default: 1
* - validation: par_SOC_DES_GS_max(set_tech_DES_GS) >= par_SOC_DES_GS_min(set_tech_DES_GS)
* - hidden:
* - processing:
PARAMETER par_SOC_DES_GS_max(set_tech_DES_GS) Maximaler F�llstand Gasspeicher
$LOAD  par_SOC_DES_GS_max

* - description: Bitte geben Sie hier den minimalen F�llstand des Gasspeichers an
* - type: Float
* - identifier: Minimaler F�llstand Gasspeicher
* - unit:
* - domain: [0,1]
* - default: 0
* - validation: par_SOC_DES_GS_min(set_tech_DES_GS) <= par_SOC_DES_GS_max(set_tech_DES_GS)
* - hidden:
* - processing:
PARAMETER par_SOC_DES_GS_min(set_tech_DES_GS) Minimaler F�llstand Gasspeicher
$LOAD  par_SOC_DES_GS_min

* - description: Bitte geben Sie hier die maximale Ladeleistung des Gasspeichers an
* - type: Float
* - identifier: Maximale Ladeleistung Gasspeicher
* - unit: [MW]
* - domain: (0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_GS_charge_max(set_tech_DES_GS) Maximale Ladeleistung Gasspeicher
$LOAD par_P_DES_GS_charge_max

* - description: Bitte geben Sie hier die maximale Entladeleistung des Gasspeichers an
* - type: Float
* - identifier: Maximale Entladeleistung Gasspeicher
* - unit: [MW]
* - domain: (0,)
* - default: 0.02
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_GS_discharge_max(set_tech_DES_GS) Maximale Entladeleistung Gasspeicher
$LOAD par_P_DES_GS_discharge_max

* - description: Bitte geben Sie hier den Wirkungsgrad des Ladevorgangs beim Gasspeicher an
* - type: Float
* - identifier: Laden-Wirkungsgrad Gasspeicher
* - unit:
* - domain: (0,1]
* - default: 0.95
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_GS_charge(set_tech_DES_GS) Laden-Wirkungsgrad Gasspeicher
$LOAD par_Eta_DES_GS_charge

* - description: Bitte geben Sie hier den Wirkungsgrad des Entladevorgangs beim Gasspeicher an
* - type: Float
* - identifier: Entladen-Wirkungsgrad Gasspeicher
* - unit:
* - domain: (0,1]
* - default: 0.95
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_GS_discharge(set_tech_DES_GS) EntLaden-Wirkungsgrad Gasspeicher
$LOAD par_Eta_DES_GS_discharge

* - description: Bitte geben Sie hier die anteilig Selbstentladung des Gasspeichers pro Zeitschritt an
* - type: Float
* - identifier: Selbstentladung pro Zeitschritt Gasspeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_GS_selfdischarge(set_tech_DES_GS) SelbstentLaden-Wirkungsgrad Gasspeicher
$LOAD par_Eta_DES_GS_selfdischarge

* - description: Bitte geben Sie hier den j�hrlichen Abnutzungsgrad des Gasspeichers an
* - type: Float
* - identifier: J�hrlicher Abnutzungsgrad Gasspeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_GS(set_tech_DES_GS) J�hrlicher Abnutzungsgrad Gasspeicher
$LOAD par_Wear_DES_GS

* - description: Bitte geben Sie hier die j�hrliche Preisentwicklung des Gasspeichers an
* - type: Float
* - identifier: J�hrliche Preisentwicklung Gasspeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_GS(set_tech_DES_GS) J�hrliche Preisentwicklung Gasspeicher
$LOAD par_Learning_DES_GS

* - description: Bitte geben Sie hier die Lebensdauer des Gasspeichers in Jahren an
* - type: Integer
* - identifier: Technische Lebensdauer Gasspeicher
* - unit: [a]
* - domain: [0,50]
* - default: 20
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_GS(set_tech_DES_GS) Technische Lebensdauer Gasspeicher
$LOAD par_Life_DES_GS

* - description: Bitte geben Sie hier die Investitionskosten f�r den Gasspeicher an
* - type: Float
* - identifier: Investitionskosten Gasspeicher
* - unit: [EUR]
* - domain: [0,)
* - default: 3500
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_GS_Cap(set_tech_DES_GS) Investitionskosten Gasspeicher
$LOAD par_C_DES_GS_Cap

* - description: Bitte geben Sie hier die j�hrliche Kostenentwicklung f�r den Gasspeicher an
* - type: Boolean
* - identifier: Kostenentwicklung Gasspeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_GS_Cap(set_tech_DES_GS) Investitionskosten Stromspeicher
$LOAD par_Ctrend_DES_GS_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation des Gasspeichers entfallen
* - type: Float
* - identifier: Anteilige Installationskosten Gasspeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_GS_Ins(set_tech_DES_GS) Anteilige Installationskosten Gasspeicher
$LOAD par_Alpha_DES_GS_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz f�r Wartung und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand Gasspeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_GS_OuM(set_tech_DES_GS)
$LOAD par_Alpha_DES_GS_OuM

* - description: Bitte geben Sie ein, wie viel Unternehmensf�rderung pro MWh der Gasspeicher erhalten soll
* - type: Float
* - identifier: Unternehmensf�rderung Kapazit�t Gasspeicher
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_GS(set_tech_DES_GS) Unternehmensf�rderung Leistung Gasspeicher
$LOAD par_Inc_DES_GS

* - description: Bitte geben Sie ein, wie viel Prozent der Ladeleistung zur Verf�gung stehen soll
* - type: Float
* - identifier: Prozentuale Verf�gung Ladeleistung
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_GS_charge_utilpercent(set_ii,set_tech_DES_GS) Maximale Ladeleistung Stromspeicher
$LOAD par_P_DES_GS_charge_utilpercent

* - description: Bitte geben Sie ein, wie viel Prozent der Entladeleistung zur Verf�gung stehen soll
* - type: Float
* - identifier: Prozentuale Verf�gung Entladeleistung
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_GS_discharge_utilpercent(set_ii,set_tech_DES_GS) Maximale Entladeleistung Stromspeicher
$LOAD par_P_DES_GS_discharge_utilpercent

* - description: Bitte geben Sie ein, wie viel Prozent der Kapazit�t zur Verf�gung stehen soll
* - type: Float
* - identifier: Prozentuale Verf�gung Kapazit�t
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOC_DES_GS_utilpercent(set_ii,set_tech_DES_GS) Maximale Ladeleistung Stromspeicher
$LOAD par_SOC_DES_GS_utilpercent

