SELECT 'my name is ' || FIRST_NAME || 'and my last name is ' || LAST_NAME name FROM EMPLOYEES;

SELECT  COMMISSION_PCT pst FROM EMPLOYEES WHERE COMMISSION_PCT IS NOT NULL;

SELECT FIRST_NAME as name, LAST_NAME as sourname FROM EMPLOYEES;

