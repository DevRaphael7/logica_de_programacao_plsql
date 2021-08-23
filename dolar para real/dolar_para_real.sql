DECLARE
    dolar number(5,2) := &dolar;
    real_var number(5,2) := 5.60;
    ajuste number(5);
BEGIN
    ajuste := dolar * real_var;
    dbms_output.put_line(ajuste);
END;
/