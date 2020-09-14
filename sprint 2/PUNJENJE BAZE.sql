INSERT INTO KONTINENTI(id_kontinenta, naziv) VALUES (1, 'Evropa');

INSERT INTO KONTINENTI(id_kontinenta, naziv) VALUES (2, 'Afrika');

INSERT INTO KONTINENTI(id_kontinenta, naziv) VALUES (3, 'Azija');

INSERT INTO KONTINENTI(id_kontinenta, naziv) VALUES (4, 'Australija');

INSERT INTO KONTINENTI(id_kontinenta, naziv) VALUES (5, 'Sjeverna Amerika');

INSERT INTO KONTINENTI(id_kontinenta, naziv) VALUES (6, 'Juzna Amerika');

SELECT * FROM KONTINENTI;

INSERT INTO DRZAVE(id_drzave, naziv, id_kontinenta) VALUES (1, 'Francuska', 1);

INSERT INTO DRZAVE(id_drzave, naziv, id_kontinenta) VALUES (2, 'Italija', 1);

INSERT INTO DRZAVE(id_drzave, naziv, id_kontinenta) VALUES (3, 'Tunis', 2);

INSERT INTO DRZAVE(id_drzave, naziv, id_kontinenta) VALUES (4, 'Alzir', 2);

INSERT INTO DRZAVE(id_drzave, naziv, id_kontinenta) VALUES (5, 'Kina', 3);

INSERT INTO DRZAVE(id_drzave, naziv, id_kontinenta) VALUES (6, 'Japan', 3);

INSERT INTO DRZAVE(id_drzave, naziv, id_kontinenta) VALUES (7, 'Tasmanija', 4);

INSERT INTO DRZAVE(id_drzave, naziv, id_kontinenta) VALUES (8, 'Kanada', 5);

INSERT INTO DRZAVE(id_drzave, naziv, id_kontinenta) VALUES (9, 'SAD', 5);

INSERT INTO DRZAVE(id_drzave, naziv, id_kontinenta) VALUES (10, 'Argentina', 6);

SELECT * FROM drzave;

INSERT INTO GRADOVI(id_grada, naziv, id_drzave) VALUES (1, 'Pariz', 1);

INSERT INTO GRADOVI(id_grada, naziv, id_drzave) VALUES (2, 'Lyon', 1);

INSERT INTO GRADOVI(id_grada, naziv, id_drzave) VALUES (3, 'Rim', 2);

INSERT INTO GRADOVI(id_grada, naziv, id_drzave) VALUES (4, 'Milano', 2);

INSERT INTO GRADOVI(id_grada, naziv, id_drzave) VALUES (5, 'Verona', 2);

INSERT INTO GRADOVI(id_grada, naziv, id_drzave) VALUES (6, 'Alzir',4 );

INSERT INTO GRADOVI(id_grada, naziv, id_drzave) VALUES (7, 'Konstantin', 4);

INSERT INTO GRADOVI(id_grada, naziv, id_drzave) VALUES (8, 'Montreal', 8);

INSERT INTO GRADOVI(id_grada, naziv, id_drzave) VALUES (9, 'Tokio', 6);

INSERT INTO GRADOVI(id_grada, naziv, id_drzave) VALUES (10, 'Peking', 5);

INSERT INTO GRADOVI(id_grada, naziv, id_drzave) VALUES (11, 'New York', 9);

SELECT * FROM GRADOVI;

INSERT INTO TIPOVI_FIZICKIH_LICA(id_tip, naziv_tipa) VALUES (1, 'Uposlenik');

INSERT INTO TIPOVI_FIZICKIH_LICA(id_tip, naziv_tipa) VALUES (2, 'Kupac');

SELECT * FROM TIPOVI_FIZICKIH_LICA;

INSERT INTO TIPOVI_PRAVNIH_LICA(id_tipa, tip) VALUES (1, 'Kurirska sluzba');

INSERT INTO TIPOVI_PRAVNIH_LICA(id_tipa, tip) VALUES (2, 'Proizvodjac');

