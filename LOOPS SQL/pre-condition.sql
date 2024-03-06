SET SERVEROUTPUT ON;
-- LOOP DE PRÉ-CONDIÇÃO
DECLARE
    v_contador NUMBER(2) := 1;
    v_limite   NUMBER(2) := 10;
BEGIN
    --CONDIÇÃO
    WHILE v_contador <= v_limite LOOP
    --INSTRUÇÕES
        dbms_output.put_line(v_contador);
        v_contador := v_contador + 1;
    END LOOP;
END;