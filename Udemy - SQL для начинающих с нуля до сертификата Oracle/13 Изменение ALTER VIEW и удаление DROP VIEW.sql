CREATE FORCE VIEW V18 AS
SELECT NAME, LAST_NAME
FROM STUDENTS;

SELECT *
FROM V18;

ALTER TABLE STUDENTS
    ADD (LAST_NAME VARCHAR2(15));

SELECT *
FROM STUDENTS;

ALTER VIEW V18 COMPILE;

SELECT *
FROM V18;

DROP VIEW V18;

CREATE VIEW V212 AS
SELECT *
FROM V203;


SELECT *
FROM V212;

CREATE VIEW V300 AS
SELECT *
FROM STUDENTS;

CREATE VIEW V301 AS
SELECT *
FROM STUDENTS
WHERE ID > 4;

SELECT *
FROM V301;










