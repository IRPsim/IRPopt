* - description: Bitte geben Sie hier die maximale Kapazit�t des Chlorspeichers an
* - type: Float
* - identifier: Maximale Kapazit�t Chlorspeicher
* - unit: [MWh]
* - domain: (0,)
* - default: 0.03
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOC_DES_CLS_cap(set_tech_DES_CLS) Kapazit�t Chlorspeicher
$LOAD  par_SOC_DES_CLS_cap

* - description: Bitte geben Sie hier den maximalen F�llstand des Chlorspeichers an
* - type: Float
* - identifier: Maximaler F�llstand Chlorspeicher
* - unit:
* - domain: [0,1]
* - default: 1
* - validation: par_SOC_DES_CLS_max(set_tech_DES_CLS) >= par_SOC_DES_CLS_min(set_tech_DES_CLS)
* - hidden:
* - processing:
PARAMETER par_SOC_DES_CLS_max(set_tech_DES_CLS) Maximaler F�llstand Chlorspeicher
$LOAD  par_SOC_DES_CLS_max

* - description: Bitte geben Sie hier den minimalen F�llstand des Chlorspeichers an
* - type: Float
* - identifier: Minimaler F�llstand Chlorspeicher
* - unit:
* - domain: [0,1]
* - default: 0
* - validation: par_SOC_DES_CLS_min(set_tech_DES_CLS) <= par_SOC_DES_CLS_max(set_tech_DES_CLS)
* - hidden:
* - processing:
PARAMETER par_SOC_DES_CLS_min(set_tech_DES_CLS) Minimaler F�llstand Chlorspeicher
$LOAD  par_SOC_DES_CLS_min

