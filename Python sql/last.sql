CREATE TABLE student
(
    student_id serial,
    first_name varchar,
    last_name  varchar,
    birth_date date,
    phone      varchar
);

CREATE TABLE chair
(
    cathedra_id   serial,
    cathedra_name varchar,
    dean          varchar
);

ALTER TABLE student
    ADD COLUMN middle_name varchar;

ALTER TABLE student
    ADD COLUMN rating float;

ALTER TABLE student
    ADD COLUMN enrolled date;

ALTER TABLE student
    DROP COLUMN middle_name;

ALTER TABLE chair
    RENAME cathedra_id TO chair_id;

ALTER TABLE chair
    RENAME cathedra_name TO chair_name;

ALTER TABLE student
    ALTER COLUMN first_name SET DATA TYPE varchar(64);
ALTER TABLE student
    ALTER COLUMN last_name SET DATA TYPE varchar(64);
ALTER TABLE student
    ALTER COLUMN phone SET DATA TYPE varchar(30);

CREATE TABLE faculty
(
    faculty_id   serial,
    faculty_name varchar
);

INSERT INTO faculty (faculty_name)
VALUES ('faculty 1'),
       ('faculty 2'),
       ('faculty 3');

SELECT *
FROM faculty;

CREATE TABLE teacher
(
    teacher_id serial,
    first_name varchar,
    last_name  varchar,
    birthday   date,
    phone      varchar,
    title      varchar
);

ALTER TABLE teacher
    ADD COLUMN middle_name varchar;

ALTER TABLE teacher
    DROP COLUMN middle_name;

ALTER TABLE teacher
    RENAME birthday TO birth_date;

ALTER TABLE teacher
    ALTER COLUMN phone SET DATA TYPE varchar(32);

CREATE TABLE exam
(
    exam_id   serial,
    exam_name varchar(256),
    exam_date date
);

ALTER TABLE
    exam
    ADD COLUMN rating serial;
ALTER TABLE
    exam
    ADD COLUMN average_rating serial;

CREATE TABLE new_chair
(
    chair_id   serial PRIMARY KEY,
    chair_name varchar,
    dean       varchar
);

INSERT INTO new_chair
VALUES (1, 'name', 'dean');

INSERT INTO new_chair
VALUES (2, 'name2', 'dean2');

SELECT *
FROM new_chair;

SELECT constraint_name
FROM information_schema.key_column_usage
WHERE table_name = 'new_chair'
  AND table_schema = 'public'
  AND column_name = 'chair_id';

CREATE TABLE book
(
    book_id      int,
    title        text        NOT NULL,
    isbn         varchar(32) NOT NULL,
    publisher_id int,
    CONSTRAINT PK_book_book_id PRIMARY KEY (book_id)
);

ALTER TABLE book
    ADD COLUMN price decimal
        CONSTRAINT CHK_book_price CHECK ( price >= 0 );

INSERT INTO book
VALUES (1, 'title', 'isbn', 1, 1.5);

SELECT *
FROM book;

CREATE TABLE new_customer
(
    customer_id serial,
    full_name   text,
    status      char DEFAULT 'r',
    CONSTRAINT PK_customer_customer_id PRIMARY KEY (customer_id),
    CONSTRAINT CHK_customer_status CHECK (status = 'r' OR status = 'p')
);

INSERT INTO new_customer(full_name)
VALUES (
           'name'
       );

SELECT *
FROM new_customer;

ALTER TABLE new_customer
    ALTER COLUMN status DROP DEFAULT;

CREATE SEQUENCE seq1;

SELECT nextval('seq1');
SELECT currval('seq1');
SELECT lastval();
SELECT setval('seq1', 16, true);
SELECT currval('seq1');
SELECT nextval('seq1');

DROP TABLE IF EXISTS book;

CREATE TABLE book
(
    book_id      int         NOT NULL,
    title        text        NOT NULL,
    isbn         varchar(32) NOT NULL,
    publisher_id int         NOT NULL,
    CONSTRAINT PK_book_book_id PRIMARY KEY (book_id)
);

SELECT *
FROM book;

ALTER TABLE book
    ALTER COLUMN book_id SET DEFAULT nextval('');

INSERT INTO book(title, isbn, publisher_id)
VALUES ('title', 'isbn', 1);


