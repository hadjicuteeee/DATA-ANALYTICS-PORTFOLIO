String to Number Casting in Python using PostgreSQL
Description

This project demonstrates how to convert numeric values stored as strings into integer and numeric (decimal) data types using Python and PostgreSQL. It focuses on SQL type casting techniques executed through a Python application.

Technologies Used

Python 3

PostgreSQL

PyCharm IDE

psycopg2 (PostgreSQL adapter for Python)

Database Structure

The project uses a PostgreSQL table named string_numbers with the following columns:

id – serial primary key

num_text – numeric values stored as VARCHAR

name – text data

Table Schema
CREATE TABLE string_numbers (
    id SERIAL PRIMARY KEY,
    num_text VARCHAR(10),
    name VARCHAR(55)
);

Sample Data
INSERT INTO string_numbers (num_text, name) VALUES
('10', 'olivia'),
('25', 'rodrigo'),
('7', 'maliken'),
('100', 'amunra'),
('50', 'jain');

Features

Connects Python to PostgreSQL using psycopg2

Demonstrates explicit type casting using CAST

Demonstrates PostgreSQL shortcut casting using ::

Converts string values to INTEGER

Converts string values to NUMERIC (decimal)

Casting Examples
SELECT num_text, CAST(num_text AS INTEGER)
FROM string_numbers;

SELECT num_text, num_text::INTEGER
FROM string_numbers;

SELECT num_text, CAST(num_text AS NUMERIC) AS decimal
FROM string_numbers;

SELECT num_text, num_text::NUMERIC AS decimal
FROM string_numbers;

How to Run

Open the project in PyCharm.

Make sure PostgreSQL is running.

Install psycopg2 if not yet installed:

pip install psycopg2


Update the database credentials in the Python file.

Run the Python script.

Query results will be displayed in the terminal.

Purpose

This project is intended for learning SQL type casting and understanding how PostgreSQL handles string-to-number conversions when used with Python applications.

IDE

This project was developed and tested using PyCharm.
