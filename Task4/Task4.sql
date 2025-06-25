USE StudentManagement;

SELECT StudentID,Name,(MathScore + ScienceScore + EnglishScore) AS TotalScore,RANK() OVER (ORDER BY (MathScore + ScienceScore + EnglishScore)
DESC) AS StudentRank FROM Students;
 
SELECT StudentID,Name,MathScore,SUM(MathScore) OVER (ORDER BY StudentID) AS RunningTotalMathScore FROM Students;
 
SELECT StudentID, Name, MathScore, ScienceScore, EnglishScore,(MathScore + ScienceScore + EnglishScore) AS TotalScore,
ROUND(AVG(MathScore + ScienceScore + EnglishScore) OVER (), 2) AS OverallAverageScore FROM Students;

SELECT StudentID,Name,MathScore,DENSE_RANK() OVER (ORDER BY MathScore DESC) AS MathRank FROM Students;

SELECT StudentID, Name, Grade,COUNT(*) OVER (PARTITION BY Grade) AS StudentsInSameGrade FROM Students;

SELECT StudentID,Name,(MathScore + ScienceScore + EnglishScore) AS TotalScore,ROUND(((MathScore + ScienceScore + EnglishScore) / 3.0), 2)
AS Percentage,PERCENT_RANK() OVER (ORDER BY (MathScore + ScienceScore + EnglishScore)) AS PercentileRank FROM Students;
