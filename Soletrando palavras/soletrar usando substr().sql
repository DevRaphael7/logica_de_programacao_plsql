set serveroutput on

DECLARE 
    palavra varchar2(20) := '&palavra';
    tamanho number;
    x number := 0;
BEGIN 
    dbms_output.new_line;
    tamanho := length(palavra);
    while x < tamanho loop
        x := x + 1;
        dbms_output.put_line(substr(palavra,x,1));
    end loop;
    
END;
/