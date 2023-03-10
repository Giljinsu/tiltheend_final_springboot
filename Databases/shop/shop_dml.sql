SELECT * FROM PRODUCT;

        SELECT * FROM PRODUCT A JOIN REVIEW B
        WHERE A.PRODUCT_ID = B.PRODUCT_ID AND A.PRODUCT_ID = 'PROD_1'
        ORDER BY DATE DESC;
        
INSERT INTO PRODUCT
(PRODUCT_ID, BRAND, CLOTHES_NAME, PRICE, CATEGORY, DISCOUNT_RATE, SALES_VOLUME)
VALUES('PROD_1','Giordano','셔츠', 50000,'남자상의','50%',10);

INSERT INTO PRODUCT
(PRODUCT_ID, BRAND, CLOTHES_NAME, PRICE, CATEGORY, DISCOUNT_RATE, SALES_VOLUME)
VALUES('PROD_2','LaCoste','블라우스', 80000,'여자상의','20%',5);

INSERT INTO PRODUCT
(PRODUCT_ID, BRAND, CLOTHES_NAME, PRICE, CATEGORY, DISCOUNT_RATE, SALES_VOLUME)
VALUES('PROD_3','루이비통','바지', 120000,'남자하의','30%',20);

UPDATE PRODUCT
SET PRICE = 40000
WHERE PRODUCT_ID='PROD_1';

DELETE FROM PRODUCT
WHERE PRODUCT_ID='PROD_1';

