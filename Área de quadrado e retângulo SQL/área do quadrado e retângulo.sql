declare
    base number := &base;
    quadrado number;
    altura number := &altura;
    retangulo number;
begin
    quadrado := base * base;
    retangulo := base * altura;
    
    dbms_output.put_line('�rea do quadrado: ' || quadrado);
    dbms_output.put_line('�rea do ret�ngulo: ' || retangulo);
end;
/