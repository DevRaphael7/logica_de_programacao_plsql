set serveroutput on

declare
    /* Passagens de argumentos nos parâmetros do c1 */
    cursor c1 (id_user number, name_user varchar2)
    is
    select id, nome from usuario where id = id_user or nome = name_user;
    
    r1 c1%rowtype;
begin
    open c1(1, 'Raaph');
    loop 
        fetch c1 into r1;
        exit when c1%notfound;
        dbms_output.put_line('ID: ' || r1.id || chr(13) ||
                             'Nome: ' || r1.nome);
    end loop;
    
    close c1;
end;
/