-- PRODUCT
select * from product;

SELECT * FROM PRODUCT
WHERE IS_BESTSELLING_PRODUCT = 'TRUE';

INSERT INTO PRODUCT
(PRODUCT_ID, BRAND, CLOTHES_NAME, PRICE, CATEGORY, DISCOUNT_RATE, SALES_VOLUME)
VALUES('PROD_1','브랜드1','Giordano', 50000,'남자상의','50%',10);

INSERT INTO PRODUCT
(PRODUCT_ID, BRAND, CLOTHES_NAME, PRICE, CATEGORY, DISCOUNT_RATE, SALES_VOLUME)
VALUES('PROD_2','브랜드2','Giordano2', 50000,'여자상의','20%',5);

INSERT INTO PRODUCT
(PRODUCT_ID, BRAND, CLOTHES_NAME, PRICE, CATEGORY, DISCOUNT_RATE, SALES_VOLUME)
VALUES('PROD_3','브랜드3','Giordano3', 50000,'남자하의','30%',20);

UPDATE PRODUCT
SET PRICE = 40000
WHERE PRODUCT_ID='PROD_1';

DELETE FROM PRODUCT
WHERE PRODUCT_ID='PROD_1';

-- REVIEW
select * from review;

INSERT INTO review
(REVIEW_ID, UID, PRODUCT_ID, ATTACHFILE_SEQ, RATE, REVIEW_CONTENT)
VALUE
('1', 'U0002', 'PROD_1', 'UU11', 4, '좋아요')
;

INSERT INTO review
(REVIEW_ID, UID, PRODUCT_ID, ATTACHFILE_SEQ, RATE, REVIEW_CONTENT)
VALUE
('2', 'U0002', 'PROD_2', 'UU12', 5, '좋아요')
;

DELETE FROM review
WHERE REVIEW_ID='1'
;

UPDATE review 
SET REVIEW_ID='2'
WHERE REVIEW_CONTENT = '너무 좋아요'
;