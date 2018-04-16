
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

-- SELECT COUNT(num1),COUNT(1) from math
-- SELECT MAX(NUM1),MIN(NUM2),SUM(NUM1),SUM(1) from math






















