* - description: Bitte geben Sie hier ein gew�nschtes elektrische Lastprofil ein
* - type: Float
* - identifier: Elektrisches Lastprofil
* - unit: [MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_DS_E(set_ii,set_load_DS_E) Elektrisches Lastprofil
$LOAD par_L_DS_E

* - description: Bitte geben Sie hier den gew�nschten mittleren Jahresstromverbrauch eines Kunden an - Das elektrische Lastprofil wird auf diesen Wert skaliert
* - type: Float
* - identifier: Mittlerer Stromverbrauch eines Kunden pro Jahr
* - unit: [MWh / a]
* - domain:
* - hidden:
* - processing:
PARAMETER par_L_DS_E_avg(set_load_DS_E) Mittlerer Stromverbrauch
$LOAD par_L_DS_E_avg

* - description: Bitte geben Sie hier an, wie viel Prozent der ausgew�hlten Last abgeworfen werden kann.
* - type: Float
* - identifier: Lastverschiebungskapazit�ten Abwurf
* - unit:
* - domain: [0,1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_DSM_DS_E_Cdown(set_load_DS_E) Elektrisches Lastprofil
$LOAD par_DSM_DS_E_Cdown

* - description: Bitte geben Sie hier an, um wie viel Prozent die ausgew�hlte Last gesteigert werden kann.
* - type: Float
* - identifier: Lastverschiebungskapazit�ten Steigerung
* - unit:
* - domain: [0,1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_DSM_DS_E_Cup(set_load_DS_E) Elektrisches Lastprofil
$LOAD par_DSM_DS_E_Cup

* - description: Bitte geben Sie hier an, um wie viele Stunden eine Last verschoben werden kann
* - type: Float
* - identifier: Lastverschiebungsverz�gerung
* - unit: [h]
* - domain: [0,24]
* - validation:
* - hidden:
* - processing:
PARAMETER par_DSM_DS_E_t(set_load_DS_E) Elektrisches Lastprofil
$LOAD par_DSM_DS_E_t

* - description: Bitte geben Sie hier, sofern gew�nscht, eine Obergrenze f�r den Verbrauch eigenerzeugten Stroms an
* - type: Float
* - identifier: Beschr�nkung Eigenverbrauch
* - unit: [MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_DS_E_self(set_ii,set_load_DS_E) Beschr�nkung
$LOAD par_L_DS_E_self

* - description: Bitte geben Sie hier, sofern gew�nscht, eine Obergrenze f�r den Verbrauch eigenerzeugten Stroms an
* - type: Boolean
* - identifier: Optionale Beschr�nkung Eigenverbrauch
* - unit:
* - domain: [0,1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_DS_E_self(set_load_DS_E) Optionale Beschr�nkung
$LOAD par_X_DS_E_self
