*Korrektur Energielinks
*Energielinks zwischen Prosumestorer werden entfernt, wenn nicht beide Prosumestorer Optimierungshoheiten besitzen
set_energyLink(set_sector,set_fromPss,set_toPss)$( (SUM(set_side$set_pssOH(set_side,set_fromPss),1)<1 OR SUM(set_side$set_pssOH(set_side,set_toPss),1)<1) AND NOT (set_market_MS(set_fromPss) OR set_market_MS(set_toPss))  )=NO;


