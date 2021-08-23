SET SERVEROUTPUT ON;

/* CREATE TABLE Empregado(
    n_identificador int,
    salario number(7, 2),
    nome VARCHAR2(255),
    PRIMARY KEY(n_identificador)
); */

SELECT * FROM Empregado;

DECLARE
    id_user number := &numero;
    salario number(7,2) := &salario;
    nome varchar2(100) := '&nome';
BEGIN
    if(salario < 500)then
        salario := salario;
    elsif salario >= 500 and salario < 1000 then
        salario := salario - (salario * 0.05);
    elsif salario >= 1000 and salario <= 1400 then
        salario := salario - (salario * 0.12);
    elsif salario > 1400 and salario < 1800 then
        salario := salario - (salario * 0.20);
    elsif salario >= 1800 then
        salario := salario - (salario * 0.30);
    end if;
    
    if(nome = '' or salario = 0 or id_user = null or id_user = 0) then
        dbms_output.put_line('Os campos não podem ser vazios!');
    else
        INSERT INTO Empregado VALUES(id_user, salario, nome);
    end if;
    
    EXCEPTION
        WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Ocorreu um erro!');
END;
/