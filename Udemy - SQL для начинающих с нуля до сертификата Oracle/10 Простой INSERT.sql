SELECT *
FROM EMPLOYEES;

-- CONSTRAINT

INSERT INTO COUNTRIES
VALUES ('SW', 'Sweden', '1');

SELECT *
FROM COUNTRIES;

INSERT INTO COUNTRIES
VALUES ('GR', 'Greece', '1');

INSERT INTO COUNTRIES (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
VALUES ('NR', 'Norway', '1');

SELECT *
FROM COUNTRIES;

INSERT INTO COUNTRIES (COUNTRY_ID, COUNTRY_NAME)
VALUES ('PR', 'Portugal');

INSERT INTO COUNTRIES (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
VALUES ('RU', 'Russian', '1');

INSERT INTO COUNTRIES (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
VALUES ('FN', 'Finland', '1');

SELECT *
FROM COUNTRIES;

INSERT INTO COUNTRIES (COUNTRY_ID, COUNTRY_NAME, REGION_ID)
VALUES ('CR', 'Croatia', '1');






