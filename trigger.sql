-- it basically works when anything needs to be inserted or updated or deleted in the table;
-- it is used to perform some action automatically when the data is inserted, updated or deleted in the table

CREATE Table hakku_ra (
    user_name VARCHAR(50) UNIQUE,
    role VARCHAR(50)
);

INSERT INTO hakku_ra (user_name, role) VALUES ('John', 'admin'), ('Gone', 'manager');


CREATE Table removed_hakkus (
    deleted_user VARCHAR(50),
    deletedAt TIMESTAMP
);

CREATE or REPLACE FUNCTION removed_user()
RETURNS TRIGGER
LANGUAGE PLPGSQL
AS
$$
    BEGIN
        INSERT INTO removed_hakkus VALUES(OLD.user_name, NOW());
        RETURN OLD;
    END
$$;

CREATE or REPLACE Trigger delete_user
BEFORE DELETE
ON hakku_ra
FOR EACH ROW
EXECUTE FUNCTION removed_user();

DELETE FROM hakku_ra WHERE user_name = 'John';

SELECT * FROM hakku_ra;
SELECT * FROM removed_hakkus;

DROP Table hakku_ra;
DROP Table removed_hakkus;

