CREATE DATABASE online_auction;

USE online_auction;

CREATE TABLE ADMIN (
admin_id	INT (5) NOT NULL,
email		VARCHAR (25),
phone_number	VARCHAR (10) NOT NULL,
PASSWORD	VARCHAR (10) NOT NULL,
PRIMARY KEY (admin_id)
);

CREATE TABLE USER (
user_id 	INT (5)			NOT NULL,
email		VARCHAR (25)	NOT NULL,
role		VARCHAR (15),
address		VARCHAR (30),
fname		VARCHAR (15)	NOT NULL,
lname		VARCHAR (15)	NOT NULL,
PASSWORD	VARCHAR (10)	NOT NULL,
phone_number	VARCHAR (10)	NOT NULL,
managed_by	INT (5),
PRIMARY KEY (user_id), 
FOREIGN KEY (managed_by) REFERENCES ADMIN (admin_id)
);

CREATE TABLE SELLER (
seller_id	INT (5)		NOT NULL,
user_id		INT (5)		NOT NULL,
routing_Number	VARCHAR (9)	NOT NULL,
account_Number	VARCHAR (12)	NOT NULL,
PRIMARY KEY (seller_id),
FOREIGN KEY (user_id) REFERENCES USER (user_id)
);

CREATE TABLE BUYER (
buyer_id 		INT (5)	NOT NULL,
user_id		INT (5)		NOT NULL,
shipping_Address	VARCHAR (30),
PRIMARY KEY (buyer_id),
FOREIGN KEY (user_id) REFERENCES USER (user_id)
);

CREATE TABLE CATEGORY (
category_id 	INT(5)	NOT NULL,
category_name 	VARCHAR(20)	NOT NULL,
created_by	INT(5)	NOT NULL,
PRIMARY KEY (category_id),
FOREIGN KEY (created_by) REFERENCES ADMIN(admin_id)
);

CREATE TABLE SUBCATEGORY (
sub_category_id 	INT(5)	NOT NULL,
sub_category_name	VARCHAR(15)	NOT NULL,
category_id		INT(5),
PRIMARY KEY (sub_category_id),
FOREIGN KEY (category_id) REFERENCES CATEGORY(category_id)
);

CREATE TABLE PRODUCT (
product_id	INT(5)	NOT NULL,
product_name 	VARCHAR(20)	NOT NULL,
product_info 	VARCHAR(500),
initial_bid_price INT		NOT NULL,
max_bid_price 	INT		NOT NULL,
managed_by 	INT(5)	NOT NULL,
sub_category_id	INT(5)	NOT NULL,
PRIMARY KEY (product_id),
FOREIGN KEY (managed_by) REFERENCES ADMIN(admin_id),
FOREIGN KEY (sub_category_id) REFERENCES SUBCATEGORY(sub_category_id)
);

CREATE TABLE FEEDBACK(
feedback_id INT(5) NOT NULL,
seller_id 	INT(5) NOT NULL,
buyer_id 	INT(5) NOT NULL,
product_id 	INT(5) NOT NULL,
feedback_time 	DATETIME ,
rating 		INT,
comments 	VARCHAR(250),
PRIMARY KEY (feedback_id),
FOREIGN KEY (seller_id) REFERENCES SELLER(seller_id),
FOREIGN KEY (buyer_id) REFERENCES BUYER(buyer_id),
FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id)
);

CREATE TABLE AUCTIONS (
auction_id 	INT(5) NOT NULL,
seller_id 	INT(5) NOT NULL,
product_id 	INT(5) NOT NULL,
auction_date 	DATETIME NOT NULL,
expiration_date DATETIME,
PRIMARY KEY (auction_id),
FOREIGN KEY (seller_id) REFERENCES SELLER(seller_id),
FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id)
);

CREATE TABLE BIDS(
bids_id     INT(5) NOT NULL,
buyer_id	INT(5) NOT NULL,
product_id 	INT(5) NOT NULL,
bid_time 	DATETIME,
bid_price 	INT,
PRIMARY KEY (bids_id),
FOREIGN KEY (buyer_id) REFERENCES BUYER(buyer_id),
FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id)
);

