set serveroutput on

DECLARE
    id_user int := 4;
    nome varchar2(50) := 'Matheus';
    cpf varchar2(11) := '52631456987';
    email varchar2(80) := 'Matheus@email.com';
BEGIN
    INSERT INTO Usuario VALUES(id_user, nome, cpf, email);
    dbms_output.new_line;
    for i in(SELECT id, nome, cpf, email FROM USUARIO) loop
        dbms_output.put_line(i.id || ' ' || i.nome || ' ' || i.cpf || ' ' || i.email);
    end loop;
END;
/