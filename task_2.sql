CREATE TABLE IF NOT EXISTS books(
book_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(130) NOT NULL,
price DOUBLE,
publication_date DATE,
FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE IF NOT EXISTS authors(
author_id INT AUTO_INCREMENT PRIMARY KEY,
author_name VARCHAR(215) NOT NULL
);

CREATE TABLE IF NOT EXISTS customers(
customer_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(215) NOT NULL,
email VARCHAR(215) UNIQUE,
address TEXT
);

CREATE TABLE IF NOT EXISTS orders(
order_id INT AUTO_INCREMENT PRIMARY KEY,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
order_date DATE
);

CREATE TABLE IF NOT EXISTS order_details(
orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (book_id) REFERENCES Books(book_id),
quantity DOUBLE
);
