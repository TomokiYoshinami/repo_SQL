USE [Jackpot33331]
GO
DROP FUNCTION [dbo].[Uf_ExcelNormDist]
GO
DROP FUNCTION [dbo].[Uf_NormalPdf]
GO
DROP FUNCTION [dbo].[Uf_TimeToTicks]
GO
DROP FUNCTION [dbo].[Uf_Permutation]
GO
DROP FUNCTION [dbo].[Uf_Normsdist]
GO
DROP FUNCTION [dbo].[Uf_LogitOdds]
GO
DROP FUNCTION [dbo].[Uf_Logit2]
GO
DROP FUNCTION [dbo].[Uf_Logit]
GO
DROP FUNCTION [dbo].[Uf_Logistic2]
GO
DROP FUNCTION [dbo].[Uf_Logistic]
GO
DROP FUNCTION [dbo].[Uf_GetRaceWeekId]
GO
DROP FUNCTION [dbo].[Uf_GetRaceWeek]
GO
DROP FUNCTION [dbo].[Uf_GetRaceType9Id]
GO
DROP FUNCTION [dbo].[Uf_GetRaceType8Id]
GO
DROP FUNCTION [dbo].[Uf_GetRaceType7Id]
GO
DROP FUNCTION [dbo].[Uf_GetRaceType6Id]
GO
DROP FUNCTION [dbo].[Uf_GetRaceType5Id]
GO
DROP FUNCTION [dbo].[Uf_GetRaceType4Id]
GO
DROP FUNCTION [dbo].[Uf_GetRaceType3Id]
GO
DROP FUNCTION [dbo].[Uf_GetRaceType2Id]
GO
DROP FUNCTION [dbo].[Uf_GetRaceType1Id]
GO
DROP FUNCTION [dbo].[Uf_GetRaceMonthId]
GO
DROP FUNCTION [dbo].[Uf_GetRaceMonth]
GO
DROP FUNCTION [dbo].[Uf_GetRaceKaijiId]
GO
DROP FUNCTION [dbo].[Uf_GetRaceDayId20]
GO
DROP FUNCTION [dbo].[Uf_GetRaceDayId14]
GO
DROP FUNCTION [dbo].[Uf_GetProbWinFive]
GO
DROP FUNCTION [dbo].[Uf_GetProbWin]
GO
DROP FUNCTION [dbo].[Uf_GetProbWide]
GO
DROP FUNCTION [dbo].[Uf_GetProbTrio]
GO
DROP FUNCTION [dbo].[Uf_GetProbTrifecta]
GO
DROP FUNCTION [dbo].[Uf_GetProbQuinella]
GO
DROP FUNCTION [dbo].[Uf_GetProbPlace]
GO
DROP FUNCTION [dbo].[Uf_GetProbExacta]
GO
DROP FUNCTION [dbo].[Uf_GetPrepRaceType1Id]
GO
DROP FUNCTION [dbo].[Uf_GetClassId]
GO
DROP FUNCTION [dbo].[Uf_Factorial]
GO
DROP FUNCTION [dbo].[Uf_Erf]
GO
DROP FUNCTION [dbo].[Uf_ConvertRaceId20ToRaceId14]
GO
DROP FUNCTION [dbo].[Uf_ConvertNewRaceId]
GO
DROP FUNCTION [dbo].[Uf_ConvertNewRaceDayId]
GO
DROP FUNCTION [dbo].[Uf_Combine]
GO
DROP FUNCTION [dbo].[Uf_CombinationWin]
GO
DROP FUNCTION [dbo].[Uf_CombinationWide]
GO
DROP FUNCTION [dbo].[Uf_CombinationTrio]
GO
DROP FUNCTION [dbo].[Uf_CombinationTrifecta]
GO
DROP FUNCTION [dbo].[Uf_CombinationQuinella]
GO
DROP FUNCTION [dbo].[Uf_CombinationPlace]
GO
DROP FUNCTION [dbo].[Uf_CombinationExacta]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_CombinationExacta]
                                        (
    @N INT
                                        )
