SELECT FIRST_NAME, SALARY, COMMISSION_PCT, EMPLOYEE_ID
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL
ORDER BY EMPLOYEE_ID DESC;

SELECT JOB_ID, FIRST_NAME, LAST_NAME, SALARY, HIRE_DATE
FROM EMPLOYEES
ORDER BY JOB_ID DESC, FIRST_NAME, LAST_NAME DESC;