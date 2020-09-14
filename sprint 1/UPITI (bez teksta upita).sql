
SELECT d.naziv drzava, p.naziv proizvod, sum(k.kolicina) kolicina
FROM proizvodi p, skladista s, kolicina_u_skladistima k, gradovi g, drzave d
WHERE p.id_proizvoda=k.id_proizvoda AND k.id_skladista=s.id_skladista AND s.id_grada=g.id_grada AND g.id_drzave=d.id_drzave
GROUP BY d.naziv, p.naziv;


SELECT p.naziv
FROM pravna_lica p, ugovori u
WHERE p.id_lica=u.id_lica AND u.datum_potpisivanja>=TO_DATE('01.01.2016','DD.MM.YYYY');


SELECT k.ime || ' ' || k.prezime naziv, f.cijena
FROM fizicka_lica k, faktura f, uposlenici u
WHERE k.id_lica=u.id_lica AND f.id_kupca=k.id_lica AND f.cijena=(SELECT max(cijena) FROM fizicka_lica k1, faktura f1, uposlenici u1 WHERE k1.id_lica=u1.id_lica AND f1.id_kupca=k1.id_lica);


SELECT p.id_proizvoda id, p.naziv proizvod, p.cijena cijena, p.cijena-o.popust*p.cijena*0.01 "Cijena sa popustom"
FROM proizvodi p, popust o
WHERE p.id_proizvoda=o.id_proizvoda AND p.garancija_mjeseci>=24;


SELECT f.ime ||' '|| f.prezime naziv, f.adresa adresa, g.naziv grad
FROM fizicka_lica f, gradovi g
WHERE f.id_grada=g.id_grada
UNION ALL
SELECT p.naziv, p.adresa, o.naziv
FROM pravna_lica p, gradovi o
WHERE p.id_grada=o.id_grada;


SELECT p.naziv "Naziv proizvoda", p.cijena Cijena, o.popust||'%' "Popust na proizvod"
FROM proizvodi p, popust o
WHERE p.id_proizvoda=o.id_proizvoda(+);


SELECT t1.kategorija NazivKategorije, t1.proizvod "proizvod sa max cijenom", t1.maxcijena "cijena max", t2.proi "proizvod sa min cijenom", t2.mincijena "cijena min", t1.maxcijena+t2.mincijena Zbir
FROM 
    (SELECT k.naziv_kategorije kategorija, p.naziv proizvod, p.cijena maxcijena
    FROM proizvodi p, kategorije k
    WHERE p.id_kategorije=k.id_kategorije AND p.cijena=(SELECT max(cijena) FROM kategorije k1, proizvodi p1 WHERE p1.id_kategorije=k1.id_kategorije AND k.id_kategorije=k1.id_kategorije)) t1,
    
    (SELECT k2.naziv_kategorije kate, p.naziv proi, p.cijena mincijena
    FROM proizvodi p, kategorije k2
    WHERE p.id_kategorije=k2.id_kategorije AND p.cijena=(SELECT min(cijena) FROM kategorije k1, proizvodi p1 WHERE p1.id_kategorije=k1.id_kategorije AND k2.id_kategorije=k1.id_kategorije)) t2
    WHERE t1.kategorija=t2.kate
ORDER BY NazivKategorije, Zbir DESC;


SELECT f.id_lica, f.ime || ' ' || f.prezime Naziv, DECODE(o.naziv_odjela, 'Menadzment', 'Menadzer', 'Odjel za skladista', 'Skladistar', 'Odjel za servis proizvoda', 'Serviser', 'Uposlenik') "Titula"
FROM fizicka_lica f, uposlenici u, odjel o
WHERE f.id_lica=u.id_lica AND u.id_odjela=o.id_odjela;


SELECT k.naziv_kategorije, NVL(n.naziv_kategorije, 'Nema nadkategoriju')
FROM kategorije k, kategorije n
WHERE k.id_nadkategorije=n.id_kategorije(+);



SELECT * 
FROM ( SELECT p.naziv Proizvod, p.cijena Cijena, p.cijena*o.popust*0.01 "Cijena sa popustom", s.naziv_skladista Naziv
        FROM proizvodi p, popust o, skladista s, kolicina_u_skladistima k
        WHERE p.id_proizvoda=k.id_proizvoda AND k.id_skladista=s.id_skladista AND p.id_proizvoda=p.id_proizvoda
        ORDER BY o.popust DESC) t
WHERE rownum<11;