RETURNS INT
AS
    BEGIN
        DECLARE @Ret INT
        SET @Ret = dbo.Uf_Permutation
           (@N,2
           )
        RETURN @Ret
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_CombinationPlace]
                                       (
    @N INT
                                       )
RETURNS INT
AS
    BEGIN
        DECLARE @Ret INT
        SET @Ret = @N
        RETURN @Ret
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_CombinationQuinella]
                                          (
    @N INT
                                          )
RETURNS INT
AS
    BEGIN
        DECLARE @Ret INT
        SET @Ret = dbo.Uf_Combine
           (@N,2
           )
        RETURN @Ret
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_CombinationTrifecta]
                                          (
    @N INT
                                          )
RETURNS INT
AS
    BEGIN
        DECLARE @Ret INT
        SET @Ret = dbo.Uf_Permutation
           (@N,3
           )
        RETURN @Ret
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_CombinationTrio]
                                      (
    @N INT
                                      )
RETURNS INT
AS
    BEGIN
        DECLARE @Ret INT
        SET @Ret = dbo.Uf_Combine
           (@N,3
           )
        RETURN @Ret
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_CombinationWide]
                                      (
    @N INT
                                      )
RETURNS INT
AS
    BEGIN
        DECLARE @Ret INT
        SET @Ret = dbo.Uf_Combine
           (@N,2
           )
        RETURN @Ret
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_CombinationWin]
                                     (
    @N INT
                                     )
RETURNS INT
AS
    BEGIN
        DECLARE @Ret INT
        SET @Ret = @N
        RETURN @Ret
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_Combine]
                              (
    @N INT,
    @K INT
                              )
RETURNS INT
AS
    BEGIN
        DECLARE @Ret_n1 INT
        DECLARE @Ret_n2 INT
        DECLARE @Ret INT
        --nPk = n! / (n-k)!
        SET @Ret = (dbo.Uf_Factorial
           (@N
           ) / dbo.Uf_Factorial
           (@N - @K
           )) / dbo.Uf_Factorial
           (@K
           )
        RETURN @Ret
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_ConvertNewRaceDayId]
                                          (
    @RaceId NCHAR(20)
                                          )
RETURNS NCHAR(10)
AS
    BEGIN
        RETURN SUBSTRING(@RaceId,1,8) + SUBSTRING(@RaceId,10,2)
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_ConvertNewRaceId]
                                       (
    @RaceId NCHAR(20)
                                       )
RETURNS NCHAR(12)
AS
    BEGIN
        RETURN SUBSTRING(@RaceId,1,8) + SUBSTRING(@RaceId,10,2) + SUBSTRING(@RaceId,19,2)
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_ConvertRaceId20ToRaceId14]
                                                (
    @RaceId NCHAR(20)
                                                )
RETURNS NCHAR(14)
AS
    BEGIN
        RETURN SUBSTRING(@RaceId,1,12) + SUBSTRING(@RaceId,19,2)
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_Erf]
                          (
    @X FLOAT
                          )
RETURNS FLOAT
AS
    BEGIN
        SET @X = ABS(@X)
        DECLARE @A1 FLOAT(53) = 0.254829592
        DECLARE @A2 FLOAT(53) = -0.284496736
        DECLARE @A3 FLOAT(53) = 1.421413741
        DECLARE @A4 FLOAT(53) = -1.453152027
        DECLARE @A5 FLOAT(53) = 1.061405429
        DECLARE @P FLOAT(53) = 0.3275911
        DECLARE @T FLOAT(53) = 1 / (1 + @P * @X)
        RETURN 1 - ((((@A5 * @T + @A4) * @T + @A3) * @T + @A2) * @T + @A1) * @T * EXP(-1 * @X * @X)
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_Factorial]
                                (
    @N INT
                                )
