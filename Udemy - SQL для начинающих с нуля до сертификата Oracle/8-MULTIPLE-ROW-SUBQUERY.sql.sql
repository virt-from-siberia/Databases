SELECT *
FROM JOBS;

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE JOB_ID IN (SELECT JOB_ID FROM JOBS WHERE MIN_SALARY > 8000);

SELECT FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY > ALL (SELECT SALARY FROM EMPLOYEES WHERE DEPARTMENT_ID = 100);