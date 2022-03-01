* - description: Bitte geben Sie hier die maximale thermische Leistung der W�rmepumpe an
* - type: Float
* - identifier: Maximale thermische Leistung W�rmepumpe
* - unit: [MW]
* - domain: (0,)
* - default: 0.01
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_HP_max(set_tech_DES_HP) Maximale thermische Leistung W�rmepumpe
$LOAD par_Q_DES_HP_max

* - description: Bitte geben Sie hier den thermischen Wirkungsgrad des W�rmepumpen-Heizstabes an
* - type: Float
* - identifier: Wirkungsgrad W�rmepumpen-Heizstab
* - unit:
* - domain: (0,1]
* - default: 0.99
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_HR(set_tech_DES_HP) Wirkungsgrad W�rmepumpen-Heizstab
$LOAD par_Eta_DES_HR

* - description: Bitte geben Sie hier an, ob die W�rmepumpe Reserveenergie bereitstellen k�nnen soll
* - type: Boolean
* - identifier: Bereitstellung von Reserveenergie durch die W�rmepumpe
* - unit:
* - domain: [0|1]
* - default: 1
* - validation:
* - hidden: 1
* - processing:
PARAMETER par_X_W_DES_HP_res(set_tech_DES_HP) Bereitstellung von Reserveenergie durch die W�rmepumpe
$LOAD par_X_W_DES_HP_res

* - description: Bitte geben Sie hier den j�hrlichen Abnutzungsgrad der W�rmepumpe an
* - type: Float
* - identifier: J�hrlicher Abnutzungsgrad der W�rmepumpe
* - unit:
* - domain: [0,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_HP(set_tech_DES_HP) J�hrlicher Abnutzungsgrad der W�rmepumpe
$LOAD par_Wear_DES_HP

* - description: Bitte geben Sie hier die j�hrliche Preisentwicklung der W�rmepunmpe an
* - type: Float
* - identifier: J�hrliche Preisentwicklung der W�rmepumpe
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_HP(set_tech_DES_HP)  J�hrliche Preisentwicklung der W�rmepumpe
$LOAD par_Learning_DES_HP

* - description: Bitte geben Sie hier die Lebensdauer der W�rmepumpe in Jahren an
* - type: Integer
* - identifier: Technische Lebensdauer W�rmepumpe
* - unit: [a]
* - domain: [0,50]
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_HP(set_tech_DES_HP) Technische Lebensdauer W�rmepumpe
$LOAD par_Life_DES_HP

* - description: Bitte geben Sie hier die Investitionskosten f�r die W�rmepumpe an
* - type: Float
* - identifier: Investitionskosten W�rmepumpe
* - unit: [EUR]
* - domain: [0,)
* - default: 6000
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_HP_Cap(set_tech_DES_HP) Investitionskosten W�rmepumpe
$LOAD par_C_DES_HP_Cap

* - description: Bitte geben Sie hier die j�hrliche Kostenentwicklung der W�rmepumpe an
* - type: Boolean
* - identifier: Kostenentwicklung W�rmepumpe
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_HP_Cap(set_tech_DES_HP) Investitionskosten Durchlauferhitzer
$LOAD par_Ctrend_DES_HP_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation der W�rmepumpe entfallen soll
* - type: Float
* - identifier: Anteilige Installationskosten W�rmepumpe
* - unit:
* - domain: [0,1]
* - default: 0.1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_HP_Ins(set_tech_DES_HP) Anteilige Installationskosten W�rmepumpe
$LOAD par_Alpha_DES_HP_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz f�r Wartung und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand W�rmepumpe
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_HP_OuM(set_tech_DES_HP) Anteiliger Betriebs- und Wartungsaufwand W�rmepumpe
$LOAD par_Alpha_DES_HP_OuM

* - description: Bitte geben Sie ein, wie hoch die Unternehmensf�rderung pro MW f�r die W�rmepumpe sein soll
* - type: Float
* - identifier: Unternehmensf�rderung Leistung W�rmepumpe
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_HP(set_tech_DES_HP) Unternehmensf�rderung Leistung W�rmepumpe
$LOAD par_Inc_DES_HP

* - description: Bitte geben Sie hier Daten f�r die Au�entemperatur in Form einer Zeitreihe an
* - type: Float
* - identifier: Au�entemperatur
* - unit: [�C]
* - domain: [-60,60]
PARAMETER par_T_DES_HP(set_ii,set_tech_DES_HP) Au�entemperatur
$LOAD par_T_DES_HP

* - description: Bitte geben Sie ein, wie viel Prozent der Leistung zur Verf�gung stehen soll
* - type: Float
* - identifier: Prozentuale Verf�gung Leistung
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_HP_utilpercent(set_ii,set_tech_DES_HP) Maximale Ladeleistung Stromspeicher
$LOAD par_Q_DES_HP_utilpercent



