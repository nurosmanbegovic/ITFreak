CREATE TABLE TIPOVI_FIZICKIH_LICA(
id_tip number(10) NOT NULL PRIMARY KEY,
naziv_tipa varchar2(20) NOT NULL
);



CREATE TABLE KONTINENTI(
id_kontinenta number(10) NOT NULL,
naziv varchar2(50) NOT NULL,
CONSTRAINT kontinent_pk PRIMARY KEY (id_kontinenta)
);

CREATE TABLE DRZAVE(
id_drzave number(10) NOT NULL PRIMARY KEY,
naziv varchar2(80) NOT NULL,
id_kontinenta number(10) NOT NULL,
CONSTRAINT kontinent_fk FOREIGN KEY (id_kontinenta) REFERENCES KONTINENTI(id_kontinenta)
);


CREATE TABLE GRADOVI(
id_grada number(10) NOT NULL PRIMARY KEY,
naziv varchar2(90) NOT NULL,
id_drzave number(10) NOT NULL,
CONSTRAINT drzava_fk FOREIGN KEY (id_drzave) REFERENCES DRZAVE(id_drzave)
);


CREATE TABLE TIPOVI_PRAVNIH_LICA(
id_tipa number(10) NOT NULL PRIMARY KEY,
tip varchar2(20) NOT NULL
);


CREATE TABLE UGOVORI(
id_ugovora number(10) NOT NULL PRIMARY KEY,
broj_ugovora varchar(50) NOT NULL,
datum_potpisivanja  date NOT NULL,
datum_raskidanja date NULL
);

CREATE TABLE PRAVNA_LICA(
id_lica number(10) NOT NULL PRIMARY KEY,
id_tipa number(10) NOT NULL,
naziv varchar2(100) NOT NULL,
adresa varchar(255) NOT NULL,
id_grada number(10) NOT NULL,
CONSTRAINT tip_fk FOREIGN KEY (id_tipa) REFERENCES TIPOVI_PRAVNIH_LICA(id_tipa),
CONSTRAINT grad_fk FOREIGN KEY (id_grada) REFERENCES GRADOVI(id_grada)
);

CREATE TABLE PRAVNALICA_UGOVORI(
id_ugovora number(10) NOT NULL,
id_lica  number(10) NOT NULL,
CONSTRAINT ugovor_fk FOREIGN KEY (id_ugovora) REFERENCES UGOVORI(id_ugovora),
CONSTRAINT pravnolice_fk FOREIGN KEY (id_lica) REFERENCES PRAVNA_LICA(id_lica)
);

CREATE TABLE KATEGORIJE(
id_kategorije number(10) NOT NULL PRIMARY KEY,
naziv_kategorije varchar2(100) NOT NULL,
id_nadkategorije number(10) NULL
);

ALTER TABLE KATEGORIJE
ADD FOREIGN KEY(id_nadkategorije) REFERENCES KATEGORIJE(id_kategorije);

CREATE TABLE PROIZVODI(
id_proizvoda number(10) NOT NULL PRIMARY KEY,
naziv varchar(100) NOT NULL,
cijena float NOT NULL,
id_kategorije number(10) NOT NULL REFERENCES KATEGORIJE(id_kategorije),
id_proizvodjaca number(10) NOT NULL REFERENCES PRAVNA_LICA(id_lica),
garancija_mjeseci number(10) NULL
);

CREATE TABLE POPUST(
id_popusta number(10) NOT NULL PRIMARY KEY,
id_proizvoda number(10) NOT NULL REFERENCES PROIZVODI(id_proizvoda),
popust float NOT NULL,
datum_od date NOT NULL,
datum_do date NULL
);

CREATE TABLE FIZICKA_LICA(
id_lica number(10) NOT NULL PRIMARY KEY,
id_tip number(10) NOT NULL REFERENCES TIPOVI_FIZICKIH_LICA(id_tip),
ime varchar(150) NOT NULL,
prezime varchar(50) NOT NULL,
datum_rodjenja date NOT NULL,
adresa varchar(255) NOT NULL,
id_grada number(10) NOT NULL REFERENCES GRADOVI(id_grada)
);

CREATE TABLE UPOSLENICI(
id_lica number(10) NOT NULL PRIMARY KEY REFERENCES FIZICKA_LICA(id_lica),
id_odjela number(10) NOT NULL,
datum_zaposlenja date NOT NULL,
plata float NOT NULL,
bankovni_racun varchar(20) NOT NULL,
broj_ugovora varchar(50) NOT NULL
);

CREATE TABLE ODJEL(
id_odjela number(10) NOT NULL PRIMARY KEY,
naziv_odjela varchar(50) NOT NULL,
id_sefa number(10) NOT NULL REFERENCES UPOSLENICI(id_lica)
);

ALTER TABLE UPOSLENICI
ADD FOREIGN KEY(id_odjela) REFERENCES ODJEL(id_odjela);

CREATE TABLE ISPORUKA(
id_isporuke number(10) NOT NULL PRIMARY KEY,
id_pravnoglica number(10) NOT NULL REFERENCES PRAVNA_LICA(id_lica)
);

CREATE TABLE FAKTURA(
id_fakture number(10) NOT NULL PRIMARY KEY,
id_kupca number(10) NOT NULL REFERENCES FIZICKA_LICA(id_lica),
cijena float NOT NULL,
datum date NOT NULL,
id_isporuke number(10) NOT NULL REFERENCES ISPORUKA(id_isporuke)
);

CREATE TABLE STAVKA_FAKTURE(
id_stavke number(10) NOT NULL PRIMARY KEY,
id_fakture number(10) NOT NULL REFERENCES FAKTURA(id_fakture),
id_proizvoda number(10) NOT NULL REFERENCES PROIZVODI(id_proizvoda),
kolicina number(10) NOT NULL,
cijena float NOT NULL
);

CREATE TABLE SKLADISTA(
id_skladista number(10) NOT NULL PRIMARY KEY,
id_odgovorneosobe number(10) NOT NULL REFERENCES UPOSLENICI(id_lica),
naziv_skladista varchAr(50) NOT NULL,
adresa varchar(255) NOT NULL,
id_grada number(10) NOT NULL REFERENCES GRADOVI(id_grada)
);

CREATE TABLE KOLICINA_U_SKLADISTIMA(
id_skladista number(10) NOT NULL REFERENCES SKLADISTA(id_skladista),
id_proizvoda number(10) NOT NULL REFERENCES PROIZVODI(id_proizvoda),
kolicina number(10) NOT NULL
);

SELECT *  from all_tables where owner = 'NO17501';