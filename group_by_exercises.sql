USE employees;

SHOW TABLES;

DESCRIBE titles;

# 2 In your script, use DISTINCT to find the unique titles in the titles table.
SELECT DISTINCT title FROM titles;


# 3 Find your query for employees whose last names start and end with 'E'. Update the query to
# find just the unique last names that start and end with 'E' using GROUP BY.
SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name;

# 4 Update your previous query to now find unique combinations of first and last name
# where the last name starts and ends with 'E'. You should get 846 rows.
SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY first_name, last_name;


#5 Find the unique last names with a 'q' but not 'qu'.
SELECT DISTINCT last_name
FROM employees
WHERE last_name NOT LIKE '%qu%' AND last_name LIKE '%q%'
GROUP BY last_name;


# 6 Add a COUNT() to your results and use ORDER BY to make it easier to find employees
# whose unusual name is shared with others.
SELECT DISTINCT last_name, COUNT(*)
FROM employees
WHERE last_name NOT LIKE '%qu%' AND last_name LIKE '%q%'
GROUP BY last_name ORDER BY COUNT(*);


# 7 Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the
# number of employees for each gender with those names.
SELECT gender, COUNT(*) FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
