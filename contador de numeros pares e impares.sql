SET SERVEROUTPUT ON;

DECLARE
    V_FINAL NUMBER (10) := &DIGITE_O_LIMITE;
    V_CONTA_PAR NUMBER(10) := 0;
    V_CONTA_IMPAR NUMBER(10) := 0;
BEGIN
    FOR CONTADOR IN 1..V_FINAL LOOP
        IF MOD(CONTADOR,2) = 0 THEN
            V_CONTA_PAR := V_CONTA_PAR + 1;
        ELSE 
            V_CONTA_IMPAR := V_CONTA_IMPAR + 1;
        END IF;
    END LOOP;
    dbms_output.put_line('números pares: '|| V_CONTA_PAR);
    dbms_output.put_line('números impares: '|| V_CONTA_IMPAR);
END;