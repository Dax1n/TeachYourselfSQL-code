DECLARE CustCursor CURSOR
FOR
SELECT * FROM customers
WHERE cust_email IS NULL;

OPEN CURSOR CustCursor

CLOSE CustCursor












