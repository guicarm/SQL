SET SERVEROUTPUT ON;
-- LOOP DE REPETIÇÃO CONTADA
DECLARE
    V_INICIAL NUMBER(3) := 1;
    V_FINAL NUMBER(3) := &DIGITE_O_LIMITE;
BEGIN
                --reverse(poe os numeros em ordem decrescente)
    FOR contador IN V_INICIAL..V_FINAL LOOP
        dbms_output.put_line(contador);
    END LOOP;
END;