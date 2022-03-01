* - description: Bitte geben Sie hier die Höhe die kantonale CO2-Abgabe an
* - type: Float
* - identifier: Kantonale CO2 Abgabe
* - unit: [EUR / tCO2]
* - domain: [0,)
* - default: 0
PARAMETER par_Tax_PS_CO2(set_ii) Kantonale CO2 Abgabe
$LOAD par_Tax_PS_CO2

* - description: Bitte geben Sie hier die fixen Anreizaufwendungen der Politik pro Jahr in Abhängigkeit der Kundengruppen an
* - type: float
* - identifier: Fixe Anreizaufwendungen der Politik
* - unit: [EUR / a]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_E_fix(set_side_cust) Fixe Anreizaufwendungen der Politik
$LOAD par_Inc_PS_E_fix

* - description: Bitte geben Sie hier den Mehrwertsteuersatz an
* - type: float
* - identifier: Mehrwertsteuer
* - unit:
* - domain: [0,1]
* - default: 0.08
SCALAR sca_Tax_PS_vat Mehrwertsteuer
$LOAD sca_Tax_PS_vat

* - description: Bitte geben Sie hier die Höhe der Förderabgabe an
* - type: float
* - identifier: Förderabgabe
* - unit:
* - domain: [0,1]
* - default: 0.09
SCALAR sca_Tax_PS_royalties Förderabgabe
$LOAD sca_Tax_PS_royalties

* - description: Bitte tragen Sie hier die spezifische Förderung der öffentlichen Hand für Stromspeicher durch  ein
* - type: Float
* - identifier: Förderung für Stromspeicher durch Politik
* - unit: [EUR / MWh]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_ES(set_tech_DES_ES) Förderung für Stromspeicher durch Politik
$LOAD par_Inc_PS_ES

* - description: Bitte tragen Sie hier die spezifische Förderung der öffentlichen Hand für Wärmespeicher ein
* - type: Float
* - identifier: Förderung für Wärmespeicher durch Politik
* - unit: [EUR / MWh]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_TS(set_tech_DES_TS) Förderung für Wärmespeicher durch Politik
$LOAD par_Inc_PS_TS

* - description: Bitte tragen Sie hier die spezifische Förderung der öffentlichen Hand für Kältespeicher ein
* - type: Float
* - identifier: Förderung für Kältespeicher durch Politik
* - unit: [EUR / MWh]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_CS(set_tech_DES_CS) Förderung für Kältespeicher durch Politik
$LOAD par_Inc_PS_CS


* - description: Bitte tragen Sie hier die spezifische Förderung der öffentlichen Hand für Gaskessel  ein
* - type: Float
* - identifier: Förderung für Gaskessel durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_NGB(set_tech_DES_NGB) Förderung für Gaskessel durch Politik
$LOAD par_Inc_PS_NGB

* - description: Bitte tragen Sie hier die spezifische Förderung der öffentlichen Hand für Durchlauferhitzer ein
* - type: Float
* - identifier: Förderung für Durchlauferhitzer durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_EB(set_tech_DES_EB) Politikförderung Leistung Elektrischer Boiler
$LOAD par_Inc_PS_EB

* - description: Bitte tragen Sie hier die spezifische Förderung der öffentlichen Hand für PV-Anlagen ein
* - type: Float
* - identifier: Förderung für PV-Anlage durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_PV(set_tech_DES_PV) Förderung für PV-Anlagen durch Politik
$LOAD par_Inc_PS_PV

* - description: Bitte tragen Sie hier die spezifische Förderung der öffentlichen Hand für Solarthermiemodule ein
* - type: Float
* - identifier: Förderung für Solarthermiemodul durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_ST(set_tech_DES_ST) Förderung für PV-Anlagen durch Politik
$LOAD par_Inc_PS_ST

* - description: Bitte tragen Sie hier die spezifische Förderung der öffentlichen Hand für Kraft-Wärme-Kopplungsanlagen ein
* - type: Float
* - identifier: Förderung für Kraft-Wärme-Kopplungsanlage durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_CHP(set_tech_DES_CHP) Förderung für PV-Anlagen durch Politik
$LOAD par_Inc_PS_CHP

* - description: Bitte tragen Sie hier die spezifische Förderung der öffentlichen Hand für Wärmepumpen ein
* - type: Float
* - identifier: Förderung für Wärmepumpe durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_HP(set_tech_DES_HP) Förderung für Wärmepumpen durch Politik
$LOAD par_Inc_PS_HP

* - description: Bitte tragen Sie hier die spezifische Förderung der öffentlichen Hand für Kompressionskältemaschinen ein
* - type: Float
* - identifier: Förderung für Kompressionskältemaschinen durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_CR(set_tech_DES_CR) Förderung für Kompressionskältemaschinen durch Politik
$LOAD par_Inc_PS_CR

* - description: Bitte tragen Sie hier die spezifische Förderung der öffentlichen Hand für Absorptionskältemaschinen ein
* - type: Float
* - identifier: Förderung für Absorptionskältemaschinen durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_SC(set_tech_DES_SC) Förderung für Adsorptionskältemaschinen durch Politik
$LOAD par_Inc_PS_SC

* - description: Bitte tragen Sie hier die spezifische Förderung der öffentlichen Hand für Wasserstoffspeicher ein
* - type: Float
* - identifier: Förderung für Wasserstoffspeicher durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_HS(set_tech_DES_HS) Förderung für Adsorptionskältemaschinen durch Politik
$LOAD par_Inc_PS_HS

* - description: Bitte tragen Sie hier die spezifische Förderung der öffentlichen Hand für Wasserstoffspeicher ein
* - type: Float
* - identifier: Förderung für Wasserstoffspeicher durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_CLS(set_tech_DES_CLS) Förderung für Adsorptionskältemaschinen durch Politik
$LOAD par_Inc_PS_CLS

* - description: Bitte tragen Sie hier die spezifische Förderung der öffentlichen Hand für Gasspeicher ein
* - type: Float
* - identifier: Förderung für Gasspeicher durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_GS(set_tech_DES_GS) Förderung für Adsorptionskältemaschinen durch Politik
$LOAD par_Inc_PS_GS

* - description: Bitte tragen Sie hier die spezifische Förderung der öffentlichen Hand für Brennstoffzelle ein
* - type: Float
* - identifier: Förderung für Brennstoffzelle durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_FC(set_tech_DES_FC) Förderung für Adsorptionskältemaschinen durch Politik
$LOAD par_Inc_PS_FC


* - description: Bitte tragen Sie hier die spezifische Förderung der öffentlichen Hand für Elektrolyseur ein
* - type: Float
* - identifier: Förderung für Elektrolyseur durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_EY(set_tech_DES_EY) Förderung für Adsorptionskältemaschinen durch Politik
$LOAD par_Inc_PS_EY
