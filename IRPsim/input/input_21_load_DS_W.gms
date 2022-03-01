* - description: Bitte geben Sie hier ein gew�nschtes W�rme-Lastprofil ein
* - type: Float
* - identifier: W�rme Lastprofil
* - unit: [MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_DS_W(set_ii,set_load_DS_W)  Thermisches Lastprofil
$LOAD par_L_DS_W

* - description: Bitte geben Sie hier den gew�nschten mittleren Jahresw�rmeverbrauch eines Kunden an - Das K�lte-Lastprofil wird auf diesen Wert skaliert
* - type: Float
* - identifier: Mittlerer W�rmeverbrauch eines Kunden pro Jahr
* - unit: [MWh / a]
* - domain:
* - hidden:
* - processing:
PARAMETER par_L_DS_W_avg(set_load_DS_W) Mittlerer W�rmeverbrauch
$LOAD par_L_DS_W_avg

* - description: Bitte geben Sie hier, sofern gew�nscht, eine Obergrenze f�r den Verbrauch von eigenerzeugter W�rme an
* - type: Float
* - identifier: Beschr�nkung Eigenverbrauch
* - unit: [MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_DS_W_self(set_ii,set_load_DS_W) Beschr�nkung
$LOAD par_L_DS_W_self

* - description: Bitte geben Sie hier, sofern gew�nscht, eine Obergrenze f�r den Verbrauch von eigenerzeugter W�rme an
* - type: Boolean
* - identifier: Optionale Beschr�nkung Eigenverbrauch
* - unit:
* - domain: [0|1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_DS_W_self(set_load_DS_W) Optionale Beschr�nkung
$LOAD par_X_DS_W_self
