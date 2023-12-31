USE [Jackpot]
GO
/****** Object:  StoredProcedure [dbo].[usp108_UpdatePredVal08_RaceResultByChildrenTrackCondition02]    Script Date: 2016/07/30 17:06:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[usp108_UpdatePredVal08_RaceResultByChildrenTrackCondition02]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- Declaration
         --------------------------------------------------------------------------------
         DECLARE @RaceDateFrom DATETIME= '2014-01-01';
         --------------------------------------------------------------------------------
         -- Clear RaceHorse
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue08 = NULL,
               PredictValue08Temp01 = NULL,
			PredictValue08Temp02 = NULL,
               PredictValue08Rate = NULL,
               PredictValue08Sum = NULL,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
         WHERE Race.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Update PredictValue08
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue08Temp01 = CASE
                                    WHEN dbo.Race.TrackTypeCd = 1
                                    THEN
							 			-1.8099500000000000000000 
+ CONVERT(float,	RaceResultByChildrenTrackCondition02.HitRate123	, 2) *	1.7741200000000000000000 
                                    WHEN dbo.Race.TrackTypeCd = 2
                                    THEN
			-1.6709500000000000000000 
+ CONVERT(float,	RaceResultByChildrenTrackCondition02.HitRate123	, 2) *	1.4017400000000000000000 
                                    WHEN dbo.Race.TrackTypeCd = 3
                                    THEN
			-1.4492700000000000000000 
+ CONVERT(float,	RaceResultByChildrenTrackCondition02.HitRate123	, 2) *	1.6025900000000000000000 
                                END,
               TS2 = GETDATE()
         FROM dbo.Race
              INNER JOIN dbo.RaceHorse
              ON dbo.Race.RaceId = dbo.RaceHorse.RaceId
              INNER JOIN dbo.RaceHorseBet
              ON dbo.RaceHorseBet.RaceId = dbo.RaceHorse.RaceId
                 AND dbo.RaceHorseBet.KettoNum = dbo.RaceHorse.KettoNum
              INNER JOIN dbo.RaceResultByChildrenTrackCondition02
              ON dbo.RaceResultByChildrenTrackCondition02.RaceId = dbo.RaceHorse.RaceId
                 AND dbo.RaceResultByChildrenTrackCondition02.KettoNum = dbo.RaceHorse.KettoNum
                 AND dbo.RaceResultByChildrenTrackCondition02.TrackConditionCd = dbo.Race.TrackConditionCd
              --WHERE dbo.Race.IsNormal = 1
              -- AND dbo.RaceHorse.IsNormal = 1
         WHERE dbo.Race.RaceDate >= @RaceDateFrom;
         --AND dbo.Race.TrackTypeCd = 1
         --AND dbo.Race.JyokenCd5 = '005'
         --------------------------------------------------------------------------------
         -- Update @PredictTemp01
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
         --Time: 
         --PredictValue08 = 500 - PredictValue08Temp
         --Logit
         --IsHit
         --P <- 1 / ( 1 + exp( -LogitP ) )
               PredictValue08Temp02 = 1 / (1 + EXP(-1 * (PredictValue08Temp01 - 1))),
               --Log
               --PredictValue08Temp2 = EXP ( PredictValue08Temp1 )
               --HitRate123
               --PayoffWin
               --PredictValue08Temp2 = PredictValue08Temp1
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Update @PredictTemp02
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
         --Type a
               PredictValue08 = PredictValue08Temp02,
               --Type b
               --PredictValue08 = COALESCE(PredictValue08Temp2 / NULLIF(ApprovalRatePlace1, 0), 0)
               --Type c
               --PredictValue08 = PredictValue08Temp2 * OddsWin * 100
               --Type d
               --PredictValue08 = PredictValue08Temp2 * (1 / OddsWin)
               --Type e
               --PredictValue08 = Odds1ByWin.Odds1 / (1 / PredictValue08Temp2)
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Update RaceHorse : 異常（中止など）
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue08 = -992,
               PredictDateTime = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceHorse
              ON RaceHorse.RaceId = RaceHorseBet.RaceId
                 AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
         WHERE Race.RaceDate >= @RaceDateFrom
               AND (RaceHorse.IJyoCd = '1'
                    OR RaceHorse.IJyoCd = '2'
                    OR RaceHorse.IJyoCd = '3'
                    OR RaceHorse.IJyoCd = '4'
                    OR RaceHorse.IJyoCd = '5'
                    OR RaceHorse.IJyoCd = '6'
                    OR RaceHorse.IJyoCd = '7');
         --------------------------------------------------------------------------------
         -- Update RaceHorse : レース中止
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue08 = -993,
               PredictDateTime = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceHorse
              ON RaceHorse.RaceId = RaceHorseBet.RaceId
                 AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
         WHERE Race.RaceDate >= @RaceDateFrom
               AND RaceHorse.DataKubun = '9';
         --------------------------------------------------------------------------------
         -- Update RaceHorse : レース削除
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue08 = -994,
               PredictDateTime = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceHorse
              ON RaceHorse.RaceId = RaceHorseBet.RaceId
                 AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
         WHERE Race.RaceDate >= @RaceDateFrom
               AND RaceHorse.DataKubun = '0';
         --------------------------------------------------------------------------------
         -- Update RaceHorse : 計算エラー(NULL)
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue08 = -995,
               PredictDateTime = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
         WHERE Race.RaceDate >= @RaceDateFrom
               AND PredictValue08 IS NULL;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------
         COMMIT TRANSACTION;
         RETURN @Return;
     END;