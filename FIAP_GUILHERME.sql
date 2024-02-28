SET SERVEROUTPUT ON                                                           
DECLARE
    V_NUMERO NUMBER(2) := &DIGITE_UM_NUMERO;
    V_CONTADOR NUMBER(10) := 0;
    V_RESULTADO NUMBER(10);
BEGIN
    LOOP
        V_RESULTADO := V_NUMERO * V_CONTADOR;
        DBMS_OUTPUT.PUT_LINE(V_NUMERO || 'X' || V_CONTADOR || '=' || V_RESULTADO);
        V_CONTADOR := V_CONTADOR + 1;
        EXIT WHEN(V_CONTADOR > 10);
    END LOOP;
END;