SELECT * FROM TIPOVI_PRAVNIH_LICA;

INSERT INTO ODJEL (id_odjela, naziv_odjela, id_sefa) VALUES(1, 'Marketing', NULL);

INSERT INTO ODJEL (id_odjela, naziv_odjela, id_sefa) VALUES(2, 'Menadzment', NULL);

INSERT INTO ODJEL (id_odjela, naziv_odjela, id_sefa) VALUES(3, 'Kadrovska sluzba', NULL);

INSERT INTO ODJEL (id_odjela, naziv_odjela, id_sefa) VALUES(4, 'Odjel za skladista', NULL);

INSERT INTO ODJEL (id_odjela, naziv_odjela, id_sefa) VALUES(5, 'Odjel za servis proizvoda', NULL);

SELECT * FROM ODJEL;

INSERT INTO KATEGORIJE (id_kategorije, naziv_kategorije, id_nadkategorije) VALUES (1, 'Racunarska oprema', NULL);

INSERT INTO KATEGORIJE (id_kategorije, naziv_kategorije, id_nadkategorije) VALUES (2, 'Mis', 1);

INSERT INTO KATEGORIJE (id_kategorije, naziv_kategorije, id_nadkategorije) VALUES (3, 'Tastature', 1);

INSERT INTO KATEGORIJE (id_kategorije, naziv_kategorije, id_nadkategorije) VALUES (4, 'Office oprema', NULL);

INSERT INTO KATEGORIJE (id_kategorije, naziv_kategorije, id_nadkategorije) VALUES (5, 'Printeri', 4);

INSERT INTO KATEGORIJE (id_kategorije, naziv_kategorije, id_nadkategorije) VALUES (6, 'Skeneri', 4);

INSERT INTO KATEGORIJE (id_kategorije, naziv_kategorije, id_nadkategorije) VALUES (7, 'Audio uredjaji', NULL);

INSERT INTO KATEGORIJE (id_kategorije, naziv_kategorije, id_nadkategorije) VALUES (8, 'Slusalice', 7);

INSERT INTO KATEGORIJE (id_kategorije, naziv_kategorije, id_nadkategorije) VALUES (9, 'MP4', 7);

INSERT INTO KATEGORIJE (id_kategorije, naziv_kategorije, id_nadkategorije) VALUES (10, 'Laptopi', 1);

INSERT INTO KATEGORIJE (id_kategorije, naziv_kategorije, id_nadkategorije) VALUES (11, 'Mobiteli', NULL);

SELECT * FROM KATEGORIJE;

INSERT INTO PRAVNA_LICA (id_lica, id_tipa, naziv, adresa, id_grada) VALUES (1,1,'Paris Express', 'Champs Elysees 23', 1);

INSERT INTO PRAVNA_LICA (id_lica, id_tipa, naziv, adresa, id_grada) VALUES (2,1,'Milano Express', 'Via Sergente Maggiore 125', 4);

INSERT INTO PRAVNA_LICA (id_lica, id_tipa, naziv, adresa, id_grada) VALUES (3,1,'Tokyo Express', 'Risonanakameguro Bldg 74', 9);

INSERT INTO PRAVNA_LICA (id_lica, id_tipa, naziv, adresa, id_grada) VALUES (4,1,'Peking Express', 'Qianmen 30', 10);

INSERT INTO PRAVNA_LICA (id_lica, id_tipa, naziv, adresa, id_grada) VALUES (5,1,'Alger Express', '14 Avenue de Pekin', 6);

INSERT INTO PRAVNA_LICA (id_lica, id_tipa, naziv, adresa, id_grada) VALUES (6,2,'Dell', 'Champs Elysees 78', 1);

INSERT INTO PRAVNA_LICA (id_lica, id_tipa, naziv, adresa, id_grada) VALUES (7,2,'Lenovo', '45 rue shakespeare', 6);

INSERT INTO PRAVNA_LICA (id_lica, id_tipa, naziv, adresa, id_grada) VALUES (8,2,'Asus', 'Corso 281', 3);

