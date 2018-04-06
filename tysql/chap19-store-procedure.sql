/*
EXECUTE AddNewProduct('JTS01',
'Stuffed Eiffel Tower',
6.49,
'Plush stuffed toy with the text La Tour Eiffel in red white and blue');


CREATE PROCEDURE MaillingListCount(
	ListCount OUT INTEGER
)
IS
v_rows INTEGER;
BEGIN
	SELECT COUNT(*) INTO v_rows
	FROM customers
	WHERE NOT cust_email IS NULL:
	ListCount := v_rows;
END:
*/