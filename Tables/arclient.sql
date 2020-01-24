--------------------------------------------------------
--  File created - Friday-January-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ARCLIENT
--------------------------------------------------------

  CREATE TABLE "ARCLIENT" 
   (	"ARCLIENTID" NUMBER(10,0), 
	"CLIENT_ID" CHAR(6), 
	"ALPHA_CODE" CHAR(10), 
	"CUSTOMER_ACCOUNT" VARCHAR2(10), 
	"SIC" VARCHAR2(4), 
	"CONSULTANT_ID" CHAR(3), 
	"CONSULTANT_2_ID" CHAR(3), 
	"TERMS_ID" CHAR(5), 
	"RESELLER_NUMBER" VARCHAR2(20), 
	"HIGH_BALANCE_DATE" CHAR(8), 
	"DEFAULT_SHIP_TO" VARCHAR2(11), 
	"DATE_ENTERED" CHAR(8), 
	"LAST_PAYMENT_DATE" CHAR(8), 
	"LAST_ORDER_DATE" CHAR(8), 
	"SHP_FROM_PRT_FLG" CHAR(1), 
	"INVENTORY_FLG" CHAR(1), 
	"FINANCE_CHRG_FLG" CHAR(1), 
	"STATEMENT_CYCLE" CHAR(1), 
	"ROLODEX_FLG" CHAR(1), 
	"MARKETING_FLG" CHAR(1), 
	"USE_INV_PO_ON_RLS" CHAR(1), 
	"NUMBER_OF_PERIODS" NUMBER(3,0), 
	"CURRENT_PERIOD" NUMBER(3,0), 
	"USAGE_PERIODS" NUMBER(3,0), 
	"PARTIAL_FLG" CHAR(1), 
	"PERPETUAL_FLG" CHAR(1), 
	"CALC_PERIOD" NUMBER(3,0), 
	"FISCAL_PERIOD_BEGIN" NUMBER(3,0), 
	"INTERNET_CLIENT" CHAR(1), 
	"INTERNET_CCUSAGE" CHAR(1), 
	"PERPETUAL_UNIT" CHAR(1), 
	"INV_BALANCE_FLG" CHAR(1), 
	"BUNDLED_FLG" CHAR(1), 
	"FREIGHT_EXEMPT" CHAR(1), 
	"AVGDAYS_CALC" CHAR(1), 
	"LINK_AP" CHAR(1), 
	"LINK_OEIVC" CHAR(1), 
	"LINK_PURCHMGR" CHAR(1), 
	"LINK_SN" CHAR(1), 
	"WEB_ADDRESS" VARCHAR2(50), 
	"HOLD_ID" CHAR(2), 
	"SHIPVIA_ID" CHAR(3), 
	"FREIGHTPAYMENT_ID" CHAR(3), 
	"LAST_PRD_END" CHAR(8), 
	"LAST_YEAR_END" CHAR(8), 
	"DEF_CHARGE_ID" CHAR(4), 
	"ROYALTY_ID" CHAR(4), 
	"WHSE_ID" CHAR(11), 
	"KIDS_VENDOR_ID" CHAR(7), 
	"LAST_QN_UPLOAD" CHAR(8), 
	"REMIT_TO_BANK_ID" CHAR(5), 
	"CHANGED_DATE" CHAR(8), 
	"CHANGED_TIME" CHAR(6), 
	"EXPIRE_DATE" CHAR(8), 
	"CLIENT_NAME" CHAR(50), 
	"ADDRESS_1" VARCHAR2(50), 
	"ADDRESS_2" VARCHAR2(50), 
	"CITY" VARCHAR2(50), 
	"STATE" VARCHAR2(4), 
	"ZIP_CODE" CHAR(10), 
	"CONTACT" VARCHAR2(50), 
	"PHONE" CHAR(23), 
	"FAX" VARCHAR2(13), 
	"COUNTRY" VARCHAR2(3), 
	"DS_YEAR" NUMBER(5,0), 
	"CALC_YEAR" NUMBER(5,0), 
	"FIXEDDAYSTOPAY" NUMBER(5,0), 
	"CREDIT_LIMIT" BINARY_DOUBLE, 
	"TOTAL_TO_DATE" BINARY_DOUBLE, 
	"WORK_IN_PROGRESS" BINARY_DOUBLE, 
	"BALANCE" BINARY_DOUBLE, 
	"HIGH_BALANCE" BINARY_DOUBLE, 
	"FREIGHT_MARGIN" BINARY_DOUBLE, 
	"FREIGHT_MARGIN_PCT" BINARY_DOUBLE, 
	"DUNS_NUMBER" BINARY_DOUBLE, 
	"RMK_KEY_REMARKS" NUMBER(10,0)
   ) ;
--------------------------------------------------------
--  DDL for Index CLIENT_ID
--------------------------------------------------------

  CREATE INDEX "CLIENT_ID" ON "ARCLIENT" ("CLIENT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0012287
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012287" ON "ARCLIENT" ("ARCLIENTID") 
  ;
--------------------------------------------------------
--  DDL for Trigger ARCLIENT_SEQ_TR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "ARCLIENT_SEQ_TR" 
 BEFORE INSERT ON ArClient FOR EACH ROW
  WHEN (NEW.ArClientID IS NULL) BEGIN
 SELECT ArClient_seq.NEXTVAL INTO :NEW.ArClientID FROM DUAL;
END;

/
ALTER TRIGGER "ARCLIENT_SEQ_TR" ENABLE;
--------------------------------------------------------
--  Constraints for Table ARCLIENT
--------------------------------------------------------

  ALTER TABLE "ARCLIENT" MODIFY ("ARCLIENTID" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENT" ADD PRIMARY KEY ("ARCLIENTID")
  USING INDEX  ENABLE;
