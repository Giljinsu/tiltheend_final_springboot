
CREATE TABLE DELIVERY
(
  DELIVERY_ID      VARCHAR(100) NOT NULL COMMENT '배송ID',
  DELIVERY_COMPANY VARCHAR(100) NULL     COMMENT '택배사',
  SHIPMENT_TIME    VARCHAR(100) NULL     COMMENT '제품출고시간',
  DELIVERY_STATUS  VARCHAR(100) NULL     COMMENT '배송상태',
  DELIVERY_ADDRESS VARCHAR(100) NULL     COMMENT '배송지',
  PRIMARY KEY (DELIVERY_ID)
) COMMENT '배송정보';
