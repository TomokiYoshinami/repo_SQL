SELECT 
    DataKubun,
    dbo.Uf_GetNewRaceId(RaceId) AS NewRaceId,
    RaceId,
    Kumi1,
    Kumi2,
    Kumi3
    FROM 
    OddsByExacta
    WHERE RaceId LIKE '20020615%'
          AND JyoCd = '03'
          AND Kumi1 = 1
          AND Kumi2 = 2
    --AND Kumi3 = 0
    ORDER BY 
    1,
    2,
    3,
    4,
    5