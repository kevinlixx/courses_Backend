CREATE DATABASE SCHOOL;
CREATE TABLE STUDENTS (
    STUDENTID INT PRIMARY KEY auto_increment, #IDENTITY AUTOINCREMENTA EL VALOR
    FIRSTNAME VARCHAR(50),
    LASTNAME VARCHAR(50),
    AGE INT,
    EMAIL VARCHAR(50),
    LOADDATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UPDATEDATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE INSTRUCTORS (
    INSTRUCTORID INT PRIMARY KEY auto_increment,
    FIRSTNAME VARCHAR(50),
    LASTNAME VARCHAR(50),
    AGE INT,
    EMAIL VARCHAR(50),
    LOADDATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UPDATEDATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE COURSES (
    COURSEID INT PRIMARY KEY auto_increment,
    COURSENAME VARCHAR(50),
    DESCRIPTION VARCHAR(50),
    INSTRUCTORID INT,
    DURATIONHOURS INT,
    LOADDATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UPDATEDATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (INSTRUCTORID) REFERENCES INSTRUCTORS(INSTRUCTORID)
);

CREATE TABLE STUDENT_COURSE(
    STUDENTID INT,
    COURSEID INT,
    LOADDATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UPDATEDATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (STUDENTID) REFERENCES STUDENTS(STUDENTID),
    FOREIGN KEY (COURSEID) REFERENCES COURSES(COURSEID)
);
/* insertar datos INSERT */
-- Insertar datos en la tabla INSTRUCTORS
INSERT INTO INSTRUCTORS (FIRSTNAME, LASTNAME, AGE, EMAIL) VALUES
('John', 'Doe', 35, 'john.doe@email.com'),
('Jane', 'Smith', 42, 'jane.smith@email.com'),
('Emily', 'Jones', 29, 'emily.jones@email.com'),
('Michael', 'Brown', 50, 'michael.brown@email.com'),
('Linda', 'Davis', 38, 'linda.davis@email.com'),
('Robert', 'Miller', 45, 'robert.miller@email.com'),
('Elizabeth', 'Wilson', 34, 'elizabeth.wilson@email.com'),
('David', 'Moore', 48, 'david.moore@email.com'),
('Jennifer', 'Taylor', 31, 'jennifer.taylor@email.com'),
('Charles', 'Anderson', 52, 'charles.anderson@email.com');

-- Insertar datos en la tabla STUDENTS
INSERT INTO STUDENTS (FIRSTNAME, LASTNAME, AGE, EMAIL) VALUES
('Alice', 'Williams', 20, 'alice.williams@email.com'),
('Jack', 'Brown', 22, 'jack.brown@email.com'),
('Chloe', 'Davis', 19, 'chloe.davis@email.com'),
('Liam', 'Miller', 21, 'liam.miller@email.com'),
('Sophia', 'Wilson', 20, 'sophia.wilson@email.com'),
('Mason', 'Moore', 23, 'mason.moore@email.com'),
('Olivia', 'Taylor', 18, 'olivia.taylor@email.com'),
('Ethan', 'Anderson', 22, 'ethan.anderson@email.com'),
('Isabella', 'Thomas', 19, 'isabella.thomas@email.com'),
('Noah', 'Jackson', 20, 'noah.jackson@email.com');

-- Insertar datos en la tabla COURSES
INSERT INTO COURSES (COURSENAME, DESCRIPTION, INSTRUCTORID, DURATIONHOURS) VALUES
('Mathematics', 'Basic Algebra', 1, 40),
('English Literature', 'Shakespearean Works', 2, 30),
('Physics', 'Classical Mechanics', 3, 45),
('Chemistry', 'Organic Chemistry', 4, 40),
('Biology', 'Cell Biology', 5, 35),
('History', 'World History', 6, 30),
('Spanish', 'Beginner Spanish', 7, 25),
('Computer Science', 'Introduction to Programming', 8, 50),
('Art', 'Renaissance Art', 9, 20),
('Music', 'Classical Music', 10, 30);

INSERT INTO STUDENT_COURSE(STUDENTID, COURSEID) VALUES (3, 2);
INSERT INTO STUDENT_COURSE(STUDENTID, COURSEID) VALUES (4, 1);
INSERT INTO STUDENT_COURSE(STUDENTID, COURSEID) VALUES (4, 2);
INSERT INTO STUDENT_COURSE(STUDENTID, COURSEID) VALUES (5, 1);
INSERT INTO STUDENT_COURSE(STUDENTID, COURSEID) VALUES (5, 2);
INSERT INTO STUDENT_COURSE(STUDENTID, COURSEID) VALUES (1, 1);
INSERT INTO STUDENT_COURSE(STUDENTID, COURSEID) VALUES (1, 2);
INSERT INTO STUDENT_COURSE(STUDENTID, COURSEID) VALUES (2, 1);
INSERT INTO STUDENT_COURSE(STUDENTID, COURSEID) VALUES (2, 2);
INSERT INTO STUDENT_COURSE(STUDENTID, COURSEID) VALUES (3, 1);
INSERT INTO STUDENT_COURSE(STUDENTID, COURSEID) VALUES (3, 2);

/* Buscar datos SELECT */

SELECT * FROM STUDENT_COURSE; /* consulta de todos los datos */
SELECT COURSENAME, DESCRIPTION FROM COURSES; /* consulta de columnas especificas */
SELECT COURSENAME, DESCRIPTION FROM COURSES ORDER COURSERNAME DESC /* consulta de columnas especificas ordenadas de forma desendente*/

/* ACTUALIZAR DATOS UPDATE */

UPDATE INSTRUCTORS
SET FIRSTNAME = 'Juan'
WHERE INSTRUCTORID = 1;

UPDATE COURSES
SET COURSENAME = "intruction to MySql"
WHERE COURSENAME = " intruction to SQL";
