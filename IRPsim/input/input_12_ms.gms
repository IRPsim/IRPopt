* - description: Bitte geben Sie hier den Marktpreis für Strom in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktpreis Strom
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_E(set_ii) Marktpreis Strom
$LOAD par_C_MS_E

* - description: Bitte geben Sie hier den Marktleistungspreis für Strom an
* - type: Float
* - identifier: Marktleistungspreis Strom
* - unit: [EUR / MW]
* - default: 0
* - validation:
* - hidden:
* - processing:
SCALAR sca_C_MS_P_SwissGrid Marktleistungspreis Strom
$LOAD sca_C_MS_P_SwissGrid

* - description: Bitte geben Sie hier den Strom-Arbeitspreis für SwissGrid in Form einer Preiszeitreihe an
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

* - description: Bitte geben Sie hier, falls gewünscht, eine Leistungsuntergrenze für die Leistungsmessung an
* - type: Float
* - identifier: Marktleistungsmessung Strom Leistungsuntergrenze
* - unit: [MW]
* - default:
* - validation:
* - hidden:
* - processing:
SCALAR sca_P_MS_powerLink_SwissGrid_lowerbound Marktleistung Untergrenze
$LOAD sca_P_MS_powerLink_SwissGrid_lowerbound

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Strom in CHF angegeben
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

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Strom in EUR angegeben werden
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

* - description: Bitte geben Sie hier den Marktpreis für Erdgas in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktpreis Erdgas
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_fuel(set_ii) Marktpreis Erdgas
$LOAD par_C_MS_fuel

* - description: Bitte geben Sie hier den Marktleistungspreis für Erdgas an
* - type: Float
* - identifier: Marktleistungspreis Erdgas
* - unit: [EUR / MW]
* - domain:
* - validation:
* - hidden:
* - processing:
SCALAR sca_C_MS_B Marktleistungspreis Erdgas
$LOAD sca_C_MS_B

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Erdgas in CHF angegeben werden
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

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Erdgas in EUR angegeben werden
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

