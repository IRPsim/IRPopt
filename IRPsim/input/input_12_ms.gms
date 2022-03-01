* - description: Bitte geben Sie hier den Marktpreis f�r Strom in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktpreis Strom
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_E(set_ii) Marktpreis Strom
$LOAD par_C_MS_E

* - description: Bitte geben Sie hier den Marktleistungspreis f�r Strom an
* - type: Float
* - identifier: Marktleistungspreis Strom
* - unit: [EUR / MW]
* - default: 0
* - validation:
* - hidden:
* - processing:
SCALAR sca_C_MS_P_SwissGrid Marktleistungspreis Strom
$LOAD sca_C_MS_P_SwissGrid

* - description: Bitte geben Sie hier den Strom-Arbeitspreis f�r SwissGrid in Form einer Preiszeitreihe an
* - type: Float
* - identifier:  Arbeitspreis SwissGrid
* - unit: [EUR / MWh]
* - domain:
* - default: 2.20
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_E_SwissGrid(set_ii) Arbeitspreis SwissGrid
$LOAD par_C_MS_E_SwissGrid

* - description: Bitte geben Sie hier, falls gew�nscht, eine Leistungsuntergrenze f�r die Leistungsmessung an
* - type: Float
* - identifier: Marktleistungsmessung Strom Leistungsuntergrenze
* - unit: [MW]
* - default:
* - validation:
* - hidden:
* - processing:
SCALAR sca_P_MS_powerLink_SwissGrid_lowerbound Marktleistung Untergrenze
$LOAD sca_P_MS_powerLink_SwissGrid_lowerbound

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r Strom in CHF angegeben
* - type: Boolean
* - identifier: Marktpreis Strom in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_C_E == 1, sca_X_MS_EUR_C_E = 0)
* - rule: IF (sca_X_MS_CHF_C_E == 0, sca_X_MS_EUR_C_E = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_C_E Marktpreis Strom in CHF
$LOAD sca_X_MS_CHF_C_E

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r Strom in EUR angegeben werden
* - type: Boolean
* - identifier: Marktpreis Strom in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_EUR_C_E == 1, sca_X_MS_CHF_C_E = 0)
* - rule: IF (sca_X_MS_EUR_C_E == 0, sca_X_MS_CHF_C_E = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_C_E Marktpreis Strom in EUR
$LOAD sca_X_MS_EUR_C_E

* - description: Bitte geben Sie hier den Marktpreis f�r Erdgas in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktpreis Erdgas
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_fuel(set_ii) Marktpreis Erdgas
$LOAD par_C_MS_fuel

* - description: Bitte geben Sie hier den Marktleistungspreis f�r Erdgas an
* - type: Float
* - identifier: Marktleistungspreis Erdgas
* - unit: [EUR / MW]
* - domain:
* - validation:
* - hidden:
* - processing:
SCALAR sca_C_MS_B Marktleistungspreis Erdgas
$LOAD sca_C_MS_B

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r Erdgas in CHF angegeben werden
* - type: Boolean
* - identifier: Marktpreis Erdgas in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_C_fuel == 1, sca_X_MS_EUR_C_fuel = 0)
* - rule: IF (sca_X_MS_CHF_C_fuel == 0, sca_X_MS_EUR_C_fuel = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_C_fuel Marktpreis Erdgas in CHF
$LOAD sca_X_MS_CHF_C_fuel

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r Erdgas in EUR angegeben werden
* - type: Boolean
* - identifier: Marktpreis Erdgas in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF(sca_X_MS_EUR_C_fuel == 1, sca_X_MS_CHF_C_fuel = 0)
* - rule: IF(sca_X_MS_EUR_C_fuel == 0, sca_X_MS_CHF_C_fuel = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_C_fuel Marktpreis Erdgas in EUR
$LOAD sca_X_MS_EUR_C_fuel

* - description: Bitte geben Sie hier das Entgelt f�r negative Prim�rleistung in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Entgelt negative Prim�rleistung
* - unit: [EUR / MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_R_MS_NR_pri(set_ii) Leistungsentgelt
$LOAD par_R_MS_NR_pri

* - description: Bitte geben Sie hier das Entgelt f�r positive Prim�rleistung in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Entgelt positive Prim�rregelleistung
* - unit: [EUR / MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_R_MS_PR_pri(set_ii) Leistungsentgelt
$LOAD par_R_MS_PR_pri

* - description: Bitte geben Sie hier das Entgelt f�r negative Sekund�rleistung in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Entgelt negative Sekund�rregelleistung
* - unit: [EUR / MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_R_MS_NR_sec(set_ii) Leistungsentgelt
$LOAD par_R_MS_NR_sec

* - description: Bitte geben Sie hier das Entgelt f�r positive Sekund�rleistung in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Entgelt positive Sekund�rregelleistung
* - unit: [EUR / MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_R_MS_PR_sec(set_ii) Leistungsentgelt
$LOAD par_R_MS_PR_sec

* - description: Bitte geben Sie hier das Entgelt f�r negative Terti�rleistung in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Entgelt negative Terti�rregelleistung
* - unit: [EUR / MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_R_MS_NR_ter(set_ii) Leistungsentgelt
$LOAD par_R_MS_NR_ter

* - description: Bitte geben Sie hier das Entgelt f�r positive Terti�rleistung in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Entgelt positive Terti�rregelleistung
* - unit: [EUR / MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_R_MS_PR_ter(set_ii) Leistungsentgelt
$LOAD par_R_MS_PR_ter

* - description: Bitte geben Sie hier die L�nge des Blockgebots f�r positive Prim�rregelleistung an
* - type: Float
* - identifier: Blockgebotsl�nge positive Prim�rregelleistung
* - unit: [h]
* - domain: (0,24]
* - validation:
* - hidden:
* - processing:
SCALAR sca_H_MS_PR_pri_min Blockgebotsl�nge
$LOAD sca_H_MS_PR_pri_min

* - description: Bitte geben Sie hier die L�nge des Blockgebots f�r negative Prim�rregelleistung an
* - type: Float
* - identifier: Blockgebotsl�nge negative Prim�rregelleistung
* - unit: [h]
* - domain: (0,24]
* - validation:
* - hidden:
* - processing:
SCALAR sca_H_MS_NR_pri_min Blockgebotsl�nge
$LOAD sca_H_MS_NR_pri_min

* - description: Bitte geben Sie hier die L�nge des Blockgebots f�r positive Sekund�rregelleistung an
* - type: Float
* - identifier: Blockgebotsl�nge positive Sekund�rregelleistung
* - unit: [h]
* - domain: (0,24]
* - validation:
* - hidden:
* - processing:
SCALAR sca_H_MS_PR_sec_min Blockgebotsl�nge
$LOAD sca_H_MS_PR_sec_min

* - description: Bitte geben Sie hier die L�nge des Blockgebots f�r negative Sekund�rregelleistung an
* - type: Float
* - identifier: Blockgebotsl�nge negative Sekund�rregelleistung
* - unit: [h]
* - domain: (0,24]
* - validation:
* - hidden:
* - processing:
SCALAR sca_H_MS_NR_sec_min Blockgebotsl�nge
$LOAD sca_H_MS_NR_sec_min

* - description: Bitte geben Sie hier die L�nge des Blockgebots f�r positive Terti�rregelleistung an
* - type: Float
* - identifier: Blockgebotsl�nge positive Terti�rregelleistung
* - unit: [h]
* - domain: (0,24]
* - validation:
* - hidden:
* - processing:
SCALAR sca_H_MS_PR_ter_min Blockgebotsl�nge
$LOAD sca_H_MS_PR_ter_min

* - description: Bitte geben Sie hier die L�nge des Blockgebots f�r negative Terti�rregelleistung an
* - type: Float
* - identifier: Blockgebotsl�nge negative Terti�rregelleistung
* - unit: [h]
* - domain: (0,24]
* - validation:
* - hidden:
* - processing:
SCALAR sca_H_MS_NR_ter_min Blockgebotsl�nge
$LOAD sca_H_MS_NR_ter_min

* - description: Bitte geben Sie hier einen Mindestwert f�r ein Gebot am positiven Prim�rregelleistungsmarkt an
* - type: Float
* - identifier: Mindesgebot positive Prim�rregelleistung
* - unit: [MW]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_P_MS_PR_pri_min Mindestgebot
$LOAD sca_P_MS_PR_pri_min

* - description: Bitte w�hlen Sie, ob f�r positive und negative Prim�rregelleistung das Symmetriegebot gilt
* - type: Boolean
* - identifier: Symmetriegebot positive und negative Prim�rregelleistung
* - default: 1
* - domain: [0|1]
SCALAR sca_X_MS_pri_sim Symmetriegebot
$LOAD sca_X_MS_pri_sim

* - description: Bitte geben Sie hier einen Mindestwert f�r ein Gebot am negativen Prim�rregelleistungsmarkt an
* - type: Float
* - identifier: Mindesgebot negative Prim�rregelleistung
* - unit: [MW]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_P_MS_NR_pri_min Mindestgebot
$LOAD sca_P_MS_NR_pri_min

* - description: Bitte geben Sie hier einen Mindestwert f�r ein Gebot am positiven Sekund�rregelleistungsmarkt an
* - type: Float
* - identifier: Mindesgebot positive Sekund�rregelleistung
* - unit: [MW]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_P_MS_PR_sec_min Mindestgebot
$LOAD sca_P_MS_PR_sec_min

* - description: Bitte geben Sie hier einen Mindestwert f�r ein Gebot am negativen Sekund�rregelleistungsmarkt an
* - type: Float
* - identifier: Mindesgebot negative Sekund�rregelleistung
* - unit: [MW]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_P_MS_NR_sec_min Mindestgebot
$LOAD sca_P_MS_NR_sec_min

* - description: Bitte geben Sie hier einen Mindestwert f�r ein Gebot am postiven Terti�rregelleistungsmarkt an
* - type: Float
* - identifier: Mindesgebot positive Terti�rregelleistung
* - unit: [MW]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_P_MS_PR_ter_min Mindestgebot
$LOAD sca_P_MS_PR_ter_min

* - description: Bitte geben Sie hier einen Mindestwert f�r ein Gebot am negativen Terti�rregelleistungsmarkt an
* - type: Float
* - identifier: Mindesgebot negative Terti�rregelleistung
* - unit: [MW]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_P_MS_NR_ter_min Mindestgebot
$LOAD sca_P_MS_NR_ter_min

* - description: Bitte legen Sie hier den Bedarf an vorgehaltener positver Prim�rregelleistung fest
* - type: float
* - identifier: Bedarf Vorhaltung positive Prim�rregelleistung
* - unit: [MW pro Zeitschritt]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_PR_pri_max(set_ii) Regelleistungsbedarf
$LOAD par_P_MS_PR_pri_max

* - description: Bitte legen Sie hier den Bedarf an vorgehaltener neativer Prim�rregelleistung fest
* - type: float
* - identifier: Bedarf Vorhaltung negative Prim�rregelleistung
* - unit: [MW pro Zeitschritt]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_NR_pri_max(set_ii) Regelleistungsbedarf
$LOAD par_P_MS_NR_pri_max

* - description: Bitte legen Sie hier den Bedarf an vorgehaltener positver Sekund�rregelleistung fest
* - type: float
* - identifier: Bedarf Vorhaltung positive Sekund�rregelleistung
* - unit: [MW pro Zeitschritt]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_PR_sec_max(set_ii) Regelleistungsbedarf
$LOAD par_P_MS_PR_sec_max

* - description: Bitte legen Sie hier den Bedarf an vorgehaltener negativer Sekund�rregelleistung fest
* - type: float
* - identifier: Bedarf Vorhaltung negative Sekund�rregelleistung
* - unit: [MW pro Zeitschritt]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_NR_sec_max(set_ii) Regelleistungsbedarf
$LOAD par_P_MS_NR_sec_max

* - description: Bitte legen Sie hier den Bedarf an vorgehaltener positver Terti�rregelleistung fest
* - type: float
* - identifier: Bedarf Vorhaltung positive Terti�rregelleistung
* - unit: [MW pro Zeitschritt]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_PR_ter_max(set_ii) Regelleistungsbedarf
$LOAD par_P_MS_PR_ter_max

* - description: Bitte legen Sie hier den Bedarf an vorgehaltener negativer Terti�rregelleistung fest
* - type: float
* - identifier: Bedarf Vorhaltung negative Terti�rregelleistung
* - unit: [MW pro Zeitschritt]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_NR_ter_max(set_ii) Regelleistungsbedarf
$LOAD par_P_MS_NR_ter_max

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Entgelte f�r Prim�rregelenergie in CHF angegeben werden
* - type: Boolean
* - identifier: Engelte f�r Prim�rregelenergie in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_R_pri == 1, sca_X_MS_EUR_R_pri = 0)
* - rule: IF (sca_X_MS_CHF_R_pri == 0, sca_X_MS_EUR_R_pri = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_R_pri Preise f�r Regelenergie in CHF
$LOAD sca_X_MS_CHF_R_pri

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Entgelte f�r Prim�rregelenergie in EUR angegeben werden
* - type: Boolean
* - identifier: Entgelte f�r Prim�rregelenergie in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_EUR_R_pri == 1, sca_X_MS_CHF_R_pri = 0)
* - rule: IF (sca_X_MS_EUR_R_pri == 0, sca_X_MS_CHF_R_pri = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_R_pri Preise f�r Regelenergie in EUR
$LOAD sca_X_MS_EUR_R_pri

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Entgelte f�r Sekund�rregelenergie in CHF angegeben werden
* - type: Boolean
* - identifier: Engelte f�r Sekund�rregelenergie in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_R_sec == 1, sca_X_MS_EUR_R_sec = 0)
* - rule: IF (sca_X_MS_CHF_R_sec == 0, sca_X_MS_EUR_R_sec = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_R_sec Preise f�r Regelenergie in CHF
$LOAD sca_X_MS_CHF_R_sec

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Entgelte f�r Sekund�rregelenergie in EUR angegeben werden
* - type: Boolean
* - identifier: Entgelte f�r Sekund�rregelenergie in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_EUR_R_sec == 1, sca_X_MS_CHF_R_sec = 0)
* - rule: IF (sca_X_MS_EUR_R_sec == 0, sca_X_MS_CHF_R_sec = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_R_sec Preise f�r Regelenergie in EUR
$LOAD sca_X_MS_EUR_R_sec

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Entgelte f�r Terti�rregelenergie in CHF angegeben werden
* - type: Boolean
* - identifier: Engelte f�r Terti�rregelenergie in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_R_ter == 1, sca_X_MS_EUR_R_ter = 0)
* - rule: IF (sca_X_MS_CHF_R_ter == 0, sca_X_MS_EUR_R_ter = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_R_ter Preise f�r Regelenergie in CHF
$LOAD sca_X_MS_CHF_R_ter

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Entgelte f�r Terti�rregelenergie in EUR angegeben werden
* - type: Boolean
* - identifier: Entgelte f�r Terti�rregelenergie in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_EUR_R_ter == 1, sca_X_MS_CHF_R_ter = 0)
* - rule: IF (sca_X_MS_EUR_R_ter == 0, sca_X_MS_CHF_R_ter = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_R_ter Preise f�r Regelenergie in EUR
$LOAD sca_X_MS_EUR_R_ter

* - description: Bitte geben Sie hier den Marktpreis f�r CO2-Zertifikate in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktpreis CO2
* - unit: [EUR / tCO2]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_CO2(set_ii) Marktpreis CO2
$LOAD par_C_MS_CO2

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die CO2-Zertifikatpreise in CHF angegeben werden
* - type: Boolean
* - identifier: Marktpreis CO2 in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_C_CO2 == 1, sca_X_MS_EUR_C_CO2 = 0)
* - rule: IF (sca_X_MS_CHF_C_CO2 == 0, sca_X_MS_EUR_C_CO2 = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_C_CO2 Marktpreis CO2 in CHF
$LOAD sca_X_MS_CHF_C_CO2

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die CO2-Zertifikatpreise in EUR angegeben werden
* - type: Boolean
* - identifier: Marktpreis CO2 in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF(sca_X_MS_EUR_C_CO2 == 1, sca_X_MS_CHF_C_CO2 = 0)
* - rule: IF(sca_X_MS_EUR_C_CO2 == 0, sca_X_MS_CHF_C_CO2 = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_C_CO2 Marktpreis CO2 in EUR
$LOAD sca_X_MS_EUR_C_CO2

* - description: Bitte geben Sie hier den Marktpreis f�r Gr�n-Zertifikate in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Gr�n-Zertifikatepreis
* - unit: [EUR / tCO2]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_GC(set_ii) Gr�n-Zertifikatepreis
$LOAD par_C_MS_GC

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Gr�n-Zertifikatpreise in CHF angegeben werden
* - type: Boolean
* - identifier: Gr�n-Zertifikatepreis  in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF(sca_X_MS_CHF_C_GC == 1, sca_X_MS_EUR_C_GC = 0)
* - rule: IF(sca_X_MS_CHF_C_GC == 0, sca_X_MS_EUR_C_GC = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_C_GC Gr�n-Zertifikatepreis  in CHF
$LOAD sca_X_MS_CHF_C_GC

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Gr�n-Zertifikatpreise in EUR angegeben werden
* - type: Boolean
* - identifier: Gr�n-Zertifikatepreis in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF(sca_X_MS_EUR_C_GC == 1, sca_X_MS_CHF_C_GC = 0)
* - rule: IF(sca_X_MS_EUR_C_GC == 0, sca_X_MS_CHF_C_GC = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_C_GC Gr�n-Zertifikatepreis in EUR
$LOAD sca_X_MS_EUR_C_GC

* - description: Legen Sie hier bitte den Kalkulationszins des Unternehmens fest
* - type: Float
* - identifier: Kalkulationszins
* - unit:
* - default: 0.04
* - domain: [0,1]
* - validation:
* - hidden:
* - processing:
SCALAR sca_i_DES Kalkulationszins des Unternehmens
$LOAD sca_i_DES

* - description: Geben Sie hier bitte den Wechselkurs von EUR in CHF an
* - type: Float
* - identifier: Wechselkurs EUR in CHF
* - unit:
* - default: 1.04
* - domain:
* - validation:
* - hidden:
* - processing:
SCALAR sca_exchange_MS Wechselkurs
$LOAD sca_exchange_MS

* - description: Bitte geben Sie hier den spezifischen Ensorgungserl�s aus der Kehrverbrennung an
* - type: Float
* - identifier: Entsorgungserl�se aus der Kehrrichtverbrennung
* - unit: [EUR / t]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_R_MS_disposal(set_tech_SS_RC) Entsorgungserl�se aus der Kehrrichtverbrennung
$LOAD par_R_MS_disposal

* - description: Bitte geben Sie hier den Marktpreis f�r �l in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktpreis �l
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_O(set_ii) Marktpreis �l
$LOAD par_C_MS_O

* - description: Bitte geben Sie hier den Marktpreis f�r Biomasse in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktpreis Biomasse (fest)
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_B_s(set_ii) Marktpreis Biomasse
$LOAD par_C_MS_B_s

* - description: Bitte geben Sie hier den Marktpreis f�r fl�ssige Biomasse in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktpreis Biomasse (fl�ssig)
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_B_l(set_ii) Marktpreis Biomasse
$LOAD par_C_MS_B_l

* - description: Bitte geben Sie hier den Marktpreis f�r gasf�rmige Biomasse in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktpreis Biomasse (gasf�rmig)
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_B_g(set_ii) Marktpreis Biomasse
$LOAD par_C_MS_B_g

* - description: Bitte geben Sie hier die Marktgutschrift f�r Abfall in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktgutschrift Abfall
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_RF(set_ii) Marktpreis Abfall
$LOAD par_C_MS_RF

* - description: Bitte geben Sie hier den Marktpreis f�r Holz in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktpreis Holz
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_T(set_ii) Marktpreis Holz
$LOAD par_C_MS_T

* - description: Bitte geben Sie hier den Einkaufspreis f�r W�rme in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Einkaufspreis W�rme
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_W(set_ii) Marktpreis W�rme
$LOAD par_C_MS_W

* - description: Bitte geben Sie hier den Einkaufspreis f�r K�lte in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Einkaufspreis K�lte
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_Cool(set_ii) Marktpreis K�lte
$LOAD par_C_MS_Cool

* - description: Bitte geben Sie hier den Einkaufspreis f�r Wasserstoff in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Einkaufspreis Wasserstoff
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_Hydro(set_ii) Marktpreis Wasserstoff
$LOAD par_C_MS_Hydro

* - description: Bitte geben Sie hier den Einkaufspreis f�r den Chemischen Stoff in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Einkaufspreis Chemischer-Stoff
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_CL(set_ii) Marktpreis Chemischer-Stoff
$LOAD par_C_MS_CL

* - description: Bitte geben Sie hier den Verkaufspreis f�r W�rme in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Verkaufspreis W�rme
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_W_sale(set_ii) Marktpreis W�rme
$LOAD par_C_MS_W_sale

* - description: Bitte geben Sie hier den Marktpreis f�r Braunkohle in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktpreis Braunkohle
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_L(set_ii) Marktpreis Braunkohle
$LOAD par_C_MS_L

* - description: Bitte geben Sie hier den Marktpreis f�r Steinkohle in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktpreis Steinkohle
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_HC(set_ii) Marktpreis Steinkohle
$LOAD par_C_MS_HC

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r W�rme in CHF angegeben werden
* - type: Boolean
* - identifier: Marktpreis in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_C_W == 1, sca_X_MS_EUR_C_W = 0)
* - rule: IF (sca_X_MS_CHF_C_W == 0, sca_X_MS_EUR_C_W = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_C_W Marktpreis in CHF
$LOAD sca_X_MS_CHF_C_W

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r W�rme in EUR angegeben werden
* - type: Boolean
* - identifier: Marktpreis in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_EUR_C_W == 1, sca_X_MS_CHF_C_W = 0)
* - rule: IF (sca_X_MS_EUR_C_W == 0, sca_X_MS_CHF_C_W = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_C_W Marktpreis in EUR
$LOAD sca_X_MS_EUR_C_W


* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r �l in CHF angegeben werden
* - type: Boolean
* - identifier: Marktpreis in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_C_O == 1, sca_X_MS_EUR_C_O = 0)
* - rule: IF (sca_X_MS_CHF_C_O == 0, sca_X_MS_EUR_C_O = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_C_O Marktpreis in CHF
$LOAD sca_X_MS_CHF_C_O

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r �l in EUR angegeben werden
* - type: Boolean
* - identifier: Marktpreis in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_EUR_C_O == 1, sca_X_MS_CHF_C_O = 0)
* - rule: IF (sca_X_MS_EUR_C_O == 0, sca_X_MS_CHF_C_O = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_C_O Marktpreis in EUR
$LOAD sca_X_MS_EUR_C_O

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r Steinkohle in CHF angegeben werden
* - type: Boolean
* - identifier: Marktpreis in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_C_HC == 1, sca_X_MS_EUR_C_HC = 0)
* - rule: IF (sca_X_MS_CHF_C_HC == 0, sca_X_MS_EUR_C_HC = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_C_HC Marktpreis in CHF
$LOAD sca_X_MS_CHF_C_HC

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r Braunkohle in CHF angegeben werden
* - type: Boolean
* - identifier: Marktpreis in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_C_L == 1, sca_X_MS_EUR_C_L = 0)
* - rule: IF (sca_X_MS_CHF_C_L == 0, sca_X_MS_EUR_C_L = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_C_L Marktpreis in CHF
$LOAD sca_X_MS_CHF_C_L

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r Steinkohle in EUR angegeben werden
* - type: Boolean
* - identifier: Marktpreis in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_EUR_C_HC == 1, sca_X_MS_EUR_C_HC = 0)
* - rule: IF (sca_X_MS_EUR_C_HC == 0, sca_X_MS_EUR_C_HC = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_C_HC Marktpreis in EUR
$LOAD sca_X_MS_EUR_C_HC

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r Braunkohle in EUR angegeben werden
* - type: Boolean
* - identifier: Marktpreis in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_EUR_C_L == 1, sca_X_MS_CHF_C_L = 0)
* - rule: IF (sca_X_MS_EUR_C_L == 0, sca_X_MS_CHF_C_L = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_C_L Marktpreis in EUR
$LOAD sca_X_MS_EUR_C_L

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Gutschrift f�r Abfall in CHF angegeben werden
* - type: Boolean
* - identifier: Marktpreis in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_C_RF == 1, sca_X_MS_EUR_C_RF = 0)
* - rule: IF (sca_X_MS_CHF_C_RF == 0, sca_X_MS_EUR_C_RF = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_C_RF Marktpreis in CHF
$LOAD sca_X_MS_CHF_C_RF

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Gutschrift f�r Abfall in EUR angegeben werden
* - type: Boolean
* - identifier: Marktpreis in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_EUR_C_RF == 1, sca_X_MS_CHF_C_RF = 0)
* - rule: IF (sca_X_MS_EUR_C_RF == 0, sca_X_MS_CHF_C_RF = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_C_RF Marktpreis in EUR
$LOAD sca_X_MS_EUR_C_RF

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r Biomasse in CHF angegeben werden
* - type: Boolean
* - identifier: Marktpreis in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_C_B == 1, sca_X_MS_EUR_C_B = 0)
* - rule: IF (sca_X_MS_CHF_C_B == 0, sca_X_MS_EUR_C_B = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_C_B Marktpreis in CHF
$LOAD sca_X_MS_CHF_C_B

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r Biomasse in EUR angegeben werden
* - type: Boolean
* - identifier: Marktpreis in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_EUR_C_B == 1, sca_X_MS_CHF_C_B = 0)
* - rule: IF (sca_X_MS_EUR_C_B == 0, sca_X_MS_CHF_C_B = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_C_B Marktpreis in EUR
$LOAD sca_X_MS_EUR_C_B

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r Holz in CHF angegeben werden
* - type: Boolean
* - identifier: Marktpreis in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_C_T == 1, sca_X_MS_EUR_C_T = 0)
* - rule: IF (sca_X_MS_CHF_C_T == 0, sca_X_MS_EUR_C_T = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_C_T Marktpreis in CHF
$LOAD sca_X_MS_CHF_C_T

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r Holz in EUR angegeben werden
* - type: Boolean
* - identifier: Marktpreis in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_EUR_C_T == 1, sca_X_MS_CHF_C_T = 0)
* - rule: IF (sca_X_MS_EUR_C_T == 0, sca_X_MS_CHF_C_T = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_C_T Marktpreis in EUR
$LOAD sca_X_MS_EUR_C_T



* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r K�lte in CHF angegeben werden
* - type: Boolean
* - identifier: Marktpreis in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_C_Cool == 1, sca_X_MS_EUR_C_Cool = 0)
* - rule: IF (sca_X_MS_CHF_C_Cool == 0, sca_X_MS_EUR_C_Cool = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_C_Cool Marktpreis in CHF
$LOAD sca_X_MS_CHF_C_Cool

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r K�lte in EUR angegeben werden
* - type: Boolean
* - identifier: Marktpreis in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_EUR_C_Cool == 1, sca_X_MS_CHF_C_Cool = 0)
* - rule: IF (sca_X_MS_EUR_C_Cool == 0, sca_X_MS_CHF_C_Cool = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_C_Cool Marktpreis in EUR
$LOAD sca_X_MS_EUR_C_Cool


* - description: Bitte geben Sie hier den CO2-Emissionsfaktor f�r den Strommix an
* - type: Float
* - identifier: CO2 Emissionsfaktor Strom
* - unit: [tCO2 / MWh]
* - domain:[0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_Emis_MS_E_CO2 CO2 Emissionen Strom
$LOAD sca_Emis_MS_E_CO2

* - description: Bitte geben Sie hier den CO2-Emissionsfaktor von Gas an
* - type: Float
* - identifier: CO2 Emissionsfaktor Gas
* - unit: [tCO2 / MWh]
* - domain:[0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_Emis_MS_G_CO2 CO2 Emissionen Gas
$LOAD sca_Emis_MS_G_CO2

* - description: Bitte geben Sie hier den CO2-Emissionsfaktor von Biomasse an
* - type: Float
* - identifier: CO2 Emissionsfaktor Biomasse
* - unit: [tCO2 / MWh]
* - domain:[0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_Emis_MS_B_CO2 CO2 Emissionen Biomasse
$LOAD sca_Emis_MS_B_CO2

* - description: Bitte geben Sie hier den CO2-Emissionsfaktor von M�ll an
* - type: Float
* - identifier: CO2 Emissionsfaktor M�ll
* - unit: [tCO2 / MWh]
* - domain:[0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_Emis_MS_RF_CO2 CO2 Emissionen Kehrricht
$LOAD sca_Emis_MS_RF_CO2

* - description: Bitte geben Sie hier den CO2-Emissionsfaktor f�r W�rme an
* - type: Float
* - identifier: CO2 Emissionsfaktor W�rme
* - unit: [tCO2 / MWh]
* - domain:[0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_Emis_MS_W_CO2 CO2 Emissionen W�rme
$LOAD sca_Emis_MS_W_CO2

* - description: Bitte geben Sie hier den CO2-Emissionsfaktor von Holz an
* - type: Float
* - identifier: CO2 Emissionsfaktor Holz
* - unit: [tCO2 / MWh]
* - domain:[0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_Emis_MS_T_CO2 CO2 Emissionen Holz
$LOAD sca_Emis_MS_T_CO2

* - description: Bitte geben Sie hier den CO2-Emissionsfaktor von �l an
* - type: Float
* - identifier: CO2 Emissionsfaktor �l
* - unit: [tCO2 / MWh]
* - domain:[0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_Emis_MS_O_CO2 CO2 Emissionen �l
$LOAD sca_Emis_MS_O_CO2

* - description: Bitte geben Sie hier den CO2-Emissionsfaktor von Steinkohle an
* - type: Float
* - identifier: CO2 Emissionsfaktor Steinkohle
* - unit: [tCO2 / MWh]
* - domain:[0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_Emis_MS_HC_CO2 CO2 Emissionen Steinkohle
$LOAD sca_Emis_MS_HC_CO2

* - description: Bitte geben Sie hier den CO2-Emissionsfaktor von Braunkohle an
* - type: Float
* - identifier: CO2 Emissionsfaktor Braunkohle
* - unit: [tCO2 / MWh]
* - domain:[0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_Emis_MS_L_CO2 CO2 Emissionen Braunkohle
$LOAD sca_Emis_MS_L_CO2


* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r K�lte in CHF angegeben werden
* - type: Boolean
* - identifier: Marktpreis in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_C_Hydro == 1, sca_X_MS_EUR_C_Hydro = 0)
* - rule: IF (sca_X_MS_CHF_C_Hydro == 0, sca_X_MS_EUR_C_Hydro = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_C_Hydro Marktpreis in CHF
$LOAD sca_X_MS_CHF_C_Hydro

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r K�lte in EUR angegeben werden
* - type: Boolean
* - identifier: Marktpreis in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_EUR_C_Hydro == 1, sca_X_MS_CHF_C_Hydro = 0)
* - rule: IF (sca_X_MS_EUR_C_Hydro == 0, sca_X_MS_CHF_C_Hydro = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_C_Hydro Marktpreis in EUR
$LOAD sca_X_MS_EUR_C_Hydro


* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r K�lte in CHF angegeben werden
* - type: Boolean
* - identifier: Marktpreis in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_C_CL == 1, sca_X_MS_EUR_C_CL = 0)
* - rule: IF (sca_X_MS_CHF_C_CL == 0, sca_X_MS_EUR_C_CL = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_C_CL Marktpreis in CHF
$LOAD sca_X_MS_CHF_C_CL

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise f�r K�lte in EUR angegeben werden
* - type: Boolean
* - identifier: Marktpreis in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_EUR_C_CL == 1, sca_X_MS_CHF_C_CL = 0)
* - rule: IF (sca_X_MS_EUR_C_CL == 0, sca_X_MS_CHF_C_CL = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_C_CL Marktpreis in EUR
$LOAD sca_X_MS_EUR_C_CL

* - description: Bitte geben Sie hier das Entgelt f�r negative Flexibilit�tsleistung in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Entgelt negative Flexibilit�tsleistung
* - unit: [EUR / MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_R_MS_NR_fx(set_ii) Leistungsentgelt
$LOAD par_R_MS_NR_fx

* - description: Bitte geben Sie hier das Entgelt f�r positive Flexibilit�tsleistung in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Entgelt positive Flexibilit�tsleistung
* - unit: [EUR / MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_R_MS_PR_fx(set_ii) Leistungsentgelt
$LOAD par_R_MS_PR_fx

* - description: Bitte geben Sie hier einen Mindestwert f�r ein Gebot am positiven Flexibilit�tsmarkt an
* - type: Float
* - identifier: Mindesgebot positiver Flexibilit�tsmarkt
* - unit: [MW]
* - domain: [0,24]
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_PR_fx_min(set_ii) Mindestgebot
$LOAD par_P_MS_PR_fx_min

* - description: Bitte geben Sie hier einen Mindestwert f�r ein Gebot am negativen Flexibilit�tsmarkt an
* - type: Float
* - identifier: Mindesgebot negativer Flexibilit�tsmarkt
* - unit: [MW]
* - domain: [0,24]
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_NR_fx_min(set_ii) Mindestgebot
$LOAD par_P_MS_NR_fx_min

* - description: Bitte geben Sie hier einen Maximalwert f�r ein Gebot am positiven Flexibilit�tsmarkt an
* - type: Float
* - identifier: Maximalgebot positiver Flexibilit�tsmarkt
* - unit: [MW]
* - domain: [0,24]
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_PR_fx_max(set_ii) Mindestgebot
$LOAD par_P_MS_PR_fx_max

* - description: Bitte geben Sie hier einen Maximalwert f�r ein Gebot am negativen Flexibilit�tsmarkt an
* - type: Float
* - identifier: Maximalgebot negativer Flexibilit�tsmarkt
* - unit: [MW]
* - domain: [0,24]
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_NR_fx_max(set_ii) Mindestgebot
$LOAD par_P_MS_NR_fx_max

* - description: Bitte geben Sie hier die L�nge des Blockgebots f�r positive Flexibilit�tsleistung an
* - type: Float
* - identifier: Blockgebotsl�nge positive Flexibilit�tsleistung
* - unit: [h]
* - domain: [0,24]
* - validation:
* - hidden:
* - processing:
SCALAR sca_H_MS_NR_fx_min Blockgebotsl�nge
$LOAD sca_H_MS_NR_fx_min

* - description: Bitte geben Sie hier die L�nge des Blockgebots f�r negative Flexibilit�tsleistung an
* - type: Float
* - identifier: Blockgebotsl�nge negative Flexibilit�tsleistung
* - unit: [h]
* - domain: [0,24]
* - validation:
* - hidden:
* - processing:
SCALAR sca_H_MS_PR_fx_min Blockgebotsl�nge
$LOAD sca_H_MS_PR_fx_min

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Entgelte f�r Flexibilit�tregelenergie in CHF angegeben werden
* - type: Boolean
* - identifier: Engelte f�r Flexibilit�tregelenergie in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_R_fx == 1, sca_X_MS_EUR_R_fx = 0)
* - rule: IF (sca_X_MS_CHF_R_fx == 0, sca_X_MS_EUR_R_fx = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_R_fx Preise f�r Regelenergie in CHF
$LOAD sca_X_MS_CHF_R_fx

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Entgelte f�r Flexibilit�tregelenergie in EUR angegeben werden
* - type: Boolean
* - identifier: Entgelte f�r Flexibilit�tregelenergie in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_EUR_R_fx == 1, sca_X_MS_EUR_R_fx = 0)
* - rule: IF (sca_X_MS_EUR_R_fx == 0, sca_X_MS_EUR_R_fx = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_R_fx Preise f�r Regelenergie in EUR
$LOAD sca_X_MS_EUR_R_fx


