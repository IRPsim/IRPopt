* - description: Bitte geben Sie hier die maximale elektrische Leistung der Kraft-Wärme-Kopplungsanlage an
* - type: Float
* - identifier: Maximale elektrische Leistung Kraft-Wärme-Kopplungsanlage
* - unit: [MW]
* - domain: [0,)
* - default: 0.2
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_CHP_max(set_tech_DES_CHP) Leistung Kraft-Wärme-Kopplungsanlagen
$LOAD par_P_DES_CHP_max

* - description: Bitte geben Sie hier die technische Mindestleistung der Kraft-Wärme-Kopplungsanlage an
* - type: Float
* - identifier: Technische Mindestleistung Kraft-Wärme-Kopplungsanlage
* - unit: [MW]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_CHP_min(set_tech_DES_CHP) Leistung Kraft-Wärme-Kopplungsanlagen
$LOAD par_P_DES_CHP_min

* - description: Bitte geben Sie hier den elektrischen Wirkungsgrad der Kraft-Wärme-Kopplungsanlage an
* - type: Float
* - identifier: Elektrischer Wirkungsgrad Kraft-Wärme-Kopplungsanlage
* - unit:
* - domain: (0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_CHP(set_tech_DES_CHP) Wirkungsgrad Kraft-Wärme-Kopplungsanlagen
$LOAD par_Eta_DES_CHP

* - description: Bitte geben Sie hier die Stromkennzahl der Kraft-Wärme-Kopplungsanlage an
* - type: Float
* - identifier: Stromkennzahl Kraft-Wärme-Kopplungsanlage
* - unit:
* - domain: (0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Sigma_DES_CHP(set_tech_DES_CHP) Strommkennzahl Kraft-Wärme-Kopplungsanlagen
$LOAD par_Sigma_DES_CHP

* - description: Bitte geben Sie hier den jahrlichen Abnutzungsgrad der Kraft-Wärme-Kopplungsanlage an
* - type: Float
* - identifier: Jährliche Abnutzung der Kraft-Wärme-Kopplungsanlage
* - unit:
* - domain: [0,1]
* - default: 0.005
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_CHP(set_tech_DES_CHP) Jährliche Abnutzung Kraft-Wärme-Kopplungsanlagen
$LOAD par_Wear_DES_CHP

* - description: Bitte geben Sie hier die jährliche Preisentwicklung (Investitionskosten) der Kraft-Wärme-Kopplungsanlage an
* - type: Float
* - identifier: Jährliche Preisentwicklung der Kraft-Wärme-Kopplungsanlage
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_CHP(set_tech_DES_CHP) Jährliche Preisentwicklung der Kraft-Wärme-Kopplungsanlagen
$LOAD par_Learning_DES_CHP

* - description: Bitte geben Sie hier die technische Lebensdauer der Kraft-Wärme-Kopplungsanlage an
* - type: Integer
* - identifier: Technische Lebensdauer Kraft-Wärme-Kopplungsanlage
* - unit: [a]
* - domain: [0,50]
* - default: 20
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_CHP(set_tech_DES_CHP) Technische Lebensdauer Kraft-Wärme-Kopplungsanlagen
$LOAD par_Life_DES_CHP

* - description: Bitte geben Sie hier die Investitionskosten für die Kraft-Wärme-Kopplungsanlage an
* - type: Float
* - identifier: Investitionskosten Kraft-Wärme-Kopplungsanlage
* - unit: [EUR/MWh]
* - domain: [0,)
* - default: 320
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_CHP_Cap(set_tech_DES_CHP)
$LOAD par_C_DES_CHP_Cap

* - description: Bitte geben Sie hier die Kostenentwicklung der Kraft-Wärme-Kopplungsanlage an
* - type: Boolean
* - identifier: Kostenentwicklung Kraft-Wärme-Kopplungsanlage
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_CHP_Cap(set_tech_DES_CHP) Investitionskosten Kraft-Wärme-Kopplungsanlagen
$LOAD par_Ctrend_DES_CHP_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation der Kraft-Wärme-Kopplungsanlage entfallen soll
* - type: Float
* - identifier: Anteilige Installationskosten Kraft-Wärme-Kopplungsanlage
* - unit:
* - domain: [0,1]
* - default: 0.1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_CHP_Ins(set_tech_DES_CHP) Anteilige Installationskosten Kraft-Wärme-Kopplungsanlagen
$LOAD par_Alpha_DES_CHP_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz für Wartung- und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand Kraft-Wärme-Kopplungsanlage
* - unit:
* - domain: [0,1]
* - default: 0.1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_CHP_OuM(set_tech_DES_CHP) Anteiliger Betriebs- und Wartungsaufwand Kraft-Wärme-Kopplungsanlagen
$LOAD par_Alpha_DES_CHP_OuM

* - description: Bitte geben Sie ein, wie hoch die Unternehmensförderung pro MW für die Kraft-Wärme-Kopplungsanlage sein soll
* - type: Float
* - identifier: Unternehmensförderung Leistung Kraft-Wärme-Kopplungsanlage
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_CHP(set_tech_DES_CHP) Unternehmensförderung Leistung Kraft-Wärme-Kopplungsanlagen
$LOAD par_Inc_DES_CHP

* - description: Bitte geben Sie ein, wie viel Prozent der Leistung zur Verfügung stehen soll
* - type: Float
* - identifier: Prozentuale Verfügung Leistung
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_CHP_utilpercent(set_ii,set_tech_DES_CHP) Maximale Ladeleistung Stromspeicher
$LOAD par_P_DES_CHP_utilpercent


* - description: Bitte geben Sie hier die maximale Hochfahrgeschwindigkeit an.
* - type: Float
* - identifier: Maximale Hochfahrgeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_CHP_ru_general(set_tech_DES_CHP) Hochfahrgeschwindigkeit
$LOAD par_P_DES_CHP_ru_general

* - description: Bitte geben Sie hier die maximale Anfahrgeschwindigkeit an.
* - type: Float
* - identifier: Maximale Anfahrgeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_CHP_ru_start(set_tech_DES_CHP) Anfahrgeschwindigkeit
$LOAD par_P_DES_CHP_ru_start

* - description: Bitte geben Sie hier die maximale Herunterfahrgeschwindigkeit an.
* - type: Float
* - identifier: Minimale Herunterfahrgeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_CHP_rd_general(set_tech_DES_CHP) Herunterfahrgeschwindigkeit
$LOAD par_P_DES_CHP_rd_general

* - description: Bitte geben Sie hier die maximale Abschaltegeschwindigkeit an.
* - type: Float
* - identifier: Minimale Abschaltegeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_CHP_rd_stop(set_tech_DES_CHP) Abschaltegeschwindigkeit
$LOAD par_P_DES_CHP_rd_stop

* - description: Bitte geben Sie hier den Hitzeverlustkoeffizient der Kraft-Wärme-Kopplungsanlage an.
* - type: Float
* - identifier: Hitzeverlustkoeffizient Kraft-Wärme-Kopplungsanlage
* - unit: [1/h]
* - domain: [0,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Lambda_DES_CHP_heatlosses(set_tech_DES_CHP) Hitzeverlustkoeffizient
$LOAD par_Lambda_DES_CHP_heatlosses

* - description: Bitte geben Sie hier die Mindestbetriebszeit der Kraft-Wärme-Kopplungsanlage an.
* - type: Float
* - identifier: Mindestbetriebszeit Kraft-Wärme-Kopplungsanlage
* - unit: [h]
* - domain: [0,)
* - default: 25
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_DES_CHP_minon(set_tech_DES_CHP) Mindestbetriebszeit
$LOAD par_H_DES_CHP_minon

* - description: Bitte geben Sie hier die Mindeststillstandszeit der Kraft-Wärme-Kopplungsanlage an.
* - type: Float
* - identifier: Mindeststillstandszeit Kraft-Wärme-Kopplungsanlage
* - unit: [h]
* - domain: [0,)
* - default: 25
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_DES_CHP_minoff(set_tech_DES_CHP) Mindeststillstandszeit
$LOAD par_H_DES_CHP_minoff

* - description: Bitte geben Sie hier die Maximalbetriebszeit der Kraft-Wärme-Kopplungsanlage an.
* - type: Float
* - identifier: Maximalbetriebszeit Kraft-Wärme-Kopplungsanlage
* - unit: [h]
* - domain: [0,)
* - default: 100
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_DES_CHP_maxon(set_tech_DES_CHP) Maximalbetriebszeit
$LOAD par_H_DES_CHP_maxon


* - description: Bitte geben Sie hier die technische Verfügbarkeit der Kraft-Wärme-Kopplungsanlage nach Berücksichtigung von Wartungen etc. als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Verfügbarkeit Kraft-Wärme-Kopplungsanlage
* - unit:
* - default: 1
* - domain: [0,1]
* - hidden:
* - processing:
PARAMETER par_X_E_DES_CHP_avail(set_ii,set_tech_DES_CHP) Verfügbarkeit Kondensationskraftwerke;
$LOAD par_X_E_DES_CHP_avail