RETURNS INT
WITH EXECUTE AS CALLER
AS
    BEGIN
        DECLARE @Temp INT
        SET @Temp = 1
        WHILE @N > 0
            BEGIN
                SET @Temp = @Temp * @N
                SET @N = @N - 1
            END
        RETURN @Temp
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetClassId]
                                 (
    @CourseKubunId    NCHAR(2),
    @Distance         FLOAT,
    @DistanceTypeId   NCHAR(1),
    @DistanceType2Id  NCHAR(1),
    @GradeId          NCHAR(1),
    @PlaceId          NCHAR(2),
    @JyokenId         NCHAR(1),
    @JyuryoId         NCHAR(1),
    @SmileId          NCHAR(1),
    @SyubetuId        NCHAR(2),
    @TrackId          NCHAR(2),
    @TrackConditionId NCHAR(1),
    @TrackTypeId      NCHAR(1),
    @TrackType2Id     NCHAR(1),
    @TrackType3Id     NCHAR(1)
                                 )
RETURNS NCHAR(4)
AS
    BEGIN
        --33310
        RETURN @TrackTypeId + @JyokenId + @SyubetuId
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetPrepRaceType1Id]
                                         (
    @CourseKubunId     NCHAR(2),
    @DistanceId        NCHAR(4),
    @DistanceIdTypeId  NCHAR(1),
    @DistanceIdType2Id NCHAR(1),
    @GradeId           NCHAR(1),
    @JyokenId          NCHAR(1),
    @JyuryoId          NCHAR(1),
    @PlaceId           NCHAR(2),
    @RaceMonthId       NCHAR(2),
    @RaceWeekId        NCHAR(2),
    @SmileId           NCHAR(1),
    @SyubetuId         NCHAR(2),
    @TrackId           NCHAR(2),
    @TrackConditionId  NCHAR(1),
    @TrackTypeId       NCHAR(1),
    @TrackType2Id      NCHAR(1),
    @TrackType3Id      NCHAR(1)
                                         )
RETURNS NVARCHAR(255)
AS
    BEGIN
        RETURN @TrackTypeId + @JyokenId + @SyubetuId + '-' + @GradeId + '-' + @DistanceId + '-' + @PlaceId + '-' + @TrackConditionId
    --RETURN @TrackTypeId + '-' + @DistanceId + '-' + @PlaceId + '-' + @TrackConditionId
    --RETURN @TrackTypeId + @JyokenId + @SyubetuId + '-' + @DistanceId + '-' + @PlaceId + '-' + @TrackConditionId
    --RETURN @TrackTypeId + @JyokenId + @SyubetuId + '-' + @GradeId + '-' + @DistanceId + '-' + @PlaceId + '-' + @TrackConditionId
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetProbExacta]
                                    (
    @A FLOAT,
    @B FLOAT
                                    )
RETURNS FLOAT
WITH EXECUTE AS CALLER
AS
    BEGIN
        RETURN 
        -- AB
        @A * @B / NULLIF(1 - @A,0)
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetProbPlace]
                                   (
    @A FLOAT
                                   )
RETURNS FLOAT
WITH EXECUTE AS CALLER
AS
    BEGIN
        RETURN 
        -- A
        @A
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetProbQuinella]
                                      (
    @A FLOAT,
    @B FLOAT
                                      )
RETURNS FLOAT
WITH EXECUTE AS CALLER
AS
    BEGIN
        RETURN 
        -- AB
        @A * @B / NULLIF(1 - @A,0)
        -- BA
        + @B * @A / NULLIF(1 - @B,0)
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetProbTrifecta]
                                      (
    @A FLOAT,
    @B FLOAT,
    @C FLOAT
                                      )
RETURNS FLOAT
WITH EXECUTE AS CALLER
AS
    BEGIN
        --ABC
        RETURN @A * @B * @C / NULLIF((1 - @A) * (1 - @A - @B),0)
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetProbTrio]
                                  (
    @A FLOAT,
    @B FLOAT,
    @C FLOAT
                                  )
