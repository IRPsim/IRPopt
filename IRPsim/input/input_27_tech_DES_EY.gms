* - description: Bitte geben Sie hier die maximale elektrische Leistung des Elektrolyseurs an
* - type: Float
* - identifier: Maximale elektrische Leistung des Elektrolyseurs
* - unit: [MW]
* - domain: (0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_EY_max(set_tech_DES_EY) Maximale elektrische Leistung des Elektrolyseurs
$LOAD par_P_DES_EY_max

* - description: Bitte geben Sie hier die minimale elektrische Leistung des Elektrolyseurs an
* - type: Float
* - identifier: Minimale elektrische Leistung des Elektrolyseurs
* - unit: [MW]
* - domain: (0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_EY_min(set_tech_DES_EY) Minimale elektrische Leistung des Elektrolyseurs
$LOAD par_P_DES_EY_min

* - description: Bitte geben Sie hier die Stoffkennzahl des Elektrolyseurs an
* - type: Float
* - identifier: Stoffkennzahl Elektrolyseur
* - unit:
* - domain: (0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Sigma_DES_EY(set_tech_DES_EY) Stoffkennzahl Elektrolyseur
$LOAD par_Sigma_DES_EY

* - description: Bitte geben Sie hier den elektrischen Wirkungsgrad des Elektrolyseurs an
* - type: Float
* - identifier: elektrischer Wirkungsgrad Elektrolyseur
* - unit: [ECU/MWh]
* - domain: (0,5]
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_EY(set_tech_DES_EY) Wirkungsgrad des Elektrolyseurs
$LOAD par_Eta_DES_EY

* - description: Bitte geben Sie hier den jährlichen Abnutzungsgrad des Elektrolyseurs an
* - type: Float
* - identifier: Jährlicher Abnutzungsgrad des Elektrolyseurs
* - unit:
* - domain: [0,1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_EY(set_tech_DES_EY) Jährlicher Abnutzungsgrad des Elektrolyseurs
$LOAD par_Wear_DES_EY

* - description: Bitte geben Sie hier die jährliche Preisentwicklung des Elektrolyseurs an
* - type: Float
* - identifier: Jährliche Preisentwicklung des Elektrolyseurs
* - unit:
* - domain: [-1,1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_EY(set_tech_DES_EY) Jährliche Preisentwicklung Elektrolyseur
$LOAD par_Learning_DES_EY

* - description: Bitte geben Sie hier die technische Lebensdauer des Elektrolyseurs in Jahren an
* - type: Integer
* - identifier: Technische Lebensdauer Elektrolyseur
* - unit: [a]
* - domain: [0,50]
* - default: 30
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_EY(set_tech_DES_EY) Technische Lebensdauer Elektrolyseur
$LOAD par_Life_DES_EY

* - description: Bitte geben Sie hier die anfallenden Investitionskosten für den Elektrolyseur an
* - type: Float
* - identifier: Investitionskosten Elektrolyseur
* - unit: [EUR]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_EY_Cap(set_tech_DES_EY) Investitionskosten Elektrolyseur
$LOAD par_C_DES_EY_Cap

* - description: Bitte geben Sie hier die jährliche Kostenentwicklung des Elektrolyseurs an
* - type: Boolean
* - identifier: Kostenentwicklung Elektrolyseur
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_EY_Cap(set_tech_DES_EY) Investitionskosten Elektrolyseur
$LOAD par_Ctrend_DES_EY_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation des Elektrolyseurs entfallen soll
* - type: Float
* - identifier: Anteilige Installationskosten Elektrolyseur
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_EY_Ins(set_tech_DES_EY) Anteilige Installationskosten Elektrolyseur
$LOAD par_Alpha_DES_EY_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz für Wartung und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand Elektrolyseur
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_EY_OuM(set_tech_DES_EY) Anteiliger Betriebs- und Wartungsaufwand Elektrolyseur
$LOAD par_Alpha_DES_EY_OuM

* - description: Bitte geben Sie ein, wie hoch die Unternehmensförderung pro MW für den Elektrolyseur sein soll
* - type: Float
* - identifier: Unternehmensförderung Leistung Erdgas Boilers
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_EY(set_tech_DES_EY) Unternehmensförderung Leistung Elektrolyseur
$LOAD par_Inc_DES_EY


* - description: Bitte geben Sie hier die maximale Hochfahrgeschwindigkeit an.
* - type: Float
* - identifier: Maximale Hochfahrgeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_EY_ru_general(set_tech_DES_EY) Hochfahrgeschwindigkeit
$LOAD par_P_DES_EY_ru_general

* - description: Bitte geben Sie hier die maximale Anfahrgeschwindigkeit an.
* - type: Float
* - identifier: Maximale Anfahrgeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_EY_ru_start(set_tech_DES_EY) Anfahrgeschwindigkeit
$LOAD par_P_DES_EY_ru_start

* - description: Bitte geben Sie hier die maximale Herunterfahrgeschwindigkeit an.
* - type: Float
* - identifier: Minimale Herunterfahrgeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_EY_rd_general(set_tech_DES_EY) Herunterfahrgeschwindigkeit
$LOAD par_P_DES_EY_rd_general

* - description: Bitte geben Sie hier die maximale Abschaltegeschwindigkeit an.
* - type: Float
* - identifier: Minimale Abschaltegeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_EY_rd_stop(set_tech_DES_EY) Abschaltegeschwindigkeit
$LOAD par_P_DES_EY_rd_stop

* - description: Bitte geben Sie hier den Hitzeverlustkoeffizient des Elektrolyseurs an.
* - type: Float
* - identifier: Hitzeverlustkoeffizient Elektrolyseur
* - unit: [1/h]
* - domain: [0,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Lambda_DES_EY_heatlosses(set_tech_DES_EY) Hitzeverlustkoeffizient
$LOAD par_Lambda_DES_EY_heatlosses

* - description: Bitte geben Sie hier die Mindestbetriebszeit des Elektrolyseurs an.
* - type: Float
* - identifier: Mindestbetriebszeit Elektrolyseur
* - unit: [h]
* - domain: [0,)
* - default: 25
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_DES_EY_minon(set_tech_DES_EY) Mindestbetriebszeit
$LOAD par_H_DES_EY_minon

* - description: Bitte geben Sie hier die Mindeststillstandszeit des Elektrolyseurs an.
* - type: Float
* - identifier: Mindeststillstandszeit Elektrolyseur
* - unit: [h]
* - domain: [0,)
* - default: 25
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_DES_EY_minoff(set_tech_DES_EY) Mindeststillstandszeit
$LOAD par_H_DES_EY_minoff

* - description: Bitte geben Sie hier die Maximalbetriebszeit des Elektrolyseurs an.
* - type: Float
* - identifier: Maximalbetriebszeit Elektrolyseur
* - unit: [h]
* - domain: [0,)
* - default: 100
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_DES_EY_maxon(set_tech_DES_EY) Maximalbetriebszeit
$LOAD par_H_DES_EY_maxon


* - description: Bitte geben Sie hier die technische Verfügbarkeit des Elektrolyseurs nach Berücksichtigung von Wartungen etc. als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Verfügbarkeit Elektrolyseur
* - unit:
* - default: 1
* - domain: [0,1]
* - hidden:
* - processing:
PARAMETER par_X_E_DES_EY_avail(set_ii,set_tech_DES_EY) Verfügbarkeit Kondensationskraftwerke;
$LOAD par_X_E_DES_EY_avail
