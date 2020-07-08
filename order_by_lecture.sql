# ORDER BY LECTURE
# Used to order a query result set by specified column(s) in ascending or descending order

USE employees;

DESCRIBE employees;

# Get employees by first_name ascending
SELECT * FROM employees ORDER BY first_name;

# Get employees by last_name descending
SELECT * FROM employees ORDER BY last_name DESC;

# Get employee names ordered by first_name descending and within duplicated first name results,
# order the result by last name ascending
SELECT first_name, last_name FROM employees
ORDER BY first_name, last_name DESC;


# first employee hired
SELECT *
FROM employees
ORDER BY hire_date LIMIT 1;


# last employee hired
SELECT *
FROM employees
ORDER BY hire_date DESC LIMIT 1;

# first female employee hired
SELECT DISTINCT gender
FROM employees
ORDER BY gender = 'F' LIMIT 1;


SELECT *
FROM employees
WHERE gender LIKE 'F' ORDER BY gender;


# highest current salary ---- HELP



























