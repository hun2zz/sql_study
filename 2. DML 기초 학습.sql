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
     (1, '선풍기', 120000, SYSDATE);
     
     
     INSERT INTO goods 
 (id, goods_name, price, reg_date)
 VALUES 
     (2, '세탁기', 200000, SYSDATE);
     
     
          INSERT INTO goods 
 (id, goods_name, reg_date)
 VALUES 
     (3, '달고나', SYSDATE);
     
               INSERT INTO goods 
 (id, goods_name)
 VALUES 
     (4, '계란');
     INSERT INTO goods 
 (goods_name, id, reg_date, price)
 VALUES 
     ('점퍼', 5, SYSDATE, '49000');
     -- 컬럼명 생략 시 테이블구조 순서대로 자동 기입.
     INSERT INTO goods 

 VALUES 
     (6, '냉장고', 10000000, SYSDATE);
     
     
     --update
     UPDATE goods
     SET goods_name = '에어컨'
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
     set goods_name = '청바지',
        price = 2999000
        WHERE id = 3;
     
    
     
     
     -- DELETE
   -- 조건없이 delete 하면 전체 삭제 됨
   -- 다만 이 문법은 복구가 가능함.
   DELETE FROM goods
   TRUNCATE TABLE goods;
   DROP TABLE goods;
   
   DELETE FROM goods
   WHERE > 1000;
   
     SELECT * from goods;  
   
   --select 기본
   SELECT 
    certi_cd, certi_nm, issue_insti_nm
   FROM tb_certi;



   SELECT 
    certi_nm, certi_cd, issue_insti_nm
   FROM tb_certi; -- 순서를 바꾸면 조회되는 순서가 바뀌게 된다.
   
   
   SELECT
    certi_nm, issue_insti_nm
    FROM tb_certi; -- 보고 싶지 않은 건 조회 안해도 상관없음.
    
    SELECT DISTINCT -- DISTINCT 사용 시 중복값을 제거하고 출력해준다.
        issue_insti_nm
        FROM tb_certi;
        
        --모든 컬럼 조회
    SELECT * FROM tb_certi;
    
    
    --열 별칭 부여
    SELECT
        emp_nm AS "사원명", -- AS 뒤에 적어주면 불러오는 헤더의 이름을 바꿔서 출력 가능
        addr AS "주소"
    FROM tb_emp
    ;
    
      SELECT
        emp_nm 사원명, -- AS와 " " (""는 띄어쓰기가 없을때만 생략할 수 있음)를 생략할 수 있다.
        addr 주소
    FROM tb_emp
    ;
    
    
    --문자열 결합하기 
    SELECT  
        '자격증 : ' || certi_nm AS "자격증 목록"-- 문자열은 연결해서 출력할 때 보여줄 수 있음.
    FROM tb_certi;
    
    SELECT -- 이렇게 두 개의 테이블을 불러와서 결합 시킬 수 있음.
        certi_nm || ' (' || issue_insti_nm  || ')' AS "자격증"
    FROM tb_certi;