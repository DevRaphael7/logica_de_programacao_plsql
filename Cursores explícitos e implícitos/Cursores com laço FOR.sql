set serveroutput on

DECLARE
    cursor c1 (
        nome_regis varchar2
    ) is Select * FROM Usuario
        Where nome = nome_regis;
    
    nome_r varchar2(255) := 'Rapha';
BEGIN
    
    for linha_um in c1(nome_r) loop
        dbms_output.put_line('Nome: ' || linha_um.nome || chr(13) ||
                             'Email: ' || linha_um.email);
        exit when linha_um.nome = 'Matheus';
    end loop;
    
END;
/

/* SELECT * FROM USUARIO; */