RETURNS FLOAT
WITH EXECUTE AS CALLER
AS
    BEGIN
        RETURN 
        -- ABC
        @A * @B * @C / NULLIF((1 - @A) * (1 - @A - @B),0)
        -- ACB
        + @A * @C * @B / NULLIF((1 - @A) * (1 - @A - @C),0)
        --BAC
        + @B * @A * @C / NULLIF((1 - @B) * (1 - @B - @A),0)
        --BCA
        + @B * @C * @A / NULLIF((1 - @B) * (1 - @B - @C),0)
        --CAB
        + @C * @A * @B / NULLIF((1 - @C) * (1 - @C - @A),0)
        --CBA
        + @C * @B * @A / NULLIF((1 - @C) * (1 - @C - @B),0)
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetProbWide]
                                  (
    @A FLOAT,
    @B FLOAT
                                  )
RETURNS FLOAT
WITH EXECUTE AS CALLER
AS
    BEGIN
        RETURN 
        -- AB
        @A * @B / NULLIF(1 - @A,0)
        -- BA
        + @B * @A / NULLIF(1 - @B,0)
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetProbWin]
                                 (
    @A FLOAT
                                 )
RETURNS FLOAT
WITH EXECUTE AS CALLER
AS
    BEGIN
        RETURN 
        -- A
        @A
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetProbWinFive]
                                     (
    @A FLOAT,
    @B FLOAT,
    @C FLOAT,
    @D FLOAT,
    @E FLOAT
                                     )
RETURNS FLOAT
WITH EXECUTE AS CALLER
AS
    BEGIN
        RETURN(@A + @B + @C + @D + @E) / 5
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetRaceDayId14]
                                     (
    @RaceDate DATETIME,
    @PlaceId  NCHAR(2),
    @Kaiji    INT,
    @Nichiji  INT
                                     )
RETURNS NCHAR(10)
AS
    BEGIN
        RETURN FORMAT(@RaceDate,'yyyyMMdd') + @PlaceId
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetRaceDayId20]
                                     (
    @RaceDate DATETIME,
    @PlaceId  NCHAR(2),
    @Kaiji    INT,
    @Nichiji  INT
                                     )
--RETURNS NCHAR(11)
RETURNS NCHAR(10)
AS
    BEGIN
        RETURN FORMAT(@RaceDate,'yyyyMMdd') + @PlaceId
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetRaceKaijiId]
                                     (
    @Kaiji   FLOAT,
    @PlaceId NCHAR(2)
                                     )
RETURNS NCHAR(4)
AS
    BEGIN
        RETURN @PlaceId + FORMAT(@Kaiji,'00')
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetRaceMonth]
                                   (
    @RaceDate DATETIME
                                   )
RETURNS FLOAT
AS
    BEGIN
        RETURN MONTH(@RaceDate)
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetRaceMonthId]
                                     (
    @RaceDate DATETIME
                                     )
RETURNS NCHAR(2)
AS
    BEGIN
        RETURN FORMAT(MONTH(@RaceDate),'00')
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetRaceType1Id]
                                     (
    @CourseKubunId     NCHAR(2),
    @DistanceId        NCHAR(4),
    @DistanceIdTypeId  NCHAR(1),
    @DistanceIdType2Id NCHAR(1),
    @GradeId           NCHAR(1),
    @JyokenId          NCHAR(1),
    @JyuryoId          NCHAR(1),
    @PlaceId           NCHAR(2),
    @RaceMonthId       NCHAR(2),
    @RaceWeekId        NCHAR(2),
    @SmileId           NCHAR(1),
    @SyubetuId         NCHAR(2),
    @TrackId           NCHAR(2),
    @TrackConditionId  NCHAR(1),
    @TrackTypeId       NCHAR(1),
    @TrackType2Id      NCHAR(1),
    @TrackType3Id      NCHAR(1)
                                     )
