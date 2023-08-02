SELECT 
       Race.RaceType1Cd, 
       COUNT(*)
FROM AnalyzeExpectedValueGenF101Total
     INNER JOIN Race ON Race.RaceId = AnalyzeExpectedValueGenF101Total.RaceId
GROUP BY 
         Race.RaceType1Cd
ORDER BY 
         2