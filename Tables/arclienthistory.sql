--------------------------------------------------------
--  File created - Friday-January-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ARCLIENTHISTORY
--------------------------------------------------------

  CREATE TABLE "ARCLIENTHISTORY" 
   (	"ARCLIENTHISTORYID" NUMBER(10,0), 
	"CLIENT_ID" CHAR(6), 
	"YEAR" CHAR(4), 
	"DAYS_TO_PAY_01" NUMBER(5,0), 
	"PAYMENT_COUNT_01" NUMBER(5,0), 
	"INVOICE_COUNT_01" NUMBER(5,0), 
	"NET_SALES_01" BINARY_DOUBLE, 
	"GROSS_PROFIT_01" BINARY_DOUBLE, 
	"RECEIPTS_01" BINARY_DOUBLE, 
	"DISCOUNTS_01" BINARY_DOUBLE, 
	"GROSS_SALES_01" BINARY_DOUBLE, 
	"DAYS_TO_PAY_02" NUMBER(5,0), 
	"PAYMENT_COUNT_02" NUMBER(5,0), 
	"INVOICE_COUNT_02" NUMBER(5,0), 
	"NET_SALES_02" BINARY_DOUBLE, 
	"GROSS_PROFIT_02" BINARY_DOUBLE, 
	"RECEIPTS_02" BINARY_DOUBLE, 
	"DISCOUNTS_02" BINARY_DOUBLE, 
	"GROSS_SALES_02" BINARY_DOUBLE, 
	"DAYS_TO_PAY_03" NUMBER(5,0), 
	"PAYMENT_COUNT_03" NUMBER(5,0), 
	"INVOICE_COUNT_03" NUMBER(5,0), 
	"NET_SALES_03" BINARY_DOUBLE, 
	"GROSS_PROFIT_03" BINARY_DOUBLE, 
	"RECEIPTS_03" BINARY_DOUBLE, 
	"DISCOUNTS_03" BINARY_DOUBLE, 
	"GROSS_SALES_03" BINARY_DOUBLE, 
	"DAYS_TO_PAY_04" NUMBER(5,0), 
	"PAYMENT_COUNT_04" NUMBER(5,0), 
	"INVOICE_COUNT_04" NUMBER(5,0), 
	"NET_SALES_04" BINARY_DOUBLE, 
	"GROSS_PROFIT_04" BINARY_DOUBLE, 
	"RECEIPTS_04" BINARY_DOUBLE, 
	"DISCOUNTS_04" BINARY_DOUBLE, 
	"GROSS_SALES_04" BINARY_DOUBLE, 
	"DAYS_TO_PAY_05" NUMBER(5,0), 
	"PAYMENT_COUNT_05" NUMBER(5,0), 
	"INVOICE_COUNT_05" NUMBER(5,0), 
	"NET_SALES_05" BINARY_DOUBLE, 
	"GROSS_PROFIT_05" BINARY_DOUBLE, 
	"RECEIPTS_05" BINARY_DOUBLE, 
	"DISCOUNTS_05" BINARY_DOUBLE, 
	"GROSS_SALES_05" BINARY_DOUBLE, 
	"DAYS_TO_PAY_06" NUMBER(5,0), 
	"PAYMENT_COUNT_06" NUMBER(5,0), 
	"INVOICE_COUNT_06" NUMBER(5,0), 
	"NET_SALES_06" BINARY_DOUBLE, 
	"GROSS_PROFIT_06" BINARY_DOUBLE, 
	"RECEIPTS_06" BINARY_DOUBLE, 
	"DISCOUNTS_06" BINARY_DOUBLE, 
	"GROSS_SALES_06" BINARY_DOUBLE, 
	"DAYS_TO_PAY_07" NUMBER(5,0), 
	"PAYMENT_COUNT_07" NUMBER(5,0), 
	"INVOICE_COUNT_07" NUMBER(5,0), 
	"NET_SALES_07" BINARY_DOUBLE, 
	"GROSS_PROFIT_07" BINARY_DOUBLE, 
	"RECEIPTS_07" BINARY_DOUBLE, 
	"DISCOUNTS_07" BINARY_DOUBLE, 
	"GROSS_SALES_07" BINARY_DOUBLE, 
	"DAYS_TO_PAY_08" NUMBER(5,0), 
	"PAYMENT_COUNT_08" NUMBER(5,0), 
	"INVOICE_COUNT_08" NUMBER(5,0), 
	"NET_SALES_08" BINARY_DOUBLE, 
	"GROSS_PROFIT_08" BINARY_DOUBLE, 
	"RECEIPTS_08" BINARY_DOUBLE, 
	"DISCOUNTS_08" BINARY_DOUBLE, 
	"GROSS_SALES_08" BINARY_DOUBLE, 
	"DAYS_TO_PAY_09" NUMBER(5,0), 
	"PAYMENT_COUNT_09" NUMBER(5,0), 
	"INVOICE_COUNT_09" NUMBER(5,0), 
	"NET_SALES_09" BINARY_DOUBLE, 
	"GROSS_PROFIT_09" BINARY_DOUBLE, 
	"RECEIPTS_09" BINARY_DOUBLE, 
	"DISCOUNTS_09" BINARY_DOUBLE, 
	"GROSS_SALES_09" BINARY_DOUBLE, 
	"DAYS_TO_PAY_10" NUMBER(5,0), 
	"PAYMENT_COUNT_10" NUMBER(5,0), 
	"INVOICE_COUNT_10" NUMBER(5,0), 
	"NET_SALES_10" BINARY_DOUBLE, 
	"GROSS_PROFIT_10" BINARY_DOUBLE, 
	"RECEIPTS_10" BINARY_DOUBLE, 
	"DISCOUNTS_10" BINARY_DOUBLE, 
	"GROSS_SALES_10" BINARY_DOUBLE, 
	"DAYS_TO_PAY_11" NUMBER(5,0), 
	"PAYMENT_COUNT_11" NUMBER(5,0), 
	"INVOICE_COUNT_11" NUMBER(5,0), 
	"NET_SALES_11" BINARY_DOUBLE, 
	"GROSS_PROFIT_11" BINARY_DOUBLE, 
	"RECEIPTS_11" BINARY_DOUBLE, 
	"DISCOUNTS_11" BINARY_DOUBLE, 
	"GROSS_SALES_11" BINARY_DOUBLE, 
	"DAYS_TO_PAY_12" NUMBER(5,0), 
	"PAYMENT_COUNT_12" NUMBER(5,0), 
	"INVOICE_COUNT_12" NUMBER(5,0), 
	"NET_SALES_12" BINARY_DOUBLE, 
	"GROSS_PROFIT_12" BINARY_DOUBLE, 
	"RECEIPTS_12" BINARY_DOUBLE, 
	"DISCOUNTS_12" BINARY_DOUBLE, 
	"GROSS_SALES_12" BINARY_DOUBLE
   ) ;
