declare
    salario number(7, 2) := &salario;
    ajuste number(7, 2);
begin
    
    if salario < 800 then
        ajuste := salario;
    elsif salario >= 800 and salario < 1100 then
        ajuste := salario - (salario * 0.05);
    elsif salario >= 1100 and salario < 1800 then
        ajuste := salario - (salario * 0.10);
    elsif salario >= 1800 then
        ajuste := salario - (salario * 0.15);
    end if;
    
    dbms_output.put_line('Salario antes do ajuste: ' || salario || chr(13) || 'Salário ajustado: ' || ajuste);
end;
/