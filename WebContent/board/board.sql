<<<<<<< HEAD

/* Drop Tables */

DROP TABLE board CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE seq_board;




/* Create Sequences */

CREATE SEQUENCE seq_board;



/* Create Tables */

CREATE TABLE board
(
	no number NOT NULL,
	title varchar2(100) NOT NULL,
	name varchar2(20) NOT NULL,
	content varchar2(4000) NOT NULL,
	regdate date DEFAULT SYSDATE NOT NULL,
	pwd varchar2(128) NOT NULL,
	id varchar2(20) NOT NULL,
	PRIMARY KEY (no)
);



=======
select * from board;

delete from BOARD where pwd='1';

commit
>>>>>>> 7d8a622c853c91ea9ba03e2065fa2e8e89064a94
