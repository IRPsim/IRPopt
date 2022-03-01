* - description: Bitte geben Sie hier die gesamte Modulfl�che der Solarthermie-Anlage an
* - type: Float
* - identifier: Modulfl�che Solarthermie-Anlage
* - unit: [m2]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_A_DES_ST(set_tech_DES_ST) Modulfl�che Solarthermie-Anlage
$LOAD par_A_DES_ST

* - description: Bitte geben Sie hier den Modulwirkungsgrad der Solarthermie-Anlage an
* - type: Float
* - identifier: Modul-Wirkungsgrad Solarthermie-Anlage
* - unit:
* - domain: (0,1]
* - default: 0.17
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_ST(set_tech_DES_ST) Modul-Wirkungsgrad Solarthermie-Anlage
$LOAD  par_Eta_DES_ST

* - description: Bitte geben Sie hier den j�hrlichen Abnutzungsgrad der Solarthermie-Anlage an
* - type: Float
* - identifier: J�hrliche Abnutzung der Solarthermie-Anlage
* - unit:
* - domain: [0,1]
* - default: 0.005
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_ST(set_tech_DES_ST) J�hrliche Abnutzung Solarthermie-Anlage
$LOAD par_Wear_DES_ST

* - description: Bitte geben Sie hier die j�hrliche Preisentwicklung der Solarthermie-Anlage an
* - type: Float
* - identifier: J�hrliche Preisentwicklung der Solarthermie-Anlage
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_ST(set_tech_DES_ST) J�hrliche Preisentwicklung der Solarthermie-Anlage
$LOAD par_Learning_DES_ST

* - description: Bitte geben Sie hier die technische Lebensdauer der Solarthermie-Anlage in Jahren an
* - type: Integer
* - identifier: Technische Lebensdauer Solarthermie-Anlage
* - unit: [a]
* - domain: [0,50]
* - default: 20
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_ST(set_tech_DES_ST) Technische Lebensdauer Solarthermie-Anlage
$LOAD par_Life_DES_ST

* - description: Bitte geben Sie hier die anfallenden spezifischen Investitionskosten f�r das Solarthermie-Modul an
* - type: Float
* - identifier: Investitionskosten Solarthermie-Modul
* - unit: [EUR / m2]
* - domain: [0,)
* - default: 320
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_ST_Cap(set_tech_DES_ST)
$LOAD par_C_DES_ST_Cap

* - description: Bitte geben Sie hier die j�hrliche Kostenentwicklung f�r ein Solarthermie-Modul an
* - type: Boolean
* - identifier: Kostenentwicklung Solarthermie-Modul
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_ST_Cap(set_tech_DES_ST) Investitionskosten Solarthermie-Anlage
$LOAD par_Ctrend_DES_ST_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation der Solarthermie-Anlage entfallen soll
* - type: Float
* - identifier: Anteilige Installationskosten Solarthermie-Anlage
* - unit:
* - domain: [0,1]
* - default: 0.1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_ST_Ins(set_tech_DES_ST) Anteilige Installationskosten Solarthermie-Anlage
$LOAD par_Alpha_DES_ST_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz f�r Wartung- und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand Solarthermie-Anlage
* - unit:
* - domain: [0,1]
* - default: 0.1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_ST_OuM(set_tech_DES_ST) Anteiliger Betriebs- und Wartungsaufwand Solarthermie-Anlage
$LOAD par_Alpha_DES_ST_OuM

* - description: Bitte geben Sie ein, wie viel Unternehmensf�rderung pro MW die Solarthermie-Anlage erhalten soll
* - type: Float
* - identifier: Unternehmensf�rderung Leistung Solarthermie-Anlage
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_ST(set_tech_DES_ST) Unternehmensf�rderung Leistung Solarthermie-Anlage
$LOAD par_Inc_DES_ST




