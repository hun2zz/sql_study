-- 1. employees���̺�� departments���̺��� inner join�Ͽ�
--    ���, first_name, last_name, department_id, department_name�� ��ȸ�ϼ���.
SELECT
    a.manager_id, a.first_name, a.last_name, b.department_id, b.department_name
FROM employees a
INNER JOIN departments b
ON a.manager_id= b.manager_id
;

-- 2. employees���̺�� departments���̺��� natural join�Ͽ�
--    ���, first_name, last_name, department_id, department_name�� ��ȸ�ϼ���.
SELECT
    manager_id, a.first_name, a.last_name, department_id, b.department_name
FROM employees A
NATURAL JOIN departments B
;


-- 3. employees���̺�� departments���̺��� using���� ����Ͽ�
--    ���, first_name, last_name, department_id, department_name�� ��ȸ�ϼ���.
SELECT
    manager_id, a.first_name, a.last_name, b.department_id, b.department_name
FROM employees a
INNER JOIN departments b
USING (manager_id)
;


-- 4. employees���̺�� departments���̺�� locations ���̺��� 
--    join�Ͽ� employee_id, first_name, department_name, city�� ��ȸ�ϼ���

SELECT
    a.employee_id, a.first_name, b.department_name, c.city
FROM employees a
INNER JOIN departments b
ON a.manager_id = b.manager_id
JOIN locations c
ON b.location_id = c.location_id
    ;

-- 5. employees ���̺�� jobs ���̺��� INNER JOIN�Ͽ� 
-- ����� first_name, last_name, job_title�� ��ȸ�ϼ���.
SELECT
    a.first_name, a.last_name, b.job_title
FROM employees a
JOIN jobs b
ON a.job_id = b.job_id
;

--? 6. employees ���̺�� departments ���̺��� INNER JOIN�Ͽ� 
--? �μ���� �� �μ��� �ִ� �޿����� ��ȸ�ϼ���.
SELECT
    a.job_id, MAX(a.salary)
FROM employees a
JOIN departments b
ON a.department_id = b.department_id
GROUP BY a.job_id
;

--? 7. employees ���̺�� jobs ���̺��� INNER JOIN�Ͽ� 
--?    ������ ��� �޿��� ���� Ÿ��Ʋ�� ��ȸ�ϼ���.
SELECT
    AVG(a.salary), b.job_title
FROM employees a
JOIN jobs b
ON a.job_id = b.job_id
GROUP BY a.job_id, b.job_title
;


