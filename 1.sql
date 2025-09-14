CREATE DATABASE './1.fdb'
USER 'SYSDBA' PASSWORD 'masterkey'
PAGE_SIZE 16384
DEFAULT CHARACTER SET UNICODE_FSS;

CREATE TABLE CUSTOMERS (
    CUST_ID       INTEGER NOT NULL,
    CUST_NAME     INTEGER,
    CUST_UNISITE  INTEGER
);

CREATE TABLE SMS_DETAIL (
    ID INTEGER NOT NULL,
    magazin  VARCHAR(30),
    adres VARCHAR(50)
);









--#########################################


/*
  Комментарий
*/
