SET SERVEROUTPUT ON;
-- TABUADA COM PR�-CONDI��O
DECLARE
    V_NUMERO NUMBER (3) := &DIGITE_UM_NUMERO;
    V_CONTADOR NUMBER (3) := 0;
BEGIN
    WHILE V_CONTADOR < 10 LOOP
        V_CONTADOR := V_CONTADOR + 1;
        dbms_output.put_line(V_CONTADOR || ' X ' || V_NUMERO || ' = ' || V_CONTADOR * V_NUMERO);
    END LOOP;
END;