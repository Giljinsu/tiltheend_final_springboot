SELECT * FROM user
WHERE ID = 'U0001'
;

SELECT * FROM user
;

SELECT ID FROM user
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
SET ROLE='ROLE_ADMIN'
WHERE UID='f45c7751-28d5-4f3f-b4d0-0cec530a7bf9'
;

UPDATE USER
SET USERNAME='ROLE_ADMIN',
EMAIL='ROLE_ADMIN',
SEX='ROLE_ADMIN',
PHONENUMBER='ROLE_ADMIN',
BIRTH_YEAR='ROLE_ADMIN'

WHERE UID='12fd7510-e1d9-458e-842f-9d2e3c2d649c'
;