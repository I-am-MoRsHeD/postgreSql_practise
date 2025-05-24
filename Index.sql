SELECT * FROM employees;

EXPLAIN ANALYSE
SELECT * FROM employees WHERE salary = 98000.00;

CREATE INDEX idx_employees_salary
ON employees (salary);

SHOW data_directory;