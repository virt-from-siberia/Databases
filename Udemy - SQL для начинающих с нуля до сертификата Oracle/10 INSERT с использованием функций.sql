SELECT *
FROM EMPLOYEES;

INSERT INTO EMPLOYEES (EMPLOYEE_ID, LAST_NAME, EMAIL, HIRE_DATE, JOB_ID)
VALUES (210, 'Elchin', 'Alonso85@mail.ru', '18-10-1985', 'FI_MGR');

SELECT *
FROM EMPLOYEES
WHERE JOB_ID = 'FI_MGR';

UPDATE EMPLOYEES
SET FIRST_NAME = 'Aleksey'
WHERE EMPLOYEE_ID = 210;

SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID = 210;

INSERT INTO EMPLOYEES (EMPLOYEE_ID, LAST_NAME, EMAIL, HIRE_DATE, JOB_ID)
VALUES (211, INITCAP('Elchin'), UPPER('Alonso86@mail.ru'), '18-10-1985', UPPER('FI_MGR'));

SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID = 211;

UPDATE EMPLOYEES
SET FIRST_NAME = 'Aleksey'
WHERE EMPLOYEE_ID = 210;

SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID IN (210, 211);