INSERT INTO PRAVNA_LICA (id_lica, id_tipa, naziv, adresa, id_grada) VALUES (9,2,'HP', 'Saint-Christophe 45', 8);

INSERT INTO PRAVNA_LICA (id_lica, id_tipa, naziv, adresa, id_grada) VALUES (10,2,'Samsung', 'Kunegumetun 23', 9);

INSERT INTO PRAVNA_LICA (id_lica, id_tipa, naziv, adresa, id_grada) VALUES (11,2,'Apple', '228 Park Ave S', 11);

INSERT INTO PRAVNA_LICA (id_lica, id_tipa, naziv, adresa, id_grada) VALUES (12, 2, 'Delta electronic', '1 Loeprich Drive', 1);

SELECT * FROM PRAVNA_LICA;

INSERT INTO PROIZVODI (id_proizvoda, naziv, cijena, id_kategorije, id_proizvodjaca, garancija_mjeseci) VALUES(1, 'led tastatura', 120, 3 ,6, null);

INSERT INTO PROIZVODI (id_proizvoda, naziv, cijena, id_kategorije, id_proizvodjaca, garancija_mjeseci) VALUES(2, 'wireless mis', 45, 2 ,8, 6);

UPDATE proizvodi set GARANCIJA_MJESECI=6 where ID_PROIZVODA=2;

INSERT INTO PROIZVODI (id_proizvoda, naziv, cijena, id_kategorije, id_proizvodjaca, garancija_mjeseci) VALUES(3, 'laptop y 920 17" ', 6000, 10 ,7, 24);

INSERT INTO PROIZVODI (id_proizvoda, naziv, cijena, id_kategorije, id_proizvodjaca, garancija_mjeseci) VALUES(4, 'HP jetPro', 500, 5 ,9, 10);

INSERT INTO PROIZVODI (id_proizvoda, naziv, cijena, id_kategorije, id_proizvodjaca, garancija_mjeseci) VALUES(5, 'slusalice bluetooth', 60, 8 ,10, null);

INSERT INTO PROIZVODI (id_proizvoda, naziv, cijena, id_kategorije, id_proizvodjaca, garancija_mjeseci) VALUES(6, 'NOTE 8 ', 1200, 11 ,10, 12);

INSERT INTO PROIZVODI (id_proizvoda, naziv, cijena, id_kategorije, id_proizvodjaca, garancija_mjeseci) VALUES(7, 'MAC 15" ', 3500, 10 ,11, 30);

INSERT INTO PROIZVODI (id_proizvoda, naziv, cijena, id_kategorije, id_proizvodjaca, garancija_mjeseci) VALUES(8, 'Iphone 6S+', 1800, 11 ,11, 24);

INSERT INTO PROIZVODI (id_proizvoda, naziv, cijena, id_kategorije, id_proizvodjaca, garancija_mjeseci) VALUES(9, 'Thinkpad T', 2000, 10 ,7, 20);

INSERT INTO PROIZVODI (id_proizvoda, naziv, cijena, id_kategorije, id_proizvodjaca, garancija_mjeseci) VALUES(10, 'Ipod mini', 600, 7 ,11, 12);

SELECT * FROM PROIZVODI;

