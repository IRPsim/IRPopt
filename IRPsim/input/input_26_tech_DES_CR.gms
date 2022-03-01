* - description: Bitte geben Sie hier die maximale thermische Leistung der K�ltemaschine an
* - type: Float
* - identifier: Maximale Thermische Leistung der K�ltemaschine
* - unit: [MW]
* - domain: (0,)
* - default: 0.08
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_CR_max(set_tech_DES_CR) Maximale Thermische Leistung der K�ltemaschine
$LOAD par_Q_DES_CR_max

* - description: Bitte geben Sie hier den Wirkungsgrad der K�ltemaschine an
* - type: Float
* - identifier: Wirkungsgrad K�ltemaschine
* - unit:
* - domain: (0,1]
* - default: 0.99
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_CR(set_tech_DES_CR) Wirkungsgrad der K�ltemaschine
$LOAD par_Eta_DES_CR

* - description: Bitte geben Sie hier an, ob die K�ltemaschine Reserveenergie bereitstellen k�nnen soll
* - type: Boolean
* - identifier: Bereitstellung von Reserveenergie durch K�ltemaschine
* - unit:
* - domain: [0|1]
* - default: 1
* - validation:
* - hidden: 1
* - processing:
PARAMETER par_X_C_DES_CR_res(set_tech_DES_CR) Verf�gbarkeit  der K�ltemaschine hins. Bereitstellung von Reserveenergie
$LOAD par_X_C_DES_CR_res

* - description: Bitte geben Sie hier den j�hrlichen Abnutzungsgrad der K�ltemaschine an
* - type: Float
* - identifier: J�hrlicher Abnutzungsgrad der K�ltemaschine
* - unit:
* - domain: [0,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_CR(set_tech_DES_CR) J�hrlicher Abnutzungsgrad der K�ltemaschine
$LOAD par_Wear_DES_CR

* - description: Bitte geben Sie hier die j�hrliche Preisentwicklung der K�ltemaschine an
* - type: Float
* - identifier: J�hrliche Preisentwicklung der K�ltemaschine
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_CR(set_tech_DES_CR) J�hrliche Preisentwicklung der K�ltemaschine
$LOAD par_Learning_DES_CR

* - description: Bitte geben Sie hier die Lebensdauer der K�ltemaschine in Jahren an
* - type: Integer
* - identifier: Technische Lebensdauer K�ltemaschine
* - unit: [a]
* - domain: [0,50]
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_CR(set_tech_DES_CR) Technische Lebensdauer K�ltemaschine
$LOAD par_Life_DES_CR

* - description: Bitte geben Sie hier die anfallenden Investitionskosten f�r die K�ltemaschine an
* - type: Float
* - identifier: Investitionskosten K�ltemaschine
* - unit: [EUR]
* - domain: [0,)
* - default: 3000
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_CR_Cap(set_tech_DES_CR) Investitionskosten K�ltemaschine
$LOAD par_C_DES_CR_Cap

* - description: Bitte geben Sie hier die j�hrliche Kostenentwicklung der K�ltemaschine an
* - type: Boolean
* - identifier: Kostenentwicklung K�ltemaschine
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_CR_Cap(set_tech_DES_CR) Investitionskosten K�ltemaschine
$LOAD par_Ctrend_DES_CR_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation der K�ltemaschine entfallen soll
* - type: Float
* - identifier: Anteilige Installationskosten K�ltemaschine
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_CR_Ins(set_tech_DES_CR) Anteilige Installationskosten K�ltemaschine
$LOAD par_Alpha_DES_CR_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz f�r Wartung und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand K�ltemaschine
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_CR_OuM(set_tech_DES_CR) Anteiliger Betriebs- und Wartungsaufwand K�ltemaschine
$LOAD par_Alpha_DES_CR_OuM

* - description: Bitte geben Sie ein, wie hoch die Unternehmensf�rderung pro MW f�r die K�ltemaschine sein soll
* - type: Float
* - identifier: Unternehmensf�rderung Leistung K�ltemaschine
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_CR(set_tech_DES_CR) Unternehmensf�rderung Leistung Elektrischer Boiler
$LOAD par_Inc_DES_CR

