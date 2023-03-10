
CREATE TABLE USER
(
  UID         VARCHAR(100) NULL     COMMENT '유저ID',
  ID          VARCHAR(100) NULL     COMMENT '아이디',
  PW          VARCHAR(100) NULL     COMMENT '비밀번호',
  EMAIL       VARCHAR(100) NULL     COMMENT '이메일',
  USERNAME    VARCHAR(100) NULL     COMMENT '이름',
  SEX         VARCHAR(100) NULL     COMMENT '성별',
  PHONENUMBER VARCHAR(100) NULL     COMMENT '전화번호',
  BIRTH_YEAR  VARCHAR(100) NULL     COMMENT '태어난연도',
  ROLE        VARCHAR(100) NULL     COMMENT '권한'
) COMMENT '유저테이블';