* - description: Bitte geben Sie hier das Entgelt für negative Primärleistung in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Entgelt negative Primärleistung
* - unit: [EUR / MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_R_MS_NR_pri(set_ii) Leistungsentgelt
$LOAD par_R_MS_NR_pri

* - description: Bitte geben Sie hier das Entgelt für positive Primärleistung in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Entgelt positive Primärregelleistung
* - unit: [EUR / MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_R_MS_PR_pri(set_ii) Leistungsentgelt
$LOAD par_R_MS_PR_pri

* - description: Bitte geben Sie hier das Entgelt für negative Sekundärleistung in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Entgelt negative Sekundärregelleistung
* - unit: [EUR / MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_R_MS_NR_sec(set_ii) Leistungsentgelt
$LOAD par_R_MS_NR_sec

* - description: Bitte geben Sie hier das Entgelt für positive Sekundärleistung in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Entgelt positive Sekundärregelleistung
* - unit: [EUR / MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_R_MS_PR_sec(set_ii) Leistungsentgelt
$LOAD par_R_MS_PR_sec

* - description: Bitte geben Sie hier das Entgelt für negative Tertiärleistung in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Entgelt negative Tertiärregelleistung
* - unit: [EUR / MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_R_MS_NR_ter(set_ii) Leistungsentgelt
$LOAD par_R_MS_NR_ter

* - description: Bitte geben Sie hier das Entgelt für positive Tertiärleistung in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Entgelt positive Tertiärregelleistung
* - unit: [EUR / MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_R_MS_PR_ter(set_ii) Leistungsentgelt
$LOAD par_R_MS_PR_ter

* - description: Bitte geben Sie hier die Länge des Blockgebots für positive Primärregelleistung an
* - type: Float
* - identifier: Blockgebotslänge positive Primärregelleistung
* - unit: [h]
* - domain: (0,24]
* - validation:
* - hidden:
* - processing:
SCALAR sca_H_MS_PR_pri_min Blockgebotslänge
$LOAD sca_H_MS_PR_pri_min

* - description: Bitte geben Sie hier die Länge des Blockgebots für negative Primärregelleistung an
* - type: Float
* - identifier: Blockgebotslänge negative Primärregelleistung
* - unit: [h]
* - domain: (0,24]
* - validation:
* - hidden:
* - processing:
SCALAR sca_H_MS_NR_pri_min Blockgebotslänge
$LOAD sca_H_MS_NR_pri_min

* - description: Bitte geben Sie hier die Länge des Blockgebots für positive Sekundärregelleistung an
* - type: Float
* - identifier: Blockgebotslänge positive Sekundärregelleistung
* - unit: [h]
* - domain: (0,24]
* - validation:
* - hidden:
* - processing:
SCALAR sca_H_MS_PR_sec_min Blockgebotslänge
$LOAD sca_H_MS_PR_sec_min

* - description: Bitte geben Sie hier die Länge des Blockgebots für negative Sekundärregelleistung an
* - type: Float
* - identifier: Blockgebotslänge negative Sekundärregelleistung
* - unit: [h]
* - domain: (0,24]
* - validation:
* - hidden:
* - processing:
SCALAR sca_H_MS_NR_sec_min Blockgebotslänge
$LOAD sca_H_MS_NR_sec_min

* - description: Bitte geben Sie hier die Länge des Blockgebots für positive Tertiärregelleistung an
* - type: Float
* - identifier: Blockgebotslänge positive Tertiärregelleistung
* - unit: [h]
* - domain: (0,24]
* - validation:
* - hidden:
* - processing:
SCALAR sca_H_MS_PR_ter_min Blockgebotslänge
$LOAD sca_H_MS_PR_ter_min

* - description: Bitte geben Sie hier die Länge des Blockgebots für negative Tertiärregelleistung an
* - type: Float
* - identifier: Blockgebotslänge negative Tertiärregelleistung
* - unit: [h]
* - domain: (0,24]
* - validation:
* - hidden:
* - processing:
SCALAR sca_H_MS_NR_ter_min Blockgebotslänge
$LOAD sca_H_MS_NR_ter_min

* - description: Bitte geben Sie hier einen Mindestwert für ein Gebot am positiven Primärregelleistungsmarkt an
* - type: Float
* - identifier: Mindesgebot positive Primärregelleistung
* - unit: [MW]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_P_MS_PR_pri_min Mindestgebot
$LOAD sca_P_MS_PR_pri_min

* - description: Bitte wählen Sie, ob für positive und negative Primärregelleistung das Symmetriegebot gilt
* - type: Boolean
* - identifier: Symmetriegebot positive und negative Primärregelleistung
* - default: 1
* - domain: [0|1]
SCALAR sca_X_MS_pri_sim Symmetriegebot
$LOAD sca_X_MS_pri_sim

* - description: Bitte geben Sie hier einen Mindestwert für ein Gebot am negativen Primärregelleistungsmarkt an
* - type: Float
* - identifier: Mindesgebot negative Primärregelleistung
* - unit: [MW]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_P_MS_NR_pri_min Mindestgebot
$LOAD sca_P_MS_NR_pri_min

* - description: Bitte geben Sie hier einen Mindestwert für ein Gebot am positiven Sekundärregelleistungsmarkt an
* - type: Float
* - identifier: Mindesgebot positive Sekundärregelleistung
* - unit: [MW]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_P_MS_PR_sec_min Mindestgebot
$LOAD sca_P_MS_PR_sec_min

* - description: Bitte geben Sie hier einen Mindestwert für ein Gebot am negativen Sekundärregelleistungsmarkt an
* - type: Float
* - identifier: Mindesgebot negative Sekundärregelleistung
* - unit: [MW]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_P_MS_NR_sec_min Mindestgebot
$LOAD sca_P_MS_NR_sec_min

* - description: Bitte geben Sie hier einen Mindestwert für ein Gebot am postiven Tertiärregelleistungsmarkt an
* - type: Float
* - identifier: Mindesgebot positive Tertiärregelleistung
* - unit: [MW]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_P_MS_PR_ter_min Mindestgebot
$LOAD sca_P_MS_PR_ter_min

* - description: Bitte geben Sie hier einen Mindestwert für ein Gebot am negativen Tertiärregelleistungsmarkt an
* - type: Float
* - identifier: Mindesgebot negative Tertiärregelleistung
* - unit: [MW]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_P_MS_NR_ter_min Mindestgebot
$LOAD sca_P_MS_NR_ter_min

* - description: Bitte legen Sie hier den Bedarf an vorgehaltener positver Primärregelleistung fest
* - type: float
* - identifier: Bedarf Vorhaltung positive Primärregelleistung
* - unit: [MW pro Zeitschritt]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_PR_pri_max(set_ii) Regelleistungsbedarf
$LOAD par_P_MS_PR_pri_max

* - description: Bitte legen Sie hier den Bedarf an vorgehaltener neativer Primärregelleistung fest
* - type: float
* - identifier: Bedarf Vorhaltung negative Primärregelleistung
* - unit: [MW pro Zeitschritt]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_NR_pri_max(set_ii) Regelleistungsbedarf
$LOAD par_P_MS_NR_pri_max

* - description: Bitte legen Sie hier den Bedarf an vorgehaltener positver Sekundärregelleistung fest
* - type: float
* - identifier: Bedarf Vorhaltung positive Sekundärregelleistung
* - unit: [MW pro Zeitschritt]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_PR_sec_max(set_ii) Regelleistungsbedarf
$LOAD par_P_MS_PR_sec_max

* - description: Bitte legen Sie hier den Bedarf an vorgehaltener negativer Sekundärregelleistung fest
* - type: float
* - identifier: Bedarf Vorhaltung negative Sekundärregelleistung
* - unit: [MW pro Zeitschritt]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_NR_sec_max(set_ii) Regelleistungsbedarf
$LOAD par_P_MS_NR_sec_max

* - description: Bitte legen Sie hier den Bedarf an vorgehaltener positver Tertiärregelleistung fest
* - type: float
* - identifier: Bedarf Vorhaltung positive Tertiärregelleistung
* - unit: [MW pro Zeitschritt]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_PR_ter_max(set_ii) Regelleistungsbedarf
$LOAD par_P_MS_PR_ter_max

* - description: Bitte legen Sie hier den Bedarf an vorgehaltener negativer Tertiärregelleistung fest
* - type: float
* - identifier: Bedarf Vorhaltung negative Tertiärregelleistung
* - unit: [MW pro Zeitschritt]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_NR_ter_max(set_ii) Regelleistungsbedarf
$LOAD par_P_MS_NR_ter_max

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Entgelte für Primärregelenergie in CHF angegeben werden
* - type: Boolean
* - identifier: Engelte für Primärregelenergie in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_R_pri == 1, sca_X_MS_EUR_R_pri = 0)
* - rule: IF (sca_X_MS_CHF_R_pri == 0, sca_X_MS_EUR_R_pri = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_R_pri Preise für Regelenergie in CHF
$LOAD sca_X_MS_CHF_R_pri

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Entgelte für Primärregelenergie in EUR angegeben werden
* - type: Boolean
* - identifier: Entgelte für Primärregelenergie in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_EUR_R_pri == 1, sca_X_MS_CHF_R_pri = 0)
* - rule: IF (sca_X_MS_EUR_R_pri == 0, sca_X_MS_CHF_R_pri = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_R_pri Preise für Regelenergie in EUR
$LOAD sca_X_MS_EUR_R_pri

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Entgelte für Sekundärregelenergie in CHF angegeben werden
* - type: Boolean
* - identifier: Engelte für Sekundärregelenergie in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_R_sec == 1, sca_X_MS_EUR_R_sec = 0)
* - rule: IF (sca_X_MS_CHF_R_sec == 0, sca_X_MS_EUR_R_sec = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_R_sec Preise für Regelenergie in CHF
$LOAD sca_X_MS_CHF_R_sec

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Entgelte für Sekundärregelenergie in EUR angegeben werden
* - type: Boolean
* - identifier: Entgelte für Sekundärregelenergie in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_EUR_R_sec == 1, sca_X_MS_CHF_R_sec = 0)
* - rule: IF (sca_X_MS_EUR_R_sec == 0, sca_X_MS_CHF_R_sec = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_R_sec Preise für Regelenergie in EUR
$LOAD sca_X_MS_EUR_R_sec

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Entgelte für Tertiärregelenergie in CHF angegeben werden
* - type: Boolean
* - identifier: Engelte für Tertiärregelenergie in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_R_ter == 1, sca_X_MS_EUR_R_ter = 0)
* - rule: IF (sca_X_MS_CHF_R_ter == 0, sca_X_MS_EUR_R_ter = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_R_ter Preise für Regelenergie in CHF
$LOAD sca_X_MS_CHF_R_ter

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Entgelte für Tertiärregelenergie in EUR angegeben werden
* - type: Boolean
* - identifier: Entgelte für Tertiärregelenergie in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_EUR_R_ter == 1, sca_X_MS_CHF_R_ter = 0)
* - rule: IF (sca_X_MS_EUR_R_ter == 0, sca_X_MS_CHF_R_ter = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_R_ter Preise für Regelenergie in EUR
$LOAD sca_X_MS_EUR_R_ter

* - description: Bitte geben Sie hier den Marktpreis für CO2-Zertifikate in Form einer Preiszeitreihe an
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

* - description: Bitte geben Sie hier den Marktpreis für Grün-Zertifikate in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Grün-Zertifikatepreis
* - unit: [EUR / tCO2]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_GC(set_ii) Grün-Zertifikatepreis
$LOAD par_C_MS_GC

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Grün-Zertifikatpreise in CHF angegeben werden
* - type: Boolean
* - identifier: Grün-Zertifikatepreis  in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF(sca_X_MS_CHF_C_GC == 1, sca_X_MS_EUR_C_GC = 0)
* - rule: IF(sca_X_MS_CHF_C_GC == 0, sca_X_MS_EUR_C_GC = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_C_GC Grün-Zertifikatepreis  in CHF
$LOAD sca_X_MS_CHF_C_GC

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Grün-Zertifikatpreise in EUR angegeben werden
* - type: Boolean
* - identifier: Grün-Zertifikatepreis in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF(sca_X_MS_EUR_C_GC == 1, sca_X_MS_CHF_C_GC = 0)
* - rule: IF(sca_X_MS_EUR_C_GC == 0, sca_X_MS_CHF_C_GC = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_C_GC Grün-Zertifikatepreis in EUR
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

* - description: Bitte geben Sie hier den spezifischen Ensorgungserlös aus der Kehrverbrennung an
* - type: Float
* - identifier: Entsorgungserlöse aus der Kehrrichtverbrennung
* - unit: [EUR / t]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_R_MS_disposal(set_tech_SS_RC) Entsorgungserlöse aus der Kehrrichtverbrennung
$LOAD par_R_MS_disposal

* - description: Bitte geben Sie hier den Marktpreis für Öl in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktpreis Öl
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_O(set_ii) Marktpreis Öl
$LOAD par_C_MS_O

* - description: Bitte geben Sie hier den Marktpreis für Biomasse in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktpreis Biomasse (fest)
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_B_s(set_ii) Marktpreis Biomasse
$LOAD par_C_MS_B_s

* - description: Bitte geben Sie hier den Marktpreis für flüssige Biomasse in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktpreis Biomasse (flüssig)
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_B_l(set_ii) Marktpreis Biomasse
$LOAD par_C_MS_B_l

* - description: Bitte geben Sie hier den Marktpreis für gasförmige Biomasse in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktpreis Biomasse (gasförmig)
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_B_g(set_ii) Marktpreis Biomasse
$LOAD par_C_MS_B_g

* - description: Bitte geben Sie hier die Marktgutschrift für Abfall in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktgutschrift Abfall
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_RF(set_ii) Marktpreis Abfall
$LOAD par_C_MS_RF

* - description: Bitte geben Sie hier den Marktpreis für Holz in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktpreis Holz
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_T(set_ii) Marktpreis Holz
$LOAD par_C_MS_T

* - description: Bitte geben Sie hier den Einkaufspreis für Wärme in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Einkaufspreis Wärme
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_W(set_ii) Marktpreis Wärme
$LOAD par_C_MS_W

* - description: Bitte geben Sie hier den Einkaufspreis für Kälte in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Einkaufspreis Kälte
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_Cool(set_ii) Marktpreis Kälte
$LOAD par_C_MS_Cool

* - description: Bitte geben Sie hier den Einkaufspreis für Wasserstoff in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Einkaufspreis Wasserstoff
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_Hydro(set_ii) Marktpreis Wasserstoff
$LOAD par_C_MS_Hydro

* - description: Bitte geben Sie hier den Einkaufspreis für den Chemischen Stoff in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Einkaufspreis Chemischer-Stoff
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_CL(set_ii) Marktpreis Chemischer-Stoff
$LOAD par_C_MS_CL

* - description: Bitte geben Sie hier den Verkaufspreis für Wärme in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Verkaufspreis Wärme
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_W_sale(set_ii) Marktpreis Wärme
$LOAD par_C_MS_W_sale

* - description: Bitte geben Sie hier den Marktpreis für Braunkohle in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktpreis Braunkohle
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_L(set_ii) Marktpreis Braunkohle
$LOAD par_C_MS_L

* - description: Bitte geben Sie hier den Marktpreis für Steinkohle in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Marktpreis Steinkohle
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_MS_HC(set_ii) Marktpreis Steinkohle
$LOAD par_C_MS_HC

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Wärme in CHF angegeben werden
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

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Wärme in EUR angegeben werden
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


* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Öl in CHF angegeben werden
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

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Öl in EUR angegeben werden
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

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Steinkohle in CHF angegeben werden
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

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Braunkohle in CHF angegeben werden
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

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Steinkohle in EUR angegeben werden
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

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Braunkohle in EUR angegeben werden
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

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Gutschrift für Abfall in CHF angegeben werden
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

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Gutschrift für Abfall in EUR angegeben werden
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

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Biomasse in CHF angegeben werden
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

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Biomasse in EUR angegeben werden
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

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Holz in CHF angegeben werden
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

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Holz in EUR angegeben werden
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



* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Kälte in CHF angegeben werden
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

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Kälte in EUR angegeben werden
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


* - description: Bitte geben Sie hier den CO2-Emissionsfaktor für den Strommix an
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

* - description: Bitte geben Sie hier den CO2-Emissionsfaktor von Müll an
* - type: Float
* - identifier: CO2 Emissionsfaktor Müll
* - unit: [tCO2 / MWh]
* - domain:[0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_Emis_MS_RF_CO2 CO2 Emissionen Kehrricht
$LOAD sca_Emis_MS_RF_CO2

* - description: Bitte geben Sie hier den CO2-Emissionsfaktor für Wärme an
* - type: Float
* - identifier: CO2 Emissionsfaktor Wärme
* - unit: [tCO2 / MWh]
* - domain:[0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_Emis_MS_W_CO2 CO2 Emissionen Wärme
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

* - description: Bitte geben Sie hier den CO2-Emissionsfaktor von Öl an
* - type: Float
* - identifier: CO2 Emissionsfaktor Öl
* - unit: [tCO2 / MWh]
* - domain:[0,)
* - validation:
* - hidden:
* - processing:
SCALAR sca_Emis_MS_O_CO2 CO2 Emissionen Öl
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


* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Kälte in CHF angegeben werden
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

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Kälte in EUR angegeben werden
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


* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Kälte in CHF angegeben werden
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

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Marktpreise für Kälte in EUR angegeben werden
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

* - description: Bitte geben Sie hier das Entgelt für negative Flexibilitätsleistung in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Entgelt negative Flexibilitätsleistung
* - unit: [EUR / MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_R_MS_NR_fx(set_ii) Leistungsentgelt
$LOAD par_R_MS_NR_fx

* - description: Bitte geben Sie hier das Entgelt für positive Flexibilitätsleistung in Form einer Preiszeitreihe an
* - type: Float
* - identifier: Entgelt positive Flexibilitätsleistung
* - unit: [EUR / MWh]
* - domain: [0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_R_MS_PR_fx(set_ii) Leistungsentgelt
$LOAD par_R_MS_PR_fx

* - description: Bitte geben Sie hier einen Mindestwert für ein Gebot am positiven Flexibilitätsmarkt an
* - type: Float
* - identifier: Mindesgebot positiver Flexibilitätsmarkt
* - unit: [MW]
* - domain: [0,24]
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_PR_fx_min(set_ii) Mindestgebot
$LOAD par_P_MS_PR_fx_min

* - description: Bitte geben Sie hier einen Mindestwert für ein Gebot am negativen Flexibilitätsmarkt an
* - type: Float
* - identifier: Mindesgebot negativer Flexibilitätsmarkt
* - unit: [MW]
* - domain: [0,24]
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_NR_fx_min(set_ii) Mindestgebot
$LOAD par_P_MS_NR_fx_min

* - description: Bitte geben Sie hier einen Maximalwert für ein Gebot am positiven Flexibilitätsmarkt an
* - type: Float
* - identifier: Maximalgebot positiver Flexibilitätsmarkt
* - unit: [MW]
* - domain: [0,24]
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_PR_fx_max(set_ii) Mindestgebot
$LOAD par_P_MS_PR_fx_max

* - description: Bitte geben Sie hier einen Maximalwert für ein Gebot am negativen Flexibilitätsmarkt an
* - type: Float
* - identifier: Maximalgebot negativer Flexibilitätsmarkt
* - unit: [MW]
* - domain: [0,24]
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_MS_NR_fx_max(set_ii) Mindestgebot
$LOAD par_P_MS_NR_fx_max

* - description: Bitte geben Sie hier die Länge des Blockgebots für positive Flexibilitätsleistung an
* - type: Float
* - identifier: Blockgebotslänge positive Flexibilitätsleistung
* - unit: [h]
* - domain: [0,24]
* - validation:
* - hidden:
* - processing:
SCALAR sca_H_MS_NR_fx_min Blockgebotslänge
$LOAD sca_H_MS_NR_fx_min

* - description: Bitte geben Sie hier die Länge des Blockgebots für negative Flexibilitätsleistung an
* - type: Float
* - identifier: Blockgebotslänge negative Flexibilitätsleistung
* - unit: [h]
* - domain: [0,24]
* - validation:
* - hidden:
* - processing:
SCALAR sca_H_MS_PR_fx_min Blockgebotslänge
$LOAD sca_H_MS_PR_fx_min

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Entgelte für Flexibilitätregelenergie in CHF angegeben werden
* - type: Boolean
* - identifier: Engelte für Flexibilitätregelenergie in CHF
* - unit:
* - default: 1
* - domain: [0|1]
* - rule: IF (sca_X_MS_CHF_R_fx == 1, sca_X_MS_EUR_R_fx = 0)
* - rule: IF (sca_X_MS_CHF_R_fx == 0, sca_X_MS_EUR_R_fx = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_CHF_R_fx Preise für Regelenergie in CHF
$LOAD sca_X_MS_CHF_R_fx

* - description: Bitte markieren Sie dieses Feld mit "Ja", wenn die Entgelte für Flexibilitätregelenergie in EUR angegeben werden
* - type: Boolean
* - identifier: Entgelte für Flexibilitätregelenergie in EUR
* - unit:
* - default: 0
* - domain: [0|1]
* - rule: IF (sca_X_MS_EUR_R_fx == 1, sca_X_MS_EUR_R_fx = 0)
* - rule: IF (sca_X_MS_EUR_R_fx == 0, sca_X_MS_EUR_R_fx = 1)
* - hidden:
* - processing:
SCALAR sca_X_MS_EUR_R_fx Preise für Regelenergie in EUR
$LOAD sca_X_MS_EUR_R_fx


