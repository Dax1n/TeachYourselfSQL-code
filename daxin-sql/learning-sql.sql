-- SELECT shopid,count(1) AS "����������2" from sz_shop GROUP BY uv HAVING COUNT(1) >2
--  SELECT uv,shopid,amt from sz_shop ORDER BY amt DESC 
-- SELECT uv,shopid  from sz_shop ORDER BY amt DESC -- ���԰��շ�ѡ���н�������
-- ORDER BY ����ֶ���������������水��shopid��uv����ֻ�е�shopid����֮�������ͬshopid�Ķ����¼�Ż��ٰ���uv����
-- SELECT shopid,uv,amt from sz_shop ORDER BY shopid DESC ,UV DESC
-- ������λ��˳���������ORDER BY ��1��2�ֱ�ָSELECT�����1�����ڶ����ֶ�
-- SELECT shopid,uv,amt from sz_shop ORDER BY 1 DESC ,2 DESC
-- CONCAT �ַ���ƴ�Ӻ���
-- SELECT CONCAT("SHOP���Ϊ",shopid)  FROM sz_shop
-- L/RTRIM ȥ����ѯ��¼����߻����ұߵĿո�
-- SELECT LTRIM(CONCAT("     SHOP���Ϊ",shopid,"  ����  ") ) FROM sz_shop
-- SELECT RTRIM(CONCAT("SHOP���Ϊ",shopid,"  ����  ") ) FROM sz_shop
-- TRIM ȥ���������˵Ŀո�
-- SELECT TRIM(CONCAT("SHOP���Ϊ",shopid,"  ����  ") ) FROM sz_shop
-- ��������
-- SELECT AMT*UV AS "VALUE"  FROM sz_shop
-- SELECT AMT+UV AS "VALUE"  FROM sz_shop
-- SELECT AMT-UV AS "VALUE"  FROM sz_shop
-- �������Ϊ0�Ļ��򷵻�NULL
-- SELECT (AMT/UV) AS "VALUE"  FROM sz_shop
-- SELECT (AMT%UV) AS "VALUE"  FROM sz_shop
-- ��ȡ�ַ���
-- SELECT SUBSTRING(UV,1,2)  FROM sz_shop
-- SELECT SUBSTR(UV,1,2)  FROM sz_shop
-- �ֶδ�Сдת��
-- SELECT LOWER(ADDR)  FROM sz_shop
-- SELECT UPPER(ADDR)  FROM sz_shop
-- �����ַ�������
--  SELECT LENGTH(ADDR)  FROM sz_shop
-- ����������ȡ���
-- SELECT  YEAR(sdate) from sz_shop
-- SELECT  sdate,MONTH(sdate) from sz_shop
-- SELECT  sdate,HOUR(sdate) from sz_shop
-- SELECT  sdate,day(sdate) from sz_shop
-- SELECT  sdate,MINUTE(sdate) from sz_shop
-- SELECT  sdate,SECOND(sdate) from sz_shop
-- ���ڸ�ʽת�����������ڸ�ʽ�μ���http://www.w3school.com.cn/sql/func_date_format.asp
-- select sdate, DATE_FORMAT(sdate,"%Y:%m:%d %H:%i:%s") FROM sz_shop;
-- SELECT ABS(num1),ABS(num2),SIN(num1),COS(num2), EXP(num1) from math 
-- SELECT AVG(NUM1),AVG(NUM2) from math
-- COUNT(expr) ��expr��1������*ʱ�� nullҲ�������ڣ����ǵ�expr������ʱ��null�ų�
-- SELECT COUNT(NUM1),COUNT(1) from math
-- ���1 ��sum(num1)�Ƕ����е�num1������ͣ�sum(DISTINCT num1) ����distinct֮�������
--  SELECT   sum(num1) ,sum(DISTINCT num1) from math
-- SELECT   count(num1) ,count(DISTINCT num1) from math
-- count(DISTINCT 1) ��ѯ�����1 count(DISTINCT colName) 
-- SELECT   count( num1),count(DISTINCT num1) ,count(DISTINCT 1) from math
-- SELECT COUNT(num1),COUNT(1) from math
-- SELECT MAX(NUM1),MIN(NUM2),SUM(NUM1),SUM(1) from math
-- ����ÿһ�����UV�ܺ�
-- SELECT SUM(UV) FROM sz_shop GROUP BY UV
-- WHERE �� HAVING ����  WHERE�����У�HAVING���˷���
-- �ع�һ��SELECT�Ӿ���ֵ�˳��SELECT FROM WHERE GROUP BY HAVING ORDER BY
-- �Ӳ�ѯ�Ĵ������������⣬�����Ӳ�ѯȻ��������ѯ
-- �Ӳ�ѯע������Ӳ�ѯֻ�ܲ�ѯ�����У���ͼ��������н��ᱨ��
-- �Ӳ�ѯ����Ӧ����SELECT��ѯ��
-- SELECT cust_name, cust_state, ( SELECT COUNT(*) FROM orders WHERE orders.cust_id = customers.cust_id ) AS orders FROM customers ORDER BY cust_name;
-- SELECT * FROM VENDORS
-- SELECT * FROM products
-- ����������һ����ͬ���ֵ��ֶ�ʱ�򣬱���ʹ����ȫ�޶����ķ�ʽ��������ÿһ���ֶγ�����ĳһ�ű��������
-- ʹ��WHERE�����������Ӳ�ѯ�����û��WHERE�Ӿ�Ļ��� ��һ�����ÿһ�ж���͵ڶ������ÿһ�н���ƥ��.��ʵ���ǵѿ������ļ���
-- SELECT VEND_NAME,PROD_NAME FROM VENDORS ,products  WHERE products.VEND_ID =VENDORS.VEND_ID
-- SELECT count(1) FROM VENDORS ,products   -- �ѿ������ļ���
-- SELECT count(1) FROM VENDORS ,products WHERE products.VEND_ID =VENDORS.VEND_ID

