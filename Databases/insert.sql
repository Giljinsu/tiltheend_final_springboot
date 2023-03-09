use tiltheend_final;
-- user

INSERT INTO USER
(UID, ID, PW, EMAIL, USERNAME, SEX, PHONENUMBER, BIRTH_YEAR, ROLE)
VALUES
('U0001', 'gildong', '1234', 'gildong@naver.com', '홍길동', '남', '010-1234-1234', '1960', 'ROLE_ADMIN');

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
VALUES
('PROD_1','Giordano','셔츠', 50000,'남자상의','50',10),
('PROD_2','LaCoste','청바지', 80000,'여자하의','20',5),
('PROD_3','루이비통','바지', 120000,'남자하의','30',20),
('PROD_4','마담포라','셔츠', 280000,'여자상의','30',20),
('PROD_5','캐빈클라인','청바지',120000,'남자하의','15',50),
('PROD_6','아디다스','블랙청바지', 80000,'남자하의','10',30),
('PROD_7','아디다스','청바지', 70000,'남자하의','10',10),
('PROD_8','카라트','재킷', 280000,'남자아우터','20',50),
('PROD_9','행탠','스웨터', 30000,'여자상의','30',50),
('PROD_10','랄프로렌','셔츠', 80000,'남자상의','30',70),
('PROD_11','로가디스','재킷', 230000,'남자아우터','30',30),
('PROD_12','generic','브이넥 크롭 니트 라이트 그레이', 124100,'여자상의','10',45),
('PROD_13','generic','[신상품★]플랙 크롭 카라 스웨트 셔츠 멜란지 그레이', 89100,'여자상의','10',50),
('PROD_14','generic','베이직 크롭 셔츠 라이트 옐로우', 89100,'여자상의','10',25),
('PROD_15','generic','베이직 크롭 셔츠 라이트 퍼플', 80100,'여자상의','10',30),
('PROD_16','generic','[신상품★]후디 하프 집업 크롭 티셔츠 블루', 89000,'여자상의','0',34),
('PROD_17','generic','자켓 M35 로우', 179100,'여자아우터','10',99),
('PROD_18','generic','브이넥 크롭 니트 라이트 블루', 125100,'여자상의','10',45),
('PROD_19','generic','자켓 T64 미드 블루', 159200,'여자아우터','20',55),
('PROD_20','generic','[신상품★]라운드 넥 크롭 가디건 아이보리', 116100,'여자상의','10',110),
('PROD_21','generic','[신상품★]투웨이 브이넥 울 가디건 베이지', 62300,'여자상의','30',80),
('PROD_22','generic','[김나영 PICK★]스커트 051B 블랙', 79200,'여자하의','20',65),
('PROD_23','generic','하트 M71 로우', 95200,'여자하의','20',45),
('PROD_24','generic','[신상품★]★다예 PICKS★ 라운드 넥 크롭 가디건 블랙', 116100,'여자상의','10',20),
('PROD_25','generic','[신상품★][★김나영 PICK★]퍼 크롭 자켓 베이지', 191200,'여자아우터','20',60),
('PROD_26','generic','자켓 M62 미드 블루', 159200,'여자상의','20',10),
('PROD_27','generic','[신상품★]하프 집업 크롭 후디 핑크', 89000,'여자상의','0',70),
('PROD_28','generic','[신상품★][김나영 PICK★]부클 크롭 니트 베이지', 63200,'여자상의','10',80),
('PROD_29','generic','플랙 로고 크롭 후디 그린', 63200,'여자상의','20',15),
('PROD_30','generic','스티즈 051B 블랙 로우', 149000,'남자하의','0',130),
('PROD_31','generic','셋업 스텝 051C 핑크', 143100,'남자상의','10',55),
('PROD_32','generic','카라 니트 가디건 브라운', 99000,'남자상의','23',80),
('PROD_33','generic','드롭 숄더 MA-1 항공 점퍼 카키', 109000,'남자아우터','36',105),
('PROD_34','generic','[신상품★]ㅌ오버사이즈 셔츠 화이트', 98100,'남자상의','10',80),
('PROD_35','generic','[신상품★]언어펙티드 X 플랙 롱 슬리브 오렌지', 55200,'남자상의','20',135),
('PROD_36','generic','그래픽 후디 스카이 블루', 79200,'남자상의','20',105),

