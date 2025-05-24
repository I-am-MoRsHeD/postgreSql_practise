SELECT * FROM employees;


CREATE Function count_user()
RETURNS INTEGER
LANGUAGE SQL
as
$$
    SELECT count(*) FROM employees;
$$;

SELECT count_user();


CREATE Function delete_user()
RETURNS void
LANGUAGE SQL
AS
$$
    DELETE FROM employees WHERE employee_id = 30;
$$;

SELECT delete_user();


CREATE Function delete_user_id(id INT)
RETURNS void
LANGUAGE SQL
AS
$$
    DELETE FROM employees WHERE employee_id = id;
$$;

SELECT delete_user_id(29);

