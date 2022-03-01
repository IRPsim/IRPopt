* - description: Bitte geben Sie hier die H�he die kantonale CO2-Abgabe an
* - type: Float
* - identifier: Kantonale CO2 Abgabe
* - unit: [EUR / tCO2]
* - domain: [0,)
* - default: 0
PARAMETER par_Tax_PS_CO2(set_ii) Kantonale CO2 Abgabe
$LOAD par_Tax_PS_CO2

* - description: Bitte geben Sie hier die fixen Anreizaufwendungen der Politik pro Jahr in Abh�ngigkeit der Kundengruppen an
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

* - description: Bitte geben Sie hier die H�he der F�rderabgabe an
* - type: float
* - identifier: F�rderabgabe
* - unit:
* - domain: [0,1]
* - default: 0.09
SCALAR sca_Tax_PS_royalties F�rderabgabe
$LOAD sca_Tax_PS_royalties

* - description: Bitte tragen Sie hier die spezifische F�rderung der �ffentlichen Hand f�r Stromspeicher durch  ein
* - type: Float
* - identifier: F�rderung f�r Stromspeicher durch Politik
* - unit: [EUR / MWh]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_ES(set_tech_DES_ES) F�rderung f�r Stromspeicher durch Politik
$LOAD par_Inc_PS_ES

* - description: Bitte tragen Sie hier die spezifische F�rderung der �ffentlichen Hand f�r W�rmespeicher ein
* - type: Float
* - identifier: F�rderung f�r W�rmespeicher durch Politik
* - unit: [EUR / MWh]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_TS(set_tech_DES_TS) F�rderung f�r W�rmespeicher durch Politik
$LOAD par_Inc_PS_TS

* - description: Bitte tragen Sie hier die spezifische F�rderung der �ffentlichen Hand f�r K�ltespeicher ein
* - type: Float
* - identifier: F�rderung f�r K�ltespeicher durch Politik
* - unit: [EUR / MWh]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_CS(set_tech_DES_CS) F�rderung f�r K�ltespeicher durch Politik
$LOAD par_Inc_PS_CS


* - description: Bitte tragen Sie hier die spezifische F�rderung der �ffentlichen Hand f�r Gaskessel  ein
* - type: Float
* - identifier: F�rderung f�r Gaskessel durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_NGB(set_tech_DES_NGB) F�rderung f�r Gaskessel durch Politik
$LOAD par_Inc_PS_NGB

* - description: Bitte tragen Sie hier die spezifische F�rderung der �ffentlichen Hand f�r Durchlauferhitzer ein
* - type: Float
* - identifier: F�rderung f�r Durchlauferhitzer durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_EB(set_tech_DES_EB) Politikf�rderung Leistung Elektrischer Boiler
$LOAD par_Inc_PS_EB

* - description: Bitte tragen Sie hier die spezifische F�rderung der �ffentlichen Hand f�r PV-Anlagen ein
* - type: Float
* - identifier: F�rderung f�r PV-Anlage durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_PV(set_tech_DES_PV) F�rderung f�r PV-Anlagen durch Politik
$LOAD par_Inc_PS_PV

* - description: Bitte tragen Sie hier die spezifische F�rderung der �ffentlichen Hand f�r Solarthermiemodule ein
* - type: Float
* - identifier: F�rderung f�r Solarthermiemodul durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_ST(set_tech_DES_ST) F�rderung f�r PV-Anlagen durch Politik
$LOAD par_Inc_PS_ST

* - description: Bitte tragen Sie hier die spezifische F�rderung der �ffentlichen Hand f�r Kraft-W�rme-Kopplungsanlagen ein
* - type: Float
* - identifier: F�rderung f�r Kraft-W�rme-Kopplungsanlage durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_CHP(set_tech_DES_CHP) F�rderung f�r PV-Anlagen durch Politik
$LOAD par_Inc_PS_CHP

* - description: Bitte tragen Sie hier die spezifische F�rderung der �ffentlichen Hand f�r W�rmepumpen ein
* - type: Float
* - identifier: F�rderung f�r W�rmepumpe durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_HP(set_tech_DES_HP) F�rderung f�r W�rmepumpen durch Politik
$LOAD par_Inc_PS_HP

* - description: Bitte tragen Sie hier die spezifische F�rderung der �ffentlichen Hand f�r Kompressionsk�ltemaschinen ein
* - type: Float
* - identifier: F�rderung f�r Kompressionsk�ltemaschinen durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_CR(set_tech_DES_CR) F�rderung f�r Kompressionsk�ltemaschinen durch Politik
$LOAD par_Inc_PS_CR

* - description: Bitte tragen Sie hier die spezifische F�rderung der �ffentlichen Hand f�r Absorptionsk�ltemaschinen ein
* - type: Float
* - identifier: F�rderung f�r Absorptionsk�ltemaschinen durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_SC(set_tech_DES_SC) F�rderung f�r Adsorptionsk�ltemaschinen durch Politik
$LOAD par_Inc_PS_SC

* - description: Bitte tragen Sie hier die spezifische F�rderung der �ffentlichen Hand f�r Wasserstoffspeicher ein
* - type: Float
* - identifier: F�rderung f�r Wasserstoffspeicher durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_HS(set_tech_DES_HS) F�rderung f�r Adsorptionsk�ltemaschinen durch Politik
$LOAD par_Inc_PS_HS

* - description: Bitte tragen Sie hier die spezifische F�rderung der �ffentlichen Hand f�r Wasserstoffspeicher ein
* - type: Float
* - identifier: F�rderung f�r Wasserstoffspeicher durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_CLS(set_tech_DES_CLS) F�rderung f�r Adsorptionsk�ltemaschinen durch Politik
$LOAD par_Inc_PS_CLS

* - description: Bitte tragen Sie hier die spezifische F�rderung der �ffentlichen Hand f�r Gasspeicher ein
* - type: Float
* - identifier: F�rderung f�r Gasspeicher durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_GS(set_tech_DES_GS) F�rderung f�r Adsorptionsk�ltemaschinen durch Politik
$LOAD par_Inc_PS_GS

* - description: Bitte tragen Sie hier die spezifische F�rderung der �ffentlichen Hand f�r Brennstoffzelle ein
* - type: Float
* - identifier: F�rderung f�r Brennstoffzelle durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_FC(set_tech_DES_FC) F�rderung f�r Adsorptionsk�ltemaschinen durch Politik
$LOAD par_Inc_PS_FC


* - description: Bitte tragen Sie hier die spezifische F�rderung der �ffentlichen Hand f�r Elektrolyseur ein
* - type: Float
* - identifier: F�rderung f�r Elektrolyseur durch Politik
* - unit: [EUR / MW]
* - domain: [0,)
* - default: 0
PARAMETER par_Inc_PS_EY(set_tech_DES_EY) F�rderung f�r Adsorptionsk�ltemaschinen durch Politik
$LOAD par_Inc_PS_EY
