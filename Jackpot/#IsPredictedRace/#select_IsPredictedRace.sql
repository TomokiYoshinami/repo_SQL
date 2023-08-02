SELECT       
       COUNT(*)
       FROM  
            Race
       WHERE IsPredictedRace = 1
SELECT       
       YEAR(RaceDate),
       COUNT(*)
       FROM  
            Race
       WHERE IsPredictedRace = 1
       GROUP BY 
                YEAR(RaceDate)
       ORDER BY 
                YEAR(RaceDate)
SELECT       
       COUNT(*)
       FROM  
            Race
       WHERE Race.IsPredictedRace = 1
SELECT       
       RaceId
       FROM  
            Race
       WHERE IsPredictedRace = 1
    ORDER BY 
             RaceId