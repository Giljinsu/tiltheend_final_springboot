SELECT * FROM COORDINATION_INFO
-- WHERE COORDINATION_ID = ''
order by write_date desc
;
        SELECT * 
            FROM COORDINATION_INFO  
            JOIN (SELECT * FROM CIP_ATTACHFILE
            WHERE FILE_ORDER IN (SELECT MIN(FILE_ORDER) FROM CIP_ATTACHFILE)
            GROUP BY SOURCE_UNIQUE_SEQ) AS CIP
            ON COORDINATION_ID = SOURCE_UNIQUE_SEQ 
            ORDER BY WRITE_DATE DESC
            -- LIMIT 0, 1
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
WHERE COORDINATION_ID='07617338-91ce-4ecf-8b66-d5e716da76c5'
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

SELECT cip_attachfile.SOURCE_UNIQUE_SEQ FROM coordination_info
JOIN cip_attachfile ON (coordination_info.COORDINATION_ID = cip_attachfile.SOURCE_UNIQUE_SEQ)