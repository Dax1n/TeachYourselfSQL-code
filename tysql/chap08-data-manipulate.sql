SELECT vend_name, UPPER(vend_name) AS vend_name_upcase
FROM vendors
ORDER BY vend_name;

SELECT cust_name, cust_contact
FROM customers
WHERE cust_contact = 'Michael Green';

SELECT cust_name, cust_contact
FROM customers
WHERE SOUNDEX(cust_contact) = SOUNDEX('Michael Green');

SELECT SOUNDEX('Michael Green'), SOUNDEX('Michelle Green');

SELECT order_num
FROM orders
WHERE YEAR(order_date) = 2012;

SELECT PI();










