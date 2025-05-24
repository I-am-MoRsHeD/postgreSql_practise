CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department_id INT REFERENCES departments (id) ON DELETE SET NULL,
    last_login DATE
);

CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

DROP Table students;
DROP Table departments;
DROP Table courses;


INSERT INTO departments (name) VALUES
('Computer Science'),
('Mathematics'),
('Physics'),
('Biology'),
('History');


INSERT INTO courses (title) VALUES
('Data Structures'),
('Linear Algebra'),
('Quantum Mechanics'),
('Genetics'),
('World History');


INSERT INTO students (name, department_id, last_login) VALUES
('Alice Johnson', 1, '2025-04-10'),
('Bob Smith', 2, '2025-05-08'),
('Charlie Brown', 3, '2025-04-05'),
('Diana Evans', 4, '2025-04-15'),
('Ethan Garcia', 1, '2025-05-18'),
('Fiona Clark', 5, '2025-04-11'),
('George Lee', 2, '2025-05-09'),
('Hannah Davis', 4, '2025-05-14');

SELECT * FROM departments;
SELECT * FROM courses;
SELECT * FROM students;


SELECT last_login from students;
SELECT CURRENT_DATE - INTERVAL '30 days';

SELECT * from students
    WHERE last_login >= CURRENT_DATE - INTERVAL '30 days';


SELECT EXTRACT(MONTH FROM last_login) AS login_month, COUNT(*) FROM students
    GROUP BY login_month
    ORDER BY login_month;
SELECT TO_CHAR(last_login, 'Month') AS login_month, COUNT(*) FROM students
    GROUP BY login_month
    ORDER BY MIN(EXTRACT(MONTH FROM last_login));


SELECT extract (month from last_login) as last_login_stu, count(*) as login_count from students
    GROUP BY last_login_stu
   HAVING count(*) > 3;

DELETE FROM departments
    WHERE id = 2;

DROP TABLE departments;
DROP TABLE students;


SELECT * FROM students
    INNER JOIN departments ON students.department_id = departments.id;

SELECT * from students
    LEFT JOIN departments ON students.department_id = departments.id;

SELECT * from departments
    RIGHT JOIN students ON departments.id = students.department_id;


SELECT * FROM departments
    FULL JOIN students ON departments.id = students.department_id;

SELECT * FROM departments
    CROSS JOIN students;

SELECT * FROM departments
    NATURAL JOIN students;

