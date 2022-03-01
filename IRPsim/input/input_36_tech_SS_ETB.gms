* - description: Bitte geben Sie hier die maximale Thermische Leistung des Elektrodenheizkessels an.
* - type: Float
* - identifier: Maximale Thermische Leistung
* - unit: [MW]
* - domain: (0,)
* - default: 0.08
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_SS_ETB_max(set_tech_SS_ETB) Maximale Thermische Leistung des Durchlauferhitzers
$LOAD par_Q_SS_ETB_max

* - description: Bitte geben Sie hier die minimale Thermische Leistung des Elektrodenheizkessels an.
* - type: Float
* - identifier: Minimale Thermische Leistung
* - unit: [MW]
* - domain: (0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_SS_ETB_min(set_tech_SS_ETB) Maximale Thermische Leistung des Durchlauferhitzers
$LOAD par_Q_SS_ETB_min

* - description: Bitte geben Sie hier den Wirkungsgrad des Elektrodenheizkessels an.
* - type: Float
* - identifier: Wirkungsgrad Elektrodenheizkessel
* - unit:
* - domain: (0,1]
* - default: 0.99
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_ETB(set_tech_SS_ETB) Wirkungsgrad des Boilermodells
$LOAD par_Eta_SS_ETB