--------------------------------------------------------
--  DDL for Index SYS_C0012387
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012387" ON "ARCLIENTHISTORY" ("ARCLIENTHISTORYID") 
  ;
--------------------------------------------------------
--  DDL for Trigger ARCLIENTHISTORY_SEQ_TR
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "ARCLIENTHISTORY_SEQ_TR" 
 BEFORE INSERT ON ArClientHistory FOR EACH ROW
  WHEN (NEW.ArClientHistoryID IS NULL) BEGIN
 SELECT ArClientHistory_seq.NEXTVAL INTO :NEW.ArClientHistoryID FROM DUAL;
END;

/
ALTER TRIGGER "ARCLIENTHISTORY_SEQ_TR" ENABLE;
--------------------------------------------------------
--  Constraints for Table ARCLIENTHISTORY
--------------------------------------------------------

  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("ARCLIENTHISTORYID" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("CLIENT_ID" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("YEAR" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DAYS_TO_PAY_01" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("PAYMENT_COUNT_01" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("INVOICE_COUNT_01" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("NET_SALES_01" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_PROFIT_01" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("RECEIPTS_01" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DISCOUNTS_01" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_SALES_01" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DAYS_TO_PAY_02" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("PAYMENT_COUNT_02" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("INVOICE_COUNT_02" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("NET_SALES_02" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_PROFIT_02" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("RECEIPTS_02" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DISCOUNTS_02" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_SALES_02" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DAYS_TO_PAY_03" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("PAYMENT_COUNT_03" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("INVOICE_COUNT_03" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("NET_SALES_03" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_PROFIT_03" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("RECEIPTS_03" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DISCOUNTS_03" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_SALES_03" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DAYS_TO_PAY_04" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("PAYMENT_COUNT_04" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("INVOICE_COUNT_04" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("NET_SALES_04" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_PROFIT_04" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("RECEIPTS_04" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DISCOUNTS_04" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_SALES_04" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DAYS_TO_PAY_05" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("PAYMENT_COUNT_05" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("INVOICE_COUNT_05" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("NET_SALES_05" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_PROFIT_05" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("RECEIPTS_05" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DISCOUNTS_05" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_SALES_05" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DAYS_TO_PAY_06" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("PAYMENT_COUNT_06" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("INVOICE_COUNT_06" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("NET_SALES_06" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_PROFIT_06" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("RECEIPTS_06" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DISCOUNTS_06" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_SALES_06" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DAYS_TO_PAY_07" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("PAYMENT_COUNT_07" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("INVOICE_COUNT_07" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("NET_SALES_07" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_PROFIT_07" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("RECEIPTS_07" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DISCOUNTS_07" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_SALES_07" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DAYS_TO_PAY_08" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("PAYMENT_COUNT_08" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("INVOICE_COUNT_08" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("NET_SALES_08" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_PROFIT_08" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("RECEIPTS_08" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DISCOUNTS_08" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_SALES_08" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DAYS_TO_PAY_09" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("PAYMENT_COUNT_09" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("INVOICE_COUNT_09" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("NET_SALES_09" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_PROFIT_09" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("RECEIPTS_09" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DISCOUNTS_09" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_SALES_09" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DAYS_TO_PAY_10" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("PAYMENT_COUNT_10" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("INVOICE_COUNT_10" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("NET_SALES_10" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_PROFIT_10" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("RECEIPTS_10" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DISCOUNTS_10" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_SALES_10" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DAYS_TO_PAY_11" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("PAYMENT_COUNT_11" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("INVOICE_COUNT_11" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("NET_SALES_11" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_PROFIT_11" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("RECEIPTS_11" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DISCOUNTS_11" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_SALES_11" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DAYS_TO_PAY_12" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("PAYMENT_COUNT_12" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("INVOICE_COUNT_12" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("NET_SALES_12" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_PROFIT_12" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("RECEIPTS_12" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("DISCOUNTS_12" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" MODIFY ("GROSS_SALES_12" NOT NULL ENABLE);
  ALTER TABLE "ARCLIENTHISTORY" ADD PRIMARY KEY ("ARCLIENTHISTORYID")
  USING INDEX  ENABLE;
