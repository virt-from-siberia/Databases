DROP TABLE STUDENTS;

CREATE TABLE STUDENTS
(
    ID         NUMBER,
    NAME       VARCHAR2(15),
    COURSE     NUMBER
        CONSTRAINT stud_course NOT NULL,
    FACULTY_ID INTEGER
);

CREATE TABLE FACULTIES
(
    ID   NUMBER,
    NAME VARCHAR2(15)
);


INSERT INTO STUDENTS
VALUES (1, 'Aleksey', 3, 5);


SELECT *
FROM STUDENTS;

INSERT INTO STUDENTS
VALUES (1, 'Aleksey', NULL, 5);

DROP TABLE STUDENTS;


CREATE TABLE STUDENTS
(
    ID         NUMBER,
    NAME       VARCHAR2(15),
    COURSE     NUMBER NOT NULL,
    FACULTY_ID INTEGER
);

DROP TABLE STUDENTS;

CREATE TABLE STUDENTS
(
    ID         NUMBER,
    NAME       VARCHAR2(15),
    COURSE     NUMBER
        CONSTRAINT stud_course NOT NULL,
    FACULTY_ID INTEGER UNIQUE
);

SELECT *
FROM STUDENTS;

DROP TABLE STUDENTS;

CREATE TABLE STUDENTS
(
    ID         NUMBER,
    NAME       VARCHAR2(15),
    COURSE     NUMBER,
    FACULTY_ID INTEGER
);

ALTER TABLE STUDENTS
    MODIFY (COURSE CONSTRAINT st_course_not_null NOT NULL);

SELECT *
FROM STUDENTS;

DROP TABLE STUDENTS;

CREATE TABLE STUDENTS
(
    ID         NUMBER,
    NAME       VARCHAR2(15),
    COURSE     NUMBER DEFAULT 3,
    FACULTY_ID INTEGER
);


ALTER TABLE STUDENTS
    MODIFY (COURSE CONSTRAINT st_course_not_null NOT NULL);

INSERT INTO STUDENTS
VALUES (5, 'Zaur', 3, 3);

INSERT INTO STUDENTS (ID, NAME, FACULTY_ID)
VALUES (5, 'Aleks', 3);

SELECT *
FROM STUDENTS;

DROP TABLE STUDENTS;

CREATE TABLE STUDENTS
(
    ID         NUMBER,
    NAME       VARCHAR2(15),
    COURSE     NUMBER DEFAULT 3,
    FACULTY_ID INTEGER,
    CONSTRAINT con1 UNIQUE (COURSE)
);


SELECT *
FROM STUDENTS;

INSERT INTO STUDENTS
VALUES (5, 'Zaur', 3, 3);

INSERT INTO STUDENTS
VALUES (5, 'Aleks', 1, 3);

SELECT *
FROM COUNTRIES;

DROP TABLE STUDENTS;

CREATE TABLE STUDENTS
(
    ID         NUMBER,
    NAME       VARCHAR2(15),
    COURSE     NUMBER DEFAULT 3,
    FACULTY_ID INTEGER
);

INSERT INTO STUDENTS (ID, NAME, FACULTY_ID)
VALUES (5, 'Zaur', 3);

INSERT INTO STUDENTS (ID, NAME, FACULTY_ID)
VALUES (5, 'Misha', 3);

INSERT INTO STUDENTS (ID, NAME, FACULTY_ID)
VALUES (5, 'Maksim', NULL);

SELECT *
FROM STUDENTS;

ALTER TABLE STUDENTS
    MODIFY (COURSE NULL);


SELECT *
FROM FACULTIES;




























