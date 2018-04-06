INSERT INTO customers
VALUES
    (
        '1000000006',
        'Toy Land',
        '123 Any Street',
        'New York',
        'NY',
        '11111',
        'USA',
        NULL,
        NULL
    );

INSERT INTO Customers (
    cust_id,
    cust_name,
    cust_address,
    cust_city,
    cust_state,
    cust_zip,
    cust_country,
    cust_contact,
    cust_email
)
VALUES
    (
        '1000000006',
        'Toy Land',
        '123 Any Street',
        'New York',
        'NY',
        '11111',
        'USA',
        NULL,
        NULL
    );

INSERT INTO Customers (
    cust_id,
    cust_name,
    cust_address,
    cust_city,
    cust_state,
    cust_zip,
    cust_country,

)
VALUES
    (
        '1000000006',
        'Toy Land',
        '123 Any Street',
        'New York',
        'NY',
        '11111',
        'USA',

    );


/*
INSERT INTO Customers (
    cust_id,
    cust_contact,
      cust_email,
    cust_name,
    cust_address,
    cust_city,
    cust_state,
    cust_zip,
    cust_country
) SELECT
    cust_id,
    cust_contact,
    cust_email,
    cust_name,
    cust_address,
    cust_city,
    cust_state,
    ust_zip,
    cust_country
FROM
    CustNew;
*/

CREATE TABLE CustCopy AS
SELECT * FROM customers;





