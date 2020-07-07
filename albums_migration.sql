USE codeup_test_db;

DROP TABLE IF EXISTS albums;


CREATE TABLE IF NOT EXISTS albums(
     id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
     artist VARCHAR(200),
     name VARCHAR(100) NOT NULL ,
     release_date SMALLINT UNSIGNED,
     sales FLOAT,
     genre VARCHAR(200),
     PRIMARY KEY(id)
);
