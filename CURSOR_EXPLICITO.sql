drop table funcionario;

create table funcionario(
cd_fun number(10) primary key,
nm_fun varchar(50),
salario number(10,2),
dt_adm date
);

insert into funcionario (cd_fun, nm_fun, salario, dt_adm) values (1, 'João', 10000, TO_DATE('17/04/2000', 'DD/MM/YYYY'));

insert into funcionario (cd_fun, nm_fun, salario, dt_adm) values (2, 'Claudia', 16000, TO_DATE('02/10/1998', 'DD/MM/YYYY'));

insert into funcionario (cd_fun, nm_fun, salario, dt_adm) values (3, 'Joaquim', 5500, TO_DATE('10/07/2010', 'DD/MM/YYYY'));

insert into funcionario (cd_fun, nm_fun, salario, dt_adm) values (4, 'Valéria', 7300, TO_DATE('08/06/2015', 'DD/MM/YYYY'));

--------------------------------------------------------
SET SERVEROUTPUT ON
 
DECLARE
    CURSOR c_fun is Select Nm_fun, salario FROM FUNCIONARIO;
BEGIN
 
    for contador in c_fun LOOP
        dbms_output.put_line('Nome: ' || contador.nm_fun);
        dbms_output.put_line('Salario: ' || contador.salario);
    END LOOP;
END;