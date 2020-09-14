KATEGORIJA 1

1. Napisati upit koji ´ce prikazati sve ime svih pravnih lica za koje
postoji fizi?cko lice sa istom adresom.

SELECT pl.naziv, pl.adresa
FROM PRAVNA_LICA pl
WHERE pl.adresa IN (SELECT fl.adresa FROM FIZICKA_LICA fl);

//Delta electronic ima istu adresu kao i Adolf Clery

2. Napisati upit koji ´ce prikazati sve ugovore koji su zaklju?ceni poslije
najstarije izdate garancije.

SELECT id_ugovora, broj_ugovora, datum_potpisivanja
FROM UGOVORI
WHERE datum_potpisivanja>(SELECT min(datum_od) FROM GARANCIJA);

//Najstarija garancija je 20.12.2002 (to je min datum u toj tabeli), svi ugovori su zakljuceni nakon toga osim ugovora pod id-em 11 koji je potpisan 2001. godine

KATEGORIJA 2

1. Napisati upit koji ´ce prikazati nazive svih proizvoda koji su iste
kategorije kao i proizvod koji ima najve´cu ukupnu koli?cinu u svim
skladi?stima.

SELECT p.naziv
FROM PROIZVODI p
WHERE p.id_kategorije= (SELECT p.id_kategorije
                        FROM proizvodi p
                        WHERE p.id_proizvoda=(SELECT pom.nemamideja
                                              FROM (SELECT f.id nemamideja, ROWNUM
                                                    FROM(SELECT sum(k.kolicina) kol, h.id_proizvoda id
                                                         FROM PROIZVODI h, SKLADISTA s, KOLICINA_U_SKLADISTIMA k
                                                         WHERE h.id_proizvoda=k.id_proizvoda AND s.id_skladista=k.id_skladista
                                                         GROUP BY h.id_proizvoda
                                                         ORDER BY kol DESC) f
                                             WHERE ROWNUM<2) pom));
                                             
Najvise u skladistima je proizvoda s id-em 3, to je proizvod laptop y 920 17, njegova kategorija je 10 a 3 su proizvoda u toj kategoriji, taj laptop, thinkpad i MAC

3. Izlistati 10 skladi?sta koji imaju najvi?se proizvoda sa popustom na
stanju u protekla 3 mjeseca.

SELECT *
FROM (SELECT s.naziv_skladista naziv, sum(k.kolicina) ukupno
FROM SKLADISTA s, KOLICINA_U_SKLADISTIMA k, POPUST p, PROIZVODI o
WHERE s.id_skladista=k.id_skladista AND k.id_proizvoda=o.id_proizvoda AND p.id_proizvoda=o.id_proizvoda
GROUP BY s.naziv_skladista
ORDER BY ukupno DESC) f
WHERE ROWNUM <11;

Samo 5 skladista ima proizvode koji imaju popust


KATEGORIJE 3

1. Napisati upit koji ´ce prikazati sve proizvode koji pripadaju proizvoda?cu
koji ima proizvode ?cija je cijena ve´ca od prosje?cne cijene svih proizvoda.

SELECT p.naziv 
FROM PROIZVODI p
where p.id_proizvodjaca IN(
SELECT DISTINCT l.id_lica
FROM pravna_lica l, proizvodi p
WHERE id_tipa=2 AND p.id_proizvodjaca=l.ID_LICA AND p.cijena> (SELECT avg(cijena)
                                                            FROM proizvodi));
                                                            
4. Napisati upit koji ´ce vratiti kurirsku slu?zbu koja je dostavila najvi?se
proizvoda sa popustom.

SELECT naziv from (
    SELECT sum(s.kolicina) kolicina, l.naziv naziv
    FROM proizvodi p, popust po, stavka_fakture s, faktura f, pravna_lica l, isporuka i
    WHERE p.id_proizvoda=po.id_proizvoda AND s.id_proizvoda=p.id_proizvoda AND f.id_fakture=s.id_fakture AND f.datum BETWEEN po.datum_od AND  po.datum_do AND l.id_lica=i.id_pravnoglica AND i.id_isporuke=f.id_isporuke
    GROUP BY l.naziv
    ORDER BY kolicina DESC
)
where ROWNUM=1;

5. Prona´ci uposlenike koji su u TechFreak-u potro?sili vi?se novca od
prosje?cnog iznosa koji su potro?sili ostali kupci.

SELECT f.id_lica, sum(r.cijena) potroseno
FROM fizicka_lica f, uposlenici u, faktura r
where f.id_lica = u.id_lica AND f.id_lica = r.id_kupca
GROUP BY f.id_lica
HAVING sum(r.cijena) > (
                    select avg(cijena)
                    from faktura
                    where id_kupca <> f.id_lica
                    );



KATEGORIJA 4

4. Napisati upit koji ´ce prona´ci one isporuke koje uklju?cuju fakturu
kod koje barem jedna stavka fakture ima i popust i garanciju

select i.id_isporuke
from isporuka i, faktura f, stavka_fakture s, proizvodi p, popust po, garancija g
where i.id_isporuke=f.id_isporuke AND f.id_fakture=s.id_fakture AND s.id_proizvoda=p.id_proizvoda AND p.id_proizvoda=po.id_proizvoda AND g.id_stavke=s.id_stavke AND f.datum BETWEEN po.datum_od AND  po.datum_do;


3. Izlistati uposlenike koji su po?celi raditi minimalno 6 mjeseci prije
makar jednog uposlenika koji nije ?sef odjela u kojem taj uposlenik
radi.

SELECT f.ime, f.prezime, u.datum_zaposlenja, u.id_odjela
from fizicka_lica f, uposlenici u, odjel o
where f.id_lica = u.id_lica and u.id_odjela = o.id_odjela and exists (
    select id_lica
    from uposlenici
    where o.id_sefa <> id_lica and MONTHS_BETWEEN(datum_zaposlenja,u.datum_zaposlenja)>=6);


KATEGORIJA 5

2. Napisati upit koji ´ce izlistati sve proizvode ?cija je cijena ve´ca od prosje?cne cijene svih maksimalnih cijena proizvoda u odgovaraju´cim
kategorijama.

SELECT *
FROM proizvodi
WHERE cijena>( SELECT round(avg(f.maximum),2)
FROM (SELECT max(g.cijena) maximum, g.id_kategorije
FROM proizvodi g
GROUP BY g.id_kategorije
ORDER BY id_kategorije) f);

max cijene za kategorije su 45,120,500,600,60,6000,1800, njihova prosjecna cijena je 1303,57 a 4 proizvoda imaju cijenu vecu od toga
               
