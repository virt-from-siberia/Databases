SELECT * FROM EMPLOYEES;

SELECT * FROM EMPLOYEES WHERE FIRST_NAME = 'Steven';

SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE 'S%';

SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE '%r';

SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE 'A%r';

SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE 'D_n';

SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE ('Dan', ' Dbn');

SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE 'A%d%';

SELECT * FROM EMPLOYEES WHERE FIRST_NAME LIKE '__n%';

SELECT * FROM EMPLOYEES WHERE JOB_ID LIKE 'ST\_C%' ESCAPE '\' ;





