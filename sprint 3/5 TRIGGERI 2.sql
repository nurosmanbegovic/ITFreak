CREATE OR REPLACE TRIGGER GarancijaDo
AFTER INSERT ON GARANCIJA
for each row
DECLARE
    garancijamjeseci INTEGER(10);
BEGIN
    select garancija_mjeseci into garancijamjeseci from stavka_fakture sf, proizvodi p where :new.id_stavke = sf.id_stavke and sf.id_proizvoda = p.id_proizvoda;
    update garancija set datum_do = add_months(sysdate,garancijamjeseci) where id = :new.id;
END;
/

CREATE OR REPLACE TRIGGER UpdateCijenaFakture
    AFTER UPDATE of cijena ON STAVKA_FAKTURE
    for each row

BEGIN 

    update Faktura set CIJENA = CIJENA + :new.cijena-:old.cijena where ID_FAKTURE = :old.ID_FAKTURE;

END;
/


CREATE OR REPLACE TRIGGER UpdateCijenaStavke
    BEFORE UPDATE of kolicina ON STAVKA_FAKTURE
    for each row
DECLARE 
     cproi REAL(10);
     razlika_cijene REAL(10);
BEGIN 
    loglog('updatecijenastavke');
    SELECT cijena into cproi FROM PROIZVODI WHERE id_proizvoda = :old.id_proizvoda;
    razlika_cijene := cproi * (:new.kolicina - :old.kolicina);
    :new.CIJENA := cproi * :new.kolicina;
END;
/