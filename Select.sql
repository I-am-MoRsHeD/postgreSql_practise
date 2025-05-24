select * FROM students;

select * FROM students ORDER BY age DESC;

SELECT * FROM students
    WHERE score > 33 AND department = 'English';

DROP Table students;


SELECT sum(age) FROM students;

Alter Table students
    Add COLUMN email VARCHAR(25) DEFAULT 'N/A' NOT NULL;

select COALESCE(email, 'default@gmail.com') from students;


SELECT * FROM students
    WHERE department IN ('Physics', 'Chemistry', 'History');


SELECT * FROM students
    WHERE age BETWEEN 20 AND 21 ORDER BY age ASC;


SELECT * FROM students
    WHERE name LIKE('%oa%');


SELECT * FROM students
    WHERE name ILIKE('j%');


UPDATE students
    set name = 'John kuddus'
    WHERE roll = 1