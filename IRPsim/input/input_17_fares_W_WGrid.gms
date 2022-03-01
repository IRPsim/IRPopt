* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Arbeitstarife für den Wärme-Netzbezug an
* - type: float
* - identifier: Wärme-Arbeitstarife Netzbezug
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_W_WGrid_energy(set_ii,set_side_fares,set_pss) Tarife
$LOAD par_F_W_WGrid_energy

* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Leistungstarife für den Wärme-Netzbezug an
* - type: float
* - identifier: Wärme-Leistungstarife Netzbezug
* - unit: [EUR pro MW / month]
* - domain:
* - default: 0
PARAMETER par_F_W_WGrid_capacity(set_side_fares,set_power) Tarife
$LOAD par_F_W_WGrid_capacity

* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Basispreise für den Wärme-Netzbezug an
* - type: float
* - identifier: Wärme-Basispreise Netzbezug
* - unit: [EUR / month]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_W_WGrid_basic(set_side_fares,set_pss) Tarife
$LOAD par_F_W_WGrid_basic

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Vergütungen für die Wärme-Netzeinspeisung an
* - type: float
* - identifier: Wärme-Vergütung Netzeinspeisung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_W_WGrid_intenergyinfeed(set_ii,set_side_fares_int,set_pss) Tarife
$LOAD par_F_W_WGrid_intenergyinfeed

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Vergütungen für die Wärme-Netzeinspeisung an
* - type: float
* - identifier: Wärme-Vergütung Netzeinspeisung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_W_WGrid_intenergy(set_ii,set_side_fares_int,set_pss) Tarife
$LOAD par_F_W_WGrid_intenergy

