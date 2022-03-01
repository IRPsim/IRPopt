* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Arbeitstarife für den Kälte-Netzbezug an
* - type: float
* - identifier: Kälte-Arbeitstarife Netzbezug
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_C_CGrid_energy(set_ii,set_side_fares,set_pss) Tarife
$LOAD par_F_C_CGrid_energy

* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Leistungsstarife für den Kälte-Netzbezug an
* - type: float
* - identifier: Kälte-Leistungstarife Netzbezug
* - unit: [EUR pro MW / month]
* - domain:
* - default: 0
PARAMETER par_F_C_CGrid_capacity(set_side_fares,set_power) Tarife
$LOAD par_F_C_CGrid_capacity

* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Basispreis für den Kälte-Netzbezug an
* - type: float
* - identifier: Kälte-Basispreise Netzbezug
* - unit: [EUR / month]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_C_CGrid_basic(set_side_fares,set_pss) Tarife
$LOAD par_F_C_CGrid_basic

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Vergütungen für die Kälte-Netzeinspeisung an
* - type: float
* - identifier: Kälte-Vergütung Netzeinspeisung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_C_CGrid_intenergyinfeed(set_ii,set_side_fares_int,set_pss) Tarife
$LOAD par_F_C_CGrid_intenergyinfeed

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Vergütungen für die Kälte-Netzeinspeisung an
* - type: float
* - identifier: Kälte-Vergütung Netzeinspeisung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_C_CGrid_intenergy(set_ii,set_side_fares_int,set_pss) Tarife
$LOAD par_F_C_CGrid_intenergy

