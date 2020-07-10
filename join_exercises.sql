
# write a query that shows each department along with the name of the current manager for that department.

SELECT departments.dept_name AS Department, CONCAT(emp.first_name, ' ', emp.last_name) AS Manager
FROM departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees AS emp ON emp.emp_no = dept_manager.emp_no

# Find the name of all departments currently managed by women.

# Find the current titles of employees currently working in the Customer Service department.

# Find the current salary of all current managers.

# Bonus: Find the names of all current employees, their department name, and their current manager's name.
SELECT departments.dept_name AS 'Department Name', CONCAT(emp.first_name,' ',emp.last_name) AS 'Name', salaries.salary AS 'Salary'
FROM departments
JOIN dept_manager AS dm ON departments.dept_no = dm.dept_no
JOIN employees AS emp ON emp.emp_no =
JOIN salaries ON emp.emp_no = salaries.emp_no = salaries.emp_no
WHERE dm.to_date = '9999%' AND salaries.to_date = '9999%'
ORDER BY departments.dept_name;