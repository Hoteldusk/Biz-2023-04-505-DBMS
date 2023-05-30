CREATE TABLESPACE shopping -- 저장소의 이름을 라는 이름으로 사용하겠다
DATAFILE 'C:/app/data/shopping.dbf' -- 저장소 폴더에 라는 이름으로 생성
SIZE 1M AUTOEXTEND ON NEXT 1K; -- 초기의 저장소 공간을 1M(byte)확보하고
                               -- 혹시 부족하면 1K(byte)씩 자동으로 증가하라
                               
ALTER SESSION SET "_ORACLE_SCRIPT" = true;
CREATE USER shopping IDENTIFIED BY 12341234
DEFAULT TABLESPACE shopping;

GRANT DBA TO shopping;