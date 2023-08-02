SELECT 
    DataKubun,
    dbo.Uf_GetNewRaceId(RaceId) AS NewRaceId,
    RaceId
    FROM 
    Odds4
    WHERE RaceId LIKE '20020615%'