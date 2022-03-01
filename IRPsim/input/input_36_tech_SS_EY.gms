* - description: Bitte geben Sie hier die maximale elektrische Leistung der Elektrolyseuranlage an.
* - type: Float
* - identifier: Maximale elektrische Leistung Elektrolyseuranlage
* - unit: [MW]
* - domain: [0,)
* - default: 0.2
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_EY_max(set_tech_SS_EY) Leistung Elektrolyseuranlage
$LOAD par_P_SS_EY_max

* - description: Bitte geben Sie hier die minimale elektrische Leistung der Elektrolyseuranlage an.
* - type: Float
* - identifier: Minimale elektrische Leistung Elektrolyseuranlage
* - unit: [MW]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_EY_min(set_tech_SS_EY) Leistung Elektrolyseuranlage
$LOAD par_P_SS_EY_min

* - description: Bitte geben Sie hier die maximale Fernwärmeauskopplung der Elektrolyseuranlage an.
* - type: Float
* - identifier: Maximale thermische Leistung Elektrolyseuranlage
* - unit: [MW]
* - domain: [0,)
* - default: 0.2
* - validation:
* - hidden:
* - processing:
PARAMETER par_Q_SS_EY_max(set_tech_SS_EY) Leistung Elektrolyseuranlage
$LOAD par_Q_SS_EY_max

