* - description: Bitte geben Sie hier die maximale elektrische Leistung der Kraft-W�rme-Kopplungsanlage an.
* - type: Float
* - identifier: Maximale elektrische Leistung Kraft-W�rme-Kopplungsanlage
* - unit: [MW]
* - domain: [0,)
* - default: 0.2
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_CHP_max(set_tech_SS_CHP) Leistung Kraft-W�rme-Kopplungsanlage
$LOAD par_P_SS_CHP_max

* - description: Bitte geben Sie hier die minimale elektrische Leistung der Kraft-W�rme-Kopplungsanlage an.
* - type: Float
* - identifier: Minimale elektrische Leistung Kraft-W�rme-Kopplungsanlage
* - unit: [MW]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_CHP_min(set_tech_SS_CHP) Leistung Kraft-W�rme-Kopplungsanlage
$LOAD par_P_SS_CHP_min

* - description: Bitte geben Sie hier die maximale Fernw�rmeauskopplung der Kraft-W�rme-Kopplungsanlage an.
* - type: Float
* - identifier: Maximale thermische Leistung Kraft-W�rme-Kopplungsanlage
* - unit: [MW]
* - domain: [0,)
* - default: 0.2
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_SS_CHP_max(set_tech_SS_CHP) Leistung Kraft-W�rme-Kopplungsanlage
$LOAD par_Q_SS_CHP_max

