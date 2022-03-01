* - description: Bitte w�hlen Sie hier aus, ob der ausgew�hlte Prosumstorer (Technologie, Last, Netz, Markt etc.) im Modell ber�cksichtigt werden soll
* - type: Boolean
* - identifier: Verwendung im Modell
* - unit:
* - domain: [0|1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_pss_model(set_pss) Vorhandensein Modell
$LOAD par_X_pss_model

* - description: Bitte w�hlen Sie hier aus, ob der ausgew�hlte Prosumstorer (Technologie, Last, Netz, Markt etc.) im Modell (St�tzjahr) ber�cksichtigt werden soll
* - type: Boolean
* - identifier: Verwendung im Modell (St�tzjahr)
* - unit:
* - domain: [0|1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_pss_support(set_pss) Vorhandensein Modell
$LOAD par_X_pss_support

* - description: Bitte w�hlen Sie hier aus, ob anstelle einer detaillierten Modellierung f�r die ausgew�hlte Technologie ein Fahrplan ber�cksichtigt werden soll
* - type: Boolean
* - identifier: Verwendung eines Fahrplans
* - unit:
* - domain: [0|1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_pss_schedule(set_pss) Vorhandensein Fahrplan
$LOAD par_X_pss_schedule

* - description: Bitte geben Sie hier den gew�nschten mittlere Jahreserzeugung an - Das elektrische Erzeugungsprofil wird auf diesen Wert skaliert
* - type: Float
* - identifier: Mittlere Erzeugung eines Kraftwerks pro Jahr
* - unit: [MWh / a]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Scale_pss_schedule(set_pss) Vorhandensein Fahrplan
$LOAD par_Scale_pss_schedule

