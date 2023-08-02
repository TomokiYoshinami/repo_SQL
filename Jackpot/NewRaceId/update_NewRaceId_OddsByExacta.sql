UPDATE OddsByExacta
    SET 
        RaceId = dbo.Uf_GetNewRaceId(RaceId)
--SELECT 
--    RaceId,
--    dbo.Uf_GetNewRaceId(RaceId) AS NewRaceId
--    FROM 
--    OddsByExacta