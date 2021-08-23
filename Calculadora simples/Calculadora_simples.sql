set serveroutput on

DECLARE
    escolha varchar2(25) := &escolha;
    numero1 number := &numero1;
    numero2 number := &numero2;
    resultado number;
BEGIN
    dbms_output.put_line('----------------');
    dbms_output.put_line('1) soma');
    dbms_output.new_line;
    dbms_output.put_line('2) subtração');
    dbms_output.new_line;
    dbms_output.put_line('3) multiplicação');
    dbms_output.new_line;
    dbms_output.put_line('4) divisão');
    dbms_output.put_line('----------------');
    
    if(escolha = 1)then
        resultado := numero1 + numero2;
        dbms_output.put_line('Resultado: ' || resultado);
    ELSIF (escolha = 2) then
        resultado := numero1 - numero2;
        dbms_output.put_line('Resultado: ' || resultado);
    ELSIF (escolha = 3) then
        resultado := numero1 * numero2;
        dbms_output.put_line('Resultado: ' || resultado);
    ELSIF (escolha = 4) then
        resultado := numero1 / numero2;
        dbms_output.put_line('Resultado: ' || resultado);
    end if;
    
    EXCEPTION
        WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Ocorreu um erro!');
END;
/