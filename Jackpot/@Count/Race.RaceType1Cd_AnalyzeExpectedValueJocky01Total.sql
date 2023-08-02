SELECT 
       Race.RaceType1Cd, 
       COUNT(*)
FROM AnalyzeExpectedValueJocky01Total
     INNER JOIN Race ON Race.RaceId = AnalyzeExpectedValueJocky01Total.RaceId
GROUP BY 
         Race.RaceType1Cd
ORDER BY 
         2