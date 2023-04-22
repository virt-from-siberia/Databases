CREATE TABLE STUDENTS
(
    ID          NUMBER
        CONSTRAINT st_id_unique UNIQUE,
    NAME        VARCHAR2(15),
    COURSE      NUMBER,
    FACULTY_ID  INTEGER,
    AVG_SCORE   NUMBER(5, 2),
    START_DATE  DATE,
    SCHOLARSHIP INTEGER
);

CREATE TABLE FACULTIES
(
    ID   NUMBER,
    NAME VARCHAR2(15)
);

SELECT *
FROM STUDENTS;

DROP TABLE STUDENTS;

INSERT INTO STUDENTS
VALUES (1, 'Alesk', 1, 1, 8, '02-02-18', 3500);

SELECT *
FROM STUDENTS;

INSERT INTO STUDENTS
VALUES (2, 'Ivan', 1, 1, 8, '02-02-18', 3500);

SELECT *
FROM STUDENTS;

COMMIT;

INSERT INTO STUDENTS
VALUES (3, 'Lena', 1, 1, 8, '02-02-18', 3500);

SELECT *
FROM STUDENTS;


DROP TABLE STUDENTS;

SELECT *
FROM STUDENTS;

CREATE TABLE STUDENTS
(
    ID          NUMBER,
    NAME        VARCHAR2(15),
    COURSE      NUMBER,
    FACULTY_ID  INTEGER,
    AVG_SCORE   NUMBER(5, 2),
    START_DATE  DATE,
    SCHOLARSHIP INTEGER,
    CONSTRAINT st_id_unique UNIQUE (ID, NAME)
);


SELECT *
FROM STUDENTS;

INSERT INTO STUDENTS
VALUES (1, 'Aleks', 1, 1, 8, '02-02-18', 3500);

INSERT INTO STUDENTS
VALUES (1, 'Ivan', 1, 1, 8, '02-02-18', 3500);

INSERT INTO STUDENTS
VALUES (1, 'Ivan', 1, 1, 8, '02-02-18', 3500);

SELECT *
FROM STUDENTS;

DROP TABLE STUDENTS;

CREATE TABLE STUDENTS
(
    ID          NUMBER,
    NAME        VARCHAR2(15),
    COURSE      NUMBER,
    FACULTY_ID  INTEGER,
    AVG_SCORE   NUMBER(5, 2),
    START_DATE  DATE,
    SCHOLARSHIP INTEGER
);

INSERT INTO STUDENTS
VALUES (1, 'Aleks', 1, 1, 8, '02-02-18', 3500);

INSERT INTO STUDENTS
VALUES (2, 'Ivan', 1, 1, 8, '02-02-18', 3500);

INSERT INTO STUDENTS
VALUES (3, 'Misha', 1, 1, 8, '02-02-18', 3500);

SELECT *
FROM STUDENTS;

DROP TABLE STUDENTS;

CREATE TABLE STUDENTS
(
    ID          NUMBER UNIQUE,
    NAME        VARCHAR2(15),
    COURSE      NUMBER,
    FACULTY_ID  INTEGER,
    AVG_SCORE   NUMBER(5, 2),
    START_DATE  DATE,
    SCHOLARSHIP INTEGER
);

SELECT *
FROM STUDENTS;


INSERT INTO STUDENTS
VALUES (1, 'Aleks', 1, 1, 8, '02-02-18', 3500);

INSERT INTO STUDENTS
VALUES (2, 'Ivan', 1, 1, 8, '02-02-18', 3500);

INSERT INTO STUDENTS
VALUES (3, 'Misha', 1, 1, 8, '02-02-18', 3500);

SELECT *
FROM STUDENTS;

CREATE TABLE FACULTIES
(
    ID   NUMBER,
    NAME VARCHAR2(15)
);

SELECT *
FROM FACULTIES;

DROP TABLE STUDENTS;

CREATE TABLE STUDENTS
(
    ID          NUMBER,
    NAME        VARCHAR2(15),
    COURSE      NUMBER,
    FACULTY_ID  INTEGER,
    AVG_SCORE   NUMBER(5, 2),
    START_DATE  DATE,
    SCHOLARSHIP INTEGER
);

SELECT *
FROM STUDENTS;

INSERT INTO STUDENTS
VALUES (1, 'Aleks', 1, 1, 8, '02-02-18', 3500);

INSERT INTO STUDENTS
VALUES (2, 'Ivan', 1, 1, 8, '02-02-18', 3500);

INSERT INTO STUDENTS
VALUES (3, 'Misha', 1, 1, 8, '02-02-18', 3500);

ALTER TABLE STUDENTS
    ADD CONSTRAINT st_id_unique UNIQUE (ID);

INSERT INTO STUDENTS
VALUES (1, 'Aleks', 1, 1, 8, '02-02-18', 3500);

INSERT INTO FACULTIES
VALUES (1, 'CS');

SELECT *
FROM FACULTIES;

INSERT INTO FACULTIES
VALUES (1, 'Economics');

INSERT INTO FACULTIES
VALUES (1, 'Biology');

SELECT *
FROM FACULTIES;

ALTER TABLE FACULTIES
    ADD CONSTRAINT faq_id_unique UNIQUE (ID);

DROP TABLE FACULTIES;

CREATE TABLE FACULTIES
(
    ID   NUMBER,
    NAME VARCHAR2(15)
);

INSERT INTO FACULTIES
VALUES (1, 'CS');

ALTER TABLE FACULTIES
    ADD CONSTRAINT faq_id_unique UNIQUE (ID);

INSERT INTO FACULTIES
VALUES (2, 'BIOLOGY');

INSERT INTO FACULTIES
VALUES (3, 'ECONOMY');

UPDATE FACULTIES
SET ID = 4
WHERE NAME = 'BIOLOGY';

UPDATE FACULTIES
SET ID = 5
WHERE NAME = 'ECONOMY';

SELECT *
FROM FACULTIES;

INSERT INTO FACULTIES
VALUES (2, 'ECONOMY');

SELECT *
FROM FACULTIES;


DROP TABLE STUDENTS;
DROP TABLE FACULTIES;

CREATE TABLE STUDENTS
(
    ID          NUMBER,
    NAME        VARCHAR2(15),
    COURSE      NUMBER,
    FACULTY_ID  INTEGER,
    AVG_SCORE   NUMBER(5, 2),
    START_DATE  DATE,
    SCHOLARSHIP INTEGER
);

ALTER TABLE STUDENTS
    MODIFY (ID CONSTRAINT students_id_unique UNIQUE);

SELECT *
FROM STUDENTS;

ALTER TABLE STUDENTS
    DROP CONSTRAINT students_id_unique;

SELECT *
FROM STUDENTS;



































