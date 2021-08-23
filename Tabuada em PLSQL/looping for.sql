set serveroutput on

DECLARE
    inc number := 0;
BEGIN
    for inc in 0..10 loop
        dbms_output.put_line(inc);
    end loop;
END;
/