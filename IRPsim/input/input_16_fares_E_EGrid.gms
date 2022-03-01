* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Arbeitstarife für den Strom-Netzbezug an
* - type: float
* - identifier: Strom-Arbeitstarife Netzbezug
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_E_EGrid_energy(set_ii,set_side_fares,set_pss) Tarife
$LOAD par_F_E_EGrid_energy

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Vergütung für die Strom-Netzeinspeisung an
* - type: float
* - identifier: Strom-Vergütung Netzeinspeisung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_E_EGrid_energyinfeed(set_ii,set_side_fares,set_pss) Tarife
$LOAD par_F_E_EGrid_energyinfeed

* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Leistungstarife für den Strom-Netzbezug an
* - type: float
* - identifier: Strom-Leistungstarife Netzbezug
* - unit: [EUR pro MW / month]
* - domain:
* - default: 0
PARAMETER par_F_E_EGrid_capacity(set_side_fares,set_power) Tarife
$LOAD par_F_E_EGrid_capacity

* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Basistarife für den Strom-Netzbezug an
* - type: float
* - identifier: Strom-Basistarife Netzbezug
* - unit: [EUR / month]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_E_EGrid_basic(set_side_fares,set_pss) Tarife
$LOAD par_F_E_EGrid_basic

* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Arbeitstarife für den Strom-Netzbezug an
* - type: float
* - identifier: Strom-Arbeitstarife Netzbezug
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_E_EGrid_intenergy(set_ii,set_side_fares_int,set_pss) Tarife
$LOAD par_F_E_EGrid_intenergy

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Vergütung für die Strom-Netzeinspeisung an
* - type: float
* - identifier: Strom-Vergütung Netzeinspeisung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_E_EGrid_intenergyinfeed(set_ii,set_side_fares_int,set_pss) Tarife
$LOAD par_F_E_EGrid_intenergyinfeed





