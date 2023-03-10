
CREATE TABLE ITEM_INFO
(
  PRODUCT_CODE VARCHAR(200) NOT NULL COMMENT '상품코드',
  PRODUCT_NAME VARCHAR(200) NOT NULL COMMENT '상품이름',
  PRICE        INTEGER      NOT NULL COMMENT '가격',
  SIZE         VARCHAR(100) NOT NULL COMMENT '사이즈',
  COLOR        VARCHAR(200) NULL     COMMENT '색상',
  PRIMARY KEY (PRODUCT_CODE)
);

CREATE TABLE REVIEW
(
  PRODUCT_CODE   VARCHAR(200) NOT NULL COMMENT '상품코드',
  REVIEW_CONTENT VARCHAR      NOT NULL COMMENT '리뷰 내용',
  RATE           INTEGER      NOT NULL COMMENT '별점'
);

ALTER TABLE REVIEW
  ADD CONSTRAINT FK_ITEM_INFO_TO_REVIEW
    FOREIGN KEY (PRODUCT_CODE)
    REFERENCES ITEM_INFO (PRODUCT_CODE);
