
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

-- SELECT COUNT(num1),COUNT(1) from math
-- SELECT MAX(NUM1),MIN(NUM2),SUM(NUM1),SUM(1) from math





















