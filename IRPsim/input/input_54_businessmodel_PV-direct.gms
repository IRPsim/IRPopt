* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Arbeitstarife f�r den Strom-Direktvermarktungsbezug an
* - type: float
* - identifier: Strom-Arbeitstarife Direktvermarktungsbezug
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_E_BM_PVdirect_energy(set_ii,set_side_fares,set_pss) Tarife
$LOAD par_F_E_BM_PVdirect_energy

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Verg�tung f�r die Strom-Direktvermarktungseinspeisung an
* - type: float
* - identifier: Strom-Verg�tung Direktvermarktungseinspeisung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_E_BM_PVdirect_energyinfeed(set_ii,set_side_fares,set_pss) Tarife
$LOAD par_F_E_BM_PVdirect_energyinfeed

* - description: Bitte geben Sie an, ob genannte Last Strom im Rahmen der PV-Direktvermarkung beziehen k�nnen soll
* - type: Boolean
* - identifier: Teilnahme Strombezug PV-Direktvermarktung
* - unit:
* - domain: [0|1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_BM_PVdirect_DS_E(set_load_DS_E)
$LOAD par_X_BM_PVdirect_DS_E

* - description: Bitte geben Sie an, ob genannte Anlage Strom im Rahmen der PV-Direktvermarkung beziehen k�nnen soll
* - type: Boolean
* - identifier: Teilnahme W�rmepumpembezug PV-Direktvermarktung
* - unit:
* - domain: [0|1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_BM_PVdirect_DES_HP(set_tech_DES_HP)
$LOAD par_X_BM_PVdirect_DES_HP

* - description: Bitte geben Sie an, ob genannte Anlage Stromeinspeisung im Rahmen der PV-Direktvermarktung leisten k�nnen soll
* - type: Boolean
* - identifier: Teilnahme Stromeinspeisung PV-Direktvermarktung
* - unit:
* - domain: [0|1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_BM_PVdirect_DES_PV(set_tech_DES_PV)
$LOAD par_X_BM_PVdirect_DES_PV

* - description: Bitte geben Sie an, ob genannte Anlage Stromeinspeisung im Rahmen der KWK-Direktvermarktung leisten k�nnen soll
* - type: Boolean
* - identifier: Teilnahme Stromeinspeisung PV-Direktvermarktung
* - unit:
* - domain: [0|1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_X_BM_PVdirect_DES_CHP(set_tech_DES_CHP)
$LOAD par_X_BM_PVdirect_DES_CHP

* - description: Bitte geben Sie hier die von den verschiedenen Akteuren (Netz-, Politik- und Vertriebsseite) zu zahlende Verg�tung f�r die Stormeinspeisung aus der PV-Direktvermarktung an
* - type: float
* - identifier: Einspeiseverg�tung Stromeinspeisung PV-Direktvermarktung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_SMS_E_contract_feedin_PVdirect(set_ii)
$LOAD par_F_SMS_E_contract_feedin_PVdirect

* - description: Bitte geben Sie hier die an die verschiedenen Akteure (Netz-, Politik- und Vertriebsseite) zu zahlenden Arbeitstarife f�r den Strombezug aus PV-Direktvermarktung an
* - type: float
* - identifier: Arbeitstarif Strombezug PV-Direktvermarktung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_SMS_E_contract_PVdirect(set_ii)
$LOAD par_F_SMS_E_contract_PVdirect

* - description: Einlesen Netzentgelte Strombezug PV-Direktvermarktung
* - type: float
* - identifier: Netzentgelte Strombezug PV-Direktvermarktung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_NS_E_grid_PVdirect(set_ii)
$LOAD par_F_NS_E_grid_PVdirect

* - description: Einlesen F�rderabgaben Strombezug PV-Direktvermarktung
* - type: float
* - identifier: Netzentgelte F�rderabgaben Strombezug PV-Direktvermarktung
* - unit: [EUR / MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_F_PS_E_levy_PVdirect(set_ii)
$LOAD par_F_PS_E_levy_PVdirect

* - description: Bitte geben Sie an, ob Sie das Modell Mieterstrom als Direktvermarktungsgesch�ftsmodell ausw�hlen m�chten
* - type: Boolean
* - identifier: Modell Mieterstrom
* - unit:
* - domain: [0|1]
* - default: 0
* - validation:
* - hidden:
* - processing:
SCALAR sca_X_MietDirekt
$LOAD sca_X_MietDirekt

* - description:  Bitte geben Sie an, ob Sie das Modell Regionale Driektvermarktung als Direktvermarktungsgesch�ftsmodell ausw�hlen m�chten
* - type: Boolean
* - identifier: Modell Regionale Direktvermarktung
* - unit:
* - domain: [0|1]
* - default: 0
* - validation:
* - hidden:
* - processing:
SCALAR sca_X_RegDirekt
$LOAD sca_X_RegDirekt

* - description:  Bitte geben Sie an, ob Sie das Modell Nationale Direktvermartkung als Direktvermarktungsgesch�ftsmodell ausw�hlen m�chten
* - type: Boolean
* - identifier: Modell Nationale Direktvermarktung
* - unit:
* - domain: [0|1]
* - default: 0
* - validation:
* - hidden:
* - processing:
SCALAR sca_X_NatDirekt
$LOAD sca_X_NatDirekt