insert into FIZICKA_LICA (id_lica, id_tip, ime, prezime, datum_rodjenja, adresa, id_grada) values (1, 1, 'Adolf', 'Clery', to_date('08.09.1964','DD.MM.YYYY'), '1 Loeprich Drive', 1);
insert into FIZICKA_LICA (id_lica, id_tip, ime, prezime, datum_rodjenja, adresa, id_grada) values (2, 1, 'Wilhelm', 'McEntee', to_date('31.03.1993','DD.MM.YYYY'), '6 Main Parkway', 2);
insert into FIZICKA_LICA (id_lica, id_tip, ime, prezime, datum_rodjenja, adresa, id_grada) values (3, 1, 'Marguerite', 'Noice', to_date('03.03.1958','DD.MM.YYYY'), '4 Kim Park', 3);
insert into FIZICKA_LICA (id_lica, id_tip, ime, prezime, datum_rodjenja, adresa, id_grada) values (4, 1, 'Van', 'Clawley', to_date('14.12.1964','DD.MM.YYYY'), '01250 Kensington Point', 4);
insert into FIZICKA_LICA (id_lica, id_tip, ime, prezime, datum_rodjenja, adresa, id_grada) values (5, 1, 'Eward', 'Ossulton', to_date('06.03.1953','DD.MM.YYYY'), '94387 Drewry Plaza', 5);
insert into FIZICKA_LICA (id_lica, id_tip, ime, prezime, datum_rodjenja, adresa, id_grada) values (6, 2, 'Fae', 'Calderwood', to_date('14.01.1963','DD.MM.YYYY'), '803 Porter Lane', 6);
insert into FIZICKA_LICA (id_lica, id_tip, ime, prezime, datum_rodjenja, adresa, id_grada) values (7, 2, 'Wright', 'Riccio', to_date('30.04.2000','DD.MM.YYYY'), '46 Hazelcrest Circle', 7);
insert into FIZICKA_LICA (id_lica, id_tip, ime, prezime, datum_rodjenja, adresa, id_grada) values (8, 2, 'Waverly', 'McCandie', to_date('08.07.1984','DD.MM.YYYY'), '1725 Sugar Pass', 8);
insert into FIZICKA_LICA (id_lica, id_tip, ime, prezime, datum_rodjenja, adresa, id_grada) values (9, 2, 'Mufinella', 'Kleinber', to_date('15.08.1979','DD.MM.YYYY'), '9263 Saint Paul Park', 9);
insert into FIZICKA_LICA (id_lica, id_tip, ime, prezime, datum_rodjenja, adresa, id_grada) values (10, 2, 'Katey', 'Vanetti', to_date('14.01.1961','DD.MM.YYYY'), '854 Blackbird Crossing', 10);

SELECT * FROM FIZICKA_LICA;

insert into UPOSLENICI (id_lica, id_odjela, datum_zaposlenja, plata, bankovni_racun, broj_ugovora) values (1, 1,to_date( '18.02.2006','DD.MM.YYYY'), 880, '12247059', 'U222-79:498');
insert into UPOSLENICI (id_lica, id_odjela, datum_zaposlenja, plata, bankovni_racun, broj_ugovora) values (2, 2, to_date('07.04.2018','DD.MM.YYYY'), 851, '11158087', 'A222-80:106');
insert into UPOSLENICI (id_lica, id_odjela, datum_zaposlenja, plata, bankovni_racun, broj_ugovora) values (3, 3, to_date('29.03.1996','DD.MM.YYYY'), 4174, '12184191', 'D222-80:641');
insert into UPOSLENICI (id_lica, id_odjela, datum_zaposlenja, plata, bankovni_racun, broj_ugovora) values (4, 4, to_date('02.09.1999','DD.MM.YYYY'), 3922, '12818074', 'U222-84:217');
insert into UPOSLENICI (id_lica, id_odjela, datum_zaposlenja, plata, bankovni_racun, broj_ugovora) values (5, 5, to_date('08.01.2007','DD.MM.YYYY'), 1390, '11783099', 'M222-91:073');

SELECT * FROM UPOSLENICI;

