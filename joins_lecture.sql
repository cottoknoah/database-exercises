# Recreate the tables from previous (index) lecture, so we can use JOINs on them

drop table if exists pets;
drop table if exists owners;

CREATE TABLE owners (
      id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
      name VARCHAR(30) NOT NULL,
      address VARCHAR(255) DEFAULT 'Undisclosed'
);

CREATE TABLE pets (
      id INT UNSIGNED AUTO_INCREMENT,
      name VARCHAR(30) NOT NULL,
      owner_id INT UNSIGNED,
      age INT,
      PRIMARY KEY (id),
      /* https://dev.mysql.com/doc/refman/8.0/en/create-table-foreign-keys.html */
      FOREIGN KEY (owner_id) REFERENCES owners(id) /* ON DELETE RESTRICT | CASCADE | SET NULL */
);

# seed tables
INSERT INTO owners (name, address)
VALUES ('Darth Smith', '1138 Death Star Rd.');

INSERT INTO owners (name, address)
VALUES ('Queue', '1135 Death Star Rd.');

INSERT INTO owners (name, address)
VALUES ('Lugubrious', '1131 Death Star Rd.');

INSERT INTO owners (name)
VALUES ('Pusillanimous');

INSERT INTO pets (name, owner_id, age)
VALUES ('Spot', 1, 2);

INSERT INTO pets (name, owner_id, age)
VALUES ('Puddle', 1, 4);

INSERT INTO pets (name, owner_id, age)
VALUES ('Blue', 3, 4);

INSERT INTO pets (name, owner_id, age)
VALUES ('Maroon', NULL, 4);

INSERT INTO pets (name, owner_id, age)
VALUES ('Magenta', NULL, 4);

USE codeup_test_db;
# List the name and address of a pet
# JOIN a.k.a. "INNER JOIN"
SELECT pets.name, owners.address FROM pets
INNER JOIN owners ON pets.owner_id = owners.id;

# LEFT JOIN
SELECT pets.name, owners.address FROM pets
LEFT JOIN owners ON pets.owner_id = owners.id;

# RIGHT JOIN
SELECT pets.name, owners.address FROM pets
RIGHT JOIN owners ON pets.owner_id = owners.id;

# Associative JOIN (on 3 tables, instead of just 2)
USE employees;

# Let's try to find the full name and department for the employee with an employee id of 10001:
SELECT CONCAT(employees.first_name, ' ', employees.last_name) as 'Full Name', departments.dept_name as 'Department'
    FROM departments
    JOIN dept_emp ON dept_emp.dept_no = departments.dept_no
    JOIN employees ON employees.emp_no = dept_emp.emp_no
    WHERE employees.emp_no = 10001;

# Flip it and reverse it
SELECT CONCAT(employees.first_name, ' ', employees.last_name) as 'Full Name', departments.dept_name as 'Department'
    FROM employees
    JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
    JOIN departments ON departments.dept_no = dept_emp.dept_no
    WHERE employees.emp_no = 10001;