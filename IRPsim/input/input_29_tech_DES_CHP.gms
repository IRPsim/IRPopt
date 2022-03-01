* - description: Bitte geben Sie hier die maximale elektrische Leistung der Kraft-W�rme-Kopplungsanlage an
* - type: Float
* - identifier: Maximale elektrische Leistung Kraft-W�rme-Kopplungsanlage
* - unit: [MW]
* - domain: [0,)
* - default: 0.2
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_CHP_max(set_tech_DES_CHP) Leistung Kraft-W�rme-Kopplungsanlagen
$LOAD par_P_DES_CHP_max

* - description: Bitte geben Sie hier die technische Mindestleistung der Kraft-W�rme-Kopplungsanlage an
* - type: Float
* - identifier: Technische Mindestleistung Kraft-W�rme-Kopplungsanlage
* - unit: [MW]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_DES_CHP_min(set_tech_DES_CHP) Leistung Kraft-W�rme-Kopplungsanlagen
$LOAD par_P_DES_CHP_min

* - description: Bitte geben Sie hier den elektrischen Wirkungsgrad der Kraft-W�rme-Kopplungsanlage an
* - type: Float
* - identifier: Elektrischer Wirkungsgrad Kraft-W�rme-Kopplungsanlage
* - unit:
* - domain: (0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_CHP(set_tech_DES_CHP) Wirkungsgrad Kraft-W�rme-Kopplungsanlagen
$LOAD par_Eta_DES_CHP

* - description: Bitte geben Sie hier die Stromkennzahl der Kraft-W�rme-Kopplungsanlage an
* - type: Float
* - identifier: Stromkennzahl Kraft-W�rme-Kopplungsanlage
* - unit:
* - domain: (0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Sigma_DES_CHP(set_tech_DES_CHP) Strommkennzahl Kraft-W�rme-Kopplungsanlagen
$LOAD par_Sigma_DES_CHP

* - description: Bitte geben Sie hier den jahrlichen Abnutzungsgrad der Kraft-W�rme-Kopplungsanlage an
* - type: Float
* - identifier: J�hrliche Abnutzung der Kraft-W�rme-Kopplungsanlage
* - unit:
* - domain: [0,1]
* - default: 0.005
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_CHP(set_tech_DES_CHP) J�hrliche Abnutzung Kraft-W�rme-Kopplungsanlagen
$LOAD par_Wear_DES_CHP

* - description: Bitte geben Sie hier die j�hrliche Preisentwicklung (Investitionskosten) der Kraft-W�rme-Kopplungsanlage an
* - type: Float
* - identifier: J�hrliche Preisentwicklung der Kraft-W�rme-Kopplungsanlage
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_CHP(set_tech_DES_CHP) J�hrliche Preisentwicklung der Kraft-W�rme-Kopplungsanlagen
$LOAD par_Learning_DES_CHP

* - description: Bitte geben Sie hier die technische Lebensdauer der Kraft-W�rme-Kopplungsanlage an
* - type: Integer
* - identifier: Technische Lebensdauer Kraft-W�rme-Kopplungsanlage
* - unit: [a]
* - domain: [0,50]
* - default: 20
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_CHP(set_tech_DES_CHP) Technische Lebensdauer Kraft-W�rme-Kopplungsanlagen
$LOAD par_Life_DES_CHP

* - description: Bitte geben Sie hier die Investitionskosten f�r die Kraft-W�rme-Kopplungsanlage an
* - type: Float
* - identifier: Investitionskosten Kraft-W�rme-Kopplungsanlage
* - unit: [EUR/MWh]
* - domain: [0,)
* - default: 320
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_CHP_Cap(set_tech_DES_CHP)
$LOAD par_C_DES_CHP_Cap

* - description: Bitte geben Sie hier die Kostenentwicklung der Kraft-W�rme-Kopplungsanlage an
* - type: Boolean
* - identifier: Kostenentwicklung Kraft-W�rme-Kopplungsanlage
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_CHP_Cap(set_tech_DES_CHP) Investitionskosten Kraft-W�rme-Kopplungsanlagen
$LOAD par_Ctrend_DES_CHP_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation der Kraft-W�rme-Kopplungsanlage entfallen soll
* - type: Float
* - identifier: Anteilige Installationskosten Kraft-W�rme-Kopplungsanlage
* - unit:
* - domain: [0,1]
* - default: 0.1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_CHP_Ins(set_tech_DES_CHP) Anteilige Installationskosten Kraft-W�rme-Kopplungsanlagen
$LOAD par_Alpha_DES_CHP_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz f�r Wartung- und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand Kraft-W�rme-Kopplungsanlage
* - unit:
* - domain: [0,1]
* - default: 0.1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_CHP_OuM(set_tech_DES_CHP) Anteiliger Betriebs- und Wartungsaufwand Kraft-W�rme-Kopplungsanlagen
$LOAD par_Alpha_DES_CHP_OuM

* - description: Bitte geben Sie ein, wie hoch die Unternehmensf�rderung pro MW f�r die Kraft-W�rme-Kopplungsanlage sein soll
* - type: Float
* - identifier: Unternehmensf�rderung Leistung Kraft-W�rme-Kopplungsanlage
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_CHP(set_tech_DES_CHP) Unternehmensf�rderung Leistung Kraft-W�rme-Kopplungsanlagen
$LOAD par_Inc_DES_CHP

* - description: Bitte geben Sie ein, wie viel Prozent der Leistung zur Verf�gung stehen soll
* - type: Float
* - identifier: Prozentuale Verf�gung Leistung
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

* - description: Bitte geben Sie hier den Hitzeverlustkoeffizient der Kraft-W�rme-Kopplungsanlage an.
* - type: Float
* - identifier: Hitzeverlustkoeffizient Kraft-W�rme-Kopplungsanlage
* - unit: [1/h]
* - domain: [0,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Lambda_DES_CHP_heatlosses(set_tech_DES_CHP) Hitzeverlustkoeffizient
$LOAD par_Lambda_DES_CHP_heatlosses

* - description: Bitte geben Sie hier die Mindestbetriebszeit der Kraft-W�rme-Kopplungsanlage an.
* - type: Float
* - identifier: Mindestbetriebszeit Kraft-W�rme-Kopplungsanlage
* - unit: [h]
* - domain: [0,)
* - default: 25
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_DES_CHP_minon(set_tech_DES_CHP) Mindestbetriebszeit
$LOAD par_H_DES_CHP_minon

* - description: Bitte geben Sie hier die Mindeststillstandszeit der Kraft-W�rme-Kopplungsanlage an.
* - type: Float
* - identifier: Mindeststillstandszeit Kraft-W�rme-Kopplungsanlage
* - unit: [h]
* - domain: [0,)
* - default: 25
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_DES_CHP_minoff(set_tech_DES_CHP) Mindeststillstandszeit
$LOAD par_H_DES_CHP_minoff

* - description: Bitte geben Sie hier die Maximalbetriebszeit der Kraft-W�rme-Kopplungsanlage an.
* - type: Float
* - identifier: Maximalbetriebszeit Kraft-W�rme-Kopplungsanlage
* - unit: [h]
* - domain: [0,)
* - default: 100
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_DES_CHP_maxon(set_tech_DES_CHP) Maximalbetriebszeit
$LOAD par_H_DES_CHP_maxon


* - description: Bitte geben Sie hier die technische Verf�gbarkeit der Kraft-W�rme-Kopplungsanlage nach Ber�cksichtigung von Wartungen etc. als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: Verf�gbarkeit Kraft-W�rme-Kopplungsanlage
* - unit:
* - default: 1
* - domain: [0,1]
* - hidden:
* - processing:
PARAMETER par_X_E_DES_CHP_avail(set_ii,set_tech_DES_CHP) Verf�gbarkeit Kondensationskraftwerke;
$LOAD par_X_E_DES_CHP_avail