insert into SKLADISTA (id_skladista, id_odgovorneosobe, naziv_skladista, adresa, id_grada) values (1, 3, 'Entergy Louisiana, Inc.', '5 Novick Parkway', 5);
insert into SKLADISTA (id_skladista, id_odgovorneosobe, naziv_skladista, adresa, id_grada) values (2, 5, 'Methode Electronics, Inc.', '91198 2nd Road', 4);
insert into SKLADISTA (id_skladista, id_odgovorneosobe, naziv_skladista, adresa, id_grada) values (3, 3, 'Cullen/Frost Bankers, Inc.', '51116 Clyde Gallagher Center', 2);
insert into SKLADISTA (id_skladista, id_odgovorneosobe, naziv_skladista, adresa, id_grada) values (4, 2, 'Westport Fuel Systems Inc', '4449 Anthes Avenue', 2);
insert into SKLADISTA (id_skladista, id_odgovorneosobe, naziv_skladista, adresa, id_grada) values (5, 5, 'Endocyte, Inc.', '3 Gina Street', 4);
insert into SKLADISTA (id_skladista, id_odgovorneosobe, naziv_skladista, adresa, id_grada) values (6, 5, 'Albany Molecular Research, Inc.', '629 Sheridan Drive', 4);
insert into SKLADISTA (id_skladista, id_odgovorneosobe, naziv_skladista, adresa, id_grada) values (7, 4, 'Titan Pharmaceuticals, Inc.', '67 Johnson Lane', 8);
insert into SKLADISTA (id_skladista, id_odgovorneosobe, naziv_skladista, adresa, id_grada) values (8, 5, 'Tecogen Inc.', '26857 Mayer Trail', 10);
insert into SKLADISTA (id_skladista, id_odgovorneosobe, naziv_skladista, adresa, id_grada) values (9, 1, 'Nuveen Senior Income Fund', '8 Pine View Center', 4);
insert into SKLADISTA (id_skladista, id_odgovorneosobe, naziv_skladista, adresa, id_grada) values (10, 3, 'Scholastic Corporation', '31 Pine View Street', 5);

SELECT * FROM SKLADISTA;

insert into POPUST (id_popusta, id_proizvoda, popust, datum_od, datum_do) values (1, 3, 36,to_date('19.09.2012','DD.MM.YYYY'),to_date('19.10.2012','DD.MM.YYYY'));
insert into POPUST (id_popusta, id_proizvoda, popust, datum_od, datum_do) values (2, 9, 96, to_date('07.04.2010','DD.MM.YYYY'),to_date('07.05.2010','DD.MM.YYYY'));
insert into POPUST (id_popusta, id_proizvoda, popust, datum_od, datum_do) values (3, 2, 89,to_date('10.03.2015','DD.MM.YYYY'),to_date('20.03.2015','DD.MM.YYYY'));
insert into POPUST (id_popusta, id_proizvoda, popust, datum_od, datum_do) values (4, 5, 73, to_date('10.03.2014','DD.MM.YYYY'),to_date('10.04.2014','DD.MM.YYYY'));
insert into POPUST (id_popusta, id_proizvoda, popust, datum_od, datum_do) values (5, 8, 43,to_date('02.08.2010','DD.MM.YYYY'),to_date('17.08.2010','DD.MM.YYYY'));
insert into POPUST (id_popusta, id_proizvoda, popust, datum_od, datum_do) values (6, 10, 9,to_date('14.04.2015','DD.MM.YYYY'),to_date('24.04.2015','DD.MM.YYYY'));
insert into POPUST (id_popusta, id_proizvoda, popust, datum_od, datum_do) values (7, 7,  67, to_date('26.12.2013','DD.MM.YYYY'),to_date('15.01.2014','DD.MM.YYYY'));
insert into POPUST (id_popusta, id_proizvoda, popust, datum_od, datum_do) values (8, 2, 8, to_date('01.08.2014','DD.MM.YYYY'),to_date('02.08.2014','DD.MM.YYYY'));
insert into POPUST (id_popusta, id_proizvoda, popust, datum_od, datum_do) values (9, 2, 11, to_date('24.01.2016','DD.MM.YYYY'),to_date('24.03.2016','DD.MM.YYYY'));
insert into POPUST (id_popusta, id_proizvoda, popust, datum_od, datum_do) values (10, 2, 67, to_date('21.01.2007','DD.MM.YYYY'),to_date('21.02.2007','DD.MM.YYYY'));

SELECT * FROM POPUST;

UPDATE ODJEL SET id_sefa=1 WHERE id_odjela = 1;
UPDATE ODJEL SET id_sefa=2 WHERE id_odjela = 2;
UPDATE ODJEL SET id_sefa=3 WHERE id_odjela = 3;
UPDATE ODJEL SET id_sefa=4 WHERE id_odjela = 4;
UPDATE ODJEL SET id_sefa=5 WHERE id_odjela = 5;

