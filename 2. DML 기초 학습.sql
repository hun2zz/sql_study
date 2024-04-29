CREATE TABLE goods (
    id NUMBER(6) PRIMARY KEY,
    goods_name VARCHAR2(10) NOT NULL,
    price NUMBER (10) DEFAULT 1000,
    reg_date DATE
);

-- insert
INSERT INTO goods 
 (id, goods_name, price, reg_date)
 VALUES 
     (1, '��ǳ��', 120000, SYSDATE);
     
     
     INSERT INTO goods 
 (id, goods_name, price, reg_date)
 VALUES 
     (2, '��Ź��', 200000, SYSDATE);
     
     
          INSERT INTO goods 
 (id, goods_name, reg_date)
 VALUES 
     (3, '�ް�', SYSDATE);
     
               INSERT INTO goods 
 (id, goods_name)
 VALUES 
     (4, '���');
     INSERT INTO goods 
 (goods_name, id, reg_date, price)
 VALUES 
     ('����', 5, SYSDATE, '49000');
     -- �÷��� ���� �� ���̺��� ������� �ڵ� ����.
     INSERT INTO goods 

 VALUES 
     (6, '�����', 10000000, SYSDATE);
     
     
     --update
     UPDATE goods
     SET goods_name = '������'
     WHERE id = 1;
     
     UPDATE goods
     SET price = 9999;
     
     UPDATE goods
     SET id = 11
     WHERE id = 4;
          
     UPDATE goods
     SET goods_name = null
     WHERE id = 3;
     
     UPDATE goods
     set goods_name = 'û����',
        price = 2999000
        WHERE id = 3;
     
    
     
     
     -- DELETE
   -- ���Ǿ��� delete �ϸ� ��ü ���� ��
   -- �ٸ� �� ������ ������ ������.
   DELETE FROM goods
   TRUNCATE TABLE goods;
   DROP TABLE goods;
   
   DELETE FROM goods
   WHERE > 1000;
   
     SELECT * from goods;  
   
   --select �⺻
   SELECT 
    certi_cd, certi_nm, issue_insti_nm
   FROM tb_certi;



   SELECT 
    certi_nm, certi_cd, issue_insti_nm
   FROM tb_certi; -- ������ �ٲٸ� ��ȸ�Ǵ� ������ �ٲ�� �ȴ�.
   
   
   SELECT
    certi_nm, issue_insti_nm
    FROM tb_certi; -- ���� ���� ���� �� ��ȸ ���ص� �������.
    
    SELECT DISTINCT -- DISTINCT ��� �� �ߺ����� �����ϰ� ������ش�.
        issue_insti_nm
        FROM tb_certi;
        
        --��� �÷� ��ȸ
    SELECT * FROM tb_certi;
    
    
    --�� ��Ī �ο�
    SELECT
        emp_nm AS "�����", -- AS �ڿ� �����ָ� �ҷ����� ����� �̸��� �ٲ㼭 ��� ����
        addr AS "�ּ�"
    FROM tb_emp
    ;
    
      SELECT
        emp_nm �����, -- AS�� " " (""�� ���Ⱑ �������� ������ �� ����)�� ������ �� �ִ�.
        addr �ּ�
    FROM tb_emp
    ;
    
    
    --���ڿ� �����ϱ� 
    SELECT  
        '�ڰ��� : ' || certi_nm AS "�ڰ��� ���"-- ���ڿ��� �����ؼ� ����� �� ������ �� ����.
    FROM tb_certi;
    
    SELECT -- �̷��� �� ���� ���̺��� �ҷ��ͼ� ���� ��ų �� ����.
        certi_nm || ' (' || issue_insti_nm  || ')' AS "�ڰ���"
    FROM tb_certi;