* - description: Bitte geben Sie hier den Wirkungsgrad der Kraft-W�rme-Kopplungsanlage bei minimaler Leistung an.
* - type: Float
* - identifier: Wirkungsgrad Kraft-W�rme-Kopplungsanlage bei minimaler Leistung
* - unit:
* - domain: (0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_CHP_min(set_tech_SS_CHP) Wirkungsgrad Kraft-W�rme-Kopplungsanlage
$LOAD par_Eta_SS_CHP_min

* - description: Bitte geben Sie hier den Wirkungsgrad der Kraft-W�rme-Kopplungsanlage bei maximaler Leistung an.
* - type: Float
* - identifier: Wirkungsgrad Kraft-W�rme-Kopplungsanlage bei maximaler Leistung
* - unit:
* - domain: (0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_CHP_max(set_tech_SS_CHP) Wirkungsgrad Kraft-W�rme-Kopplungsanlage
$LOAD par_Eta_SS_CHP_max

* - description: Bitte geben Sie hier die maximale Hochfahrgeschwindigkeit an.
* - type: Float
* - identifier: Maximale Hochfahrgeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_CHP_ru_general(set_tech_SS_CHP) Hochfahrgeschwindigkeit
$LOAD par_P_SS_CHP_ru_general

* - description: Bitte geben Sie hier die maximale Anfahrgeschwindigkeit an.
* - type: Float
* - identifier: Maximale Anfahrgeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_CHP_ru_start(set_tech_SS_CHP) Anfahrgeschwindigkeit
$LOAD par_P_SS_CHP_ru_start

* - description: Bitte geben Sie hier die maximale Herunterfahrgeschwindigkeit an.
* - type: Float
* - identifier: Minimale Herunterfahrgeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_CHP_rd_general(set_tech_SS_CHP) Herunterfahrgeschwindigkeit
$LOAD par_P_SS_CHP_rd_general

* - description: Bitte geben Sie hier die maximale Abschaltegeschwindigkeit an.
* - type: Float
* - identifier: Minimale Abschaltegeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_CHP_rd_stop(set_tech_SS_CHP) Abschaltegeschwindigkeit
$LOAD par_P_SS_CHP_rd_stop

* - description: Bitte geben Sie hier den Hitzeverlustkoeffizient der Kraft-W�rme-Kopplungsanlage an. Der Wert kann aus Silbernagl et al., 2014 entnommen werden.
* - type: Float
* - identifier: Hitzeverlustkoeffizient Kraft-W�rme-Kopplungsanlage
* - unit: [1/h]
* - domain: [0,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Lambda_SS_CHP_heatlosses(set_tech_SS_CHP) Hitzeverlustkoeffizient
$LOAD par_Lambda_SS_CHP_heatlosses

* - description: Bitte geben Sie hier die Mindestbetriebszeit der Kraft-W�rme-Kopplungsanlage an.
* - type: Float
* - identifier: Mindestbetriebszeit Kraft-W�rme-Kopplungsanlage
* - unit: [h]
* - domain: [0,)
* - default: 25
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_SS_CHP_minon(set_tech_SS_CHP) Mindestbetriebszeit
$LOAD par_H_SS_CHP_minon

* - description: Bitte geben Sie hier die Mindeststillstandszeit der Kraft-W�rme-Kopplungsanlage an.
* - type: Float
* - identifier: Mindeststillstandszeit Kraft-W�rme-Kopplungsanlage
* - unit: [h]
* - domain: [0,)
* - default: 25
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_SS_CHP_minoff(set_tech_SS_CHP) Mindeststillstandszeit
$LOAD par_H_SS_CHP_minoff

* - description: Bitte geben Sie hier die Maximalbetriebszeit der Kraft-W�rme-Kopplungsanlage an.
* - type: Float
* - identifier: Maximalbetriebszeit Kraft-W�rme-Kopplungsanlage
* - unit: [h]
* - domain: [0,)
* - default: 100
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_SS_CHP_maxon(set_tech_SS_CHP) Maximalbetriebszeit
$LOAD par_H_SS_CHP_maxon

* - description: Bitte geben Sie hier die Vorlauftemperatur der Kraft-W�rme-Kopplungsanlage als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: Vorlauftemperatur Kraft-W�rme-Kopplungsanlage
* - unit: [�C]
* - default: 373.15
* - domain: [0,1000]
* - hidden:
* - processing:
PARAMETER par_T_SS_CHP_feed(set_ii,set_tech_SS_CHP) Vorlauftemperatur Kraft-W�rme-Kopplungsanlage
$LOAD par_T_SS_CHP_feed

* - description: Bitte geben Sie hier die R�cklauftemperatur der Kraft-W�rme-Kopplungsanlage als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: R�cklauftemperatur Kraft-W�rme-Kopplungsanlage
* - unit: [�C]
* - default: 333.15
* - domain: [0,1000]
* - hidden:
* - processing:
PARAMETER par_T_SS_CHP_return(set_ii,set_tech_SS_CHP) R�cklauftemperatur Kraft-W�rme-Kopplungsanlage;
$LOAD par_T_SS_CHP_return

* - description: Bitte geben Sie hier die K�hlwassertemperatur der Kraft-W�rme-Kopplungsanlage als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: K�hlwassertemperatur Kraft-W�rme-Kopplungsanlage
* - unit: [�C]
* - default: 287.15
* - domain: [0,1000]
* - hidden:
* - processing:
PARAMETER par_T_SS_CHP_cooling(set_ii,set_tech_SS_CHP) K�hlwassertemperatur Kraft-W�rme-Kopplungsanlage;
$LOAD par_T_SS_CHP_cooling

* - description: Bitte geben Sie hier die technische Verf�gbarkeit der Kraft-W�rme-Kopplungsanlage nach Ber�cksichtigung von Wartungen etc. als viertelst�ndliche Zeitreihe an.
* - type: Float
* - identifier: Verf�gbarkeit Kraft-W�rme-Kopplungsanlage
* - unit:
* - default: 1
* - domain: [0,1]
* - hidden:
* - processing:
PARAMETER par_X_E_SS_CHP_avail(set_ii,set_tech_SS_CHP) Verf�gbarkeit Kraft-W�rme-Kopplungsanlage;
$LOAD par_X_E_SS_CHP_avail

* - description: Bitte geben Sie hier an, ob es sich um ein Entnahme-Kondensationskraftwerk handelt.
* - type: Boolean
* - identifier: Auswahl Entnahme-Kondensationskraftwerk
* - unit:
* - domain: [0|1]
* - rule: IF (par_X_E_SS_CHP_condensing == 1, par_X_E_SS_CHP_pressure = 0)
* - rule: IF (par_X_E_SS_CHP_condensing == 0, par_X_E_SS_CHP_pressure = 1)
* - hidden:
* - processing:
PARAMETER par_X_E_SS_CHP_condensing(set_tech_SS_CHP) Auswahl Kraft-W�rme-Kopplungsanlage
$LOAD par_X_E_SS_CHP_condensing

* - description: Bitte geben Sie hier an, ob es sich um ein Gegendruckkraftwerk handelt.
* - type: Boolean
* - identifier: Auswahl Gegendruckkraftwerk
* - unit:
* - domain: [0|1]
* - rule: IF (par_X_E_SS_CHP_pressure == 1, par_X_E_SS_CHP_condensing = 0)
* - rule: IF (par_X_E_SS_CHP_pressure == 0, par_X_E_SS_CHP_condensing = 1)
* - hidden:
* - processing:
PARAMETER par_X_E_SS_CHP_pressure(set_tech_SS_CHP) Auswahl Kraft-W�rme-Kopplungsanlage
$LOAD par_X_E_SS_CHP_pressure

* - description: Bitte geben Sie hier an, ob es sich um ein Sonderkraftwerk handelt.
* - type: Boolean
* - identifier: Auswahl Sonderkraftwerk
* - unit:
* - domain: [0|1]
* - hidden:
* - processing:
PARAMETER par_X_E_SS_CHP_LSW(set_tech_SS_CHP)  Auswahl Kraft-W�rme-Kopplungsanlage
$LOAD par_X_E_SS_CHP_LSW



