* - description: Bitte geben Sie hier ein gew�nschtes Wasserstoff-Lastprofil ein
* - type: Float
* - identifier: Wasserstoff-Lastprofil
* - unit: [MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_DS_H(set_ii,set_load_DS_H)  Wasserstoff Lastprofil
$LOAD par_L_DS_H

* - description: Bitte geben Sie hier den gew�nschten mittleren JahresWasserstoffverbrauch eines Kunden an - Das Wasserstoff-Lastprofil wird auf diesen Wert skaliert
* - type: Float
* - identifier: Mittlerer Wasserstoffverbrauch eines Kunden pro Jahr
* - unit: [MWh / a]
* - domain:
* - hidden:
* - processing:
PARAMETER par_L_DS_H_avg(set_load_DS_H) Mittlerer Wasserstoffverbrauch
$LOAD par_L_DS_H_avg

* - description: Bitte geben Sie hier an, wie viel Prozent der ausgew�hlten Last abgeworfen werden kann.
* - type: Float
* - identifier: Lastverschiebungskapazit�ten Abwurf
* - unit:
* - domain: [0,1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_DSM_DS_H_Cdown(set_load_DS_H) Wasserstoff Lastprofil
$LOAD par_DSM_DS_H_Cdown

* - description: Bitte geben Sie hier an, um wie viel Prozent die ausgew�hlte Last gesteigert werden kann.
* - type: Float
* - identifier: Lastverschiebungskapazit�ten Steigerung
* - unit:
* - domain: [0,1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_DSM_DS_H_Cup(set_load_DS_H) Wasserstoff Lastprofil
$LOAD par_DSM_DS_H_Cup

* - description: Bitte geben Sie hier an, um wie viele Stunden eine Last verschoben werden kann
* - type: Float
* - identifier: Lastverschiebungsverz�gerung
* - unit: [h]
* - domain: [0,24]
* - validation:
* - hidden:
* - processing:
PARAMETER par_DSM_DS_H_t(set_load_DS_H) Wasserstoff Lastprofil
$LOAD par_DSM_DS_H_t
