* - description: Bitte geben Sie hier die maximale thermische Leistung der Kältemaschine an
* - type: Float
* - identifier: Maximale Thermische Leistung der Kältemaschine
* - unit: [MW]
* - domain: (0,)
* - default: 0.08
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_SC_max(set_tech_DES_SC) Maximale Thermische Leistung der Kältemaschine
$LOAD par_Q_DES_SC_max

* - description: Bitte geben Sie hier den Wirkungsgrad der Kältemaschine an
* - type: Float
* - identifier: Wirkungsgrad Kältemaschine
* - unit:
* - domain: (0,1]
* - default: 0.99
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_SC(set_tech_DES_SC) Wirkungsgrad der Kältemaschine
$LOAD par_Eta_DES_SC

* - description: Bitte geben Sie hier an, ob die Kältemaschine Reserveenergie bereitstellen können soll
* - type: Boolean
* - identifier: Bereitstellung von Reserveenergie durch Kältemaschine
* - unit:
* - domain: [0|1]
* - default: 1
* - validation:
* - hidden: 1
* - processing:
PARAMETER par_X_C_DES_SC_res(set_tech_DES_SC) Verfügbarkeit der Kältemaschine hins. Bereitstellung von Reserveenergie
$LOAD par_X_C_DES_SC_res

* - description: Bitte geben Sie hier den jährlichen Abnutzungsgrad der Kältemaschine an
* - type: Float
* - identifier: Jährlicher Abnutzungsgrad der Kältemaschine
* - unit:
* - domain: [0,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_SC(set_tech_DES_SC) Jährlicher Abnutzungsgrad des Kältemaschine
$LOAD par_Wear_DES_SC

* - description: Bitte geben Sie hier die jährliche Preisentwicklung der Kältemaschine an
* - type: Float
* - identifier: Jährliche Preisentwicklung der Kältemaschine
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_SC(set_tech_DES_SC) Jährliche Preisentwicklung des Kältemaschine
$LOAD par_Learning_DES_SC

* - description: Bitte geben Sie hier die technische Lebensdauer der Kältemaschine in Jahren an
* - type: Integer
* - identifier: Technische Lebensdauer Kältemaschine
* - unit: [a]
* - domain: [0,50]
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_SC(set_tech_DES_SC) Technische Lebensdauer Kältemaschine
$LOAD par_Life_DES_SC

* - description: Bitte geben Sie hier die Investitionskosten für die Kältemaschine an
* - type: Float
* - identifier: Investitionskosten Kältemaschine
* - unit: [EUR]
* - domain: [0,)
* - default: 3000
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_SC_Cap(set_tech_DES_SC) Investitionskosten Kältemaschine
$LOAD par_C_DES_SC_Cap

* - description: Bitte geben Sie hier die jährliche Kostenentwicklung der Kältemaschine an
* - type: Boolean
* - identifier: Kostenentwicklung Kältemaschine
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_SC_Cap(set_tech_DES_SC) Investitionskosten Kältemaschine
$LOAD par_Ctrend_DES_SC_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation der Kältemaschine entfallen soll
* - type: Float
* - identifier: Anteilige Installationskosten Kältemaschine
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_SC_Ins(set_tech_DES_SC) Anteilige Installationskosten Kältemaschine
$LOAD par_Alpha_DES_SC_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz für Wartung und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand Kältemaschine
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_SC_OuM(set_tech_DES_SC) Anteiliger Betriebs- und Wartungsaufwand Kältemaschine
$LOAD par_Alpha_DES_SC_OuM

* - description: Bitte geben Sie ein, wie hoch die Unternehmensförderung pro MW für die Kältemaschine sein soll
* - type: Float
* - identifier: Unternehmensförderung Leistung Kältemaschine
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_SC(set_tech_DES_SC) Unternehmensförderung Leistung Elektrischer Boiler
$LOAD par_Inc_DES_SC

