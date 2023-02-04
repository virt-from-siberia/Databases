SELECT REPLACE('Привет как дела? что хорошего?', 'о', '*')
FROM DUAL;

SELECT REPLACE('Привет как дела? что хорошего?', 'ег', '*')
FROM DUAL;

SELECT REPLACE('Привет как дела? что хорошего?', 'а', '*****')
FROM DUAL;

SELECT REPLACE('Привет как дела? что хорошего?', 'о')
FROM DUAL;

SELECT SALARY
FROM EMPLOYEES;

SELECT SALARY, REPLACE(SALARY, '1', '9')
FROM EMPLOYEES;

SELECT HIRE_DATE, REPLACE(HIRE_DATE, '.', '/')
FROM EMPLOYEES;