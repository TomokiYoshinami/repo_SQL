ALTER TABLE dbo.HorseByRunningStyle DROP COLUMN RunningStyleAvg
GO
ALTER TABLE dbo.HorseByRunningStyle
ADD 
            RunningStyleAvg AS 1
                               * HorseByRunningStyle.HitRate1
                               + 2
                               * HorseByRunningStyle.HitRate2
                               + 3
                               * HorseByRunningStyle.HitRate3
                               + 4
                               * HorseByRunningStyle.HitRate4 PERSISTED
GO