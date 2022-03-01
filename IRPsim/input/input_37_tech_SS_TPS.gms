* - description: Bitte geben Sie hier die maximale elektrische Leistung des Kondensationskraftwerks an.
* - type: Float
* - identifier: Maximale elektrische Leistung Kondensationskraftwerke
* - unit: [MW]
* - domain: [0,)
* - default: 0.2
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_TPS_max(set_tech_SS_TPS) Leistung Kondensationskraftwerke
$LOAD par_P_SS_TPS_max

* - description: Bitte geben Sie hier die minimale elektrische Leistung des Kondensationskraftwerks an.
* - type: Float
* - identifier: Minimale elektrische Leistung Kondensationskraftwerke
* - unit: [MW]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_TPS_min(set_tech_SS_TPS) Leistung Kondensationskraftwerke
$LOAD par_P_SS_TPS_min

* - description: Bitte geben Sie hier die maximale thermische Leistung des Kondensationskraftwerks an.
* - type: Float
* - identifier: Maximale thermische Leistung Kondensationskraftwerke
* - unit: [MW]
* - domain: [0,)
* - default: 0.2
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_SS_TPS_max(set_tech_SS_TPS) Leistung Kondensationskraftwerke
$LOAD par_Q_SS_TPS_max

* - description: Bitte geben Sie hier den Wirkungsgrad des Kondensationskraftwerks bei minimaler Leistung an.
* - type: Float
* - identifier: Wirkungsgrad Kondensationskraftwerke bei minimaler Leistung
* - unit:
* - domain: (0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_TPS_min(set_tech_SS_TPS) Wirkungsgrad Kondensationskraftwerke
$LOAD par_Eta_SS_TPS_min

* - description: Bitte geben Sie hier den Wirkungsgrad des Kondensationskraftwerks bei maximaler Leistung an.
* - type: Float
* - identifier: Wirkungsgrad Kondensationskraftwerke bei maximaler Leistung
* - unit:
* - domain: (0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_TPS_max(set_tech_SS_TPS) Wirkungsgrad Kondensationskraftwerke
$LOAD par_Eta_SS_TPS_max

* - description: Bitte geben Sie hier die maximale Hochfahrgeschwindigkeit an.
* - type: Float
* - identifier: Maximale Hochfahrgeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_TPS_ru_general(set_tech_SS_TPS) Hochfahrgeschwindigkeit
$LOAD par_P_SS_TPS_ru_general

* - description: Bitte geben Sie hier die maximale Anfahrgeschwindigkeit an.
* - type: Float
* - identifier: Maximale Anfahrgeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_TPS_ru_start(set_tech_SS_TPS) Anfahrgeschwindigkeit
$LOAD par_P_SS_TPS_ru_start

* - description: Bitte geben Sie hier die maximale Herunterfahrgeschwindigkeit an.
* - type: Float
* - identifier: Minimale Herunterfahrgeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_TPS_rd_general(set_tech_SS_TPS) Herunterfahrgeschwindigkeit
$LOAD par_P_SS_TPS_rd_general

* - description: Bitte geben Sie hier die maximale Abschaltegeschwindigkeit an.
* - type: Float
* - identifier: Minimale Abschaltegeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_TPS_rd_stop(set_tech_SS_TPS) Abschaltegeschwindigkeit
$LOAD par_P_SS_TPS_rd_stop

* - description: Bitte geben Sie hier den Hitzeverlustkoeffizient des Kondensationskraftwerks an. Der Wert kann aus Silbernagl et al., 2014 entnommen werden.
* - type: Float
* - identifier: Hitzeverlustkoeffizient Kondensationskraftwerke
* - unit: [1/h]
* - domain: [0,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Lambda_SS_TPS_heatlosses(set_tech_SS_TPS) Hitzeverlustkoeffizient
$LOAD par_Lambda_SS_TPS_heatlosses

* - description: Bitte geben Sie hier die Mindestbetriebszeit des Kondensationskraftwerks an.
* - type: Float
* - identifier: Mindestbetriebszeit Kondensationskraftwerke
* - unit: [h]
* - domain: [0,)
* - default: 25
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_SS_TPS_minon(set_tech_SS_TPS) Mindestbetriebszeit
$LOAD par_H_SS_TPS_minon

* - description: Bitte geben Sie hier die Mindeststillstandszeit des Kondensationskraftwerks an.
* - type: Float
* - identifier: Mindeststillstandszeit Kondensationskraftwerke
* - unit: [h]
* - domain: [0,)
* - default: 25
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_SS_TPS_minoff(set_tech_SS_TPS) Mindeststillstandszeit
$LOAD par_H_SS_TPS_minoff

* - description: Bitte geben Sie hier die Maximalbetriebszeit des Kondensationskraftwerks an.
* - type: Float
* - identifier: Maximalbetriebszeit Kondensationskraftwerke
* - unit: [h]
* - domain: [0,)
* - default: 100
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_SS_TPS_maxon(set_tech_SS_TPS) Maximalbetriebszeit
$LOAD par_H_SS_TPS_maxon

* - description: Bitte geben Sie hier die Vorlauftemperatur des Kondensationskraftwerks als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Vorlauftemperatur Kondensationskraftwerke
* - unit: [°C]
* - default: 373.15
* - domain: [0,1000]
* - hidden:
* - processing:
PARAMETER par_T_SS_TPS_feed(set_ii,set_tech_SS_TPS) Vorlauftemperatur Kondensationskraftwerke
$LOAD par_T_SS_TPS_feed

* - description: Bitte geben Sie hier die Rücklauftemperatur des Kondensationskraftwerks als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Rücklauftemperatur Kondensationskraftwerke
* - unit: [°C]
* - default: 333.15
* - domain: [0,1000]
* - hidden:
* - processing:
PARAMETER par_T_SS_TPS_return(set_ii,set_tech_SS_TPS) Rücklauftemperatur Kondensationskraftwerke;
$LOAD par_T_SS_TPS_return

* - description: Bitte geben Sie hier die Kühlwassertemperatur des Kondensationskraftwerks als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Kühlwassertemperatur Kondensationskraftwerke
* - unit: [°C]
* - default: 287.15
* - domain: [0,1000]
* - hidden:
* - processing:
PARAMETER par_T_SS_TPS_cooling(set_ii,set_tech_SS_TPS) Kühlwassertemperatur Kondensationskraftwerke;
$LOAD par_T_SS_TPS_cooling

* - description: Bitte geben Sie hier die technische Verfügbarkeit des Kondensationskraftwerks nach Berücksichtigung von Wartungen etc. als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Verfügbarkeit Kondensationskraftwerke
* - unit:
* - default: 1
* - domain: [0,1]
* - hidden:
* - processing:
PARAMETER par_X_E_SS_TPS_avail(set_ii,set_tech_SS_TPS) Verfügbarkeit Kondensationskraftwerke;
$LOAD par_X_E_SS_TPS_avail

* - description: Bitte geben Sie hier an, ob es sich um ein Entnahme-Kondensationskraftwerk handelt.
* - type: Boolean
* - identifier: Auswahl Entnahme-Kondensationskraftwerk
* - unit:
* - domain: [0|1]
* - rule: IF (par_X_E_SS_TPS_condensing == 1, par_X_E_SS_TPS_pressure = 0)
* - rule: IF (par_X_E_SS_TPS_condensing == 0, par_X_E_SS_TPS_pressure = 1)
* - hidden:
* - processing:
PARAMETER par_X_E_SS_TPS_condensing(set_tech_SS_TPS) Auswahl Kondensationskraftwerke
$LOAD par_X_E_SS_TPS_condensing

* - description: Bitte geben Sie hier an, ob es sich um ein Gegendruckkraftwerk handelt.
* - type: Boolean
* - identifier: Auswahl Gegendruckkraftwerk
* - unit:
* - domain: [0|1]
* - rule: IF (par_X_E_SS_TPS_pressure == 1, par_X_E_SS_TPS_condensing = 0)
* - rule: IF (par_X_E_SS_TPS_pressure == 0, par_X_E_SS_TPS_condensing = 1)
* - hidden:
* - processing:
PARAMETER par_X_E_SS_TPS_pressure(set_tech_SS_TPS) Auswahl Kondensationskraftwerke
$LOAD par_X_E_SS_TPS_pressure

