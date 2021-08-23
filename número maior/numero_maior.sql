set serveroutput on

DECLARE
    numero1 number := &numero1;
    numero2 number := &numero2;
BEGIN
    
    if numero1 > numero2 then
        dbms_output.put_line('é o maior: ' || numero1);
    else
        dbms_output.put_line('é o maior: ' || numero2);
    end if;
END;
/   