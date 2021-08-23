SET SERVEROUTPUT ON

DECLARE
    verParImpar number := &Numero;
    verificar number;
BEGIN
    verificar := mod(verParImpar, 2);
    if(verificar = 0)then
        dbms_output.put_line('Número par');
    else
        dbms_output.put_line('Número impar');
    end if;
END;
/