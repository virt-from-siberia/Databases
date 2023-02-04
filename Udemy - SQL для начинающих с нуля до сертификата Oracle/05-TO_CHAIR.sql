SELECT TO_CHAR(18)
FROM DUAL;

INSERT INTO COUNTRIES
VALUES ('ZZ', 10, 1);

SELECT *
FROM COUNTRIES;

SELECT *
FROM COUNTRIES
WHERE COUNTRY_NAME = TO_CHAR(10);

SELECT TO_CHAR(18, '99999')
FROM DUAL;

SELECT TO_CHAR(18, '99999')
FROM DUAL;

SELECT TO_CHAR(18234234, '99999')
FROM DUAL;

SELECT TO_CHAR(18, '09999')
FROM DUAL;

SELECT TO_CHAR(18.35, '09999.999')
FROM DUAL;

SELECT TO_CHAR(18, '09999.999')
FROM DUAL;

SELECT TO_CHAR(18, '09999D999')
FROM DUAL;

SELECT TO_CHAR(1234567, '099,999,999')
FROM DUAL;

SELECT TO_CHAR(18, '09999G999')
FROM DUAL;

SELECT TO_CHAR(18, '$0999')
FROM DUAL;

SELECT TO_CHAR(18, 'L0999')
FROM DUAL;

SELECT TO_CHAR(18, 'L999.99')
FROM DUAL;

SELECT TO_CHAR(18, '999MI')
FROM DUAL;

SELECT TO_CHAR(-18, '0999PR')
FROM DUAL;

SELECT TO_CHAR(18, '0999PR')
FROM DUAL;

SELECT TO_CHAR(18, 'S0999')
FROM DUAL;

SELECT TO_CHAR(-18, 'S0999')
FROM DUAL;

SELECT FIRST_NAME,
       SALARY,
       SALARY * 1.1111,
       TO_CHAR(SALARY * 1.1111, 'L999,999.99'),
       TO_CHAR(SALARY * 1.1111, 'L9,999.99')
FROM EMPLOYEES;


