CREATE TRIGGER [dbo].[ut_Race_InsertUpdate] ON [dbo].[Race]
AFTER INSERT, UPDATE
AS
     BEGIN
         SET NOCOUNT ON;
         BEGIN TRANSACTION;
         --------------------------------------------------------------------------------
         -- Update IsNormal
         --------------------------------------------------------------------------------
         UPDATE Race
           SET
               Race.IsNormal = 1,
               TS2 = GETDATE()
         FROM Race
              INNER JOIN RaceHorse ON RaceHorse.RaceID = Race.RaceID
              INNER JOIN ZStdHaronTimeS3ByClass ON ZStdHaronTimeS3ByClass.TrackTypeCD = Race.TrackTypeCD
                                                   AND ZStdHaronTimeS3ByClass.TrackCD = Race.TrackCD
                                                   AND ZStdHaronTimeS3ByClass.JyoCD = Race.JyoCD
                                                   AND ZStdHaronTimeS3ByClass.Kyori = Race.Kyori
                                                   AND ZStdHaronTimeS3ByClass.CourseKubunCD = Race.CourseKubunCD
                                                   AND ZStdHaronTimeS3ByClass.TrackConditionCD = Race.TrackConditionCD
                                                   AND ZStdHaronTimeS3ByClass.JyokenCD5 = Race.JyokenCD5
              INNER JOIN ZStdHaronTimeS4ByClass ON ZStdHaronTimeS4ByClass.TrackTypeCD = Race.TrackTypeCD
                                                   AND ZStdHaronTimeS4ByClass.TrackCD = Race.TrackCD
                                                   AND ZStdHaronTimeS4ByClass.JyoCD = Race.JyoCD
                                                   AND ZStdHaronTimeS4ByClass.Kyori = Race.Kyori
                                                   AND ZStdHaronTimeS4ByClass.CourseKubunCD = Race.CourseKubunCD
                                                   AND ZStdHaronTimeS4ByClass.TrackConditionCD = Race.TrackConditionCD
                                                   AND ZStdHaronTimeS4ByClass.JyokenCD5 = Race.JyokenCD5
              INNER JOIN ZStdHaronTimeL3ByClass ON ZStdHaronTimeL3ByClass.TrackTypeCD = Race.TrackTypeCD
                                                   AND ZStdHaronTimeL3ByClass.TrackCD = Race.TrackCD
                                                   AND ZStdHaronTimeL3ByClass.JyoCD = Race.JyoCD
                                                   AND ZStdHaronTimeL3ByClass.Kyori = Race.Kyori
                                                   AND ZStdHaronTimeL3ByClass.CourseKubunCD = Race.CourseKubunCD
                                                   AND ZStdHaronTimeL3ByClass.TrackConditionCD = Race.TrackConditionCD
                                                   AND ZStdHaronTimeL3ByClass.JyokenCD5 = Race.JyokenCD5
              INNER JOIN ZStdHaronTimeL4ByClass ON ZStdHaronTimeL4ByClass.TrackTypeCD = Race.TrackTypeCD
                                                   AND ZStdHaronTimeL4ByClass.TrackCD = Race.TrackCD
                                                   AND ZStdHaronTimeL4ByClass.JyoCD = Race.JyoCD
                                                   AND ZStdHaronTimeL4ByClass.Kyori = Race.Kyori
                                                   AND ZStdHaronTimeL4ByClass.CourseKubunCD = Race.CourseKubunCD
                                                   AND ZStdHaronTimeL4ByClass.TrackConditionCD = Race.TrackConditionCD
                                                   AND ZStdHaronTimeL4ByClass.JyokenCD5 = Race.JyokenCD5
              INNER JOIN INSERTED ON INSERTED.RaceID = Race.RaceID
         WHERE Race.DataKubun = '7'
               AND (Race.TrackTypeCD = 1
                    OR Race.TrackTypeCD = 2)
               AND Race.HaronTimeS3 BETWEEN ZStdHaronTimeS3ByClass.ClassHaronTimeS3Sigma3Minus AND ZStdHaronTimeS3ByClass.ClassHaronTimeS3Sigma3Plus
               AND Race.HaronTimeS4 BETWEEN ZStdHaronTimeS4ByClass.ClassHaronTimeS4Sigma3Minus AND ZStdHaronTimeS4ByClass.ClassHaronTimeS4Sigma3Plus
               AND Race.HaronTimeL3 BETWEEN ZStdHaronTimeL3ByClass.ClassHaronTimeL3Sigma3Minus AND ZStdHaronTimeL3ByClass.ClassHaronTimeL3Sigma3Plus
               AND Race.HaronTimeL4 BETWEEN ZStdHaronTimeL4ByClass.ClassHaronTimeL4Sigma3Minus AND ZStdHaronTimeL4ByClass.ClassHaronTimeL4Sigma3Plus;
         --------------------------------------------------------------------------------
         -- Update IsNormal
         --------------------------------------------------------------------------------
         UPDATE Race
           SET
               Race.IsNormal = 1,
               TS2 = GETDATE()
         FROM Race
              INNER JOIN RaceHorse ON RaceHorse.RaceID = Race.RaceID
              INNER JOIN ZStdSyogaiMileTimeByClass ON ZStdSyogaiMileTimeByClass.TrackTypeCD = Race.TrackTypeCD
                                                      AND ZStdSyogaiMileTimeByClass.TrackCD = Race.TrackCD
                                                      AND ZStdSyogaiMileTimeByClass.JyoCD = Race.JyoCD
                                                      AND ZStdSyogaiMileTimeByClass.Kyori = Race.Kyori
                                                      AND ZStdSyogaiMileTimeByClass.CourseKubunCD = Race.CourseKubunCD
                                                      AND ZStdSyogaiMileTimeByClass.TrackConditionCD = Race.TrackConditionCD
                                                      AND ZStdSyogaiMileTimeByClass.JyokenCD5 = Race.JyokenCD5
              INNER JOIN INSERTED ON INSERTED.RaceID = Race.RaceID
         WHERE Race.DataKubun = '7'
               AND Race.TrackTypeCD = 3
               AND Race.SyogaiMileTime BETWEEN ZStdSyogaiMileTimeByClass.ClassSyogaiMileTimeSigma3Minus AND ZStdSyogaiMileTimeByClass.ClassSyogaiMileTimeSigma3Plus;
         --------------------------------------------------------------------------------
         -- Update SmileCD
         --------------------------------------------------------------------------------
         UPDATE Race
           SET
               SmileCD = CASE
                             WHEN Race.Kyori BETWEEN 1000 AND 1300
                             THEN 'S'
                             WHEN Race.Kyori BETWEEN 1301 AND 1899
                             THEN 'M'
                             WHEN Race.Kyori BETWEEN 1900 AND 2100
                             THEN 'I'
                             WHEN Race.Kyori BETWEEN 2101 AND 2700
                             THEN 'L'
                             WHEN Race.Kyori >= 2701
                             THEN 'E'
                             ELSE NULL
                         END,
               TS2 = GETDATE()
         FROM Race
              INNER JOIN INSERTED ON INSERTED.RaceID = Race.RaceID;
         COMMIT TRANSACTION;
     END;
GO
ALTER TABLE [dbo].[Race] ENABLE TRIGGER [ut_Race_InsertUpdate]
GO
/****** Object:  Trigger [dbo].[ut_RaceHorse_Delete]    Script Date: 2016/06/30 12:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[ut_RaceHorse_Delete] ON [dbo].[RaceHorse]
AFTER DELETE
AS
     BEGIN
         SET NOCOUNT ON;
         BEGIN TRANSACTION;
         --------------------------------------------------------------------------------
         -- DELETE
         --------------------------------------------------------------------------------
         DELETE RaceHorseBet
         FROM RaceHorseBet
              INNER JOIN DELETED ON DELETED.RaceID = RaceHorseBet.RaceID
                                    AND DELETED.KettoNum = RaceHorseBet.KettoNum;
         COMMIT TRANSACTION;
     END;
GO