RETURNS NVARCHAR(255)
AS
    BEGIN
        --33331
        RETURN @TrackTypeId
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetRaceType2Id]
                                     (
    @CourseKubunId     NCHAR(2),
    @DistanceId        NCHAR(4),
    @DistanceIdTypeId  NCHAR(1),
    @DistanceIdType2Id NCHAR(1),
    @GradeId           NCHAR(1),
    @JyokenId          NCHAR(1),
    @JyuryoId          NCHAR(1),
    @PlaceId           NCHAR(2),
    @RaceMonthId       NCHAR(2),
    @RaceWeekId        NCHAR(2),
    @SmileId           NCHAR(1),
    @SyubetuId         NCHAR(2),
    @TrackId           NCHAR(2),
    @TrackConditionId  NCHAR(1),
    @TrackTypeId       NCHAR(1),
    @TrackType2Id      NCHAR(1),
    @TrackType3Id      NCHAR(1)
                                     )
RETURNS NVARCHAR(255)
AS
    BEGIN
        --33331
        RETURN @TrackTypeId + @JyokenId + @SyubetuId
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetRaceType3Id]
                                     (
    @CourseKubunId     NCHAR(2),
    @DistanceId        NCHAR(4),
    @DistanceIdTypeId  NCHAR(1),
    @DistanceIdType2Id NCHAR(1),
    @GradeId           NCHAR(1),
    @JyokenId          NCHAR(1),
    @JyuryoId          NCHAR(1),
    @PlaceId           NCHAR(2),
    @RaceMonthId       NCHAR(2),
    @RaceWeekId        NCHAR(2),
    @SmileId           NCHAR(1),
    @SyubetuId         NCHAR(2),
    @TrackId           NCHAR(2),
    @TrackConditionId  NCHAR(1),
    @TrackTypeId       NCHAR(1),
    @TrackType2Id      NCHAR(1),
    @TrackType3Id      NCHAR(1)
                                     )
RETURNS NVARCHAR(255)
AS
    BEGIN
        --33331
        RETURN @TrackTypeId + @JyokenId + @SyubetuId + '-' + @GradeId
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetRaceType4Id]
                                     (
    @CourseKubunId     NCHAR(2),
    @DistanceId        NCHAR(4),
    @DistanceIdTypeId  NCHAR(1),
    @DistanceIdType2Id NCHAR(1),
    @GradeId           NCHAR(1),
    @JyokenId          NCHAR(1),
    @JyuryoId          NCHAR(1),
    @PlaceId           NCHAR(2),
    @RaceMonthId       NCHAR(2),
    @RaceWeekId        NCHAR(2),
    @SmileId           NCHAR(1),
    @SyubetuId         NCHAR(2),
    @TrackId           NCHAR(2),
    @TrackConditionId  NCHAR(1),
    @TrackTypeId       NCHAR(1),
    @TrackType2Id      NCHAR(1),
    @TrackType3Id      NCHAR(1)
                                     )
RETURNS NVARCHAR(255)
AS
    BEGIN
        --33331
        RETURN @TrackTypeId + '-' + @PlaceId
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetRaceType5Id]
                                     (
    @CourseKubunId     NCHAR(2),
    @DistanceId        NCHAR(4),
    @DistanceIdTypeId  NCHAR(1),
    @DistanceIdType2Id NCHAR(1),
    @GradeId           NCHAR(1),
    @JyokenId          NCHAR(1),
    @JyuryoId          NCHAR(1),
    @PlaceId           NCHAR(2),
    @RaceMonthId       NCHAR(2),
    @RaceWeekId        NCHAR(2),
    @SmileId           NCHAR(1),
    @SyubetuId         NCHAR(2),
    @TrackId           NCHAR(2),
    @TrackConditionId  NCHAR(1),
    @TrackTypeId       NCHAR(1),
    @TrackType2Id      NCHAR(1),
    @TrackType3Id      NCHAR(1)
                                     )
