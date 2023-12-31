ALTER TABLE dbo.JockyByTotal DROP COLUMN HitCount12
GO
ALTER TABLE dbo.JockyByTotal
ADD 
            HitCount12 AS HitCount1
                          + HitCount2 PERSISTED
GO
ALTER TABLE dbo.JockyByTotal DROP COLUMN HitRate12
GO
ALTER TABLE dbo.JockyByTotal
ADD 
            HitRate12 AS (HitCount1
                          + HitCount2)
                         / NULLIF(RunCount,0) PERSISTED
GO
ALTER TABLE dbo.JockyByTotal DROP COLUMN HitCount123
GO
ALTER TABLE dbo.JockyByTotal
ADD 
            HitCount123 AS HitCount1
                           + HitCount2
                           + HitCount3 PERSISTED
GO
ALTER TABLE dbo.JockyByTotal DROP COLUMN HitRate123
GO
ALTER TABLE dbo.JockyByTotal
ADD 
            HitRate123 AS (HitCount1
                           + HitCount2
                           + HitCount3)
                          / NULLIF(RunCount,0) PERSISTED
GO