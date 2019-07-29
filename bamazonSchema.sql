DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;
USE bamazon;

CREATE TABLE products (
  id  INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(45) NULL,
  department_name VARCHAR(45) NULL,
  price int(15) NOT NULL,
  stock_quantity int(10) NOT NULL,
  PRIMARY KEY (id)
  );
  DROP TABLE songs;
  
  

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Samsung S10+', 'Cellphones', '18999', '20'), ('Xiaomi Redmi Note 7 128GB', 'Cellphones', '4699', '100'), ('Apple Airpods Wireless', 'Audio', '3699', '50'), ('Apple iPhone XR 64GB Red', 'Cellphones', '16999', '25'), ('Huawei P30 Lite 128GB', 'Cellphones', '6499', '35'), ('Apple iPad Mini 4', 'Computing', '10699', '25'), ('Bose Soundlink Revolve+', 'Audio', '6499', '80'), ('Apple iPhone XS 64GB', 'Cellphones', '19999', '30'), ('Samsung A30', 'Cellphones', '4299', '30'), ('Samsung Galaxy Buds', 'Audio', '2799', '80');

SELECT * FROM products;