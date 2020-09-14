CREATE INDEX ind_popusti
ON popust (datum_do);

CREATE INDEX ind_ugovori
ON ugovori (broj_ugovora);

CREATE INDEX ind_adresa
ON fizicka_lica (adresa);

CREATE INDEX ind_proizvod_naziv
ON proizvodi (naziv);

CREATE INDEX ind_isporuke
ON isporuka(datum_isporuke);