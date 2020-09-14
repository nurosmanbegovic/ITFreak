CREATE OR REPLACE TRIGGER LOG_TRIGGER
  AFTER INSERT OR UPDATE OR DELETE
  ON PROIZVODI
DECLARE
  log_akcija  varchar2(50);
BEGIN
  IF INSERTING THEN
    log_akcija := 'Insert';
  ELSIF UPDATING THEN
    log_akcija := 'Update';
  ELSIF DELETING THEN
    log_akcija := 'Delete';
  ELSE
    DBMS_OUTPUT.PUT_LINE('This code is not reachable.');
  END IF;

  insert_into_log('proizvodi', log_akcija);
   
END;
/

CREATE OR REPLACE PROCEDURE insert_into_log(tabela varchar2,akcija varchar2)
is
begin
  INSERT INTO LOG values(tabela, akcija,TO_CHAR
    (SYSDATE, 'MM-DD-YYYY HH24:MI:SS'));
end;