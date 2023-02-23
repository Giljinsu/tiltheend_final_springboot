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

-- shop
INSERT INTO PRODUCT
(PRODUCT_ID, BRAND, CLOTHES_NAME, PRICE, CATEGORY, DISCOUNT_RATE, SALES_VOLUME)
VALUES('PROD_1','Giordano','셔츠', 50000,'남자상의','50%',10);

INSERT INTO PRODUCT
(PRODUCT_ID, BRAND, CLOTHES_NAME, PRICE, CATEGORY, DISCOUNT_RATE, SALES_VOLUME)
VALUES('PROD_2','LaCoste','블라우스', 80000,'여자상의','20%',5);

INSERT INTO PRODUCT
(PRODUCT_ID, BRAND, CLOTHES_NAME, PRICE, CATEGORY, DISCOUNT_RATE, SALES_VOLUME)
VALUES('PROD_3','루이비통','바지', 120000,'남자하의','30%',20);

-- file CIP_ATTACHFILE
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
-- coordination
INSERT INTO COORDINATION_INFO
(COORDINATION_ID, UID, PRODUCT_ID, ATTACHFILE_SEQ, BULLETIN_NO, USERNAME, HEIGHT, WEIGHT, CORD_CONTENT, VIEWS, WRITE_DATE, MODIFICATION_DATE, LIKES, JOB)
VALUES
('CORD_1','U0001','PROD_1','UU11','1', '김다미', '170', '50','{"ops":[{"insert":"test입니다"}]}', '10', SYSDATE(), SYSDATE(), '5', '배우');

INSERT INTO COORDINATION_INFO
(COORDINATION_ID, UID, PRODUCT_ID, ATTACHFILE_SEQ, BULLETIN_NO, USERNAME, HEIGHT, WEIGHT, CORD_CONTENT, VIEWS, WRITE_DATE, MODIFICATION_DATE, LIKES, JOB)
VALUES
('CORD_2','U0002','PROD_3','UU12','2', '브라이언', '180', '80','{"ops":[{"insert":"test입니다"}]}', '3', SYSDATE(), SYSDATE(), '2', '군인');

INSERT INTO COORDINATION_INFO
(COORDINATION_ID, UID, PRODUCT_ID, ATTACHFILE_SEQ, BULLETIN_NO, USERNAME, HEIGHT, WEIGHT, CORD_CONTENT, VIEWS, WRITE_DATE, MODIFICATION_DATE, LIKES, JOB)
VALUES
('CORD_3','U0003','PROD_3','UU13','3', '김철수', '173', '63','{"ops":[{"insert":"test입니다"}]}', '2', SYSDATE(), SYSDATE(), '1', '모델');


-- delivery
INSERT INTO DELIVERY
(DELIVERY_ID, DELIVERY_COMPANY, SHIPMENT_TIME, DELIVERY_STATUS, DELIVERY_ADDRESS, USERNAME, PHONENUMBER)
VALUES
('DEL_1', 'CJ대한통운', SYSDATE(), '배송준비중', '경기도 화성시 반송동', '홍길동','010-2342-3356');

INSERT INTO DELIVERY
(DELIVERY_ID, DELIVERY_COMPANY, SHIPMENT_TIME, DELIVERY_STATUS, DELIVERY_ADDRESS, USERNAME, PHONENUMBER)
VALUES
('DEL_2', '우체국택배', SYSDATE(), '발송완료', '서울시 영등포구 대림동', '김용범','010-2233-1442');

INSERT INTO DELIVERY
(DELIVERY_ID, DELIVERY_COMPANY, SHIPMENT_TIME, DELIVERY_STATUS, DELIVERY_ADDRESS, USERNAME, PHONENUMBER)
VALUES
('DEL_3', '한진택배', SYSDATE(), '배송완료', '경상북도 칠곡군 석적읍', '김사랑','010-1255-9977');

-- shoppingcart
INSERT INTO SHOPPINGCART
(SHOPPINGCART_ID, PRODUCT_ID, UID, PRODUCT_COUNT, SHOPPINGCART_ORDER)
VALUES
('SC01','PROD_1','U0001','1','1')
;

INSERT INTO SHOPPINGCART
(SHOPPINGCART_ID, PRODUCT_ID, UID, PRODUCT_COUNT, SHOPPINGCART_ORDER)
VALUES
('SC02','PROD_2','U0001','2','1')
;

INSERT INTO SHOPPINGCART
(SHOPPINGCART_ID, PRODUCT_ID, UID, PRODUCT_COUNT, SHOPPINGCART_ORDER)
VALUES
('SC03','PROD_3','U0001','3','1')
;

-- order
INSERT INTO ORDERLIST
(ORDER_ID,SHOPPINGCART_ID,DELIVERY_ID,ORDER_METHOD,FINAL_PRICE,ORDERDATE,ADDITIONAL_DISCOUNT)
VALUES
('ORDER_01','SC01','DEL_1','카드','54,000',SYSDATE(),'25%');
INSERT INTO ORDERLIST
(ORDER_ID,SHOPPINGCART_ID,DELIVERY_ID,ORDER_METHOD,FINAL_PRICE,ORDERDATE,ADDITIONAL_DISCOUNT)
VALUES
('ORDER_02','SC02','DEL_2','카드','75,000',SYSDATE(),'30%');
INSERT INTO ORDERLIST
(ORDER_ID,SHOPPINGCART_ID,DELIVERY_ID,ORDER_METHOD,FINAL_PRICE,ORDERDATE,ADDITIONAL_DISCOUNT)
VALUES
('ORDER_03','SC03','DEL_3','무통장입금','134,000',SYSDATE(),'20%');

