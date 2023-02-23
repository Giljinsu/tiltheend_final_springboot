-- 병근님 crud
-- QNA
select * from qna;

INSERT INTO QNA
(POST_NO_QNA, UID, CATEGORY, TITLE, DATE, CONTENT)
VALUE
(1, 'U0002', 'FORWARD/DELIVERY', '배송 문의','2023-02-21', '배송은 얼마나 걸리나요')
;

INSERT INTO QNA
(POST_NO_QNA, UID, CATEGORY, TITLE, DATE, CONTENT)
VALUE
(2, 'U0003', 'ETC', '주문한거랑 색이 달라요','2023-01-25', '주문한 색이랑 다른 색이 왔어요')
;

DELETE FROM QNA
WHERE POST_NO_QNA='1'
;

UPDATE QNA 
SET POST_NO_QNA = 1 
WHERE TITLE = '배송 문의입니다.'
;

-- FAQ
select * from faq;

INSERT INTO FAQ
(POST_NO_FAQ, UID, CATEGORY, TITLE, DATE, CONTENT)
VALUE
(1, 'U0001', 'PURCHASE/CANCEL', '주문 취소 문의','2023-02-21', '주문을 취소싶은 경우에는 회사 전화로 문의주세요.')
;

INSERT INTO FAQ
(POST_NO_FAQ, UID, CATEGORY, TITLE, DATE, CONTENT)
VALUE
(2, 'U0001', 'ETC', '사이즈 문의','2023-01-25', '사이즈는 정사이즈 입니다.')
;

DELETE FROM FAQ
WHERE POST_NO_FAQ='1'
;

UPDATE FAQ 
SET POST_NO_FAQ = 2 
WHERE TITLE = '사이즈 문의입니다.'
;

-- ANNOUNCEMENT
select * from announcement;

INSERT INTO ANNOUNCEMENT
(POST_NO_ANNO, UID, CATEGORY, TITLE, DATE, CONTENT)
VALUE
(1, 'U0001', 'ETC', '색상 추가','2023-02-21', '제품의 색상이 추가됐습니다.')
;

INSERT INTO ANNOUNCEMENT
(POST_NO_ANNO, UID, CATEGORY, TITLE, DATE, CONTENT)
VALUE
(2, 'U0001', 'FORWARD/DELIVERY', '설 배송 지연','2023-01-25', '설 연휴동안은 배송이 지연될 예정입니다.')
;

DELETE FROM ANNOUNCEMENT
WHERE POST_NO_ANNO='1'
;

UPDATE ANNOUNCEMENT 
SET POST_NO_ANNO = 2 
WHERE TITLE = '설 연휴기간 배송 지연 안내'
;

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

-- ADMINPAGELIST
select * from adminpagelist;

INSERT INTO adminpagelist
(LISTID, PRODUCT_ID, DELIVERY_ID, RANGKING, SALES)
VALUE
('1', 'PROD_1', '1', 2, 500000)
;

INSERT INTO adminpagelist
(LISTID, PRODUCT_ID, DELIVERY_ID, RANGKING, SALES)
VALUE
('2', 'PROD_2', '2', 1, 600000)
;

DELETE FROM adminpagelist
WHERE LISTID='1'
;

UPDATE adminpagelist 
SET LISTID = 2 
WHERE SALES = 650000
;

-- USER
select * from user;

INSERT INTO USER
(UID, ID, PW, EMAIL, USERNAME, SEX, PHONENUMBER, BIRTH_YEAR, ROLE)
VALUES
('U0001', 'gildong', '1234', 'gildong@naver.com', '홍길동', '남', '010-1234-1234', '1960', 'ADMIN');

INSERT INTO USER
(UID, ID, PW, EMAIL, USERNAME, SEX, PHONENUMBER, BIRTH_YEAR, ROLE)
VALUES
('U0002', 'jinsu', '1234', 'jinsu@naver.com', '길진수', '남', '010-2254-3322', '1998', 'MEMBER');

INSERT INTO USER
(UID, ID, PW, EMAIL, USERNAME, SEX, PHONENUMBER, BIRTH_YEAR, ROLE)
VALUES
('U0003', 'young12', '1234', 'young@naver.com', '영희', '여', '010-7595-1654', '1960', 'MEMBER');


