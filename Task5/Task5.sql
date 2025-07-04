USE StudentManagement;

SELECT StudentID,Name,(MathScore + ScienceScore + EnglishScore) AS TotalScore,CASE WHEN (MathScore + ScienceScore + EnglishScore) 
 >= 270 THEN 'A'WHEN (MathScore + ScienceScore + EnglishScore) >= 240 THEN 'B' WHEN (MathScore + ScienceScore + EnglishScore)
 >= 210 THEN 'C' ELSE 'D (Fail)' END AS AssignedGrade FROM Students;
 
 SELECT StudentID,Name,MathScore,CASE WHEN MathScore >= 40 THEN 'Pass' ELSE 'Fail' END AS MathStatus,ScienceScore, CASE 
  WHEN ScienceScore >= 40 THEN 'Pass' ELSE 'Fail' END AS ScienceStatus, EnglishScore, CASE WHEN EnglishScore >= 40 THEN 'Pass' ELSE
 'Fail' END AS EnglishStatus FROM Students;

 
