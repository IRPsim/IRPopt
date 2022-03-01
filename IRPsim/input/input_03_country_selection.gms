* - description: Bitte w�hlen Sie f�r die Optimierung die l�nderspezifischen Eigenschaften des gew�nschten Landes aus
* - type: Boolean
* - identifier: L�nderauswahl Deutschland
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_DE_country == 1, sca_X_MS_CH_country = 0)
* - rule: IF (sca_X_MS_DE_country == 0, sca_X_MS_CH_country = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_DE_country L�nderwahl Deutschland
$LOAD sca_X_MS_DE_country

* - description: Bitte w�hlen Sie f�r die Optimierung die l�nderspezifischen Eigenschaften des gew�nschten Landes aus
* - type: Boolean
* - identifier: L�nderauswahl Schweiz
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_CH_country == 1, sca_X_MS_DE_country = 0)
* - rule: IF (sca_X_MS_CH_country == 0, sca_X_MS_DE_country = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CH_country L�nderwahl Deutschland
$LOAD sca_X_MS_CH_country