SELECT * FROM ODJEL;

insert into UGOVORI (id_ugovora, broj_ugovora, datum_potpisivanja, datum_raskidanja, id_lica) values (1, '368052491-9', TO_DATE('12.01.2015','DD.MM.YYYY'), null, 5);
insert into UGOVORI (id_ugovora, broj_ugovora, datum_potpisivanja, datum_raskidanja, id_lica) values (2, '471347824-5', TO_DATE('05.02.2016','DD.MM.YYYY'), null, 10);
insert into UGOVORI (id_ugovora, broj_ugovora, datum_potpisivanja, datum_raskidanja, id_lica) values (3, '073456956-4', TO_DATE('25.04.2007','DD.MM.YYYY'), null, 5);
insert into UGOVORI (id_ugovora, broj_ugovora, datum_potpisivanja, datum_raskidanja, id_lica) values (4, '633415323-4', TO_DATE('18.01.2010','DD.MM.YYYY'), null, 6);
insert into UGOVORI (id_ugovora, broj_ugovora, datum_potpisivanja, datum_raskidanja, id_lica) values (5, '050886925-0', TO_DATE('07.05.2011','DD.MM.YYYY'), null, 10);
insert into UGOVORI (id_ugovora, broj_ugovora, datum_potpisivanja, datum_raskidanja, id_lica) values (6, '008951143-3', TO_DATE('15.01.2005','DD.MM.YYYY'), null, 7);
insert into UGOVORI (id_ugovora, broj_ugovora, datum_potpisivanja, datum_raskidanja, id_lica) values (7, '511319111-6', TO_DATE('02.08.2011','DD.MM.YYYY'), null, 5);
insert into UGOVORI (id_ugovora, broj_ugovora, datum_potpisivanja, datum_raskidanja, id_lica) values (8, '351357398-7', TO_DATE('06.10.2012','DD.MM.YYYY'), null, 2);
insert into UGOVORI (id_ugovora, broj_ugovora, datum_potpisivanja, datum_raskidanja, id_lica) values (9, '616230142-7', TO_DATE('24.01.2016','DD.MM.YYYY'), null, 5);
insert into UGOVORI (id_ugovora, broj_ugovora, datum_potpisivanja, datum_raskidanja, id_lica) values (10, '437783702-8', TO_DATE('11.02.2009','DD.MM.YYYY'), null, 4);
insert into UGOVORI (id_ugovora, broj_ugovora, datum_potpisivanja, datum_raskidanja, id_lica) values (11, '437783502-8', TO_DATE('11.02.2001','DD.MM.YYYY'), TO_DATE('11.02.2002','DD.MM.YYYY'), 4);

SELECT * FROM UGOVORI;

insert into KOLICINA_U_SKLADISTIMA (id, id_skladista, id_proizvoda, kolicina) values (1, 6, 5, 274);
insert into KOLICINA_U_SKLADISTIMA (id, id_skladista, id_proizvoda, kolicina) values (2, 3, 1, 718);
insert into KOLICINA_U_SKLADISTIMA (id, id_skladista, id_proizvoda, kolicina) values (3, 3, 3, 689);
insert into KOLICINA_U_SKLADISTIMA (id, id_skladista, id_proizvoda, kolicina) values (4, 9, 5, 913);
insert into KOLICINA_U_SKLADISTIMA (id, id_skladista, id_proizvoda, kolicina) values (5, 7, 3, 656);
insert into KOLICINA_U_SKLADISTIMA (id, id_skladista, id_proizvoda, kolicina) values (6, 7, 9, 475);
insert into KOLICINA_U_SKLADISTIMA (id, id_skladista, id_proizvoda, kolicina) values (7, 8, 1, 472);
insert into KOLICINA_U_SKLADISTIMA (id, id_skladista, id_proizvoda, kolicina) values (8, 7, 3, 653);
insert into KOLICINA_U_SKLADISTIMA (id, id_skladista, id_proizvoda, kolicina) values (9, 2, 2, 39);
insert into KOLICINA_U_SKLADISTIMA (id, id_skladista, id_proizvoda, kolicina) values (10, 6, 6, 903);