CREATE TABLE CONTACTMESSAGES(	
contactmessages_id	INT(5) NOT NULL,
seller_id INT(5) NOT NULL,
buyer_id INT(5) NOT NULL,
product_id INT(5) NOT NULL,
message_time DATETIME NOT NULL,
messages VARCHAR(250),
PRIMARY KEY (contactmessages_id),
FOREIGN KEY (seller_id) REFERENCES SELLER(seller_id),
FOREIGN KEY (buyer_id) REFERENCES BUYER(buyer_id),
FOREIGN KEY (product_id) REFERENCES PRODUCT(product_id)
);

INSERT INTO ADMIN(admin_id,email,phone_number,PASSWORD) VALUES(1,'xyz@gmail.com',845679345,'ujh78');
SELECT * FROM admin;
INSERT INTO CATEGORY (category_id,category_name,created_by) VALUES (1,'sports',001);
INSERT INTO CATEGORY (category_id,category_name,created_by) VALUES (2,'Decor',001);
INSERT INTO CATEGORY (category_id,category_name,created_by) VALUES (3,'Electonics',001);
INSERT INTO CATEGORY (category_id,category_name,created_by) VALUES (4,'Clothing',001);
INSERT INTO CATEGORY (category_id,category_name,created_by) VALUES (5,'Stationery',001);
SELECT * FROM CATEGORY;

INSERT INTO SUBCATEGORY (sub_category_id,sub_category_name,category_id) VALUES (1,'equipment',1);
INSERT INTO SUBCATEGORY (sub_category_id,sub_category_name,category_id) VALUES (2,'Phones',3);
INSERT INTO SUBCATEGORY (sub_category_id,sub_category_name,category_id) VALUES (3,'Sports wear',1);
INSERT INTO SUBCATEGORY (sub_category_id,sub_category_name,category_id) VALUES (4,'Fountain pens',5);
INSERT INTO SUBCATEGORY (sub_category_id,sub_category_name,category_id) VALUES (5,'furniture',2);
SELECT * FROM SUBCATEGORY;

INSERT INTO PRODUCT (product_id,product_name,product_info,initial_bid_price,max_bid_price,managed_by,sub_category_id) VALUES (1,'Tennis Raquet','Brand - Yonex',15,40,001,1);
INSERT INTO PRODUCT (product_id,product_name,product_info,initial_bid_price,max_bid_price,managed_by,sub_category_id) VALUES (2,'Sofa set','Brown leather recliner sofa set',3000,6000,001,4);
INSERT INTO PRODUCT (product_id,product_name,product_info,initial_bid_price,max_bid_price,managed_by,sub_category_id) VALUES (3,'I-Phone 11','Color - red',600,850,001,2);
INSERT INTO PRODUCT (product_id,product_name,product_info,initial_bid_price,max_bid_price,managed_by,sub_category_id) VALUES (4,'Lamy safari pen','gold nib, rotator refil, additional ink bottle',100,280,001,4);
INSERT INTO PRODUCT (product_id,product_name,product_info,initial_bid_price,max_bid_price,managed_by,sub_category_id) VALUES (5,'One Plus 9','Android with the latest oxygen OS, fast charger',1500,3000,001,2);
UPDATE PRODUCT SET product_info = 'Brand - Yonex' WHERE product_id = 'P001';
SELECT * FROM PRODUCT;

INSERT INTO USER (user_id,email,role,address,fname,lname,PASSWORD,phone_number,managed_by) VALUES (101,'rohan@gmail.com','buyer','dallas','rohan','taylor','rohan@101','4561237890',1);
INSERT INTO USER (user_id,email,role,address,fname,lname,PASSWORD,phone_number,managed_by) VALUES (102,'adit@gmail.com','buyer','austin','adit','harris','adit@102','9721237890',1);
INSERT INTO USER (user_id,email,role,address,fname,lname,PASSWORD,phone_number,managed_by) VALUES (103,'jose@gmail.com','buyer','new york','jose','miller','jose@103','4575217890',1);
INSERT INTO USER (user_id,email,role,address,fname,lname,PASSWORD,phone_number,managed_by) VALUES (201,'stony@gmail.com','seller','virginia','stony','johnson','stony@201','8761237845',1);
INSERT INTO USER (user_id,email,role,address,fname,lname,PASSWORD,phone_number,managed_by) VALUES (202,'rose@gmail.com','seller','dallas','rose','collymore','rose@202','4781245210',1);
INSERT INTO USER (user_id,email,role,address,fname,lname,PASSWORD,phone_number,managed_by) VALUES (203,'finch@gmail.com','seller','boston','finch','steller','finch@203','9761237894',1);

