* - description: Bitte geben Sie hier ein gewünschtes Wärme-Lastprofil ein
* - type: Float
* - identifier: Wärme Lastprofil
* - unit: [MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_DS_W(set_ii,set_load_DS_W)  Thermisches Lastprofil
$LOAD par_L_DS_W

* - description: Bitte geben Sie hier den gewünschten mittleren Jahreswärmeverbrauch eines Kunden an - Das Kälte-Lastprofil wird auf diesen Wert skaliert
* - type: Float
* - identifier: Mittlerer Wärmeverbrauch eines Kunden pro Jahr
* - unit: [MWh / a]
* - domain:
* - hidden:
* - processing:
PARAMETER par_L_DS_W_avg(set_load_DS_W) Mittlerer Wärmeverbrauch
$LOAD par_L_DS_W_avg

* - description: Bitte geben Sie hier, sofern gewünscht, eine Obergrenze für den Verbrauch von eigenerzeugter Wärme an
* - type: Float
* - identifier: Beschränkung Eigenverbrauch
* - unit: [MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_DS_W_self(set_ii,set_load_DS_W) Beschränkung
$LOAD par_L_DS_W_self

* - description: Bitte geben Sie hier, sofern gewünscht, eine Obergrenze für den Verbrauch von eigenerzeugter Wärme an
* - type: Boolean
* - identifier: Optionale Beschränkung Eigenverbrauch
* - unit:
* - domain: [0|1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_DS_W_self(set_load_DS_W) Optionale Beschränkung
$LOAD par_X_DS_W_self
