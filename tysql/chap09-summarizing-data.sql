SELECT AVG(prod_price) AS avg_price
FROM products;

SELECT AVG(prod_price) AS avg_price
FROM products
WHERE vend_id = 'DLL01';

SELECT COUNT(*) AS num_cust
FROM customers;

SELECT COUNT(cust_email) AS num_cust
FROM customers;

SELECT MAX(prod_price) AS max_price
FROM products;

SELECT MIN(prod_price) AS max_price
FROM products;

SELECT SUM(quantity) AS items_ordered
FROM orderitems
WHERE order_num = 20005;

SELECT SUM(item_price * quantity) AS items_ordered
FROM orderitems
WHERE order_num = 20005;

SELECT AVG(DISTINCT prod_price) AS avg_price
FROM products
WHERE vend_id = 'DLL01';

SELECT
	COUNT(*) AS num_items,
	MIN(Prod_price) AS price_min,
	MAX(prod_price) AS price_max,
	AVG(prod_price) AS price_avg
FROM products;

