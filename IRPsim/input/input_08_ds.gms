* - description: Bitte geben Sie hier die Anzahl der Kunden der ausgewählten Kundengruppe an
* - type: Integer
* - identifier: Kundenzahl pro Kundengruppe
* - unit:
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_S_DS(set_side_cust) Kundenzahl pro Kundengruppe
$LOAD par_S_DS

* - description: Bitte geben Sie an, ob die ausgewählte Kundengruppe die Unternehmereigenschaft nach besitzt. Dies wird bei der Umsatzbesteuerung berücksichtigt.
* - type: Boolean
* - identifier: Unternehmereigenschaft
* - unit:
* - domain: [0|1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_DS_business(set_side_cust) Kundenzahl pro Kundengruppe
$LOAD par_X_DS_business

* - description: Bitte geben Sie hier das relative jährliche Wachstum der Kundengruppe im Vergleich zum Vorjahr an
* - type: Float
* - identifier: Relatives Wachstum der Kundengruppe pro Jahr
* - unit:
* - domain: [-1,1]
* - default: 0
* - hidden:
* - processing:
PARAMETER par_S_DS_growth(set_side_cust)
$LOAD par_S_DS_growth

* - description: Bitte geben Sie hier das absolute jährliche Wachstum der Kundengruppe an
* - type: Float
* - identifier: Absolutes Wachstum der Kundengruppe pro Jahr
* - unit:
* - domain:
* - default: 0
* - hidden:
* - processing:
PARAMETER par_S_DS_growth_absolute(set_a_total,set_side_cust)
$LOAD par_S_DS_growth_absolute




