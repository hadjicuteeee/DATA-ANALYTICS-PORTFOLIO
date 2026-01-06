DROP TABLE IF EXISTS transactions;

CREATE TABLE transactions (
    id INT,
    user_id INT,
    product TEXT,
    category TEXT,
    amount NUMERIC,
    dates DATE,
    status TEXT
);

INSERT INTO transactions (id, user_id, product, category, amount, dates, status) VALUES
(1, 101, 'Burger', 'Food', 200, '2024-01-05', 'SUCCESS'),
(2, 102, 'Fries', 'Food', 150, '2024-01-10', 'SUCCESS'),
(3, 103, 'Laptop', 'Electronics', 300, '2024-02-03', 'SUCCESS'),
(4, 101, 'Soda', 'Drink', 50, '2024-02-15', 'FAILED'),
(5, 104, 'Monitor', 'Electronics', 400, '2024-02-20', 'SUCCESS'),
(6, 102, 'Coffee', 'Drink', 100, '2024-01-25', 'SUCCESS'),
(7, 105, 'Sandwich', 'Food', 250, '2024-03-02', 'SUCCESS'),
(8, 106, 'Headphones', 'Electronics', 350, '2024-03-15', 'SUCCESS'),
(9, 101, 'Pizza', 'Food', 300, '2024-03-20', 'SUCCESS'),
(10, 102, 'Tea', 'Drink', 120, '2024-03-22', 'SUCCESS');


CREATE TABLE users (
    user_id INT,
    first_name TEXT,
    last_name TEXT,
    role TEXT
);

INSERT INTO users (user_id, first_name, last_name, role) VALUES
(101, 'Alice', 'Reyes', 'Customer'),
(102, 'Bob', 'Santos', 'Customer'),
(103, 'Charlie', 'Dela Cruz', 'VIP'),
(104, 'Diana', 'Lopez', 'VIP'),
(105, 'Ethan', 'Martinez', 'Customer'),
(106, 'Fiona', 'Gomez', 'VIP');
