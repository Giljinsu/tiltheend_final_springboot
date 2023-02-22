-- shop
INSERT INTO PRODUCT
(PRODUCT_ID, BRAND, CLOTHES_NAME, PRICE, CATEGORY, DISCOUNT_RATE, SALES_VOLUME)
VALUES('PROD_1','브랜드1','Giordano', 50000,'남자상의','50%',10);

INSERT INTO PRODUCT
(PRODUCT_ID, BRAND, CLOTHES_NAME, PRICE, CATEGORY, DISCOUNT_RATE, SALES_VOLUME)
VALUES('PROD_2','브랜드2','Giordano2', 50000,'여자상의','20%',5);

INSERT INTO PRODUCT
(PRODUCT_ID, BRAND, CLOTHES_NAME, PRICE, CATEGORY, DISCOUNT_RATE, SALES_VOLUME)
VALUES('PROD_3','브랜드3','Giordano3', 50000,'남자하의','30%',20);

-- coordination
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

-- file
INSERT INTO CIP_ATTACHFILE
        (ATTACHFILE_SEQ, SOURCE_UNIQUE_SEQ, ORGINALFILE_NAME, PHYSICALFILE_NAME, 
        REGISTER_SEQ, REGISTRY_DATE, MODIFIER_SEQ, MODIFY_DATE)
VALUES
		('UU11', 'UU22-1111', 'TESTFILE','TEST22.HTML','REG1123',SYSDATE(),'MOD1122',SYSDATE())
;

INSERT INTO CIP_ATTACHFILE
        (ATTACHFILE_SEQ, SOURCE_UNIQUE_SEQ, ORGINALFILE_NAME, PHYSICALFILE_NAME, 
        REGISTER_SEQ, REGISTRY_DATE, MODIFIER_SEQ, MODIFY_DATE)
VALUES
		('UU12', 'UU22-1112', 'TESTIMG','TEST23.png','REG1124',SYSDATE(),'MOD1123',SYSDATE())
;

INSERT INTO CIP_ATTACHFILE
        (ATTACHFILE_SEQ, SOURCE_UNIQUE_SEQ, ORGINALFILE_NAME, PHYSICALFILE_NAME, 
        REGISTER_SEQ, REGISTRY_DATE, MODIFIER_SEQ, MODIFY_DATE)
VALUES
		('UU13', 'UU22-1113', 'TESTIMG2','TEST22.PNG','REG1125',SYSDATE(),'MOD1124',SYSDATE())
;

-- order
INSERT INTO ORDERLIST
(ORDER_ID, USERNAME, EMAIL, PHONENUMBER, ORDERDATE, DELIVERY_ADDRESS, PRODUCT_ID, PRICE, ORDER_METHOD)
VALUES
('ORDER_01', '김민수', 'minsu01@naver.com', '010-1234-1234', SYSDATE(), '경기도 화성시 반송동', 'PROD_1', '1200', '카드');

--delivery
INSERT INTO DELIVERY
(DELIVERY_ID, DELIVERY_COMPANY, SHIPMENT_TIME, DELIVERY_STATUS, DELIVERY_ADDRESS)
VALUES
('DEL_1', 'CJ대한통운', SYSDATE(), '배송준비중', '경기도 화성시 반송동');

-- shoppingcart
INSERT INTO SHOPPINGCART
(SHOPPINGCART_ID, SHOPPINGCART_ORDER, PRODUCT_ID, PRODUCT_COUNT)
VALUES
('SC01', '1', 'PROD_1', '1')
;

-- user
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

