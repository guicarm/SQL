-- Package Head
CREATE OR REPLACE PACKAGE pkg_aluno AS 
-- get nome completo do aluno
FUNCTION get_nome(p_rm NUMBER)
 RETURN VARCHAR2;
-- get RM do aluno
FUNCTION get_rm(p_nome VARCHAR2)
 RETURN NUMBER;
END pkg_aluno;
/


-- Package Body
CREATE OR REPLACE PACKAGE BODY pkg_aluno AS 
-- get nome do aluno
FUNCTION get_nome(p_rm NUMBER) RETURN VARCHAR2 IS 
 v_nome VARCHAR2(80);
BEGIN
SELECT nome
 INTO v_nome
FROM pk g_aluno 
WHERE rm = p_rm;
RETURN v_nome;
EXCEPTION
WHEN NO_DATA_FOUND THEN
    RETURN NULL;
WHEN TOO_MANY_ROWS THEN
    RETURN NULL;
END pkg_aluno;  -- end get_nome

-- get RM do aluno
FUNCTION get_rm(p_nome VARCHAR2) RETURN NUMBER IS
v_rm aluno.rm%TYPE;
BEGIN
SELECT rm
 INTO v_rm
FROM pkg_aluno
WHERE nome = p_nome;
RETURN v_rm;
EXCEPTION
WHEN NO_DATA_FOUND THEN
    RETURN NULL;
WHEN TOO_MANY_ROWS THEN
    RETURN NULL;
END pkg_aluno;  -- end get_nome
END;
/

SET SERVEROUTPUT ON;
DECLARE
v_nome_aluno VARCHAR2(100);
v_rm_aluno NUMBER(10);
BEGIN
v_nome_aluno := pkg_aluno.get_nome(2);
v_rm_aluno := pkg_aluno.get_rm('João');
dbms_output.put_line('Nome do aluno: ' || v_nome_aluno);
dbms_output.put_line('RM do aluno: ' || v_rm_aluno);
END;
/