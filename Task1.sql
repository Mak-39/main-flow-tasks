CREATE DATABASE StudentManagement;
USE StudentManagement;
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT, Name VARCHAR(50), Gender VARCHAR(1), Age INT, Grade VARCHAR(10), MathScore INT, 
	ScienceScore INT, EnglishScore INT);
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES ('Arjun', 'M', 16, 'A', 92, 88, 90);
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES ('Swetha', 'F', 15, 'B', 76, 82, 78);
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES ('Sagar', 'M', 17, 'C', 65, 70, 68);
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES ('Krithika', 'F', 16, 'A', 91, 94, 89);
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES ('Mohith', 'M', 15, 'B', 80, 75, 85);
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES ('Shreya', 'F', 17, 'C', 60, 65, 70);
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES ('Karan', 'M', 16, 'B', 78, 81, 79);
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES ('Darshini', 'F', 15, 'A', 93, 90, 92);
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES ('Rohith', 'M', 17, 'A', 84, 79, 83);
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES ('Kamali', 'F', 16, 'C', 67, 72, 69);
USE StudentManagement;
SELECT * FROM Students;
SELECT AVG(MathScore) AS AvgMathScore, AVG(ScienceScore) AS AvgScienceScore, AVG(EnglishScore) AS AvgEnglishScore FROM Students;
SELECT StudentID, Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore, (MathScore + ScienceScore + EnglishScore)
 AS TotalScore FROM Students WHERE (MathScore + ScienceScore + EnglishScore) = (SELECT MAX(MathScore + ScienceScore + EnglishScore) FROM Students);
 SELECT Grade, COUNT(*) AS NumberOfStudents FROM Students GROUP BY Grade;
 SELECT Gender, AVG(MathScore) AS AvgMathScore, AVG(ScienceScore) AS AvgScienceScore, AVG(EnglishScore) AS AvgEnglishScore FROM Students GROUP BY Gender;
 SELECT StudentID, Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore FROM Students WHERE MathScore > 80;
 UPDATE Students SET Grade = 'B' WHERE StudentID = 9;
 SELECT * FROM Students;