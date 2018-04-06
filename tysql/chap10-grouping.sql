SELECT COUNT(*) AS num_prods
FROM products
WHERE vend_id = 'DLL01';

SELECT vend_id, COUNT(*) AS num_prods
FROM products
GROUP BY vend_id;

SELECT cust_id, COUNT(*) AS orders
FROM orders
GROUP BY cust_id
HAVING orders >= 2;

SELECT vend_id, COUNT(*) AS num_prods
FROM products
WHERE prod_price >= 4
GROUP BY vend_id
HAVING COUNT(*) >= 2;

SELECT vend_id, COUNT(*) AS num_prods
FROM products
GROUP BY vend_id
HAVING COUNT(*) >= 2;

SELECT order_num, COUNT(*) AS items
FROM orderitems
GROUP BY order_num
HAVING COUNT(*) >= 3;

SELECT order_num, COUNT(*) AS items
FROM orderitems
GROUP BY order_num
HAVING COUNT(*) >= 3
ORDER BY items, order_num;

/*
SELECT 返回列或表达式
FROM 检索数据表
WHERE 行级过滤
GROUP BY 分组说明
HAVING 组级过滤
ORDER BY 输出排序
*/






