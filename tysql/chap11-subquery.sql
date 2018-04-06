SELECT order_num
FROM orderitems
WHERE prod_id = 'RGAN01';

SELECT cust_id
FROM orders
WHERE order_num IN (
		SELECT order_num
		FROM orderitems
		WHERE prod_id = 'RGAN01');

SELECT cust_name, cust_contact
FROM customers
WHERE cust_id IN (
		SELECT cust_id
		FROM orders
		WHERE order_num IN (
				SELECT order_num
				FROM orderitems
				WHERE prod_id = 'RGAN01'));

SELECT COUNT(*) AS orders
FROM orders
WHERE cust_id = '1000000001';

SELECT cust_name, cust_state, 
		(SELECT COUNT(*)
		FROM orders
		WHERE orders.cust_id = customers.cust_id) AS orders
FROM customers
ORDER BY cust_name;
















