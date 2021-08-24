set serveroutput on

DECLARE
    cursor c1(
        id_u number,
        nome_u varchar,
        cpf_u varchar) is 
        SELECT * 
        FROM emp_protect 
        WHERE id = id_u or nome = nome_u or cpf = cpf_u;
        
    r1 c1%rowtype;
    
    id_input number := &numero_identificacao;
    nome_input varchar2(30) := '&nome_usuario';
    cpf_input VARCHAR2(11) := '&cpf_usuario';
    
BEGIN
    
    open c1(id_input, nome_input, cpf_input);
    
    loop
        
        fetch c1 into r1;
        exit when c1%notfound;
        
        dbms_output.put_line('Nome: ' || r1.nome || chr(13)
                            || 'CPF: ' || r1.cpf || chr(13)
                            || 'Turno: ' || r1.turno);
    end loop;
    
    close c1;
    
    dbms_output.new_line;
    
    for i in (SELECT * FROM emp_protect ) loop
    dbms_output.put_line('------------- ' || i.nome || ' -------------');
        dbms_output.put_line('ID: ' || i.id);
        dbms_output.put_line('cpf: ' || i.cpf);
        dbms_output.put_line('Turno: ' || i.turno);
    end loop;
    
END;
/