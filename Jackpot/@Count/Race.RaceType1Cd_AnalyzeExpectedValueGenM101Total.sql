SELECT 
       Race.RaceType1Cd, 
       COUNT(*)
FROM AnalyzeExpectedValueGenM101Total
     INNER JOIN Race ON Race.RaceId = AnalyzeExpectedValueGenM101Total.RaceId
GROUP BY 
         Race.RaceType1Cd
ORDER BY 
         2