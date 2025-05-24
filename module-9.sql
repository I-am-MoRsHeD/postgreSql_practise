-- date and time
SELECT now();

SELECT CURRENT_DATE;

SELECT now()::date;

SELECT now()::time;

SELECT to_char( now(), 'YYYY-MM-DD HH24:MI:SS' );

create table timeZ (
    ts TIMESTAMP without time zone,
    tsz TIMESTAMP with TIME zone
);

Insert into timez VALUES 
    (
        '2025-01-01 00:00:00',
        '2025-01-01 00:00:00'
    );

SELECT * from timez;

SELECT CURRENT_DATE - INTERVAL '1 year';

SELECT CURRENT_DATE - INTERVAL '1 year 2 months';

select age (CURRENT_DATE, '2025-01-01');

select extract( year from (CURRENT_DATE) );

-- group by and agg func
SELECT * FROM students;

SELECT department FROM students 
    GROUP BY department;

SELECT department, count(*) FROM students 
    GROUP BY department;

SELECT extract(year from last_login) as login_time, count(*)
    from students
    GROUP BY login_time;

-- about foreign key
Create TABLE "user" (
    id serial PRIMARY KEY,
    userName VARCHAR(25) NOT NULL
);

Create TABLE post (
    id serial PRIMARY KEY,
    title text NOT NULL,
    -- user_id INTEGER REFERENCES "user" (id) on delete CASCADE
    user_id INTEGER REFERENCES "user" (id) on delete set null
    -- user_id INTEGER REFERENCES "user" (id) on delete set DEFAULT DEFAULT 2
);

INSERT into "user" (username)values 
    ('akash'),
    ('kunal'),
    ('shubham'),
    ('ankit');

INSERT into post (title, user_id) VALUES 
    ('Enjoy you sunny day', 2),
    (
        'batash just shared a post',
        1
    ),
    ('Expecting adventures', 4),
    ('Nothing just happened', 2);


DROP table "user";
DROP table post;


SELECT * FROM "user";
SELECT * FROM post;


DELETE FROM "user"
    WHERE id = 1;


-- inner join/join
SELECT title, username From post as p
    -- INNER JOIN "user" ON post.user_id = "user".id;
    JOIN "user" as u ON p.user_id = u.id;


INSERT INTO post VALUES(
    5,
    'batash just shared a post',
    NULL
);


SELECT * From post 
    LEFT JOIN "user" ON post.user_id = "user".id;


SELECT * FROM post 
    RIGHT JOIN "user" ON post.user_id = "user".id;


SELECT * FROM post
    CROSS JOIN "user";


SELECT * FROM post
    NATURAL JOIN "user";



