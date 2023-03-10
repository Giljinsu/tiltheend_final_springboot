INSERT INTO COMMENT
(COMMENT_UID,UID,DATE,SOURCE_UNIQUE_SEQ,CONTENT)
VALUES
('COM_1','U0001',SYSDATE(),'CORD_1','댓글1')
;

INSERT INTO COMMENT
(COMMENT_UID,UID,DATE,SOURCE_UNIQUE_SEQ,CONTENT)
VALUES
('COM_2','U0002',SYSDATE(),'CORD_1','댓글2')
;

INSERT INTO COMMENT
(COMMENT_UID,UID,DATE,SOURCE_UNIQUE_SEQ,CONTENT)
VALUES
('COM_3','U0003',SYSDATE(),'CORD_1','댓글3')
;

SELECT * 
FROM COMMENT
;

SELECT COUNT(*) AS COUNT
FROM COMMENT
WHERE SOURCE_UNIQUE_SEQ = 'CORD_1';

DELETE FROM COMMENT
WHERE SOURCE_UNIQUE_SEQ='b7565c9d-ecc1-4aa9-8b6c-91294e7d99a7';

SELECT * 
FROM COMMENT A, USER B
WHERE A.SOURCE_UNIQUE_SEQ = 'c6b2b587-8fdc-43f8-a2e8-c5bbaf0e1591'
AND A.UID = B.UID
ORDER BY DATE;

        SELECT * 
            FROM COORDINATION_INFO  
            JOIN (SELECT * FROM CIP_ATTACHFILE
            
            GROUP BY SOURCE_UNIQUE_SEQ) AS CIP
            ON COORDINATION_ID = SOURCE_UNIQUE_SEQ 
            ORDER BY WRITE_DATE DESC
            ;