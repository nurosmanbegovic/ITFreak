CREATE OR REPLACE FUNCTION nova_cijena (kategorija_id integer, promjena_procenat number)
RETURN NUMBER
IS 
    total integer:=0;
BEGIN 

    UPDATE proizvodi
        SET cijena=cijena+cijena*(promjena_procenat/100)
        WHERE id_kategorije=kategorija_id;
    SELECT count(*) INTO total 
    FROM proizvodi
    WHERE id_kategorije=kategorija_id;
    
    RETURN total;
END;