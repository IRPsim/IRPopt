* - description: Bitte geben Sie hier die W�rmeproduktion des Spitzenlastkessels als viertelst�ndliche Zeitreihe an. 
* - type: Float
* - identifier: W�rmeproduktion Spitzenlastkessel
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_W_SS_PLB_schedule(set_ii, set_tech_SS_PLB) Stromproduktion Spitzenlastkessel
$LOAD par_W_SS_PLB_schedule

* - description: Bitte geben Sie hier den Prim�renergiebezug Spitzenlastkesse als viertelst�ndliche Zeitreihe an. 
* - type: Float
* - identifier: Prim�renergiebezug Spitzenlastkessel
* - unit: [MWh / t]
* - domain:
* - validation:
* - hidden:
* - processing:
PARAMETER par_L_SS_PLB_schedule(set_ii, set_tech_SS_PLB) Stromproduktion Spitzenlastkessel
$LOAD par_L_SS_PLB_schedule

