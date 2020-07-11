-- SUB-QUERY LECTURE

# SELECT column_a, column_b, column_c
# FROM table_a
# WHERE column_a IN (
#     SELECT column_a
#     FROM table_b
#     WHERE column_b = true
# );
USE employees;

SELECT dept_no
FROM departments
WHERE dept_name = 'Customer Service';

SELECT *
FROM departments
WHERE dept_no = (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Customer Service'
    );

SELECT emp_no
FROM dept_manager
WHERE dept_no IN (
    SELECT dept_no
    FROM departments
    WHERE dept_name = 'Sales'
    )
    AND to_date > NOW();

SELECT CONCAT(
    (
        SELECT MAX(salary)
        FROM salaries
        WHERE emp_no = 10001
    ),
    ' ',
    (
        SELECT MAX(salary)
        FROM salaries
        WHERE emp_no = 10002
        )
           );
# with a join --referencing index and primary keys (much faster)
SELECT emp.first_name, emp.last_name
FROM employees AS emp
JOIN dept_manager AS dm ON dm.emp_no = emp.emp_no;

# with a subquery
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    );



SELECT emp_no, salary
FROM salaries
WHERE to_date > NOW()
ORDER BY salary DESC;

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE to_date > NOW()
    ORDER BY salary DESC
    )
LIMIT 10;

SELECT employees.first_name, employees.last_name, salaries.salary
FROM salaries
JOIN employees ON employees.emp_no = salaries.emp_no
WHERE employees.emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE to_date > NOW()
    ORDER BY salary DESC
)
ORDER BY salaries.salary DESC
LIMIT 10;

SELECT CONCAT (
    (
        SELECT CONCAT (first_name, ' ', last_name)
        FROM employees
        WHERE emp_no = 10001
        ),
    'works in a department called ',
    (
        SELECT dept_name
        FROM departments
        WHERE dept_no = 'd005'
        ),

           )

