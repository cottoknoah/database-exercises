CREATE DATABASE IF NOT EXISTS quotes_db;

USE quotes_db;

DROP TABLE IF EXISTS quotes;

CREATE TABLE IF NOT EXISTS quotes(
     id INT UNSIGNED NOT NULL AUTO_INCREMENT,
     author_first_name VARCHAR(100),
     author_last_name  VARCHAR(100),
     quote TEXT NOT NULL,
     PRIMARY KEY (id)
);