SET SERVEROUTPUT ON;
-- LOOP DE PR�-CONDI��O
DECLARE
    v_contador NUMBER(2) := 1;
    v_limite   NUMBER(2) := 10;
BEGIN
    --CONDI��O
    WHILE v_contador <= v_limite LOOP
    --INSTRU��ES
        dbms_output.put_line(v_contador);
        v_contador := v_contador + 1;
    END LOOP;
END;