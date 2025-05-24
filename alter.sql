

select * from person2;

ALTER TABLE person2 
    Add COLUMN email VARCHAR(25);

ALTER Table person2
    RENAME COLUMN age to user_age;

ALTER Table person2
    DROP COLUMN email;

ALTER Table person2
    ALTER COLUMN email TYPE VARCHAR(20);

ALTER Table person2
    ALTER COLUMN user_age set Not Null;

ALTER Table person2
    ALTER COLUMN user_age DROP NOT NULL;


ALTER TABLE person2
    ADD CONSTRAINT unique_user_age UNIQUE (user_age);


ALTER TABLE person2
    DROP CONSTRAINT unique_user_age;


insert INTO person2 (id, user_name , user_age, is_active, dob, email) VALUES (3,'John', 35, true,  null ,'john@gmail');