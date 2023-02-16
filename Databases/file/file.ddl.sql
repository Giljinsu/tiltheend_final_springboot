CREATE TABLE CIP_ATTACHFILE
(
	-- 파일을 N:N 관계로 연계 위해 추가
	ATTACHFILE_SEQ varchar(40) NOT NULL COMMENT '첨부파일 일련번호',
	-- 원본레코드 UNIQUE SEQ, 상담일지는 member_seq
	SOURCE_UNIQUE_SEQ varchar(40) NOT NULL COMMENT '원본레코드 UNIQUE SEQ',
	-- 첨부파일 유형
	ATTACHFILE_TYPE varchar(40) COMMENT '첨부파일 유형',
	-- 원본파일_명
	ORGINALFILE_NAME varchar(200) NOT NULL COMMENT '원본 파일명',
	-- 첨부 파일명
	PHYSICALFILE_NAME varchar(200) NOT NULL COMMENT '첨부 파일명',
	-- 썸네일 첨부파일명
	THUMBNAIL_NAME varchar(500) COMMENT '썸네일 첨부파일명',
	-- 첨부파일 저장경로
	ATTACHFILE_PATH varchar(500) COMMENT '첨부파일 저장경로',
	-- 첨부파일 크기
	ATTACHFILE_SIZE decimal COMMENT '첨부파일 크기',
	ATTACHFILE_HEIGHT decimal COMMENT '파일 높이',
	ATTACHFILE_WIDTH decimal COMMENT '파일 폭',
	-- 등록자SEQ
	REGISTER_SEQ varchar(50) NOT NULL COMMENT '등록자SEQ',
	-- 등록일자
	REGISTRY_DATE varchar(20) NOT NULL COMMENT '등록일자',
	MODIFIER_SEQ varchar(40) NOT NULL COMMENT '수정자_SEQ',
	-- 수정일자
	MODIFY_DATE varchar(20) NOT NULL COMMENT '수정일자',
	PRIMARY KEY (ATTACHFILE_SEQ)
) COMMENT = '파일 정보';