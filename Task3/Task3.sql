USE StudentManagement;

 SELECT Name, (MathScore + ScienceScore + EnglishScore) AS TotalScore FROM Students ORDER BY    TotalScore DESC LIMIT 5;
 
 SELECT AVG(MathScore) AS AverageMathScore FROM Students WHERE MathScore > 70;
 
 SELECT AVG(MathScore + ScienceScore + EnglishScore) AS AverageTotalScore  FROM Students 
 WHERE (MathScore + ScienceScore + EnglishScore) BETWEEN 200 AND 250;

 SELECT MAX(MathScore) AS SecondHighestMathScore FROM Students WHERE MathScore < (SELECT MAX(MathScore) FROM Students);
 
 