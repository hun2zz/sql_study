

--WHERE 조건 절
--조회 행을 제한
SELECT
    emp_no,
    emp_nm,
    addr,
    sex_cd
FROM tb_emp
WHERE sex_cd = 2;

--PK로 필터링을 하면 무조건 1건 이하가 조회 됨.
SELECT
    emp_no,
    emp_nm,
    addr,
    sex_cd
FROM tb_emp
WHERE emp_no = 1000000003;

--비교 연산자
SELECT
    emp_no,
    emp_nm,
    addr,
    sex_cd
FROM tb_emp
WHERE sex_cd <> 2 ; -- 2가 아닌 사람만 출력함.


SELECT
    emp_no,
    emp_nm,
    addr,
    birth_de
FROM tb_emp
WHERE birth_de >= '19800101'
    AND birth_de <= '19891231'
    ;
    
    
    
SELECT
    emp_no,
    emp_nm,
    addr,
    birth_de
FROM tb_emp
WHERE NOT birth_de >= '19800101'
    ;
    
    
    -- BETWEEN 연산자
SELECT
    emp_no,
    emp_nm,
    birth_de
FROm tb_emp
WHERE birth_de BETWEEN '19900101' AND '19991231' -- 이상 이하임
    ;
    
    
    --IN 연산 : OR 연산
SELECT
    emp_no,
    emp_nm,
    dept_cd 
FROM tb_emp
WHERE dept_cd = 100002
    OR dept_cd = 100007
;

SELECT
    emp_no,
    emp_nm,
    dept_cd 
FROM tb_emp
WHERE dept_cd IN (100002, 100007)
;