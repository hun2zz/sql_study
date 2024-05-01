SELECT * FROM tb_sal_his;

--�����Լ� (������ �Լ�) 
--���� ���� ��� �ѹ��� �Լ��� �����Ŵ\


SELECT
    COUNT(*) "���� Ƚ��", 
    SUM(pay_amt) "���� �Ѿ�",
    AVG(pay_amt) "��� ���޾�",
    MAX(pay_amt) "�ִ� ���޾�",
    MIN(pay_amt) "�ּ� ���޾�"
FROM tb_sal_his
;

SELECT
    SUBSTR(emp_nm, 1, 1) -- ������ �Լ��� 41�� �����Ͱ� �Ȱ��� ���´�.
FROM tb_emp;

SELECT
    COUNT(emp_nm)
FROM tb_emp;

SELECT 
    COUNT(direct_manager_emp_no)
FROM tb_emp
;

--//////////////////////////////////////////////////////
-- group by

SELECT
    COUNT(emp_no) "�� �����",
    MIN(birth_de) "�ֿ����� ����",
    MAX(birth_de) "�ֿ����� ����"
FROM tb_emp
;
-- �μ����� ������� �� ������ �μ����� �ֿ������� ������ ������ ?

--GROUPT BY : ������ �÷����� �ұ׷�ȭ �� �� 
--�� �׷캰�� �����Լ��� ���� ����

SELECT
    emp_no,
    emp_nm,
    birth_de,
    dept_cd
FROM tb_emp
ORDER BY dept_cd
;

SELECT
    dept_cd, COUNT(*) "�μ��� �����",
    MIN(birth_de) "�μ��� �ֿ�����"
FROM tb_emp
GROUP BY dept_cd
;

SELECT 
    emp_no, 
    TO_CHAR(SUM(pay_amt), 'L999,999,999') "����� �ѱ޿���",
    TO_CHAR(ROUND(AVG(pay_amt), 2), 'L999,999,999') "����� ��ձ޿���",
    TO_CHAR(MAX(pay_amt), 'L999,999,999') "����� �ְ�޿���",
    COUNT(pay_de) "�޿� ����Ƚ��"
FROM tb_sal_his
GROUP BY emp_no
ORDER BY emp_no
;

SELECT -- GROUP by ���� ����� �÷��� SELECT���� ���� ��ȸ �����ϴ�.
    emp_no, COUNT(*)
    FROm tb_emp
    GROUP BY emp_no
    ;
    

SELECT -- 3�� �μ��̸鼭 ������ �긦 ã�´�. GROUP�� 2�����. 
    dept_cd, sex_cd, COUNT(*), MAX(birth_de)
    FROM tb_emp
    GROUP BY dept_cd, sex_cd
    ORDER BY dept_cd
    ;
    