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