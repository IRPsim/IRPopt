* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Arbeitstarife für den Wasserstoff-Netzbezug an
* - type: float
* - identifier: Wasserstoff-Arbeitstarife Netzbezug
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_H_HGrid_energy(set_ii,set_side_fares,set_pss) Tarife
$LOAD par_F_H_HGrid_energy

* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Leistungsstarife für den Wasserstoff-Netzbezug an
* - type: float
* - identifier: Wasserstoff-Leistungstarife Netzbezug
* - unit: [EUR pro MW / month]
* - domain:
* - default: 0
PARAMETER par_F_H_HGrid_capacity(set_side_fares,set_power) Tarife
$LOAD par_F_H_HGrid_capacity

* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Basispreis für den Wasserstoff-Netzbezug an
* - type: float
* - identifier: Wasserstoff-Basispreise Netzbezug
* - unit: [EUR / month]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_H_HGrid_basic(set_side_fares,set_pss) Tarife
$LOAD par_F_H_HGrid_basic

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Vergütungen für die Wasserstoff-Netzeinspeisung an
* - type: float
* - identifier: Wasserstoff-Vergütung Netzeinspeisung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_H_HGrid_intenergyinfeed(set_ii,set_side_fares_int,set_pss) Tarife
$LOAD par_F_H_HGrid_intenergyinfeed

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Vergütungen für die Wasserstoff-Netzeinspeisung an
* - type: float
* - identifier: Wasserstoff-Vergütung Netzeinspeisung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_H_HGrid_intenergy(set_ii,set_side_fares_int,set_pss) Tarife
$LOAD par_F_H_HGrid_intenergy

