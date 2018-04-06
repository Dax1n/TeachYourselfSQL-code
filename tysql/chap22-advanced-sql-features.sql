ALTER TABLE vendors
ADD CONSTRAINT PRIMARY KEY (vend_id);

ALTER TABLE orders
ADD CONSTRAINT
FOREIGN KEY (cust_id) REFERENCES customers (cust_id);

-- UNIQUE

ALTER TABLE customers
ADD CONSTRAINT CHECK (gender LIKE '[MF]');


CREATE INDEX prod_name_ind
ON products (prod_name);

/*
CREATE TRIGGER customer_state
...
*/

-- GRANT

-- REVOKE