CREATE TABLE def_customer
(
    customer_id serial,
    full_name   text,
    status      char DEFAULT 'r',

    CONSTRAINT PK_def_customer_customer_id PRIMARY KEY (customer_id),
    CONSTRAINT CHK_customer_status CHECK ( status = 'r' OR status = 'p' )
);

INSERT INTO def_customer (full_name)
VALUES ('name');

SELECT *
FROM def_customer;

CREATE SEQUENCE siq1;

SELECT nextval('siq1');
SELECT currval('siq1');
SELECT lastval();

SELECT setval('siq1', 16, true);

CREATE SEQUENCE seq2 INCREMENT 16;
SELECT nextval('seq2');

CREATE SEQUENCE IF NOT EXISTS seq3 INCREMENT 16 MINVALUE 0 MAXVALUE 128 START WITH 0;
SELECT nextval('seq3');

ALTER SEQUENCE seq3 RENAME TO seq4;
ALTER SEQUENCE seq4 RESTART WITH 16;
SELECT nextval('seq4');
DROP SEQUENCE seq4;

DROP TABLE IF EXISTS book;

CREATE TABLE book
(
    book_id      int         NOT NULL,
    title        text        NOT NULL,
    isbn         varchar(32) NOT NULL,
    publisher_id int         NOT NULL,
    CONSTRAINT PK_book_book_id PRIMARY KEY (book_id)
);

SELECT *
FROM book;

CREATE TABLE author
(
    author_id serial,
    name      text,
    status    int,
    CONSTRAINT PK_def_author_author_id PRIMARY KEY (author_id)
);

INSERT INTO author
VALUES (10, 'John Silver', 4.5);

SELECT *
FROM author;

INSERT INTO author(author_id, name)
VALUES (16, 'bob Gait'),
       (12, 'Mik Gait'),
       (13, 'Lol Gait');

SELECT *
FROM author;

SELECT *
INTO best_offers
FROM author
WHERE status = 5;

SELECT *
FROM best_offers;

INSERT INTO best_offers
SELECT
FROM author
WHERE status = 5;

UPDATE author
SET name   ='Alice',
    status = 6
WHERE author_id = 16;

SELECT *
FROM author;

DELETE
FROM author
WHERE status IS NULL;

SELECT *
FROM author;

DROP TABLE book;

CREATE TABLE book
(
    book_id      int         NOT NULL,
    title        text        NOT NULL,
    isbn         varchar(32) NOT NULL,
    publisher_id int         NOT NULL,
    CONSTRAINT PK_book_book_id PRIMARY KEY (book_id)
);

UPDATE author
SET name   ='David',
    status = 66
WHERE author_id = 16
RETURNING *;

CREATE TABLE dz_exam
(
    exam_id   serial UNIQUE NOT NULL,
    exam_name varchar(256),
    exam_date date
);

ALTER TABLE dz_exam
    ADD PRIMARY KEY (exam_id);

CREATE TABLE persone
(
    persone_id        int         NOT NULL,
    persone_name      varchar(64) NOT NULL,
    persone_last_name varchar(64) NOT NULL,
    CONSTRAINT PK_persones_persone_id PRIMARY KEY (persone_id)
);
CREATE TABLE passport
(
    passport_id   int,
    serial_number int  NOT NULL,
    registration  text NOT NULL,
    persone_id    int  NOT NULL,

    CONSTRAINT PK_passport_passport_id PRIMARY KEY (passport_id),
    CONSTRAINT FK_passport_passport FOREIGN KEY (persone_id) REFERENCES persone (persone_id)
);

ALTER TABLE book
    ADD COLUMN weight decimal
        CONSTRAINT chk_book_weight CHECK ( weight > 0 AND weight < 100 );

INSERT INTO book
VALUES (128, 'new book', 'isbn', 15, 90);


ALTER TABLE products
    ADD CONSTRAINT chk_products_price CHECK ( unit_price > 0 );

CREATE TABLE dz_student
(
    student_id serial,
    full_name  varchar,
    grate      int DEFAULT 1
);

INSERT INTO dz_student
VALUES (1, 'Boo');

SELECT *
FROM dz_student;

ALTER TABLE dz_student
    ALTER COLUMN grate DROP DEFAULT;

INSERT INTO dz_student
VALUES (1, 'Boo');

SELECT *
FROM dz_student;

SELECT MAX(product_id)
FROM products;






























