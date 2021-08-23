DECLARE
    numero number := &numero;
    inc number := numero;
BEGIN
    for numero in inc..10 loop
    dbms_output.put_line('Tabuada de: ' || numero || chr(13));
        for j in 0..10 loop
            dbms_output.put_line(numero || ' * ' || j || ' === ' || (numero * j));
        end loop;
        dbms_output.new_line;
    end loop;
END;
/