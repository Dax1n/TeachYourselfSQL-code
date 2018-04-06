-- ---------------------
-- Create Products table
-- ---------------------
CREATE TABLE Products
(
  prod_id    char(10)      NOT NULL ,
  vend_id    char(10)      NOT NULL ,
  prod_name  char(255)     NOT NULL ,
  prod_price decimal(8,2)  NOT NULL ,
  prod_desc  text          NULL 
);

-- -------------------
-- Create Orders table
-- -------------------
CREATE TABLE Orders
(
  order_num  int      NOT NULL ,
  order_date datetime NOT NULL ,
  cust_id    char(10) NOT NULL 
);

-- --------------------
-- Create Vendors table
-- --------------------
CREATE TABLE Vendors
(
  vend_id      char(10) NOT NULL ,
  vend_name    char(50) NOT NULL ,
  vend_address char(50) NULL ,
  vend_city    char(50) NULL ,
  vend_state   char(5)  NULL ,
  vend_zip     char(10) NULL ,
  vend_country char(50) NULL 
);

ALTER TABLE vendors
ADD vend_phone CHAR(20);

ALTER TABLE vendors
DROP COLUMN vend_phone;

-- DROP TABLE custcopy;


