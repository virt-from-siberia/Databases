select * from COUNTRIES;

select * from  REGIONS;

select * from  LOCATIONS;

select * from  JOBS;

select * from  JOB_HISTORY;

select * from  DEPARTMENTS;

select * from DEPARTMENTS where MANAGER_ID is null;

-- 2 BLOG SELECT COMMAND

select * from  LOCATIONS;

select * from EMPLOYEES;

select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT_ID  from EMPLOYEES WHERE DEPARTMENT_ID IS NOT NULL;

select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT_ID  from EMPLOYEES WHERE SALARY > 10000;





