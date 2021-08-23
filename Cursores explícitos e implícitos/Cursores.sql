DECLARE
    /* Os cursores são declarados dento do bloco declare */
    cursor c1 is
        select nome, email
        from usuario
        where id = 1;
    row1 c1%rowtype; 
BEGIN
    open c1;
    loop
        fetch c1 into row1;
        exit when c1%notfound;
        
        dbms_output.put_line('Nome: ' || row1.nome || chr(13) || 'Email: ' || row1.email);
    end loop;
    
    close c1;
END;
/

select * from usuario;