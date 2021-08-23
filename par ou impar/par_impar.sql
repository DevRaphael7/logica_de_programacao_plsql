set serveroutput on

DECLARE
    numero number := &numero;
BEGIN
    if mod(numero, 2) = 0 then
        dbms_output.put_line('É um número par!');
    else
        dbms_output.put_line('é um número impar!');    
    end if;
END;
/       