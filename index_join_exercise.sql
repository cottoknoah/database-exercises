USE employees;

SHOW TABLES;

DESCRIBE employees;

DROP TABLE IF EXISTS pets;

CREATE TABLE joined (
                      id INT UNSIGNED AUTO_INCREMENT,
                      dept_name VARCHAR(30) NOT NULL,
                      owner_name VARCHAR(30),
                      age INT,
                      PRIMARY KEY (id),
                      UNIQUE unique_pn_on (pet_name, owner_name)
);
DESCRIBE pets;

