

--WHERE ���� ��
--��ȸ ���� ����
SELECT
    emp_no,
    emp_nm,
    addr,
    sex_cd
FROM tb_emp
WHERE sex_cd = 2;

--PK�� ���͸��� �ϸ� ������ 1�� ���ϰ� ��ȸ ��.
SELECT
    emp_no,
    emp_nm,
    addr,
    sex_cd
FROM tb_emp
WHERE emp_no = 1000000003;

--�� ������
SELECT
    emp_no,
    emp_nm,
    addr,
    sex_cd
FROM tb_emp
WHERE sex_cd <> 2 ; -- 2�� �ƴ� ����� �����.


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
    
    
    -- BETWEEN ������
SELECT
    emp_no,
    emp_nm,
    birth_de
FROm tb_emp
WHERE birth_de BETWEEN '19900101' AND '19991231' -- �̻� ������
    ;
    
    
    --IN ���� : OR ����
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