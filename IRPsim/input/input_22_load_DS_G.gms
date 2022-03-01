* - description: Bitte geben Sie hier ein gewünschtes Erdgas-Lastprofil als Zeitreihe ein
* - type: Float
* - identifier: Erdgas Lastprofil
* - unit: [MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_DS_G(set_ii,set_load_DS_G) Erdgas Lastprofil
$LOAD par_L_DS_G

* - description: Bitte geben Sie hier den gewünschten mittleren Jahreserdgasverbrauch eines Kunden an - Das Erdgas-Lastprofil wird auf diesen Wert skaliert
* - type: Float
* - identifier: Mittlerer Gasverbrauch eines Kunden pro Jahr
* - unit: [MWh / a]
* - domain:
* - hidden:
* - processing:
PARAMETER par_L_DS_G_avg(set_load_DS_G) Mittlerer Wärmeverbrauch
$LOAD par_L_DS_G_avg
