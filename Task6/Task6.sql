use studentmanagement;
ALTER TABLE Students ADD COLUMN LastUpdated DATE; 
ALTER TABLE Students ADD COLUMN Status VARCHAR(10) DEFAULT 'Active';
UPDATE Students SET LastUpdated = '2024-01-01' WHERE StudentID IN (3);
UPDATE Students SET LastUpdated = CURRENT_DATE WHERE StudentID NOT IN (3);
 SET SQL_SAFE_UPDATES = 0;
 UPDATE Students SET Status = 'Active';
 UPDATE Students SET Status = 'Inactive' WHERE (MathScore + ScienceScore + EnglishScore) < 200;
  select * from students;
  DELETE FROM Students WHERE Status = 'Inactive';
 SELECT * FROM Students;
SELECT * FROM Students WHERE LastUpdated = (SELECT MIN(LastUpdated) FROM Students);
DELETE FROM Enrolments WHERE StudentID IN (SELECT StudentID FROM Students WHERE LastUpdated < '2025-07-06');
DELETE FROM Students WHERE LastUpdated < '2025-07-06';
SELECT * FROM Students;

 