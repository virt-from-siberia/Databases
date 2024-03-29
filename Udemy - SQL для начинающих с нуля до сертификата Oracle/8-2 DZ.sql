SELECT *
FROM EMPLOYEES
WHERE LENGTH(FIRST_NAME) = (SELECT MAX(LENGTH(FIRST_NAME)) FROM EMPLOYEES);

SELECT *
FROM EMPLOYEES
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES);

SELECT CITY, SUM(SALARY)
FROM EMPLOYEES EM
         JOIN DEPARTMENTS DE ON (EM.DEPARTMENT_ID = DE.DEPARTMENT_ID)
         JOIN LOCATIONS LC ON (LC.LOCATION_ID = DE.LOCATION_ID)
GROUP BY CITY
HAVING SUM(SALARY) = (SELECT MIN(SUM(SALARY))
                      FROM EMPLOYEES EM
                               JOIN DEPARTMENTS DE ON (DE.DEPARTMENT_ID = EM.DEPARTMENT_ID)
                               JOIN LOCATIONS LC ON (LC.LOCATION_ID = DE.LOCATION_ID)
                      GROUP BY CITY
);

SELECT *
FROM EMPLOYEES
WHERE MANAGER_ID IN (SELECT EMPLOYEE_ID FROM EMPLOYEES WHERE SALARY > 15000);

SELECT *
FROM DEPARTMENTS
WHERE DEPARTMENT_ID IN (SELECT DISTINCT DEPARTMENT_ID FROM EMPLOYEES WHERE DEPARTMENT_ID IS NOT NULL);

SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID NOT IN (SELECT DISTINCT MANAGER_ID FROM EMPLOYEES WHERE EMPLOYEE_ID IS NOT NULL);

SELECT *
FROM EMPLOYEES EM
WHERE (SELECT COUNT(*) FROM EMPLOYEES WHERE MANAGER_ID = EM.EMPLOYEE_ID) > 6;

SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT_ID = (SELECT DEPARTMENT_ID FROM DEPARTMENTS WHERE DEPARTMENT_NAME = 'IT');

SELECT *
FROM EMPLOYEES
WHERE MANAGER_ID IN (SELECT EMPLOYEE_ID FROM EMPLOYEES WHERE TO_CHAR(HIRE_DATE, 'YYYY') = '2005');