DELETE FROM USER
WHERE UID='U0001'
;

UPDATE USER
SET USERNAME='민수'
WHERE UID='U0001'
;

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

-- DELIVERY
select * from delivery;

INSERT INTO delivery
(DELIVERY_ID, DELIVERY_COMPANY, SHIPMENT_TIME, DELIVERY_STATUS, DELIVERY_ADDRESS, USERNAME, PHONENUMBER)
VALUE
('1', '한진택배', '2023-02-10', '배송완료', '서울특별시 강남구', '민수', '010-2211-5151')
;

INSERT INTO delivery
(DELIVERY_ID, DELIVERY_COMPANY, SHIPMENT_TIME, DELIVERY_STATUS, DELIVERY_ADDRESS, USERNAME, PHONENUMBER)
VALUE
('2', '대한통운', '2023-02-21', '배송중', '대전광역시 서구', '영희', '010-9448-1541')
;

DELETE FROM delivery
WHERE LISTID='1'
;

UPDATE delivery 
SET LISTID = 2 
WHERE SHIPMENT_TIME = '배송완료'
;

--delete 문 예
DELETE FROM ANNOUNCEMENT
    INNER JOIN ADMIN_LIST
        ON ADMIN_LIST.POST_NO_ANNO = ANNOUNCEMENT.POST_NO_ANNO
WHERE POST_NO_ANNO=#{POST_NO}
;

-- 진수님 CRUD
-- COORDINATION
SELECT * FROM COORDINATION_INFO
-- WHERE COORDINATION_ID = ''
;

INSERT INTO COORDINATION_INFO
(COORDINATION_ID, UID, PRODUCT_ID, TITLE, BULLETIN_NO, USERNAME, HEIGHT, WEIGHT, CORD_CONTENT, VIEWS, WRITE_DATE, MODIFICATION_DATE, LIKES, JOB)
VALUES
('CORD_1','U0001','PROD_1','코디1', '1', '김다미', '170', '50','{"ops":[{"insert":"test입니다"}]}', '10', SYSDATE(), SYSDATE(), '5', '배우');

INSERT INTO COORDINATION_INFO
(COORDINATION_ID, UID, PRODUCT_ID, TITLE, BULLETIN_NO, USERNAME, HEIGHT, WEIGHT, CORD_CONTENT, VIEWS, WRITE_DATE, MODIFICATION_DATE, LIKES, JOB)
VALUES
('CORD_2','U0002','PROD_3','코디2', '2', '브라이언', '180', '80','{"ops":[{"insert":"test입니다"}]}', '3', SYSDATE(), SYSDATE(), '2', '군인');

INSERT INTO COORDINATION_INFO
(COORDINATION_ID, UID, PRODUCT_ID, TITLE, BULLETIN_NO, USERNAME, HEIGHT, WEIGHT, CORD_CONTENT, VIEWS, WRITE_DATE, MODIFICATION_DATE, LIKES, JOB)
VALUES
('CORD_3','U0003','PROD_3','코디3', '3', '김철수', '173', '63','{"ops":[{"insert":"test입니다"}]}', '2', SYSDATE(), SYSDATE(), '1', '모델');

DELETE FROM COORDINATION_INFO
WHERE COORDINATION_ID='CORD_001'
;

DELETE FROM COORDINATION_INFO
;

UPDATE COORDINATION_INFO
SET USERNAME='홍길동'
WHERE COORDINATION_ID='CORD_1'
;

-- FILE
SELECT * FROM CIP_ATTACHFILE;

INSERT INTO CIP_ATTACHFILE
        (ATTACHFILE_SEQ, SOURCE_UNIQUE_SEQ, ORGINALFILE_NAME, PHYSICALFILE_NAME, 
        REGISTER_SEQ, REGISTRY_DATE, MODIFIER_SEQ, MODIFY_DATE)
VALUES
		('UU11', 'CORD_1', 'model1.jpg','dami','REG1123',SYSDATE(),'MOD1122',SYSDATE())
