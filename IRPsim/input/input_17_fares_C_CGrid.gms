* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Arbeitstarife f�r den K�lte-Netzbezug an
* - type: float
* - identifier: K�lte-Arbeitstarife Netzbezug
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_C_CGrid_energy(set_ii,set_side_fares,set_pss) Tarife
$LOAD par_F_C_CGrid_energy

* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Leistungsstarife f�r den K�lte-Netzbezug an
* - type: float
* - identifier: K�lte-Leistungstarife Netzbezug
* - unit: [EUR pro MW / month]
* - domain:
* - default: 0
PARAMETER par_F_C_CGrid_capacity(set_side_fares,set_power) Tarife
$LOAD par_F_C_CGrid_capacity

* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Basispreis f�r den K�lte-Netzbezug an
* - type: float
* - identifier: K�lte-Basispreise Netzbezug
* - unit: [EUR / month]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_C_CGrid_basic(set_side_fares,set_pss) Tarife
$LOAD par_F_C_CGrid_basic

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Verg�tungen f�r die K�lte-Netzeinspeisung an
* - type: float
* - identifier: K�lte-Verg�tung Netzeinspeisung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_C_CGrid_intenergyinfeed(set_ii,set_side_fares_int,set_pss) Tarife
$LOAD par_F_C_CGrid_intenergyinfeed

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Verg�tungen f�r die K�lte-Netzeinspeisung an
* - type: float
* - identifier: K�lte-Verg�tung Netzeinspeisung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_C_CGrid_intenergy(set_ii,set_side_fares_int,set_pss) Tarife
$LOAD par_F_C_CGrid_intenergy

