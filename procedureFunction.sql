select * from employees;
CREATE procedure delete_id()

LANGUAGE plpgsql
AS
$$
    BEGIN
        DELETE from  employees WHERE employee_id = 29;
           RAISE NOTICE 'deleted from employees';
    END
$$;
CALL delete_id();

CREATE Procedure  insert_id()
LANGUAGE plpgsql
AS
$$
    BEGIN
        INSERT into employees(employee_id , employee_name ,department_id , salary , hire_date )
        VALUES(29, 'tanu', 10, 233333.44, '2025-05-22');
    END
$$;
call insert_id();

CREATE or REPLACE PROCEDURE delete_using_var()
LANGUAGE plpgsql
AS
$$
    DECLARE test_var int;
    BEGIN
        SELECT employee_id into test_var from employees WHERE employee_id = 29;
        DELETE FROM  employees WHERE employee_id = test_var;
    END
$$;
CALL delete_using_var();
CREATE OR REPLACE PROCEDURE delete_id_by_using_para_and_var(val BIGINT)

LANGUAGE plpgsql
AS $$
DECLARE 
    found_id BIGINT;
BEGIN
    SELECT employee_id INTO found_id FROM employees WHERE employee_id = val;
            DELETE FROM employees WHERE employee_id = found_id;
         
END;
$$;

-- Test the procedure
CALL delete_id_by_using_para_and_var(13);
