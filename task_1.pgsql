CREATE FUNCTION employee_info(employee_name VARCHAR)
RETURNS TABLE (
    employee_id INT,
    last_name VARCHAR(20),
    first_name VARCHAR(20),
    birth_date DATE,
    address VARCHAR(60),
    city VARCHAR(15),
    home_phone VARCHAR(24)
) 
AS $$
    SELECT employee_id, last_name, first_name, birth_date, address, city, home_phone
    FROM employees
    WHERE employees.first_name = employee_info.employee_name;
$$ LANGUAGE SQL;

SELECT employee_info('Nancy')