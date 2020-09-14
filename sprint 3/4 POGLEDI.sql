CREATE VIEW p_isporuke ("Isporuke - garancija i popust") AS 
select i.id_isporuke
from isporuka i, faktura f, stavka_fakture s, proizvodi p, popust po, garancija g
where i.id_isporuke=f.id_isporuke AND f.id_fakture=s.id_fakture AND s.id_proizvoda=p.id_proizvoda AND p.id_proizvoda=po.id_proizvoda AND g.id_stavke=s.id_stavke AND f.datum BETWEEN po.datum_od AND  po.datum_do;

SELECT * FROM p_isporuke;


CREATE VIEW p_uposlenici_kupci ("Uposlenici-nadprosjecni kupci", "Ukupna potrosnja") AS
SELECT f.id_lica, sum(r.cijena) potroseno
FROM fizicka_lica f, uposlenici u, faktura r
where f.id_lica = u.id_lica AND f.id_lica = r.id_kupca
GROUP BY f.id_lica
HAVING sum(r.cijena) > (
                    select avg(cijena)
                    from faktura
                    where id_kupca <> f.id_lica
                    );
                    
SELECT * FROM p_uposlenici_kupci;

CREATE VIEW p_skladista ("Najpristupacnija skladista", "Ukupno snizenih proizvoda") AS
SELECT *
FROM (SELECT s.naziv_skladista naziv, sum(k.kolicina) ukupno
FROM SKLADISTA s, KOLICINA_U_SKLADISTIMA k, POPUST p, PROIZVODI o
WHERE s.id_skladista=k.id_skladista AND k.id_proizvoda=o.id_proizvoda AND p.id_proizvoda=o.id_proizvoda
GROUP BY s.naziv_skladista
ORDER BY ukupno DESC) f
WHERE ROWNUM <11;

SELECT * FROM p_skladista;

commit;
