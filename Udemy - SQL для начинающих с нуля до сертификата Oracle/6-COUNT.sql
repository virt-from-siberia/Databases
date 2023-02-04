SELECT COUNT(SALARY)
FROM EMPLOYEES;

SELECT COUNT(*)
FROM EMPLOYEES
WHERE SALARY > 5000;

SELECT COUNT(*)
FROM EMPLOYEES
WHERE SALARY < 5000;

SELECT COUNT(SALARY)
FROM EMPLOYEES;

SELECT COUNT(COMMISSION_PCT)
FROM EMPLOYEES;

SELECT COUNT(FIRST_NAME)
FROM EMPLOYEES;

SELECT COUNT(NVL(COMMISSION_PCT, 0))
FROM EMPLOYEES;

SELECT COUNT(DISTINCT COMMISSION_PCT)
FROM EMPLOYEES;

SELECT COUNT(DISTINCT FIRST_NAME)
FROM EMPLOYEES;

SELECT COUNT(FIRST_NAME), COUNT(DISTINCT FIRST_NAME)
FROM EMPLOYEES;

SELECT COUNT(*), COUNT(COMMISSION_PCT), COUNT(DISTINCT COMMISSION_PCT)
FROM EMPLOYEES;

SELECT COUNT(*), COUNT(DISTINCT NVL(COMMISSION_PCT, 0))
FROM EMPLOYEES;

SELECT FIRST_NAME, LAST_NAME
FROM EMPLOYEES;

SELECT FIRST_NAME || ' ' || LAST_NAME
FROM EMPLOYEES;

SELECT FIRST_NAME || ' ' || LAST_NAME
FROM EMPLOYEES;

SELECT COUNT('ABC')
FROM EMPLOYEES;

SELECT 'ABC'
FROM EMPLOYEES;

SELECT COUNT(SALARY)
FROM EMPLOYEES;




