CREATE DATABASE StudentNumber_DATA6222_ExamQ1;

CREATE TABLE Student ( 
	STUDENT_ID INT PRIMARY KEY,
	StudentName VARCHAR(50),
	StudentCell VARCHAR(10)
);
--Alter student table 
ALTER TABLE Student 
ALTER COLUMN StudentCell VARCHAR(15);
--insertion of values 
INSERT INTO Student(STUDENT_ID, StudentName, StudentCell)
VALUES
(123456, 'Neo Petlele', '076 897 8657'),
(246810, 'Derek Moore', '083 159 5753'),
(369121, 'Pedro Ntaba', '082 357 8963'),
(654321, 'Thabo Joe', '071 134 6798'),
(987654, 'Dominique Woolridge', '084 713 9852');


CREATE TABLE TUTOR(
	TUTOR_ID INT PRIMARY KEY,
	TutorName VARCHAR(100),
	TutorAddress VARCHAR(100)
);

--insertion of values into tutor table 
INSERT INTO TUTOR(TUTOR_ID, TutorName, TutorAddress)
VALUES 
(1, 'Theo Sithole', '12 Radar drive, Durban'),
(2, 'Yanga Mabiso', '116 Clearwater Road, Tshwane'),
(3, 'Sally Sutton', '1 Waterstone Drive, Sandton'),
(4, 'Fred Dlamini', '2 Ring Road, Gqeberha'),
(5, 'Tandy Marais','1 Belmont Road, Cape Town');


CREATE TABLE TUTOR_BOOKINGS(
	BOOKING_DATE DATE PRIMARY KEY,
	BookingTime TIME,
	BookingDuration INT,
	STUDENT_ID INT,
	TUTOR_ID INT,
	
	-- Adding foreien keys.
	FOREIGN KEY (STUDENT_ID) REFERENCES STUDENT(STUDENT_ID),
	FOREIGN KEY (TUTOR_ID) REFERENCES TUTOR(TUTOR_ID)
);

--insertion of values into tutor booking table 
INSERT INTO TUTOR_BOOKINGS (STUDENT_ID, TUTOR_ID, BOOKING_DATE, BookingTime, BookingDuration)
VALUES
(123456, 1, '2024-10-30', '09:00:00', 30),
(246810, 5, '2024-10-29', '12:00:00', 20),
(246810, 4, '2024-10-30', '13:00:00', 50),
(654321, 2, '2024-10-28', '18:00:00', 100),
(987654, 1, '2024-10-29', '10:00:00', 120),
(123456, 2, '2024-10-20', '12:00:00', 30),
(246810, 4, '2024-10-29', '09:00:00', 40);

