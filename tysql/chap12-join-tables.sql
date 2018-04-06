SELECT vend_name, prod_name, prod_price
FROM vendors, products
WHERE vendors.vend_id = products.vend_id;

SELECT vend_name, prod_name, prod_price
FROM vendors, products;

SELECT vend_name, prod_name, prod_price
FROM vendors INNER JOIN products
ON vendors.vend_id = products.vend_id;

SELECT prod_name, vend_name, prod_price, quantity
FROM orderitems, products, vendors
WHERE products.vend_id = vendors.vend_id
AND orderitems.prod_id = products.prod_id
AND order_num = 20007;

SELECT cust_name, cust_contact
FROM customers
WHERE cust_id IN (
		SELECT cust_id
		FROM orders
		WHERE order_num IN (
				SELECT order_num
				FROM orderitems
				WHERE prod_id = 'RGAN01'));

SELECT cust_name, cust_contact
FROM customers, orders, orderitems
WHERE customers.cust_id = orders.cust_id
AND orderitems.order_num = orders.order_num
AND prod_id = 'RGAN01';


