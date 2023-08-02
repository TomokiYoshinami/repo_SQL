SELECT 
    T1.RaceId,
    T1.Kumi1,
    T1.Kumi2,
    T1.Kumi3,
    COUNT(*) AS Count
--dbo.Uf_GetNewRaceId(T1.RaceId) AS NewRaceId
    FROM 
    OddsByExacta AS T1
    INNER JOIN OddsByWide AS T2 ON T1.RaceId = T2.RaceId
                                  AND T1.Kumi1 = T2.Kumi1
                                  AND T1.Kumi2 = T2.Kumi2
                                  AND T1.Kumi3 = T2.Kumi3
    GROUP BY 
    T1.RaceId,
    T1.Kumi1,
    T1.Kumi2,
    T1.Kumi3
    HAVING COUNT(*) >= 2