* - description: Bitte geben Sie hier die maximale thermische Leistung der Kältemaschine an
* - type: Float
* - identifier: Maximale Thermische Leistung der Kältemaschine
* - unit: [MW]
* - domain: (0,)
* - default: 0.08
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_CR_max(set_tech_DES_CR) Maximale Thermische Leistung der Kältemaschine
$LOAD par_Q_DES_CR_max

* - description: Bitte geben Sie hier den Wirkungsgrad der Kältemaschine an
* - type: Float
* - identifier: Wirkungsgrad Kältemaschine
* - unit:
* - domain: (0,1]
* - default: 0.99
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_CR(set_tech_DES_CR) Wirkungsgrad der Kältemaschine
$LOAD par_Eta_DES_CR

* - description: Bitte geben Sie hier an, ob die Kältemaschine Reserveenergie bereitstellen können soll
* - type: Boolean
* - identifier: Bereitstellung von Reserveenergie durch Kältemaschine
* - unit:
* - domain: [0|1]
* - default: 1
* - validation:
* - hidden: 1
* - processing:
PARAMETER par_X_C_DES_CR_res(set_tech_DES_CR) Verfügbarkeit  der Kältemaschine hins. Bereitstellung von Reserveenergie
$LOAD par_X_C_DES_CR_res

* - description: Bitte geben Sie hier den jährlichen Abnutzungsgrad der Kältemaschine an
* - type: Float
* - identifier: Jährlicher Abnutzungsgrad der Kältemaschine
* - unit:
* - domain: [0,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_CR(set_tech_DES_CR) Jährlicher Abnutzungsgrad der Kältemaschine
$LOAD par_Wear_DES_CR

* - description: Bitte geben Sie hier die jährliche Preisentwicklung der Kältemaschine an
* - type: Float
* - identifier: Jährliche Preisentwicklung der Kältemaschine
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_CR(set_tech_DES_CR) Jährliche Preisentwicklung der Kältemaschine
$LOAD par_Learning_DES_CR

* - description: Bitte geben Sie hier die Lebensdauer der Kältemaschine in Jahren an
* - type: Integer
* - identifier: Technische Lebensdauer Kältemaschine
* - unit: [a]
* - domain: [0,50]
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_CR(set_tech_DES_CR) Technische Lebensdauer Kältemaschine
$LOAD par_Life_DES_CR

* - description: Bitte geben Sie hier die anfallenden Investitionskosten für die Kältemaschine an
* - type: Float
* - identifier: Investitionskosten Kältemaschine
* - unit: [EUR]
* - domain: [0,)
* - default: 3000
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_CR_Cap(set_tech_DES_CR) Investitionskosten Kältemaschine
$LOAD par_C_DES_CR_Cap

* - description: Bitte geben Sie hier die jährliche Kostenentwicklung der Kältemaschine an
* - type: Boolean
* - identifier: Kostenentwicklung Kältemaschine
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_CR_Cap(set_tech_DES_CR) Investitionskosten Kältemaschine
$LOAD par_Ctrend_DES_CR_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation der Kältemaschine entfallen soll
* - type: Float
* - identifier: Anteilige Installationskosten Kältemaschine
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_CR_Ins(set_tech_DES_CR) Anteilige Installationskosten Kältemaschine
$LOAD par_Alpha_DES_CR_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz für Wartung und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand Kältemaschine
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_CR_OuM(set_tech_DES_CR) Anteiliger Betriebs- und Wartungsaufwand Kältemaschine
$LOAD par_Alpha_DES_CR_OuM

* - description: Bitte geben Sie ein, wie hoch die Unternehmensförderung pro MW für die Kältemaschine sein soll
* - type: Float
* - identifier: Unternehmensförderung Leistung Kältemaschine
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_CR(set_tech_DES_CR) Unternehmensförderung Leistung Elektrischer Boiler
$LOAD par_Inc_DES_CR

