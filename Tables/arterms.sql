--------------------------------------------------------
--  File created - Friday-January-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ARTERMS
--------------------------------------------------------

  CREATE TABLE "ARTERMS" 
   (	"ARTERMSID" NUMBER(10,0), 
	"TERMS_ID" CHAR(5), 
	"DESCRIPTION" CHAR(30), 
	"DISCOUNT_DOM_FLG" CHAR(1), 
	"DISCOUNT_DAYS" NUMBER(5,0), 
	"NET_DAYS" NUMBER(5,0), 
	"DISCOUNT_AMT" BINARY_DOUBLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_1471220876708613" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012640
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012640" ON "ARTERMS" ("ARTERMSID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_1471220876708613" ;
--------------------------------------------------------
--  DDL for Trigger ARTERMS_SEQ_TR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "ARTERMS_SEQ_TR" 
 BEFORE INSERT ON ArTerms FOR EACH ROW
  WHEN (NEW.ArTermsID IS NULL) BEGIN
 SELECT ArTerms_seq.NEXTVAL INTO :NEW.ArTermsID FROM DUAL;
END;
/
ALTER TRIGGER "ARTERMS_SEQ_TR" ENABLE;
--------------------------------------------------------
--  Constraints for Table ARTERMS
--------------------------------------------------------

  ALTER TABLE "ARTERMS" MODIFY ("ARTERMSID" NOT NULL ENABLE);
  ALTER TABLE "ARTERMS" ADD PRIMARY KEY ("ARTERMSID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_1471220876708613"  ENABLE;
