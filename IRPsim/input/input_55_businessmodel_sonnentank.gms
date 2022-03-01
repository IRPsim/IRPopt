* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Arbeitstarife für den Strombezug im Geschäftsmodell Sonnentank an
* - type: float
* - identifier: Strom-Arbeitstarife Sonnentankbezug
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_E_BM_Sonnentank_energy(set_ii,set_side_fares,set_pss) Tarife
$LOAD par_F_E_BM_Sonnentank_energy

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Vergütung für die Stromeinspeisung im Geschäftsmodell Sonnentank an
* - type: float
* - identifier: Strom-Arbeitstarife Sonnentankeinspeisung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_E_BM_Sonnentank_energyinfeed(set_ii,set_side_fares,set_pss) Tarife
$LOAD par_F_E_BM_Sonnentank_energyinfeed

* - description: Bitte geben Sie hier die monatliche Teilnahmegebühr am Geschäftsmodell Sonnentank an
* - type: float
* - identifier: Teilnahmegebühr Sonnentank pro Monat
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_E_BM_Sonnentank_fee(set_side_fares)
$LOAD par_F_E_BM_Sonnentank_fee

* - description: Bitte geben Sie an, ob genannte Stromspeicher am Geschäftsmodell Sonnentank teilnehmen soll
* - type: Boolean
* - identifier: Teilnahme Strombezug Sonnentank
* - unit:
* - domain: [0|1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_BM_Sonnentank_DES_ES(set_tech_DES_ES)
$LOAD par_X_BM_Sonnentank_DES_ES

* - description: Bitte geben Sie an, ob genannte PV-Anlage am Geschäftsmodell Sonnentank teilnehmen soll
* - type: Boolean
* - identifier: Teilnahme PV-Anlagen an Sonnentank
* - unit:
* - domain: [0|1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_BM_Sonnentank_DES_PV(set_tech_DES_PV)
$LOAD par_X_BM_Sonnentank_DES_PV

* - description: Bitte geben Sie an, ob genannte Last am Geschäftsmodell Sonnentank teilnehmen soll
* - type: Boolean
* - identifier: Teilnahme Elektrische Last an Sonnentank
* - unit:
* - domain: [0|1]
* - default: 0
* - validation:
* - hidden:
* - processing:
Parameter par_X_BM_Sonnentank_DS_E(set_load_DS_E)
$LOAD par_X_BM_Sonnentank_DS_E

* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Arbeitstarife für den Strombezug im Geschäftsmodell Sonnentank an
* - type: float
* - identifier: Arbeitstarif Strombezug Sonnentank
* - unit:
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_SMS_E_contract_Sonnentank_discharge(set_ii)
$LOAD par_F_SMS_E_contract_Sonnentank_discharge

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Vergütung für die Stromeinspeisung im Geschäftsmodell Sonnentank an
* - type: float
* - identifier: Arbeitstarif Stromeinspeisung Sonnentank
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_SMS_E_contract_Sonnentank_charge(set_ii)
$LOAD par_F_SMS_E_contract_Sonnentank_charge

* - description: Bitte geben Sie hier die zu zahlenden Netzentgelte für den Strombezug im Geschäftsmodell Sonnentank an
* - type: float
* - identifier: Netzentgelte Strombezug Sonnentank
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_NS_E_grid_Sonnentank_discharge(set_ii)
$LOAD par_F_NS_E_grid_Sonnentank_discharge

* - description: Bitte geben Sie hier die zu zahlenden Netzentgelte für Stromeinspeisung im Geschäftsmodell Sonnentank an
* - type: float
* - identifier: Netzentgelte Stromeinspeisung Sonnentank
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_NS_E_grid_Sonnentank_charge(set_ii)
$LOAD par_F_NS_E_grid_Sonnentank_charge

* - description: Einlesen Vertrieb-Teilnahmegebühr Sonnentank pro Monat
* - type: float
* - identifier: Vertrieb-Teilnahmegebühr Sonnentank pro Monat
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
SCALAR sca_F_SMS_E_fee_Sonnentank
$LOAD sca_F_SMS_E_fee_Sonnentank

* - description: Einlesen Netz-Teilnahmegebühr Sonnentank pro Monat
* - type: float
* - identifier: Netz-Teilnahmegebühr Sonnentank pro Monat
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
SCALAR sca_F_NS_E_fee_Sonnentank
$LOAD sca_F_NS_E_fee_Sonnentank

* - description: Bitte geben Sie an, ob der an die Netzseite zu zahlende Tarif, weitergegeben werden soll
* - type: Boolean
* - identifier: Weitergabe der NS-Tarife
* - unit:
* - domain: [0|1]
* - default: 1
* - validation:
* - hidden:
* - processing:
SCALAR sca_X_BM_Sonnentank_NS_disclosure
$LOAD sca_X_BM_Sonnentank_NS_disclosure

* - description: Bitte geben Sie an, ob der an die Politikseite zu zahlende Tarif, weitergegeben werden soll
* - type: Boolean
* - identifier: Weitergabe der PS-Tarife
* - unit:
* - domain: [0|1]
* - default: 1
* - validation:
* - hidden:
* - processing:
SCALAR sca_X_BM_Sonnentank_PS_disclosure
$LOAD sca_X_BM_Sonnentank_PS_disclosure
