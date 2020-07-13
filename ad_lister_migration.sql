CREATE DATABASE IF NOT EXISTS hop_squad_db;

USE hop_squad_db;

DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users(
                                     id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
                                     first_name VARCHAR(100) NOT NULL,
                                     last_name VARCHAR(100) NOT NULL,
                                     email VARCHAR(100) NOT NULL ,
                                     password VARCHAR(200) NOT NULL,
                                     PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS ads(
                                    id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
                                    title VARCHAR(100) NOT NULL,
                                    description VARCHAR(100) NOT NULL,
                                    users_id int not null,
                                    PRIMARY KEY(id),
                                    FOREIGN KEY (users_id) REFERENCES users(id);
);

CREATE TABLE IF NOT EXISTS ad_category(
                                    ad_id INT(30) UNSIGNED NOT NULL AUTO_INCREMENT,
                                    category_id INT(30) UNSIGNED NOT NULL,
                                    PRIMARY KEY(ad_id) REFERENCES ads(id),
                                    FOREIGN KEY (category_id) REFERENCES categories(id);

);

CREATE TABLE IF NOT EXISTS categories(
                                  id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
                                  name VARCHAR(100) NOT NULL,
                                  PRIMARY KEY(id);
);

