SELECT * FROM tb_sal_his;

--집계함수 (다중행 함수) 
--여러 행을 묶어서 한번에 함수를 적용시킴\


SELECT
    COUNT(*) "지급 횟수", 
    SUM(pay_amt) "지급 총액",
    AVG(pay_amt) "평균 지급액",
    MAX(pay_amt) "최대 지급액",
    MIN(pay_amt) "최소 지급액"
FROM tb_sal_his
;

SELECT
    SUBSTR(emp_nm, 1, 1) -- 단일행 함수는 41건 데이터가 똑같이 나온다.
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
    COUNT(emp_no) "총 사원수",
    MIN(birth_de) "최연장자 생일",
    MAX(birth_de) "최연소자 생일"
FROM tb_emp
;
-- 부서별로 사원수가 몇 명인지 부서별로 최연장자의 생일은 언젠지 ?

--GROUPT BY : 지정된 컬럼으로 소그룹화 한 후 
--각 그룹별로 집계함수를 각각 적용

SELECT
    emp_no,
    emp_nm,
    birth_de,
    dept_cd
FROM tb_emp
ORDER BY dept_cd
;

SELECT
    dept_cd, COUNT(*) "부서별 사원수",
    MIN(birth_de) "부서별 최연장자"
FROM tb_emp
GROUP BY dept_cd
;

SELECT 
    emp_no, 
    TO_CHAR(SUM(pay_amt), 'L999,999,999') "사원별 총급여액",
    TO_CHAR(ROUND(AVG(pay_amt), 2), 'L999,999,999') "사원별 평균급여액",
    TO_CHAR(MAX(pay_amt), 'L999,999,999') "사원별 최고급여액",
    COUNT(pay_de) "급여 수령횟수"
FROM tb_sal_his
GROUP BY emp_no
ORDER BY emp_no
;

SELECT -- GROUP by 절에 사용한 컬럼만 SELECT에서 직접 조회 가능하다.
    emp_no, COUNT(*)
    FROm tb_emp
    GROUP BY emp_no
    ;
    

SELECT -- 3번 부서이면서 남자인 얘를 찾는다. GROUP이 2개라면. 
    dept_cd, sex_cd, COUNT(*), MAX(birth_de)
    FROM tb_emp
    GROUP BY dept_cd, sex_cd
    ORDER BY dept_cd
    ;
    