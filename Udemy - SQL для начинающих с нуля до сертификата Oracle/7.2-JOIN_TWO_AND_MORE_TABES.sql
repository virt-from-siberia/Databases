SELECT *
FROM REGIONS;

SELECT *
FROM LOCATIONS
         NATURAL JOIN COUNTRIES
         NATURAL JOIN REGIONS;


SELECT *
FROM LOCATIONS
         JOIN COUNTRIES USING (COUNTRY_ID)
         JOIN REGIONS USING (REGION_ID);

SELECT FIRST_NAME, LAST_NAME, START_DATE, END_DATE, DS.DEPARTMENT_NAME
FROM EMPLOYEES EM
         JOIN JOB_HISTORY JH ON (EM.EMPLOYEE_ID = JH.EMPLOYEE_ID)
         JOIN DEPARTMENTS DS ON (JH.DEPARTMENT_ID = DS.DEPARTMENT_ID);


SELECT COUNT(*) EMPLOYEERS_COUNT, MAX(SALARY), MIN(SALARY), DEPARTMENT_NAME
FROM EMPLOYEES EM
         JOIN DEPARTMENTS DE ON (EM.DEPARTMENT_ID = DE.DEPARTMENT_ID)
GROUP BY DEPARTMENT_NAME
ORDER BY EMPLOYEERS_COUNT DESC;

