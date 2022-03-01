* - description: Bitte geben Sie hier den Wirkungsgrad des Fernwärmenetzes an
* - type: float
* - identifier: Wirkungsgrad Fernwärmenetz
* - domain: (0,1]
* - default: 0.9
PARAMETER par_Eta_NS_WGrid(set_grid_NS_W) Wirkungsgrad
$LOAD par_Eta_NS_WGrid

* - description: Bitte geben Sie hier den Wirkungsgrad des Kältenetzes an
* - type: float
* - identifier: Wirkungsgrad Kältenetz
* - domain: (0,1]
* - default: 0.9
PARAMETER par_Eta_NS_CGrid(set_grid_NS_C) Wirkungsgrad
$LOAD par_Eta_NS_CGrid

* - description: Bitte geben Sie hier den Wirkungsgrad des Wasserstoffnetz an
* - type: float
* - identifier: Wirkungsgrad Wasserstoffnetz
* - domain: (0,1]
* - default: 0.9
PARAMETER par_Eta_NS_HGrid(set_grid_NS_H) Wirkungsgrad
$LOAD par_Eta_NS_HGrid

* - description: Bitte geben Sie hier die positive Reservekapazität des Fernwärmenetzes an
* - type: Float
* - identifier: Positive Reservekapazität Wärmenetz
* - unit: [MWh]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOC_NS_PRGrid_cap(set_ii,set_grid_NS_W) Reservekapazität Wärmenetz
$LOAD par_SOC_NS_PRGrid_cap

* - description: Bitte geben Sie hier die negative Reservekapazität des Fernwärmenetzes an
* - type: Float
* - identifier: Negative Reservekapazität Wärmenetz
* - unit: [MWh]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOC_NS_NRGrid_cap(set_ii,set_grid_NS_W) Reservekapazität Wärmenetz
$LOAD par_SOC_NS_NRGrid_cap

