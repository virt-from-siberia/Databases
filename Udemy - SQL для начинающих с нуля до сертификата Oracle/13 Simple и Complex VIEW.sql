SELECT *
FROM STUDENTS;

INSERT INTO STUDENTS
VALUES (1, 'Aleksey', 3, 2);

SELECT *
FROM STUDENTS
WHERE ID = 1;

INSERT INTO STUDENTS
VALUES (2, 'Misha', 1, 3);

INSERT INTO STUDENTS
VALUES (3, 'Masha', 2, 2);

SELECT *
FROM STUDENTS;

CREATE VIEW V101 AS
SELECT NAME, COURSE
FROM STUDENTS;

SELECT *
FROM V101;

INSERT INTO V101
VALUES ('Ivan', 4);

SELECT *
FROM V101;

SELECT *
FROM STUDENTS;

DELETE
FROM V101
WHERE NAME = 'Ivan';

SELECT *
FROM V101;

ALTER TABLE STUDENTS
    MODIFY (ID NOT NULL );

INSERT INTO V101
VALUES ('Ivan', 4);

SELECT *
FROM FIN_EMP_2;

INSERT INTO FIN_EMP_2
VALUES ('abra', 100000);

UPDATE FIN_EMP_2
SET DEPARTMENT_NAME = 'ASDASLKJASLD'
WHERE SUM_SALARY > 5000;

DELETE
FROM FIN_EMP_2;

CREATE VIEW V105 AS
SELECT SUBSTR(NAME, 2
           ) name,
       COURSE
FROM STUDENTS;

SELECT *
FROM V105;

INSERT INTO V105
VALUES ('Kolya', 3);

DELETE
FROM V105
WHERE NAME = 'aur';

CREATE VIEW V106 AS
SELECT DISTINCT NAME, COURSE
FROM STUDENTS;

SELECT *
FROM V106;

CREATE VIEW V107 AS
SELECT NAME N, COURSE C
FROM STUDENTS;

SELECT *
FROM V107;

DELETE
FROM V107
WHERE N = 'Masha';

SELECT *
FROM V107;

ALTER TABLE STUDENTS
    MODIFY (ID NULL);

SELECT *
FROM V107;

CREATE VIEW V109 AS
SELECT ROWNUM R, NAME, COURSE
FROM STUDENTS;

SELECT *
FROM V109;






