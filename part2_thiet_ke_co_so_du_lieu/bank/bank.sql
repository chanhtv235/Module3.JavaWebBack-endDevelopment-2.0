create database `bank`;
CREATE TABLE customers(
   customer_id INT AUTO_INCREMENT,
   fullname VARCHAR(50),
   address VARCHAR(50),
   emaile VARCHAR(50),
   phone VARCHAR(50),
   PRIMARY KEY(customer_id)
);
CREATE TABLE accounts(
   account_id INT NOT NULL,
   account_type VARCHAR(50),
   date_open date,
   blance int,
   customer_id INT,
   PRIMARY KEY(account_id),
   FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
   );
   CREATE TABLE transactions(
   transaction_id INT NOT NULL,
   information VARCHAR(50),
   date_transtion date,
   amounts int,
   account_id INT,
   PRIMARY KEY(transaction_id),
   FOREIGN KEY(account_id) REFERENCES accounts(account_id)
   );
   