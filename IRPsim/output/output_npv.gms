* - description: Gibt den Gewinn und Verlust der Stromsparte je Kundengruppe an.
* - type: Float
* - identifier: Gewinn und Verlust Stromsparte je Kundengruppe
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_ESector_CustSide(set_ii,set_side);

* - description: Gibt den Gewinn und Verlust der Stromsparte je Einzelkunde an.
* - type: Float
* - identifier: Gewinn und Verlust Stromsparte je Einzelkunde
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_ESector_CustSide_ind(set_ii,set_side);

* - description: Gibt den Gewinn und Verlust der Gassparte je Kundengruppe an.
* - type: Float
* - identifier: Gewinn und Verlust Gassparte je Kundengruppe
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_GSector_CustSide(set_ii,set_side);

* - description: Gibt den Gewinn und Verlust der Gassparte je Einzelkunde an.
* - type: Float
* - identifier: Gewinn und Verlust Gassparte je Einzelkunde
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_GSector_CustSide_ind(set_ii,set_side);

* - description: Gibt den Gewinn und Verlust der Fernwärmesparte je Kundengruppe an.
* - type: Float
* - identifier: Gewinn und Verlust Fernwärmesparte je Kundengruppe
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_WSector_CustSide(set_ii,set_side);

* - description: Gibt den Gewinn und Verlust der Fernwärmesparte je Einzelkunde an.
* - type: Float
* - identifier: Gewinn und Verlust Fernwärmesparte je Einzelkunde
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_WSector_CustSide_ind(set_ii,set_side);

* - description: Gibt den Gewinn und Verlust der Reservesparte je Kundengruppe an.
* - type: Float
* - identifier: Gewinn und Verlust Reservesparte je Kundengruppe
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_RSector_CustSide(set_ii,set_side);

* - description: Gibt den Gewinn und Verlust der Reservesparte je Einzelkunde an.
* - type: Float
* - identifier: Gewinn und Verlust Reservesparte je Einzelkunde
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_RSector_CustSide_ind(set_ii,set_side);

* - description: Gibt den Gewinn und Verlust über alle Sparten je Kundengruppen an.
* - type: Float
* - identifier: Gewinn und Verlust aller Sparten je Kundengruppe
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_Sector_CustSide(set_ii,set_side);


* - description: Gibt den Gewinn und Verlust über alle Sparten je Einzelkunde an.
* - type: Float
* - identifier: Gewinn und Verlust aller Sparten je Einzelkunde
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_Sector_CustSide_ind(set_ii,set_side);

* - description: Gibt den Gewinn und Verlust über alle Sparten je Gesamtkunden an.
* - type: Float
* - identifier: Gewinn und Verlust aller Sparten und Kunden
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_Sector_Cust(set_ii);


* - description: Gibt den Gewinn und Verlust der Stromsparte auf Unternehmensseite an.
* - type: Float
* - identifier: Gewinn und Verlust Stromsparte Unternehmen
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_ESector_OrgaSide(set_ii,set_side);

* - description: Gibt den Gewinn und Verlust der Gassparte auf Unternehmensseite an.
* - type: Float
* - identifier: Gewinn und Verlust Gassparte Unternehmen
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_GSector_OrgaSide(set_ii,set_side);

* - description: Gibt den Gewinn und Verlust der Fernwärmesparte auf Unternehmensseite an.
* - type: Float
* - identifier: Gewinn und Verlust Fernwärmesparte Unternehmen
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_WSector_OrgaSide(set_ii,set_side);

* - description: Gibt den Gewinn und Verlust der Reservesparte auf Unternehmensseite an.
* - type: Float
* - identifier: Gewinn und Verlust Reservesparte Unternehmen
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_RSector_OrgaSide(set_ii,set_side);


* - description: Gibt den Gewinn und Verlust der Stromsparte des Gesamtunternehmens an.
* - type: Float
* - identifier: Gewinn und Verlust Stromsparte Gesamtunternehmen
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_ESector_Orga(set_ii);

* - description: Gibt den Gewinn und Verlust der Gassparte des Gesamtunternehmens an.
* - type: Float
* - identifier: Gewinn und Verlust Gassparte Gesamtunternehmen
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_GSector_Orga(set_ii);

* - description: Gibt den Gewinn und Verlust der Fernwärmesparte des Gesamtunternehmen an.
* - type: Float
* - identifier: Gewinn und Verlust Fernwärmesparte Gesamtunternehmen
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_WSector_Orga(set_ii);

* - description: Gibt den Gewinn und Verlust der Reservesparte des Gesamtunternehmen an.
* - type: Float
* - identifier: Gewinn und Verlust Reservesparte Gesamtunternehmen
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_RSector_Orga(set_ii);

* - description: Gibt den Gewinn und Verlust über alle Sparten des Gesamtunternehmens an.
* - type: Float
* - identifier: Gewinn und Verlust Gesamtsparte Gesamtunternehmen
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_Sector_Orga(set_ii);

* - description: Ausgabeparameter Gewinn und Verlust Kältesparte Kundengruppe
* - type: Float
* - identifier: Gewinn und Verlust Kältesparte Kundengruppe
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_CSector_CustSide(set_ii,set_side);

* - description: Ausgabeparameter Gewinn und Verlust Kältesparte Einzelkunde
* - type: Float
* - identifier: Gewinn und Verlust Kältesparte Einzelkunde
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_CSector_CustSide_ind(set_ii,set_side);

* - description: Ausgabeparameter Gewinn und Verlust Kältesparte auf Unternehmensseite
* - type: Float
* - identifier: Gewinn und Verlust Kältesparte Unternehmen
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_CSector_OrgaSide(set_ii,set_side);
