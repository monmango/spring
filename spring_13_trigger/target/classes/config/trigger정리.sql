create table deptex(
 dno number primary key,
 dname varchar2(100));
 
 insert into deptex values(10,'aaa');
 insert into deptex values(20,'bbb');
 select * from deptex;

create table empex(
 num number primary key,
 name varchar2(100),
 dno number,
 constraint deptno_pk foreign key(dno)
  references deptex(dno) on delete cascade
 );
 
 insert into empex values(1,'one',10);
 delete from deptex where dno=10;
 select * from empex;
 
select table_name, constraint_name  
from user_constraints; 

select * from ALL_CONSTRAINTS 
WHERE TABLE_NAME='EMP09';

alter table EMP09 
 drop constraint emp09_deptno_fk;
 
 
[ Ʈ���� ]
 �����ڰ� ȣ���ؼ� ����ϴ� ���� �ƴ϶�, Ư�� �̺�Ʈ�� �����ؼ� �� �̺�Ʈ, ������ �߻���
 �ڵ������� �����ϴ� ������ �ǹ��Ѵ�.
  (�����ͺ��̽��� �̸� ���� ���� ���ǵ��� �����ϰų�, Ư�� �̺�Ʈ�� �߻��ϸ� �ڵ�������
  ����Ǵ� ����(PL/SQL ��)���� ����Ŭ���� �ڵ������� ����Ǵ� PL/SQL ���� �ǹ�)

[Ʈ���� ����]

CREATE or REPLACE TRIGGER Ʈ�����̸�
BEFORE|AFTER 
[INSERT,DELETE,UPDATE]ON ���̺��̸�
[Referencing OLD AS {������ ���� �����ϴ� ������} NEW AS {������ ���� �����ϴ� ������}]
[ FOR EACH ROW ]
DECLARE

-- ��������

BEGIN

-- Ʈ���� �ڵ�

EXCEPTION

WHEN

--�ͼ���

END;

[�̺�Ʈ]
 INSERT, UPDATE, DELETE
 BEFORE : ������ �����ϱ� ���� Ʈ���Ÿ� ����
 AFTER : ������ ������ �Ŀ� Ʈ���Ÿ� ����
 FOR EACH ROW : �� Ʈ�������� �˸�
 WHEN ���� : ������� Ʈ���� �̺�Ʈ �߿� ���ǿ� �����ϴ� �����͸� Ʈ���� �Ѵ�.
 REFERENCING : ���� �޴� ���� ���� ����

 :NEW.�÷���: DMLƮ������ ���� �Ǵ� ���Թ� ������ ����� �����ϴ�. -> SQL �ݿ� ���� �÷� ������
 :OLD.�÷��� : DMLƮ������ ���� �Ǵ� ������ ������ ����� �����ϴ�. -> SQL �ݿ����� �÷� ������