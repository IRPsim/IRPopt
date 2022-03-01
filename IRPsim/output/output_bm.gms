* - description: Gibt die Einsparungen bzw. Verluste des Geschäftsmodells "Sonnentank" ggü. einer reinen Netzversorgung an.
* - type: Float
* - identifier: Vergleich Sonnentank vs. Netzversorgung (o. Leistungsverg.)
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_Sonnentank_Netzversorgung(set_ii,set_side);

* - description: Gibt die Einsparungen bzw. Verluste des Geschäftsmodells "Direktvermarktung" ggü. einer reinen Netzversorgung an.
* - type: Float
* - identifier: Vergleich  Direktvermarktung vs. Netzversorgung (o. Leistungsverg)
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_Direktvermarktung_Netzversorgung(set_ii,set_side);

* - description: Gibt die  Einsparungen bzw. Verluste des Geschäftsmodells "Netz als Speicher" ggü. einer reinen Netzversorgung an.
* - type: Float
* - identifier: Vergleich  Netzspeicher vs. Netzversorgung (o. Leistungsverg)
* - unit: [EUR]
* - domain:
* - validation:
* - overview: 1
* - hidden:
* - processing: sum, max, min, avg
PARAMETER par_out_IuO_Netzspeicher_Netzversorgung(set_ii,set_side);
