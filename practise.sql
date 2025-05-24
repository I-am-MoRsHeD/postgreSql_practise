CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    roll INT UNIQUE,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    department VARCHAR(50) NOT NULL,
    score INT NOT NULL,
    status VARCHAR(25),
    last_login DATE
);

SELECT * from students;

INSERT INTO
    students (
        roll,
        name,
        age,
        department,
        score,
        status,
        last_login
    )
VALUES (
        01,
        'John Doe',
        20,
        'Math',
        90,
        'Passed',
        '2025-01-01'
    ),
    (
        02,
        'Jane Smith',
        21,
        'History',
        75,
        'Passed',
        '2025-01-01'
    ),
    (
        03,
        'Alice Johnson',
        22,
        'Physics',
        60,
        'Failed',
        '2025-01-01'
    ),
    (
        04,
        'Bob Williams',
        23,
        'Chemistry',
        90,
        'Passed',
        '2025-01-01'
    ),
    (
        05,
        'Charlie Brown',
        22,
        'English',
        75,
        'Passed',
        '2025-01-01'
    ),
    (
        06,
        'Emma Jones',
        23,
        'Biology',
        60,
        'Failed',
        '2025-01-01'
    ),
    (
        07,
        'Michael Johnson',
        21,
        'Physics',
        90,
        'Passed',
        '2025-01-01'
    ),
    (
        08,
        'Olivia Davis',
        20,
        'Math',
        75,
        'Passed',
        '2025-01-01'
    ),
    (
        09,
        'William Brown',
        20,
        'Biology',
        60,
        'Failed',
        '2025-01-01'
    ),
    (
        10,
        'Sophia Moore',
        22,
        'English',
        90,
        'Passed',
        '2025-01-01'
    ),
    (
        11,
        'Liam Miller',
        21,
        'History',
        75,
        'Passed',
        '2025-01-01'
    ),
    (
        12,
        'Ava Anderson',
        23,
        'Biology',
        60,
        'Failed',
        '2025-01-01'
    ),
    (
        13,
        'Noah Martinez',
        22,
        'Physics',
        75,
        'Passed',
        '2025-01-01'
    ),
    (
        14,
        'Isabella Clark',
        21,
        'Chemistry',
        90,
        'Passed',
        '2025-01-01'
    ),
    (
        15,
        'Ethan Garcia',
        23,
        'Math',
        90,
        'Passed',
        '2025-01-01'
    ),
    (
        16,
        'Sophie Moore',
        20,
        'English',
        75,
        'Passed',
        '2025-01-01'
    ),
    (
        17,
        'Mia Hernandez',
        22,
        'History',
        60,
        'Failed',
        '2025-01-01'
    ),
    (
        18,
        'James Young',
        20,
        'Biology',
        90,
        'Passed',
        '2025-01-01'
    ),
    (
        19,
        'Gonzalez',
        21,
        'Physics',
        75,
        'Passed',
        '2025-01-01'
    );

SELECT * from students;

ALTER Table students RENAME COLUMN email to student_email;

ALTER table students DROP COLUMN student_email;

ALTER Table students ADD COLUMN email VARCHAR(20);

ALTER TABLE students
ADD constraint unique_email UNIQUE (student_email);

SELECT count(*) from students;

UPDATE students set status = 'Failed' WHERE score = 60;

DELETE FROM students 
    where last_login < '2025-01-01';

