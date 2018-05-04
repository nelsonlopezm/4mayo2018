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