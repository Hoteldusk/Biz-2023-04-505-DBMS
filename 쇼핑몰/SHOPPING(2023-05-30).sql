CREATE TABLE tbl_product (
    pCode	VARCHAR2(13)	NOT NULL	PRIMARY KEY,
    pName	nVARCHAR2(10)	NOT NULL,
    pItem	VARCHAR2(10),
    pIPrice	NUMBER,
    pOPrice	NUMBER		
);

CREATE TABLE tbl_buyer (
    buId	VARCHAR2(10)	NOT NULL	PRIMARY KEY,
    buName	nVARCHAR2(20)	NOT NULL,
    buTel	VARCHAR2(15),
    buAddr	nVARCHAR2(125)		
);


CREATE TABLE tbl_iolist (
    ioSEQ	NUMBER	NOT NULL	PRIMARY KEY,
    ioDate	VARCHAR2(13)	NOT NULL,
    ioTime	VARCHAR2(10),		
    ioBuId	VARCHAR2(10),		
    ioPCode	VARCHAR2(13),
    ioQuan	NUMBER,		
    ioPrice	NUMBER
);

DROP SEQUENCE seq_iolist;
CREATE SEQUENCE seq_iolist
START WITH 1 INCREMENT BY 1;


COMMIT;

SELECT * FROM tbl_product;
SELECT * FROM tbl_buyer;
SELECT * FROM tbl_iolist;