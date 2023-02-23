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

-- user, product, delevery는 delete문 수정해야함 (연결된 테이블 삭제 안했음)

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

-- 진수님 페이지
