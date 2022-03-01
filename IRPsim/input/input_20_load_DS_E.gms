* - description: Bitte geben Sie hier ein gewünschtes elektrische Lastprofil ein
* - type: Float
* - identifier: Elektrisches Lastprofil
* - unit: [MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_DS_E(set_ii,set_load_DS_E) Elektrisches Lastprofil
$LOAD par_L_DS_E

* - description: Bitte geben Sie hier den gewünschten mittleren Jahresstromverbrauch eines Kunden an - Das elektrische Lastprofil wird auf diesen Wert skaliert
* - type: Float
* - identifier: Mittlerer Stromverbrauch eines Kunden pro Jahr
* - unit: [MWh / a]
* - domain:
* - hidden:
* - processing:
PARAMETER par_L_DS_E_avg(set_load_DS_E) Mittlerer Stromverbrauch
$LOAD par_L_DS_E_avg

* - description: Bitte geben Sie hier an, wie viel Prozent der ausgewählten Last abgeworfen werden kann.
* - type: Float
* - identifier: Lastverschiebungskapazitäten Abwurf
* - unit:
* - domain: [0,1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_DSM_DS_E_Cdown(set_load_DS_E) Elektrisches Lastprofil
$LOAD par_DSM_DS_E_Cdown

* - description: Bitte geben Sie hier an, um wie viel Prozent die ausgewählte Last gesteigert werden kann.
* - type: Float
* - identifier: Lastverschiebungskapazitäten Steigerung
* - unit:
* - domain: [0,1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_DSM_DS_E_Cup(set_load_DS_E) Elektrisches Lastprofil
$LOAD par_DSM_DS_E_Cup

* - description: Bitte geben Sie hier an, um wie viele Stunden eine Last verschoben werden kann
* - type: Float
* - identifier: Lastverschiebungsverzögerung
* - unit: [h]
* - domain: [0,24]
* - validation:
* - hidden:
* - processing:
PARAMETER par_DSM_DS_E_t(set_load_DS_E) Elektrisches Lastprofil
$LOAD par_DSM_DS_E_t

* - description: Bitte geben Sie hier, sofern gewünscht, eine Obergrenze für den Verbrauch eigenerzeugten Stroms an
* - type: Float
* - identifier: Beschränkung Eigenverbrauch
* - unit: [MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_DS_E_self(set_ii,set_load_DS_E) Beschränkung
$LOAD par_L_DS_E_self

* - description: Bitte geben Sie hier, sofern gewünscht, eine Obergrenze für den Verbrauch eigenerzeugten Stroms an
* - type: Boolean
* - identifier: Optionale Beschränkung Eigenverbrauch
* - unit:
* - domain: [0,1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_DS_E_self(set_load_DS_E) Optionale Beschränkung
$LOAD par_X_DS_E_self
