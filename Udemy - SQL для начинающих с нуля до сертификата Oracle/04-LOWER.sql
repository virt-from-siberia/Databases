SELECT *
FROM EMPLOYEES;

SELECT FIRST_NAME, LOWER(FIRST_NAME) name
FROM EMPLOYEES;

SELECT*
FROM EMPLOYEES
WHERE LOWER(FIRST_NAME) = 'DAVID;'