
-- NATURAL JOIN
-- 1. NATURAL JOIN은 동일한 이름을 갖는 컬럼들에 대해 자동으로 조인조건을 생성하는 기법입니다.
-- 2. 즉, 자동으로 2개 이상의 테이블에서 같은 이름을 가진 컬럼을 찾아 INNER조인을 수행합니다.
-- 3. 이 때 조인되는 동일 이름의 컬럼은 데이터 타입이 같아야 하며, 
--    ALIAS나 테이블명을 자동 조인 컬럼 앞에 표기하면 안됩니다.
-- 4. SELECT * 문법을 사용하면, 공통 컬럼은 집합에서 한번만 표기됩니다.
-- 5. 공통 컬럼이 n개 이상이면 조인 조건이 n개로 처리됩니다.
-- 사원 테이블과 부서 테이블을 조인 (사번, 사원명, 부서코드, 부서명)

SELECT 
    A.emp_no, A.emp_nm,dept_cd, B.dept_nm
FROM tb_emp A
NATURAL JOIN tb_dept B
;

SELECT
 *
 FROM test_a A
 INNER JOIN test_b B
 ON A.id = B.a_id
 ;
 
 
 -- # USING절 조인
-- 1. NATURAL조인에서는 자동으로 이름과 타입이 일치하는 모든 컬럼에 대해
-- 조인이 일어나지만 USING을 사용하면 원하는 컬럼에 대해서면 선택적 조인조건을 
--    부여할 수 있습니다.
-- 2. USING절에서도 조인 컬럼에 대해 ALIAS나 테이블명을 표기하시면 안됩니다.
SELECT 
   A.emp_no, A.emp_nm, dept_cd, B.dept_nm
FROM tb_emp A
NATURAL JOIN tb_dept B
; -- NATURAL 

SELECT 
   A.emp_no, A.emp_nm, B.dept_cd, B.dept_nm
FROM tb_emp A
INNER JOIN tb_dept B
ON A.dept_cd = B.dept_cd
; -- INNER JOIN.



SELECT 
   A.emp_no, A.emp_nm, dept_cd, B.dept_nm
FROM tb_emp A
INNER JOIN tb_dept B
USING (dept_cd) --Using join 이다. inner에서 on을 대신 가능. 앞에 B. 이런 거 떼야 함!!
;

