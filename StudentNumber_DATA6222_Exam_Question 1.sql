--Question 1
--1.1)Create a view named ‘LongSessions’ that contains the TUTOR_ID, STUDENT_ID,
--    BOOKING_DATE, BOOKING_TIME, AND BOOKING_DURATION for all bookings for
--    2024 that are for 100 or more minutes. 

CREATE VIEW LongSessions
AS
SELECT 
    STUDENT_ID,
    TUTOR_ID,
    BOOKING_DATE,
    BookingTime AS BOOKING_TIME,
    BookingDuration AS BOOKING_DURATION
FROM TUTOR_BOOKINGS
WHERE BOOKING_DATE >= '2024-01-01' 
  AND BOOKING_DATE <= '2024-12-31'
  AND BookingDuration >= 100;

--1.2) Create a stored procedure named ‘FindBookings’ that will display the
--TUTOR_NAME, STUDENT_NAME, STUDENT_CELL, BOOKING_DATE,
--BOOKING_TIME, AND BOOKING_DURATION of all sessions booked for a specific
--tutor. When executing the stored procedure make use of the TUTOR_ID ‘ID0002’.
CREATE PROCEDURE FindBookings
    @TutorID INT
AS
BEGIN
    SELECT 
        t.TutorName       AS TUTOR_NAME,
        s.StudentName     AS STUDENT_NAME,
        s.StudentCell     AS STUDENT_CELL,
        tb.BOOKING_DATE,
        tb.BookingTime    AS BOOKING_TIME,
        tb.BookingDuration AS BOOKING_DURATION
    FROM TUTOR_BOOKINGS tb
    INNER JOIN Student s ON tb.STUDENT_ID = s.STUDENT_ID
    INNER JOIN TUTOR   t ON tb.TUTOR_ID   = t.TUTOR_ID
    WHERE tb.TUTOR_ID = @TutorID;
END;


