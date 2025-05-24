CREATE Table employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE
);

INSERT INTO employees (employee_name,department_name,salary,hire_date) 
    VALUES 
        ('John Doe', 'HR', 60000.00, '2022-01-10'),
        ('Jane Smith', 'Finance', 75000.50, '2021-05-22'),
        ('Bob Johnson', 'Engineering', 80000.75, '2020-11-15'),
        ('Alice Williams', 'Marketing', 90000.25, '2019-08-03'),
        ('David Lee', 'Sales', 65000.50, '2020-03-18'),
        ('Sara Brown', 'Operations', 70000.00, '2021-09-28'),
        ('Mike Miller', 'IT Support', 55000.75, '2022-02-05'),
        ('Emily Davis', 'Management', 95000.00, '2018-12-12'),
        ('Chris Wilson', 'Legal', 72000.50, '2020-06-30'),
        ('Amy White', 'R&D', 68000.25, '2021-11-09'),
        ('John Johnson', 'HR', 62000.00, '2022-01-15'),
        ('Jessica Thompson', 'Finance', 78000.50, '2021-06-05'),
        ('Michael Harris', 'Engineering', 85000.75, '2020-11-25'),
        ('Emma Martinez', 'Marketing', 92000.25, '2019-09-15'),
        ('James Taylor', 'Sales', 67000.50, '2020-04-08'),
        ('Sophia Anderson', 'Operations', 72000.00, '2021-10-10'),
        ('William Jackson', 'IT Support', 56000.75, '2022-02-10'),
        ('Olivia Nelson', 'Management', 97000.00, '2018-12-20'),
        ('Daniel White', 'Legal', 73000.50, '2020-07-05'),
        ('Ava Wilson', 'R&D', 69000.25, '2021-11-15'),
        ('Matthew Brown', 'HR', 63000.00, '2022-01-20'),
        ('Emily Garcia', 'Finance', 76000.50, '2021-06-15'),
        ('Christopher Allen', 'Engineering', 86000.75, '2020-12-05'),
        ('Madison Hall', 'Marketing', 93000.25, '2019-09-25'),
        ('Andrew Cook', 'Sales', 68000.50, '2020-04-18'),
        ('Abigail Torres', 'Operations', 73000.00, '2021-10-20'),
        ('Ethan Murphy', 'IT Support', 57000.75, '2022-02-15'),
        ('Ella King', 'Management', 98000.00, '2018-12-28'),
        ('Nathan Rivera', 'Legal', 74000.50, '2020-07-15'),
        ('Mia Roberts', 'R&D', 70000.25, '2021-11-20');

SELECT * FROM employees;

SELECT max(salary) from employees
    WHERE department_name = 'HR';


SELECT * FROM employees
    WHERE salary > (SELECT max(salary) from employees WHERE department_name = 'HR')




