set serveroutput on

DECLARE
    numero number := &numero;
BEGIN
    if mod(numero, 2) = 0 then
        dbms_output.put_line('� um n�mero par!');
    else
        dbms_output.put_line('� um n�mero impar!');    
    end if;
END;
/       