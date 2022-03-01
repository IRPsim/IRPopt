* - description: Bitte geben Sie hier die Wärmeproduktion des Spitzenlastkessels als viertelstündliche Zeitreihe an. 
* - type: Float
* - identifier: Wärmeproduktion Spitzenlastkessel
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_W_SS_PLB_schedule(set_ii, set_tech_SS_PLB) Stromproduktion Spitzenlastkessel
$LOAD par_W_SS_PLB_schedule

* - description: Bitte geben Sie hier den Primärenergiebezug Spitzenlastkesse als viertelstündliche Zeitreihe an. 
* - type: Float
* - identifier: Primärenergiebezug Spitzenlastkessel
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_SS_PLB_schedule(set_ii, set_tech_SS_PLB) Stromproduktion Spitzenlastkessel
$LOAD par_L_SS_PLB_schedule