SELECT * FROM USER

INSERT INTO SELLER (seller_id, user_id, routing_Number, account_Number) VALUES (1,201,'145623879','654258963185');
INSERT INTO SELLER (seller_id, user_id, routing_Number, account_Number) VALUES (2,202,'987612879','753258963100');
INSERT INTO SELLER (seller_id, user_id, routing_Number, account_Number) VALUES (3,203,'687423887','221258963420');

SELECT * FROM SELLER;

INSERT INTO BUYER (buyer_id, user_id, shipping_Address) VALUES (1,101,'dallas');
INSERT INTO BUYER (buyer_id, user_id, shipping_Address) VALUES (2,102,'austin');
INSERT INTO BUYER (buyer_id, user_id, shipping_Address) VALUES (3,103,'new york');

SELECT * FROM BUYER;

INSERT INTO AUCTIONS VALUES(1,2,1,'2021-10-6','2021-10-13');
INSERT INTO AUCTIONS VALUES(2,1,3,'2021-10-1','2021-10-8');
INSERT INTO AUCTIONS VALUES(3,3,4,'2021-10-2','2021-10-9');
INSERT INTO AUCTIONS VALUES(4,2,2,'2021-10-1','2021-10-8');
INSERT INTO AUCTIONS VALUES(5,3,5,'2021-10-10','2021-10-17');

SELECT * FROM auctions;

INSERT INTO BIDS VALUES(1,1,2,'2020-10-3',35);
INSERT INTO BIDS VALUES(2,3,4,'2020-10-6',60);
INSERT INTO BIDS VALUES(3,2,2,'2020-10-6',60);
INSERT INTO BIDS VALUES(4,3,1,'2020-10-10',100);
INSERT INTO BIDS VALUES(5,2,5,'2020-10-12',50);
INSERT INTO BIDS VALUES(6,2,3,'2020-10-5',75);
INSERT INTO BIDS VALUES(7,1,4,'2020-10-6',120);
INSERT INTO BIDS VALUES(8,2,1,'2020-10-10',200);
INSERT INTO BIDS VALUES(9,1,5,'2020-10-12',150);
INSERT INTO BIDS VALUES(10,3,3,'2020-10-5',150);

SELECT * FROM bids ORDER BY `product_id` ASC;


INSERT INTO contactmessages VALUES(1,1,2,3,'2020-10-6','Buyer -> Hey is this product still available?');
INSERT INTO contactmessages VALUES(2,1,2,3,'2020-10-7','Seller -> yes it is and as of now your the highest bidder.');
INSERT INTO contactmessages VALUES(3,3,1,5,'2020-10-11','Buyer -> is still available?');
INSERT INTO contactmessages VALUES(4,3,1,5,'2020-10-12','Seller -> Yes,but please look out for the current bid price');
INSERT INTO contactmessages VALUES(5,2,2,1,'2020-10-7','Buyer -> Hi, I was just checking; in case the previous highest bidder has backed out?');

SELECT * FROM contactmessages ORDER BY message_time ASC;


INSERT INTO feedback VALUES(1,2,2,2,'2020-10-10',9,'Item was in great condition!');
INSERT INTO feedback VALUES(2,3,3,4,'2020-10-12',3,'Item was not upto the standard and had trouble using it');

SELECT * FROM feedback;

CREATE VIEW MAX_BIDDER
AS SELECT p.product_id, a.seller_id, b.buyer_id, MAX(b.bid_price) AS MAX_BID_PRICE
FROM auctions a, bids b, product p
WHERE a.product_id = p.product_id AND b.product_id = p.product_id
GROUP BY p.product_id
HAVING MAX(b.bid_price);

SELECT * FROM MAX_BIDDER;