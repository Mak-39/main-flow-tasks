use studentmanagement;
CREATE VIEW Studentscores AS SELECT StudentID, Name,'Math' AS Subject, MathScore AS Score FROM Students UNION SELECT StudentID,
 Name,'Science' AS Subject, ScienceScore AS Score FROM Students UNION SELECT StudentID, Name,'English' AS Subject,
EnglishScore AS Score FROM Students;
SELECT * FROM Studentscores;
CREATE VIEW passedstudents AS SELECT StudentID, Name FROM Students WHERE MathScore >= 40 AND ScienceScore >= 40 AND
EnglishScore >= 40;
SELECT * FROM passedstudents;