;

INSERT INTO CIP_ATTACHFILE
        (ATTACHFILE_SEQ, SOURCE_UNIQUE_SEQ, ORGINALFILE_NAME, PHYSICALFILE_NAME, 
        REGISTER_SEQ, REGISTRY_DATE, MODIFIER_SEQ, MODIFY_DATE)
VALUES
		('UU12', 'CORD_2', 'model3.jpg','brian','REG1124',SYSDATE(),'MOD1123',SYSDATE())
;

INSERT INTO CIP_ATTACHFILE
        (ATTACHFILE_SEQ, SOURCE_UNIQUE_SEQ, ORGINALFILE_NAME, PHYSICALFILE_NAME, 
        REGISTER_SEQ, REGISTRY_DATE, MODIFIER_SEQ, MODIFY_DATE)
VALUES
		('UU13', 'CORD_3', 'model2.jpg','chulsu','REG1125',SYSDATE(),'MOD1124',SYSDATE())
;

DELETE FROM CIP_ATTACHFILE
;

DELETE FROM CIP_ATTACHFILE
WHERE ATTACHFILE_SEQ='08ccb4be-5b02-49bd-93a7-57519d0353e8'
;

-- DELIVERY
SELECT * FROM DELIVERY
WHERE DELIVERY_ID = 'DEL_1'
;

INSERT INTO DELIVERY
(DELIVERY_ID, DELIVERY_COMPANY, SHIPMENT_TIME, DELIVERY_STATUS, DELIVERY_ADDRESS)
VALUES
('DEL_1', 'CJ대한통운', SYSDATE(), '배송준비중', '경기도 화성시 반송동');

DELETE FROM DELIVERY
WHERE DELIVERY_ID = 'DEL_1'
;

UPDATE DELIVERY
SET DELIVERY_COMPANY='로젠택배'
WHERE DELIVERY_ID = 'DEL_1'
;

-- ORDER
SELECT * FROM ORDERLIST
WHERE ORDER_ID = 'ORDER_01'
;

INSERT INTO ORDERLIST
(ORDER_ID, USERNAME, EMAIL, PHONENUMBER, ORDERDATE, DELIVERY_ADDRESS, PRODUCT_ID, PRICE, ORDER_METHOD)
VALUES
('ORDER_01', '김민수', 'minsu01@naver.com', '010-1234-1234', SYSDATE(), '경기도 화성시 반송동', 'PROD_1', '1200', '카드');

DELETE FROM ORDERLIST
WHERE ORDER_ID='ORDER_01'
;

UPDATE ORDERLIST
SET USERNAME='홍길동'
WHERE ORDER_ID='ORDER_01'
;

-- SHOPPINGCART
SELECT * 
FROM SHOPPINGCART 
WHERE SHOPPINGCART_ID = 'SC01'
;

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

-- USER
SELECT * FROM user
-- WHERE UID = 'U0001'
;

INSERT INTO USER
(UID, ID, PW, EMAIL, USERNAME, SEX, PHONENUMBER, BIRTH_YEAR, ROLE)
VALUES
('U0001', 'gildong', '1234', 'gildong@naver.com', '홍길동', '남', '010-1234-1234', '1960', 'ADMIN');

INSERT INTO USER
(UID, ID, PW, EMAIL, USERNAME, SEX, PHONENUMBER, BIRTH_YEAR, ROLE)
VALUES
('U0002', 'jinsu', '1234', 'jinsu@naver.com', '길진수', '남', '010-2254-3322', '1998', 'MEMBER');

INSERT INTO USER
(UID, ID, PW, EMAIL, USERNAME, SEX, PHONENUMBER, BIRTH_YEAR, ROLE)
VALUES
('U0003', 'young12', '1234', 'young@naver.com', '영희', '여', '010-7595-1654', '1960', 'MEMBER');


DELETE FROM USER
WHERE UID='U0001'
;

UPDATE USER
SET USERNAME='민수'
WHERE UID='U0001'
;

-- 용범 CRUD
-- 상품 페이지 SHOP
SELECT * FROM PRODUCT;

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

-- MYPAGE
