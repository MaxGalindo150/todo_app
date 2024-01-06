CREATE DATABASE todo_app_db;

USE todo_app_db;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255)
);

CREATE TABLE todos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    completed BOOLEAN DEFAULT false,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE shared_todo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    todo_id INT,
    user_id INT,
    FOREIGN KEY (todo_id) REFERENCES todos(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO users (name, email, password) VALUES ('Max', 'max@example.com', 'password1');
INSERT INTO users (name, email, password) VALUES ('Alex', 'alex@example.com', 'password2');