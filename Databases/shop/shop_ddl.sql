
CREATE TABLE PRODUCT_LIST
(
  PRODUCT_ID             VARCHAR(100) NOT NULL COMMENT '상품아이디',
  PICTURE                VARCHAR(100) NULL     COMMENT '사진',
  BRAND                  VARCHAR(100) NULL     COMMENT '브랜드',
  CLOTHES_NAME           VARCHAR(100) NULL     COMMENT '의류명',
  PRICE                  INT          NULL     COMMENT '가격',
  IS_BESTSELLING_PRODUCT VARCHAR(100) NULL     COMMENT '베스트상품여부'
) COMMENT '상품리스트';
