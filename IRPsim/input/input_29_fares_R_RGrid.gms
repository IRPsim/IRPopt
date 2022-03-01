* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Vergütung für die Vorhaltung von positiver Regelleistung an
* - type: float
* - identifier: Vorhaltungsvergütung Positive Regelleistung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_R_RGrid_pos(set_ii,set_side_fares,set_pss) Tarife
$LOAD par_F_R_RGrid_pos

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Vergütung für die Vorhaltung von negativer Regelleistung an
* - type: float
* - identifier: Vorhaltungsvergütung Negative Regelleistung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_R_RGrid_neg(set_ii,set_side_fares,set_pss) Tarife
$LOAD par_F_R_RGrid_neg

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite, etc.) zu zahlende Vergütung für die Vorhaltung von negativer Regelleistung an
* - type: float
* - identifier: Vorhaltungsvergütung Negative Regelleistung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_R_RGrid_intneg(set_ii,set_side_fares_int,set_pss) Tarife
$LOAD par_F_R_RGrid_intneg

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite, etc.) zu zahlende Vergütung für die Vorhaltung von positiver Regelleistung an
* - type: float
* - identifier: Vorhaltungsvergütung Positive Regelleistung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_R_RGrid_intpos(set_ii,set_side_fares_int,set_pss) Tarife
$LOAD par_F_R_RGrid_intpos






