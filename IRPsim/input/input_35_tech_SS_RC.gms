* - description: Bitte geben Sie hier die maximale elektrische Leistung der Müllverwertungsanlage an.
* - type: Float
* - identifier: Maximale elektrische Leistung Müllverwertungsanlage
* - unit: [MW]
* - domain: [0,)
* - default: 0.2
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_RC_max(set_tech_SS_RC) Leistung Müllverwertungsanlage
$LOAD par_P_SS_RC_max

* - description: Bitte geben Sie hier die minimale elektrische Leistung der Kehrrichtverwertungsanlage an.
* - type: Float
* - identifier: Minimale elektrische Leistung Müllverwertungsanlage
* - unit: [MW]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_RC_min(set_tech_SS_RC) Leistung Müllverwertungsanlage
$LOAD par_P_SS_RC_min

* - description: Bitte geben Sie hier die maximale Fernwärmeauskopplung der Kehrrichtverwertungsanlage an.
* - type: Float
* - identifier: Maximale thermische Leistung Müllverwertungsanlage
* - unit: [MW]
* - domain: [0,)
* - default: 0.2
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_SS_RC_max(set_tech_SS_RC) Leistung Müllverwertungsanlage
$LOAD par_Q_SS_RC_max

* - description: Bitte geben Sie hier den Wirkungsgrad der Kehrrichtverwertungsanlage bei minimaler Leistung an.
* - type: Float
* - identifier: Wirkungsgrad Müllverwertungsanlage bei minimaler Leistung
* - unit:
* - domain: (0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_RC_min(set_tech_SS_RC) Wirkungsgrad Müllverwertungsanlage
$LOAD par_Eta_SS_RC_min

* - description: Bitte geben Sie hier den Wirkungsgrad der Kehrrichtverwertungsanlage bei maximaler Leistung an.
* - type: Float
* - identifier: Wirkungsgrad Müllverwertungsanlage bei maximaler Leistung
* - unit:
* - domain: (0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_RC_max(set_tech_SS_RC) Wirkungsgrad Müllverwertungsanlage
$LOAD par_Eta_SS_RC_max

* - description: Bitte geben Sie hier die maximale Hochfahrgeschwindigkeit an.
* - type: Float
* - identifier: Maximale Hochfahrgeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_RC_ru_general(set_tech_SS_RC) Hochfahrgeschwindigkeit
$LOAD par_P_SS_RC_ru_general

* - description: Bitte geben Sie hier die maximale Anfahrgeschwindigkeit an.
* - type: Float
* - identifier: Maximale Anfahrgeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_RC_ru_start(set_tech_SS_RC) Anfahrgeschwindigkeit
$LOAD par_P_SS_RC_ru_start

* - description: Bitte geben Sie hier die maximale Herunterfahrgeschwindigkeit an.
* - type: Float
* - identifier: Minimale Herunterfahrgeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_RC_rd_general(set_tech_SS_RC) Herunterfahrgeschwindigkeit
$LOAD par_P_SS_RC_rd_general

* - description: Bitte geben Sie hier die maximale Abschaltegeschwindigkeit an.
* - type: Float
* - identifier: Minimale Abschaltegeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_RC_rd_stop(set_tech_SS_RC) Abschaltegeschwindigkeit
$LOAD par_P_SS_RC_rd_stop

* - description: Bitte geben Sie hier den Hitzeverlustkoeffizient der Kehrrichtverwertungsanlage an. Der Wert kann aus Silbernagl et al., 2014 entnommen werden.
* - type: Float
* - identifier: Hitzeverlustkoeffizient Müllverwertungsanlage
* - unit: [1/h]
* - domain: [0,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Lambda_SS_RC_heatlosses(set_tech_SS_RC) Hitzeverlustkoeffizient
$LOAD par_Lambda_SS_RC_heatlosses

* - description: Bitte geben Sie hier die Mindestbetriebszeit der Kehrrichtverwertungsanlage an.
* - type: Float
* - identifier: Mindestbetriebszeit Müllverwertungsanlage
* - unit: [h]
* - domain: [0,)
* - default: 25
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_SS_RC_minon(set_tech_SS_RC) Mindestbetriebszeit
$LOAD par_H_SS_RC_minon

* - description: Bitte geben Sie hier die Mindeststillstandszeit der Kehrrichtverwertungsanlage an.
* - type: Float
* - identifier: Mindeststillstandszeit Müllverwertungsanlage
* - unit: [h]
* - domain: [0,)
* - default: 25
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_SS_RC_minoff(set_tech_SS_RC) Mindeststillstandszeit
$LOAD par_H_SS_RC_minoff

* - description: Bitte geben Sie hier die Maximalbetriebszeit der Kehrrichtverwertungsanlage an.
* - type: Float
* - identifier: Maximalbetriebszeit Müllverwertungsanlage
* - unit: [h]
* - domain: [0,)
* - default: 100
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_SS_RC_maxon(set_tech_SS_RC) Maximalbetriebszeit
$LOAD par_H_SS_RC_maxon

* - description: Bitte geben Sie hier die Vorlauftemperatur der Kehrrichtverwertungsanlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Vorlauftemperatur Müllverwertungsanlage
* - unit: [°C]
* - default: 373.15
* - domain: [0,1000]
* - hidden:
* - processing:
PARAMETER par_T_SS_RC_feed(set_ii,set_tech_SS_RC) Vorlauftemperatur Müllverwertungsanlage
$LOAD par_T_SS_RC_feed

* - description: Bitte geben Sie hier die Rücklauftemperatur der Kehrrichtverwertungsanlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Rücklauftemperatur Müllverwertungsanlage
* - unit: [°C]
* - default: 333.15
* - domain: [0,1000]
* - hidden:
* - processing:
PARAMETER par_T_SS_RC_return(set_ii,set_tech_SS_RC) Rücklauftemperatur Müllverwertungsanlage;
$LOAD par_T_SS_RC_return

* - description: Bitte geben Sie hier die Kühlwassertemperatur der Kehrrichtverwertungsanlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Kühlwassertemperatur Müllverwertungsanlage
* - unit: [°C]
* - default: 287.15
* - domain: [0,1000]
* - hidden:
* - processing:
PARAMETER par_T_SS_RC_cooling(set_ii,set_tech_SS_RC) Kühlwassertemperatur Müllverwertungsanlage;
$LOAD par_T_SS_RC_cooling

* - description: Bitte geben Sie hier die technische Verfügbarkeit der Kehrrichtverwertungsanlage nach Berücksichtigung von Wartungen etc. als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Verfügbarkeit Müllverwertungsanlage
* - unit:
* - default: 1
* - domain: [0,1]
* - hidden:
* - processing:
PARAMETER par_X_W_SS_RC_avail(set_ii,set_tech_SS_RC) Verfügbarkeit Müllverwertungsanlage;
$LOAD par_X_W_SS_RC_avail

* - description: Bitte geben Sie hier an, ob es sich um ein Entnahme-Kondensationskraftwerk handelt.
* - type: Boolean
* - identifier: Auswahl Entnahme-Kondensationskraftwerk
* - unit:
* - domain: [0|1]
* - rule: IF (par_X_W_SS_RC_condensing == 1, par_X_W_SS_RC_pressure = 0)
* - rule: IF (par_X_W_SS_RC_condensing == 0, par_X_W_SS_RC_pressure = 1)
* - hidden:
* - processing:
PARAMETER par_X_W_SS_RC_condensing(set_tech_SS_RC) Auswahl Müllverwertungsanlage
$LOAD par_X_W_SS_RC_condensing

* - description: Bitte geben Sie hier an, ob es sich um ein Gegendruckkraftwerk handelt.
* - type: Boolean
* - identifier: Auswahl Gegendruckkraftwerk
* - unit:
* - domain: [0|1]
* - rule: IF (par_X_W_SS_RC_pressure == 1, par_X_W_SS_RC_condensing = 0)
* - rule: IF (par_X_W_SS_RC_pressure == 0, par_X_W_SS_RC_condensing = 1)
* - hidden:
* - processing:
PARAMETER par_X_W_SS_RC_pressure(set_tech_SS_RC) Auswahl Müllverwertungsanlage
$LOAD par_X_W_SS_RC_pressure


* - description: Bitte geben Sie hier den initialen Füllstand des Kehrrichtbunkers zu Beginn der Optimierung an.
* - type: Float
* - identifier: Initialer Kehrrichtfüllstand
* - unit: [MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOC_SS_RC_initial(set_tech_SS_RC) Füllstand Kehrricht
$LOAD par_SOC_SS_RC_initial

* - description: Bitte geben Sie hier den Zufluss an Kehrricht der Müllverwertungsanlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Zufluss Kehrricht
* - unit: [MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_RF_SS_RC(set_ii,set_tech_SS_RC) Zufluss Kehrricht
$LOAD par_RF_SS_RC

* - description: Bitte geben Sie hier das Verhältnis von Kehrricht zu fossilen Brennstoffen der Müllverwertungsanlage an.
* - type: Float
* - identifier: Verhältnis Kehrricht vs. Fossil
* - unit:
* - domain: (0,1]
* - default: 0.99
* - validation:
* - hidden:
* - processing:
PARAMETER par_Ratio_SS_RC(set_tech_SS_RC) Verhältnis Kehrricht
$LOAD par_Ratio_SS_RC



