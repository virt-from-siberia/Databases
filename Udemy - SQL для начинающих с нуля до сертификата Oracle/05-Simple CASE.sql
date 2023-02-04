SELECT CASE 3 * 4 WHEN 12 THEN 100 END
FROM DUAL;


SELECT CASE 3 * 4 WHEN 12 THEN 'TRUE' END
FROM DUAL;


SELECT CASE 3 * 4
           WHEN 11 THEN 'eleven'
           WHEN 12 THEN 'twelve'
           WHEN 24 / 2 THEN 'twelve2 ' END
FROM DUAL;


SELECT CASE 3 * 5
           WHEN 11 THEN 'eleven'
           WHEN 12 THEN 'twelve'
           WHEN 24 / 2 THEN 'twelve2 '
           ELSE 'million'
           END
FROM DUAL;

SELECT FIRST_NAME,
       CASE LENGTH(FIRST_NAME)
           WHEN 4 THEN 'ochen korotkoe'
           WHEN 5 THEN 'korotkoe'
           WHEN 6 THEN 'srednie'
           WHEN 7 THEN 'dlinnoe'
           ELSE 'dlyna ne izvestna'
           END
FROM EMPLOYEES;


