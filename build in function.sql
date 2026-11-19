DROP DATABASE IF EXISTS training_functions;

CREATE DATABASE training_functions;

USE training_functions;

CREATE TABLE CourseEnrollments (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(40),
    LastName VARCHAR(40),
    CourseName VARCHAR(40),
    Fee DECIMAL(10,2),
    EnrollmentDate DATE,
    CompletionDate DATE
);

INSERT INTO CourseEnrollments
(StudentID, FirstName, LastName, CourseName, Fee,
 EnrollmentDate, CompletionDate)
VALUES
(101, 'aman', 'Sharma', 'Python', 12500.75, '2026-01-05', '2026-03-20'),
(102, 'priya', 'Verma', 'MySQL', 9800.40, '2026-01-12', '2026-02-28'),
(103, 'rahul', 'Singh', 'Python', 15750.90, '2026-02-01', '2026-04-15'),
(104, 'neha', 'Gupta', 'Power BI', 11200.25, '2026-02-10', '2026-05-05'),
(105, 'ishita', 'Kapoor', 'MySQL', 8900.60, '2026-03-03', '2026-04-22'),
(106, 'arjun', 'Mehta', 'Python', 13650.15, '2026-03-15', '2026-06-10'),
(107, 'simran', 'Joshi', 'Power BI', 10400.95, '2026-04-01', '2026-06-30'),
(108, 'vikas', 'Rao', 'MySQL', 7600.50, '2026-04-18', '2026-05-29'),
(109, 'kiran', 'Malik', 'Python', 14999.99, '2026-05-02', '2026-07-25'),
(110, 'rohan', 'Sethi', 'Power BI', 11950.35, '2026-05-20', '2026-08-14');

SELECT UPPER(CONCAT(FirstName, ' ', LastName)) AS Full_Name
FROM CourseEnrollments;

SELECT CONCAT(UPPER(SUBSTRING(FirstName, 1, 1)),SUBSTRING(FirstName, 2)) AS Formatted_Name
FROM CourseEnrollments;

SELECT CONCAT(UPPER(LEFT(CourseName, 3)), '-', StudentID) AS Student_Code
FROM CourseEnrollments;

SELECT FirstName, REVERSE(FirstName) AS Reversed_Name,CHAR_LENGTH(FirstName) AS Character_Count
FROM CourseEnrollments;

SELECT FirstName, LOCATE('a', FirstName) AS Position_Of_A
FROM CourseEnrollments;

SELECT FirstName, UPPER(REPLACE(FirstName, 'a', 'o')) AS Updated_Name
FROM CourseEnrollments;

SELECT FirstName,LPAD(FirstName, 12, '0') AS Padded_Name
FROM CourseEnrollments;

SELECT CONCAT(RIGHT(CourseName, 2),'-',LEFT(FirstName, 2)) AS Course_Label
FROM CourseEnrollments;

SELECT CONCAT(UPPER(SUBSTRING(FirstName, 1, 3)),LOWER(RIGHT(LastName, 2))) AS Custom_Name
FROM CourseEnrollments;

SELECT Fee,ROUND(Fee, 1) AS Rounded_One_Decimal,ROUND(Fee, 0) AS Rounded_Whole_Number
FROM CourseEnrollments;

SELECT Fee,CEIL(Fee) AS Rounded_Up,FLOOR(Fee) AS Rounded_Down
FROM CourseEnrollments;

SELECT Fee, MOD(Fee, 500) AS Remainder
FROM CourseEnrollments;

SELECT Fee, ABS(Fee - 10000) AS Absolute_Difference
FROM CourseEnrollments;

SELECT Fee, ROUND(Fee * 1.18, 2) AS Fee_With_Tax
FROM CourseEnrollments;

SELECT Fee, FORMAT(Fee, 2) AS Formatted_Fee
FROM CourseEnrollments;

SELECT EnrollmentDate, YEAR(EnrollmentDate) AS Enrollment_Year,MONTHNAME(EnrollmentDate) AS Enrollment_Month,DAYNAME(EnrollmentDate) AS Enrollment_Day
FROM CourseEnrollments;

SELECT DATE_FORMAT(EnrollmentDate, '%d/%m/%Y') AS Enrollment_Date, DATE_FORMAT(CompletionDate, '%M %d, %Y') AS Completion_Date
FROM CourseEnrollments;

SELECT EnrollmentDate, CompletionDate, TIMESTAMPDIFF(DAY, EnrollmentDate, CompletionDate) AS Total_Days
FROM CourseEnrollments;

SELECT EnrollmentDate, DATE_ADD(DATE_ADD(EnrollmentDate, INTERVAL 1 MONTH),INTERVAL 10 DAY) AS Updated_Date
FROM CourseEnrollments;

SELECT CompletionDate,DATE_ADD(CompletionDate, INTERVAL -7 DAY)AS Previous_Date
FROM CourseEnrollments;

SELECT EnrollmentDate,CompletionDate,TIMESTAMPDIFF(MONTH, EnrollmentDate, CompletionDate)AS Total_Months
FROM CourseEnrollments;

SELECT EnrollmentDate,DATE_ADD(DATE_ADD(DATE_ADD(EnrollmentDate, INTERVAL 1 YEAR),INTERVAL 2 MONTH),
INTERVAL 5 DAY) AS Updated_Enrollment_Date
FROM CourseEnrollments;

SELECT EnrollmentDate,DAYNAME(EnrollmentDate) AS Enrollment_Weekday,CompletionDate,DAYNAME(CompletionDate) AS Completion_Weekday
FROM CourseEnrollments;

SELECT EnrollmentDate,CURDATE() AS Today_Date,TIMESTAMPDIFF(DAY, EnrollmentDate, CURDATE()) AS Days_From_Enrollment
FROM CourseEnrollments;

SELECT DATE_FORMAT(CompletionDate, '%d/%m/%Y')AS Original_Date,
DATE_FORMAT(DATE_ADD(CompletionDate, INTERVAL 15 DAY),'%d/%m/%Y') AS Updated_Date
FROM CourseEnrollments;