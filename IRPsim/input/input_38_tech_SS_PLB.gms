* - description: Bitte geben Sie hier die maximale thermische Leistung des Spitzenlastkessels an.
* - type: Float
* - identifier: Maximale Thermische Leistung
* - unit: [MW]
* - domain: (0,)
* - default: 0.08
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_SS_PLB_max(set_tech_SS_PLB) Maximale Thermische Leistung des Durchlauferhitzers
$LOAD par_Q_SS_PLB_max

* - description: Bitte geben Sie hier die minimale thermische Leistung des Spitzenlastkessels an.
* - type: Float
* - identifier: Minimale Thermische Leistung
* - unit: [MW]
* - domain: (0,)
* - default: 0.08
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_SS_PLB_min(set_tech_SS_PLB) Minimale Thermische Leistung des Durchlauferhitzers
$LOAD par_Q_SS_PLB_min

* - description: Bitte geben Sie hier den Wirkungsgrad des Spitzenlastkessels an.
* - type: Float
* - identifier: Wirkungsgrad Spitzenlastkessel
* - unit:
* - domain: (0,1]
* - default: 0.99
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_PLB(set_tech_SS_PLB) Wirkungsgrad des Boilermodells
$LOAD par_Eta_SS_PLB
