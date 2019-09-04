create table person(
 num number,
 id varchar2(50),
 pass varchar2(50),
 name varchar2(80)
);

create sequence per_num_seq
start with 1
increment by 1
nocache
nocycle;

insert into person values(per_num_seq.nextval,'kim','1234','ȫ�浿');
insert into person values(per_num_seq.nextval,'part','233','�̿���');

select * from person;

commit;