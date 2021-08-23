set serveroutput on

DECLARE
    numero number := &numero;
    inc number := 1;
BEGIN
    for inc in 1..10 loop
        dbms_output.put_line(numero || ' * ' || inc || ' === ' || (numero * inc));
    end loop;
END;
/