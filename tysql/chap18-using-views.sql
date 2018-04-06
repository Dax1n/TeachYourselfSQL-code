SELECT cust_name, cust_contact
FROM customers, orders, orderitems
WHERE customers.cust_id = orders.cust_id
AND orderitems.order_num = orders.order_num
AND prod_id = 'RGAN01';

CREATE VIEW ProductCustomers AS
SELECT cust_name, cust_contact, prod_id
FROM customers, orders, orderitems
WHERE customers.cust_id = orders.cust_id
AND orderitems.order_num = orders.order_num;

SELECT cust_name, cust_contact
FROM ProductCustomers
WHERE prod_id = 'RGAN01';

SELECT CONCAT(vend_name, ' (', vend_country, ')') AS vend_titile
FROM vendors
ORDER BY vend_name;

CREATE VIEW VendorLocations AS
SELECT CONCAT(vend_name, ' (', vend_country, ')') AS vend_titile
FROM vendors;

SELECT *
FROM vendorlocations;

CREATE VIEW CustomerEMailList AS
SELECT cust_id, cust_name, cust_email
FROM customers
WHERE cust_email IS NOT NULL;

SELECT *
FROM customeremaillist;


SELECT prod_id, quantity, item_price, quantity*item_price AS expanded_price
FROM orderitems
WHERE order_num = 20008;

CREATE VIEW OrderItemsExpanded AS
SELECT order_num, prod_id, quantity, item_price, quantity*item_price AS expanded_price
FROM orderitems;

SELECT *
FROM OrderItemsExpanded
WHERE order_num = 20008;





