* - description: Bitte geben Sie hier ein gewünschtes Chlor-Lastprofil ein
* - type: Float
* - identifier: Chlor-Lastprofil
* - unit: [tCl2]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_DS_CL(set_ii,set_load_DS_CL)  Chlor Lastprofil
$LOAD par_L_DS_CL

* - description: Bitte geben Sie hier den gewünschten mittleren JahresChlorverbrauch eines Kunden an - Das Chlor-Lastprofil wird auf diesen Wert skaliert
* - type: Float
* - identifier: Mittlerer Chlorverbrauch eines Kunden pro Jahr
* - unit: [tCl2 / a]
* - domain:
* - hidden:
* - processing:
PARAMETER par_L_DS_CL_avg(set_load_DS_CL) Mittlerer Chlorverbrauch
$LOAD par_L_DS_CL_avg

* - description: Bitte geben Sie hier an, wie viel Prozent der ausgewählten Last abgeworfen werden kann.
* - type: Float
* - identifier: Lastverschiebungskapazitäten Abwurf
* - unit:
* - domain: [0,1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_DSM_DS_CL_Cdown(set_load_DS_CL) Chlor Lastprofil
$LOAD par_DSM_DS_CL_Cdown

* - description: Bitte geben Sie hier an, um wie viel Prozent die ausgewählte Last gesteigert werden kann.
* - type: Float
* - identifier: Lastverschiebungskapazitäten Steigerung
* - unit:
* - domain: [0,1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_DSM_DS_CL_Cup(set_load_DS_CL) Chlor Lastprofil
$LOAD par_DSM_DS_CL_Cup

* - description: Bitte geben Sie hier an, um wie viele Stunden eine Last verschoben werden kann
* - type: Float
* - identifier: Lastverschiebungsverzögerung
* - unit: [h]
* - domain: [0,17520]
* - validation:
* - hidden:
* - processing:
PARAMETER par_DSM_DS_CL_t(set_load_DS_CL) Chlor Lastprofil
$LOAD par_DSM_DS_CL_t