RETURNS NVARCHAR(255)
AS
    BEGIN
        --33331
        RETURN @DistanceId
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetRaceType6Id]
                                     (
    @CourseKubunId     NCHAR(2),
    @DistanceId        NCHAR(4),
    @DistanceIdTypeId  NCHAR(1),
    @DistanceIdType2Id NCHAR(1),
    @GradeId           NCHAR(1),
    @JyokenId          NCHAR(1),
    @JyuryoId          NCHAR(1),
    @PlaceId           NCHAR(2),
    @RaceMonthId       NCHAR(2),
    @RaceWeekId        NCHAR(2),
    @SmileId           NCHAR(1),
    @SyubetuId         NCHAR(2),
    @TrackId           NCHAR(2),
    @TrackConditionId  NCHAR(1),
    @TrackTypeId       NCHAR(1),
    @TrackType2Id      NCHAR(1),
    @TrackType3Id      NCHAR(1)
                                     )
RETURNS NVARCHAR(255)
AS
    BEGIN
        --33331
        RETURN @TrackTypeId + '-' + @TrackConditionId
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetRaceType7Id]
                                     (
    @CourseKubunId     NCHAR(2),
    @DistanceId        NCHAR(4),
    @DistanceIdTypeId  NCHAR(1),
    @DistanceIdType2Id NCHAR(1),
    @GradeId           NCHAR(1),
    @JyokenId          NCHAR(1),
    @JyuryoId          NCHAR(1),
    @PlaceId           NCHAR(2),
    @RaceMonthId       NCHAR(2),
    @RaceWeekId        NCHAR(2),
    @SmileId           NCHAR(1),
    @SyubetuId         NCHAR(2),
    @TrackId           NCHAR(2),
    @TrackConditionId  NCHAR(1),
    @TrackTypeId       NCHAR(1),
    @TrackType2Id      NCHAR(1),
    @TrackType3Id      NCHAR(1)
                                     )
RETURNS NVARCHAR(255)
AS
    BEGIN
        --33331
        RETURN @SmileId
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetRaceType8Id]
                                     (
    @CourseKubunId     NCHAR(2),
    @DistanceId        NCHAR(4),
    @DistanceIdTypeId  NCHAR(1),
    @DistanceIdType2Id NCHAR(1),
    @GradeId           NCHAR(1),
    @JyokenId          NCHAR(1),
    @JyuryoId          NCHAR(1),
    @PlaceId           NCHAR(2),
    @RaceMonthId       NCHAR(2),
    @RaceWeekId        NCHAR(2),
    @SmileId           NCHAR(1),
    @SyubetuId         NCHAR(2),
    @TrackId           NCHAR(2),
    @TrackConditionId  NCHAR(1),
    @TrackTypeId       NCHAR(1),
    @TrackType2Id      NCHAR(1),
    @TrackType3Id      NCHAR(1)
                                     )
RETURNS NVARCHAR(255)
AS
    BEGIN
        --33331
        RETURN @RaceMonthId
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetRaceType9Id]
                                     (
    @CourseKubunId     NCHAR(2),
    @DistanceId        NCHAR(4),
    @DistanceIdTypeId  NCHAR(1),
    @DistanceIdType2Id NCHAR(1),
    @GradeId           NCHAR(1),
    @JyokenId          NCHAR(1),
    @JyuryoId          NCHAR(1),
    @PlaceId           NCHAR(2),
    @RaceMonthId       NCHAR(2),
    @RaceWeekId        NCHAR(2),
    @SmileId           NCHAR(1),
    @SyubetuId         NCHAR(2),
    @TrackId           NCHAR(2),
    @TrackConditionId  NCHAR(1),
    @TrackTypeId       NCHAR(1),
    @TrackType2Id      NCHAR(1),
    @TrackType3Id      NCHAR(1)
                                     )
RETURNS NVARCHAR(255)
AS
    BEGIN
        --All
        RETURN @TrackTypeId + @JyokenId + @SyubetuId + '-' + @GradeId + '-' + @DistanceId + '-' + @PlaceId + '-' + @TrackConditionId
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetRaceWeek]
                                  (
    @RaceDate DATETIME
                                  )
RETURNS FLOAT
AS
    BEGIN
        RETURN DATEDIFF(WEEK,DATEFROMPARTS(YEAR(@RaceDate),1,1),@RaceDate)
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_GetRaceWeekId]
                                    (
    @RaceDate DATETIME
                                    )
