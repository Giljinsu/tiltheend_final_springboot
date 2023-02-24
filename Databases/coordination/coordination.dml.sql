SELECT * FROM COORDINATION_INFO
-- WHERE COORDINATION_ID = ''
;

INSERT INTO COORDINATION_INFO
(COORDINATION_ID, UID, PRODUCT_ID, TITLE, BULLETIN_NO, USERNAME, HEIGHT, WEIGHT, CORD_CONTENT, VIEWS, WRITE_DATE, MODIFICATION_DATE, LIKES, JOB)
VALUES
('CORD_1','U0001','PROD_1', '코디1', '1', '김다미', '170', '50','{"ops":[{"insert":"test입니다"}]}', '10', SYSDATE(), SYSDATE(), '5', '배우');

INSERT INTO COORDINATION_INFO
(COORDINATION_ID, UID, PRODUCT_ID, TITLE, BULLETIN_NO, USERNAME, HEIGHT, WEIGHT, CORD_CONTENT, VIEWS, WRITE_DATE, MODIFICATION_DATE, LIKES, JOB)
VALUES
('CORD_2','U0002','PROD_3', '코디2', '2', '브라이언', '180', '80','{"ops":[{"insert":"test입니다"}]}', '3', SYSDATE(), SYSDATE(), '2', '군인');

INSERT INTO COORDINATION_INFO
(COORDINATION_ID, UID, PRODUCT_ID, TITLE, BULLETIN_NO, USERNAME, HEIGHT, WEIGHT, CORD_CONTENT, VIEWS, WRITE_DATE, MODIFICATION_DATE, LIKES, JOB)
VALUES
('CORD_3','U0003','PROD_3', '코디3', '3', '김철수', '173', '63','{"ops":[{"insert":"test입니다"}]}', '2', SYSDATE(), SYSDATE(), '1', '모델');

DELETE FROM COORDINATION_INFO
WHERE COORDINATION_ID='d7c379fb-be5b-4042-ad45-e5fdba297d55'
;

DELETE FROM COORDINATION_INFO
;

UPDATE COORDINATION_INFO
SET USERNAME='홍길동'
WHERE COORDINATION_ID='CORD_1'
;

UPDATE COORDINATION_INFO
SET TITLE='홍길동',
	USERNAME='',
    HEIGHT='',
    WEIGHT='',
    CORD_CONTENT='',
    MODIFICATION_DATE = SYSDATE(),
    JOB=''
WHERE COORDINATION_ID='CORD_1'
;