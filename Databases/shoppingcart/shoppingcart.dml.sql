SELECT * 
FROM SHOPPINGCART 
WHERE SHOPPINGCART_ID = 'SC01'
;

SELECT * 
FROM SHOPPINGCART 
ORDER BY DATE
;


SELECT C.SHOPPINGCART_ID
FROM (SELECT DISTINCT * 
FROM SHOPPINGCART A JOIN USER B
WHERE A.UID = B.UID) C , product D
WHERE C.PRODUCT_ID = D.PRODUCT_ID
;
SELECT * FROM PRODUCT;

INSERT INTO SHOPPINGCART
(SHOPPINGCART_ID, SHOPPINGCART_ORDER, PRODUCT_ID, PRODUCT_COUNT)
VALUES
('SC01', '1', 'PROD_1', '1')
;

UPDATE SHOPPINGCART
SET PRODUCT_COUNT = '2'
WHERE SHOPPINGCART_ID='SC01'
;

DELETE FROM SHOPPINGCART
WHERE SHOPPINGCART_ID='SC01'
;