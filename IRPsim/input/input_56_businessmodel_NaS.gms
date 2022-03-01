* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Arbeitstarife für den Strombezug im Geschäftsmodell Netzspeicher an
* - type: float
* - identifier: Strom-Arbeitstarife Netzspeicherbezug
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_E_BM_NaS_energy(set_ii,set_side_fares,set_pss) Tarife
$LOAD par_F_E_BM_NaS_energy

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Vergütung für die Stromeinspeisung im Geschäftsmodell Netzspeicher an
* - type: float
* - identifier: Strom-Arbeitstarife Netzspeichereinspeisung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_E_BM_NaS_energyinfeed(set_ii,set_side_fares,set_pss) Tarife
$LOAD par_F_E_BM_NaS_energyinfeed

* - description:  Bitte legen Sie fest, ob der genannte Stromspeicher am Geschäftsmodell Netzspeicher teilnehmen soll
* - type: Boolean
* - identifier: Teilnahme Strombezug Netzspeicher
* - unit:
* - domain: [0|1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_BM_NaS_DES_ES(set_tech_DES_ES)
$LOAD par_X_BM_NaS_DES_ES

* - description: Bitte legen Sie fest, ob die genannte Anlage am Geschäftsmodell Netzspeicher teilnehmen soll
* - type: Boolean
* - identifier: Teilnahme PV-Anlage an Netzspeicher
* - unit:
* - domain: [0|1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_BM_NaS_DES_PV(set_tech_DES_PV)
$LOAD par_X_BM_NaS_DES_PV

* - description:  Bitte legen Sie fest, ob die genannte Last am Geschäftsmodell Netzspeicher teilnehmen soll
* - type: Boolean
* - identifier: Teilnahme Elektrische Last an Netzspeicher
* - unit:
* - domain: [0|1]
* - default: 0
* - validation:
* - hidden:
* - processing:
Parameter par_X_BM_NaS_DS_E(set_load_DS_E)
$LOAD par_X_BM_NaS_DS_E

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Vergütung für die Stromeinspeisung im Geschäftsmodell Netzspeicher an
* - type: float
* - identifier: Arbeitstarif Stromeinspeisung Netzspeicher
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_SMS_E_contract_NaS_charge(set_ii)
$LOAD par_F_SMS_E_contract_NaS_charge

* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Arbeitstarife für den Strombezug im Geschäftsmodell Netzspeicher an
* - type: float
* - identifier: Arbeitstarif Strombezug Netzspeicher
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_SMS_E_contract_NaS_discharge(set_ii)
$LOAD par_F_SMS_E_contract_NaS_discharge

* - description: Einlesen Netzentgelte Stromeinspeisung Netzspeicher
* - type: float
* - identifier: Netzentgelte Stromeinspeisung Netzspeicher
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_NS_E_grid_NaS_charge(set_ii)
$LOAD par_F_NS_E_grid_NaS_charge

* - description: Einlesen Netzentgelte Strombezug Netzspeicher
* - type: float
* - identifier: Netzentgelte Strombezug Netzspeicher
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_NS_E_grid_NaS_discharge(set_ii)
$LOAD par_F_NS_E_grid_NaS_discharge
