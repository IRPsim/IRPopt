* - description: Bitte geben Sie hier die maximale thermische Leistung des Biomasseboilers an
* - type: Float
* - identifier: Maximale Thermische Leistung Biomasseboiler
* - unit: [MW]
* - domain: (0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_BMB_max(set_tech_DES_BMB) Maximale Thermische Leistung Biomasseboiler
$LOAD par_Q_DES_BMB_max

* - description: Bitte geben Sie hier die minimale thermische Leistung des Biomasseboilers an (0 = keine Mindestlast)
* - type: Float
* - identifier: Minimale Thermische Leistung Biomasseboiler
* - unit: [MW]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_BMB_min(set_tech_DES_BMB) Minimale Thermische Leistung Biomasseboiler
$LOAD par_Q_DES_BMB_min

* - description: Bitte geben Sie hier den thermischen Wirkungsgrad des Biomasseboilers bei Nennlast an
* - type: Float
* - identifier: Nennwirkungsgrad Biomasseboiler
* - unit:
* - domain: (0,1]
* - default: 0.92
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_BMB_nom(set_tech_DES_BMB) Nennwirkungsgrad Biomasseboiler
$LOAD par_Eta_DES_BMB_nom

* - description: Bitte geben Sie hier den Kurvenparameter K der lastabhaengigen Effizienzkurve eta(beta) = eta_nom*(1-exp(-K*beta)) an.
*                ACHTUNG: beta ist im Modell auf [0,1] normiert, daher par_K_DES_BMB = 100 * K_Literatur
*                (z.B. 14.0 fuer den 12-kW-Pelletkessel, 2. Regression)
* - type: Float
* - identifier: Kurvenparameter Biomasseboiler
* - unit:
* - domain: (0,)
* - default: 14.0
* - validation:
* - hidden:
* - processing:
PARAMETER par_K_DES_BMB(set_tech_DES_BMB) Kurvenparameter Biomasseboiler
$LOAD par_K_DES_BMB

* - description: Bitte geben Sie hier den jaehrlichen Abnutzungsgrad des Biomasseboilers an
* - type: Float
* - identifier: Jaehrlicher Abnutzungsgrad Biomasseboiler
* - unit:
* - domain: [0,1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_BMB(set_tech_DES_BMB) Jaehrlicher Abnutzungsgrad Biomasseboiler
$LOAD par_Wear_DES_BMB

* - description: Bitte geben Sie hier die jaehrliche Preisentwicklung des Biomasseboilers an
* - type: Float
* - identifier: Jaehrliche Preisentwicklung Biomasseboiler
* - unit:
* - domain: [-1,1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_BMB(set_tech_DES_BMB) Jaehrliche Preisentwicklung Biomasseboiler
$LOAD par_Learning_DES_BMB

* - description: Bitte geben Sie hier die technische Lebensdauer des Biomasseboilers in Jahren an
* - type: Integer
* - identifier: Technische Lebensdauer Biomasseboiler
* - unit: [a]
* - domain: [0,50]
* - default: 20
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_BMB(set_tech_DES_BMB) Technische Lebensdauer Biomasseboiler
$LOAD par_Life_DES_BMB

* - description: Bitte geben Sie hier die anfallenden Investitionskosten fuer den Biomasseboiler an
* - type: Float
* - identifier: Investitionskosten Biomasseboiler
* - unit: [EUR]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_BMB_Cap(set_tech_DES_BMB) Investitionskosten Biomasseboiler
$LOAD par_C_DES_BMB_Cap

* - description: Bitte geben Sie hier die jaehrliche Kostenentwicklung des Biomasseboilers an
* - type: Float
* - identifier: Jaehrliche Kostenentwicklung Biomasseboiler
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_BMB_Cap(set_tech_DES_BMB) Jaehrliche Kostenentwicklung Biomasseboiler
$LOAD par_Ctrend_DES_BMB_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation des Biomasseboilers entfallen soll
* - type: Float
* - identifier: Anteilige Installationskosten Biomasseboiler
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_BMB_Ins(set_tech_DES_BMB) Anteilige Installationskosten Biomasseboiler
$LOAD par_Alpha_DES_BMB_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz fuer Wartung und Instandhaltung als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand Biomasseboiler
* - unit:
* - domain: [0,1]
* - default: 0.05
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_BMB_OuM(set_tech_DES_BMB) Anteiliger Betriebs- und Wartungsaufwand Biomasseboiler
$LOAD par_Alpha_DES_BMB_OuM

* - description: Bitte geben Sie ein, wie hoch die Unternehmensfoerderung pro MW fuer den Biomasseboiler sein soll
* - type: Float
* - identifier: Unternehmensfoerderung Leistung Biomasseboiler
* - unit: [EUR / MW]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_BMB(set_tech_DES_BMB) Unternehmensfoerderung Leistung Biomasseboiler
$LOAD par_Inc_DES_BMB

* - description: Bitte geben Sie ein, wie viel Prozent der Leistung zur Verfuegung stehen soll
* - type: Float
* - identifier: Prozentuale Verfuegung Leistung Biomasseboiler
* - unit:
* - domain: [0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_DES_BMB_percent(set_ii,set_tech_DES_BMB) Prozentuale Verfuegung Leistung Biomasseboiler
$LOAD par_Q_DES_BMB_utilpercent