* - description: Bitte geben Sie hier die maximale Ladeleistung des Chlorspeichers an
* - type: Float
* - identifier: Maximale Ladeleistung Chlorspeicher
* - unit: [MW]
* - domain: (0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_CLS_charge_max(set_tech_DES_CLS) Maximale Ladeleistung Chlorspeicher
$LOAD par_P_DES_CLS_charge_max

* - description: Bitte geben Sie hier die maximale Entladeleistung des Chlorspeichers an
* - type: Float
* - identifier: Maximale Entladeleistung Chlorspeicher
* - unit: [MW]
* - domain: (0,)
* - default: 0.02
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_CLS_discharge_max(set_tech_DES_CLS) Maximale Entladeleistung Chlorspeicher
$LOAD par_P_DES_CLS_discharge_max

* - description: Bitte geben Sie hier den Wirkungsgrad des Ladevorgangs beim Chlorspeicher an
* - type: Float
* - identifier: Laden-Wirkungsgrad Chlorspeicher
* - unit:
* - domain: (0,1]
* - default: 0.95
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_CLS_charge(set_tech_DES_CLS) Laden-Wirkungsgrad Chlorspeicher
$LOAD par_Eta_DES_CLS_charge

* - description: Bitte geben Sie hier den Wirkungsgrad des Entladevorgangs beim Chlorspeicher an
* - type: Float
* - identifier: Entladen-Wirkungsgrad Chlorspeicher
* - unit:
* - domain: (0,1]
* - default: 0.95
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_CLS_discharge(set_tech_DES_CLS) EntLaden-Wirkungsgrad Chlorspeicher
$LOAD par_Eta_DES_CLS_discharge

* - description: Bitte geben Sie hier die anteilig Selbstentladung des Chlorspeichers pro Zeitschritt an
* - type: Float
* - identifier: Selbstentladung pro Zeitschritt Chlorspeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_CLS_selfdischarge(set_tech_DES_CLS) SelbstentLaden-Wirkungsgrad Chlorspeicher
$LOAD par_Eta_DES_CLS_selfdischarge

* - description: Bitte geben Sie hier den j�hrlichen Abnutzungsgrad des Chlorspeichers an
* - type: Float
* - identifier: J�hrlicher Abnutzungsgrad Chlorspeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_CLS(set_tech_DES_CLS) J�hrlicher Abnutzungsgrad Chlorspeicher
$LOAD par_Wear_DES_CLS

* - description: Bitte geben Sie hier die j�hrliche Preisentwicklung des Chlorspeichers an
* - type: Float
* - identifier: J�hrliche Preisentwicklung Chlorspeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_CLS(set_tech_DES_CLS) J�hrliche Preisentwicklung Chlorspeicher
$LOAD par_Learning_DES_CLS

* - description: Bitte geben Sie hier die Lebensdauer des Chlorspeichers in Jahren an
* - type: Integer
* - identifier: Technische Lebensdauer Chlorspeicher
* - unit: [a]
* - domain: [0,50]
* - default: 20
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_CLS(set_tech_DES_CLS) Technische Lebensdauer Chlorspeicher
$LOAD par_Life_DES_CLS

* - description: Bitte geben Sie hier die Investitionskosten f�r den Chlorspeicher an
* - type: Float
* - identifier: Investitionskosten Chlorspeicher
* - unit: [EUR]
* - domain: [0,)
* - default: 3500
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_CLS_Cap(set_tech_DES_CLS) Investitionskosten Chlorspeicher
$LOAD par_C_DES_CLS_Cap

* - description: Bitte geben Sie hier die j�hrliche Kostenentwicklung f�r den Chlorspeicher an
* - type: Boolean
* - identifier: Kostenentwicklung Chlorspeicher
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_CLS_Cap(set_tech_DES_CLS) Investitionskosten Chlorspeicher
$LOAD par_Ctrend_DES_CLS_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation des Chlorspeichers entfallen
* - type: Float
* - identifier: Anteilige Installationskosten Chlorspeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_CLS_Ins(set_tech_DES_CLS) Anteilige Installationskosten Chlorspeicher
$LOAD par_Alpha_DES_CLS_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz f�r Wartung und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand Chlorspeicher
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_CLS_OuM(set_tech_DES_CLS)
$LOAD par_Alpha_DES_CLS_OuM

* - description: Bitte geben Sie ein, wie viel Unternehmensf�rderung pro MWh der Chlorspeicher erhalten soll
* - type: Float
* - identifier: Unternehmensf�rderung Kapazit�t Chlorspeicher
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_CLS(set_tech_DES_CLS) Unternehmensf�rderung Leistung Chlorspeicher
$LOAD par_Inc_DES_CLS

* - description: Bitte geben Sie ein, wie viel Prozent der Ladeleistung zur Verf�gung stehen soll
* - type: Float
* - identifier: Prozentuale Verf�gung Ladeleistung
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_CLS_charge_utilpercent(set_ii,set_tech_DES_CLS) Maximale Ladeleistung Chlorspeicher
$LOAD par_P_DES_CLS_charge_utilpercent

* - description: Bitte geben Sie ein, wie viel Prozent der Entladeleistung zur Verf�gung stehen soll
* - type: Float
* - identifier: Prozentuale Verf�gung Entladeleistung
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_CLS_discharge_utilpercent(set_ii,set_tech_DES_CLS) Maximale Entladeleistung Chlorspeicher
$LOAD par_P_DES_CLS_discharge_utilpercent

* - description: Bitte geben Sie ein, wie viel Prozent der Kapazit�t zur Verf�gung stehen soll
* - type: Float
* - identifier: Prozentuale Verf�gung Kapazit�t
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOC_DES_CLS_utilpercent(set_ii,set_tech_DES_CLS) Maximale Ladeleistung Chlorspeicher
$LOAD par_SOC_DES_CLS_utilpercent

* - description: Bitte legen Sie hier fest, ob der Speicher als Tankwagen agieren soll
* - type: Boolean
* - identifier: Festlegung Tankwagenregelung durch Chlorspeicher
* - unit:
* - domain: [0|1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_CL_DES_CLS_tank(set_tech_DES_CLS) Sonderkondition Tankwagen Chlorspeicher
$LOAD par_X_CL_DES_CLS_tank

