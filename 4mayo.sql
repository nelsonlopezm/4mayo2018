
CREATE TABLE  test_case (
    col_pk  integer          NOT NULL,
    col_i1  integer          NOT NULL,
    col_d1  date             NOT NULL,
    col_c1  VARCHAR2 (100)   NOT NULL,
    col_i2  integer          NOT NULL,
    col_d2  date             NOT NULL,
    col_c2  VARCHAR2 (100)   NOT NULL
    );
    
    
    create or replace FUNCTION repeat (c char, n integer) return varchar
    is
    s varchar2 (100):= '';
    begin
      for i in 1 .. n loop
        s := s || c;
        end loop;
        RETURN (s);
    end;
    
    ---- procedimiento anonimo
    
    declare
    row_count integer := 1000000;
    BEGIN
      for i in 1 .. row_count loop
        insert into test_case
          values (i, mod(i,100),sysdate-mod(i,100),
            repeat (substr ('ABCDEFGHIJ',mod(i,10),1),10),
            mod(1,100), SYSDATE-MOD(i,100),
            repeat (substr ('ABCDEFGHIJ',mod(i,10),1),10)
      );
    
        if (mod (i,100) = 0) then
          commit;
        end if;
      end loop;
    end;
    
        
---


select count (*) from test_case;

EXPLAIN PLAN SET STATEMENT_ID ='bad2' FOR
select  * from test_case
where col_d2 =
(select min(col_d2) from test_case
where col_pk <= 1000 or col_pk > 990000);


select * from table (DBMS_XPLAN.DISPLAY('PLAN_TABLE','bad2','TYPICAL'));

ALTER TABLE TEST_CASE ADD CONSTRAINT TEST_CASE_PK PRIMARY KEY (col_pk);











CREATE TABLE  employees (
    employee_id NUMBER          NOT NULL,
    first_name VARCHAR2 (1000)  NOT NULL,
    last_name VARCHAR2 (1000)   NOT NULL,
    date_of_birth DATE          NOT NULL,
    phone_number VARCHAR2 (1000)NOT NULL,
    CONSTRAINT employees_pk PRIMARY KEY (employee_id)
    );
    
    
    CREATE UNIQUE  INDEX  employee_pk
        ON employees (employye_id,subsidiary_id);
        
SELECT  first_name, last_name
    FROM employees
    WHERE subsidiary_id=20;
    
    
    ---------
    
    select * from SYS.PLAN_TABLE$
    
    
    
    --- 11mayo
    --hola mundo
    
    
    