SELECT * FROM KOLICINA_U_SKLADISTIMA;

insert into ISPORUKA (id_isporuke, id_pravnoglica, datum_isporuke) values (1, 1, TO_DATE('06.09.2002','DD.MM.YYYY'));
insert into ISPORUKA (id_isporuke, id_pravnoglica, datum_isporuke) values (2, 4, TO_DATE('09.12.2010','DD.MM.YYYY'));
insert into ISPORUKA (id_isporuke, id_pravnoglica, datum_isporuke) values (3, 3, TO_DATE('22.08.2003','DD.MM.YYYY'));
insert into ISPORUKA (id_isporuke, id_pravnoglica, datum_isporuke) values (4, 5, TO_DATE('01.10.2007','DD.MM.YYYY'));
insert into ISPORUKA (id_isporuke, id_pravnoglica, datum_isporuke) values (5, 5, TO_DATE('20.05.2008','DD.MM.YYYY'));
insert into ISPORUKA (id_isporuke, id_pravnoglica, datum_isporuke) values (6, 3, TO_DATE('30.03.2004','DD.MM.YYYY'));
insert into ISPORUKA (id_isporuke, id_pravnoglica, datum_isporuke) values (7, 5,TO_DATE( '18.10.2011','DD.MM.YYYY'));
insert into ISPORUKA (id_isporuke, id_pravnoglica, datum_isporuke) values (8, 1, TO_DATE('05.05.2008','DD.MM.YYYY'));
insert into ISPORUKA (id_isporuke, id_pravnoglica, datum_isporuke) values (9, 2, TO_DATE('25.05.2011','DD.MM.YYYY'));
insert into ISPORUKA (id_isporuke, id_pravnoglica, datum_isporuke) values (10, 4, TO_DATE('22.06.2005','DD.MM.YYYY'));

SELECT * FROM ISPORUKA;

insert into FAKTURA (id_fakture, id_kupca, cijena, datum, id_isporuke) values (1, 10, 180, TO_DATE('10.04.2008','DD.MM.YYYY'), 7);
insert into FAKTURA (id_fakture, id_kupca, cijena, datum, id_isporuke) values (2, 8, 3600, TO_DATE('16.04.2003','DD.MM.YYYY'), 3);
insert into FAKTURA (id_fakture, id_kupca, cijena, datum, id_isporuke) values (3, 4, 6000, TO_DATE('18.01.2009','DD.MM.YYYY'), 1);
insert into FAKTURA (id_fakture, id_kupca, cijena, datum, id_isporuke) values (4, 8, 2000, TO_DATE('27.07.2010','DD.MM.YYYY'), 1);
insert into FAKTURA (id_fakture, id_kupca, cijena, datum, id_isporuke) values (5, 8, 500, TO_DATE('20.12.2002','DD.MM.YYYY'), 3);
insert into FAKTURA (id_fakture, id_kupca, cijena, datum, id_isporuke) values (6, 5, 3500, TO_DATE('18.09.2018','DD.MM.YYYY'), 4);
insert into FAKTURA (id_fakture, id_kupca, cijena, datum, id_isporuke) values (7, 6, 1200, TO_DATE('07.01.2010','DD.MM.YYYY'), 8);
insert into FAKTURA (id_fakture, id_kupca, cijena, datum, id_isporuke) values (8, 7, 1800, TO_DATE('19.03.2004','DD.MM.YYYY'), 7);
insert into FAKTURA (id_fakture, id_kupca, cijena, datum, id_isporuke) values (9, 4, 4500, TO_DATE('24.09.2009','DD.MM.YYYY'), 5);
insert into FAKTURA (id_fakture, id_kupca, cijena, datum, id_isporuke) values (10, 8, 1800, TO_DATE('20.05.2015','DD.MM.YYYY'), 10);
insert into FAKTURA (id_fakture, id_kupca, cijena, datum, id_isporuke) values (11, 2, 14.85 , TO_DATE('25.01.2007','DD.MM.YYYY'), 10);

