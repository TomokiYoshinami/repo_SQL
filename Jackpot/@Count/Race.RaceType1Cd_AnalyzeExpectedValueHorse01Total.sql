SELECT 
       Race.RaceType1Cd, 
       COUNT(*)
FROM AnalyzeExpectedValueHorse01Total
     INNER JOIN Race ON Race.RaceId = AnalyzeExpectedValueHorse01Total.RaceId
GROUP BY 
         Race.RaceType1Cd
ORDER BY 
         2