RETURNS NCHAR(2)
AS
    BEGIN
        RETURN FORMAT(DATEDIFF(WEEK,DATEFROMPARTS(YEAR(@RaceDate),1,1),@RaceDate),'00')
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_Logistic]
                               (
    @Logit FLOAT
                               )
RETURNS FLOAT
AS
    BEGIN
        RETURN CASE
               WHEN @Logit IS NULL
                   THEN NULL
               --WHEN @Logit > 700
               --THEN NULL
               ELSE EXP(@Logit) / NULLIF(1.0 + EXP(@Logit),0)
               END
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_Logistic2]
                                (
    @Logit FLOAT
                                )
RETURNS FLOAT
AS
    BEGIN
        RETURN CASE
               WHEN @Logit IS NULL
                   THEN NULL
               --WHEN @Logit > 100
               --THEN NULL
               ELSE 1.0 / NULLIF(1.0 + EXP(-@Logit),0)
               END
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_Logit]
                            (
    @P FLOAT
                            )
RETURNS FLOAT
AS
    BEGIN
        RETURN LOG(NULLIF(@P / NULLIF(1 - @P,0),0))
    --RETURN LOG(NULLIF(@P /NULLIF( (1 - @P),0) + 0.5,0))
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_Logit2]
                             (
    @P FLOAT
                             )
RETURNS FLOAT
AS
    BEGIN
        RETURN CASE
               WHEN @P <= 0
                   THEN LOG(0.0000000001 / (1 - 0.0000000001))
               WHEN @P >= 1
                   THEN LOG(0.9999999999 / (1 - 0.9999999999))
               ELSE LOG(@P / NULLIF(1 - @P,0))
               END
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_LogitOdds]
                                (
    @Odds FLOAT
                                )
RETURNS FLOAT
AS
    BEGIN
        RETURN CASE
               WHEN 1 / @Odds <= 0
                   THEN -30
               WHEN 1 / @Odds >= 1
                   THEN 0
               ELSE LOG((1 / @Odds) / (1 - 1 / @Odds))
               END
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_Normsdist]
                                (
    @Z FLOAT
                                )
RETURNS FLOAT
AS
    BEGIN
        DECLARE @Sign INT = CASE
                            WHEN @Z < 0
                                THEN -1
                            ELSE 1
                            END
        DECLARE @X FLOAT(53) = ABS(@Z) / SQRT(2)
        DECLARE @A1 FLOAT(53) = 0.254829592
        DECLARE @A2 FLOAT(53) = -0.284496736
        DECLARE @A3 FLOAT(53) = 1.421413741
        DECLARE @A4 FLOAT(53) = -1.453152027
        DECLARE @A5 FLOAT(53) = 1.061405429
        DECLARE @P FLOAT(53) = 0.3275911
        DECLARE @T FLOAT(53) = 1 / (1 + @P * @X)
        RETURN 0.5 * (1.0 + @Sign * (1 - ((((@A5 * @T + @A4) * @T + @A3) * @T + @A2) * @T + @A1) * @T * EXP(-1 * @X * @X)))
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_Permutation]
                                  (
    @N INT,
    @K INT
                                  )
RETURNS INT
AS
    BEGIN
        DECLARE @Ret_n1 INT
        DECLARE @Ret_n2 INT
        DECLARE @Ret INT
/*
nPk = n! / (n-k)!
*/
        RETURN dbo.Uf_Factorial
           (@N
           ) / dbo.Uf_Factorial
           (@N - @K
           )
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_TimeToTicks]
                                  (
    @Hour   INT,
    @Minute INT,
    @Second INT
                                  )
RETURNS BIGINT
AS
    BEGIN
        RETURN(@Hour * 3600 + CONVERT(BIGINT,@Minute) * 60 + CONVERT(BIGINT,@Second)) * 10000000
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_NormalPdf]
                                (
    @X      FLOAT,
    @Mean   FLOAT,
    @StdDev FLOAT
                                )
