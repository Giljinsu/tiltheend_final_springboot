SELECT * FROM CIP_ATTACHFILE;

INSERT INTO CIP_ATTACHFILE
        (ATTACHFILE_SEQ, SOURCE_UNIQUE_SEQ, ORGINALFILE_NAME, PHYSICALFILE_NAME, 
        REGISTER_SEQ, REGISTRY_DATE, MODIFIER_SEQ, MODIFY_DATE)
VALUES
		('UU11', 'UU22-1111', 'TESTFILE','TEST22.HTML','REG1123',SYSDATE(),'MOD1122',SYSDATE())
;

INSERT INTO CIP_ATTACHFILE
        (ATTACHFILE_SEQ, SOURCE_UNIQUE_SEQ, ORGINALFILE_NAME, PHYSICALFILE_NAME, 
        REGISTER_SEQ, REGISTRY_DATE, MODIFIER_SEQ, MODIFY_DATE)
VALUES
		('UU12', 'UU22-1112', 'TESTIMG','TEST23.png','REG1124',SYSDATE(),'MOD1123',SYSDATE())
;

INSERT INTO CIP_ATTACHFILE
        (ATTACHFILE_SEQ, SOURCE_UNIQUE_SEQ, ORGINALFILE_NAME, PHYSICALFILE_NAME, 
        REGISTER_SEQ, REGISTRY_DATE, MODIFIER_SEQ, MODIFY_DATE)
VALUES
		('UU13', 'UU22-1113', 'TESTIMG2','TEST22.PNG','REG1125',SYSDATE(),'MOD1124',SYSDATE())
;

DELETE FROM CIP_ATTACHFILE
WHERE ATTACHFILE_SEQ='UU11'
;