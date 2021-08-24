DECLARE
    --
BEGIN
    --
    for linha1 in (SELECT * FROM USUARIO) loop
        dbms_output.put_line('Nome: ' || linha1.nome || chr(13)); 
        dbms_output.put_line('Email: ' || linha1.email || chr(13)); 
        dbms_output.put_line('---------' || chr(13));
    end loop;
    dbms_output.new_line;
    for linha1 in (SELECT * FROM teste) loop
        dbms_output.put_line('ID: ' || linha1.id_test || chr(13)); 
        dbms_output.put_line('Nome: ' || linha1.nome || chr(13)); 
        dbms_output.put_line('---------' || chr(13));
    end loop;
END;
/