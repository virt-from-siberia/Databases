SELECT CONCAT('privet', 'drug')
FROM DUAL;

SELECT 'privet' || '' || 'drug' text
FROM DUAL;

SELECT CONCAT(SALARY * 2, HIRE_DATE)
FROM EMPLOYEES;

SELECT SYSDATE
FROM DUAL;

SELECT CONCAT('today is ', SYSDATE)
FROM DUAL;

SELECT CONCAT('privet', CONCAT('moy', 'drug')) text
FROM DUAL;