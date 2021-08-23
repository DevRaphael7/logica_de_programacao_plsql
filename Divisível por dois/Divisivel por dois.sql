set serveroutput on

DECLARE
    numero number := &numero;
    inc number := numero;
    endLooping number := numero * 4;
BEGIN
    /* MOD retorna o resto de divis�o dos n�meros informados nos par�metros */
    for numero in inc..endLooping loop
        if mod(numero, 2) = 0 then
            dbms_output.put_line('Divis�vel por 2: ' || numero);
        end if;
    end loop;
END;
/