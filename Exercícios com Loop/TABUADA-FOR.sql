SET SERVEROUTPUT ON;
-- TABUADA COM FOR
DECLARE
    V_NUMERO NUMBER (3) := &DIGITE_UM_NUMERO;
    V_CONTADOR NUMBER (3) := 0;
BEGIN
     FOR contador IN 1..10 LOOP
        dbms_output.put_line(contador || ' X ' || V_NUMERO || ' = ' || contador * V_NUMERO);
     END LOOP;
END;