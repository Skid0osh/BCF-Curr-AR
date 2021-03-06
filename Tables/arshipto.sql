--------------------------------------------------------
--  File created - Friday-January-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ARSHIPTO
--------------------------------------------------------

  CREATE TABLE "ARSHIPTO" 
   (	"ARSHIPTOID" NUMBER(10,0), 
	"CLIENT_ID" CHAR(6), 
	"SHIPTO_ID" CHAR(11), 
	"TAX_ID" CHAR(15), 
	"EXEMPT_TAX_ID" CHAR(15), 
	"INVENTORIED_FLG" CHAR(1), 
	"WAREHOUSE_FLG" CHAR(1), 
	"INTERNET_FLG" CHAR(1), 
	"REPLACE_DESC" CHAR(1), 
	"WHSE_ONLY" CHAR(1), 
	"QN_SHOW_FRT" CHAR(1), 
	"QN_SHOW_TAX" CHAR(1), 
	"QN_SHOW_WT" CHAR(1), 
	"CONS_SET" CHAR(1), 
	"SHIPTO_RES" CHAR(1), 
	"KIDS_VEN_ID" CHAR(6), 
	"CHANGED_DATE" CHAR(8), 
	"CHANGED_TIME" CHAR(6), 
	"CRM_REC_ID" CHAR(15), 
	"SHIP_GRP_ID" CHAR(11), 
	"EMAIL" VARCHAR2(255), 
	"USER_1" VARCHAR2(30), 
	"USER_2" VARCHAR2(30), 
	"USER_3" VARCHAR2(30), 
	"USER_4" VARCHAR2(30), 
	"ACCT_3RDPARTY" VARCHAR2(30), 
	"LINKTO_SHIP_ID" CHAR(11), 
	"WHSE_ID" CHAR(11), 
	"PMTMETHODS" CHAR(20), 
	"FREIGHTPMT_ID" CHAR(3), 
	"SHIP_VIA_ID" CHAR(3), 
	"CARRIER_3RDPARTY" NUMBER(5,0), 
	"SHIPTO_NAME" CHAR(32), 
	"ADDRESS_1" VARCHAR2(32), 
	"ADDRESS_2" VARCHAR2(32), 
	"CITY" VARCHAR2(25), 
	"STATE" VARCHAR2(4), 
	"ZIP_CODE" VARCHAR2(10), 
	"CONTACT" VARCHAR2(30), 
	"PHONE" CHAR(23), 
	"FAX" VARCHAR2(13), 
	"COUNTRY" VARCHAR2(3), 
	"DELIVER_INSTR_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_1471220876708613" ;
--------------------------------------------------------
--  DDL for Index ARSHIP_CLIENT_ID
--------------------------------------------------------

  CREATE INDEX "ARSHIP_CLIENT_ID" ON "ARSHIPTO" ("CLIENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_1471220876708613" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012636
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012636" ON "ARSHIPTO" ("ARSHIPTOID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_1471220876708613" ;
--------------------------------------------------------
--  DDL for Trigger ARSHIPTO_SEQ_TR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "ARSHIPTO_SEQ_TR" 
 BEFORE INSERT ON ArShipTo FOR EACH ROW
  WHEN (NEW.ArShipToID IS NULL) BEGIN
 SELECT ArShipTo_seq.NEXTVAL INTO :NEW.ArShipToID FROM DUAL;
END;

/
ALTER TRIGGER "ARSHIPTO_SEQ_TR" ENABLE;
--------------------------------------------------------
--  Constraints for Table ARSHIPTO
--------------------------------------------------------

  ALTER TABLE "ARSHIPTO" MODIFY ("ARSHIPTOID" NOT NULL ENABLE);
  ALTER TABLE "ARSHIPTO" ADD PRIMARY KEY ("ARSHIPTOID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "APEX_1471220876708613"  ENABLE;
