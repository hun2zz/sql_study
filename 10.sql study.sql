-- 1. employees테이블과 departments테이블을 inner join하여
--    사번, first_name, last_name, department_id, department_name을 조회하세요.
SELECT
    a.manager_id, a.first_name, a.last_name, b.department_id, b.department_name
FROM employees a
INNER JOIN departments b
ON a.manager_id= b.manager_id
;

-- 2. employees테이블과 departments테이블을 natural join하여
--    사번, first_name, last_name, department_id, department_name을 조회하세요.
SELECT
    manager_id, a.first_name, a.last_name, department_id, b.department_name
FROM employees A
NATURAL JOIN departments B
;


-- 3. employees테이블과 departments테이블을 using절을 사용하여
--    사번, first_name, last_name, department_id, department_name을 조회하세요.
SELECT
    manager_id, a.first_name, a.last_name, b.department_id, b.department_name
FROM employees a
INNER JOIN departments b
USING (manager_id)
;


-- 4. employees테이블과 departments테이블과 locations 테이블을 
--    join하여 employee_id, first_name, department_name, city를 조회하세요

SELECT
    a.employee_id, a.first_name, b.department_name, c.city
FROM employees a
INNER JOIN departments b
ON a.manager_id = b.manager_id
JOIN locations c
ON b.location_id = c.location_id
    ;

-- 5. employees 테이블과 jobs 테이블을 INNER JOIN하여 
-- 사원의 first_name, last_name, job_title을 조회하세요.
SELECT
    a.first_name, a.last_name, b.job_title
FROM employees a
JOIN jobs b
ON a.job_id = b.job_id
;

--? 6. employees 테이블과 departments 테이블을 INNER JOIN하여 
--? 부서명과 각 부서의 최대 급여값을 조회하세요.
SELECT
    a.job_id, MAX(a.salary)
FROM employees a
JOIN departments b
ON a.department_id = b.department_id
GROUP BY a.job_id
;

--? 7. employees 테이블과 jobs 테이블을 INNER JOIN하여 
--?    직무별 평균 급여와 직무 타이틀을 조회하세요.
SELECT
    AVG(a.salary), b.job_title
FROM employees a
JOIN jobs b
ON a.job_id = b.job_id
GROUP BY a.job_id, b.job_title
;


