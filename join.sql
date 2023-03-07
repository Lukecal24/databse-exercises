CREATE DATABASE join_test_db;
use join_test_db;

CREATE TABLE roles (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       PRIMARY KEY (id)
);

CREATE TABLE users (
                       id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                       name VARCHAR(100) NOT NULL,
                       email VARCHAR(100) NOT NULL,
                       role_id INT UNSIGNED DEFAULT NULL,
                       PRIMARY KEY (id),
                       FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
 ('bob', 'bob@example.com', 1),
 ('joe', 'joe@example.com', 2),
 ('sally', 'sally@example.com', 3),
 ('adam', 'adam@example.com', 3),
 ('jane', 'jane@example.com', null),
 ('mike', 'mike@example.com', null);


INSERT INTO users (name, email, role_id)
VALUES
    ('Alice', 'alice@example.com', 2),
    ('Bob', 'bob@example.com', 2),
    ('Charlie', 'charlie@example.com', 2),
    ('Dave', 'dave@example.com', NULL);

# 3

SELECT users.name, roles.name
FROM users
JOIN roles ON users.role_id = roles.id;

SELECT users.name, roles.name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name, roles.name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

SELECT roles.name, COUNT(users.role_id)
FROM roles
LEFT JOIN users ON roles.id = users.role_id
GROUP BY roles.name;