-- ���µ�����Ҳ�е�ֵ���ӣ���ͨ���ֶ�ֵ�еȽ��С�Ҳ����������
-- ���Ӳ����ȽϺķ���Դ����Ҫ���Ӳ���Ҫ�ı��������ܻ�ǳ���
-- SELECT VEND_NAME,PROD_NAME FROM VENDORS ,products  WHERE products.VEND_ID =VENDORS.VEND_ID
-- SELECT VEND_NAME,PROD_NAME FROM VENDORS INNER JOIN PRODUCTS ON  PRODUCTS.VEND_ID =VENDORS.VEND_ID







-- ==================================�ָ���==================================
-- ���������ݿ�ϵͳ���۵�ѧϰ�ʼ�
--  ���Ӳ�ѯ��������ֵ��ѯ��ǵ�ֵ��ѯ��
-- ��ֵ��ѯ������ν��Ϊ��=�� ��Ҳ����������
-- �ǵ�ֵ��ѯ������ѯ������ν�ʲ�Ϊ=ʱ������ǵ�ֵ��ѯ
-- ����ν���е��������������ֶ�


-- �������� �����Ӳ�������������������֮��������ӣ�Ҳ����һ���� ������������ӡ�


-- �����ӣ����������������ʱ�򣬱�A�д��ڵļ�¼�ڱ�B�в����ڣ��򵱽�������ʱ��ͨ����������A�д��ڶ���B�в����ڵļ�¼��Ϊ�˿��Ա�����A�д��ڱ�B�����ڵļ�¼�Ļ������ǿ���ʹ�������ӡ���A�д��ڱ�B�в����ڵļ�¼��ѯ������ʱ���B�е�ֵ���NULL

-- �����Ӱ����������������������ӡ������������£�

-- �������ӣ��г���߹�ϵ�е�����Ԫ��
-- �������ӣ��г��ұ߹�ϵ�е�����Ԫ��

-- ������ӣ�ʹ��WHERE������������������

-- null������Ҫʹ��IS NULL ����IS NOT NULL
-- SELECT * FROM sz_shop WHERE sdate IS NOT NULL 



-- 



















