SELECT CONCAT(vend_name, ' (', vend_country, ')')
FROM vendors
ORDER BY vend_name;

SELECT CONCAT(vend_name, ' (', vend_country, ')') AS vend_titile
FROM vendors
ORDER BY vend_name;

SELECT prod_id, quantity, item_price, quantity*item_price AS expanded_price
FROM orderitems
WHERE order_num = 20008;


SELECT 3 * 2;

SELECT TRIM('    abc  ');

SELECT NOW();







