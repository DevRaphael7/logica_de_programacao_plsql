SET SERVEROUTPUT ON

DECLARE
    verParImpar number := &Numero;
    verificar number;
BEGIN
    verificar := mod(verParImpar, 2);
    if(verificar = 0)then
        dbms_output.put_line('N�mero par');
    else
        dbms_output.put_line('N�mero impar');
    end if;
END;
/