USE [Jackpot]
GO
/****** Object:  StoredProcedure [dbo].[usp109_UpdatePredVal09_RaceResultByChildrenTrackType01]    Script Date: 2016/07/30 17:06:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[usp109_UpdatePredVal09_RaceResultByChildrenTrackType01]
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
               PredictValue09 = NULL,
               PredictValue09Temp01 = NULL,
			PredictValue09Temp02 = NULL,
               PredictValue09Rate = NULL,
               PredictValue09Sum = NULL,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
         WHERE Race.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Update PredictValue
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue09Temp01 = CASE
                                    WHEN dbo.Race.TrackTypeCd = 1
                                    THEN
							 			-2.1662100000000000000000 
+ CONVERT(float,	RaceResultByChildrenTrackType01.HitRate123	, 2) *	3.5870500000000000000000 
                                    WHEN dbo.Race.TrackTypeCd = 2
                                    THEN
			-2.0904500000000000000000 
+ CONVERT(float,	RaceResultByChildrenTrackType01.HitRate123	, 2) *	3.2153800000000000000000 
                                    WHEN dbo.Race.TrackTypeCd = 3
                                    THEN
			-1.6452700000000000000000 
+ CONVERT(float,	RaceResultByChildrenTrackType01.HitRate123	, 2) *	2.0794000000000000000000 
                                END,
               TS2 = GETDATE()
         FROM dbo.Race
              INNER JOIN dbo.RaceHorse
              ON dbo.Race.RaceId = dbo.RaceHorse.RaceId
              INNER JOIN dbo.RaceHorseBet
              ON dbo.RaceHorseBet.RaceId = dbo.RaceHorse.RaceId
                 AND dbo.RaceHorseBet.KettoNum = dbo.RaceHorse.KettoNum
              INNER JOIN dbo.RaceResultByChildrenTrackType01
              ON dbo.RaceResultByChildrenTrackType01.RaceId = dbo.RaceHorse.RaceId
                 AND dbo.RaceResultByChildrenTrackType01.KettoNum = dbo.RaceHorse.KettoNum
                 AND dbo.RaceResultByChildrenTrackType01.TrackTypeCd = dbo.Race.TrackTypeCd
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
         --PredictValue09 = 500 - PredictValueTemp
         --Logit
         --IsHit
         --P <- 1 / ( 1 + exp( -LogitP ) )
               PredictValue09Temp02 = 1 / (1 + EXP(-1 * (PredictValue09Temp01 - 1))),
               --Log
               --PredictValueTemp2 = EXP ( PredictValueTemp1 )
               --HitRate123
               --PayoffWin
               --PredictValueTemp2 = PredictValueTemp1
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Update @PredictTemp02
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
         --Type a
               PredictValue09 = PredictValue09Temp02,
               --Type b
               --PredictValue09 = COALESCE(PredictValueTemp2 / NULLIF(ApprovalRatePlace1, 0), 0)
               --Type c
               --PredictValue09 = PredictValueTemp2 * OddsWin * 100
               --Type d
               --PredictValue09 = PredictValueTemp2 * (1 / OddsWin)
               --Type e
               --PredictValue09 = Odds1ByWin.Odds1 / (1 / PredictValueTemp2)
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Update RaceHorse : 異常（中止など）
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue09 = -992,
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
               PredictValue09 = -993,
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
               PredictValue09 = -994,
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
               PredictValue09 = -995,
               PredictDateTime = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
         WHERE Race.RaceDate >= @RaceDateFrom
               AND PredictValue IS NULL;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------
         COMMIT TRANSACTION;
         RETURN @Return;
     END;