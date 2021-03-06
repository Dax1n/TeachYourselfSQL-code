-- SELECT shopid,count(1) AS "订单数大于2" from sz_shop GROUP BY uv HAVING COUNT(1) >2
--  SELECT uv,shopid,amt from sz_shop ORDER BY amt DESC 
-- SELECT uv,shopid  from sz_shop ORDER BY amt DESC -- 可以按照非选择列进行排序
-- ORDER BY 多个字段排序规则：例如下面按照shopid与uv排序，只有当shopid排序之后存在相同shopid的多个记录才会再按照uv排序
-- SELECT shopid,uv,amt from sz_shop ORDER BY shopid DESC ,UV DESC
-- 按照列位置顺序进行排序，ORDER BY 的1与2分别指SELECT后面第1个，第二个字段
-- SELECT shopid,uv,amt from sz_shop ORDER BY 1 DESC ,2 DESC
-- CONCAT 字符串拼接函数
-- SELECT CONCAT("SHOP编号为",shopid)  FROM sz_shop
-- L/RTRIM 去掉查询记录的左边或者右边的空格
-- SELECT LTRIM(CONCAT("     SHOP编号为",shopid,"  店铺  ") ) FROM sz_shop
-- SELECT RTRIM(CONCAT("SHOP编号为",shopid,"  店铺  ") ) FROM sz_shop
-- TRIM 去掉左右两端的空格
-- SELECT TRIM(CONCAT("SHOP编号为",shopid,"  店铺  ") ) FROM sz_shop
-- 算数运算
-- SELECT AMT*UV AS "VALUE"  FROM sz_shop
-- SELECT AMT+UV AS "VALUE"  FROM sz_shop
-- SELECT AMT-UV AS "VALUE"  FROM sz_shop
-- 如果除数为0的话则返回NULL
-- SELECT (AMT/UV) AS "VALUE"  FROM sz_shop
-- SELECT (AMT%UV) AS "VALUE"  FROM sz_shop
-- 截取字符串
-- SELECT SUBSTRING(UV,1,2)  FROM sz_shop
-- SELECT SUBSTR(UV,1,2)  FROM sz_shop
-- 字段大小写转换
-- SELECT LOWER(ADDR)  FROM sz_shop
-- SELECT UPPER(ADDR)  FROM sz_shop
-- 返回字符串长度
--  SELECT LENGTH(ADDR)  FROM sz_shop
-- 日期里面提取年份
-- SELECT  YEAR(sdate) from sz_shop
-- SELECT  sdate,MONTH(sdate) from sz_shop
-- SELECT  sdate,HOUR(sdate) from sz_shop
-- SELECT  sdate,day(sdate) from sz_shop
-- SELECT  sdate,MINUTE(sdate) from sz_shop
-- SELECT  sdate,SECOND(sdate) from sz_shop
-- 日期格式转换，各个日期格式参见：http://www.w3school.com.cn/sql/func_date_format.asp
-- select sdate, DATE_FORMAT(sdate,"%Y:%m:%d %H:%i:%s") FROM sz_shop;
-- SELECT ABS(num1),ABS(num2),SIN(num1),COS(num2), EXP(num1) from math 
-- SELECT AVG(NUM1),AVG(NUM2) from math
-- COUNT(expr) 当expr是1或者是*时候 null也包括在内，但是单expr是列名时候null排除
-- SELECT COUNT(NUM1),COUNT(1) from math
-- 相差1 ，sum(num1)是对所有的num1进行求和，sum(DISTINCT num1) 是先distinct之后在求和
--  SELECT   sum(num1) ,sum(DISTINCT num1) from math
-- SELECT   count(num1) ,count(DISTINCT num1) from math
-- count(DISTINCT 1) 查询结果是1 count(DISTINCT colName) 
-- SELECT   count( num1),count(DISTINCT num1) ,count(DISTINCT 1) from math
-- SELECT COUNT(num1),COUNT(1) from math
-- SELECT MAX(NUM1),MIN(NUM2),SUM(NUM1),SUM(1) from math
-- 计算每一个组的UV总和
-- SELECT SUM(UV) FROM sz_shop GROUP BY UV
-- WHERE 与 HAVING 区别：  WHERE过滤行，HAVING过滤分组
-- 回顾一下SELECT子句出现的顺序：SELECT FROM WHERE GROUP BY HAVING ORDER BY
-- 子查询的处理是由内向外，先做子查询然后再外层查询
-- 子查询注意事项：子查询只能查询单个列，企图检索多个列将会报错
-- 子查询可以应用在SELECT查询中
-- SELECT cust_name, cust_state, ( SELECT COUNT(*) FROM orders WHERE orders.cust_id = customers.cust_id ) AS orders FROM customers ORDER BY cust_name;
-- SELECT * FROM VENDORS
-- SELECT * FROM products
-- 当两个表共存一个相同名字的字段时候，必须使用完全限定名的方式进行限制每一个字段出自于某一张表避免歧义
-- 使用WHERE条件进行连接查询，如果没有WHERE子句的话则 第一个表的每一行都会和第二个表的每一行进行匹配.其实就是笛卡尔积的计算
-- SELECT VEND_NAME,PROD_NAME FROM VENDORS ,products  WHERE products.VEND_ID =VENDORS.VEND_ID
-- SELECT count(1) FROM VENDORS ,products   -- 笛卡尔积的计算
-- SELECT count(1) FROM VENDORS ,products WHERE products.VEND_ID =VENDORS.VEND_ID

-- 如下的连接也叫等值连接，是通过字段值判等进行。也叫作内连接
-- 连接操作比较耗费资源，不要连接不必要的表，否则性能会非常差
-- SELECT VEND_NAME,PROD_NAME FROM VENDORS ,products  WHERE products.VEND_ID =VENDORS.VEND_ID
-- SELECT VEND_NAME,PROD_NAME FROM VENDORS INNER JOIN PRODUCTS ON  PRODUCTS.VEND_ID =VENDORS.VEND_ID







-- ==================================分隔符==================================
-- 如下是数据库系统概论的学习笔记
--  连接查询，包括等值查询与非等值查询。
-- 等值查询：连接谓词为“=” ，也叫作内连接
-- 非等值查询：当查询的连接谓词不为=时候称作非等值查询
-- 连接谓词中的列名叫做连接字段


-- 自身连接 ：连接操作不仅可以在两个表之间进行连接，也可以一个表 与自身进行连接。


-- 外连接：当两个表进行连接时候，表A中存在的记录在表B中不存在，则当进行连接时候通常会舍弃表A中存在而表B中不存在的记录。为了可以保留表A中存在表B不存在的记录的话，我们可以使用外连接。表A中存在表B中不存在的记录查询出来的时候表B中的值填充NULL

-- 外连接包含：左外连接与右外连接。具体区别如下：

-- 左外连接：列出左边关系中的所有元组
-- 右外连接：列出右边关系中的所有元组

-- 多表连接：使用WHERE条件将多个表进行连接

-- null处理需要使用IS NULL 或者IS NOT NULL
-- SELECT * FROM sz_shop WHERE sdate IS NOT NULL 



-- 



















