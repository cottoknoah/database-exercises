USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery. 69 Rows

# Step 1  - get emp# 101010's hire date
SELECT *
FROM employees
WHERE emp_no = 101010;

# Step 2 - add it with get all employees w/that hire date
SELECT *
FROM employees
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    where emp_no = 101010
    );


# Find all the titles held by all employees with the first name Aamod. 314 total titles, 6 unique titles
SELECT *
FROM employees
WHERE first_name = 'Aamod'
ORDER BY hire_date;

SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name ='Aamod'
    )
ORDER BY title;


# Find all the current department managers that are female.
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > NOW()
    )
    AND gender = 'F';


#BONUS: Find all the department names that currently have female managers.




# Find the first and last name of the employee with the highest salary.