* - description: Bitte geben Sie hier die maximale thermische Leistung des Brennstoffzelles an
* - type: Float
* - identifier: Maximale Thermische Leistung des Brennstoffzelles
* - unit: [MW]
* - domain: (0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_FC_max(set_tech_DES_FC) Maximale Thermische Leistung des Brennstoffzelles
$LOAD par_P_DES_FC_max

* - description: Bitte geben Sie hier den thermischen Wirkungsgrad des Brennstoffzelles an
* - type: Float
* - identifier: Thermischer Wirkungsgrad Brennstoffzelle
* - unit:
* - domain: (0,5]
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_FC(set_tech_DES_FC) Wirkungsgrad des Boilermodells
$LOAD par_Eta_DES_FC

* - description: Bitte geben Sie hier den j�hrlichen Abnutzungsgrad des Brennstoffzelles an
* - type: Float
* - identifier: J�hrlicher Abnutzungsgrad des Brennstoffzelles
* - unit:
* - domain: [0,1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_FC(set_tech_DES_FC) J�hrlicher Abnutzungsgrad des Brennstoffzelles
$LOAD par_Wear_DES_FC

* - description: Bitte geben Sie hier die j�hrliche Preisentwicklung des Brennstoffzelles an
* - type: Float
* - identifier: J�hrliche Preisentwicklung des Brennstoffzelles
* - unit:
* - domain: [-1,1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_FC(set_tech_DES_FC) J�hrliche Preisentwicklung W�rmespeicher
$LOAD par_Learning_DES_FC

* - description: Bitte geben Sie hier die technische Lebensdauer des Brennstoffzelles in Jahren an
* - type: Integer
* - identifier: Technische Lebensdauer Brennstoffzelle
* - unit: [a]
* - domain: [0,50]
* - default:30
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_FC(set_tech_DES_FC) Technische Lebensdauer Brennstoffzelle
$LOAD par_Life_DES_FC

* - description: Bitte geben Sie hier die anfallenden Investitionskosten f�r den Brennstoffzelle an
* - type: Float
* - identifier: Investitionskosten Brennstoffzelle
* - unit: [EUR]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_FC_Cap(set_tech_DES_FC) Investitionskosten Brennstoffzelle
$LOAD par_C_DES_FC_Cap

* - description: Bitte geben Sie hier die j�hrliche Kostenentwicklung des Brennstoffzelles an
* - type: Boolean
* - identifier: Kostenentwicklung Brennstoffzelle
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_FC_Cap(set_tech_DES_FC) Investitionskosten Brennstoffzelle
$LOAD par_Ctrend_DES_FC_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation des Brennstoffzelles entfallen soll
* - type: Float
* - identifier: Anteilige Installationskosten Brennstoffzelle
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_FC_Ins(set_tech_DES_FC) Anteilige Installationskosten Brennstoffzelle
$LOAD par_Alpha_DES_FC_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz f�r Wartung und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand Brennstoffzelle
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_FC_OuM(set_tech_DES_FC) Anteiliger Betriebs- und Wartungsaufwand Brennstoffzelle
$LOAD par_Alpha_DES_FC_OuM

* - description: Bitte geben Sie ein, wie hoch die Unternehmensf�rderung pro MW f�r den Brennstoffzelle sein soll
* - type: Float
* - identifier: Unternehmensf�rderung Leistung Erdgas Boilers
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_FC(set_tech_DES_FC) Unternehmensf�rderung Leistung Erdgas Boilers
$LOAD par_Inc_DES_FC
