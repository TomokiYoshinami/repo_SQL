USE [Jackpot]
GO
/****** Object:  StoredProcedure [dbo].[usp130_UpdatePredVal30_RaceResultByParents02]    Script Date: 2016/07/30 17:06:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[usp130_UpdatePredVal30_RaceResultByParents02]
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
               PredictValue30 = NULL,
               PredictValue30Temp01 = NULL,
			PredictValue30Temp02 = NULL,
               PredictValue30Rate = NULL,
               PredictValue30Sum = NULL,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
         WHERE Race.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Update PredictValue30
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue30Temp01 = CASE
                                    WHEN dbo.Race.TrackTypeCd = 1
                                    THEN-1.8539300000000000000000 + CONVERT( FLOAT, RaceResultByParents02.HitRate123, 2) * 2.4548300000000000000000
                                    WHEN dbo.Race.TrackTypeCd = 2
                                    THEN-2.0672900000000000000000 + CONVERT(FLOAT, RaceResultByParents02.HitRate123, 2) * 3.4826900000000000000000
                                END,
               TS2 = GETDATE()
         FROM dbo.Race
              INNER JOIN dbo.RaceHorse
              ON dbo.Race.RaceId = dbo.RaceHorse.RaceId
              INNER JOIN dbo.RaceHorseBet
              ON dbo.RaceHorseBet.RaceId = dbo.RaceHorse.RaceId
                 AND dbo.RaceHorseBet.KettoNum = dbo.RaceHorse.KettoNum
              INNER JOIN dbo.RaceResultByParents02
              ON dbo.RaceResultByParents02.RaceId = dbo.RaceHorse.RaceId
                 AND dbo.RaceResultByParents02.KettoNum = dbo.RaceHorse.KettoNum
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
         --PredictValue30 = 500 - PredictValue30Temp
         --Logit
         --IsHit
         --P <- 1 / ( 1 + exp( -LogitP ) )
               PredictValue30Temp02 = 1 / (1 + EXP(-1 * (PredictValue30Temp01 - 1))),
               --Log
               --PredictValue30Temp2 = EXP ( PredictValue30Temp1 )
               --HitRate123
               --PayoffWin
               --PredictValue30Temp2 = PredictValue30Temp1
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Update @PredictTemp02
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
         --Type a
               PredictValue30 = PredictValue30Temp02,
               --Type b
               --PredictValue30 = COALESCE(PredictValue30Temp2 / NULLIF(ApprovalRatePlace1, 0), 0)
               --Type c
               --PredictValue30 = PredictValue30Temp2 * OddsWin * 100
               --Type d
               --PredictValue30 = PredictValue30Temp2 * (1 / OddsWin)
               --Type e
               --PredictValue30 = Odds1ByWin.Odds1 / (1 / PredictValue30Temp2)
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Update RaceHorse : 異常（中止など）
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue30 = -992,
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
               PredictValue30 = -993,
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
               PredictValue30 = -994,
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
               PredictValue30 = -995,
               PredictDateTime = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
         WHERE Race.RaceDate >= @RaceDateFrom
               AND PredictValue30 IS NULL;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------
         COMMIT TRANSACTION;
         RETURN @Return;
     END;