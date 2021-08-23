set serveroutput on

DECLARE
    numero number := &numero;
    inc number := numero;
    endLooping number := numero * 4;
BEGIN
    for numero in inc..endLooping loop
        if mod(numero, 2) = 0 then
            dbms_output.put_line('Divisível por 2: ' || numero);
        end if;
    end loop;
END;
/