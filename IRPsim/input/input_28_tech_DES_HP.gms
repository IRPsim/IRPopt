* - description: Bitte geben Sie hier die maximale thermische Leistung der Wärmepumpe an
* - type: Float
* - identifier: Maximale thermische Leistung Wärmepumpe
* - unit: [MW]
* - domain: (0,)
* - default: 0.01
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_HP_max(set_tech_DES_HP) Maximale thermische Leistung Wärmepumpe
$LOAD par_Q_DES_HP_max

* - description: Bitte geben Sie hier den thermischen Wirkungsgrad des Wärmepumpen-Heizstabes an
* - type: Float
* - identifier: Wirkungsgrad Wärmepumpen-Heizstab
* - unit:
* - domain: (0,1]
* - default: 0.99
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_HR(set_tech_DES_HP) Wirkungsgrad Wärmepumpen-Heizstab
$LOAD par_Eta_DES_HR

* - description: Bitte geben Sie hier an, ob die Wärmepumpe Reserveenergie bereitstellen können soll
* - type: Boolean
* - identifier: Bereitstellung von Reserveenergie durch die Wärmepumpe
* - unit:
* - domain: [0|1]
* - default: 1
* - validation:
* - hidden: 1
* - processing:
PARAMETER par_X_W_DES_HP_res(set_tech_DES_HP) Bereitstellung von Reserveenergie durch die Wärmepumpe
$LOAD par_X_W_DES_HP_res

* - description: Bitte geben Sie hier den jährlichen Abnutzungsgrad der Wärmepumpe an
* - type: Float
* - identifier: Jährlicher Abnutzungsgrad der Wärmepumpe
* - unit:
* - domain: [0,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_HP(set_tech_DES_HP) Jährlicher Abnutzungsgrad der Wärmepumpe
$LOAD par_Wear_DES_HP

* - description: Bitte geben Sie hier die jährliche Preisentwicklung der Wärmepunmpe an
* - type: Float
* - identifier: Jährliche Preisentwicklung der Wärmepumpe
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_HP(set_tech_DES_HP)  Jährliche Preisentwicklung der Wärmepumpe
$LOAD par_Learning_DES_HP

* - description: Bitte geben Sie hier die Lebensdauer der Wärmepumpe in Jahren an
* - type: Integer
* - identifier: Technische Lebensdauer Wärmepumpe
* - unit: [a]
* - domain: [0,50]
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_HP(set_tech_DES_HP) Technische Lebensdauer Wärmepumpe
$LOAD par_Life_DES_HP

* - description: Bitte geben Sie hier die Investitionskosten für die Wärmepumpe an
* - type: Float
* - identifier: Investitionskosten Wärmepumpe
* - unit: [EUR]
* - domain: [0,)
* - default: 6000
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_HP_Cap(set_tech_DES_HP) Investitionskosten Wärmepumpe
$LOAD par_C_DES_HP_Cap

* - description: Bitte geben Sie hier die jährliche Kostenentwicklung der Wärmepumpe an
* - type: Boolean
* - identifier: Kostenentwicklung Wärmepumpe
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_HP_Cap(set_tech_DES_HP) Investitionskosten Durchlauferhitzer
$LOAD par_Ctrend_DES_HP_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation der Wärmepumpe entfallen soll
* - type: Float
* - identifier: Anteilige Installationskosten Wärmepumpe
* - unit:
* - domain: [0,1]
* - default: 0.1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_HP_Ins(set_tech_DES_HP) Anteilige Installationskosten Wärmepumpe
$LOAD par_Alpha_DES_HP_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz für Wartung und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand Wärmepumpe
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_HP_OuM(set_tech_DES_HP) Anteiliger Betriebs- und Wartungsaufwand Wärmepumpe
$LOAD par_Alpha_DES_HP_OuM

* - description: Bitte geben Sie ein, wie hoch die Unternehmensförderung pro MW für die Wärmepumpe sein soll
* - type: Float
* - identifier: Unternehmensförderung Leistung Wärmepumpe
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_HP(set_tech_DES_HP) Unternehmensförderung Leistung Wärmepumpe
$LOAD par_Inc_DES_HP

* - description: Bitte geben Sie hier Daten für die Außentemperatur in Form einer Zeitreihe an
* - type: Float
* - identifier: Außentemperatur
* - unit: [°C]
* - domain: [-60,60]
PARAMETER par_T_DES_HP(set_ii,set_tech_DES_HP) Außentemperatur
$LOAD par_T_DES_HP

* - description: Bitte geben Sie ein, wie viel Prozent der Leistung zur Verfügung stehen soll
* - type: Float
* - identifier: Prozentuale Verfügung Leistung
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_HP_utilpercent(set_ii,set_tech_DES_HP) Maximale Ladeleistung Stromspeicher
$LOAD par_Q_DES_HP_utilpercent