SELECT * FROM FAKTURA;

insert into STAVKA_FAKTURE (id_stavke, id_fakture, id_proizvoda, kolicina, cijena) values (1, 1, 2, 4, 180);
insert into STAVKA_FAKTURE (id_stavke, id_fakture, id_proizvoda, kolicina, cijena) values (2, 2, 8, 2, 3600);
insert into STAVKA_FAKTURE (id_stavke, id_fakture, id_proizvoda, kolicina, cijena) values (3, 3, 3, 1, 6000);
insert into STAVKA_FAKTURE (id_stavke, id_fakture, id_proizvoda, kolicina, cijena) values (4, 4, 9, 1, 2000);
insert into STAVKA_FAKTURE (id_stavke, id_fakture, id_proizvoda, kolicina, cijena) values (5, 5, 4, 1, 500);
insert into STAVKA_FAKTURE (id_stavke, id_fakture, id_proizvoda, kolicina, cijena) values (6, 6, 7, 1, 3500);
insert into STAVKA_FAKTURE (id_stavke, id_fakture, id_proizvoda, kolicina, cijena) values (7, 7, 6, 1, 1200);
insert into STAVKA_FAKTURE (id_stavke, id_fakture, id_proizvoda, kolicina, cijena) values (8, 8, 8, 1, 1800);
insert into STAVKA_FAKTURE (id_stavke, id_fakture, id_proizvoda, kolicina, cijena) values (9, 9, 1, 10, 4500);
insert into STAVKA_FAKTURE (id_stavke, id_fakture, id_proizvoda, kolicina, cijena) values (10, 10, 8,1, 1800);
insert into STAVKA_FAKTURE (id_stavke, id_fakture, id_proizvoda, kolicina, cijena) values (11, 11, 2,1, 45);

SELECT * FROM STAVKA_FAKTURE;


INSERT INTO GARANCIJA (id, id_stavke, datum_od, datum_do) VALUES(1, 2, TO_DATE('16.04.2003','DD.MM.YYYY'), TO_DATE('16.04.2005','DD.MM.YYYY'));
INSERT INTO GARANCIJA (id, id_stavke, datum_od, datum_do) VALUES(2, 3, TO_DATE('18.01.2009','DD.MM.YYYY'), TO_DATE('18.01.2010','DD.MM.YYYY'));
INSERT INTO GARANCIJA (id, id_stavke, datum_od, datum_do) VALUES(3, 4, TO_DATE('27.07.2010','DD.MM.YYYY'), TO_DATE('27.03.2011','DD.MM.YYYY'));
INSERT INTO GARANCIJA (id, id_stavke, datum_od, datum_do) VALUES(4, 5, TO_DATE('20.12.2002','DD.MM.YYYY'), TO_DATE('20.10.2003','DD.MM.YYYY'));
INSERT INTO GARANCIJA (id, id_stavke, datum_od, datum_do) VALUES(5, 6, TO_DATE('18.09.2018','DD.MM.YYYY'), TO_DATE('18.03.2019','DD.MM.YYYY'));
INSERT INTO GARANCIJA (id, id_stavke, datum_od, datum_do) VALUES(6, 7, TO_DATE('07.01.2010','DD.MM.YYYY'), TO_DATE('07.01.2011','DD.MM.YYYY'));
INSERT INTO GARANCIJA (id, id_stavke, datum_od, datum_do) VALUES(7, 8, TO_DATE('19.03.2004','DD.MM.YYYY'), TO_DATE('19.03.2006','DD.MM.YYYY'));
INSERT INTO GARANCIJA (id, id_stavke, datum_od, datum_do) VALUES(8, 10, TO_DATE('20.05.2015','DD.MM.YYYY'), TO_DATE('20.05.2017','DD.MM.YYYY'));
INSERT INTO GARANCIJA (id, id_stavke, datum_od, datum_do) VALUES(9, 11, TO_DATE('25.01.2007','DD.MM.YYYY'), TO_DATE('25.07.2007','DD.MM.YYYY'));

SELECT * FROM GARANCIJA;