* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Arbeitstarife für den Gas-Netzbezug an
* - type: float
* - identifier: Gas-Arbeitstarife Netzbezug
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_G_GGrid_energy(set_ii,set_side_fares,set_pss) Tarife
$LOAD par_F_G_GGrid_energy

* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Arbeitstarife für den Gas-Netzbezug an
* - type: float
* - identifier: Gas-Arbeitstarife Netzbezug
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_G_GGrid_intenergy(set_ii,set_side_fares_int,set_pss) Tarife
$LOAD par_F_G_GGrid_intenergy

* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Leistungstarife für den Gas-Netzbezug an
* - type: float
* - identifier: Gas-Leistungstarife Netzbezug
* - unit: [EUR pro MW / month]
* - domain:
* - default: 0
PARAMETER par_F_G_GGrid_capacity(set_side_fares,set_power) Tarife
$LOAD par_F_G_GGrid_capacity

* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Basistarife für den Gas-Netzbezug an
* - type: float
* - identifier: Gas-Basistarife Netzbezug
* - unit: [EUR / month]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_G_GGrid_basic(set_side_fares,set_pss) Tarife
$LOAD par_F_G_GGrid_basic

