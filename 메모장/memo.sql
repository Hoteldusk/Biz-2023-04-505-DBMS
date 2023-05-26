CREATE TABLE tbl_memo (
m_seq	NUMBER	NOT NULL	PRIMARY KEY,
m_writer	nVARCHAR2(20),
m_date	VARCHAR2(10),	
m_subject	nVARCHAR2(20)	NOT NULL,
m_content	nVARCHAR2(400)
);

INSERT INTO tbl_memo(m_seq, m_writer, m_date, m_subject, m_content)
VALUES('0001','홍길동','2023-05-26','제목','내용내용내용');

SELECT * FROM tbl_memo;

DROP SEQUENCE seq_memo;
CREATE SEQUENCE seq_memo
START WITH 1 INCREMENT BY 1;


COMMIT