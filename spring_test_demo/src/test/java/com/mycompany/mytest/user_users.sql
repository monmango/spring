--  _3MyBatisTestDAOTest.java
create table testmember(
 num varchar2(20),
 name varchar2(30),
email varchar2(20),
tel varchar2(20),
addr varchar2(30),
writeday date
);

select * from testmember;
delete from testmember;
commit;

drop table register;

-- _4MyBatisTestControllerTest.java
create table register(
 userid varchar2(20),
 passwd varchar2(20), 
 name varchar2(30),
email varchar2(20),
tel varchar2(20)
);

select * from register;




select to_char(sysdate,'yyyy-mm-dd hh24:mi:ss'), username 
from user_users

select * from user_users
-----------------------------------
delete testmember
drop table testmember purge
create table testmember(
 userid varchar2(20),
passwd varchar2(30),
 name varchar2(10),
email varchar2(20),
tel varchar2(20)
)
drop table testmember;
select * from testmember;







select * from testmember

select nvl(max(num),1) +1 from testmember
INSERT INTO testmember
VALUES 
 ( (select nvl(max(num),1) +1 from testmember),
   '1','1','1','1',sysdate)