RETURNS TABLE
WITH SCHEMABINDING
AS
    RETURN
    SELECT 
            X = @X,
            Mean = @Mean,
            StdDev = @StdDev, -- Normal Probability Density Function for Mean and Standard Deviation
            [NPDF(X)] = EXP(-0.5 * (@X - @Mean) * (@X - @Mean) / (@StdDev * @StdDev)) / (SQRT(2. * PI()) * @StdDev), -- Standard Normal Probability Density function for Mean=0 and StdDev=1
            [SNPDF(X)] = EXP(-0.5 * @X * @X) / SQRT(2. * PI())
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Uf_ExcelNormDist]
                                    (
    @X         FLOAT,
    @Mean      FLOAT,
    @StdDev    FLOAT,
    @CumDist   TINYINT,
    @Intervals INT     = NULL
                                    )
RETURNS TABLE
WITH SCHEMABINDING
AS
    RETURN
    WITH CalculateIntervals
         AS (
         -- Total intervals (default is about 100 per standard deviation)
         SELECT 
                 Intervals = ISNULL(@Intervals,100) * ABS(@Mean - @X) / @StdDev, -- Number of intervals per standard deviation
                 Interval = ISNULL(@Intervals,100)),
         Tally(
            n)
         AS (
         -- Up to 10,000 row tally table
         SELECT TOP (SELECT   
                             CAST(Intervals AS INT)
                         FROM CalculateIntervals) 
                 ROW_NUMBER() OVER(
                 ORDER BY
                          (
                          SELECT 
                                  NULL
                          ))
             FROM
                 (VALUES
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            )) AS a(n)
                   CROSS JOIN
                 (VALUES
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            )) AS b(n)
                   CROSS JOIN
                 (VALUES
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            )) AS c(n)
                   CROSS JOIN(VALUES
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            ),
            (
             0
            )) AS d(n))
         -- PDF
         SELECT     
                 X,
                 Mean,
                 StdDev,
                 [F(X)] = [NPDF(X)]
             FROM
                  (
                  SELECT  
                          X = @X,
                          Mean = @Mean,
                          StdDev = @StdDev,
                          [NPDF(X)]
                      FROM dbo.Uf_NormalPdf
                     (@X,@Mean,@StdDev
                     )
                  ) AS a
             WHERE @CumDist = 0
         UNION ALL
         -- CDF where X = mean
         SELECT     
                 X = @X,
                 Mean = @Mean,
                 StdDev = @StdDev,
                 [CDF(X)] = 0.5
             WHERE @CumDist = 1
                   AND @X = @Mean
         UNION ALL
         -- CDF where X mean
         SELECT   
                 a.X,
                 a.Mean,
                 a.StdDev,
                 [CDF(X)]
             FROM
                  (
                  SELECT 
                          X = @X,
                          Mean = @Mean,
                          StdDev = @StdDev, -- SUM the rectangles
                          [CDF(X)] = 0.5 + SUM(
                                     -- Add to or remove from CDF at mean (0.5)
                                     SIGN(@X - @Mean) * -- Width x Height = NPDF(AvgX)
                                     Width * d.[NPDF(X)])
                      FROM
                          CalculateIntervals AS a
                            CROSS JOIN
                          Tally AS b
                            CROSS APPLY
                           (
                           SELECT 
                                   Pos1 = @Mean + (@StdDev / Interval) * (n - 1.) * SIGN(@X - @Mean),
                                   Pos2 = @Mean + (@StdDev / Interval) * (n + 0.) * SIGN(@X - @Mean),
                                   Width = ABS(@Mean - @X) / Intervals
                           ) AS c
                          -- Average height --
                            CROSS APPLY dbo.Uf_NormalPdf
                     (0.5 * (Pos1 + Pos2),@Mean,@StdDev
                     ) AS d
                  ) AS a
             WHERE @CumDist = 1
                   AND @X = @Mean
GO
