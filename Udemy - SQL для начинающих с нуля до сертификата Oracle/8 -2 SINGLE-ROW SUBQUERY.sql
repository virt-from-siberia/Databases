SELECT *
FROM EMPLOYEES
WHERE SALARY < (SELECT MAX(SALARY) / 5 FROM EMPLOYEES);

SELECT *
FROM EMPLOYEES
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES);

SELECT *
FROM EMPLOYEES
WHERE SALARY > (SELECT SALARY FROM EMPLOYEES WHERE EMPLOYEE_ID = 180);

SELECT *
FROM EMPLOYEES
WHERE SALARY > (SELECT SALARY FROM EMPLOYEES WHERE EMPLOYEE_ID = 180);

