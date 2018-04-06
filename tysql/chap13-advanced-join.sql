SELECT CONCAT(vend_name, ' (', vend_country, ')') AS vend_titile
FROM vendors
ORDER BY vend_name;

SELECT cust_name, cust_contact
FROM customers AS C, orders AS O, orderitems AS OI
WHERE C.cust_id = O.cust_id
AND OI.order_num = O.order_num
AND prod_id = 'RGAN01';

SELECT cust_id, cust_name, cust_contact
FROM customers
WHERE cust_name = (SELECT cust_name
										FROM customers
										WHERE cust_contact = 'Jim Jones');

SELECT c1.cust_id, c1.cust_name, c1.cust_contact
FROM customers AS c1, customers AS c2
WHERE c1.cust_name = c2.cust_name
AND c2.cust_contact = 'Jim Jones';

SELECT c.*, o.order_num, o.order_date,
				oi.prod_id, oi.quantity, OI.item_price
FROM customers AS C, orders AS O, orderitems AS OI
WHERE C.cust_id = O.cust_id
AND OI.order_num = O.order_num
AND prod_id = 'RGAN01';

SELECT customers.cust_id, orders.order_num
FROM customers INNER JOIN orders
ON customers.cust_id = orders.cust_id;
/*
cust_id	order_num
1000000001	20005
1000000001	20009
1000000003	20006
1000000004	20007
1000000005	20008
*/

SELECT customers.cust_id, orders.order_num
FROM customers LEFT OUTER JOIN orders
ON customers.cust_id = orders.cust_id;
/*
cust_id	order_num
1000000001	20005
1000000001	20009
1000000002	
1000000003	20006
1000000004	20007
1000000005	20008
*/

SELECT customers.cust_id, orders.order_num
FROM orders RIGHT OUTER JOIN customers
ON customers.cust_id = orders.cust_id;
/*
cust_id	order_num
1000000001	20005
1000000001	20009
1000000002	
1000000003	20006
1000000004	20007
1000000005	20008
*/

SELECT customers.cust_id, COUNT(orders.order_num) AS num_ord
FROM customers INNER JOIN orders
ON customers.cust_id = orders.cust_id
GROUP BY customers.cust_id;

SELECT customers.cust_id, COUNT(orders.order_num) AS num_ord
FROM customers LEFT OUTER JOIN orders
ON customers.cust_id = orders.cust_id
GROUP BY customers.cust_id;