('PROD_37','나이키','나이키 코트 줌 라이트3 클레이코트 테니스화', 74900,'남자신발','10',55),
('PROD_38','나이키','나이키 와플 데뷰', 89000,'여자신발','15',65),
('PROD_39','나이키','나이키 덩크 로우 레트로 SE', 139000,'남자신발','0',75),
('PROD_40','영에이지','남성 세미 캐주얼화', 93740,'남자신발','10',35),
('PROD_41','엘칸토','7CM스틸레토힐 여성포인트토구두', 58910,'여자신발','20',65),
('PROD_42','TANDY','리본 장식 여성 펌프스', 86400,'여자신발','10',75),

('PROD_43','블루독베이비','BASIC캡모자', 27440,'남자모자','13',85),
('PROD_44','햇츠온','여성 린넨 혼방 링클 벙거지 모자', 13700,'여자모자','0',95),
('PROD_45','무지','BASIC 화이트모자', 23780,'여자모자','0',35),
('PROD_46','라코스떼','남성여성 오렌지 벙거지 모자', 23000,'여자모자','10',70),
('PROD_47','무지','남성 검정 모자', 33000,'남자모자','0',40),
('PROD_48','샤넬','여성 퍼플 모자', 73000,'여자모자','0',120),

('PROD_49','샤넬','여성 베이지 핸드백', 230000,'여자가방','10',5),
('PROD_50','디올','여성 브라운 핸드백', 330000,'여자가방','10',14),
('PROD_51','메트로시티','여성 그린 핸드백', 170000,'여자가방','20',13),
('PROD_52','루이비통','여성 그레이 핸드백', 1340000,'여자가방','20',5),
('PROD_53','샤넬','여성 핑크 핸드백', 730000,'여자가방','0',9),
('PROD_54','샘소나이트','남성 블랙 서류가방', 190000,'남자가방','20',33);

-- file CIP_ATTACHFILE
INSERT INTO CIP_ATTACHFILE
        (ATTACHFILE_SEQ, SOURCE_UNIQUE_SEQ, ORGINALFILE_NAME, PHYSICALFILE_NAME, 
        REGISTER_SEQ, REGISTRY_DATE, MODIFIER_SEQ, MODIFY_DATE, FILE_ORDER)
VALUES
		('UU11', 'CORD_1', 'model1.jpg','dami','REG1123',SYSDATE(),'MOD1122',SYSDATE(),1)
;
INSERT INTO CIP_ATTACHFILE
        (ATTACHFILE_SEQ, SOURCE_UNIQUE_SEQ, ORGINALFILE_NAME, PHYSICALFILE_NAME, 
        REGISTER_SEQ, REGISTRY_DATE, MODIFIER_SEQ, MODIFY_DATE, FILE_ORDER)
VALUES
		('UU142', 'CORD_1', 'model1_2.jpg','dami','REG1123',SYSDATE(),'MOD1122',SYSDATE(),2)
;
INSERT INTO CIP_ATTACHFILE
        (ATTACHFILE_SEQ, SOURCE_UNIQUE_SEQ, ORGINALFILE_NAME, PHYSICALFILE_NAME, 
        REGISTER_SEQ, REGISTRY_DATE, MODIFIER_SEQ, MODIFY_DATE, FILE_ORDER)
VALUES
		('UU152', 'CORD_1', 'model1_3.jpg','dami','REG1123',SYSDATE(),'MOD1122',SYSDATE(),3)
;
INSERT INTO CIP_ATTACHFILE
        (ATTACHFILE_SEQ, SOURCE_UNIQUE_SEQ, ORGINALFILE_NAME, PHYSICALFILE_NAME, 
        REGISTER_SEQ, REGISTRY_DATE, MODIFIER_SEQ, MODIFY_DATE, FILE_ORDER)
VALUES
		('UU162', 'CORD_1', 'model1_4.jpg','dami','REG1123',SYSDATE(),'MOD1122',SYSDATE(),4)
;

INSERT INTO CIP_ATTACHFILE
        (ATTACHFILE_SEQ, SOURCE_UNIQUE_SEQ, ORGINALFILE_NAME, PHYSICALFILE_NAME, 
        REGISTER_SEQ, REGISTRY_DATE, MODIFIER_SEQ, MODIFY_DATE, FILE_ORDER)
