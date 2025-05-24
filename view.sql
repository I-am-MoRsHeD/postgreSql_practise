CREATE View test_view AS
    SELECT * FROM employees
    WHERE department_name in 
    (SELECT department_name from employees);
CREATE View test_view_dept AS
    SELECT * FROM employees
    WHERE department_name in 
    (SELECT department_name from employees WHERE department_name ILIKE 'H%');

SELECT * FROM test_view_dept;