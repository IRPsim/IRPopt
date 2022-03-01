* - description: Einlesen des zu optimierenden Jahres
* - type: Integer
* - identifier: Jahreszahl
* - unit: [a]
* - domain: [1,20]
* - hidden: 1
SET set_a(*) Jahreszahl
$LOAD set_a

* - description: Einlesen des zu optimierenden Jahres
* - type: Integer
* - identifier: Jahreszahl
* - unit: [a]
* - domain: [1,20]
* - default: 0
* - hidden: 1
* - processing:
SCALAR sca_a Jahreszahl
$LOAD sca_a

* - description: Einlesen der zu optimierenden Jahre
* - type: Integer
* - identifier: Jahreszahl
* - unit: [a]
* - domain: [1,20]
* - hidden: 1
SET set_a_total(*) Jahresangabe
$LOAD set_a_total

* - description: Einlesen der Zeitschrittlänge der Simulationszeitreihen (bezogen auf eine Stunde Bsp. 15 Min = 0.25)
* - type: Float
* - identifier: Zeitschrittlänge
* - unit: [h]
* - domain: (0,)
* - default: 0.25
* - hidden: 1
SCALAR sca_delta_ii Zeitschrittlänge
$LOAD sca_delta_ii

* - description: Einlesen des Simulationshorizonts
* - type: TimeSeries
* - identifier: Simulationshorizont
* - unit: [Zeitschritt pro h]
* - hidden: 1
SET set_ii_0(*) Simulationshorizont
$LOAD set_ii_0

* - description: Einlesen des Simulationshorizonts
* - type: TimeSeries
* - identifier: Simulationshorizont
* - unit: [Zeitschritt pro h]
* - hidden: 1
SET set_ii(set_ii_0) Simulationshorizont
$LOAD set_ii

* - description: Einlesen des Optimierungshorizonts
* - type: TimeSeries
* - identifier: Optimierungshorizont
* - hidden: 1
SET set_t(set_ii) Optimierungshorizont
$LOAD set_t

* - description: Einlesen der Monate
* - type: String
* - identifier: Monate
* - hidden: 1
SET set_jj(*) Monate
$LOAD set_jj

* - description: Einlesen des Speicherhorizonts
* - type: TimeSeries
* - identifier: Speicherhorizont
* - hidden: 1
SET set_optstore(set_ii) Speicherhorizont
$LOAD set_optstore

* - description: Einlesen der Optimierungszeitpunkte
* - type: String
* - identifier: Optimierungszeitpunkte
* - hidden: 1
SET set_optsteps(set_ii) Optimierungszeitpunkte
$LOAD set_optsteps
   