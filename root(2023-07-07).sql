-- 여기는 root 화면
-- 유저삭제
DROP USER 'todo'@'localhost';
DROP USER 'todo'@'192.168.4.%';
DROP USER 'todo'@'%';
-- 사실 '' 필요없음
-- 사용자 생성
CREATE USER todo@localhost IDENTIFIED BY '88888888';
CREATE USER todo@localhost;
-- 권한부여
GRANT ALL PRIVILEGES ON todoDB.* TO todo@localhost;
-- 권한적용
FLUSH PRIVILEGES;

-- MySQL 의 SCHEME 생성
CREATE DATABASE scoreDB;
GRANT ALL PRIVILEGES ON scoreDB.* TO todo@localhost;
FLUSH PRIVILEGES;