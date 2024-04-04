CREATE DATABASE IF NOT EXISTS Library_Management;
USE Library_Management;

CREATE TABLE IF NOT EXISTS authors (
author_id INT AUTO_INCREMENT PRIMARY KEY,
 author_name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS genres (
genre_id INT AUTO_INCREMENT PRIMARY KEY,
 genre_name VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS books (
book_id INT AUTO_INCREMENT PRIMARY KEY,
 title  VARCHAR(255),
 publication_year YEAR,
 author_id INT,
 genre_id INT,
 FOREIGN KEY (author_id) REFERENCES authors(author_id),
 FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);
CREATE TABLE IF NOT EXISTS users (
user_id INT AUTO_INCREMENT PRIMARY KEY,
 username VARCHAR(255),
 email VARCHAR(255)
);
CREATE TABLE IF NOT EXISTS borrowed_books (
borrow_id INT AUTO_INCREMENT PRIMARY KEY,
book_id INT,
user_id INT,
borrow_date DATE,
return_date DATE,
FOREIGN KEY (book_id) REFERENCES books (book_id),
FOREIGN KEY (user_id) REFERENCES users (user_id )
);
INSERT INTO authors (author_name) VALUES
('J.K. Rowling'),
('George Orwell');
INSERT INTO genres (genre_name) VALUES
('Fantasy'),
('Dystopian');
INSERT INTO books (title, publication_year, author_id, genre_id) VALUES
('Harry Potter and the Philosopher''s Stone', '1997', 1, 1),
('1984', '1949', 2, 2);
INSERT INTO users (username, email) VALUES
('alice', 'alice@example.com'),
('bob', 'bob@example.com');
INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date) VALUES
(1, 1, '2024-04-01', '2024-04-15'),
(2, 2, '2024-04-02', '2024-04-16');