-- ADMINPAGELIST
INSERT INTO ADMINPAGELIST
(`LISTID`,`PRODUCT_ID`,`DELIVERY_ID`,`RANGKING`,`SALES`)
VALUES
('L001','PROD_1','DEL_1',1,322000);

INSERT INTO ADMINPAGELIST
(`LISTID`,`PRODUCT_ID`,`DELIVERY_ID`,`RANGKING`,`SALES`)
VALUES
('L002','PROD_1','DEL_2',2,224000);

INSERT INTO ADMINPAGELIST
(`LISTID`,`PRODUCT_ID`,`DELIVERY_ID`,`RANGKING`,`SALES`)
VALUES
('L003','PROD_1','DEL_3',3,151000);

-- ANNOUNCEMENT
INSERT INTO ANNOUNCEMENT
(`POST_NO_ANNO`,`UID`,`CATEGORY`,`TITLE`,`DATE`,`CONTENT`)
VALUES
('3','U0001','교환/반품/수선','반품시 유의사항','2023.01.05','내용');

INSERT INTO ANNOUNCEMENT
(`POST_NO_ANNO`,`UID`,`CATEGORY`,`TITLE`,`DATE`,`CONTENT`)
VALUES
('2','U0001','기타','추석연휴 배송안내','2023.09.05','내용');

INSERT INTO ANNOUNCEMENT
(`POST_NO_ANNO`,`UID`,`CATEGORY`,`TITLE`,`DATE`,`CONTENT`)
VALUES
('1','U0001','주문/취소','주문시 유의사항','2023.01.08','내용');

-- COORDINATION_PICTURE
INSERT INTO COORDINATION_PICTURE
(`ATTACHFILE_SEQ`,`COORDINATION_ID`)
VALUES
('UU11','CORD_1');

INSERT INTO COORDINATION_PICTURE
(`ATTACHFILE_SEQ`,`COORDINATION_ID`)
VALUES
('UU12','CORD_1');

INSERT INTO COORDINATION_PICTURE
(`ATTACHFILE_SEQ`,`COORDINATION_ID`)
VALUES
('UU13','CORD_2');

-- FAQ
INSERT INTO FAQ
(`POST_NO_FAQ`,`UID`,`CATEGORY`,`TITLE`,`DATE`,`CONTENT`)
VALUES
('3','U0001','교환/반품/수선','반품시 유의사항','2023.01.05','내용');

INSERT INTO FAQ
(`POST_NO_FAQ`,`UID`,`CATEGORY`,`TITLE`,`DATE`,`CONTENT`)
VALUES
('2','U0001','기타','추석연휴 배송안내','2023.09.05','내용');

INSERT INTO FAQ
(`POST_NO_FAQ`,`UID`,`CATEGORY`,`TITLE`,`DATE`,`CONTENT`)
VALUES
('1','U0001','주문/취소','주문시 유의사항','2023.01.08','내용');

-- PRODUCT_PICTURE
INSERT INTO PRODUCT_PICTURE
(PRODUCT_ID,ATTACHFILE_SEQ)
VALUES
('PROD_1','UU11');

INSERT INTO PRODUCT_PICTURE
(PRODUCT_ID,ATTACHFILE_SEQ)
VALUES
('PROD_1','UU12');

INSERT INTO PRODUCT_PICTURE
(PRODUCT_ID,ATTACHFILE_SEQ)
VALUES
('PROD_2','UU13');

-- QNA
INSERT INTO QNA
(`POST_NO_QNA`,`UID`,`CATEGORY`,`TITLE`,`DATE`,`CONTENT`)
VALUES
('3','U0001','교환/반품/수선','반품시 유의사항','2023.01.05','내용');

INSERT INTO QNA
(`POST_NO_QNA`,`UID`,`CATEGORY`,`TITLE`,`DATE`,`CONTENT`)
VALUES
('2','U0001','기타','추석연휴 배송안내','2023.09.05','내용');

INSERT INTO QNA
(`POST_NO_QNA`,`UID`,`CATEGORY`,`TITLE`,`DATE`,`CONTENT`)
VALUES
('1','U0001','주문/취소','주문시 유의사항','2023.01.08','내용');

-- REVIEW
INSERT INTO REVIEW
(REVIEW_ID,UID,PRODUCT_ID,ATTACHFILE_SEQ,RATE,REVIEW_CONTENT)
VALUES
('R001','U0001','PROD_1','UU11','4','맘에 들어요'),
('R002','U0002','PROD_2','UU12','5','아주 좋아요'),
('R003','U0003','PROD_3','UU13','3','보통이에요');

-- REVIEW_PICTURE
INSERT INTO REVIEW_PICTURE
(ATTACHFILE_SEQ,REVIEW_ID)
VALUES
('UU11','R001'),
('UU12','R001'),
('UU13','R002'),
('UU11','R003');

-- WISHLIST
INSERT INTO WISHLIST
(PRODUCT_ID,UID)
VALUES
('PROD_1','U0001'),
('PROD_2','U0001'),
('PROD_3','U0001'),
('PROD_2','U0002'),
('PROD_3','U0002'),
('PROD_1','U0003');

