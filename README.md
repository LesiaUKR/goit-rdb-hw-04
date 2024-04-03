# goit-rdb-hw-04

## Homework Assignment for Topic 4. DML and DDL Commands. Complex SQL Expressions

In this homework assignment, you will have the opportunity to apply your knowledge of SQL language to create and work with a database.

The assignment will reveal the process of defining table structures using DDL commands, populating them with test data using DML commands.

It will also promote skills in writing complex queries using multiple JOIN operators to merge tables.

### Description of the homework assignment

Create a database to manage a library book system according to the structure provided below.
Use DDL commands to create the necessary tables and their relationships.

#### 1. Create Database

Database Structure

a) Schema name - "LibraryManagement"

b) Table "authors":

author_id (INT, automatically incremented PRIMARY KEY)
author_name (VARCHAR)
c) Table "genres":

genre_id (INT, automatically incremented PRIMARY KEY)
genre_name (VARCHAR)
d) Table "books":

book_id (INT, automatically incremented PRIMARY KEY)
title (VARCHAR)
publication_year (YEAR)
author_id (INT, FOREIGN KEY relationship with "Authors")
genre_id (INT, FOREIGN KEY relationship with "Genres")
e) Table "users":

user_id (INT, automatically incremented PRIMARY KEY)
username (VARCHAR)
email (VARCHAR)
f) Table "borrowed_books":

borrow_id (INT, automatically incremented PRIMARY KEY)
book_id (INT, FOREIGN KEY relationship with "Books")
user_id (INT, FOREIGN KEY relationship with "Users")
borrow_date (DATE)
return_date (DATE)

#### 2. Populate the tables with simple fictitious test data. One or two rows in each table are sufficient.

#### 3. Switch to the database you worked with in topic 3.

Write a query using the FROM and INNER JOIN operators to combine all data tables we loaded from files: order_details, orders, customers, products, categories, employees, shippers, suppliers. To do this, you must find the common keys.

Verify the correctness of the query execution.

#### 4. Execute the queries listed below.

- Determine how many rows you obtained (using the COUNT operator).
- Change several INNER operators to LEFT or RIGHT. Determine what happens to the number of rows. Why? Write the answer in a text file.
- Select only those rows where employee_id > 3 and ≤ 10.
- Group by category name, calculate the number of rows in each group, and the average quantity of product (the quantity of product is in order_details.quantity).
- Filter the rows where the average quantity of product is greater than 21.
- Sort the rows by descending order of row count.
- Display on the screen (select) four rows with a missing first row.
