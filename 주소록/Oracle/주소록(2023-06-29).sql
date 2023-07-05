-- 여기는 주소록 addr USER 화면입니다
/*
tbl_address table에 대하여 다음 결과를 확인하는 SQL을 작성
1. TABLE 에 저장된 전체 데이터의 개수는 몇개인가
2. TABLE 에 저장된 전체 리스트를 전화번호 순으로 정렬하여 확인하기
3. TABLE 에 저장된 전체 리스트를 이름 순으로 정렬하여 확인하기
4. TABLE 에 저장된 전체 리스트중에 성씨가 "김" 으로 시작되는 리스트 확인하기
5. TABLE 에 저장된 전체 리스트중에 전화번호의 국번 (090-2222-1234 중에 두번째 구역)
    이 3으로 시작되는 리스트의 개수는 몇개인가
*/

-- 1
SELECT COUNT(*) FROM tbl_address;

-- 2
SELECT * FROM tbl_address ORDER BY a_tel;
-- 역순으로 하려면 (기본값인 ASC 오름차순정렬은 생략가능) full-name : DESCRIBE 
SELECT * FROM tbl_address ORDER BY a_tel DESC;

-- 3
-- ORDER BY a_id, a_name -> 복합정렬 a_id로 먼저 정렬하고 중복된id값이 있을경우 a_name순으로 정렬하라
SELECT * FROM tbl_address ORDER BY a_id, a_name;
SELECT * FROM tbl_address ORDER BY a_name;

-- 4
SELECT * FROM tbl_address WHERE a_name LIKE '이%';

-- 5
-- 중간 문자열 검색, 전화번호중에 3이 포함된 모든 전화번호
SELECT * FROM tbl_address WHERE SUBSTR(a_tel,5,1)='3' ORDER BY a_tel;
SELECT * FROM tbl_address WHERE a_tel LIKE '____3%' ORDER BY a_tel;
SELECT COUNT(*) FROM tbl_address WHERE a_tel LIKE '090-3%';

-- 전화번호 국번이 3으로 시작되는 전화 번호 중에서
-- ID가 가장 큰 데이터와, ID 가 가장 작은 데이터를 찾으시오
SELECT MAX(a_id) 최대값, MIN(a_id) 최솟값 FROM tbl_address WHERE SUBSTR(a_tel,5,1)='3';