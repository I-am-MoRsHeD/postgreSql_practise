-- almost same as function,but it won't return any value;
-- We can use if/else statement here to make it more complex and also we can use more complex logic here.

SELECT * FROM employees;


Create Procedure removed_emp_id (emp_id INT)
LANGUAGE plpgsql
AS
$$
    DECLARE 
    test_id INT;
    BEGIN
        SELECT employee_id INTO test_id FROM employees WHERE employee_id = emp_id;
        DELETE FROM employees where employee_id = test_id;
    END
$$

CALL removed_emp_id(27);

