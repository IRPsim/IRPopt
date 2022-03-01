* - description: Bitte wählen Sie für die Optimierung die länderspezifischen Eigenschaften des gewünschten Landes aus
* - type: Boolean
* - identifier: Länderauswahl Deutschland
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_DE_country == 1, sca_X_MS_CH_country = 0)
* - rule: IF (sca_X_MS_DE_country == 0, sca_X_MS_CH_country = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_DE_country Länderwahl Deutschland
$LOAD sca_X_MS_DE_country

* - description: Bitte wählen Sie für die Optimierung die länderspezifischen Eigenschaften des gewünschten Landes aus
* - type: Boolean
* - identifier: Länderauswahl Schweiz
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_CH_country == 1, sca_X_MS_DE_country = 0)
* - rule: IF (sca_X_MS_CH_country == 0, sca_X_MS_DE_country = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CH_country Länderwahl Deutschland
$LOAD sca_X_MS_CH_country