VALUES
		('UU12', 'CORD_2', 'model3.jpg','brian','REG1124',SYSDATE(),'MOD1123',SYSDATE(),1)
;

INSERT INTO CIP_ATTACHFILE
        (ATTACHFILE_SEQ, SOURCE_UNIQUE_SEQ, ORGINALFILE_NAME, PHYSICALFILE_NAME, 
        REGISTER_SEQ, REGISTRY_DATE, MODIFIER_SEQ, MODIFY_DATE, FILE_ORDER)
VALUES
		('UU13', 'CORD_3', 'model2.jpg','chulsu','REG1125',SYSDATE(),'MOD1124',SYSDATE(),1)
;


-- file PRODUCT_PICTURE 삽입
INSERT INTO CIP_ATTACHFILE
(ATTACHFILE_SEQ, SOURCE_UNIQUE_SEQ, ORGINALFILE_NAME, PHYSICALFILE_NAME, 
REGISTER_SEQ, REGISTRY_DATE, MODIFIER_SEQ, MODIFY_DATE)
VALUES
('UU14', 'PROD_1', 'shop1.jpg','shop','REG1123',SYSDATE(),'MOD1122',SYSDATE()),
('UU15', 'PROD_2', 'shop2.jpg','shop','REG1124',SYSDATE(),'MOD1123',SYSDATE()),
('UU16', 'PROD_3', 'shop3.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU17', 'PROD_3', 'shop8.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU18', 'PROD_4', 'shop1.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU19', 'PROD_5', 'shop2.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU20', 'PROD_6', 'shop3.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU21', 'PROD_7', 'shop4.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU22', 'PROD_8', 'shop5.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU23', 'PROD_9', 'shop6.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU24', 'PROD_10', 'shop7.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU25', 'PROD_11', 'shop8.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU26', 'PROD_12', 'shop12.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU27', 'PROD_13', 'shop13.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU28', 'PROD_14', 'shop14.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU29', 'PROD_15', 'shop15.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU30', 'PROD_16', 'shop16.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU31', 'PROD_17', 'shop17.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU32', 'PROD_18', 'shop18.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU33', 'PROD_19', 'shop19.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU34', 'PROD_20', 'shop20.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU35', 'PROD_21', 'shop21.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU36', 'PROD_22', 'shop22.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),

('UU37', 'PROD_23', 'shop23.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU38', 'PROD_24', 'shop24.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU39', 'PROD_25', 'shop25.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU40', 'PROD_26', 'shop26.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU41', 'PROD_27', 'shop27.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU42', 'PROD_28', 'shop28.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU43', 'PROD_29', 'shop29.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU44', 'PROD_30', 'shop30.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU45', 'PROD_31', 'shop31.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU46', 'PROD_32', 'shop32.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU47', 'PROD_33', 'shop33.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU48', 'PROD_34', 'shop34.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU49', 'PROD_35', 'shop35.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU50', 'PROD_36', 'shop36.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),


('UU60', 'PROD_37', 'shoes1.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU61', 'PROD_38', 'shoes2.png','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU62', 'PROD_39', 'shoes3.png','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU63', 'PROD_40', 'shoes4.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU65', 'PROD_41', 'shoes5.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU66', 'PROD_42', 'shoes6.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),

('UU67', 'PROD_43', 'hats1.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU68', 'PROD_44', 'hats2.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU69', 'PROD_45', 'hats3.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU70', 'PROD_46', 'hats4.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU71', 'PROD_47', 'hats5.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU72', 'PROD_48', 'hats6.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),

('UU73', 'PROD_49', 'bags1.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU74', 'PROD_50', 'bags2.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU75', 'PROD_51', 'bags3.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU76', 'PROD_52', 'bags4.jfif','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU77', 'PROD_53', 'bags5.jfif','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU78', 'PROD_54', 'bags6.jpg','shop','REG1125',SYSDATE(),'MOD1124',SYSDATE());


INSERT INTO CIP_ATTACHFILE
(ATTACHFILE_SEQ, SOURCE_UNIQUE_SEQ, ORGINALFILE_NAME, PHYSICALFILE_NAME, 
REGISTER_SEQ, REGISTRY_DATE, MODIFIER_SEQ, MODIFY_DATE)
VALUES
('UU79', 'R001', 'review1.jpg','review','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU80', 'R002', 'review2.jpg','review','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU81', 'R003', 'review1.jpg','review','REG1125',SYSDATE(),'MOD1124',SYSDATE()),
('UU82', 'R004', 'review2.jpg','review','REG1125',SYSDATE(),'MOD1124',SYSDATE());


-- coordination
INSERT INTO COORDINATION_INFO
(COORDINATION_ID, UID, PRODUCT_ID, TITLE, BULLETIN_NO, USERNAME, HEIGHT, WEIGHT, CORD_CONTENT, VIEWS, WRITE_DATE, MODIFICATION_DATE, LIKES, JOB)
VALUES
('CORD_1','U0001','PROD_1', '코디1', '1', '김다미', '170', '50','{"ops":[{"insert":"test입니다"}]}', '10', SYSDATE(), SYSDATE(), '5', '배우'),
('CORD_2','U0002','PROD_3', '코디2', '2', '브라이언', '180', '80','{"ops":[{"insert":"test입니다"}]}', '3', SYSDATE(), SYSDATE(), '2', '군인'),
('CORD_3','U0003','PROD_3', '코디3', '3', '김철수', '173', '63','{"ops":[{"insert":"test입니다"}]}', '2', SYSDATE(), SYSDATE(), '1', '모델');


-- delivery
INSERT INTO DELIVERY
(DELIVERY_ID, DELIVERY_COMPANY, SHIPMENT_TIME, DELIVERY_STATUS, DELIVERY_ADDRESS, USERNAME, PHONENUMBER, REQUIREMENT)
VALUES
('DEL_1', 'CJ대한통운', SYSDATE(), '배송준비중', '경기도 화성시 반송동', '홍길동','010-2342-3356','부재시 경비실에 맡겨주세요');

INSERT INTO DELIVERY
(DELIVERY_ID, DELIVERY_COMPANY, SHIPMENT_TIME, DELIVERY_STATUS, DELIVERY_ADDRESS, USERNAME, PHONENUMBER, REQUIREMENT)
VALUES
('DEL_2', '우체국택배', SYSDATE(), '발송완료', '서울시 영등포구 대림동', '김용범','010-2233-1442','부재시 경비실에 맡겨주세요');

INSERT INTO DELIVERY
(DELIVERY_ID, DELIVERY_COMPANY, SHIPMENT_TIME, DELIVERY_STATUS, DELIVERY_ADDRESS, USERNAME, PHONENUMBER, REQUIREMENT)
VALUES
('DEL_3', '한진택배', SYSDATE(), '배송완료', '경상북도 칠곡군 석적읍', '김사랑','010-1255-9977','부재시 경비실에 맡겨주세요');

-- shoppingcart
INSERT INTO SHOPPINGCART
(SHOPPINGCART_ID, PRODUCT_ID, UID, PRODUCT_COUNT, DATE)
VALUES
('SC01','PROD_1','U0001','1',SYSDATE())
;

INSERT INTO SHOPPINGCART
(SHOPPINGCART_ID, PRODUCT_ID, UID, PRODUCT_COUNT, DATE)
VALUES
('SC02','PROD_2','U0001','2',SYSDATE())
;

INSERT INTO SHOPPINGCART
(SHOPPINGCART_ID, PRODUCT_ID, UID, PRODUCT_COUNT, DATE)
VALUES
('SC03','PROD_3','U0001','3',SYSDATE())
;

-- order
INSERT INTO ORDERLIST
(ORDER_ID,PRODUCT_ID,UID,DELIVERY_ID,ORDER_METHOD,FINAL_PRICE,ORDERDATE,ADDITIONAL_DISCOUNT,PRODUCT_COUNT)
VALUES
('ORDER_01','PROD_1','U0001','DEL_1','카드','54,000',SYSDATE(),'25',1);
INSERT INTO ORDERLIST
(ORDER_ID,PRODUCT_ID,UID,DELIVERY_ID,ORDER_METHOD,FINAL_PRICE,ORDERDATE,ADDITIONAL_DISCOUNT,PRODUCT_COUNT)
VALUES
('ORDER_02','PROD_2','U0001','DEL_2','카드','75,000',SYSDATE(),'30',2);
INSERT INTO ORDERLIST
(ORDER_ID,PRODUCT_ID,UID,DELIVERY_ID,ORDER_METHOD,FINAL_PRICE,ORDERDATE,ADDITIONAL_DISCOUNT,PRODUCT_COUNT)
VALUES
('ORDER_03','PROD_3','U0001','DEL_3','무통장입금','134,000',SYSDATE(),'20',3);

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
('3','U0001','repair','반품시 유의사항','2023.01.05','내용');

INSERT INTO ANNOUNCEMENT
(`POST_NO_ANNO`,`UID`,`CATEGORY`,`TITLE`,`DATE`,`CONTENT`)
VALUES
('2','U0001','ect','추석연휴 배송안내','2023.09.05','내용');

INSERT INTO ANNOUNCEMENT
(`POST_NO_ANNO`,`UID`,`CATEGORY`,`TITLE`,`DATE`,`CONTENT`)
VALUES
('1','U0001','cancle','주문시 유의사항','2023.01.08','내용');

-- COORDINATION_PICTURE


-- FAQ
INSERT INTO FAQ
(`POST_NO_FAQ`,`UID`,`CATEGORY`,`TITLE`,`DATE`,`CONTENT`)
VALUES
('3','U0001','repair','반품시 유의사항','2023.01.05','내용');

INSERT INTO FAQ
(`POST_NO_FAQ`,`UID`,`CATEGORY`,`TITLE`,`DATE`,`CONTENT`)
VALUES
('2','U0001','ect','추석연휴 배송안내','2023.09.05','내용');

INSERT INTO FAQ
(`POST_NO_FAQ`,`UID`,`CATEGORY`,`TITLE`,`DATE`,`CONTENT`)
VALUES
('1','U0001','cancle','주문시 유의사항','2023.01.08','내용');

-- PRODUCT_PICTURE

-- COMMENT
INSERT INTO COMMENT
(COMMENT_UID, UID, DATE, CONTENT, SOURCE_UNIQUE_SEQ)
VALUES
('1','U0001',SYSDATE(),'U0001의 댓글내용','qna');

INSERT INTO COMMENT
(COMMENT_UID, UID, DATE, CONTENT, SOURCE_UNIQUE_SEQ)
VALUES
('2','U0002',SYSDATE(),'U0002의 댓글내용','qna');

INSERT INTO COMMENT
(COMMENT_UID, UID, DATE, CONTENT, SOURCE_UNIQUE_SEQ)
VALUES
('3','U0003',SYSDATE(),'U0003의 댓글내용','qna');

-- QNA
INSERT INTO QNA
(`POST_NO_QNA`,`UID`,`CATEGORY`,`TITLE`,`DATE`,`CONTENT`,`STATUS`)
VALUES
('3','U0001','repair','반품시 유의사항','2023.01.05','내용','답변대기');

INSERT INTO QNA
(`POST_NO_QNA`,`UID`,`CATEGORY`,`TITLE`,`DATE`,`CONTENT`,`STATUS`)
VALUES
('2','U0001','ect','추석연휴 배송안내','2023.09.05','내용','답변완료');

INSERT INTO QNA
(`POST_NO_QNA`,`UID`,`CATEGORY`,`TITLE`,`DATE`,`CONTENT`,`STATUS`)
VALUES
('1','U0001','cancle','주문시 유의사항','2023.01.08','내용','답변대기');

-- REVIEW
INSERT INTO REVIEW
(REVIEW_ID,UID,PRODUCT_ID,RATE,REVIEW_CONTENT,DATE)
VALUES
('R001','U0001','PROD_1','4','맘에 들어요',SYSDATE()),
('R002','U0002','PROD_2','5','아주 좋아요',SYSDATE()),
('R003','U0003','PROD_3','3','보통이에요',SYSDATE());



INSERT INTO REVIEW
(REVIEW_ID,UID,PRODUCT_ID,RATE,REVIEW_CONTENT,DATE)
VALUES
('R004','U0001','PROD_1','4','맘에 들어요','2023.03.07');

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

