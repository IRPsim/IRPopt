* - description: Bitte geben Sie hier die maximale thermische Leistung des Durchlaufserhitzer an
* - type: Float
* - identifier: Maximale Thermische Leistung des Durchlauferhitzers
* - unit: [MW]
* - domain: (0,)
* - default: 0.08
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_EB_max(set_tech_DES_EB) Maximale Thermische Leistung des Durchlauferhitzers
$LOAD par_Q_DES_EB_max

* - description: Bitte geben Sie hier den thermischen Wirkungsgrad des Durchlauferhitzers an
* - type: Float
* - identifier: Thermischer Wirkungsgrad Durchlauferhitzer
* - unit:
* - domain: (0,1]
* - default: 0.99
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_EB(set_tech_DES_EB) Wirkungsgrad des Boilermodells
$LOAD par_Eta_DES_EB

* - description: Bitte geben Sie hier an, ob der Durchlauferhitzer Reserveenergie bereitstellen können soll
* - type: Boolean
* - identifier: Bereitstellung von Reserveenergie durch Durchlauferhitzer
* - unit:
* - domain: [0|1]
* - default: 1
* - validation:
* - hidden: 1
* - processing:
PARAMETER par_X_W_DES_EB_res(set_tech_DES_EB) Verfügbarkeit der elektrischen Speichertechnologie hins. Bereitstellung von Reserveenergie
$LOAD par_X_W_DES_EB_res

* - description: Bitte geben Sie hier den jährlichen Abnutzungsgrad des Durchlauferhitzers an
* - type: Float
* - identifier: Jährlicher Abnutzungsgrad des Durchlauferhitzers
* - unit:
* - domain: [0,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_EB(set_tech_DES_EB) Jährlicher Abnutzungsgrad des Durchlauferhitzers
$LOAD par_Wear_DES_EB

* - description: Bitte geben Sie hier die jährliche Preisentwicklung des Durchlauferhitzers an
* - type: Float
* - identifier: Jährliche Preisentwicklung des Durchlauferhitzers
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_EB(set_tech_DES_EB) Jährliche Preisentwicklung des Durchlauferhitzers
$LOAD par_Learning_DES_EB

* - description: Bitte geben Sie hier die Lebensdauer des Durchlauferhitzers in Jahren an
* - type: Integer
* - identifier: Technische Lebensdauer Durchlauferhitzer
* - unit: [a]
* - domain: [0,50]
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_EB(set_tech_DES_EB) Technische Lebensdauer Durchlauferhitzer
$LOAD par_Life_DES_EB

* - description: Bitte geben Sie hier die Investitionskosten für den Durchlauferhitzer an
* - type: Float
* - identifier: Investitionskosten Durchlauferhitzer
* - unit: [EUR]
* - domain: [0,)
* - default: 3000
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_EB_Cap(set_tech_DES_EB) Investitionskosten Durchlauferhitzer
$LOAD par_C_DES_EB_Cap

* - description: Bitte geben Sie hier die jährliche Kostenentwicklung des Durchlauferhitzers an
* - type: Boolean
* - identifier: Kostenentwicklung Durchlauferhitzer
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_EB_Cap(set_tech_DES_EB) Investitionskosten Durchlauferhitzer
$LOAD par_Ctrend_DES_EB_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation des Durchlauferhitzers entfallen soll
* - type: Float
* - identifier: Anteilige Installationskosten Durchlauferhitzer
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_EB_Ins(set_tech_DES_EB) Anteilige Installationskosten Durchlauferhitzer
$LOAD par_Alpha_DES_EB_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz für Wartung und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand Durchlauferhitzer
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_EB_OuM(set_tech_DES_EB) Anteiliger Betriebs- und Wartungsaufwand Durchlauferhitzer
$LOAD par_Alpha_DES_EB_OuM

* - description: Bitte geben Sie ein, wie hoch die Unternehmensförderung pro MW für den Durchlauferhitzer sein soll
* - type: Float
* - identifier: Unternehmensförderung Leistung Durchlauferhitzer
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_EB(set_tech_DES_EB) Unternehmensförderung Leistung Elektrischer Boiler
$LOAD par_Inc_DES_EB

* - description: Bitte geben Sie ein, wie viel Prozent der Leistung zur Verfügung stehen soll
* - type: Float
* - identifier: Prozentuale Verfügung Leistung
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_EB_utilpercent(set_ii,set_tech_DES_EB) Maximale Ladeleistung Stromspeicher
$LOAD par_P_DES_EB_utilpercent


