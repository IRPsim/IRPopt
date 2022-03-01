* - description: Bitte wählen Sie hier aus, ob der ausgewählte Prosumstorer (Technologie, Last, Netz, Markt etc.) im Modell berücksichtigt werden soll
* - type: Boolean
* - identifier: Verwendung im Modell
* - unit:
* - domain: [0|1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_pss_model(set_pss) Vorhandensein Modell
$LOAD par_X_pss_model

* - description: Bitte wählen Sie hier aus, ob der ausgewählte Prosumstorer (Technologie, Last, Netz, Markt etc.) im Modell (Stützjahr) berücksichtigt werden soll
* - type: Boolean
* - identifier: Verwendung im Modell (Stützjahr)
* - unit:
* - domain: [0|1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_pss_support(set_pss) Vorhandensein Modell
$LOAD par_X_pss_support

* - description: Bitte wählen Sie hier aus, ob anstelle einer detaillierten Modellierung für die ausgewählte Technologie ein Fahrplan berücksichtigt werden soll
* - type: Boolean
* - identifier: Verwendung eines Fahrplans
* - unit:
* - domain: [0|1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_pss_schedule(set_pss) Vorhandensein Fahrplan
$LOAD par_X_pss_schedule

* - description: Bitte geben Sie hier den gewünschten mittlere Jahreserzeugung an - Das elektrische Erzeugungsprofil wird auf diesen Wert skaliert
* - type: Float
* - identifier: Mittlere Erzeugung eines Kraftwerks pro Jahr
* - unit: [MWh / a]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Scale_pss_schedule(set_pss) Vorhandensein Fahrplan
$LOAD par_Scale_pss_schedule

