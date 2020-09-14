CREATE OR REPLACE TRIGGER CheckCijena
    BEFORE INSERT OR UPDATE OF cijena ON PROIZVODI
    FOR EACH ROW
BEGIN 
    IF(:new.cijena<0 OR :new.cijena=0)
    THEN raise_application_error(-20000, 'Cijena mora biti pozitivna');
    END IF;
END;

