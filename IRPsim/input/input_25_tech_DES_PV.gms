* - description: Bitte geben Sie hier die gesamte Modulfl�che der PV-Anlage an
* - type: Float
* - identifier: Modulfl�che PV-Anlage
* - unit: [m2]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_A_DES_PV(set_tech_DES_PV) Modulfl�che PV-Anlage
$LOAD par_A_DES_PV

* - description: Bitte geben Sie hier den Modulwirkungsgrad der PV-Anlage an
* - type: Float
* - identifier: Modul-Wirkungsgrad PV-Anlage
* - unit:
* - domain: (0,1]
* - default: 0.17
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_DES_PV(set_tech_DES_PV) Modul-Wirkungsgrad PV-Anlage
$LOAD  par_Eta_DES_PV

* - description: Bitte geben Sie hier den j�hrlichen Abnutzungsgrad der PV-Anlage an
* - type: Float
* - identifier: J�hrliche Abnutzung der PV-Anlage
* - unit:
* - domain: [0,1]
* - default: 0.005
* - validation:
* - hidden:
* - processing:
PARAMETER par_Wear_DES_PV(set_tech_DES_PV) J�hrliche Abnutzung Photovoltaikmodell
$LOAD par_Wear_DES_PV

* - description: Bitte geben Sie hier die j�hrliche Preisentwicklung der PV-Anlage an
* - type: Float
* - identifier: J�hrliche Preisentwicklung der PV-Anlage
* - unit:
* - domain: [-1,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Learning_DES_PV(set_tech_DES_PV) J�hrliche Preisentwicklung der PV-Anlage
$LOAD par_Learning_DES_PV

* - description: Bitte geben Sie hier die Lebensdauer der PV-Anlage in Jahren an
* - type: Integer
* - identifier: Technische Lebensdauer PV-Anlage
* - unit: [a]
* - domain: [0,50]
* - default: 20
* - validation:
* - hidden:
* - processing:
PARAMETER par_Life_DES_PV(set_tech_DES_PV) Technische Lebensdauer PV-Anlage
$LOAD par_Life_DES_PV

* - description: Bitte geben Sie hier die spezifischen Investitionskosten f�r das PV-Modul an
* - type: Float
* - identifier: Investitionskosten PV-Modul
* - unit: [EUR / m2]
* - domain: [0,)
* - default: 320
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_DES_PV_Cap(set_tech_DES_PV)
$LOAD par_C_DES_PV_Cap

* - description: Bitte geben Sie hier die j�hrliche Kostenentwicklung f�r ein PV-Modul an
* - type: Boolean
* - identifier: Kostenentwicklung PV-Modul
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden: 1
PARAMETER par_Ctrend_DES_PV_Cap(set_tech_DES_PV) Investitionskosten Durchlauferhitzer
$LOAD par_Ctrend_DES_PV_Cap

* - description: Bitte geben Sie an, welcher Anteil der Investitionskosten auf die Installation der PV-Anlage entfallen soll
* - type: Float
* - identifier: Anteilige Installationskosten PV-Anlage
* - unit:
* - domain: [0,1]
* - default: 0.1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_PV_Ins(set_tech_DES_PV) Anteilige Installationskosten PV-Anlage
$LOAD par_Alpha_DES_PV_Ins

* - description: Bitte geben Sie den spezifischen Kostensatz f�r Wartung und Instandhaltungen als Anteil der Investitionskosten an
* - type: Float
* - identifier: Anteiliger Betriebs- und Wartungsaufwand PV-Anlage
* - unit:
* - domain: [0,1]
* - default: 0.1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Alpha_DES_PV_OuM(set_tech_DES_PV) Anteiliger Betriebs- und Wartungsaufwand PV-Anlage
$LOAD par_Alpha_DES_PV_OuM

* - description: Bitte geben Sie ein, wie viel Unternehmensf�rderung pro MW die PV-Anlage erhalten soll
* - type: Float
* - identifier: Unternehmensf�rderung Fl�che PV-Anlage
* - unit: [EUR / m2]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Inc_DES_PV(set_tech_DES_PV) Unternehmensf�rderung Leistung PV-Anlage
$LOAD par_Inc_DES_PV

* - description: Bitte geben Sie an, welche F�rderung die PV-Anlage seitens Swiss Grid erhalten soll
* - type: Float
* - identifier: F�rderung Swiss Grid hins. Investitionskosten PV-Anlage
* - unit:
* - domain: [0,1]
* - default: 0.3
* - validation:
* - hidden:
* - processing:
SCALAR sca_Inc_MS_PV_SG F�rderung Swiss Grid hins. Investitionskosten Photovoltaik
$LOAD sca_Inc_MS_PV_SG
