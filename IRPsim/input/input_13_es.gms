* - description: Bitte geben Sie hier Daten f�r die Globalstrahlung in Form einer Zeitreihe an
* - type: Float
* - identifier: Globalstrahlung
* - unit: [W / m2]
* - domain: [0,1370]
PARAMETER par_I_ES(set_ii) Globalstrahlung
$LOAD par_I_ES

* - description: Bitte geben Sie hier Daten f�r die Au�entemperatur in Form einer Zeitreihe an
* - type: Float
* - identifier: Au�entemperatur
* - unit: [�C]
* - domain: [-60,60]
PARAMETER par_T_ES(set_ii) Au�entemperatur
$LOAD par_T_ES

* - description: Bitte geben Sie hier Daten f�r die Windgeschwindigkeit in Form einer Zeitreihe an
* - type: Float
* - identifier: Windgeschwindigkeit
* - unit: [m / s]
* - domain: [0,120]
PARAMETER par_V_ES(set_ii) Windgeschwindigkeit
$LOAD par_V_ES

* - description: Bitte geben Sie hier an, auf welcher Messh�he die Windgeschwindigkeit aufgezeichnet wurde
* - type: Float
* - identifier: Messh�he Windgeschwindigkeit
* - default: 75
* - unit: [m]
SCALAR sca_MH_ES_V Messh�he Windgeschwindigkeit
$LOAD sca_MH_ES_V

* - description: Bitte legen Sie hier die Rauhigkeitsl�nge an
* - type: Float
* - identifier: Rauhigkeitsl�nge
* - default: 20
* - unit: [m]
SCALAR sca_Z_ES_0 Rauhigkeitsl�nge
$LOAD sca_Z_ES_0

* - description: Bitte geben Sie hier an, in welcher H�he �ber dem Boden die Au�entemperatur gemessen wurde
* - type: Float
* - identifier: Messh�he Au�entemperatur
* - default: 75
* - unit: [m]
SCALAR sca_MH_ES_T Messh�he Au�entemperatur
$LOAD sca_MH_ES_T
