
CREATE TABLE ADMIN
(
  RANGKING          INTEGER      NOT NULL COMMENT '순위',
  PRODUCT_CODE      VARCHAR(200) NOT NULL COMMENT '상품코드',
  SALES_VOLUME      INTEGER      NOT NULL COMMENT '판매 수',
  SALES             INTEGER      NOT NULL COMMENT '매출',
  DELIVERY_COMPLETE INTEGER      NULL     COMMENT '배송완료',
  DELIVERY_READY    INTEGER      NOT NULL COMMENT '배송준비',
  PRIMARY KEY (PRODUCT_CODE)
);
