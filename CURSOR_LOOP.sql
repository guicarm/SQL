CREATE TABLE PRODUTO_CP (
    codigo NUMBER(4),
    categoria char(1),
    valor NUMBER(4,2)
);
INSERT INTO PRODUTO_CP VALUES (1001, 'A',7.55);
INSERT INTO PRODUTO_CP VALUES (1002, 'B',5.95);
INSERT INTO PRODUTO_CP VALUES (1003, 'C',3.45);
 
 
DECLARE
    CURSOR c_prod is Select * FROM PRODUTO_CP;
 
BEGIN
    for reg in c_prod LOOP
        IF reg.categoria = 'A' THEN
            UPDATE PRODUTO_CP SET valor = reg.valor * 1.05 WHERE codigo = reg.codigo; 
        ELSIF reg.categoria = 'B' THEN
            UPDATE PRODUTO_CP SET valor = reg.valor * 1.1 WHERE codigo = reg.codigo; 
        ELSE
            UPDATE PRODUTO_CP SET valor = reg.valor * 1.15 WHERE codigo = reg.codigo; 
        END IF;
    END LOOP;
END;