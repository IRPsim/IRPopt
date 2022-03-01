* - description: Bitte geben Sie hier die maximalen variablen Startkosten der Technologie an. Der Betrag ist das Produkt aus der Maximalleistung und den spezifischen variablen Startkosten aus Silbernagl et al., 2014.
* - type: Float
* - identifier: Variable Startkosten
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_pss_relativeStatus(set_pss) Variable Startkosten
$LOAD par_C_pss_relativeStatus

* - description: Bitte geben Sie hier die fixen Startkosten der Technologie an. Der Betrag ist das Produkt aus der Maximalleistung und den spezifischen fixen Startkosten aus Silbernagl et al., 2014.
* - type: Float
* - identifier: Absolute Startkosten
* - unit: [EUR]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_pss_absoluteStatus(set_pss) Absolute Startkosten
$LOAD par_C_pss_absoluteStatus

* - description: Bitte geben Sie hier die monatlichen fixen Betriebskosten der Technologie an.
* - type: Float
* - identifier: Fixe Betriebskosten
* - unit: [EUR / month]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_pss_fixFlow(set_pss) Fixe Kosten
$LOAD par_C_pss_fixFlow

* - description: Bitte geben Sie hier die Variable Betriebskosten der Technologie an.
* - type: Float
* - identifier: Variable Betriebskosten
* - unit: [EUR / MWh]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_C_pss_relativeFlow(set_pss) Variable Kosten
$LOAD par_C_pss_relativeFlow

* - description: Bitte geben Sie hier die spezifischen CO2-Emissionen der Technologie an.
* - type: Float
* - identifier: CO2-Emissionen
* - unit: [tCO2 / MWh]
* - domain:[0,)
* - validation:
* - hidden:
* - processing:
PARAMETER par_Emis_pss_CO2(set_pss) CO2 Emissionen
$LOAD par_Emis_pss_CO2

* - description: Bitte geben Sie hier an, wie die Technologiekosten welchem Sektor (Strom, Wärme, Reserve etc.) (anteilig) zugeordnet werden sollen.
* - type: Float
* - identifier: Sektorzuweisung der Technologiekosten
* - domain: [0,1]
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOH_pss_sector(set_sector,set_pss) Sektorzuweisung
$LOAD par_SOH_pss_sector
