CREATE FUNCTION update_employee_name(employee_id INT, new_name VARCHAR(255))
RETURNS VOID
AS $$
    UPDATE employees
    SET first_name = update_employee_name.new_name
    WHERE employees.employee_id = update_employee_name.employee_id;
$$ LANGUAGE SQL;

SELECT update_employee_name(2,'Nancy')
