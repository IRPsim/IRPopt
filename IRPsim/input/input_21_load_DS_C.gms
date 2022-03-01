* - description: Bitte geben Sie hier ein gewünschtes Kälte-Lastprofil ein
* - type: Float
* - identifier: Kälte-Lastprofil
* - unit: [MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_DS_C(set_ii,set_load_DS_C)  Thermisches Lastprofil
$LOAD par_L_DS_C

* - description: Bitte geben Sie hier den gewünschten mittleren Jahreskälteverbrauch eines Kunden an - Das Kälte-Lastprofil wird auf diesen Wert skaliert
* - type: Float
* - identifier: Mittlerer Kälteverbrauch eines Kunden pro Jahr
* - unit: [MWh / a]
* - domain:
* - hidden:
* - processing:
PARAMETER par_L_DS_C_avg(set_load_DS_C) Mittlerer Kälteverbrauch
$LOAD par_L_DS_C_avg

* - description: Bitte geben Sie hier, sofern gewünscht, eine Obergrenze für den Verbrauch von eigenerzeugter Kälte an
* - type: Float
* - identifier: Beschränkung Eigenverbrauch
* - unit: [MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_DS_C_self(set_ii,set_load_DS_C) Beschränkung
$LOAD par_L_DS_C_self

* - description: Bitte geben Sie hier an, ob die Obergrenze für den Verbrauch von eigenerzeugter Kälte berücksichtigt werden soll
* - type: Boolean
* - identifier: Optionale Beschränkung Eigenverbrauch
* - unit:
* - domain: [0|1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_DS_C_self(set_load_DS_C) Optionale Beschränkung
$LOAD par_X_DS_C_self
