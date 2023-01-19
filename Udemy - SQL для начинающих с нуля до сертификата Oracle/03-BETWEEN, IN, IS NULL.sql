SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES WHERE SALARY BETWEEN 4000 AND 10000;

SELECT FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES WHERE SALARY BETWEEN EMPLOYEE_ID AND 10000;

SELECT * FROM  JOB_HISTORY WHERE START_DATE BETWEEN '01.01.94' AND '31.12.06';

SELECT * FROM EMPLOYEES WHERE FIRST_NAME BETWEEN 'A' AND 'C';

SELECT * FROM EMPLOYEES WHERE SALARY >= 4000 AND SALARY <= 50000;

SELECT * FROM DEPARTMENTS WHERE LOCATION_ID IN (1700, 200, 1500);

SELECT * FROM DEPARTMENTS WHERE LOCATION_ID IN (1700, 200, 1500) AND MANAGER_ID IS NOT NULL;

SELECT * FROM JOB_HISTORY WHERE JOB_ID IN ('IT_PROG', 'AC_MGR');

SELECT * FROM JOB_HISTORY WHERE END_DATE IN ('13.01.93', '05.05.05');

SELECT * FROM DEPARTMENTS WHERE LOCATION_ID = 1700 OR LOCATION_ID = 2400 OR LOCATION_ID = 1700;





