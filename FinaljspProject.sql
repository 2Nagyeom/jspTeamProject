CREATE TABLE project_member ( 
MID VARCHAR2(20)
MPW VARCHAR2(20)
MNAME VARCHAR2(50)
MADDRESS VARCHAR2(500)
MPHONE VARCHAR2(50)
MEMAIL VARCHAR2(100)
MRDATE DATE
MBIRTH DATE
PRIMARY KEY (MID)
);


CREATE TABLE product (
  id number NOT NULL,
  pname varchar(100) NOT NULL,
  pimage1 varchar(4000) NOT NULL,
  pdetail varchar(500) NOT NULL,
  prdate date NOT NULL,
  cid number NOT NULL,
  price number NOT NULL
 );

CREATE SEQUENCE seq_pid nocache;

INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(10, '투구슬 팔찌 투링 팔찌', './picture/brace1.jpeg', '로즈골드 구슬 팔찌와, 블랙구슬 팔찌가 함께 어울리는 팔찌', '2021-06-19', 1, 1300);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(11, '투링팔찌', './picture/brace2.jpeg', ' 하나의 큰 구슬이 달려있는 미니체인팔찌와 약간의 원으로 이루어진 팔찌가 함께 있는 팔찌', '2021-06-19', 1, 1900);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(12, '커플팔찌', './picture/brace3.jpeg', '커플과 함꼐 차면 좋은 실팔찌', '2021-06-19', 1, 2500);
INSERT INTO product (pid,pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(13, '곱창팔찌', './picture/brace3.jpeg', '요즘 유행하는 곱창밴드로 이루어진 꽃모양의 곱창팔찌', '2021-06-19', 1, 4500);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(14, '나비핀', './picture/hair1.jpeg', '메탈로 이루어진 나비모양의 집게핀으로 세련됌을 나타내는 핀', '2021-06-19', 2, 5700);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(15, '나이키 머리띠', './picture/hair2.jpeg', '인싸들의 필수템! 나이키에서 직구한 헤어밴드', '2021-06-19', 2, 3700);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(16, '니트 밴드', './picture/hair3.jpeg', '봄냄새 물씬 나는 니트로 여성스러움을 한껏 노출시킬 수 있는 팔찌', '2021-06-19', 2, 1200);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(17, '실크 밴드', './picture/hair4.jpeg', '원단이 실크로 이루어짐으로써 세련됌을 보여줄 수 있는 밴드', '2021-06-19', 2, 2500);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(18, '라즈베리 목걸이', './picture/neck1.jpeg', '로즈골드색과 라즈베리색이 모여 귀품스러움을 보여줄 수 있는 목걸이', '2021-06-19', 3, 27700);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(19, '키목걸이', './picture/neck2.jpeg', '키모양의 목걸이로 보호본능을 일으키게 하는 목걸이', '2021-06-19', 3, 20700);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(20, '쓰리링 목걸이', './picture/neck3.jpeg', '팬던트가 세개가 있는 목걸이로 힙함을 보여줄 수 있는 목걸이', '2021-06-19', 3, 21700);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(21, '팬던트 목걸이', './picture/neck4.jpeg', '보석 세개와 큰 팬던트모양의 보석이 박혀있는 목걸이로 화려함을 연출 시킬 수 있는 목걸이', '2021-06-19', 3, 17700);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(22, '로즈반지', './picture/ring1.jpeg', '로즈골드색으로 이루어진 반지로써 여성스러움을 연출시킬수 있는 반지', '2021-06-19', 4, 14700);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(23, '하트 반지', './picture/ring2.jpeg', '엄청나게 블링블링한 반지로 인싸가 되고싶다면 이 반지를 착용!!', '2021-06-19', 4, 17700);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(24, '링반지', './picture/ring3.jpeg', '간단하고 세련된 가장 인기있는 반지', '2021-06-19', 4, 15000);
INSERT INTO product (pid, pname, pimage1, pdetail, prdate, cid, pprice) VALUES
(25, '투링반지', './picture/ring4.jpeg', '은으로 만들어져 귀품스러운 분위기 연출 가능', '2021-06-19', 5, 14300);  

CREATE TABLE basket (
  mid varchar2(20) NOT NULL,
  pname varchar2(100) NOT NULL,
  totalprice varchar2(30) NOT NULL,
  pamount number(11) NOT NULL,
  ppicture varchar2(4000) NOT NULL
);

select * from basket;

select * from product;

select * from project_member;

CREATE TABLE BBS_FREE (
    freeID NUMBER,
    freeTITLE VARCHAR2(100),
    mID VARCHAR2(20),
    freeDATE VARCHAR2(50),
    freeCONTENT VARCHAR2(4000),   
    reAvailable NUMBER(1),    
    PRIMARY KEY (freeID)
);

CREATE TABLE  BBS_REVIEW (
    reID NUMBER,
    reTITLE VARCHAR2(100),
    mID VARCHAR2(20),
    reDATE VARCHAR2(50),
    reIMAGE VARCHAR2(4000),
    reCONTENT VARCHAR2(4000),   
    reAvailable NUMBER(1), 
    rImage VARCHAR2(4000),
    PRIMARY KEY (reID)
);

-- 댓글 테이블
CREATE TABLE REVIEW_COMMENT
(
  COMMENT_NUM NUMBER NOT NULL,
  COMMENT_REID NOT NULL,
  COMMENT_ID VARCHAR2(15),
  COMMENT_DATE DATE,
  COMMENT_CONTENT VARCHAR2(1000) NOT NULL,
  CONSTRAINT PK_comment PRIMARY KEY(COMMENT_NUM),
  CONSTRAINT FK_comment FOREIGN KEY(COMMENT_REID) REFERENCES BBS_REVIEW(REID)
);
 
-- BBS_REVIEW는 게시판 테이블을,  COMMENT_NUM은 댓글번호를 나타낸다.
 
-- 댓글 시퀀스 
create sequence COMMENT_SEQ; 

