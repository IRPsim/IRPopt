* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Arbeitstarife f�r den W�rme-Netzbezug an
* - type: float
* - identifier: W�rme-Arbeitstarife Netzbezug
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_W_WGrid_energy(set_ii,set_side_fares,set_pss) Tarife
$LOAD par_F_W_WGrid_energy

* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Leistungstarife f�r den W�rme-Netzbezug an
* - type: float
* - identifier: W�rme-Leistungstarife Netzbezug
* - unit: [EUR pro MW / month]
* - domain:
* - default: 0
PARAMETER par_F_W_WGrid_capacity(set_side_fares,set_power) Tarife
$LOAD par_F_W_WGrid_capacity

* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Basispreise f�r den W�rme-Netzbezug an
* - type: float
* - identifier: W�rme-Basispreise Netzbezug
* - unit: [EUR / month]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_W_WGrid_basic(set_side_fares,set_pss) Tarife
$LOAD par_F_W_WGrid_basic

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Verg�tungen f�r die W�rme-Netzeinspeisung an
* - type: float
* - identifier: W�rme-Verg�tung Netzeinspeisung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_W_WGrid_intenergyinfeed(set_ii,set_side_fares_int,set_pss) Tarife
$LOAD par_F_W_WGrid_intenergyinfeed

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Verg�tungen f�r die W�rme-Netzeinspeisung an
* - type: float
* - identifier: W�rme-Verg�tung Netzeinspeisung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_W_WGrid_intenergy(set_ii,set_side_fares_int,set_pss) Tarife
$LOAD par_F_W_WGrid_intenergy

