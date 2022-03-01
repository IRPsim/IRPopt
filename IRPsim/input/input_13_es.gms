* - description: Bitte geben Sie hier Daten für die Globalstrahlung in Form einer Zeitreihe an
* - type: Float
* - identifier: Globalstrahlung
* - unit: [W / m2]
* - domain: [0,1370]
PARAMETER par_I_ES(set_ii) Globalstrahlung
$LOAD par_I_ES

* - description: Bitte geben Sie hier Daten für die Außentemperatur in Form einer Zeitreihe an
* - type: Float
* - identifier: Außentemperatur
* - unit: [°C]
* - domain: [-60,60]
PARAMETER par_T_ES(set_ii) Außentemperatur
$LOAD par_T_ES

* - description: Bitte geben Sie hier Daten für die Windgeschwindigkeit in Form einer Zeitreihe an
* - type: Float
* - identifier: Windgeschwindigkeit
* - unit: [m / s]
* - domain: [0,120]
PARAMETER par_V_ES(set_ii) Windgeschwindigkeit
$LOAD par_V_ES

* - description: Bitte geben Sie hier an, auf welcher Messhöhe die Windgeschwindigkeit aufgezeichnet wurde
* - type: Float
* - identifier: Messhöhe Windgeschwindigkeit
* - default: 75
* - unit: [m]
SCALAR sca_MH_ES_V Messhöhe Windgeschwindigkeit
$LOAD sca_MH_ES_V

* - description: Bitte legen Sie hier die Rauhigkeitslänge an
* - type: Float
* - identifier: Rauhigkeitslänge
* - default: 20
* - unit: [m]
SCALAR sca_Z_ES_0 Rauhigkeitslänge
$LOAD sca_Z_ES_0

* - description: Bitte geben Sie hier an, in welcher Höhe über dem Boden die Außentemperatur gemessen wurde
* - type: Float
* - identifier: Messhöhe Außentemperatur
* - default: 75
* - unit: [m]
SCALAR sca_MH_ES_T Messhöhe Außentemperatur
$LOAD sca_MH_ES_T
