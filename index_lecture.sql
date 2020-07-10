-- NOTE - Be sure to not run this entire file at once! Only highlight and run the necessary sections.

USE codeup_test_db;

DROP TABLE IF EXISTS pets;

CREATE TABLE pets (
                      id INT UNSIGNED,
                      pet_name VARCHAR(30) NOT NULL,
                      owner_name VARCHAR(30),
                      age INT
);

DESCRIBE pets;

-- add a primary key
ALTER TABLE pets
    MODIFY COLUMN id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT;

-- drop a primary key
ALTER TABLE pets
    MODIFY COLUMN id INT;

ALTER TABLE pets
    DROP PRIMARY KEY;

SHOW CREATE TABLE pets;

-- Define the Primary Key on table creation statement
DROP TABLE pets;
CREATE TABLE pets (
                      id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                      pet_name VARCHAR(30) NOT NULL,
                      owner_name VARCHAR(30),
                      age INT
);
DESCRIBE pets;

-- Define a Primary Key for multiple columns (ONLY FOR DEMO - NOT IN CLASS)
DROP TABLE pets;
CREATE TABLE pets (
                      id INT UNSIGNED AUTO_INCREMENT,
                      pet_name VARCHAR(30) NOT NULL,
                      owner_name VARCHAR(30),
                      age INT,
                      PRIMARY KEY (id, age)
);
DESCRIBE pets;


-- add name index
ALTER TABLE pets
    ADD INDEX pet_name_key (pet_name);

-- drop name index
ALTER TABLE pets
    DROP INDEX pet_name_key;

SHOW INDEX FROM pets;

-- ============= UNIQUE INDEX

-- create pets with unique name and owner

-- create using CREATE TABLE
DROP TABLE IF EXISTS pets;

CREATE TABLE pets (
                      id INT UNSIGNED AUTO_INCREMENT,
                      pet_name VARCHAR(30) NOT NULL,
                      owner_name VARCHAR(30),
                      age INT,
                      PRIMARY KEY (id),
                      UNIQUE unique_pn_on (pet_name, owner_name)
);
DESCRIBE pets;

-- test unique constraint
INSERT INTO pets (pet_name, owner_name, age)
VALUES ('Buddy', 'Jack Smith', 3);

INSERT INTO pets (pet_name, owner_name, age)
VALUES ('Buddy', 'Fred', 2);

INSERT INTO pets (pet_name, owner_name, age)
VALUES ('Snickers', 'Jack Smith', 3);

INSERT INTO pets (pet_name, owner_name, age)
VALUES ('Buddy', 'Jack Smith', 6);

-- FORIEGN KEYS

DROP TABLE IF EXISTS owners;

CREATE TABLE owners (
                        id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                        name VARCHAR(30) NOT NULL,
                        address VARCHAR(255) DEFAULT 'undisclosed'
);
DROP TABLE IF EXISTS pets;
CREATE TABLE pets (
                      id INT UNSIGNED AUTO_INCREMENT,
                      pet_name VARCHAR(30) NOT NULL,
                      owner_id INT UNSIGNED,
                      age INT,
                      PRIMARY KEY (id),
                      FOREIGN KEY (owner_id) REFERENCES owners(id)
);

DESCRIBE pets;

INSERT INTO pets (pet_name, owner_id, age)
VALUES ('Puddle', null, 2);

SELECT * FROM owners;

INSERT INTO owners (name, address)
VALUES ('Darth Vader', '1337 Death Star Rd');

INSERT INTO owners (name, address)
VALUES ('Boba Fett', '1339 Death Star Rd');

INSERT INTO owners (name)
VALUES ('General Organa');

INSERT INTO pets (pet_name, owner_id, age)
VALUES ('Jabba', 2, 5);

INSERT INTO pets (pet_name, owner_id, age)
VALUES ('Starlord', 3, 5);

INSERT INTO pets (pet_name, owner_id, age)
VALUES ('Eve', 1, 3);

INSERT INTO pets (pet_name, owner_id, age)
VALUES ('Wall-e', 9, 3);