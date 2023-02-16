
CREATE TABLE ADMIN_LIST
(
  POST_NO INTEGER NOT NULL COMMENT '번호',
  POST_NO INTEGER NOT NULL,
  POST_NO INTEGER NOT NULL
);

CREATE TABLE ANNOUNCEMENT
(
  POST_NO  INTEGER      NOT NULL COMMENT '번호',
  CATEGORY VARCHAR(200) NOT NULL COMMENT '구분',
  TITLE    VARCHAR(200) NOT NULL COMMENT '제목',
  WRITER   VARCHAR(200) NOT NULL COMMENT '작성자',
  DATE     DATE         NOT NULL COMMENT '날짜',
  CONTENT  VARCHAR      NOT NULL COMMENT '내용',
  PRIMARY KEY (POST_NO)
);

CREATE TABLE FAQ
(
  POST_NO  INTEGER      NOT NULL,
  CATEGORY VARCHAR(200) NOT NULL,
  TITLE    VARCHAR(200) NOT NULL,
  WRITER   VARCHAR(200) NOT NULL,
  DATE     DATE         NOT NULL,
  CONTENT  VARCHAR      NOT NULL,
  PRIMARY KEY (POST_NO)
);

CREATE TABLE QNA
(
  POST_NO  INTEGER      NOT NULL,
  CATEGORY VARCHAR(200) NOT NULL,
  TITLE    VARCHAR(200) NOT NULL,
  WRITER   VARCHAR(200) NOT NULL,
  DATE     DATE         NOT NULL,
  CONTENT  VARCHAR      NOT NULL,
  PRIMARY KEY (POST_NO)
);

ALTER TABLE ADMIN_LIST
  ADD CONSTRAINT FK_ANNOUNCEMENT_TO_ADMIN_LIST
    FOREIGN KEY (POST_NO)
    REFERENCES ANNOUNCEMENT (POST_NO);

ALTER TABLE ADMIN_LIST
  ADD CONSTRAINT FK_QNA_TO_ADMIN_LIST
    FOREIGN KEY (POST_NO)
    REFERENCES QNA (POST_NO);

ALTER TABLE ADMIN_LIST
  ADD CONSTRAINT FK_FAQ_TO_ADMIN_LIST
    FOREIGN KEY (POST_NO)
    REFERENCES FAQ (POST_NO);
