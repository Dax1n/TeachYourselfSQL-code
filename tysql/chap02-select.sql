SELECT prod_id, prod_name, prod_price
FROM products;

SELECT *
FROM products;

SELECT vend_id
FROM products;

SELECT DISTINCT vend_id
FROM products;

SELECT prod_name
FROM products;

SELECT prod_name
FROM products
LIMIT 5;

SELECT prod_name
FROM products
LIMIT 5 OFFSET 5;

SELECT prod_name 
FROM products
LIMIT 3,4;
