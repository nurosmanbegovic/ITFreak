CREATE OR REPLACE PROCEDURE brisi (da date)
IS 
cursor fakt is select id_fakture from faktura where da>datum for update;
red fakt%rowtype;
BEGIN 
open fakt;
    
    loop
    fetch fakt into red;
        exit when fakt%notfound;
    
        for stavka in (select id_stavke from stavka_fakture where id_fakture=red.id_fakture)
        loop
        
            delete from garancija where id_stavke=stavka.id_stavke;
        
        end loop;
        
        delete from stavka_fakture where id_fakture=red.id_fakture;
        
        delete from faktura where current of fakt;
        
    end loop;
    
END;
/


CREATE OR REPLACE PROCEDURE ispisi (kup number)
IS 
BEGIN 
for fakt  in (select * FROM faktura where id_kupca=kup) 
    loop
    dbms_output.put_line('id fakture: '||fakt.id_fakture || ' '|| 'id kupca: ' || fakt.id_kupca || ' ' || 'cijena fakture: ' || fakt.cijena || ' '|| 'datum: '|| to_char(fakt.datum, 'dd.mm.yyyy'));
        for stav in (select * from stavka_fakture where id_fakture=fakt.id_fakture)
        loop
         
            dbms_output.put_line('id fakture: '||stav.id_fakture || ' '|| 'id stavke: ' || stav.id_stavke || ' ' || 'id proizvoda: ' || stav.id_proizvoda|| ' ' || 'kolicina: ' || stav.kolicina|| ' ' || 'cijena: ' || stav.cijena);
        end loop;
    end loop;
    
END;