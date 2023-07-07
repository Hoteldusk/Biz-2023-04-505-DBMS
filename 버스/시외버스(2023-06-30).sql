-- 시외버스 api를 받아와서 저장
-- 정류장정보 테이블 생성
--CREATE TABLE tbl_ter(
    --pCode	    VARCHAR2(13)	PRIMARY KEY,
    --pName	    nVARCHAR2(50)	NOT NULL,	
    --pItem	    nVARCHAR2(20)	NOT NULL,	
    --pIPrice	    NUMBER,
    --pOPrice	    NUMBER		
--);

CREATE TABLE tbl_ter(
    terId           VARCHAR2(10)     PRIMARY KEY,
    terName         nVARCHAR2(30)     NOT NULL,
    terRegion       nVARCHAR2(10),
    terCoorX        VARCHAR2(30),
    terCoorY        VARCHAR2(30)
);

CREATE TABLE tbl_TerLink(
    tl_Id              VARCHAR2(20)    PRIMARY KEY,
    tl_depTerId        VARCHAR2(10)    NOT NULL,
    tl_arrTerId        VARCHAR2(10)    NOT NULL
);

CREATE TABLE tbl_TerDrive(
    td_Id               VARCHAR2(20)    PRIMARY KEY,
    td_TlId               VARCHAR2(20)    NOT NULL,
    td_interval         VARCHAR2(6),
    td_wasteTime        VARCHAR2(6),
    td_fare             NUMBER
);

CREATE TABLE tbl_Terschedule(
    tes_TdId               VARCHAR2(20)    NOT NULL,
    tes_schedule        VARCHAR2(6)
);

