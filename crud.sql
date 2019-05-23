DROP DATABASE IF EXISTS ravina;
CREATE DATABASE ravina;
USE ravina;
CREATE TABLE users(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name varchar(25) NOT NULL,
    email varchar(225) NOT NULL UNIQUE,
    password varchar(50) NOT NULL
);
INSERT INTO users (name, email, password) VALUES ('Amar', 'amar@gmail.com', 'hello');
INSERT INTO users (name, email, password) VALUES ('ravina', 'ravina@gmail.com', 'hellohi');
INSERT INTO users (name, email, password) VALUES ('Rahista', 'rahista@gmail.com', 'ravina123');

ALTER TABLE users ADD(username VARCHAR(30) NOT NULL);
ALTER TABLE users DROP COLUMN username;
ALTER TABLE users CHANGE name username VARCHAR(30);

UPDATE users SET username = "ami" WHERE id = 2;
SELECT * from users WHERE Id = 1;
DELETE from users WHERE id = 3;
INSERT INTO users (username, email, password) VALUES ('Rahista', 'rahista@gmail.com', 'ravina123');
SELECT username from users;

DROP TABLE IF EXISTS USER_ROLES;
CREATE TABLE user_roles (
    id INT NOT NULL PRIMARY KEY AUTO INCREMENT,
    role enum('team', 'council', 'alumni', 'student', 'facilitator') DEFAULT 'student',
    center enum('Bangalore', 'Dharamshala') DEFAULT NULL,
    joined_on dATETIME DEFAULT CURRENT_TIMESTAMP,
    userId INT NOT NULL,
    FOREIGN KEY fk_users(userId) REFERENCES users(id)
);