* - description: Bitte geben Sie hier den Wirkungsgrad der Elektrolyseuranlage bei minimaler Leistung an.
* - type: Float
* - identifier: Wirkungsgrad Elektrolyseuranlage bei minimaler Leistung
* - unit:
* - domain: (0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_EY_min(set_tech_SS_EY) Wirkungsgrad Elektrolyseuranlage
$LOAD par_Eta_SS_EY_min

* - description: Bitte geben Sie hier den Wirkungsgrad der Elektrolyseuranlage bei maximaler Leistung an.
* - type: Float
* - identifier: Wirkungsgrad Elektrolyseuranlage bei maximaler Leistung
* - unit:
* - domain: (0,1]
* - default: 1
* - validation:
* - hidden:
* - processing:
PARAMETER par_Eta_SS_EY_max(set_tech_SS_EY) Wirkungsgrad Elektrolyseuranlage
$LOAD par_Eta_SS_EY_max

* - description: Bitte geben Sie hier die maximale Hochfahrgeschwindigkeit an.
* - type: Float
* - identifier: Maximale Hochfahrgeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_EY_ru_general(set_tech_SS_EY) Hochfahrgeschwindigkeit
$LOAD par_P_SS_EY_ru_general

* - description: Bitte geben Sie hier die maximale Anfahrgeschwindigkeit an.
* - type: Float
* - identifier: Maximale Anfahrgeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_EY_ru_start(set_tech_SS_EY) Anfahrgeschwindigkeit
$LOAD par_P_SS_EY_ru_start

* - description: Bitte geben Sie hier die maximale Herunterfahrgeschwindigkeit an.
* - type: Float
* - identifier: Minimale Herunterfahrgeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_EY_rd_general(set_tech_SS_EY) Herunterfahrgeschwindigkeit
$LOAD par_P_SS_EY_rd_general

* - description: Bitte geben Sie hier die maximale Abschaltegeschwindigkeit an.
* - type: Float
* - identifier: Minimale Abschaltegeschwindigkeit
* - unit: [MW/h]
* - domain: [0,)
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_P_SS_EY_rd_stop(set_tech_SS_EY) Abschaltegeschwindigkeit
$LOAD par_P_SS_EY_rd_stop

* - description: Bitte geben Sie hier den Hitzeverlustkoeffizient der Elektrolyseuranlage an. Der Wert kann aus Silbernagl et al., 2014 entnommen werden.
* - type: Float
* - identifier: Hitzeverlustkoeffizient Elektrolyseuranlage
* - unit: [1/h]
* - domain: [0,1]
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_Lambda_SS_EY_heatlosses(set_tech_SS_EY) Hitzeverlustkoeffizient
$LOAD par_Lambda_SS_EY_heatlosses

* - description: Bitte geben Sie hier die Mindestbetriebszeit der Elektrolyseuranlage an.
* - type: Float
* - identifier: Mindestbetriebszeit Elektrolyseuranlage
* - unit: [h]
* - domain: [0,)
* - default: 25
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_SS_EY_minon(set_tech_SS_EY) Mindestbetriebszeit
$LOAD par_H_SS_EY_minon

* - description: Bitte geben Sie hier die Mindeststillstandszeit der Elektrolyseuranlage an.
* - type: Float
* - identifier: Mindeststillstandszeit Elektrolyseuranlage
* - unit: [h]
* - domain: [0,)
* - default: 25
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_SS_EY_minoff(set_tech_SS_EY) Mindeststillstandszeit
$LOAD par_H_SS_EY_minoff

* - description: Bitte geben Sie hier die Maximalbetriebszeit der Elektrolyseuranlage an.
* - type: Float
* - identifier: Maximalbetriebszeit Elektrolyseuranlage
* - unit: [h]
* - domain: [0,)
* - default: 100
* - validation:
* - hidden:
* - processing:
PARAMETER par_H_SS_EY_maxon(set_tech_SS_EY) Maximalbetriebszeit
$LOAD par_H_SS_EY_maxon

* - description: Bitte geben Sie hier die Vorlauftemperatur der Elektrolyseuranlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Vorlauftemperatur Elektrolyseuranlage
* - unit: [°C]
* - default: 373.15
* - domain: [0,1000]
* - hidden:
* - processing:
PARAMETER par_T_SS_EY_feed(set_ii,set_tech_SS_EY) Vorlauftemperatur Elektrolyseuranlage
$LOAD par_T_SS_EY_feed

* - description: Bitte geben Sie hier die Rücklauftemperatur der Elektrolyseuranlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Rücklauftemperatur Elektrolyseuranlage
* - unit: [°C]
* - default: 333.15
* - domain: [0,1000]
* - hidden:
* - processing:
PARAMETER par_T_SS_EY_return(set_ii,set_tech_SS_EY) Rücklauftemperatur Elektrolyseuranlage;
$LOAD par_T_SS_EY_return

* - description: Bitte geben Sie hier die Kühlwassertemperatur der Elektrolyseuranlage als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Kühlwassertemperatur Elektrolyseuranlage
* - unit: [°C]
* - default: 287.15
* - domain: [0,1000]
* - hidden:
* - processing:
PARAMETER par_T_SS_EY_cooling(set_ii,set_tech_SS_EY) Kühlwassertemperatur Elektrolyseuranlage;
$LOAD par_T_SS_EY_cooling

* - description: Bitte geben Sie hier die technische Verfügbarkeit der Elektrolyseuranlage nach Berücksichtigung von Wartungen etc. als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Verfügbarkeit Elektrolyseuranlage
* - unit:
* - default: 1
* - domain: [0,1]
* - hidden:
* - processing:
PARAMETER par_X_E_SS_EY_avail(set_ii,set_tech_SS_EY) Verfügbarkeit Elektrolyseuranlage;
$LOAD par_X_E_SS_EY_avail

* - description: Bitte geben Sie hier an, ob es sich um ein Entnahme-Kondensationskraftwerk handelt.
* - type: Boolean
* - identifier: Auswahl Entnahme-Kondensationskraftwerk
* - unit:
* - domain: [0|1]
* - rule: IF (par_X_E_SS_EY_condensing == 1, par_X_E_SS_EY_pressure = 0)
* - rule: IF (par_X_E_SS_EY_condensing == 0, par_X_E_SS_EY_pressure = 1)
* - hidden:
* - processing:
PARAMETER par_X_E_SS_EY_condensing(set_tech_SS_EY) Auswahl Elektrolyseuranlage
$LOAD par_X_E_SS_EY_condensing

* - description: Bitte geben Sie hier an, ob es sich um ein Gegendruckkraftwerk handelt.
* - type: Boolean
* - identifier: Auswahl Gegendruckkraftwerk
* - unit:
* - domain: [0|1]
* - rule: IF (par_X_E_SS_EY_pressure == 1, par_X_E_SS_EY_condensing = 0)
* - rule: IF (par_X_E_SS_EY_pressure == 0, par_X_E_SS_EY_condensing = 1)
* - hidden:
* - processing:
PARAMETER par_X_E_SS_EY_pressure(set_tech_SS_EY) Auswahl Elektrolyseuranlage
$LOAD par_X_E_SS_EY_pressure

* - description: Bitte geben Sie hier an, ob es sich um ein Sonderkraftwerk (Chlor-Alkali-Elektrolye) handelt.
* - type: Boolean
* - identifier: Auswahl Sonderkraftwerk (Chlor-Alkali-Elektrolye)
* - unit:
* - domain: [0|1]
* - hidden:
* - processing:
PARAMETER par_X_E_SS_EY_LSW(set_tech_SS_EY)  Auswahl Elektrolyseuranlage
$LOAD par_X_E_SS_EY_LSW

* - description: Bitte geben Sie hier den initialen Füllstand des Chemischen Stoff zu Beginn der Optimierung an.
* - type: Float
* - identifier: Initialer Chemischer Stoff Füllstand
* - unit: [MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_SOC_SS_EY_initial(set_tech_SS_EY) Füllstand Chemischer Stoff
$LOAD par_SOC_SS_EY_initial

* - description: Bitte geben Sie hier den Zufluss an Chemischen Stoffen des Sonderkraftwerks als viertelstündliche Zeitreihe an.
* - type: Float
* - identifier: Zufluss Chemischer Stoff
* - unit: [MWh]
* - domain:
* - default: 0
* - validation:
* - hidden:
* - processing:
PARAMETER par_RF_SS_EY(set_ii,set_tech_SS_EY) Zufluss Chemischer Stoff
$LOAD par_RF_SS_EY

* - description: Bitte geben Sie hier das Verhältnis von Chemischen Stoffen zur elektrischen Energie des Sonderkraftwerks an.
* - type: Float
* - identifier: Verhältnis Chemischer Stoff vs. Elektrische Energie
* - unit:
* - domain: (0,1]
* - default: 0.99
* - validation:
* - hidden:
* - processing:
PARAMETER par_Ratio_SS_EY(set_tech_SS_EY) Verhältnis Chemischer Stoff
$LOAD par_Ratio_SS_EY




