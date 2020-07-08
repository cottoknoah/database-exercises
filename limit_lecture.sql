# LIMIT LECTURE

# LIMIT Clause (limits list of results)
# (Include as the last clause in a SQL query)
# Used in creating pagination to get smaller batches results from a potentially larger result set

USE employees;

SELECT * FROM employees LIMIT 1;
# SELECT * FROM employees LIMIT 1 OFFSET 2;
# SELECT * FROM employees LIMIT 5 OFFSET 5;


# OFFSET = LIMIT * PAGE - LIMIT
# OFFSET (starts the result set from a given number of records in)
# Pagination using OFFSET
SELECT * FROM employees
WHERE first_name LIKE 'M%'
LIMIT 5 OFFSET 10;

