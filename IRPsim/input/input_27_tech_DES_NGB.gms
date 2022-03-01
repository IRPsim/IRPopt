* - description: Bitte geben Sie hier die maximale thermische Leistung des Heizkessels an
* - type: Float
* - identifier: Maximale Thermische Leistung des Heizkessels
* - unit: [MW]
* - domain: (0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_NGB_max(set_tech_DES_NGB) Maximale Thermische Leistung des Heizkessels
$LOAD par_Q_DES_NGB_max

* - description: Bitte geben Sie hier den thermischen Wirkungsgrad des Heizkessels an
* - type: Float
* - identifier: Thermischer Wirkungsgrad Heizkessel
* - unit:
* - domain: (0,5]
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_NGB(set_tech_DES_NGB) Wirkungsgrad des Boilermodells
$LOAD par_Eta_DES_NGB

* - description: Bitte geben Sie hier den j�hrlichen Abnutzungsgrad des Heizkessels an
* - type: Float
* - identifier: J�hrlicher Abnutzungsgrad des Heizkessels
* - unit:
* - domain: [0,1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_NGB(set_tech_DES_NGB) J�hrlicher Abnutzungsgrad des Heizkessels
$LOAD par_Wear_DES_NGB

* - description: Bitte geben Sie hier die j�hrliche Preisentwicklung des Heizkessels an
* - type: Float
* - identifier: J�hrliche Preisentwicklung des Heizkessels
* - unit:
* - domain: [-1,1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_NGB(set_tech_DES_NGB) J�hrliche Preisentwicklung W�rmespeicher
$LOAD par_Learning_DES_NGB

* - description: Bitte geben Sie hier die technische Lebensdauer des Heizkessels in Jahren an
* - type: Integer
* - identifier: Technische Lebensdauer Heizkessel
* - unit: [a]
* - domain: [0,50]
* - default: 30
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_NGB(set_tech_DES_NGB) Technische Lebensdauer Heizkessel
$LOAD par_Life_DES_NGB

* - description: Bitte geben Sie hier die anfallenden Investitionskosten f�r den Heizkessel an
* - type: Float
* - identifier: Investitionskosten Heizkessel
* - unit: [EUR]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_NGB_Cap(set_tech_DES_NGB) Investitionskosten Heizkessel
$LOAD par_C_DES_NGB_Cap

* - description: Bitte geben Sie hier die j�hrliche Kostenentwicklung des Heizkessels an
* - type: Boolean
* - identifier: Kostenentwicklung Heizkessel
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_NGB_Cap(set_tech_DES_NGB) Investitionskosten Heizkessel
$LOAD par_Ctrend_DES_NGB_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation des Heizkessels entfallen soll
* - type: Float
* - identifier: Anteilige Installationskosten Heizkessel
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_NGB_Ins(set_tech_DES_NGB) Anteilige Installationskosten Heizkessel
$LOAD par_Alpha_DES_NGB_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz f�r Wartung und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand Heizkessel
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_NGB_OuM(set_tech_DES_NGB) Anteiliger Betriebs- und Wartungsaufwand Heizkessel
$LOAD par_Alpha_DES_NGB_OuM

* - description: Bitte geben Sie ein, wie hoch die Unternehmensf�rderung pro MW f�r den Heizkessel sein soll
* - type: Float
* - identifier: Unternehmensf�rderung Leistung Erdgas Boilers
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_NGB(set_tech_DES_NGB) Unternehmensf�rderung Leistung Erdgas Boilers
$LOAD par_Inc_DES_NGB

* - description: Bitte geben Sie ein, wie viel Prozent der Leistung zur Verf�gung stehen soll
* - type: Float
* - identifier: Prozentuale Verf�gung Leistung
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_NGB_utilpercent(set_ii,set_tech_DES_NGB) Maximale Ladeleistung Stromspeicher
$LOAD par_Q_DES_NGB_utilpercent




