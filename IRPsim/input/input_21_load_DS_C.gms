* - description: Bitte geben Sie hier ein gew�nschtes K�lte-Lastprofil ein
* - type: Float
* - identifier: K�lte-Lastprofil
* - unit: [MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_DS_C(set_ii,set_load_DS_C)  Thermisches Lastprofil
$LOAD par_L_DS_C

* - description: Bitte geben Sie hier den gew�nschten mittleren Jahresk�lteverbrauch eines Kunden an - Das K�lte-Lastprofil wird auf diesen Wert skaliert
* - type: Float
* - identifier: Mittlerer K�lteverbrauch eines Kunden pro Jahr
* - unit: [MWh / a]
* - domain:
* - hidden:
* - processing:
PARAMETER par_L_DS_C_avg(set_load_DS_C) Mittlerer K�lteverbrauch
$LOAD par_L_DS_C_avg

* - description: Bitte geben Sie hier, sofern gew�nscht, eine Obergrenze f�r den Verbrauch von eigenerzeugter K�lte an
* - type: Float
* - identifier: Beschr�nkung Eigenverbrauch
* - unit: [MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_DS_C_self(set_ii,set_load_DS_C) Beschr�nkung
$LOAD par_L_DS_C_self

* - description: Bitte geben Sie hier an, ob die Obergrenze f�r den Verbrauch von eigenerzeugter K�lte ber�cksichtigt werden soll
* - type: Boolean
* - identifier: Optionale Beschr�nkung Eigenverbrauch
* - unit:
* - domain: [0|1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_DS_C_self(set_load_DS_C) Optionale Beschr�nkung
$LOAD par_X_DS_C_self
