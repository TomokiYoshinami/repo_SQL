UPDATE Odds4
    SET 
        RaceId = dbo.Uf_GetNewRaceId(RaceId)
--SELECT 
--    RaceId,
--    dbo.Uf_GetNewRaceId(RaceId) AS NewRaceId
--    FROM 
--    Odds4