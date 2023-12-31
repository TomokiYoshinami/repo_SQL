USE [Jackpot]
GO
/****** Object:  StoredProcedure [dbo].[usp_MgmtBet_BetByRaceNum]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_MgmtBet_BetByRaceNum]
	@RaceId [nchar](20)
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         DECLARE @ConfigType INT= 1;
         DECLARE @BetMoney FLOAT= 100;
         DECLARE @IsSellTarget NCHAR(1)= '7';
         DECLARE @MinPredictValue INT= -900;
         DECLARE @RaceDateFrom DATETIME= '2014-01-01';
         DECLARE @BetDateTime DATETIME2= GETDATE();
         --------------------------------------------------------------------------------
         -- 1 : Bet Win
         --------------------------------------------------------------------------------
         INSERT INTO MgmtBet
         (RaceId,
          RaceDate,
          JyoCd,
          Kaiji,
          Nichiji,
          RaceNum,
          BetTypeCd,
          BetDateTime,
          BetNum,
          Kumi1,
          Kumi2,
          Kumi3,
          BetCount,
          HitCount,
          BetMoney,
          HitMoney,
          ReturnMoney,
          PredictDateTime,
          IsBet,
          IsFixed,
          FixedDateTime,
          IsSentJRA,
          SentJRADateTime,
          IsHit,
          IsChecked,
          CheckDateTime,
          PredictValue1,
          PredictValue2,
          PredictValue3,
          TotalPredictValue,
          TotalPredictValueRank,
          TS,
          Wakuban1,
          Wakuban2,
          Wakuban3
         )
                SELECT t1.RaceId, --RaceId
                       t1.RaceDate, --RaceDate
                       t1.JyoCd, --JyoCd
                       t1.Kaiji, --Kaiji
                       t1.Nichiji, --Nichiji
                       t1.RaceNum, --RaceNum
                       1, --BetTypeCd
                       @BetDateTime, --BetdDateTime
                       t1.PredictValueRank, --BetNum
                       t1.Umaban, --Kumi1
                       0, --Kumi2
                       0, --Kumi3
                       1, --BetCount
                       NULL, --HitCount1
                       @BetMoney, --BetMoney
                       NULL, --HitMoney
                       NULL, --ReturnMoney
                       t1.PredictDateTime, --PredictDateTime
                       1, --IsBet
                       0, --IsFixed
                       NULL, --FixedDateTime
                       0, --IsSentJRA
                       NULL, --SentJRADateTime
                       0, --IsHit
                       0, --IsChecked
                       NULL, --CheckDateTime
                       t1.PredictValue, --PredictValue1
                       NULL, --PredictValue2
                       NULL, --PredictValue3
                       t1.PredictValue, --TotalPredictValue
                       t1.PredictValueRank, --TotalPredictValueRank
                       GETDATE(), --TS
                       t1.Wakuban, --Wakuban1
                       NULL, --Wakuban2
                       NULL --Wakuban3
                FROM
                (
                    SELECT rhb1.RaceId,
                           rhb1.RaceDate,
                           rhb1.JyoCd,
                           rhb1.Kaiji,
                           rhb1.Nichiji,
                           rhb1.RaceNum,
                           rhb1.Umaban,
                           rhb1.PredictValue,
                           rhb1.Wakuban,
                           rhb1.PredictDateTime,
                           RANK() OVER(PARTITION BY rhb1.RaceId ORDER BY rhb1.PredictValue DESC) AS PredictValueRank
                    FROM RaceHorseBet rhb1
                    WHERE rhb1.RaceDate >= @RaceDateFrom
                          AND rhb1.PredictValue > @MinPredictValue
                ) t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId
                INNER JOIN Odds1
                ON Odds1.RaceId = t1.RaceId
                INNER JOIN ConfigBet
                ON ConfigBet.ConfigTypeCd = @ConfigType
                   AND ConfigBet.BetTypeCd = 1
                   AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                   AND ConfigBet.JyokenCd5 = Race.JyokenCd5
                WHERE t1.RaceId = @RaceId
                      AND Odds1.TansyoFlag = @IsSellTarget
                      AND PredictValueRank <= ConfigBet.CurrentValue;
         SET @Return+=@@rowcount;
         --------------------------------------------------------------------------------
         -- 2 : Bet Place
         --------------------------------------------------------------------------------
         INSERT INTO MgmtBet
         (RaceId,
          RaceDate,
          JyoCd,
          Kaiji,
          Nichiji,
          RaceNum,
          BetTypeCd,
          BetDateTime,
          BetNum,
          Kumi1,
          Kumi2,
          Kumi3,
          BetCount,
          HitCount,
          BetMoney,
          HitMoney,
          ReturnMoney,
          PredictDateTime,
          IsBet,
          IsFixed,
          FixedDateTime,
          IsSentJRA,
          SentJRADateTime,
          IsHit,
          IsChecked,
          CheckDateTime,
          PredictValue1,
          PredictValue2,
          PredictValue3,
          TotalPredictValue,
          TotalPredictValueRank,
          TS,
          Wakuban1,
          Wakuban2,
          Wakuban3
         )
                SELECT t1.RaceId,
                       t1.RaceDate, --RaceDate
                       t1.JyoCd, --JyoCd
                       t1.Kaiji, --Kaiji
                       t1.Nichiji, --Nichiji
                       t1.RaceNum, --RaceNum
                       2, --BetTypeCd
                       @BetDateTime, --BetdDateTime
                       t1.PredictValueRank, --BetNum
                       t1.Umaban, --Kumi1
                       0, --Kumi2
                       0, --Kumi3
                       1, --BetCount
                       NULL, --HitCount1
                       @BetMoney, --BetMoney
                       NULL, --HitMoney
                       NULL, --ReturnMoney
                       t1.PredictDateTime, --PredictDateTime
                       1, --IsBet
                       0, --IsFixed
                       NULL, --FixedDateTime
                       0, --IsSentJRA
                       NULL, --SentJRADateTime
                       0, --IsHit
                       0, --IsChecked
                       NULL, --CheckDateTime
                       t1.PredictValue, --PredictValue1
                       NULL, --PredictValue2
                       NULL, --PredictValue3
                       t1.PredictValue, --TotalPredictValue
                       t1.PredictValueRank, --TotalPredictValueRank
                       GETDATE(), --TS
                       t1.Wakuban, --Wakuban1
                       NULL, --Wakuban2
                       NULL --Wakuban3
                FROM
                (
                    SELECT rhb1.RaceId,
                           rhb1.RaceDate,
                           rhb1.JyoCd,
                           rhb1.Kaiji,
                           rhb1.Nichiji,
                           rhb1.RaceNum,
                           rhb1.Umaban,
                           rhb1.PredictValue,
                           rhb1.Wakuban,
                           rhb1.PredictDateTime,
                           RANK() OVER(PARTITION BY rhb1.RaceId ORDER BY rhb1.PredictValue DESC) AS PredictValueRank
                    FROM RaceHorseBet rhb1
                    WHERE rhb1.RaceDate >= @RaceDateFrom
                          AND rhb1.PredictValue > @MinPredictValue
                ) t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId
                INNER JOIN Odds1
                ON Odds1.RaceId = t1.RaceId
                INNER JOIN ConfigBet
                ON ConfigBet.ConfigTypeCd = @ConfigType
                   AND ConfigBet.BetTypeCd = 2
                   AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                   AND ConfigBet.JyokenCd5 = Race.JyokenCd5
                WHERE Odds1.FukusyoFlag = @IsSellTarget
                      AND PredictValueRank <= ConfigBet.CurrentValue;
         SET @Return+=@@rowcount;
         --------------------------------------------------------------------------------
         -- 3 : Bet Bracket
         --------------------------------------------------------------------------------
         --------------------------------------------------------------------------------
         -- 4 : Bet Quinella
         --------------------------------------------------------------------------------
         INSERT INTO MgmtBet
         (RaceId,
          RaceDate,
          JyoCd,
          Kaiji,
          Nichiji,
          RaceNum,
          BetTypeCd,
          BetDateTime,
          BetNum,
          Kumi1,
          Kumi2,
          Kumi3,
          BetCount,
          HitCount,
          BetMoney,
          HitMoney,
          ReturnMoney,
          PredictDateTime,
          IsBet,
          IsFixed,
          FixedDateTime,
          IsSentJRA,
          SentJRADateTime,
          IsHit,
          IsChecked,
          CheckDateTime,
          PredictValue1,
          PredictValue2,
          PredictValue3,
          TotalPredictValue,
          TotalPredictValueRank,
          TS,
          Wakuban1,
          Wakuban2,
          Wakuban3
         )
                SELECT t1.RaceId, --RaceId
                       t1.RaceDate, --RaceDate
                       t1.JyoCd, --JyoCd
                       t1.Kaiji, --Kaiji
                       t1.Nichiji, --Nichiji
                       t1.RaceNum, --RaceNum
                       4, --BetTypeCd
                       @BetDateTime, --BetdDateTime
                       t1.PredictValueRank, --BetNum
                       t1.Umaban1, --Kumi1
                       t1.Umaban2, --Kumi2
                       0, --Kumi3
                       1, --BetCount
                       NULL, --HitCount1
                       @BetMoney, --BetMoney
                       NULL, --HitMoney
                       NULL, --ReturnMoney
                       t1.PredictDateTime, --PredictDateTime
                       1, --IsBet
                       0, --IsFixed
                       NULL, --FixedDateTime
                       0, --IsSentJRA
                       NULL, --SentJRADateTime
                       0, --IsHit
                       0, --IsChecked
                       NULL, --CheckDateTime
                       t1.PredictValue1, --PredictValue1
                       t1.PredictValue2, --PredictValue2
                       NULL, --PredictValue3
                       t1.TotalPredictValue, --TotalPredictValue
                       t1.PredictValueRank, --TotalPredictValueRank
                       GETDATE(), --TS
                       t1.Wakuban1, --Wakuban1
                       t1.Wakuban2, --Wakuban2
                       NULL --Wakuban3
                FROM
                (
                    SELECT rhb1.RaceId,
                           rhb1.RaceDate,
                           rhb1.JyoCd,
                           rhb1.Kaiji,
                           rhb1.Nichiji,
                           rhb1.RaceNum,
                           rhb1.Umaban AS Umaban1,
                           rhb2.Umaban AS Umaban2,
                           rhb1.PredictValue AS PredictValue1,
                           rhb2.PredictValue AS PredictValue2,
                           rhb1.Wakuban AS Wakuban1,
                           rhb2.Wakuban AS Wakuban2,
                           rhb1.PredictDateTime,
                           rhb1.PredictValue * rhb2.PredictValue * 100 AS TotalPredictValue,
                           RANK() OVER(PARTITION BY rhb1.RaceId ORDER BY rhb1.PredictValue * rhb2.PredictValue DESC,
                                                                         rhb1.PredictValue DESC,
                                                                         rhb2.PredictValue DESC) AS PredictValueRank
                    FROM RaceHorseBet rhb1
                         INNER JOIN RaceHorseBet rhb2
                         ON rhb2.RaceId = rhb1.RaceId
                    WHERE rhb1.RaceDate >= @RaceDateFrom
                          AND rhb1.PredictValue > @MinPredictValue
                          AND rhb2.PredictValue > @MinPredictValue
                          AND rhb1.Umaban < rhb2.Umaban
                ) t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId
                INNER JOIN Odds2
                ON Odds2.RaceId = t1.RaceId
                INNER JOIN ConfigBet
                ON ConfigBet.ConfigTypeCd = @ConfigType
                   AND ConfigBet.BetTypeCd = 4
                   AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                   AND ConfigBet.JyokenCd5 = Race.JyokenCd5
                WHERE t1.RaceId = @RaceId
                      AND Odds2.UmarenFlag = @IsSellTarget
                      AND PredictValueRank <= ConfigBet.CurrentValue;
         SET @Return+=@@rowcount;
         --------------------------------------------------------------------------------
         -- 5 : Bet Wide
         --------------------------------------------------------------------------------
         INSERT INTO MgmtBet
         (RaceId,
          RaceDate,
          JyoCd,
          Kaiji,
          Nichiji,
          RaceNum,
          BetTypeCd,
          BetDateTime,
          BetNum,
          Kumi1,
          Kumi2,
          Kumi3,
          BetCount,
          HitCount,
          BetMoney,
          HitMoney,
          ReturnMoney,
          PredictDateTime,
          IsBet,
          IsFixed,
          FixedDateTime,
          IsSentJRA,
          SentJRADateTime,
          IsHit,
          IsChecked,
          CheckDateTime,
          PredictValue1,
          PredictValue2,
          PredictValue3,
          TotalPredictValue,
          TotalPredictValueRank,
          TS,
          Wakuban1,
          Wakuban2,
          Wakuban3
         )
                SELECT t1.RaceId,
                       t1.RaceDate, --RaceDate
                       t1.JyoCd, --JyoCd
                       t1.Kaiji, --Kaiji
                       t1.Nichiji, --Nichiji
                       t1.RaceNum, --RaceNum
                       5, --BetTypeCd
                       @BetDateTime, --BetdDateTime
                       t1.PredictValueRank, --BetNum
                       t1.Umaban1, --Kumi1
                       t1.Umaban2, --Kumi2
                       0, --Kumi3
                       1, --BetCount
                       NULL, --HitCount1
                       @BetMoney, --BetMoney
                       NULL, --HitMoney
                       NULL, --ReturnMoney
                       t1.PredictDateTime, --PredictDateTime
                       1, --IsBet
                       0, --IsFixed
                       NULL, --FixedDateTime
                       0, --IsSentJRA
                       NULL, --SentJRADateTime
                       0, --IsHit
                       0, --IsChecked
                       NULL, --CheckDateTime
                       t1.PredictValue1, --PredictValue1
                       t1.PredictValue2, --PredictValue2
                       NULL, --PredictValue3
                       t1.TotalPredictValue, --TotalPredictValue
                       t1.PredictValueRank, --TotalPredictValueRank
                       GETDATE(), --TS
                       t1.Wakuban1, --Wakuban1
                       t1.Wakuban2, --Wakuban2
                       NULL --Wakuban3
                FROM
                (
                    SELECT rhb1.RaceId,
                           rhb1.RaceDate,
                           rhb1.JyoCd,
                           rhb1.Kaiji,
                           rhb1.Nichiji,
                           rhb1.RaceNum,
                           rhb1.Umaban AS Umaban1,
                           rhb2.Umaban AS Umaban2,
                           rhb1.PredictValue AS PredictValue1,
                           rhb2.PredictValue AS PredictValue2,
                           rhb1.Wakuban AS Wakuban1,
                           rhb2.Wakuban AS Wakuban2,
                           rhb1.PredictDateTime,
                           rhb1.PredictValue * rhb2.PredictValue * 100 AS TotalPredictValue,
                           RANK() OVER(PARTITION BY rhb1.RaceId ORDER BY rhb1.PredictValue * rhb2.PredictValue DESC,
                                                                         rhb1.PredictValue DESC,
                                                                         rhb2.PredictValue DESC) AS PredictValueRank
                    FROM RaceHorseBet rhb1
                         INNER JOIN RaceHorseBet rhb2
                         ON rhb2.RaceId = rhb1.RaceId
                    WHERE rhb1.RaceDate >= @RaceDateFrom
                          AND rhb1.PredictValue > @MinPredictValue
                          AND rhb2.PredictValue > @MinPredictValue
                          AND rhb1.Umaban < rhb2.Umaban
                ) t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId
                INNER JOIN Odds3
                ON Odds3.RaceId = t1.RaceId
                INNER JOIN ConfigBet
                ON ConfigBet.ConfigTypeCd = @ConfigType
                   AND ConfigBet.BetTypeCd = 5
                   AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                   AND ConfigBet.JyokenCd5 = Race.JyokenCd5
                WHERE t1.RaceId = @RaceId
                      AND Odds3.WideFlag = @IsSellTarget
                      AND PredictValueRank <= ConfigBet.CurrentValue;
         SET @Return+=@@rowcount;
         --------------------------------------------------------------------------------
         -- 6 : Bet Exacta
         --------------------------------------------------------------------------------
         INSERT INTO MgmtBet
         (RaceId,
          RaceDate,
          JyoCd,
          Kaiji,
          Nichiji,
          RaceNum,
          BetTypeCd,
          BetDateTime,
          BetNum,
          Kumi1,
          Kumi2,
          Kumi3,
          BetCount,
          HitCount,
          BetMoney,
          HitMoney,
          ReturnMoney,
          PredictDateTime,
          IsBet,
          IsFixed,
          FixedDateTime,
          IsSentJRA,
          SentJRADateTime,
          IsHit,
          IsChecked,
          CheckDateTime,
          PredictValue1,
          PredictValue2,
          PredictValue3,
          TotalPredictValue,
          TotalPredictValueRank,
          TS,
          Wakuban1,
          Wakuban2,
          Wakuban3
         )
                SELECT t1.RaceId,
                       t1.RaceDate, --RaceDate
                       t1.JyoCd, --JyoCd
                       t1.Kaiji, --Kaiji
                       t1.Nichiji, --Nichiji
                       t1.RaceNum, --RaceNum
                       6, --BetTypeCd
                       @BetDateTime, --BetdDateTime
                       t1.PredictValueRank, --BetNum
                       t1.Umaban1, --Kumi1
                       t1.Umaban2, --Kumi2
                       0, --Kumi3
                       1, --BetCount
                       NULL, --HitCount1
                       @BetMoney, --BetMoney
                       NULL, --HitMoney
                       NULL, --ReturnMoney
                       t1.PredictDateTime, --PredictDateTime
                       1, --IsBet
                       0, --IsFixed
                       NULL, --FixedDateTime
                       0, --IsSentJRA
                       NULL, --SentJRADateTime
                       0, --IsHit
                       0, --IsChecked
                       NULL, --CheckDateTime
                       t1.PredictValue1, --PredictValue1
                       t1.PredictValue2, --PredictValue2
                       NULL, --PredictValue3
                       t1.TotalPredictValue, --TotalPredictValue
                       t1.PredictValueRank, --TotalPredictValueRank
                       GETDATE(), --TS
                       t1.Wakuban1, --Wakuban1
                       t1.Wakuban2, --Wakuban2
                       NULL --Wakuban3
                FROM
                (
                    SELECT rhb1.RaceId,
                           rhb1.RaceDate,
                           rhb1.JyoCd,
                           rhb1.Kaiji,
                           rhb1.Nichiji,
                           rhb1.RaceNum,
                           rhb1.Umaban AS Umaban1,
                           rhb2.Umaban AS Umaban2,
                           rhb1.PredictValue AS PredictValue1,
                           rhb2.PredictValue AS PredictValue2,
                           rhb1.Wakuban AS Wakuban1,
                           rhb2.Wakuban AS Wakuban2,
                           rhb1.PredictDateTime,
                           rhb1.PredictValue * rhb2.PredictValue * 100 AS TotalPredictValue,
                           RANK() OVER(PARTITION BY rhb1.RaceId ORDER BY rhb1.PredictValue * rhb2.PredictValue DESC,
                                                                         rhb1.PredictValue DESC,
                                                                         rhb2.PredictValue DESC) AS PredictValueRank
                    FROM RaceHorseBet rhb1
                         INNER JOIN RaceHorseBet rhb2
                         ON rhb2.RaceId = rhb1.RaceId
                    WHERE rhb1.RaceDate >= @RaceDateFrom
                          AND rhb1.PredictValue > @MinPredictValue
                          AND rhb2.PredictValue > @MinPredictValue
                          AND rhb1.Umaban != rhb2.Umaban
                ) t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId
                INNER JOIN Odds4
                ON Odds4.RaceId = t1.RaceId
                INNER JOIN ConfigBet
                ON ConfigBet.ConfigTypeCd = @ConfigType
                   AND ConfigBet.BetTypeCd = 6
                   AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                   AND ConfigBet.JyokenCd5 = Race.JyokenCd5
                WHERE t1.RaceId = @RaceId
                      AND Odds4.UmatanFlag = @IsSellTarget
                      AND PredictValueRank <= ConfigBet.CurrentValue;
         SET @Return+=@@rowcount;
         --------------------------------------------------------------------------------
         -- 7 : Bet Trio
         --------------------------------------------------------------------------------
         INSERT INTO MgmtBet
         (RaceId,
          RaceDate,
          JyoCd,
          Kaiji,
          Nichiji,
          RaceNum,
          BetTypeCd,
          BetDateTime,
          BetNum,
          Kumi1,
          Kumi2,
          Kumi3,
          BetCount,
          HitCount,
          BetMoney,
          HitMoney,
          ReturnMoney,
          PredictDateTime,
          IsBet,
          IsFixed,
          FixedDateTime,
          IsSentJRA,
          SentJRADateTime,
          IsHit,
          IsChecked,
          CheckDateTime,
          PredictValue1,
          PredictValue2,
          PredictValue3,
          TotalPredictValue,
          TotalPredictValueRank,
          TS,
          Wakuban1,
          Wakuban2,
          Wakuban3
         )
                SELECT t1.RaceId,
                       t1.RaceDate, --RaceDate
                       t1.JyoCd, --JyoCd
                       t1.Kaiji, --Kaiji
                       t1.Nichiji, --Nichiji
                       t1.RaceNum, --RaceNum
                       7, --BetTypeCd
                       @BetDateTime, --BetdDateTime
                       t1.PredictValueRank, --BetNum
                       t1.Umaban1, --Kumi1
                       t1.Umaban2, --Kumi2
                       t1.Umaban3, --Kumi3
                       1, --BetCount
                       NULL, --HitCount1
                       @BetMoney, --BetMoney
                       NULL, --HitMoney
                       NULL, --ReturnMoney
                       t1.PredictDateTime, --PredictDateTime
                       1, --IsBet
                       0, --IsFixed
                       NULL, --FixedDateTime
                       0, --IsSentJRA
                       NULL, --SentJRADateTime
                       0, --IsHit
                       0, --IsChecked
                       NULL, --CheckDateTime
                       t1.PredictValue1, --PredictValue1
                       t1.PredictValue2, --PredictValue2
                       t1.PredictValue3, --PredictValue3
                       t1.TotalPredictValue, --TotalPredictValue
                       t1.PredictValueRank, --TotalPredictValueRank
                       GETDATE(), --TS
                       t1.Wakuban1, --Wakuban1
                       t1.Wakuban2, --Wakuban2
                       t1.Wakuban3 --Wakuban3
                FROM
                (
                    SELECT rhb1.RaceId,
                           rhb1.RaceDate,
                           rhb1.JyoCd,
                           rhb1.Kaiji,
                           rhb1.Nichiji,
                           rhb1.RaceNum,
                           rhb1.Umaban AS Umaban1,
                           rhb2.Umaban AS Umaban2,
                           rhb3.Umaban AS Umaban3,
                           rhb1.PredictValue AS PredictValue1,
                           rhb2.PredictValue AS PredictValue2,
                           rhb3.PredictValue AS PredictValue3,
                           rhb1.Wakuban AS Wakuban1,
                           rhb2.Wakuban AS Wakuban2,
                           rhb3.Wakuban AS Wakuban3,
                           rhb1.PredictDateTime,
                           rhb1.PredictValue * rhb2.PredictValue * rhb3.PredictValue * 10000 AS TotalPredictValue,
                           RANK() OVER(PARTITION BY rhb1.RaceId ORDER BY rhb1.PredictValue * rhb2.PredictValue * rhb3.PredictValue DESC,
                                                                         rhb1.PredictValue DESC,
                                                                         rhb2.PredictValue DESC,
                                                                         rhb3.PredictValue DESC) AS PredictValueRank
                    FROM RaceHorseBet rhb1
                         INNER JOIN RaceHorseBet rhb2
                         ON rhb2.RaceId = rhb1.RaceId
                         INNER JOIN RaceHorseBet rhb3
                         ON rhb3.RaceId = rhb1.RaceId
                    WHERE rhb1.RaceDate >= @RaceDateFrom
                          AND rhb1.PredictValue > @MinPredictValue
                          AND rhb2.PredictValue > @MinPredictValue
                          AND rhb3.PredictValue > @MinPredictValue
                          AND rhb1.Umaban != rhb2.Umaban
                          AND rhb1.Umaban != rhb3.Umaban
                          AND rhb2.Umaban != rhb3.Umaban
                          AND rhb1.Umaban < rhb2.Umaban
                          AND rhb1.Umaban < rhb3.Umaban
                          AND rhb2.Umaban < rhb3.Umaban
                ) t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId
                INNER JOIN Odds5
                ON Odds5.RaceId = t1.RaceId
                INNER JOIN ConfigBet
                ON ConfigBet.ConfigTypeCd = @ConfigType
                   AND ConfigBet.BetTypeCd = 7
                   AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                   AND ConfigBet.JyokenCd5 = Race.JyokenCd5
                WHERE t1.RaceId = @RaceId
                      AND Odds5.SanrenpukuFlag = @IsSellTarget
                      AND PredictValueRank <= ConfigBet.CurrentValue;
         SET @Return+=@@rowcount;
         --------------------------------------------------------------------------------
         -- 8 : Bet Trifecta
         --------------------------------------------------------------------------------
         INSERT INTO MgmtBet
         (RaceId,
          RaceDate,
          JyoCd,
          Kaiji,
          Nichiji,
          RaceNum,
          BetTypeCd,
          BetDateTime,
          BetNum,
          Kumi1,
          Kumi2,
          Kumi3,
          BetCount,
          HitCount,
          BetMoney,
          HitMoney,
          ReturnMoney,
          PredictDateTime,
          IsBet,
          IsFixed,
          FixedDateTime,
          IsSentJRA,
          SentJRADateTime,
          IsHit,
          IsChecked,
          CheckDateTime,
          PredictValue1,
          PredictValue2,
          PredictValue3,
          TotalPredictValue,
          TotalPredictValueRank,
          TS,
          Wakuban1,
          Wakuban2,
          Wakuban3
         )
                SELECT t1.RaceId,
                       t1.RaceDate, --RaceDate
                       t1.JyoCd, --JyoCd
                       t1.Kaiji, --Kaiji
                       t1.Nichiji, --Nichiji
                       t1.RaceNum, --RaceNum
                       8, --BetTypeCd
                       @BetDateTime, --BetdDateTime
                       t1.PredictValueRank, --BetNum
                       t1.Umaban1, --Kumi1
                       t1.Umaban2, --Kumi2
                       t1.Umaban3, --Kumi3
                       1, --BetCount
                       NULL, --HitCount1
                       @BetMoney, --BetMoney
                       NULL, --HitMoney
                       NULL, --ReturnMoney
                       t1.PredictDateTime, --PredictDateTime
                       1, --IsBet
                       0, --IsFixed
                       NULL, --FixedDateTime
                       0, --IsSentJRA
                       NULL, --SentJRADateTime
                       0, --IsHit
                       0, --IsChecked
                       NULL, --CheckDateTime
                       t1.PredictValue1, --PredictValue1
                       t1.PredictValue2, --PredictValue2
                       t1.PredictValue3, --PredictValue3
                       t1.TotalPredictValue, --TotalPredictValue
                       t1.PredictValueRank, --TotalPredictValueRank
                       GETDATE(), --TS
                       t1.Wakuban1, --Wakuban1
                       t1.Wakuban2, --Wakuban2
                       t1.Wakuban3 --Wakuban3
                FROM
                (
                    SELECT rhb1.RaceId,
                           rhb1.RaceDate,
                           rhb1.JyoCd,
                           rhb1.Kaiji,
                           rhb1.Nichiji,
                           rhb1.RaceNum,
                           rhb1.Umaban AS Umaban1,
                           rhb2.Umaban AS Umaban2,
                           rhb3.Umaban AS Umaban3,
                           rhb1.PredictValue AS PredictValue1,
                           rhb2.PredictValue AS PredictValue2,
                           rhb3.PredictValue AS PredictValue3,
                           rhb1.Wakuban AS Wakuban1,
                           rhb2.Wakuban AS Wakuban2,
                           rhb3.Wakuban AS Wakuban3,
                           rhb1.PredictDateTime,
                           rhb1.PredictValue * rhb2.PredictValue * rhb3.PredictValue * 10000 AS TotalPredictValue,
                           RANK() OVER(PARTITION BY rhb1.RaceId ORDER BY rhb1.PredictValue * rhb2.PredictValue * rhb3.PredictValue DESC,
                                                                         rhb1.PredictValue DESC,
                                                                         rhb2.PredictValue DESC,
                                                                         rhb3.PredictValue DESC) AS PredictValueRank
                    FROM RaceHorseBet rhb1
                         INNER JOIN RaceHorseBet rhb2
                         ON rhb2.RaceId = rhb1.RaceId
                         INNER JOIN RaceHorseBet rhb3
                         ON rhb3.RaceId = rhb1.RaceId
                    WHERE rhb1.RaceDate >= @RaceDateFrom
                          AND rhb1.PredictValue > @MinPredictValue
                          AND rhb2.PredictValue > @MinPredictValue
                          AND rhb3.PredictValue > @MinPredictValue
                          AND rhb1.Umaban != rhb2.Umaban
                          AND rhb1.Umaban != rhb3.Umaban
                          AND rhb2.Umaban != rhb3.Umaban
                    --AND rhb1.Umaban < rhb2.Umaban
                    --AND rhb1.Umaban < rhb3.Umaban
                    --AND rhb2.Umaban < rhb3.Umaban
                ) t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId
                INNER JOIN Odds6
                ON Odds6.RaceId = t1.RaceId
                INNER JOIN ConfigBet
                ON ConfigBet.ConfigTypeCd = @ConfigType
                   AND ConfigBet.BetTypeCd = 8
                   AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                   AND ConfigBet.JyokenCd5 = Race.JyokenCd5
                WHERE t1.RaceId = @RaceId
                      AND Odds6.SanrentanFlag = @IsSellTarget
                      AND PredictValueRank <= ConfigBet.CurrentValue;
         SET @Return+=@@rowcount;
         --------------------------------------------------------------------------------
         -- RaceHorseBet
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PayoffWin = 0,
               PayoffWinLog = 0,
               PayoffPlace = 0,
               PayoffPlaceLog = 0,
               TS = GETDATE(),
               TS2 = GETDATE()
         FROM PayoffByPayAll
              INNER JOIN RaceHorseBet
              ON RaceHorseBet.RaceId = PayoffByPayAll.RaceId
         WHERE RaceHorseBet.RaceId = @RaceId
               AND RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- RaceHorseBet Win
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PayoffWin = PayoffByPayAll.Pay,
               TS = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN PayoffByPayAll
              ON PayoffByPayAll.RaceId = RaceHorseBet.RaceId
                 AND PayoffByPayAll.Kumi1 = RaceHorseBet.Umaban
                 AND PayoffByPayAll.Kumi2 = 0
                 AND PayoffByPayAll.Kumi3 = 0
         WHERE RaceHorseBet.RaceId = @RaceId
               AND RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PayoffByPayAll.BetTypeCd = 1;
         --------------------------------------------------------------------------------
         -- RaceHorseBet Place
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PayoffPlace = PayoffByPayAll.Pay,
               TS = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN PayoffByPayAll
              ON PayoffByPayAll.RaceId = RaceHorseBet.RaceId
                 AND PayoffByPayAll.Kumi1 = RaceHorseBet.Umaban
                 AND PayoffByPayAll.Kumi2 = 0
                 AND PayoffByPayAll.Kumi3 = 0
         WHERE RaceHorseBet.RaceId = @RaceId
               AND RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PayoffByPayAll.BetTypeCd = 2;
         --------------------------------------------------------------------------------
         -- MgmtBet
         --------------------------------------------------------------------------------
         UPDATE MgmtBet
           SET
               IsHit = 0,
               HitCount = 0,
               HitMoney = 0,
               ReturnMoney = -BetMoney,
               TS2 = GETDATE()
         WHERE MgmtBet.RaceId = @RaceId
               AND MgmtBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- MgmtBet
         --------------------------------------------------------------------------------
         UPDATE MgmtBet
           SET
               IsHit = 1,
               HitCount = 1,
               HitMoney = dbo.PayoffByPayAll.Pay,
               ReturnMoney = dbo.PayoffByPayAll.Pay - MgmtBet.BetMoney,
               TS2 = GETDATE()
         FROM MgmtBet
              INNER JOIN PayoffByPayAll
              ON PayoffByPayAll.RaceId = MgmtBet.RaceId
                 AND PayoffByPayAll.BetTypeCd = MgmtBet.BetTypeCd
         WHERE MgmtBet.RaceId = @RaceId
               AND MgmtBet.RaceDate >= @RaceDateFrom
               AND PayoffByPayAll.Kumi1 = MgmtBet.Kumi1
               AND PayoffByPayAll.Kumi2 = MgmtBet.Kumi2
               AND PayoffByPayAll.Kumi3 = MgmtBet.Kumi3
               AND MgmtBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- PayoffByPayAll
         --------------------------------------------------------------------------------
         UPDATE PayoffByPayAll
           SET
               IsHit = 0,
               TS2 = GETDATE()
         FROM PayoffByPayAll
         WHERE PayoffByPayAll.RaceId = @RaceId
               AND PayoffByPayAll.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- PayoffByPayAll
         --------------------------------------------------------------------------------
         UPDATE PayoffByPayAll
           SET
               IsHit = 1,
               TS2 = GETDATE()
         FROM MgmtBet
              INNER JOIN PayoffByPayAll
              ON PayoffByPayAll.RaceId = MgmtBet.RaceId
                 AND PayoffByPayAll.BetTypeCd = MgmtBet.BetTypeCd
         WHERE PayoffByPayAll.RaceId = @RaceId
               AND PayoffByPayAll.RaceDate >= @RaceDateFrom
               AND PayoffByPayAll.Kumi1 = MgmtBet.Kumi1
               AND PayoffByPayAll.Kumi2 = MgmtBet.Kumi2
               AND PayoffByPayAll.Kumi3 = MgmtBet.Kumi3;
         --------------------------------------------------------------------------------
         -- Race
         --------------------------------------------------------------------------------
         UPDATE Race
           SET
               BetCount = t1.BetCount,
               HitCount = t1.HitCount,
               BetMoney = t1.BetMoney,
               HitMoney = t1.HitMoney,
               ReturnMoney = t1.ReturnMoney,
               TS2 = GETDATE()
         FROM Race
              INNER JOIN
         (
             SELECT MgmtBet.RaceId,
                    SUM(MgmtBet.BetCount) AS BetCount,
                    SUM(MgmtBet.HitCount) AS HitCount,
                    SUM(MgmtBet.BetMoney) AS BetMoney,
                    SUM(MgmtBet.HitMoney) AS HitMoney,
                    SUM(MgmtBet.ReturnMoney) AS ReturnMoney
             FROM dbo.MgmtBet
             WHERE MgmtBet.RaceId = @RaceId
                   AND MgmtBet.RaceDate >= @RaceDateFrom
             GROUP BY MgmtBet.RaceId
         ) AS t1
              ON t1.RaceId = Race.RaceId;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------
         RETURN @Return;
         COMMIT TRANSACTION;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_MgmtBet_CheckHitByRaceNum]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_MgmtBet_CheckHitByRaceNum]
	@RaceId [nchar](20)
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- RaceHorseBet
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PayoffWin = 0,
               PayoffWinLog = 0,
               PayoffPlace = 0,
               PayoffPlaceLog = 0,
               TS = GETDATE(),
               TS2 = GETDATE()
         FROM PayoffByPayAll
              INNER JOIN RaceHorseBet
              ON RaceHorseBet.RaceId = PayoffByPayAll.RaceId
         WHERE RaceHorseBet.RaceId = @RaceId;
         --------------------------------------------------------------------------------
         -- RaceHorseBet Win
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PayoffWin = PayoffByPayAll.Pay,
               TS = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN PayoffByPayAll
              ON PayoffByPayAll.RaceId = RaceHorseBet.RaceId
                 AND PayoffByPayAll.Kumi1 = RaceHorseBet.Umaban
                 AND PayoffByPayAll.Kumi2 = 0
                 AND PayoffByPayAll.Kumi3 = 0
         WHERE RaceHorseBet.RaceId = @RaceId
               AND PayoffByPayAll.BetTypeCd = 1;
         --------------------------------------------------------------------------------
         -- RaceHorseBet Place
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PayoffPlace = PayoffByPayAll.Pay,
               TS = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN PayoffByPayAll
              ON PayoffByPayAll.RaceId = RaceHorseBet.RaceId
                 AND PayoffByPayAll.Kumi1 = RaceHorseBet.Umaban
                 AND PayoffByPayAll.Kumi2 = 0
                 AND PayoffByPayAll.Kumi3 = 0
         WHERE RaceHorseBet.RaceId = @RaceId
               AND PayoffByPayAll.BetTypeCd = 2;
         --------------------------------------------------------------------------------
         -- MgmtBet
         --------------------------------------------------------------------------------
         UPDATE MgmtBet
           SET
               IsHit = 0,
               HitCount = 0,
               HitMoney = 0,
               ReturnMoney = -BetMoney,
               TS = GETDATE()
         WHERE RaceId = @RaceId;
         --SET @Return += @@rowcount;
         --------------------------------------------------------------------------------
         -- MgmtBet
         --------------------------------------------------------------------------------
         UPDATE MgmtBet
           SET
               IsHit = 1,
               HitCount = 1,
               HitMoney = dbo.PayoffByPayAll.Pay,
               ReturnMoney = dbo.PayoffByPayAll.Pay - MgmtBet.BetMoney,
               TS = GETDATE()
         FROM dbo.MgmtBet
              INNER JOIN dbo.PayoffByPayAll
              ON dbo.MgmtBet.RaceId = dbo.PayoffByPayAll.RaceId
                 AND dbo.MgmtBet.BetTypeCd = dbo.PayoffByPayAll.BetTypeCd
                 AND dbo.MgmtBet.Kumi1 = dbo.PayoffByPayAll.Kumi1
                 AND dbo.MgmtBet.Kumi2 = dbo.PayoffByPayAll.Kumi2
                 AND dbo.MgmtBet.Kumi3 = dbo.PayoffByPayAll.Kumi3
         WHERE dbo.MgmtBet.RaceId = @RaceId;
         SET @Return+=@@rowcount;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------
         RETURN @Return;
         COMMIT TRANSACTION;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_MgmtBet_ClearHitByRaceNum]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_MgmtBet_ClearHitByRaceNum]
	@RaceId [nchar](20)
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- MgmtBet	:	Initialize
         --------------------------------------------------------------------------------
         UPDATE MgmtBet
           SET
               IsHit = 0,
               HitCount = 0,
               HitMoney = 0,
               ReturnMoney = -BetMoney,
               TS = GETDATE()
         WHERE MgmtBet.RaceId = @RaceId;
         SET @Return+=@@rowcount;
         --------------------------------------------------------------------------------
         -- Clear Sumamry Bet & Hit
         --------------------------------------------------------------------------------
         UPDATE Race
           SET
               HitCount = 0,
               HitMoney = 0,
               TS2 = GETDATE()
         WHERE Race.RaceId = @RaceId;
         --SET @Return += @@rowcount;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------
         RETURN @Return;
         COMMIT TRANSACTION;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_MgmtBet_DeleteBetCheckByRaceAll]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_MgmtBet_DeleteBetCheckByRaceAll]
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         DECLARE @ConfigType INT= 1;
         DECLARE @BetMoney FLOAT= 100;
         DECLARE @IsSellTarget NCHAR(1)= '7';
         DECLARE @MinPredictValue INT= -900;
         DECLARE @RaceDateFrom DATETIME= '2014-01-01';
         DECLARE @BetDateTime DATETIME2= GETDATE();
         --------------------------------------------------------------------------------
         -- MgmtBet Clear Bet Data
         --------------------------------------------------------------------------------
         DELETE MgmtBet
         WHERE MgmtBet.RaceDate >= @RaceDateFrom;
         --SET @Return+=@@rowcount;
         --------------------------------------------------------------------------------
         -- 1 : Bet Win
         --------------------------------------------------------------------------------
         INSERT INTO MgmtBet
         (RaceId,
          RaceDate,
          JyoCd,
          Kaiji,
          Nichiji,
          RaceNum,
          BetTypeCd,
          BetDateTime,
          BetNum,
          Kumi1,
          Kumi2,
          Kumi3,
          BetCount,
          HitCount,
          BetMoney,
          HitMoney,
          ReturnMoney,
          PredictDateTime,
          IsBet,
          IsFixed,
          FixedDateTime,
          IsSentJRA,
          SentJRADateTime,
          IsHit,
          IsChecked,
          CheckDateTime,
          PredictValue1,
          PredictValue2,
          PredictValue3,
          TotalPredictValue,
          TotalPredictValueRank,
          TS,
          Wakuban1,
          Wakuban2,
          Wakuban3
         )
                SELECT t1.RaceId, --RaceId
                       t1.RaceDate, --RaceDate
                       t1.JyoCd, --JyoCd
                       t1.Kaiji, --Kaiji
                       t1.Nichiji, --Nichiji
                       t1.RaceNum, --RaceNum
                       1, --BetTypeCd
                       @BetDateTime, --BetdDateTime
                       t1.PredictValueRank, --BetNum
                       t1.Umaban, --Kumi1
                       0, --Kumi2
                       0, --Kumi3
                       1, --BetCount
                       NULL, --HitCount1
                       @BetMoney, --BetMoney
                       NULL, --HitMoney
                       NULL, --ReturnMoney
                       t1.PredictDateTime, --PredictDateTime
                       1, --IsBet
                       0, --IsFixed
                       NULL, --FixedDateTime
                       0, --IsSentJRA
                       NULL, --SentJRADateTime
                       0, --IsHit
                       0, --IsChecked
                       NULL, --CheckDateTime
                       t1.PredictValue, --PredictValue1
                       NULL, --PredictValue2
                       NULL, --PredictValue3
                       t1.PredictValue, --TotalPredictValue
                       t1.PredictValueRank, --TotalPredictValueRank
                       GETDATE(), --TS
                       t1.Wakuban, --Wakuban1
                       NULL, --Wakuban2
                       NULL --Wakuban3
                FROM
                (
                    SELECT rhb1.RaceId,
                           rhb1.RaceDate,
                           rhb1.JyoCd,
                           rhb1.Kaiji,
                           rhb1.Nichiji,
                           rhb1.RaceNum,
                           rhb1.Umaban,
                           rhb1.PredictValue,
                           rhb1.Wakuban,
                           rhb1.PredictDateTime,
                           RANK() OVER(PARTITION BY rhb1.RaceId ORDER BY rhb1.PredictValue DESC) AS PredictValueRank
                    FROM RaceHorseBet rhb1
                    WHERE rhb1.RaceDate >= @RaceDateFrom
                          AND rhb1.PredictValue > @MinPredictValue
                ) t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId --INNER JOIN Odds1 ON Odds1.RaceId = t1.RaceId
                INNER JOIN ConfigBet
                ON ConfigBet.ConfigTypeCd = @ConfigType
                   AND ConfigBet.BetTypeCd = 1
                   AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                   AND ConfigBet.JyokenCd5 = Race.JyokenCd5
                WHERE PredictValueRank <= ConfigBet.CurrentValue;
         --AND Odds1.TansyoFlag = @IsSellTarget
         SET @Return+=@@rowcount;
         --------------------------------------------------------------------------------
         -- 2 : Bet Place
         --------------------------------------------------------------------------------
         INSERT INTO MgmtBet
         (RaceId,
          RaceDate,
          JyoCd,
          Kaiji,
          Nichiji,
          RaceNum,
          BetTypeCd,
          BetDateTime,
          BetNum,
          Kumi1,
          Kumi2,
          Kumi3,
          BetCount,
          HitCount,
          BetMoney,
          HitMoney,
          ReturnMoney,
          PredictDateTime,
          IsBet,
          IsFixed,
          FixedDateTime,
          IsSentJRA,
          SentJRADateTime,
          IsHit,
          IsChecked,
          CheckDateTime,
          PredictValue1,
          PredictValue2,
          PredictValue3,
          TotalPredictValue,
          TotalPredictValueRank,
          TS,
          Wakuban1,
          Wakuban2,
          Wakuban3
         )
                SELECT t1.RaceId,
                       t1.RaceDate, --RaceDate
                       t1.JyoCd, --JyoCd
                       t1.Kaiji, --Kaiji
                       t1.Nichiji, --Nichiji
                       t1.RaceNum, --RaceNum
                       2, --BetTypeCd
                       @BetDateTime, --BetdDateTime
                       t1.PredictValueRank, --BetNum
                       t1.Umaban, --Kumi1
                       0, --Kumi2
                       0, --Kumi3
                       1, --BetCount
                       NULL, --HitCount1
                       @BetMoney, --BetMoney
                       NULL, --HitMoney
                       NULL, --ReturnMoney
                       t1.PredictDateTime, --PredictDateTime
                       1, --IsBet
                       0, --IsFixed
                       NULL, --FixedDateTime
                       0, --IsSentJRA
                       NULL, --SentJRADateTime
                       0, --IsHit
                       0, --IsChecked
                       NULL, --CheckDateTime
                       t1.PredictValue, --PredictValue1
                       NULL, --PredictValue2
                       NULL, --PredictValue3
                       t1.PredictValue, --TotalPredictValue
                       t1.PredictValueRank, --TotalPredictValueRank
                       GETDATE(), --TS
                       t1.Wakuban, --Wakuban1
                       NULL, --Wakuban2
                       NULL --Wakuban3
                FROM
                (
                    SELECT rhb1.RaceId,
                           rhb1.RaceDate,
                           rhb1.JyoCd,
                           rhb1.Kaiji,
                           rhb1.Nichiji,
                           rhb1.RaceNum,
                           rhb1.Umaban,
                           rhb1.PredictValue,
                           rhb1.Wakuban,
                           rhb1.PredictDateTime,
                           RANK() OVER(PARTITION BY rhb1.RaceId ORDER BY rhb1.PredictValue DESC) AS PredictValueRank
                    FROM RaceHorseBet rhb1
                    WHERE rhb1.RaceDate >= @RaceDateFrom
                          AND rhb1.PredictValue > @MinPredictValue
                ) t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId --INNER JOIN Odds1 ON Odds1.RaceId = t1.RaceId
                INNER JOIN ConfigBet
                ON ConfigBet.ConfigTypeCd = @ConfigType
                   AND ConfigBet.BetTypeCd = 2
                   AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                   AND ConfigBet.JyokenCd5 = Race.JyokenCd5
                WHERE PredictValueRank <= ConfigBet.CurrentValue;
         --AND Odds1.FukusyoFlag = @IsSellTarget
         SET @Return+=@@rowcount;
         --------------------------------------------------------------------------------
         -- 3 : Bet Bracket
         --------------------------------------------------------------------------------
         --------------------------------------------------------------------------------
         -- 4 : Bet Quinella
         --------------------------------------------------------------------------------
         INSERT INTO MgmtBet
         (RaceId,
          RaceDate,
          JyoCd,
          Kaiji,
          Nichiji,
          RaceNum,
          BetTypeCd,
          BetDateTime,
          BetNum,
          Kumi1,
          Kumi2,
          Kumi3,
          BetCount,
          HitCount,
          BetMoney,
          HitMoney,
          ReturnMoney,
          PredictDateTime,
          IsBet,
          IsFixed,
          FixedDateTime,
          IsSentJRA,
          SentJRADateTime,
          IsHit,
          IsChecked,
          CheckDateTime,
          PredictValue1,
          PredictValue2,
          PredictValue3,
          TotalPredictValue,
          TotalPredictValueRank,
          TS,
          Wakuban1,
          Wakuban2,
          Wakuban3
         )
                SELECT t1.RaceId, --RaceId
                       t1.RaceDate, --RaceDate
                       t1.JyoCd, --JyoCd
                       t1.Kaiji, --Kaiji
                       t1.Nichiji, --Nichiji
                       t1.RaceNum, --RaceNum
                       4, --BetTypeCd
                       @BetDateTime, --BetdDateTime
                       t1.PredictValueRank, --BetNum
                       t1.Umaban1, --Kumi1
                       t1.Umaban2, --Kumi2
                       0, --Kumi3
                       1, --BetCount
                       NULL, --HitCount1
                       @BetMoney, --BetMoney
                       NULL, --HitMoney
                       NULL, --ReturnMoney
                       t1.PredictDateTime, --PredictDateTime
                       1, --IsBet
                       0, --IsFixed
                       NULL, --FixedDateTime
                       0, --IsSentJRA
                       NULL, --SentJRADateTime
                       0, --IsHit
                       0, --IsChecked
                       NULL, --CheckDateTime
                       t1.PredictValue1, --PredictValue1
                       t1.PredictValue2, --PredictValue2
                       NULL, --PredictValue3
                       t1.TotalPredictValue, --TotalPredictValue
                       t1.PredictValueRank, --TotalPredictValueRank
                       GETDATE(), --TS
                       t1.Wakuban1, --Wakuban1
                       t1.Wakuban2, --Wakuban2
                       NULL --Wakuban3
                FROM
                (
                    SELECT rhb1.RaceId,
                           rhb1.RaceDate,
                           rhb1.JyoCd,
                           rhb1.Kaiji,
                           rhb1.Nichiji,
                           rhb1.RaceNum,
                           rhb1.Umaban AS Umaban1,
                           rhb2.Umaban AS Umaban2,
                           rhb1.PredictValue AS PredictValue1,
                           rhb2.PredictValue AS PredictValue2,
                           rhb1.Wakuban AS Wakuban1,
                           rhb2.Wakuban AS Wakuban2,
                           rhb1.PredictDateTime,
                           rhb1.PredictValue * rhb2.PredictValue * 100 AS TotalPredictValue,
                           RANK() OVER(PARTITION BY rhb1.RaceId ORDER BY rhb1.PredictValue * rhb2.PredictValue DESC,
                                                                         rhb1.PredictValue DESC,
                                                                         rhb2.PredictValue DESC) AS PredictValueRank
                    FROM RaceHorseBet rhb1
                         INNER JOIN RaceHorseBet rhb2
                         ON rhb2.RaceId = rhb1.RaceId
                    WHERE rhb1.RaceDate >= @RaceDateFrom
                          AND rhb1.PredictValue > @MinPredictValue
                          AND rhb2.PredictValue > @MinPredictValue
                          AND rhb1.Umaban < rhb2.Umaban
                ) t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId --INNER JOIN Odds2 ON Odds2.RaceId = t1.RaceId
                INNER JOIN ConfigBet
                ON ConfigBet.ConfigTypeCd = @ConfigType
                   AND ConfigBet.BetTypeCd = 4
                   AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                   AND ConfigBet.JyokenCd5 = Race.JyokenCd5
                WHERE PredictValueRank <= ConfigBet.CurrentValue;
         --AND Odds2.UmarenFlag = @IsSellTarget
         SET @Return+=@@rowcount;
         --------------------------------------------------------------------------------
         -- 5 : Bet Wide
         --------------------------------------------------------------------------------
         INSERT INTO MgmtBet
         (RaceId,
          RaceDate,
          JyoCd,
          Kaiji,
          Nichiji,
          RaceNum,
          BetTypeCd,
          BetDateTime,
          BetNum,
          Kumi1,
          Kumi2,
          Kumi3,
          BetCount,
          HitCount,
          BetMoney,
          HitMoney,
          ReturnMoney,
          PredictDateTime,
          IsBet,
          IsFixed,
          FixedDateTime,
          IsSentJRA,
          SentJRADateTime,
          IsHit,
          IsChecked,
          CheckDateTime,
          PredictValue1,
          PredictValue2,
          PredictValue3,
          TotalPredictValue,
          TotalPredictValueRank,
          TS,
          Wakuban1,
          Wakuban2,
          Wakuban3
         )
                SELECT t1.RaceId,
                       t1.RaceDate, --RaceDate
                       t1.JyoCd, --JyoCd
                       t1.Kaiji, --Kaiji
                       t1.Nichiji, --Nichiji
                       t1.RaceNum, --RaceNum
                       5, --BetTypeCd
                       @BetDateTime, --BetdDateTime
                       t1.PredictValueRank, --BetNum
                       t1.Umaban1, --Kumi1
                       t1.Umaban2, --Kumi2
                       0, --Kumi3
                       1, --BetCount
                       NULL, --HitCount1
                       @BetMoney, --BetMoney
                       NULL, --HitMoney
                       NULL, --ReturnMoney
                       t1.PredictDateTime, --PredictDateTime
                       1, --IsBet
                       0, --IsFixed
                       NULL, --FixedDateTime
                       0, --IsSentJRA
                       NULL, --SentJRADateTime
                       0, --IsHit
                       0, --IsChecked
                       NULL, --CheckDateTime
                       t1.PredictValue1, --PredictValue1
                       t1.PredictValue2, --PredictValue2
                       NULL, --PredictValue3
                       t1.TotalPredictValue, --TotalPredictValue
                       t1.PredictValueRank, --TotalPredictValueRank
                       GETDATE(), --TS
                       t1.Wakuban1, --Wakuban1
                       t1.Wakuban2, --Wakuban2
                       NULL --Wakuban3
                FROM
                (
                    SELECT rhb1.RaceId,
                           rhb1.RaceDate,
                           rhb1.JyoCd,
                           rhb1.Kaiji,
                           rhb1.Nichiji,
                           rhb1.RaceNum,
                           rhb1.Umaban AS Umaban1,
                           rhb2.Umaban AS Umaban2,
                           rhb1.PredictValue AS PredictValue1,
                           rhb2.PredictValue AS PredictValue2,
                           rhb1.Wakuban AS Wakuban1,
                           rhb2.Wakuban AS Wakuban2,
                           rhb1.PredictDateTime,
                           rhb1.PredictValue * rhb2.PredictValue * 100 AS TotalPredictValue,
                           RANK() OVER(PARTITION BY rhb1.RaceId ORDER BY rhb1.PredictValue * rhb2.PredictValue DESC,
                                                                         rhb1.PredictValue DESC,
                                                                         rhb2.PredictValue DESC) AS PredictValueRank
                    FROM RaceHorseBet rhb1
                         INNER JOIN RaceHorseBet rhb2
                         ON rhb2.RaceId = rhb1.RaceId
                    WHERE rhb1.RaceDate >= @RaceDateFrom
                          AND rhb1.PredictValue > @MinPredictValue
                          AND rhb2.PredictValue > @MinPredictValue
                          AND rhb1.Umaban < rhb2.Umaban
                ) t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId --INNER JOIN Odds3 ON Odds3.RaceId = t1.RaceId
                INNER JOIN ConfigBet
                ON ConfigBet.ConfigTypeCd = @ConfigType
                   AND ConfigBet.BetTypeCd = 5
                   AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                   AND ConfigBet.JyokenCd5 = Race.JyokenCd5
                WHERE PredictValueRank <= ConfigBet.CurrentValue;
         --AND Odds3.WideFlag = @IsSellTarget
         SET @Return+=@@rowcount;
         --------------------------------------------------------------------------------
         -- 6 : Bet Exacta
         --------------------------------------------------------------------------------
         INSERT INTO MgmtBet
         (RaceId,
          RaceDate,
          JyoCd,
          Kaiji,
          Nichiji,
          RaceNum,
          BetTypeCd,
          BetDateTime,
          BetNum,
          Kumi1,
          Kumi2,
          Kumi3,
          BetCount,
          HitCount,
          BetMoney,
          HitMoney,
          ReturnMoney,
          PredictDateTime,
          IsBet,
          IsFixed,
          FixedDateTime,
          IsSentJRA,
          SentJRADateTime,
          IsHit,
          IsChecked,
          CheckDateTime,
          PredictValue1,
          PredictValue2,
          PredictValue3,
          TotalPredictValue,
          TotalPredictValueRank,
          TS,
          Wakuban1,
          Wakuban2,
          Wakuban3
         )
                SELECT t1.RaceId,
                       t1.RaceDate, --RaceDate
                       t1.JyoCd, --JyoCd
                       t1.Kaiji, --Kaiji
                       t1.Nichiji, --Nichiji
                       t1.RaceNum, --RaceNum
                       6, --BetTypeCd
                       @BetDateTime, --BetdDateTime
                       t1.PredictValueRank, --BetNum
                       t1.Umaban1, --Kumi1
                       t1.Umaban2, --Kumi2
                       0, --Kumi3
                       1, --BetCount
                       NULL, --HitCount1
                       @BetMoney, --BetMoney
                       NULL, --HitMoney
                       NULL, --ReturnMoney
                       t1.PredictDateTime, --PredictDateTime
                       1, --IsBet
                       0, --IsFixed
                       NULL, --FixedDateTime
                       0, --IsSentJRA
                       NULL, --SentJRADateTime
                       0, --IsHit
                       0, --IsChecked
                       NULL, --CheckDateTime
                       t1.PredictValue1, --PredictValue1
                       t1.PredictValue2, --PredictValue2
                       NULL, --PredictValue3
                       t1.TotalPredictValue, --TotalPredictValue
                       t1.PredictValueRank, --TotalPredictValueRank
                       GETDATE(), --TS
                       t1.Wakuban1, --Wakuban1
                       t1.Wakuban2, --Wakuban2
                       NULL --Wakuban3
                FROM
                (
                    SELECT rhb1.RaceId,
                           rhb1.RaceDate,
                           rhb1.JyoCd,
                           rhb1.Kaiji,
                           rhb1.Nichiji,
                           rhb1.RaceNum,
                           rhb1.Umaban AS Umaban1,
                           rhb2.Umaban AS Umaban2,
                           rhb1.PredictValue AS PredictValue1,
                           rhb2.PredictValue AS PredictValue2,
                           rhb1.Wakuban AS Wakuban1,
                           rhb2.Wakuban AS Wakuban2,
                           rhb1.PredictDateTime,
                           rhb1.PredictValue * rhb2.PredictValue * 100 AS TotalPredictValue,
                           RANK() OVER(PARTITION BY rhb1.RaceId ORDER BY rhb1.PredictValue * rhb2.PredictValue DESC,
                                                                         rhb1.PredictValue DESC,
                                                                         rhb2.PredictValue DESC) AS PredictValueRank
                    FROM RaceHorseBet rhb1
                         INNER JOIN RaceHorseBet rhb2
                         ON rhb2.RaceId = rhb1.RaceId
                    WHERE rhb1.RaceDate >= @RaceDateFrom
                          AND rhb1.PredictValue > @MinPredictValue
                          AND rhb2.PredictValue > @MinPredictValue
                          AND rhb1.Umaban != rhb2.Umaban
                ) t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId --INNER JOIN Odds4 ON Odds4.RaceId = t1.RaceId
                INNER JOIN ConfigBet
                ON ConfigBet.ConfigTypeCd = @ConfigType
                   AND ConfigBet.BetTypeCd = 6
                   AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                   AND ConfigBet.JyokenCd5 = Race.JyokenCd5
                WHERE PredictValueRank <= ConfigBet.CurrentValue;
         --AND Odds4.UmatanFlag = @IsSellTarget
         SET @Return+=@@rowcount;
         --------------------------------------------------------------------------------
         -- 7 : Bet Trio
         --------------------------------------------------------------------------------
         INSERT INTO MgmtBet
         (RaceId,
          RaceDate,
          JyoCd,
          Kaiji,
          Nichiji,
          RaceNum,
          BetTypeCd,
          BetDateTime,
          BetNum,
          Kumi1,
          Kumi2,
          Kumi3,
          BetCount,
          HitCount,
          BetMoney,
          HitMoney,
          ReturnMoney,
          PredictDateTime,
          IsBet,
          IsFixed,
          FixedDateTime,
          IsSentJRA,
          SentJRADateTime,
          IsHit,
          IsChecked,
          CheckDateTime,
          PredictValue1,
          PredictValue2,
          PredictValue3,
          TotalPredictValue,
          TotalPredictValueRank,
          TS,
          Wakuban1,
          Wakuban2,
          Wakuban3
         )
                SELECT t1.RaceId,
                       t1.RaceDate, --RaceDate
                       t1.JyoCd, --JyoCd
                       t1.Kaiji, --Kaiji
                       t1.Nichiji, --Nichiji
                       t1.RaceNum, --RaceNum
                       7, --BetTypeCd
                       @BetDateTime, --BetdDateTime
                       t1.PredictValueRank, --BetNum
                       t1.Umaban1, --Kumi1
                       t1.Umaban2, --Kumi2
                       t1.Umaban3, --Kumi3
                       1, --BetCount
                       NULL, --HitCount1
                       @BetMoney, --BetMoney
                       NULL, --HitMoney
                       NULL, --ReturnMoney
                       t1.PredictDateTime, --PredictDateTime
                       1, --IsBet
                       0, --IsFixed
                       NULL, --FixedDateTime
                       0, --IsSentJRA
                       NULL, --SentJRADateTime
                       0, --IsHit
                       0, --IsChecked
                       NULL, --CheckDateTime
                       t1.PredictValue1, --PredictValue1
                       t1.PredictValue2, --PredictValue2
                       t1.PredictValue3, --PredictValue3
                       t1.TotalPredictValue, --TotalPredictValue
                       t1.PredictValueRank, --TotalPredictValueRank
                       GETDATE(), --TS
                       t1.Wakuban1, --Wakuban1
                       t1.Wakuban2, --Wakuban2
                       t1.Wakuban3 --Wakuban3
                FROM
                (
                    SELECT rhb1.RaceId,
                           rhb1.RaceDate,
                           rhb1.JyoCd,
                           rhb1.Kaiji,
                           rhb1.Nichiji,
                           rhb1.RaceNum,
                           rhb1.Umaban AS Umaban1,
                           rhb2.Umaban AS Umaban2,
                           rhb3.Umaban AS Umaban3,
                           rhb1.PredictValue AS PredictValue1,
                           rhb2.PredictValue AS PredictValue2,
                           rhb3.PredictValue AS PredictValue3,
                           rhb1.Wakuban AS Wakuban1,
                           rhb2.Wakuban AS Wakuban2,
                           rhb3.Wakuban AS Wakuban3,
                           rhb1.PredictDateTime,
                           rhb1.PredictValue * rhb2.PredictValue * rhb3.PredictValue * 10000 AS TotalPredictValue,
                           RANK() OVER(PARTITION BY rhb1.RaceId ORDER BY rhb1.PredictValue * rhb2.PredictValue * rhb3.PredictValue DESC,
                                                                         rhb1.PredictValue DESC,
                                                                         rhb2.PredictValue DESC,
                                                                         rhb3.PredictValue DESC) AS PredictValueRank
                    FROM RaceHorseBet rhb1
                         INNER JOIN RaceHorseBet rhb2
                         ON rhb2.RaceId = rhb1.RaceId
                         INNER JOIN RaceHorseBet rhb3
                         ON rhb3.RaceId = rhb1.RaceId
                    WHERE rhb1.RaceDate >= @RaceDateFrom
                          AND rhb1.PredictValue > @MinPredictValue
                          AND rhb2.PredictValue > @MinPredictValue
                          AND rhb3.PredictValue > @MinPredictValue
                          AND rhb1.Umaban != rhb2.Umaban
                          AND rhb1.Umaban != rhb3.Umaban
                          AND rhb2.Umaban != rhb3.Umaban
                          AND rhb1.Umaban < rhb2.Umaban
                          AND rhb1.Umaban < rhb3.Umaban
                          AND rhb2.Umaban < rhb3.Umaban
                ) t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId --INNER JOIN Odds5 ON Odds5.RaceId = t1.RaceId
                INNER JOIN ConfigBet
                ON ConfigBet.ConfigTypeCd = @ConfigType
                   AND ConfigBet.BetTypeCd = 7
                   AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                   AND ConfigBet.JyokenCd5 = Race.JyokenCd5
                WHERE PredictValueRank <= ConfigBet.CurrentValue;
         --AND Odds5.SanrenpukuFlag = @IsSellTarget
         SET @Return+=@@rowcount;
         --------------------------------------------------------------------------------
         -- 8 : Bet Trifecta
         --------------------------------------------------------------------------------
         INSERT INTO MgmtBet
         (RaceId,
          RaceDate,
          JyoCd,
          Kaiji,
          Nichiji,
          RaceNum,
          BetTypeCd,
          BetDateTime,
          BetNum,
          Kumi1,
          Kumi2,
          Kumi3,
          BetCount,
          HitCount,
          BetMoney,
          HitMoney,
          ReturnMoney,
          PredictDateTime,
          IsBet,
          IsFixed,
          FixedDateTime,
          IsSentJRA,
          SentJRADateTime,
          IsHit,
          IsChecked,
          CheckDateTime,
          PredictValue1,
          PredictValue2,
          PredictValue3,
          TotalPredictValue,
          TotalPredictValueRank,
          TS,
          Wakuban1,
          Wakuban2,
          Wakuban3
         )
                SELECT t1.RaceId,
                       t1.RaceDate, --RaceDate
                       t1.JyoCd, --JyoCd
                       t1.Kaiji, --Kaiji
                       t1.Nichiji, --Nichiji
                       t1.RaceNum, --RaceNum
                       8, --BetTypeCd
                       @BetDateTime, --BetdDateTime
                       t1.PredictValueRank, --BetNum
                       t1.Umaban1, --Kumi1
                       t1.Umaban2, --Kumi2
                       t1.Umaban3, --Kumi3
                       1, --BetCount
                       NULL, --HitCount1
                       @BetMoney, --BetMoney
                       NULL, --HitMoney
                       NULL, --ReturnMoney
                       t1.PredictDateTime, --PredictDateTime
                       1, --IsBet
                       0, --IsFixed
                       NULL, --FixedDateTime
                       0, --IsSentJRA
                       NULL, --SentJRADateTime
                       0, --IsHit
                       0, --IsChecked
                       NULL, --CheckDateTime
                       t1.PredictValue1, --PredictValue1
                       t1.PredictValue2, --PredictValue2
                       t1.PredictValue3, --PredictValue3
                       t1.TotalPredictValue, --TotalPredictValue
                       t1.PredictValueRank, --TotalPredictValueRank
                       GETDATE(), --TS
                       t1.Wakuban1, --Wakuban1
                       t1.Wakuban2, --Wakuban2
                       t1.Wakuban3 --Wakuban3
                FROM
                (
                    SELECT rhb1.RaceId,
                           rhb1.RaceDate,
                           rhb1.JyoCd,
                           rhb1.Kaiji,
                           rhb1.Nichiji,
                           rhb1.RaceNum,
                           rhb1.Umaban AS Umaban1,
                           rhb2.Umaban AS Umaban2,
                           rhb3.Umaban AS Umaban3,
                           rhb1.PredictValue AS PredictValue1,
                           rhb2.PredictValue AS PredictValue2,
                           rhb3.PredictValue AS PredictValue3,
                           rhb1.Wakuban AS Wakuban1,
                           rhb2.Wakuban AS Wakuban2,
                           rhb3.Wakuban AS Wakuban3,
                           rhb1.PredictDateTime,
                           rhb1.PredictValue * rhb2.PredictValue * rhb3.PredictValue * 10000 AS TotalPredictValue,
                           RANK() OVER(PARTITION BY rhb1.RaceId ORDER BY rhb1.PredictValue * rhb2.PredictValue * rhb3.PredictValue DESC,
                                                                         rhb1.PredictValue DESC,
                                                                         rhb2.PredictValue DESC,
                                                                         rhb3.PredictValue DESC) AS PredictValueRank
                    FROM RaceHorseBet rhb1
                         INNER JOIN RaceHorseBet rhb2
                         ON rhb2.RaceId = rhb1.RaceId
                         INNER JOIN RaceHorseBet rhb3
                         ON rhb3.RaceId = rhb1.RaceId
                    WHERE rhb1.RaceDate >= @RaceDateFrom
                          AND rhb1.PredictValue > @MinPredictValue
                          AND rhb2.PredictValue > @MinPredictValue
                          AND rhb3.PredictValue > @MinPredictValue
                          AND rhb1.Umaban != rhb2.Umaban
                          AND rhb1.Umaban != rhb3.Umaban
                          AND rhb2.Umaban != rhb3.Umaban
                    --AND rhb1.Umaban < rhb2.Umaban
                    --AND rhb1.Umaban < rhb3.Umaban
                    --AND rhb2.Umaban < rhb3.Umaban
                ) t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId --INNER JOIN Odds6 ON Odds6.RaceId = t1.RaceId
                INNER JOIN ConfigBet
                ON ConfigBet.ConfigTypeCd = @ConfigType
                   AND ConfigBet.BetTypeCd = 8
                   AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                   AND ConfigBet.JyokenCd5 = Race.JyokenCd5
                WHERE PredictValueRank <= ConfigBet.CurrentValue;
         --AND Odds6.SanrentanFlag = @IsSellTarget
         SET @Return+=@@rowcount;
         --------------------------------------------------------------------------------
         -- RaceHorseBet
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PayoffWin = 0,
               PayoffWinLog = 0,
               PayoffPlace = 0,
               PayoffPlaceLog = 0,
               TS = GETDATE(),
               TS2 = GETDATE()
         FROM PayoffByPayAll
              INNER JOIN RaceHorseBet
              ON RaceHorseBet.RaceId = PayoffByPayAll.RaceId
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- RaceHorseBet Win
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PayoffWin = PayoffByPayAll.Pay,
               TS = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN PayoffByPayAll
              ON PayoffByPayAll.RaceId = RaceHorseBet.RaceId
                 AND PayoffByPayAll.Kumi1 = RaceHorseBet.Umaban
                 AND PayoffByPayAll.Kumi2 = 0
                 AND PayoffByPayAll.Kumi3 = 0
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PayoffByPayAll.BetTypeCd = 1;
         --------------------------------------------------------------------------------
         -- RaceHorseBet Place
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PayoffPlace = PayoffByPayAll.Pay,
               TS = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN PayoffByPayAll
              ON PayoffByPayAll.RaceId = RaceHorseBet.RaceId
                 AND PayoffByPayAll.Kumi1 = RaceHorseBet.Umaban
                 AND PayoffByPayAll.Kumi2 = 0
                 AND PayoffByPayAll.Kumi3 = 0
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PayoffByPayAll.BetTypeCd = 2;
         --------------------------------------------------------------------------------
         -- MgmtBet
         --------------------------------------------------------------------------------
         UPDATE MgmtBet
           SET
               IsHit = 0,
               HitCount = 0,
               HitMoney = 0,
               ReturnMoney = -BetMoney,
               TS2 = GETDATE()
         WHERE MgmtBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- MgmtBet
         --------------------------------------------------------------------------------
         UPDATE MgmtBet
           SET
               IsHit = 1,
               HitCount = 1,
               HitMoney = dbo.PayoffByPayAll.Pay,
               ReturnMoney = dbo.PayoffByPayAll.Pay - MgmtBet.BetMoney,
               TS2 = GETDATE()
         FROM MgmtBet
              INNER JOIN PayoffByPayAll
              ON PayoffByPayAll.RaceId = MgmtBet.RaceId
                 AND PayoffByPayAll.BetTypeCd = MgmtBet.BetTypeCd
         WHERE MgmtBet.RaceDate >= @RaceDateFrom
               AND PayoffByPayAll.Kumi1 = MgmtBet.Kumi1
               AND PayoffByPayAll.Kumi2 = MgmtBet.Kumi2
               AND PayoffByPayAll.Kumi3 = MgmtBet.Kumi3
               AND MgmtBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- PayoffByPayAll
         --------------------------------------------------------------------------------
         UPDATE PayoffByPayAll
           SET
               IsHit = 0,
               TS2 = GETDATE()
         FROM PayoffByPayAll
         WHERE PayoffByPayAll.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- PayoffByPayAll
         --------------------------------------------------------------------------------
         UPDATE PayoffByPayAll
           SET
               IsHit = 1,
               TS2 = GETDATE()
         FROM MgmtBet
              INNER JOIN PayoffByPayAll
              ON PayoffByPayAll.RaceId = MgmtBet.RaceId
                 AND PayoffByPayAll.BetTypeCd = MgmtBet.BetTypeCd
         WHERE PayoffByPayAll.RaceDate >= @RaceDateFrom
               AND PayoffByPayAll.Kumi1 = MgmtBet.Kumi1
               AND PayoffByPayAll.Kumi2 = MgmtBet.Kumi2
               AND PayoffByPayAll.Kumi3 = MgmtBet.Kumi3;
         --------------------------------------------------------------------------------
         -- Race
         --------------------------------------------------------------------------------
         UPDATE Race
           SET
               BetCount = t1.BetCount,
               HitCount = t1.HitCount,
               BetMoney = t1.BetMoney,
               HitMoney = t1.HitMoney,
               ReturnMoney = t1.ReturnMoney,
               TS2 = GETDATE()
         FROM Race
              INNER JOIN
         (
             SELECT MgmtBet.RaceId,
                    SUM(MgmtBet.BetCount) AS BetCount,
                    SUM(MgmtBet.HitCount) AS HitCount,
                    SUM(MgmtBet.BetMoney) AS BetMoney,
                    SUM(MgmtBet.HitMoney) AS HitMoney,
                    SUM(MgmtBet.ReturnMoney) AS ReturnMoney
             FROM dbo.MgmtBet
             WHERE MgmtBet.RaceDate >= @RaceDateFrom
             GROUP BY MgmtBet.RaceId
         ) AS t1
              ON t1.RaceId = Race.RaceId;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------
         RETURN @Return;
         COMMIT TRANSACTION;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_MgmtBet_DeleteByRaceNum]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_MgmtBet_DeleteByRaceNum]
	@RaceId [nchar](20)
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- MgmtBet	:	Delete All Bets
         --------------------------------------------------------------------------------
         DELETE MgmtBet
         WHERE MgmtBet.RaceId = @RaceId;
         SET @Return+=@@rowcount;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------
         RETURN @Return;
         COMMIT TRANSACTION;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_RaceHorse_ClearPredValByRaceNum]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RaceHorse_ClearPredValByRaceNum]
	@RaceId [nchar](20)
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- Clear Predict Values
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               ResultValue = NULL,
               ResultRank = NULL,
               PredictRank = NULL,
               PredictValue = NULL,
               PredictValue01 = NULL,
               PredictValue02 = NULL,
               PredictValue03 = NULL,
               PredictValue04 = NULL,
               PredictValue05 = NULL,
               PredictValue06 = NULL,
               PredictValue07 = NULL,
               PredictValue08 = NULL,
               PredictValue09 = NULL,
               PredictValue10 = NULL,
               PredictValue11 = NULL,
               PredictValue12 = NULL,
               PredictValue13 = NULL,
               PredictValue14 = NULL,
               PredictValue15 = NULL,
               PredictValue16 = NULL,
               PredictValue17 = NULL,
               PredictValue18 = NULL,
               PredictValue19 = NULL,
               PredictValue20 = NULL,
               PredictValue01Temp = NULL,
               PredictValue02Temp = NULL,
               PredictValue03Temp = NULL,
               PredictValue04Temp = NULL,
               PredictValue05Temp = NULL,
               PredictValue06Temp = NULL,
               PredictValue07Temp = NULL,
               PredictValue08Temp = NULL,
               PredictValue09Temp = NULL,
               PredictValue10Temp = NULL,
               PredictValue11Temp = NULL,
               PredictValue12Temp = NULL,
               PredictValue13Temp = NULL,
               PredictValue14Temp = NULL,
               PredictValue15Temp = NULL,
               PredictValue16Temp = NULL,
               PredictValue17Temp = NULL,
               PredictValue18Temp = NULL,
               PredictValue19Temp = NULL,
               PredictValue20Temp = NULL,
               PredictValue01Sum = NULL,
               PredictValue02Sum = NULL,
               PredictValue03Sum = NULL,
               PredictValue04Sum = NULL,
               PredictValue05Sum = NULL,
               PredictValue06Sum = NULL,
               PredictValue07Sum = NULL,
               PredictValue08Sum = NULL,
               PredictValue09Sum = NULL,
               PredictValue10Sum = NULL,
               PredictValue11Sum = NULL,
               PredictValue12Sum = NULL,
               PredictValue13Sum = NULL,
               PredictValue14Sum = NULL,
               PredictValue15Sum = NULL,
               PredictValue16Sum = NULL,
               PredictValue17Sum = NULL,
               PredictValue18Sum = NULL,
               PredictValue19Sum = NULL,
               PredictValue20Sum = NULL,
               PredictDateTime = NULL,
               TS2 = GETDATE()
         WHERE RaceId = @RaceId;
         SET @Return+=@@rowcount;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------
         RETURN @Return;
         COMMIT TRANSACTION;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_RaceHorse_UpdatePredValByRaceNum]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RaceHorse_UpdatePredValByRaceNum]
	@RaceId [nchar](20)
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
               PredictHitRate = NULL,
               PredictHitRateLogit = NULL,
               PredictPay = NULL,
               PredictPayLog = NULL,
               PredictRank = 91,
               PredictValue = -991,
               PredictValue01 = NULL,
               PredictValue01Temp = NULL,
               PredictValue01Sum = NULL,
               PredictValue02 = NULL,
               PredictValue02Temp = NULL,
               PredictValue02Sum = NULL,
               PredictValue03 = NULL,
               PredictValue03Temp = NULL,
               PredictValue03Sum = NULL,
               PredictValue04 = NULL,
               PredictValue04Temp = NULL,
               PredictValue04Sum = NULL,
               PredictValue05 = NULL,
               PredictValue05Temp = NULL,
               PredictValue05Sum = NULL,
               PredictValue06 = NULL,
               PredictValue06Temp = NULL,
               PredictValue06Sum = NULL,
               PredictValue07 = NULL,
               PredictValue07Temp = NULL,
               PredictValue07Sum = NULL,
               PredictValue08 = NULL,
               PredictValue08Temp = NULL,
               PredictValue08Sum = NULL,
               PredictValue09 = NULL,
               PredictValue09Temp = NULL,
               PredictValue09Sum = NULL,
               PredictValue10 = NULL,
               PredictValue10Temp = NULL,
               PredictValue10Sum = NULL,
               PredictValue11 = NULL,
               PredictValue11Temp = NULL,
               PredictValue11Sum = NULL,
               PredictValue12 = NULL,
               PredictValue12Temp = NULL,
               PredictValue12Sum = NULL,
               PredictValue13 = NULL,
               PredictValue13Temp = NULL,
               PredictValue13Sum = NULL,
               PredictValue14 = NULL,
               PredictValue14Temp = NULL,
               PredictValue14Sum = NULL,
               PredictValue15 = NULL,
               PredictValue15Temp = NULL,
               PredictValue15Sum = NULL,
               PredictValue16 = NULL,
               PredictValue16Temp = NULL,
               PredictValue16Sum = NULL,
               PredictValue17 = NULL,
               PredictValue17Temp = NULL,
               PredictValue17Sum = NULL,
               PredictValue18 = NULL,
               PredictValue18Temp = NULL,
               PredictValue18Sum = NULL,
               PredictValue19 = NULL,
               PredictValue19Temp = NULL,
               PredictValue19Sum = NULL,
               PredictValue20 = NULL,
               PredictValue20Temp = NULL,
               PredictValue20Sum = NULL,
               PredictDateTime = NULL,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
         WHERE Race.RaceDate >= @RaceDateFrom
               AND Race.RaceId = @RaceId;
         --------------------------------------------------------------------------------
         -- OddsInverse 1
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
         --PredictValue01 = Odds1ByWin.OddsInverse1,
               PredictValue01 = 1 / Race.TorokuTosu,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
                 AND Race.JyoCd = RaceHorseBet.JyoCd
                 AND Race.Kaiji = RaceHorseBet.Kaiji
                 AND Race.Nichiji = RaceHorseBet.Nichiji
                 AND Race.RaceNum = RaceHorseBet.RaceNum
              INNER JOIN Odds1ByWin
              ON Odds1ByWin.RaceId = RaceHorseBet.RaceId
                 AND Odds1ByWin.BetTypeCd = 1
                 AND Odds1ByWin.Kumi1 = RaceHorseBet.Umaban
                 AND Odds1ByWin.Kumi2 = 0
                 AND Odds1ByWin.Kumi3 = 0
         WHERE Race.RaceDate >= @RaceDateFrom
               AND Race.RaceId = @RaceId;
         --------------------------------------------------------------------------------
         -- Update PredictValue
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue = PredictValue01,
               PredictDateTime = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
         WHERE Race.RaceDate >= @RaceDateFrom
               AND Race.RaceId = @RaceId;
         --------------------------------------------------------------------------------
         -- Update RaceHorse : 異常（中止など）
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictRank = 92,
               PredictValue = -992,
               PredictDateTime = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceHorse
              ON RaceHorse.RaceId = RaceHorseBet.RaceId
                 AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
         WHERE Race.RaceDate >= @RaceDateFrom
               AND Race.RaceId = @RaceId
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
               PredictRank = 93,
               PredictValue = -993,
               PredictDateTime = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceHorse
              ON RaceHorse.RaceId = RaceHorseBet.RaceId
                 AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
         WHERE Race.RaceDate >= @RaceDateFrom
               AND Race.RaceId = @RaceId
               AND RaceHorse.DataKubun = '9';
         --------------------------------------------------------------------------------
         -- Update RaceHorse : レース削除
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictRank = 94,
               PredictValue = -994,
               PredictDateTime = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceHorse
              ON RaceHorse.RaceId = RaceHorseBet.RaceId
                 AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
         WHERE Race.RaceDate >= @RaceDateFrom
               AND Race.RaceId = @RaceId
               AND RaceHorse.DataKubun = '0';
         --------------------------------------------------------------------------------
         -- Update RaceHorse : 計算エラー(NULL)
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictRank = 95,
               PredictValue = -995,
               PredictDateTime = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
         WHERE Race.RaceDate >= @RaceDateFrom
               AND Race.RaceId = @RaceId
               AND PredictValue IS NULL;
         --------------------------------------------------------------------------------
         -- Update RaceHorse : Ranking
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               RaceHorseBet.PredictRank = t.PredictValueRank
         FROM RaceHorseBet
              INNER JOIN
         (
             SELECT RaceHorseBet.RaceId,
                    RaceHorseBet.KettoNum,
                    RaceHorseBet.PredictValue,
                    RANK() OVER(PARTITION BY RaceHorseBet.RaceId ORDER BY RaceHorseBet.PredictValue DESC) AS PredictValueRank
             FROM RaceHorseBet
                  INNER JOIN Race
                  ON Race.RaceId = RaceHorseBet.RaceId
             WHERE Race.RaceDate >= @RaceDateFrom
                   AND Race.RaceId = @RaceId
         ) AS t
              ON RaceHorseBet.RaceId = t.RaceId
                 AND RaceHorseBet.KettoNum = t.KettoNum;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------
         RETURN @Return;
         COMMIT TRANSACTION;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenCourseType01]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenCourseType01]
	@RaceId [nchar](20),
	@KettoNum [nchar](10)
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenCourseType01
         --------------------------------------------------------------------------------
         DELETE RaceResultByChildrenCourseType01
         FROM RaceResultByChildrenCourseType01
         WHERE RaceResultByChildrenCourseType01.RaceId = @RaceId
               AND RaceResultByChildrenCourseType01.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenCourseType01
         --------------------------------------------------------------------------------
         INSERT INTO RaceResultByChildrenCourseType01
         (RaceId,
          KettoNum,
          CourseTypeCd,
          RaceDate,
          RunCount,
          HitCount1,
          HitRate1,
          HitCount12,
          HitRate12,
          HitCount123,
          HitRate123,
          ExpectedValueWin,
          ExpectedValuePlace,
          TS
         )
                SELECT t1.RaceId,
                       t1.KettoNum,
                       t1.CourseTypeCd,
                       Race.RaceDate,
                       t1.RunCount,
                       t1.HitCount1,
                       t1.HitRate1,
                       t1.HitCount12,
                       t1.HitRate12,
                       t1.HitCount123,
                       t1.HitRate123,
                       t1.ExpectedValueWin,
                       t1.ExpectedValuePlace,
                       GETDATE()
                FROM
                (
                    SELECT RaceHorse.RaceId,
                           RaceHorse.KettoNum,
                           Race.CourseTypeCd,
                           SUM(RaceHorse_Child.RunCount) AS RunCount,
                           SUM(RaceHorse_Child.HitCount1) AS HitCount1,
                           SUM(RaceHorse_Child.HitCount1) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate1,
                           SUM(RaceHorse_Child.HitCount12) AS HitCount12,
                           SUM(RaceHorse_Child.HitCount12) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate12,
                           SUM(RaceHorse_Child.HitCount123) AS HitCount123,
                           SUM(RaceHorse_Child.HitCount123) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate123,
                           AVG(RaceHorseBet_Child.PayoffWin) AS ExpectedValueWin,
                           AVG(RaceHorseBet_Child.PayOffPlace) AS ExpectedValuePlace
                    FROM RaceResult
                         INNER JOIN RaceHorse
                         ON RaceHorse.RaceId = RaceResult.RaceId
                            AND RaceHorse.KettoNum = RaceResult.KettoNum
                         INNER JOIN Race
                         ON Race.RaceId = RaceHorse.RaceId
                         INNER JOIN Horse
                         ON Horse.KettoNum = RaceHorse.KettoNum
                         INNER JOIN Horse AS Horse_Child
                         ON Horse_Child.Ketto3InfoHansyokuNum1 = Horse.Ketto3InfoHansyokuNum1
                         INNER JOIN RaceHorse AS RaceHorse_Child
                         ON RaceHorse_Child.KettoNum = Horse_Child.KettoNum
                         INNER JOIN Race Race_Child
                         ON Race_Child.RaceId = RaceHorse_Child.RaceId
                         INNER JOIN RaceHorseBet AS RaceHorseBet_Child
                         ON RaceHorseBet_Child.RaceId = RaceHorse_Child.RaceId
                            AND RaceHorseBet_Child.KettoNum = RaceHorse_Child.KettoNum
                    WHERE Race_Child.IsNormal = 1
                          AND RaceHorse_Child.IsNormal = 1
                          AND Race.RaceDate > Race_Child.RaceDate
                          AND Race.CourseTypeCd = Race_Child.CourseTypeCd
                          AND RaceHorse.RaceId = @RaceId
                          AND RaceHorse.KettoNum = @KettoNum
                    GROUP BY RaceHorse.RaceId,
                             RaceHorse.KettoNum,
                             Race.CourseTypeCd
                ) AS t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId;
         SET @Return = @@ROWCOUNT;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenCourseType01
         --------------------------------------------------------------------------------
         UPDATE RaceResultByChildrenCourseType01
           SET
               RunCountLog = LOG(RaceResultByChildrenCourseType01.RunCount + 1),
               HitCount1Log = LOG(RaceResultByChildrenCourseType01.HitCount1 + 1),
               HitCount12Log = LOG(RaceResultByChildrenCourseType01.HitCount12 + 1),
               HitCount123Log = LOG(RaceResultByChildrenCourseType01.HitCount123 + 1),
               TS2 = GETDATE()
         FROM RaceResultByChildrenCourseType01
         WHERE RaceResultByChildrenCourseType01.RaceId = @RaceId
               AND RaceResultByChildrenCourseType01.KettoNum = @KettoNum;
  
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------  
         COMMIT TRANSACTION;
         RETURN @Return;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenCourseType02]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenCourseType02]
	@RaceId [nchar](20),
	@KettoNum [nchar](10)
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenCourseType02
         --------------------------------------------------------------------------------
         DELETE RaceResultByChildrenCourseType02
         FROM RaceResultByChildrenCourseType02
         WHERE RaceResultByChildrenCourseType02.RaceId = @RaceId
               AND RaceResultByChildrenCourseType02.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenCourseType02
         --------------------------------------------------------------------------------
         INSERT INTO RaceResultByChildrenCourseType02
         (RaceId,
          KettoNum,
          CourseTypeCd,
          RaceDate,
          RunCount,
          HitCount1,
          HitRate1,
          HitCount12,
          HitRate12,
          HitCount123,
          HitRate123,
          ExpectedValueWin,
          ExpectedValuePlace,
          TS
         )
                SELECT t1.RaceId,
                       t1.KettoNum,
                       t1.CourseTypeCd,
                       Race.RaceDate,
                       t1.RunCount,
                       t1.HitCount1,
                       t1.HitRate1,
                       t1.HitCount12,
                       t1.HitRate12,
                       t1.HitCount123,
                       t1.HitRate123,
                       t1.ExpectedValueWin,
                       t1.ExpectedValuePlace,
                       GETDATE()
                FROM
                (
                    SELECT RaceHorse.RaceId,
                           RaceHorse.KettoNum,
                           Race.CourseTypeCd,
                           SUM(RaceHorse_Child.RunCount) AS RunCount,
                           SUM(RaceHorse_Child.HitCount1) AS HitCount1,
                           SUM(RaceHorse_Child.HitCount1) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate1,
                           SUM(RaceHorse_Child.HitCount12) AS HitCount12,
                           SUM(RaceHorse_Child.HitCount12) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate12,
                           SUM(RaceHorse_Child.HitCount123) AS HitCount123,
                           SUM(RaceHorse_Child.HitCount123) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate123,
                           AVG(RaceHorseBet_Child.PayoffWin) AS ExpectedValueWin,
                           AVG(RaceHorseBet_Child.PayOffPlace) AS ExpectedValuePlace
                    FROM RaceResult
                         INNER JOIN RaceHorse
                         ON RaceHorse.RaceId = RaceResult.RaceId
                            AND RaceHorse.KettoNum = RaceResult.KettoNum
                         INNER JOIN Race
                         ON Race.RaceId = RaceHorse.RaceId
                         INNER JOIN Horse
                         ON Horse.KettoNum = RaceHorse.KettoNum
                         INNER JOIN Horse AS Horse_Child
                         ON Horse_Child.Ketto3InfoHansyokuNum2 = Horse.Ketto3InfoHansyokuNum2
                         INNER JOIN RaceHorse AS RaceHorse_Child
                         ON RaceHorse_Child.KettoNum = Horse_Child.KettoNum
                         INNER JOIN Race Race_Child
                         ON Race_Child.RaceId = RaceHorse_Child.RaceId
                         INNER JOIN RaceHorseBet AS RaceHorseBet_Child
                         ON RaceHorseBet_Child.RaceId = RaceHorse_Child.RaceId
                            AND RaceHorseBet_Child.KettoNum = RaceHorse_Child.KettoNum
                    WHERE Race_Child.IsNormal = 1
                          AND RaceHorse_Child.IsNormal = 1
                          AND Race.RaceDate > Race_Child.RaceDate
                          AND Race.CourseTypeCd = Race_Child.CourseTypeCd
                          AND RaceHorse.RaceId = @RaceId
                          AND RaceHorse.KettoNum = @KettoNum
                    GROUP BY RaceHorse.RaceId,
                             RaceHorse.KettoNum,
                             Race.CourseTypeCd
                ) AS t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId;
         SET @Return = @@ROWCOUNT;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenCourseType02
         --------------------------------------------------------------------------------
         UPDATE RaceResultByChildrenCourseType02
           SET
               RunCountLog = LOG(RaceResultByChildrenCourseType02.RunCount + 1),
               HitCount1Log = LOG(RaceResultByChildrenCourseType02.HitCount1 + 1),
               HitCount12Log = LOG(RaceResultByChildrenCourseType02.HitCount12 + 1),
               HitCount123Log = LOG(RaceResultByChildrenCourseType02.HitCount123 + 1),
               TS2 = GETDATE()
         FROM RaceResultByChildrenCourseType02
         WHERE RaceResultByChildrenCourseType02.RaceId = @RaceId
               AND RaceResultByChildrenCourseType02.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------  
         COMMIT TRANSACTION;
         RETURN @Return;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenJyoken01]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenJyoken01]
	@RaceId [nchar](20),
	@KettoNum [nchar](10)
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenJyoken01
         --------------------------------------------------------------------------------
         DELETE RaceResultByChildrenJyoken01
         FROM RaceResultByChildrenJyoken01
         WHERE RaceResultByChildrenJyoken01.RaceId = @RaceId
               AND RaceResultByChildrenJyoken01.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenJyoken01
         --------------------------------------------------------------------------------
         INSERT INTO RaceResultByChildrenJyoken01
         (RaceId,
          KettoNum,
          JyokenCd5,
          RaceDate,
          RunCount,
          HitCount1,
          HitRate1,
          HitCount12,
          HitRate12,
          HitCount123,
          HitRate123,
          ExpectedValueWin,
          ExpectedValuePlace,
          TS
         )
                SELECT t1.RaceId,
                       t1.KettoNum,
                       t1.JyokenCd5,
                       Race.RaceDate,
                       t1.RunCount,
                       t1.HitCount1,
                       t1.HitRate1,
                       t1.HitCount12,
                       t1.HitRate12,
                       t1.HitCount123,
                       t1.HitRate123,
                       t1.ExpectedValueWin,
                       t1.ExpectedValuePlace,
                       GETDATE()
                FROM
                (
                    SELECT RaceHorse.RaceId,
                           RaceHorse.KettoNum,
                           Race.JyokenCd5,
                           SUM(RaceHorse_Child.RunCount) AS RunCount,
                           SUM(RaceHorse_Child.HitCount1) AS HitCount1,
                           SUM(RaceHorse_Child.HitCount1) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate1,
                           SUM(RaceHorse_Child.HitCount12) AS HitCount12,
                           SUM(RaceHorse_Child.HitCount12) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate12,
                           SUM(RaceHorse_Child.HitCount123) AS HitCount123,
                           SUM(RaceHorse_Child.HitCount123) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate123,
                           AVG(RaceHorseBet_Child.PayoffWin) AS ExpectedValueWin,
                           AVG(RaceHorseBet_Child.PayOffPlace) AS ExpectedValuePlace
                    FROM RaceResult
                         INNER JOIN RaceHorse
                         ON RaceHorse.RaceId = RaceResult.RaceId
                            AND RaceHorse.KettoNum = RaceResult.KettoNum
                         INNER JOIN Race
                         ON Race.RaceId = RaceHorse.RaceId
                         INNER JOIN Horse
                         ON Horse.KettoNum = RaceHorse.KettoNum
                         INNER JOIN Horse AS Horse_Child
                         ON Horse_Child.Ketto3InfoHansyokuNum1 = Horse.Ketto3InfoHansyokuNum1
                         INNER JOIN RaceHorse AS RaceHorse_Child
                         ON RaceHorse_Child.KettoNum = Horse_Child.KettoNum
                         INNER JOIN Race Race_Child
                         ON Race_Child.RaceId = RaceHorse_Child.RaceId
                         INNER JOIN RaceHorseBet AS RaceHorseBet_Child
                         ON RaceHorseBet_Child.RaceId = RaceHorse_Child.RaceId
                            AND RaceHorseBet_Child.KettoNum = RaceHorse_Child.KettoNum
                    WHERE Race_Child.IsNormal = 1
                          AND RaceHorse_Child.IsNormal = 1
                          AND Race.RaceDate > Race_Child.RaceDate
                          AND Race.JyokenCd5 = Race_Child.JyokenCd5
                          AND RaceResult.RaceId = @RaceId
                          AND RaceResult.KettoNum = @KettoNum
                    GROUP BY RaceHorse.RaceId,
                             RaceHorse.KettoNum,
                             Race.JyokenCd5
                ) AS t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId;
         SET @Return = @@ROWCOUNT;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenJyoken01
         --------------------------------------------------------------------------------
         UPDATE RaceResultByChildrenJyoken01
           SET
               RunCountLog = LOG(RaceResultByChildrenJyoken01.RunCount + 1),
               HitCount1Log = LOG(RaceResultByChildrenJyoken01.HitCount1 + 1),
               HitCount12Log = LOG(RaceResultByChildrenJyoken01.HitCount12 + 1),
               HitCount123Log = LOG(RaceResultByChildrenJyoken01.HitCount123 + 1),
               TS2 = GETDATE()
         FROM RaceResultByChildrenJyoken01
         WHERE RaceResultByChildrenJyoken01.RaceId = @RaceId
               AND RaceResultByChildrenJyoken01.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------  
         COMMIT TRANSACTION;
         RETURN @Return;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenJyoken02]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenJyoken02]
	@RaceId [nchar](20),
	@KettoNum [nchar](10)
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenJyoken02
         --------------------------------------------------------------------------------
         DELETE RaceResultByChildrenJyoken02
         FROM RaceResultByChildrenJyoken02
         WHERE RaceResultByChildrenJyoken02.RaceId = @RaceId
               AND RaceResultByChildrenJyoken02.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenJyoken02
         --------------------------------------------------------------------------------
         INSERT INTO RaceResultByChildrenJyoken02
         (RaceId,
          KettoNum,
          JyokenCd5,
          RaceDate,
          RunCount,
          HitCount1,
          HitRate1,
          HitCount12,
          HitRate12,
          HitCount123,
          HitRate123,
          ExpectedValueWin,
          ExpectedValuePlace,
          TS
         )
                SELECT t1.RaceId,
                       t1.KettoNum,
                       t1.JyokenCd5,
                       Race.RaceDate,
                       t1.RunCount,
                       t1.HitCount1,
                       t1.HitRate1,
                       t1.HitCount12,
                       t1.HitRate12,
                       t1.HitCount123,
                       t1.HitRate123,
                       t1.ExpectedValueWin,
                       t1.ExpectedValuePlace,
                       GETDATE()
                FROM
                (
                    SELECT RaceHorse.RaceId,
                           RaceHorse.KettoNum,
                           Race.JyokenCd5,
                           SUM(RaceHorse_Child.RunCount) AS RunCount,
                           SUM(RaceHorse_Child.HitCount1) AS HitCount1,
                           SUM(RaceHorse_Child.HitCount1) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate1,
                           SUM(RaceHorse_Child.HitCount12) AS HitCount12,
                           SUM(RaceHorse_Child.HitCount12) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate12,
                           SUM(RaceHorse_Child.HitCount123) AS HitCount123,
                           SUM(RaceHorse_Child.HitCount123) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate123,
                           AVG(RaceHorseBet_Child.PayoffWin) AS ExpectedValueWin,
                           AVG(RaceHorseBet_Child.PayOffPlace) AS ExpectedValuePlace
                    FROM RaceResult
                         INNER JOIN RaceHorse
                         ON RaceHorse.RaceId = RaceResult.RaceId
                            AND RaceHorse.KettoNum = RaceResult.KettoNum
                         INNER JOIN Race
                         ON Race.RaceId = RaceHorse.RaceId
                         INNER JOIN Horse
                         ON Horse.KettoNum = RaceHorse.KettoNum
                         INNER JOIN Horse AS Horse_Child
                         ON Horse_Child.Ketto3InfoHansyokuNum2 = Horse.Ketto3InfoHansyokuNum2
                         INNER JOIN RaceHorse AS RaceHorse_Child
                         ON RaceHorse_Child.KettoNum = Horse_Child.KettoNum
                         INNER JOIN Race Race_Child
                         ON Race_Child.RaceId = RaceHorse_Child.RaceId
                         INNER JOIN RaceHorseBet AS RaceHorseBet_Child
                         ON RaceHorseBet_Child.RaceId = RaceHorse_Child.RaceId
                            AND RaceHorseBet_Child.KettoNum = RaceHorse_Child.KettoNum
                    WHERE Race_Child.IsNormal = 1
                          AND RaceHorse_Child.IsNormal = 1
                          AND Race.RaceDate > Race_Child.RaceDate
                          AND Race.JyokenCd5 = Race_Child.JyokenCd5
                          AND RaceResult.RaceId = @RaceId
                          AND RaceResult.KettoNum = @KettoNum
                    GROUP BY RaceHorse.RaceId,
                             RaceHorse.KettoNum,
                             Race.JyokenCd5
                ) AS t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId;
         SET @Return = @@ROWCOUNT;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenJyoken02
         --------------------------------------------------------------------------------
         UPDATE RaceResultByChildrenJyoken02
           SET
               RunCountLog = LOG(RaceResultByChildrenJyoken02.RunCount + 1),
               HitCount1Log = LOG(RaceResultByChildrenJyoken02.HitCount1 + 1),
               HitCount12Log = LOG(RaceResultByChildrenJyoken02.HitCount12 + 1),
               HitCount123Log = LOG(RaceResultByChildrenJyoken02.HitCount123 + 1),
               TS2 = GETDATE()
         FROM RaceResultByChildrenJyoken02
         WHERE RaceResultByChildrenJyoken02.RaceId = @RaceId
               AND RaceResultByChildrenJyoken02.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------  
         COMMIT TRANSACTION;
         RETURN @Return;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenSmile01]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenSmile01]
	@RaceId [nchar](20),
	@KettoNum [nchar](10)
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenSmile01
         --------------------------------------------------------------------------------
         DELETE RaceResultByChildrenSmile01
         FROM RaceResultByChildrenSmile01
         WHERE RaceResultByChildrenSmile01.RaceId = @RaceId
               AND RaceResultByChildrenSmile01.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenSmile01
         --------------------------------------------------------------------------------
         INSERT INTO RaceResultByChildrenSmile01
         (RaceId,
          KettoNum,
          SmileCd,
          RaceDate,
          RunCount,
          HitCount1,
          HitRate1,
          HitCount12,
          HitRate12,
          HitCount123,
          HitRate123,
          ExpectedValueWin,
          ExpectedValuePlace,
          TS
         )
                SELECT t1.RaceId,
                       t1.KettoNum,
                       t1.SmileCd,
                       Race.RaceDate,
                       t1.RunCount,
                       t1.HitCount1,
                       t1.HitRate1,
                       t1.HitCount12,
                       t1.HitRate12,
                       t1.HitCount123,
                       t1.HitRate123,
                       t1.ExpectedValueWin,
                       t1.ExpectedValuePlace,
                       GETDATE()
                FROM
                (
                    SELECT RaceHorse.RaceId,
                           RaceHorse.KettoNum,
                           Race.SmileCd,
                           SUM(RaceHorse_Child.RunCount) AS RunCount,
                           SUM(RaceHorse_Child.HitCount1) AS HitCount1,
                           SUM(RaceHorse_Child.HitCount1) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate1,
                           SUM(RaceHorse_Child.HitCount12) AS HitCount12,
                           SUM(RaceHorse_Child.HitCount12) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate12,
                           SUM(RaceHorse_Child.HitCount123) AS HitCount123,
                           SUM(RaceHorse_Child.HitCount123) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate123,
                           AVG(RaceHorseBet_Child.PayoffWin) AS ExpectedValueWin,
                           AVG(RaceHorseBet_Child.PayOffPlace) AS ExpectedValuePlace
                    FROM RaceResult
                         INNER JOIN RaceHorse
                         ON RaceHorse.RaceId = RaceResult.RaceId
                            AND RaceHorse.KettoNum = RaceResult.KettoNum
                         INNER JOIN Race
                         ON Race.RaceId = RaceHorse.RaceId
                         INNER JOIN Horse
                         ON Horse.KettoNum = RaceHorse.KettoNum
                         INNER JOIN Horse AS Horse_Child
                         ON Horse_Child.Ketto3InfoHansyokuNum1 = Horse.Ketto3InfoHansyokuNum1
                         INNER JOIN RaceHorse AS RaceHorse_Child
                         ON RaceHorse_Child.KettoNum = Horse_Child.KettoNum
                         INNER JOIN Race Race_Child
                         ON Race_Child.RaceId = RaceHorse_Child.RaceId
                         INNER JOIN RaceHorseBet AS RaceHorseBet_Child
                         ON RaceHorseBet_Child.RaceId = RaceHorse_Child.RaceId
                            AND RaceHorseBet_Child.KettoNum = RaceHorse_Child.KettoNum
                    WHERE Race_Child.IsNormal = 1
                          AND RaceHorse_Child.IsNormal = 1
                          AND Race.RaceDate > Race_Child.RaceDate
                          AND Race.SmileCd = Race_Child.SmileCd
                          AND RaceResult.RaceId = @RaceId
                          AND RaceResult.KettoNum = @KettoNum
                    GROUP BY RaceHorse.RaceId,
                             RaceHorse.KettoNum,
                             Race.SmileCd
                ) AS t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId;
         SET @Return = @@ROWCOUNT;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenSmile01
         --------------------------------------------------------------------------------
         UPDATE RaceResultByChildrenSmile01
           SET
               RunCountLog = LOG(RaceResultByChildrenSmile01.RunCount + 1),
               HitCount1Log = LOG(RaceResultByChildrenSmile01.HitCount1 + 1),
               HitCount12Log = LOG(RaceResultByChildrenSmile01.HitCount12 + 1),
               HitCount123Log = LOG(RaceResultByChildrenSmile01.HitCount123 + 1),
               TS2 = GETDATE()
         FROM RaceResultByChildrenSmile01
         WHERE RaceResultByChildrenSmile01.RaceId = @RaceId
               AND RaceResultByChildrenSmile01.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------  
         COMMIT TRANSACTION;
         RETURN @Return;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenSmile02]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenSmile02]
	@RaceId [nchar](20),
	@KettoNum [nchar](10)
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenSmile02
         --------------------------------------------------------------------------------
         DELETE RaceResultByChildrenSmile02
         FROM RaceResultByChildrenSmile02
         WHERE RaceResultByChildrenSmile02.RaceId = @RaceId
               AND RaceResultByChildrenSmile02.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenSmile02
         --------------------------------------------------------------------------------
         INSERT INTO RaceResultByChildrenSmile02
         (RaceId,
          KettoNum,
          SmileCd,
          RaceDate,
          RunCount,
          HitCount1,
          HitRate1,
          HitCount12,
          HitRate12,
          HitCount123,
          HitRate123,
          ExpectedValueWin,
          ExpectedValuePlace,
          TS
         )
                SELECT t1.RaceId,
                       t1.KettoNum,
                       t1.SmileCd,
                       Race.RaceDate,
                       t1.RunCount,
                       t1.HitCount1,
                       t1.HitRate1,
                       t1.HitCount12,
                       t1.HitRate12,
                       t1.HitCount123,
                       t1.HitRate123,
                       t1.ExpectedValueWin,
                       t1.ExpectedValuePlace,
                       GETDATE()
                FROM
                (
                    SELECT RaceHorse.RaceId,
                           RaceHorse.KettoNum,
                           Race.SmileCd,
                           SUM(RaceHorse_Child.RunCount) AS RunCount,
                           SUM(RaceHorse_Child.HitCount1) AS HitCount1,
                           SUM(RaceHorse_Child.HitCount1) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate1,
                           SUM(RaceHorse_Child.HitCount12) AS HitCount12,
                           SUM(RaceHorse_Child.HitCount12) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate12,
                           SUM(RaceHorse_Child.HitCount123) AS HitCount123,
                           SUM(RaceHorse_Child.HitCount123) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate123,
                           AVG(RaceHorseBet_Child.PayoffWin) AS ExpectedValueWin,
                           AVG(RaceHorseBet_Child.PayOffPlace) AS ExpectedValuePlace
                    FROM RaceResult
                         INNER JOIN RaceHorse
                         ON RaceHorse.RaceId = RaceResult.RaceId
                            AND RaceHorse.KettoNum = RaceResult.KettoNum
                         INNER JOIN Race
                         ON Race.RaceId = RaceHorse.RaceId
                         INNER JOIN Horse
                         ON Horse.KettoNum = RaceHorse.KettoNum
                         INNER JOIN Horse AS Horse_Child
                         ON Horse_Child.Ketto3InfoHansyokuNum2 = Horse.Ketto3InfoHansyokuNum2
                         INNER JOIN RaceHorse AS RaceHorse_Child
                         ON RaceHorse_Child.KettoNum = Horse_Child.KettoNum
                         INNER JOIN Race Race_Child
                         ON Race_Child.RaceId = RaceHorse_Child.RaceId
                         INNER JOIN RaceHorseBet AS RaceHorseBet_Child
                         ON RaceHorseBet_Child.RaceId = RaceHorse_Child.RaceId
                            AND RaceHorseBet_Child.KettoNum = RaceHorse_Child.KettoNum
                    WHERE Race_Child.IsNormal = 1
                          AND RaceHorse_Child.IsNormal = 1
                          AND Race.RaceDate > Race_Child.RaceDate
                          AND Race.SmileCd = Race_Child.SmileCd
                          AND RaceResult.RaceId = @RaceId
                          AND RaceResult.KettoNum = @KettoNum
                    GROUP BY RaceHorse.RaceId,
                             RaceHorse.KettoNum,
                             Race.SmileCd
                ) AS t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId;
         SET @Return = @@ROWCOUNT;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenSmile02
         --------------------------------------------------------------------------------
         UPDATE RaceResultByChildrenSmile02
           SET
               RunCountLog = LOG(RaceResultByChildrenSmile02.RunCount + 1),
               HitCount1Log = LOG(RaceResultByChildrenSmile02.HitCount1 + 1),
               HitCount12Log = LOG(RaceResultByChildrenSmile02.HitCount12 + 1),
               HitCount123Log = LOG(RaceResultByChildrenSmile02.HitCount123 + 1),
               TS2 = GETDATE()
         FROM RaceResultByChildrenSmile02
         WHERE RaceResultByChildrenSmile02.RaceId = @RaceId
               AND RaceResultByChildrenSmile02.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------  
         COMMIT TRANSACTION;
         RETURN @Return;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenTrackCondition01]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenTrackCondition01]
	@RaceId [nchar](20),
	@KettoNum [nchar](10)
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackCondition01
         --------------------------------------------------------------------------------
         DELETE RaceResultByChildrenTrackCondition01
         FROM RaceResultByChildrenTrackCondition01
         WHERE RaceResultByChildrenTrackCondition01.RaceId = @RaceId
               AND RaceResultByChildrenTrackCondition01.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackCondition01
         --------------------------------------------------------------------------------
         INSERT INTO RaceResultByChildrenTrackCondition01
         (RaceId,
          KettoNum,
          TrackConditionCd,
          RaceDate,
          RunCount,
          HitCount1,
          HitRate1,
          HitCount12,
          HitRate12,
          HitCount123,
          HitRate123,
          ExpectedValueWin,
          ExpectedValuePlace,
          TS
         )
                SELECT t1.RaceId,
                       t1.KettoNum,
                       t1.TrackConditionCd,
                       Race.RaceDate,
                       t1.RunCount,
                       t1.HitCount1,
                       t1.HitRate1,
                       t1.HitCount12,
                       t1.HitRate12,
                       t1.HitCount123,
                       t1.HitRate123,
                       t1.ExpectedValueWin,
                       t1.ExpectedValuePlace,
                       GETDATE()
                FROM
                (
                    SELECT RaceHorse.RaceId,
                           RaceHorse.KettoNum,
                           Race.TrackConditionCd,
                           SUM(RaceHorse_Child.RunCount) AS RunCount,
                           SUM(RaceHorse_Child.HitCount1) AS HitCount1,
                           SUM(RaceHorse_Child.HitCount1) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate1,
                           SUM(RaceHorse_Child.HitCount12) AS HitCount12,
                           SUM(RaceHorse_Child.HitCount12) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate12,
                           SUM(RaceHorse_Child.HitCount123) AS HitCount123,
                           SUM(RaceHorse_Child.HitCount123) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate123,
                           AVG(RaceHorseBet_Child.PayoffWin) AS ExpectedValueWin,
                           AVG(RaceHorseBet_Child.PayOffPlace) AS ExpectedValuePlace
                    FROM RaceResult
                         INNER JOIN RaceHorse
                         ON RaceHorse.RaceId = RaceResult.RaceId
                            AND RaceHorse.KettoNum = RaceResult.KettoNum
                         INNER JOIN Race
                         ON Race.RaceId = RaceHorse.RaceId
                         INNER JOIN Horse
                         ON Horse.KettoNum = RaceHorse.KettoNum
                         INNER JOIN Horse AS Horse_Child
                         ON Horse_Child.Ketto3InfoHansyokuNum1 = Horse.Ketto3InfoHansyokuNum1
                         INNER JOIN RaceHorse AS RaceHorse_Child
                         ON RaceHorse_Child.KettoNum = Horse_Child.KettoNum
                         INNER JOIN Race Race_Child
                         ON Race_Child.RaceId = RaceHorse_Child.RaceId
                         INNER JOIN RaceHorseBet AS RaceHorseBet_Child
                         ON RaceHorseBet_Child.RaceId = RaceHorse_Child.RaceId
                            AND RaceHorseBet_Child.KettoNum = RaceHorse_Child.KettoNum
                    WHERE Race_Child.IsNormal = 1
                          AND RaceHorse_Child.IsNormal = 1
                          AND Race.RaceDate > Race_Child.RaceDate
                          AND Race.TrackConditionCd = Race_Child.TrackConditionCd
                          AND RaceResult.RaceId = @RaceId
                          AND RaceResult.KettoNum = @KettoNum
                    GROUP BY RaceHorse.RaceId,
                             RaceHorse.KettoNum,
                             Race.TrackConditionCd
                ) AS t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId;
         SET @Return = @@ROWCOUNT;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackCondition01
         --------------------------------------------------------------------------------
         UPDATE RaceResultByChildrenTrackCondition01
           SET
               RunCountLog = LOG(RaceResultByChildrenTrackCondition01.RunCount + 1),
               HitCount1Log = LOG(RaceResultByChildrenTrackCondition01.HitCount1 + 1),
               HitCount12Log = LOG(RaceResultByChildrenTrackCondition01.HitCount12 + 1),
               HitCount123Log = LOG(RaceResultByChildrenTrackCondition01.HitCount123 + 1),
               TS2 = GETDATE()
         FROM RaceResultByChildrenTrackCondition01
         WHERE RaceResultByChildrenTrackCondition01.RaceId = @RaceId
               AND RaceResultByChildrenTrackCondition01.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------  
         COMMIT TRANSACTION;
         RETURN @Return;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenTrackCondition02]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenTrackCondition02]
	@RaceId [nchar](20),
	@KettoNum [nchar](10)
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackCondition02
         --------------------------------------------------------------------------------
         DELETE RaceResultByChildrenTrackCondition02
         FROM RaceResultByChildrenTrackCondition02
         WHERE RaceResultByChildrenTrackCondition02.RaceId = @RaceId
               AND RaceResultByChildrenTrackCondition02.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackCondition02
         --------------------------------------------------------------------------------
         INSERT INTO RaceResultByChildrenTrackCondition02
         (RaceId,
          KettoNum,
          TrackConditionCd,
          RaceDate,
          RunCount,
          HitCount1,
          HitRate1,
          HitCount12,
          HitRate12,
          HitCount123,
          HitRate123,
          ExpectedValueWin,
          ExpectedValuePlace,
          TS
         )
                SELECT t1.RaceId,
                       t1.KettoNum,
                       t1.TrackConditionCd,
                       Race.RaceDate,
                       t1.RunCount,
                       t1.HitCount1,
                       t1.HitRate1,
                       t1.HitCount12,
                       t1.HitRate12,
                       t1.HitCount123,
                       t1.HitRate123,
                       t1.ExpectedValueWin,
                       t1.ExpectedValuePlace,
                       GETDATE()
                FROM
                (
                    SELECT RaceHorse.RaceId,
                           RaceHorse.KettoNum,
                           Race.TrackConditionCd,
                           SUM(RaceHorse_Child.RunCount) AS RunCount,
                           SUM(RaceHorse_Child.HitCount1) AS HitCount1,
                           SUM(RaceHorse_Child.HitCount1) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate1,
                           SUM(RaceHorse_Child.HitCount12) AS HitCount12,
                           SUM(RaceHorse_Child.HitCount12) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate12,
                           SUM(RaceHorse_Child.HitCount123) AS HitCount123,
                           SUM(RaceHorse_Child.HitCount123) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate123,
                           AVG(RaceHorseBet_Child.PayoffWin) AS ExpectedValueWin,
                           AVG(RaceHorseBet_Child.PayOffPlace) AS ExpectedValuePlace
                    FROM RaceResult
                         INNER JOIN RaceHorse
                         ON RaceHorse.RaceId = RaceResult.RaceId
                            AND RaceHorse.KettoNum = RaceResult.KettoNum
                         INNER JOIN Race
                         ON Race.RaceId = RaceHorse.RaceId
                         INNER JOIN Horse
                         ON Horse.KettoNum = RaceHorse.KettoNum
                         INNER JOIN Horse AS Horse_Child
                         ON Horse_Child.Ketto3InfoHansyokuNum2 = Horse.Ketto3InfoHansyokuNum2
                         INNER JOIN RaceHorse AS RaceHorse_Child
                         ON RaceHorse_Child.KettoNum = Horse_Child.KettoNum
                         INNER JOIN Race Race_Child
                         ON Race_Child.RaceId = RaceHorse_Child.RaceId
                         INNER JOIN RaceHorseBet AS RaceHorseBet_Child
                         ON RaceHorseBet_Child.RaceId = RaceHorse_Child.RaceId
                            AND RaceHorseBet_Child.KettoNum = RaceHorse_Child.KettoNum
                    WHERE Race_Child.IsNormal = 1
                          AND RaceHorse_Child.IsNormal = 1
                          AND Race.RaceDate > Race_Child.RaceDate
                          AND Race.TrackConditionCd = Race_Child.TrackConditionCd
                          AND RaceResult.RaceId = @RaceId
                          AND RaceResult.KettoNum = @KettoNum
                    GROUP BY RaceHorse.RaceId,
                             RaceHorse.KettoNum,
                             Race.TrackConditionCd
                ) AS t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId;
         SET @Return = @@ROWCOUNT;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackCondition02
         --------------------------------------------------------------------------------
         UPDATE RaceResultByChildrenTrackCondition02
           SET
               RunCountLog = LOG(RaceResultByChildrenTrackCondition02.RunCount + 1),
               HitCount1Log = LOG(RaceResultByChildrenTrackCondition02.HitCount1 + 1),
               HitCount12Log = LOG(RaceResultByChildrenTrackCondition02.HitCount12 + 1),
               HitCount123Log = LOG(RaceResultByChildrenTrackCondition02.HitCount123 + 1),
               TS2 = GETDATE()
         FROM RaceResultByChildrenTrackCondition02
         WHERE RaceResultByChildrenTrackCondition02.RaceId = @RaceId
               AND RaceResultByChildrenTrackCondition02.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------  
         COMMIT TRANSACTION;
         RETURN @Return;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenTrackType01]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenTrackType01]
	@RaceId [nchar](20),
	@KettoNum [nchar](10)
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackType01
         --------------------------------------------------------------------------------
         DELETE RaceResultByChildrenTrackType01
         FROM RaceResultByChildrenTrackType01
         WHERE RaceResultByChildrenTrackType01.RaceId = @RaceId
               AND RaceResultByChildrenTrackType01.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackType01
         --------------------------------------------------------------------------------
         INSERT INTO RaceResultByChildrenTrackType01
         (RaceId,
          KettoNum,
          TrackTypeCd,
          RaceDate,
          RunCount,
          HitCount1,
          HitRate1,
          HitCount12,
          HitRate12,
          HitCount123,
          HitRate123,
          ExpectedValueWin,
          ExpectedValuePlace,
          TS
         )
                SELECT t1.RaceId,
                       t1.KettoNum,
                       t1.TrackTypeCd,
                       Race.RaceDate,
                       t1.RunCount,
                       t1.HitCount1,
                       t1.HitRate1,
                       t1.HitCount12,
                       t1.HitRate12,
                       t1.HitCount123,
                       t1.HitRate123,
                       t1.ExpectedValueWin,
                       t1.ExpectedValuePlace,
                       GETDATE()
                FROM
                (
                    SELECT RaceHorse.RaceId,
                           RaceHorse.KettoNum,
                           Race.TrackTypeCd,
                           SUM(RaceHorse_Child.RunCount) AS RunCount,
                           SUM(RaceHorse_Child.HitCount1) AS HitCount1,
                           SUM(RaceHorse_Child.HitCount1) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate1,
                           SUM(RaceHorse_Child.HitCount12) AS HitCount12,
                           SUM(RaceHorse_Child.HitCount12) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate12,
                           SUM(RaceHorse_Child.HitCount123) AS HitCount123,
                           SUM(RaceHorse_Child.HitCount123) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate123,
                           AVG(RaceHorseBet_Child.PayoffWin) AS ExpectedValueWin,
                           AVG(RaceHorseBet_Child.PayOffPlace) AS ExpectedValuePlace
                    FROM RaceResult
                         INNER JOIN RaceHorse
                         ON RaceHorse.RaceId = RaceResult.RaceId
                            AND RaceHorse.KettoNum = RaceResult.KettoNum
                         INNER JOIN Race
                         ON Race.RaceId = RaceHorse.RaceId
                         INNER JOIN Horse
                         ON Horse.KettoNum = RaceHorse.KettoNum
                         INNER JOIN Horse AS Horse_Child
                         ON Horse_Child.Ketto3InfoHansyokuNum1 = Horse.Ketto3InfoHansyokuNum1
                         INNER JOIN RaceHorse AS RaceHorse_Child
                         ON RaceHorse_Child.KettoNum = Horse_Child.KettoNum
                         INNER JOIN Race Race_Child
                         ON Race_Child.RaceId = RaceHorse_Child.RaceId
                         INNER JOIN RaceHorseBet AS RaceHorseBet_Child
                         ON RaceHorseBet_Child.RaceId = RaceHorse_Child.RaceId
                            AND RaceHorseBet_Child.KettoNum = RaceHorse_Child.KettoNum
                    WHERE Race_Child.IsNormal = 1
                          AND RaceHorse_Child.IsNormal = 1
                          AND Race.RaceDate > Race_Child.RaceDate
                          AND Race.TrackTypeCd = Race_Child.TrackTypeCd
                          AND RaceResult.RaceId = @RaceId
                          AND RaceResult.KettoNum = @KettoNum
                    GROUP BY RaceHorse.RaceId,
                             RaceHorse.KettoNum,
                             Race.TrackTypeCd
                ) AS t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId;
         SET @Return = @@ROWCOUNT;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackType01
         --------------------------------------------------------------------------------
         UPDATE RaceResultByChildrenTrackType01
           SET
               RunCountLog = LOG(RaceResultByChildrenTrackType01.RunCount + 1),
               HitCount1Log = LOG(RaceResultByChildrenTrackType01.HitCount1 + 1),
               HitCount12Log = LOG(RaceResultByChildrenTrackType01.HitCount12 + 1),
               HitCount123Log = LOG(RaceResultByChildrenTrackType01.HitCount123 + 1),
               TS2 = GETDATE()
         FROM RaceResultByChildrenTrackType01
         WHERE RaceResultByChildrenTrackType01.RaceId = @RaceId
               AND RaceResultByChildrenTrackType01.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------  
         COMMIT TRANSACTION;
         RETURN @Return;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenTrackType02]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RaceResult_InsertUpdate_RaceResultByChildrenTrackType02]
	@RaceId [nchar](20),
	@KettoNum [nchar](10)
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackType02
         --------------------------------------------------------------------------------
         DELETE RaceResultByChildrenTrackType02
         FROM RaceResultByChildrenTrackType02
         WHERE RaceResultByChildrenTrackType02.RaceId = @RaceId
               AND RaceResultByChildrenTrackType02.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackType02
         --------------------------------------------------------------------------------
         INSERT INTO RaceResultByChildrenTrackType02
         (RaceId,
          KettoNum,
          TrackTypeCd,
          RaceDate,
          RunCount,
          HitCount1,
          HitRate1,
          HitCount12,
          HitRate12,
          HitCount123,
          HitRate123,
          ExpectedValueWin,
          ExpectedValuePlace,
          TS
         )
                SELECT t1.RaceId,
                       t1.KettoNum,
                       t1.TrackTypeCd,
                       Race.RaceDate,
                       t1.RunCount,
                       t1.HitCount1,
                       t1.HitRate1,
                       t1.HitCount12,
                       t1.HitRate12,
                       t1.HitCount123,
                       t1.HitRate123,
                       t1.ExpectedValueWin,
                       t1.ExpectedValuePlace,
                       GETDATE()
                FROM
                (
                    SELECT RaceHorse.RaceId,
                           RaceHorse.KettoNum,
                           Race.TrackTypeCd,
                           SUM(RaceHorse_Child.RunCount) AS RunCount,
                           SUM(RaceHorse_Child.HitCount1) AS HitCount1,
                           SUM(RaceHorse_Child.HitCount1) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate1,
                           SUM(RaceHorse_Child.HitCount12) AS HitCount12,
                           SUM(RaceHorse_Child.HitCount12) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate12,
                           SUM(RaceHorse_Child.HitCount123) AS HitCount123,
                           SUM(RaceHorse_Child.HitCount123) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate123,
                           AVG(RaceHorseBet_Child.PayoffWin) AS ExpectedValueWin,
                           AVG(RaceHorseBet_Child.PayOffPlace) AS ExpectedValuePlace
                    FROM RaceResult
                         INNER JOIN RaceHorse
                         ON RaceHorse.RaceId = RaceResult.RaceId
                            AND RaceHorse.KettoNum = RaceResult.KettoNum
                         INNER JOIN Race
                         ON Race.RaceId = RaceHorse.RaceId
                         INNER JOIN Horse
                         ON Horse.KettoNum = RaceHorse.KettoNum
                         INNER JOIN Horse AS Horse_Child
                         ON Horse_Child.Ketto3InfoHansyokuNum2 = Horse.Ketto3InfoHansyokuNum2
                         INNER JOIN RaceHorse AS RaceHorse_Child
                         ON RaceHorse_Child.KettoNum = Horse_Child.KettoNum
                         INNER JOIN Race Race_Child
                         ON Race_Child.RaceId = RaceHorse_Child.RaceId
                         INNER JOIN RaceHorseBet AS RaceHorseBet_Child
                         ON RaceHorseBet_Child.RaceId = RaceHorse_Child.RaceId
                            AND RaceHorseBet_Child.KettoNum = RaceHorse_Child.KettoNum
                    WHERE Race_Child.IsNormal = 1
                          AND RaceHorse_Child.IsNormal = 1
                          AND Race.RaceDate > Race_Child.RaceDate
                          AND Race.TrackTypeCd = Race_Child.TrackTypeCd
                          AND RaceResult.RaceId = @RaceId
                          AND RaceResult.KettoNum = @KettoNum
                    GROUP BY RaceHorse.RaceId,
                             RaceHorse.KettoNum,
                             Race.TrackTypeCd
                ) AS t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId;
         SET @Return = @@ROWCOUNT;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackType02
         --------------------------------------------------------------------------------
         UPDATE RaceResultByChildrenTrackType02
           SET
               RunCountLog = LOG(RaceResultByChildrenTrackType02.RunCount + 1),
               HitCount1Log = LOG(RaceResultByChildrenTrackType02.HitCount1 + 1),
               HitCount12Log = LOG(RaceResultByChildrenTrackType02.HitCount12 + 1),
               HitCount123Log = LOG(RaceResultByChildrenTrackType02.HitCount123 + 1),
               TS2 = GETDATE()
         FROM RaceResultByChildrenTrackType02
         WHERE RaceResultByChildrenTrackType02.RaceId = @RaceId
               AND RaceResultByChildrenTrackType02.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------  
         COMMIT TRANSACTION;
         RETURN @Return;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_RaceResult_InsertUpdate_RaceResultByMyJockyJyoken]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RaceResult_InsertUpdate_RaceResultByMyJockyJyoken]
	@RaceId [nchar](20),
	@KettoNum [nchar](10)
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- RaceResultByMyJockyJyoken
         --------------------------------------------------------------------------------
         DELETE RaceResultByMyJockyJyoken
         FROM RaceResultByMyJockyJyoken
         WHERE RaceResultByMyJockyJyoken.RaceId = @RaceId
               AND RaceResultByMyJockyJyoken.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- RaceResultByMyJockyJyoken
         --------------------------------------------------------------------------------
         INSERT INTO RaceResultByMyJockyJyoken
         (RaceId,
          KettoNum,
          JyokenCd5,
          RaceDate,
          KisyuCode,
          RunCount,
          HitCount1,
          HitRate1,
          HitCount12,
          HitRate12,
          HitCount123,
          HitRate123,
          ExpectedValueWin,
          ExpectedValuePlace,
          TS
         )
                SELECT t1.RaceId,
                       t1.KettoNum,
                       t1.JyokenCd5,
                       Race.RaceDate,
                       RaceHorse.KisyuCode,
                       t1.RunCount,
                       t1.HitCount1,
                       t1.HitRate1,
                       t1.HitCount12,
                       t1.HitRate12,
                       t1.HitCount123,
                       t1.HitRate123,
                       t1.ExpectedValueWin,
                       t1.ExpectedValuePlace,
                       GETDATE()
                FROM
                (
                    SELECT RaceHorse.RaceId,
                           RaceHorse.KettoNum,
                           Race.JyokenCd5,
                           SUM(RaceHorse_MyHistory.RunCount) AS RunCount,
                           SUM(RaceHorse_MyHistory.HitCount1) AS HitCount1,
                           SUM(RaceHorse_MyHistory.HitCount1) / NULLIF(SUM(RaceHorse_MyHistory.RunCount), 0) AS HitRate1,
                           SUM(RaceHorse_MyHistory.HitCount12) AS HitCount12,
                           SUM(RaceHorse_MyHistory.HitCount12) / NULLIF(SUM(RaceHorse_MyHistory.RunCount), 0) AS HitRate12,
                           SUM(RaceHorse_MyHistory.HitCount123) AS HitCount123,
                           SUM(RaceHorse_MyHistory.HitCount123) / NULLIF(SUM(RaceHorse_MyHistory.RunCount), 0) AS HitRate123,
                           AVG(RaceHorseBet_MyHistory.PayoffWin) AS ExpectedValueWin,
                           AVG(RaceHorseBet_MyHistory.PayOffPlace) AS ExpectedValuePlace
                    FROM RaceResult
                         INNER JOIN RaceHorse
                         ON RaceHorse.RaceId = RaceResult.RaceId
                            AND RaceHorse.KettoNum = RaceResult.KettoNum
                         INNER JOIN Race
                         ON Race.RaceId = RaceHorse.RaceId
                         INNER JOIN RaceHorse AS RaceHorse_MyHistory
                         ON RaceHorse_MyHistory.KisyuCode = RaceHorse.KisyuCode
                         INNER JOIN Race Race_MyHistory
                         ON Race_MyHistory.RaceId = RaceHorse_MyHistory.RaceId
                         INNER JOIN RaceHorseBet AS RaceHorseBet_MyHistory
                         ON RaceHorseBet_MyHistory.RaceId = RaceHorse_MyHistory.RaceId
                            AND RaceHorseBet_MyHistory.KettoNum = RaceHorse_MyHistory.KettoNum
                    WHERE Race_MyHistory.IsNormal = 1
                          AND RaceHorse_MyHistory.IsNormal = 1
                          AND RaceHorse.RaceDate > RaceHorse_MyHistory.RaceDate
                          AND Race.JyokenCd5 = Race_MyHistory.JyokenCd5
                          AND RaceResult.RaceId = @RaceId
                          AND RaceResult.KettoNum = @KettoNum
                    GROUP BY RaceHorse.RaceId,
                             RaceHorse.KettoNum,
                             Race.JyokenCd5
                ) AS t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId
                INNER JOIN RaceHorse
                ON RaceHorse.RaceId = t1.RaceId
                   AND RaceHorse.KettoNum = t1.KettoNum;
         SET @Return = @@ROWCOUNT;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------  
         COMMIT TRANSACTION;
         RETURN @Return;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_RaceResult_InsertUpdate_RaceResultByMyJockyJyokenGrade]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RaceResult_InsertUpdate_RaceResultByMyJockyJyokenGrade]
	@RaceId [nchar](20),
	@KettoNum [nchar](10)
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- RaceResultByMyJockyJyokenGrade
         --------------------------------------------------------------------------------
         DELETE RaceResultByMyJockyJyokenGrade
         FROM RaceResultByMyJockyJyokenGrade
         WHERE RaceResultByMyJockyJyokenGrade.RaceId = @RaceId
               AND RaceResultByMyJockyJyokenGrade.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- RaceResultByMyJockyJyokenGrade
         --------------------------------------------------------------------------------
         INSERT INTO RaceResultByMyJockyJyokenGrade
         (RaceId,
          KettoNum,
          JyokenCd5,
          GradeCd,
          RaceDate,
          KisyuCode,
          RunCount,
          HitCount1,
          HitRate1,
          HitCount12,
          HitRate12,
          HitCount123,
          HitRate123,
          ExpectedValueWin,
          ExpectedValuePlace,
          TS
         )
                SELECT t1.RaceId,
                       t1.KettoNum,
                       t1.JyokenCd5,
                       t1.GradeCd,
                       Race.RaceDate,
                       RaceHorse.KisyuCode,
                       t1.RunCount,
                       t1.HitCount1,
                       t1.HitRate1,
                       t1.HitCount12,
                       t1.HitRate12,
                       t1.HitCount123,
                       t1.HitRate123,
                       t1.ExpectedValueWin,
                       t1.ExpectedValuePlace,
                       GETDATE()
                FROM
                (
                    SELECT RaceHorse.RaceId,
                           RaceHorse.KettoNum,
                           Race.JyokenCd5,
                           Race.GradeCd,
                           SUM(RaceHorse_MyHistory.RunCount) AS RunCount,
                           SUM(RaceHorse_MyHistory.HitCount1) AS HitCount1,
                           SUM(RaceHorse_MyHistory.HitCount1) / NULLIF(SUM(RaceHorse_MyHistory.RunCount), 0) AS HitRate1,
                           SUM(RaceHorse_MyHistory.HitCount12) AS HitCount12,
                           SUM(RaceHorse_MyHistory.HitCount12) / NULLIF(SUM(RaceHorse_MyHistory.RunCount), 0) AS HitRate12,
                           SUM(RaceHorse_MyHistory.HitCount123) AS HitCount123,
                           SUM(RaceHorse_MyHistory.HitCount123) / NULLIF(SUM(RaceHorse_MyHistory.RunCount), 0) AS HitRate123,
                           AVG(RaceHorseBet_MyHistory.PayoffWin) AS ExpectedValueWin,
                           AVG(RaceHorseBet_MyHistory.PayOffPlace) AS ExpectedValuePlace
                    FROM RaceResult
                         INNER JOIN RaceHorse
                         ON RaceHorse.RaceId = RaceResult.RaceId
                            AND RaceHorse.KettoNum = RaceResult.KettoNum
                         INNER JOIN Race
                         ON Race.RaceId = RaceHorse.RaceId
                         INNER JOIN RaceHorse AS RaceHorse_MyHistory
                         ON RaceHorse_MyHistory.KisyuCode = RaceHorse.KisyuCode
                         INNER JOIN Race Race_MyHistory
                         ON Race_MyHistory.RaceId = RaceHorse_MyHistory.RaceId
                         INNER JOIN RaceHorseBet AS RaceHorseBet_MyHistory
                         ON RaceHorseBet_MyHistory.RaceId = RaceHorse_MyHistory.RaceId
                            AND RaceHorseBet_MyHistory.KettoNum = RaceHorse_MyHistory.KettoNum
                    WHERE Race_MyHistory.IsNormal = 1
                          AND RaceHorse_MyHistory.IsNormal = 1
                          AND RaceHorse.RaceDate > RaceHorse_MyHistory.RaceDate
                          AND Race.JyokenCd5 = Race_MyHistory.JyokenCd5
                          AND Race.GradeCd = Race_MyHistory.GradeCd
                          AND RaceResult.RaceId = @RaceId
                          AND RaceResult.KettoNum = @KettoNum
                    GROUP BY RaceHorse.RaceId,
                             RaceHorse.KettoNum,
                             Race.JyokenCd5,
                             Race.GradeCd
                ) AS t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId
                INNER JOIN RaceHorse
                ON RaceHorse.RaceId = t1.RaceId
                   AND RaceHorse.KettoNum = t1.KettoNum;
         SET @Return = @@ROWCOUNT;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------  
         COMMIT TRANSACTION;
         RETURN @Return;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_RaceResult_InsertUpdate_RaceResultByParents01]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RaceResult_InsertUpdate_RaceResultByParents01]
	@RaceId [nchar](20),
	@KettoNum [nchar](10)
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- RaceResultByParents01
         --------------------------------------------------------------------------------
         DELETE RaceResultByParents01
         FROM RaceResultByParents01
         WHERE RaceResultByParents01.RaceId = @RaceId
               AND RaceResultByParents01.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- RaceResultByParents01
         --------------------------------------------------------------------------------
         INSERT INTO RaceResultByParents01
         (RaceId,
          KettoNum,
          RaceDate,
          RunCount,
          HitCount1,
          HitRate1,
          HitCount12,
          HitRate12,
          HitCount123,
          HitRate123,
          ExpectedValueWin,
          ExpectedValuePlace,
          TS
         )
                SELECT t1.RaceId,
                       t1.KettoNum,
                       Race.RaceDate,
                       t1.RunCount,
                       t1.HitCount1,
                       t1.HitRate1,
                       t1.HitCount12,
                       t1.HitRate12,
                       t1.HitCount123,
                       t1.HitRate123,
                       t1.ExpectedValueWin,
                       t1.ExpectedValuePlace,
                       GETDATE()
                FROM
                (
                    SELECT RaceHorse.RaceId,
                           RaceHorse.KettoNum,
                           SUM(RaceHorse_Parent.RunCount) AS RunCount,
                           SUM(RaceHorse_Parent.HitCount1) AS HitCount1,
                           SUM(RaceHorse_Parent.HitCount1) / NULLIF(SUM(RaceHorse_Parent.RunCount), 0) AS HitRate1,
                           SUM(RaceHorse_Parent.HitCount12) AS HitCount12,
                           SUM(RaceHorse_Parent.HitCount12) / NULLIF(SUM(RaceHorse_Parent.RunCount), 0) AS HitRate12,
                           SUM(RaceHorse_Parent.HitCount123) AS HitCount123,
                           SUM(RaceHorse_Parent.HitCount123) / NULLIF(SUM(RaceHorse_Parent.RunCount), 0) AS HitRate123,
                           AVG(RaceHorseBet_Parent.PayoffWin) AS ExpectedValueWin,
                           AVG(RaceHorseBet_Parent.PayOffPlace) AS ExpectedValuePlace
                    FROM RaceHorse
                         INNER JOIN Race
                         ON Race.RaceId = RaceHorse.RaceId
                         INNER JOIN Horse
                         ON Horse.KettoNum = RaceHorse.KettoNum
                         INNER JOIN Hansyoku AS Hansyoku_Parent
                         ON Hansyoku_Parent.HansyokuNum = Horse.Ketto3InfoHansyokuNum1
                         INNER JOIN RaceHorse AS RaceHorse_Parent
                         ON RaceHorse_Parent.KettoNum = Hansyoku_Parent.KettoNum
                         INNER JOIN RaceHorseBet AS RaceHorseBet_Parent
                         ON RaceHorseBet_Parent.RaceId = RaceHorse_Parent.RaceId
                            AND RaceHorseBet_Parent.KettoNum = RaceHorse_Parent.KettoNum
                         INNER JOIN Race Race_Parent
                         ON Race_Parent.RaceId = RaceHorse_Parent.RaceId
                    WHERE Race_Parent.IsNormal = 1
                          AND RaceHorse_Parent.IsNormal = 1
                          AND RaceHorse.RaceDate > RaceHorse_Parent.RaceDate
                          AND RaceHorse.RaceId = @RaceId
                          AND RaceHorse.KettoNum = @KettoNum
                    GROUP BY RaceHorse.RaceId,
                             RaceHorse.KettoNum
                ) AS t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId;
         SET @Return = @@ROWCOUNT;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------  
         COMMIT TRANSACTION;
         RETURN @Return;
     END;
GO
/****** Object:  StoredProcedure [dbo].[usp_RaceResult_InsertUpdate_RaceResultByParents02]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_RaceResult_InsertUpdate_RaceResultByParents02]
	@RaceId [nchar](20),
	@KettoNum [nchar](10)
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- RaceResultByParents02
         --------------------------------------------------------------------------------
         DELETE RaceResultByParents02
         FROM RaceResultByParents02
         WHERE RaceResultByParents02.RaceId = @RaceId
               AND RaceResultByParents02.KettoNum = @KettoNum;
         --------------------------------------------------------------------------------
         -- RaceResultByParents02
         --------------------------------------------------------------------------------
         INSERT INTO RaceResultByParents02
         (RaceId,
          KettoNum,
          RaceDate,
          RunCount,
          HitCount1,
          HitRate1,
          HitCount12,
          HitRate12,
          HitCount123,
          HitRate123,
          ExpectedValueWin,
          ExpectedValuePlace,
          TS
         )
                SELECT t1.RaceId,
                       t1.KettoNum,
                       Race.RaceDate,
                       t1.RunCount,
                       t1.HitCount1,
                       t1.HitRate1,
                       t1.HitCount12,
                       t1.HitRate12,
                       t1.HitCount123,
                       t1.HitRate123,
                       t1.ExpectedValueWin,
                       t1.ExpectedValuePlace,
                       GETDATE()
                FROM
                (
                    SELECT RaceHorse.RaceId,
                           RaceHorse.KettoNum,
                           SUM(RaceHorse_Parent.RunCount) AS RunCount,
                           SUM(RaceHorse_Parent.HitCount1) AS HitCount1,
                           SUM(RaceHorse_Parent.HitCount1) / NULLIF(SUM(RaceHorse_Parent.RunCount), 0) AS HitRate1,
                           SUM(RaceHorse_Parent.HitCount12) AS HitCount12,
                           SUM(RaceHorse_Parent.HitCount12) / NULLIF(SUM(RaceHorse_Parent.RunCount), 0) AS HitRate12,
                           SUM(RaceHorse_Parent.HitCount123) AS HitCount123,
                           SUM(RaceHorse_Parent.HitCount123) / NULLIF(SUM(RaceHorse_Parent.RunCount), 0) AS HitRate123,
                           AVG(RaceHorseBet_Parent.PayoffWin) AS ExpectedValueWin,
                           AVG(RaceHorseBet_Parent.PayOffPlace) AS ExpectedValuePlace
                    FROM RaceHorse
                         INNER JOIN Race
                         ON Race.RaceId = RaceHorse.RaceId
                         INNER JOIN Horse
                         ON Horse.KettoNum = RaceHorse.KettoNum
                         INNER JOIN Hansyoku AS Hansyoku_Parent
                         ON Hansyoku_Parent.HansyokuNum = Horse.Ketto3InfoHansyokuNum2
                         INNER JOIN RaceHorse AS RaceHorse_Parent
                         ON RaceHorse_Parent.KettoNum = Hansyoku_Parent.KettoNum
                         INNER JOIN RaceHorseBet AS RaceHorseBet_Parent
                         ON RaceHorseBet_Parent.RaceId = RaceHorse_Parent.RaceId
                            AND RaceHorseBet_Parent.KettoNum = RaceHorse_Parent.KettoNum
                         INNER JOIN Race Race_Parent
                         ON Race_Parent.RaceId = RaceHorse_Parent.RaceId
                    WHERE Race_Parent.IsNormal = 1
                          AND RaceHorse_Parent.IsNormal = 1
                          AND RaceHorse.RaceDate > RaceHorse_Parent.RaceDate
                          AND RaceHorse.RaceId = @RaceId
                          AND RaceHorse.KettoNum = @KettoNum
                    GROUP BY RaceHorse.RaceId,
                             RaceHorse.KettoNum
                ) AS t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId;
         SET @Return = @@ROWCOUNT;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------  
         COMMIT TRANSACTION;
         RETURN @Return;
     END;
GO
/****** Object:  StoredProcedure [dbo].[uspa_Analysis_Bayesian_110_9_000_00_0000_123_02]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspa_Analysis_Bayesian_110_9_000_00_0000_123_02]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         BEGIN TRANSACTION;
         --------------------------------------------------------------------------------
         -- Comatibility Level : SQL Server 2012
         --------------------------------------------------------------------------------

/*
		ALTER DATABASE Jackpot
		SET COMPATIBILITY_LEVEL = 110;
*/

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
               PredictHitRate = NULL,
               PredictHitRateLogit = NULL,
               PredictPay = NULL,
               PredictPayLog = NULL,
               PredictRank = 91,
               PredictValue = -991,
               PredictValue00 = NULL,
               PredictValue00Rate = NULL,
               PredictValue00Temp = NULL,
               PredictValue00Sum = NULL,
               PredictValue01 = NULL,
               PredictValue01Rate = NULL,
               PredictValue01Temp = NULL,
               PredictValue01Sum = NULL,
               PredictValue02 = NULL,
               PredictValue02Rate = NULL,
               PredictValue02Temp = NULL,
               PredictValue02Sum = NULL,
               PredictValue03 = NULL,
               PredictValue03Rate = NULL,
               PredictValue03Temp = NULL,
               PredictValue03Sum = NULL,
               PredictValue04 = NULL,
               PredictValue04Rate = NULL,
               PredictValue04Temp = NULL,
               PredictValue04Sum = NULL,
               PredictValue05 = NULL,
               PredictValue05Rate = NULL,
               PredictValue05Temp = NULL,
               PredictValue05Sum = NULL,
               PredictValue06 = NULL,
               PredictValue06Rate = NULL,
               PredictValue06Temp = NULL,
               PredictValue06Sum = NULL,
               PredictValue07 = NULL,
               PredictValue07Rate = NULL,
               PredictValue07Temp = NULL,
               PredictValue07Sum = NULL,
               PredictValue08 = NULL,
               PredictValue08Rate = NULL,
               PredictValue08Temp = NULL,
               PredictValue08Sum = NULL,
               PredictValue09 = NULL,
               PredictValue09Rate = NULL,
               PredictValue09Temp = NULL,
               PredictValue09Sum = NULL,
               PredictValue10 = NULL,
               PredictValue10Rate = NULL,
               PredictValue10Temp = NULL,
               PredictValue10Sum = NULL,
               PredictValue11 = NULL,
               PredictValue11Rate = NULL,
               PredictValue11Temp = NULL,
               PredictValue11Sum = NULL,
               PredictValue12 = NULL,
               PredictValue12Rate = NULL,
               PredictValue12Temp = NULL,
               PredictValue12Sum = NULL,
               PredictValue13 = NULL,
               PredictValue13Rate = NULL,
               PredictValue13Temp = NULL,
               PredictValue13Sum = NULL,
               PredictValue14 = NULL,
               PredictValue14Rate = NULL,
               PredictValue14Temp = NULL,
               PredictValue14Sum = NULL,
               PredictValue15 = NULL,
               PredictValue15Rate = NULL,
               PredictValue15Temp = NULL,
               PredictValue15Sum = NULL,
               PredictValue16 = NULL,
               PredictValue16Rate = NULL,
               PredictValue16Temp = NULL,
               PredictValue16Sum = NULL,
               PredictValue17 = NULL,
               PredictValue17Rate = NULL,
               PredictValue17Temp = NULL,
               PredictValue17Sum = NULL,
               PredictValue18 = NULL,
               PredictValue18Rate = NULL,
               PredictValue18Temp = NULL,
               PredictValue18Sum = NULL,
               PredictValue19 = NULL,
               PredictValue19Rate = NULL,
               PredictValue19Temp = NULL,
               PredictValue19Sum = NULL,
               PredictValue20 = NULL,
               PredictValue20Rate = NULL,
               PredictValue20Temp = NULL,
               PredictValue20Sum = NULL,
               PredictValue21 = NULL,
               PredictValue21Rate = NULL,
               PredictValue21Temp = NULL,
               PredictValue21Sum = NULL,
               PredictValue22 = NULL,
               PredictValue22Rate = NULL,
               PredictValue22Temp = NULL,
               PredictValue22Sum = NULL,
               PredictValue23 = NULL,
               PredictValue23Rate = NULL,
               PredictValue23Temp = NULL,
               PredictValue23Sum = NULL,
               PredictValue24 = NULL,
               PredictValue24Rate = NULL,
               PredictValue24Temp = NULL,
               PredictValue24Sum = NULL,
               PredictValue25 = NULL,
               PredictValue25Rate = NULL,
               PredictValue25Temp = NULL,
               PredictValue25Sum = NULL,
               PredictValue26 = NULL,
               PredictValue26Rate = NULL,
               PredictValue26Temp = NULL,
               PredictValue26Sum = NULL,
               PredictValue27 = NULL,
               PredictValue27Rate = NULL,
               PredictValue27Temp = NULL,
               PredictValue27Sum = NULL,
               PredictValue28 = NULL,
               PredictValue28Rate = NULL,
               PredictValue28Temp = NULL,
               PredictValue28Sum = NULL,
               PredictValue29 = NULL,
               PredictValue29Rate = NULL,
               PredictValue29Temp = NULL,
               PredictValue29Sum = NULL,
               PredictValue30 = NULL,
               PredictValue30Rate = NULL,
               PredictValue30Temp = NULL,
               PredictValue30Sum = NULL,
               PredictDateTime = NULL,
               TS2 = GETDATE()
         FROM RaceHorseBet

/*
		    INNER JOIN Race
		    ON Race.RaceId = RaceHorseBet.RaceId
*/

         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Prior 1
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue00Temp = Race.SyussoTosu,
               PredictValue00Rate = Race.SyussoTosu,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Odds1ByWin 2
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue00Sum = t1.RaceNumSum
         FROM RaceHorseBet
              INNER JOIN
         (
             SELECT RaceHorseBet.RaceId,
                    SUM(RaceHorseBet.PredictValue00Temp) AS RaceNumSum
             FROM RaceHorseBet
             WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
             GROUP BY RaceHorseBet.RaceId
         ) AS t1
              ON t1.RaceId = RaceHorseBet.RaceId;
         --------------------------------------------------------------------------------
         -- Odds1ByWin 3
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue00 = PredictValue00Temp / NULLIF(PredictValue00Sum, 0),
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenCourseType01 1
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue01Temp = PredictValue00 * RaceResultByChildrenCourseType01.HitRate123,
               PredictValue01Rate = RaceResultByChildrenCourseType01.HitRate123,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenCourseType01
              ON RaceResultByChildrenCourseType01.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenCourseType01.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenCourseType01.CourseTypeCd = Race.CourseTypeCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenCourseType01 2
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue01Sum = t1.RaceNumSum
         FROM RaceHorseBet
              INNER JOIN
         (
             SELECT RaceHorseBet.RaceId,
                    SUM(RaceHorseBet.PredictValue01Temp) AS RaceNumSum
             FROM RaceHorseBet
             WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
             GROUP BY RaceHorseBet.RaceId
         ) AS t1
              ON t1.RaceId = RaceHorseBet.RaceId;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenCourseType01 3
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue01 = CASE
                                    WHEN RaceResultByChildrenCourseType01.RunCount = 0
                                    THEN PredictValue00
                                    ELSE PredictValue01Temp / NULLIF(PredictValue01Sum, 0)
                                END,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenCourseType01
              ON RaceResultByChildrenCourseType01.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenCourseType01.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenCourseType01.CourseTypeCd = Race.CourseTypeCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Step 4
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue01 = PredictValue00,
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PredictValue01Temp IS NULL;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenJyoken01 1
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue02Temp = PredictValue01 * RaceResultByChildrenJyoken01.HitRate123,
               PredictValue02Rate = RaceResultByChildrenJyoken01.HitRate123,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenJyoken01
              ON RaceResultByChildrenJyoken01.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenJyoken01.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenJyoken01.JyokenCd5 = Race.JyokenCd5
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenJyoken01 2
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue02Sum = t1.RaceNumSum
         FROM RaceHorseBet
              INNER JOIN
         (
             SELECT RaceHorseBet.RaceId,
                    SUM(RaceHorseBet.PredictValue02Temp) AS RaceNumSum
             FROM RaceHorseBet
             WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
             GROUP BY RaceHorseBet.RaceId
         ) AS t1
              ON t1.RaceId = RaceHorseBet.RaceId;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenJyoken01 3
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue02 = CASE
                                    WHEN RaceResultByChildrenJyoken01.RunCount = 0
                                    THEN PredictValue01
                                    ELSE PredictValue02Temp / NULLIF(PredictValue02Sum, 0)
                                END,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenJyoken01
              ON RaceResultByChildrenJyoken01.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenJyoken01.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenJyoken01.JyokenCd5 = Race.JyokenCd5
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Step 4
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue02 = PredictValue01,
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PredictValue02Temp IS NULL;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenSmile01 1
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue03Temp = PredictValue02 * RaceResultByChildrenSmile01.HitRate123,
               PredictValue03Rate = RaceResultByChildrenSmile01.HitRate123,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenSmile01
              ON RaceResultByChildrenSmile01.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenSmile01.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenSmile01.SmileCd = Race.SmileCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenSmile01 2
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue03Sum = t1.RaceNumSum
         FROM RaceHorseBet
              INNER JOIN
         (
             SELECT RaceHorseBet.RaceId,
                    SUM(RaceHorseBet.PredictValue03Temp) AS RaceNumSum
             FROM RaceHorseBet
             WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
             GROUP BY RaceHorseBet.RaceId
         ) AS t1
              ON t1.RaceId = RaceHorseBet.RaceId;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenSmile01 3
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue03 = CASE
                                    WHEN RaceResultByChildrenSmile01.RunCount = 0
                                    THEN PredictValue02
                                    ELSE PredictValue03Temp / NULLIF(PredictValue03Sum, 0)
                                END,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenSmile01
              ON RaceResultByChildrenSmile01.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenSmile01.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenSmile01.SmileCd = Race.SmileCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Step 4
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue03 = PredictValue02,
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PredictValue03Temp IS NULL;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackCondition01 1
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue04Temp = PredictValue03 * RaceResultByChildrenTrackCondition01.HitRate123,
               PredictValue04Rate = RaceResultByChildrenTrackCondition01.HitRate123,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenTrackCondition01
              ON RaceResultByChildrenTrackCondition01.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenTrackCondition01.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenTrackCondition01.TrackConditionCd = Race.TrackConditionCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackCondition01 2
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue04Sum = t1.RaceNumSum
         FROM RaceHorseBet
              INNER JOIN
         (
             SELECT RaceHorseBet.RaceId,
                    SUM(RaceHorseBet.PredictValue04Temp) AS RaceNumSum
             FROM RaceHorseBet
             WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
             GROUP BY RaceHorseBet.RaceId
         ) AS t1
              ON t1.RaceId = RaceHorseBet.RaceId;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackCondition01 3
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue04 = CASE
                                    WHEN RaceResultByChildrenTrackCondition01.RunCount = 0
                                    THEN PredictValue03
                                    ELSE PredictValue04Temp / NULLIF(PredictValue04Sum, 0)
                                END,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenTrackCondition01
              ON RaceResultByChildrenTrackCondition01.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenTrackCondition01.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenTrackCondition01.TrackConditionCd = Race.TrackConditionCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Step 4
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue04 = PredictValue04,
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PredictValue04Temp IS NULL;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackType01 1
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue05Temp = PredictValue04 * RaceResultByChildrenTrackType01.HitRate123,
               PredictValue05Rate = RaceResultByChildrenTrackType01.HitRate123,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenTrackType01
              ON RaceResultByChildrenTrackType01.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenTrackType01.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenTrackType01.TrackTypeCd = Race.TrackTypeCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackType01 2
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue05Sum = t1.RaceNumSum
         FROM RaceHorseBet
              INNER JOIN
         (
             SELECT RaceHorseBet.RaceId,
                    SUM(RaceHorseBet.PredictValue05Temp) AS RaceNumSum
             FROM RaceHorseBet
             WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
             GROUP BY RaceHorseBet.RaceId
         ) AS t1
              ON t1.RaceId = RaceHorseBet.RaceId;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackType01 3
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue05 = CASE
                                    WHEN RaceResultByChildrenTrackType01.RunCount = 0
                                    THEN PredictValue04
                                    ELSE PredictValue05Temp / NULLIF(PredictValue05Sum, 0)
                                END,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenTrackType01
              ON RaceResultByChildrenTrackType01.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenTrackType01.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenTrackType01.TrackTypeCd = Race.TrackTypeCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Step 4
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue05 = PredictValue04,
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PredictValue05Temp IS NULL;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenCourseType02 1
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue06Temp = PredictValue05 * RaceResultByChildrenCourseType02.HitRate123,
               PredictValue06Rate = RaceResultByChildrenCourseType02.HitRate123,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenCourseType02
              ON RaceResultByChildrenCourseType02.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenCourseType02.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenCourseType02.CourseTypeCd = Race.CourseTypeCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenCourseType02 2
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue06Sum = t1.RaceNumSum
         FROM RaceHorseBet
              INNER JOIN
         (
             SELECT RaceHorseBet.RaceId,
                    SUM(RaceHorseBet.PredictValue06Temp) AS RaceNumSum
             FROM RaceHorseBet
             WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
             GROUP BY RaceHorseBet.RaceId
         ) AS t1
              ON t1.RaceId = RaceHorseBet.RaceId;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenCourseType02 3
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue06 = CASE
                                    WHEN RaceResultByChildrenCourseType02.RunCount = 0
                                    THEN PredictValue05
                                    ELSE PredictValue06Temp / NULLIF(PredictValue06Sum, 0)
                                END,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenCourseType02
              ON RaceResultByChildrenCourseType02.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenCourseType02.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenCourseType02.CourseTypeCd = Race.CourseTypeCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Step 4
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue06 = PredictValue05,
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PredictValue06Temp IS NULL;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenJyoken02 1
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue07Temp = PredictValue06 * RaceResultByChildrenJyoken02.HitRate123,
               PredictValue07Rate = RaceResultByChildrenJyoken02.HitRate123,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenJyoken02
              ON RaceResultByChildrenJyoken02.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenJyoken02.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenJyoken02.JyokenCd5 = Race.JyokenCd5
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenJyoken02 2
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue07Sum = t1.RaceNumSum
         FROM RaceHorseBet
              INNER JOIN
         (
             SELECT RaceHorseBet.RaceId,
                    SUM(RaceHorseBet.PredictValue07Temp) AS RaceNumSum
             FROM RaceHorseBet
             WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
             GROUP BY RaceHorseBet.RaceId
         ) AS t1
              ON t1.RaceId = RaceHorseBet.RaceId;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenJyoken02 3
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue07 = CASE
                                    WHEN RaceResultByChildrenJyoken02.RunCount = 0
                                    THEN PredictValue06
                                    ELSE PredictValue07Temp / NULLIF(PredictValue07Sum, 0)
                                END,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenJyoken02
              ON RaceResultByChildrenJyoken02.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenJyoken02.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenJyoken02.JyokenCd5 = Race.JyokenCd5
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Step 4
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue07 = PredictValue06,
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PredictValue07Temp IS NULL;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenSmile02 1
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue08Temp = PredictValue07 * RaceResultByChildrenSmile02.HitRate123,
               PredictValue08Rate = RaceResultByChildrenSmile02.HitRate123,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenSmile02
              ON RaceResultByChildrenSmile02.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenSmile02.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenSmile02.SmileCd = Race.SmileCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenSmile02 2
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue08Sum = t1.RaceNumSum
         FROM RaceHorseBet
              INNER JOIN
         (
             SELECT RaceHorseBet.RaceId,
                    SUM(RaceHorseBet.PredictValue08Temp) AS RaceNumSum
             FROM RaceHorseBet
             WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
             GROUP BY RaceHorseBet.RaceId
         ) AS t1
              ON t1.RaceId = RaceHorseBet.RaceId;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenSmile02 3
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue08 = CASE
                                    WHEN RaceResultByChildrenSmile02.RunCount = 0
                                    THEN PredictValue07
                                    ELSE PredictValue08Temp / NULLIF(PredictValue08Sum, 0)
                                END,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenSmile02
              ON RaceResultByChildrenSmile02.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenSmile02.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenSmile02.SmileCd = Race.SmileCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Step 4
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue08 = PredictValue07,
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PredictValue08Temp IS NULL;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackCondition02 1
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue09Temp = PredictValue08 * RaceResultByChildrenTrackCondition02.HitRate123,
               PredictValue09Rate = RaceResultByChildrenTrackCondition02.HitRate123,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenTrackCondition02
              ON RaceResultByChildrenTrackCondition02.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenTrackCondition02.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenTrackCondition02.TrackConditionCd = Race.TrackConditionCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackCondition02 2
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue09Sum = t1.RaceNumSum
         FROM RaceHorseBet
              INNER JOIN
         (
             SELECT RaceHorseBet.RaceId,
                    SUM(RaceHorseBet.PredictValue09Temp) AS RaceNumSum
             FROM RaceHorseBet

/*
		    INNER JOIN Race
		    ON Race.RaceId = RaceHorseBet.RaceId	  
*/

             WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
             GROUP BY RaceHorseBet.RaceId
         ) AS t1
              ON t1.RaceId = RaceHorseBet.RaceId;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackCondition02 3
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue09 = CASE
                                    WHEN RaceResultByChildrenTrackCondition02.RunCount = 0
                                    THEN PredictValue08
                                    ELSE PredictValue09Temp / NULLIF(PredictValue09Sum, 0)
                                END,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenTrackCondition02
              ON RaceResultByChildrenTrackCondition02.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenTrackCondition02.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenTrackCondition02.TrackConditionCd = Race.TrackConditionCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Step 4
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue09 = PredictValue08,
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PredictValue09Temp IS NULL;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackType02 1
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue10Temp = PredictValue09 * RaceResultByChildrenTrackType02.HitRate123,
               PredictValue10Rate = RaceResultByChildrenTrackType02.HitRate123,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenTrackType02
              ON RaceResultByChildrenTrackType02.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenTrackType02.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenTrackType02.TrackTypeCd = Race.TrackTypeCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackType02 2
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue10Sum = t1.RaceNumSum
         FROM RaceHorseBet
              INNER JOIN
         (
             SELECT RaceHorseBet.RaceId,
                    SUM(RaceHorseBet.PredictValue10Temp) AS RaceNumSum
             FROM RaceHorseBet
             WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
             GROUP BY RaceHorseBet.RaceId
         ) AS t1
              ON t1.RaceId = RaceHorseBet.RaceId;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenTrackType02 3
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue10 = CASE
                                    WHEN RaceResultByChildrenTrackType02.RunCount = 0
                                    THEN PredictValue09
                                    ELSE PredictValue10Temp / NULLIF(PredictValue10Sum, 0)
                                END,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceResultByChildrenTrackType02
              ON RaceResultByChildrenTrackType02.RaceId = RaceHorseBet.RaceId
                 AND RaceResultByChildrenTrackType02.KettoNum = RaceHorseBet.KettoNum
                 AND RaceResultByChildrenTrackType02.TrackTypeCd = Race.TrackTypeCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Step 4
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue10 = PredictValue09,
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PredictValue10Temp IS NULL;
         --------------------------------------------------------------------------------
         -- ViewZBayesianByJyokenGradeSex 1
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue11Temp = PredictValue10 * ViewZBayesianByJyokenGradeSex.HitRate123,
               PredictValue11Rate = ViewZBayesianByJyokenGradeSex.HitRate123,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceHorse
              ON RaceHorse.RaceId = RaceHorseBet.RaceId
                 AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
              INNER JOIN ViewZBayesianByJyokenGradeSex
              ON ViewZBayesianByJyokenGradeSex.JyokenCd5 = Race.JyokenCd5
                 AND ViewZBayesianByJyokenGradeSex.GradeCd = Race.GradeCd
                 AND ViewZBayesianByJyokenGradeSex.SexCd = RaceHorse.SexCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- ViewZBayesianByJyokenGradeSex 2
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue11Sum = t1.RaceNumSum
         FROM RaceHorseBet
              INNER JOIN
         (
             SELECT RaceHorseBet.RaceId,
                    SUM(RaceHorseBet.PredictValue11Temp) AS RaceNumSum
             FROM RaceHorseBet
             WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
             GROUP BY RaceHorseBet.RaceId
         ) AS t1
              ON t1.RaceId = RaceHorseBet.RaceId;
         --------------------------------------------------------------------------------
         -- ViewZBayesianByJyokenGradeSex 3
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue11 = CASE
                                    WHEN ViewZBayesianByJyokenGradeSex.RunCount = 0
                                    THEN PredictValue10
                                    ELSE PredictValue11Temp / NULLIF(PredictValue11Sum, 0)
                                END,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceHorse
              ON RaceHorse.RaceId = RaceHorseBet.RaceId
                 AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
              INNER JOIN ViewZBayesianByJyokenGradeSex
              ON ViewZBayesianByJyokenGradeSex.JyokenCd5 = Race.JyokenCd5
                 AND ViewZBayesianByJyokenGradeSex.GradeCd = Race.GradeCd
                 AND ViewZBayesianByJyokenGradeSex.SexCd = RaceHorse.SexCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Step 4
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue11 = PredictValue10,
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PredictValue11Temp IS NULL;
         --------------------------------------------------------------------------------
         -- ViewZBayesianByJyokenGradeMinarai 1
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue12Temp = PredictValue11 * ViewZBayesianByJyokenGradeMinarai.HitRate123,
               PredictValue12Rate = ViewZBayesianByJyokenGradeMinarai.HitRate123,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceHorse
              ON RaceHorse.RaceId = RaceHorseBet.RaceId
                 AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
              INNER JOIN ViewZBayesianByJyokenGradeMinarai
              ON ViewZBayesianByJyokenGradeMinarai.JyokenCd5 = Race.JyokenCd5
                 AND ViewZBayesianByJyokenGradeMinarai.GradeCd = Race.GradeCd
                 AND ViewZBayesianByJyokenGradeMinarai.MinaraiCd = RaceHorse.MinaraiCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- ViewZBayesianByJyokenGradeMinarai 2
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue12Sum = t1.RaceNumSum
         FROM RaceHorseBet
              INNER JOIN
         (
             SELECT RaceHorseBet.RaceId,
                    SUM(RaceHorseBet.PredictValue12Temp) AS RaceNumSum
             FROM RaceHorseBet
             GROUP BY RaceHorseBet.RaceId
         ) AS t1
              ON t1.RaceId = RaceHorseBet.RaceId;
         --------------------------------------------------------------------------------
         -- ViewZBayesianByJyokenGradeMinarai 3
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue12 = CASE
                                    WHEN ViewZBayesianByJyokenGradeMinarai.RunCount = 0
                                    THEN PredictValue11
                                    ELSE PredictValue12Temp / NULLIF(PredictValue12Sum, 0)
                                END,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceHorse
              ON RaceHorse.RaceId = RaceHorseBet.RaceId
                 AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
              INNER JOIN ViewZBayesianByJyokenGradeMinarai
              ON ViewZBayesianByJyokenGradeMinarai.JyokenCd5 = Race.JyokenCd5
                 AND ViewZBayesianByJyokenGradeMinarai.GradeCd = Race.GradeCd
                 AND ViewZBayesianByJyokenGradeMinarai.MinaraiCd = RaceHorse.MinaraiCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Step 4
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue12 = PredictValue11,
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PredictValue12Temp IS NULL;
         --------------------------------------------------------------------------------
         -- ViewZBayesianByJyokenBlinker 1
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue13Temp = PredictValue12 * ViewZBayesianByJyokenBlinker.HitRate123,
               PredictValue13Rate = ViewZBayesianByJyokenBlinker.HitRate123,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceHorse
              ON RaceHorse.RaceId = RaceHorseBet.RaceId
                 AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
              INNER JOIN ViewZBayesianByJyokenBlinker
              ON ViewZBayesianByJyokenBlinker.JyokenCd5 = Race.JyokenCd5
                 AND ViewZBayesianByJyokenBlinker.IsBlinker = RaceHorse.IsBlinker
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- ViewZBayesianByJyokenBlinker 2
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue13Sum = t1.RaceNumSum
         FROM RaceHorseBet
              INNER JOIN
         (
             SELECT RaceHorseBet.RaceId,
                    SUM(RaceHorseBet.PredictValue13Temp) AS RaceNumSum
             FROM RaceHorseBet
             WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
             GROUP BY RaceHorseBet.RaceId
         ) AS t1
              ON t1.RaceId = RaceHorseBet.RaceId;
         --------------------------------------------------------------------------------
         -- ViewZBayesianByJyokenBlinker 3
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue13 = CASE
                                    WHEN ViewZBayesianByJyokenBlinker.RunCount = 0
                                    THEN PredictValue12
                                    ELSE PredictValue13Temp / NULLIF(PredictValue13Sum, 0)
                                END,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceHorse
              ON RaceHorse.RaceId = RaceHorseBet.RaceId
                 AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
              INNER JOIN ViewZBayesianByJyokenBlinker
              ON ViewZBayesianByJyokenBlinker.JyokenCd5 = Race.JyokenCd5
                 AND ViewZBayesianByJyokenBlinker.IsBlinker = RaceHorse.IsBlinker
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Step 4
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue13 = PredictValue12,
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PredictValue13Temp IS NULL;
         --------------------------------------------------------------------------------
         -- ViewZBayesianByUpDownByJyokenGrade 1
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue14Temp = PredictValue13 * ViewZBayesianByUpDownByJyokenGrade.HitRate123,
               PredictValue14Rate = ViewZBayesianByUpDownByJyokenGrade.HitRate123,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceHorse
              ON RaceHorse.RaceId = RaceHorseBet.RaceId
                 AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
              INNER JOIN ViewZBayesianByUpDownByJyokenGrade
              ON ViewZBayesianByUpDownByJyokenGrade.JyokenCd5 = Race.JyokenCd5
                 AND ViewZBayesianByUpDownByJyokenGrade.GradeCd = Race.GradeCd
                 AND ViewZBayesianByUpDownByJyokenGrade.Prev1JyokenCd5 = RaceHorse.Prev1JyokenCd5
                 AND ViewZBayesianByUpDownByJyokenGrade.Prev1GradeCd = RaceHorse.Prev1GradeCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- ViewZBayesianByUpDownByJyokenGrade 2
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue14Sum = t1.RaceNumSum
         FROM RaceHorseBet
              INNER JOIN
         (
             SELECT RaceHorseBet.RaceId,
                    SUM(RaceHorseBet.PredictValue14Temp) AS RaceNumSum
             FROM RaceHorseBet
             WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
             GROUP BY RaceHorseBet.RaceId
         ) AS t1
              ON t1.RaceId = RaceHorseBet.RaceId;
         --------------------------------------------------------------------------------
         -- ViewZBayesianByUpDownByJyokenGrade 3
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue14 = CASE
                                    WHEN ViewZBayesianByUpDownByJyokenGrade.RunCount = 0
                                    THEN PredictValue13
                                    ELSE PredictValue14Temp / NULLIF(PredictValue14Sum, 0)
                                END,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceHorse
              ON RaceHorse.RaceId = RaceHorseBet.RaceId
                 AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
              INNER JOIN ViewZBayesianByUpDownByJyokenGrade
              ON ViewZBayesianByUpDownByJyokenGrade.JyokenCd5 = Race.JyokenCd5
                 AND ViewZBayesianByUpDownByJyokenGrade.GradeCd = Race.GradeCd
                 AND ViewZBayesianByUpDownByJyokenGrade.Prev1JyokenCd5 = RaceHorse.Prev1JyokenCd5
                 AND ViewZBayesianByUpDownByJyokenGrade.Prev1GradeCd = RaceHorse.Prev1GradeCd
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Step 4
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue14 = PredictValue13,
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PredictValue14Temp IS NULL;
         --------------------------------------------------------------------------------
         -- ViewZBayesianByJyokenGradeJyuryoFutan 1
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue15Temp = PredictValue14 * ViewZBayesianByJyokenGradeJyuryoFutan.HitRate123,
               PredictValue15Rate = ViewZBayesianByJyokenGradeJyuryoFutan.HitRate123,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceHorse
              ON RaceHorse.RaceId = RaceHorseBet.RaceId
                 AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
              INNER JOIN ViewZBayesianByJyokenGradeJyuryoFutan
              ON ViewZBayesianByJyokenGradeJyuryoFutan.JyokenCd5 = Race.JyokenCd5
                 AND ViewZBayesianByJyokenGradeJyuryoFutan.GradeCd = Race.GradeCd
                 AND ViewZBayesianByJyokenGradeJyuryoFutan.JyuryoCd = Race.JyuryoCd
                 AND ViewZBayesianByJyokenGradeJyuryoFutan.Futan = RaceHorse.Futan
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- ViewZBayesianByJyokenGradeJyuryoFutan 2
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue15Sum = t1.RaceNumSum
         FROM RaceHorseBet
              INNER JOIN
         (
             SELECT RaceHorseBet.RaceId,
                    SUM(RaceHorseBet.PredictValue15Temp) AS RaceNumSum
             FROM RaceHorseBet
             WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
             GROUP BY RaceHorseBet.RaceId
         ) AS t1
              ON t1.RaceId = RaceHorseBet.RaceId;
         --------------------------------------------------------------------------------
         -- ViewZBayesianByJyokenGradeJyuryoFutan 3
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue15 = CASE
                                    WHEN ViewZBayesianByJyokenGradeJyuryoFutan.RunCount = 0
                                    THEN PredictValue14
                                    ELSE PredictValue15Temp / NULLIF(PredictValue15Sum, 0)
                                END,
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN Race
              ON Race.RaceId = RaceHorseBet.RaceId
              INNER JOIN RaceHorse
              ON RaceHorse.RaceId = RaceHorseBet.RaceId
                 AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
              INNER JOIN ViewZBayesianByJyokenGradeJyuryoFutan
              ON ViewZBayesianByJyokenGradeJyuryoFutan.JyokenCd5 = Race.JyokenCd5
                 AND ViewZBayesianByJyokenGradeJyuryoFutan.GradeCd = Race.GradeCd
                 AND ViewZBayesianByJyokenGradeJyuryoFutan.JyuryoCd = Race.JyuryoCd
                 AND ViewZBayesianByJyokenGradeJyuryoFutan.Futan = RaceHorse.Futan
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Step 4
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue15 = PredictValue14,
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PredictValue15Temp IS NULL;

/*
	    --------------------------------------------------------------------------------
	    -- RaceResultByParents01 1
	    --------------------------------------------------------------------------------
	    UPDATE RaceHorseBet
		 SET
			PredictValue16Temp = PredictValue15 * RaceResultByParents01.HitRate123,
			PredictValue16Rate = RaceResultByParents01.HitRate123,
			TS2 = GETDATE()
	    FROM RaceHorseBet
		    INNER JOIN RaceHorse
		    ON RaceHorse.RaceId = RaceHorseBet.RaceId
			  AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
		    INNER JOIN RaceResultByParents01
		    ON RaceResultByParents01.RaceId = RaceHorseBet.RaceId
				AND RaceResultByParents01.KettoNum = RaceHorseBet.KettoNum
	    WHERE  RaceHorseBet.RaceDate >= @RaceDateFrom
	    --------------------------------------------------------------------------------
	    -- RaceResultByParents01 2
	    --------------------------------------------------------------------------------
	    UPDATE RaceHorseBet
		 SET	PredictValue16Sum = t1.RaceNumSum
		 FROM RaceHorseBet
		 INNER JOIN
		(
		   SELECT RaceHorseBet.RaceId,
		 SUM(RaceHorseBet.PredictValue16Temp) AS RaceNumSum
	    		FROM RaceHorseBet
	    WHERE  RaceHorseBet.RaceDate >= @RaceDateFrom
		   GROUP BY RaceHorseBet.RaceId
	    ) AS t1
		    ON t1.RaceId = RaceHorseBet.RaceId
	    --------------------------------------------------------------------------------
	    -- RaceResultByParents01 3
	    --------------------------------------------------------------------------------
	    UPDATE RaceHorseBet
		 SET
			PredictValue16 = CASE
										WHEN RaceResultByParents01.RunCount = 0
										THEN PredictValue15
										ELSE PredictValue16Temp  / NULLIF(PredictValue16Sum,0)
										END,
			TS2 = GETDATE()
	    FROM RaceHorseBet
		    INNER JOIN RaceHorse
		    ON RaceHorse.RaceId = RaceHorseBet.RaceId
			  AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
		    INNER JOIN RaceResultByParents01
		    ON RaceResultByParents01.RaceId = RaceHorseBet.RaceId
				AND RaceResultByParents01.KettoNum = RaceHorseBet.KettoNum
	    WHERE  RaceHorseBet.RaceDate >= @RaceDateFrom
	    --------------------------------------------------------------------------------
	    -- Step 4
	    --------------------------------------------------------------------------------
	    UPDATE RaceHorseBet
		 SET
			PredictValue16 = PredictValue15,
			TS2 = GETDATE()
	    FROM RaceHorseBet
	    WHERE  RaceHorseBet.RaceDate >= @RaceDateFrom
			AND PredictValue16Temp IS NULL
	    --------------------------------------------------------------------------------
	    -- RaceResultByParents02 1
	    --------------------------------------------------------------------------------
	    UPDATE RaceHorseBet
		 SET
			PredictValue17Temp = PredictValue16 * RaceResultByParents02.HitRate123,
			PredictValue17Rate = RaceResultByParents02.HitRate123,
			TS2 = GETDATE()
	    FROM RaceHorseBet
		    INNER JOIN RaceHorse
		    ON RaceHorse.RaceId = RaceHorseBet.RaceId
			  AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
		    INNER JOIN RaceResultByParents02
		    ON RaceResultByParents02.RaceId = RaceHorseBet.RaceId
				AND RaceResultByParents02.KettoNum = RaceHorseBet.KettoNum
	    WHERE  RaceHorseBet.RaceDate >= @RaceDateFrom
	    --------------------------------------------------------------------------------
	    -- RaceResultByParents02 2
	    --------------------------------------------------------------------------------
	    UPDATE RaceHorseBet
		 SET	PredictValue17Sum = t1.RaceNumSum
		 FROM RaceHorseBet
		 INNER JOIN
		(
		   SELECT RaceHorseBet.RaceId,
		 SUM(RaceHorseBet.PredictValue17Temp) AS RaceNumSum
	    		FROM RaceHorseBet
	    WHERE  RaceHorseBet.RaceDate >= @RaceDateFrom
		   GROUP BY RaceHorseBet.RaceId
	    ) AS t1
		    ON t1.RaceId = RaceHorseBet.RaceId
	    --------------------------------------------------------------------------------
	    -- RaceResultByParents02 3
	    --------------------------------------------------------------------------------
	    UPDATE RaceHorseBet
		 SET
			PredictValue17 = CASE
										WHEN RaceResultByParents02.RunCount = 0
										THEN PredictValue16
										ELSE PredictValue17Temp  / NULLIF(PredictValue17Sum,0)
										END,
			TS2 = GETDATE()
	    FROM RaceHorseBet
		    INNER JOIN RaceHorse
		    ON RaceHorse.RaceId = RaceHorseBet.RaceId
			  AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
		    INNER JOIN RaceResultByParents02
		    ON RaceResultByParents02.RaceId = RaceHorseBet.RaceId
				AND RaceResultByParents02.KettoNum = RaceHorseBet.KettoNum
	    WHERE  RaceHorseBet.RaceDate >= @RaceDateFrom
	    --------------------------------------------------------------------------------
	    -- Step 4
	    --------------------------------------------------------------------------------
	    UPDATE RaceHorseBet
		 SET
			PredictValue17 = PredictValue16,
			TS2 = GETDATE()
	    FROM RaceHorseBet
	    WHERE  RaceHorseBet.RaceDate >= @RaceDateFrom
			AND PredictValue17Temp IS NULL
	    --------------------------------------------------------------------------------
	    -- RaceResultByMyJockyJyokenGrade 1
	    --------------------------------------------------------------------------------
	    UPDATE RaceHorseBet
		 SET
			PredictValue18Temp = PredictValue17 * RaceResultByMyJockyJyokenGrade.HitRate123,
			PredictValue18Rate = RaceResultByMyJockyJyokenGrade.HitRate123,
			TS2 = GETDATE()
	    FROM RaceHorseBet
		    INNER JOIN Race
		    ON Race.RaceId = RaceHorseBet.RaceId
		    INNER JOIN RaceHorse
		    ON RaceHorse.RaceId = RaceHorseBet.RaceId
			  AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
		    INNER JOIN RaceResultByMyJockyJyokenGrade
		    ON RaceResultByMyJockyJyokenGrade.RaceId = RaceHorseBet.RaceId
				AND RaceResultByMyJockyJyokenGrade.KettoNum = RaceHorseBet.KettoNum
				AND RaceResultByMyJockyJyokenGrade.JyokenCd5 = Race.JyokenCd5
				AND RaceResultByMyJockyJyokenGrade.GradeCd = Race.GradeCd
	    WHERE  RaceHorseBet.RaceDate >= @RaceDateFrom
	    --------------------------------------------------------------------------------
	    -- RaceResultByMyJockyJyokenGrade 2
	    --------------------------------------------------------------------------------
	    UPDATE RaceHorseBet
		 SET	PredictValue18Sum = t1.RaceNumSum
		 FROM RaceHorseBet
		 INNER JOIN
		(
		   SELECT RaceHorseBet.RaceId,
		 SUM(RaceHorseBet.PredictValue18Temp) AS RaceNumSum
	    		FROM RaceHorseBet
	    WHERE  RaceHorseBet.RaceDate >= @RaceDateFrom
		   GROUP BY RaceHorseBet.RaceId
	    ) AS t1
		    ON t1.RaceId = RaceHorseBet.RaceId
	    --------------------------------------------------------------------------------
	    -- RaceResultByMyJockyJyokenGrade 3
	    --------------------------------------------------------------------------------
	    UPDATE RaceHorseBet
		 SET
			PredictValue18 = CASE
										WHEN RaceResultByMyJockyJyokenGrade.RunCount = 0
										THEN PredictValue17
										ELSE PredictValue18Temp  / NULLIF(PredictValue18Sum,0)
										END,
			TS2 = GETDATE()
	    FROM RaceHorseBet
		    INNER JOIN RaceHorse
		    ON RaceHorse.RaceId = RaceHorseBet.RaceId
			  AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
		    INNER JOIN RaceResultByMyJockyJyokenGrade
		    ON RaceResultByMyJockyJyokenGrade.RaceId = RaceHorseBet.RaceId
				AND RaceResultByMyJockyJyokenGrade.KettoNum = RaceHorseBet.KettoNum
				AND RaceResultByMyJockyJyokenGrade.JyokenCd5 = Race.JyokenCd5
				AND RaceResultByMyJockyJyokenGrade.GradeCd = Race.GradeCd
	    WHERE  RaceHorseBet.RaceDate >= @RaceDateFrom
	    --------------------------------------------------------------------------------
	    -- Step 4
	    --------------------------------------------------------------------------------
	    UPDATE RaceHorseBet
		 SET
			PredictValue18 = PredictValue17,
			TS2 = GETDATE()
	    FROM RaceHorseBet
	    WHERE  RaceHorseBet.RaceDate >= @RaceDateFrom
			AND PredictValue18Temp IS NULL
*/

         --------------------------------------------------------------------------------
         -- Update PredictValue
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictValue = PredictValue15,
               PredictDateTime = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom;
         --------------------------------------------------------------------------------
         -- Update RaceHorse : 異常（中止など）
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictRank = 92,
               PredictValue = -992,
               PredictDateTime = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN RaceHorse
              ON RaceHorse.RaceId = RaceHorseBet.RaceId
                 AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
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
               PredictRank = 93,
               PredictValue = -993,
               PredictDateTime = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN RaceHorse
              ON RaceHorse.RaceId = RaceHorseBet.RaceId
                 AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND RaceHorse.DataKubun = '9';
         --------------------------------------------------------------------------------
         -- Update RaceHorse : レース削除
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictRank = 94,
               PredictValue = -994,
               PredictDateTime = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
              INNER JOIN RaceHorse
              ON RaceHorse.RaceId = RaceHorseBet.RaceId
                 AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND RaceHorse.DataKubun = '0';
         --------------------------------------------------------------------------------
         -- Update RaceHorse : 計算エラー(NULL)
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               PredictRank = 95,
               PredictValue = -995,
               PredictDateTime = GETDATE(),
               TS2 = GETDATE()
         FROM RaceHorseBet
         WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
               AND PredictValue IS NULL;
         --------------------------------------------------------------------------------
         -- Update RaceHorse : Ranking
         --------------------------------------------------------------------------------
         UPDATE RaceHorseBet
           SET
               RaceHorseBet.PredictRank = t.PredictValueRank
         FROM RaceHorseBet
              INNER JOIN
         (
             SELECT RaceHorseBet.RaceId,
                    RaceHorseBet.KettoNum,
                    RaceHorseBet.PredictValue,
                    RANK() OVER(PARTITION BY RaceHorseBet.RaceId ORDER BY RaceHorseBet.PredictValue DESC) AS PredictValueRank
             FROM RaceHorseBet
             WHERE RaceHorseBet.RaceDate >= @RaceDateFrom
         ) AS t
              ON RaceHorseBet.RaceId = t.RaceId;
         COMMIT TRANSACTION;
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------
         RETURN @Return;
     END;
GO
/****** Object:  StoredProcedure [dbo].[uspa_Analysis_MgmtBet_CheckHitByRaceAll]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspa_Analysis_MgmtBet_CheckHitByRaceAll]
WITH EXECUTE AS CALLER
AS
BEGIN
	    DECLARE @Return INT= 0;
	    DECLARE @RaceDateFrom DATETIME= '2014-01-01';

	    --------------------------------------------------------------------------------
	    -- MgmtBet	:	Initialize
	    --------------------------------------------------------------------------------
	    UPDATE MgmtBet
		 SET
			IsHit = 0,
			HitCount = 0,
			HitMoney = 0,
			ReturnMoney = -BetMoney,
			TS = GETDATE()
	    WHERE  RaceDate >= @RaceDateFrom;

	    --SET @Return += @@rowcount;
	    --------------------------------------------------------------------------------
	    -- MgmtBet	
	    --------------------------------------------------------------------------------
	    UPDATE MgmtBet
		 SET
			IsHit = 1,
			HitCount = 1,
			HitMoney = dbo.PayoffByPayAll.Pay,
			ReturnMoney = dbo.PayoffByPayAll.Pay - MgmtBet.BetMoney,
			TS = GETDATE()
	    FROM dbo.MgmtBet
		    INNER JOIN dbo.PayoffByPayAll ON dbo.MgmtBet.RaceDate = dbo.PayoffByPayAll.RaceDate
									  AND dbo.MgmtBet.JyoCD = dbo.PayoffByPayAll.JyoCD
									  AND dbo.MgmtBet.Kaiji = dbo.PayoffByPayAll.Kaiji
									  AND dbo.MgmtBet.Nichiji = dbo.PayoffByPayAll.Nichiji
									  AND dbo.MgmtBet.RaceNum = dbo.PayoffByPayAll.RaceNum
									  AND dbo.MgmtBet.BetTypeCD = dbo.PayoffByPayAll.BetTypeCD
									  AND dbo.MgmtBet.Kumi1 = dbo.PayoffByPayAll.Kumi1
									  AND dbo.MgmtBet.Kumi2 = dbo.PayoffByPayAll.Kumi2
									  AND dbo.MgmtBet.Kumi3 = dbo.PayoffByPayAll.Kumi3
	    WHERE  dbo.MgmtBet.RaceDate >= @RaceDateFrom;
	    SET @Return+=@@rowcount;
	    --------------------------------------------------------------------------------
	    -- PayoffByPayAll
	    --------------------------------------------------------------------------------
	    UPDATE PayoffByPayAll
		 SET
			IsHit = 0,
			PayLog = LOG(PayoffByPayAll.Pay + 1),
			TS2 = GETDATE()
	    FROM PayoffByPayAll
	    WHERE  dbo.PayoffByPayAll.RaceDate >= @RaceDateFrom;        
	    --------------------------------------------------------------------------------
	    -- PayoffByPayAll
	    --------------------------------------------------------------------------------
	    UPDATE PayoffByPayAll
		 SET
			IsHit = 1,
			TS2 = GETDATE()
	    FROM MgmtBet
		    INNER JOIN PayoffByPayAll ON PayoffByPayAll.RaceDate = MgmtBet.RaceDate
								   AND PayoffByPayAll.JyoCD = MgmtBet.JyoCD
								   AND PayoffByPayAll.Kaiji = MgmtBet.Kaiji
								   AND PayoffByPayAll.Nichiji = MgmtBet.Nichiji
								   AND PayoffByPayAll.RaceNum = MgmtBet.RaceNum
								   AND PayoffByPayAll.BetTypeCD = MgmtBet.BetTypeCD
								   AND PayoffByPayAll.Kumi1 = MgmtBet.Kumi1
								   AND PayoffByPayAll.Kumi2 = MgmtBet.Kumi2
								   AND PayoffByPayAll.Kumi3 = MgmtBet.Kumi3
	    WHERE  dbo.PayoffByPayAll.RaceDate >= @RaceDateFrom;


	    --------------------------------------------------------------------------------
	    -- RaceHorse
	    --------------------------------------------------------------------------------
	    UPDATE RaceHorseBet
		 SET
			PayoffWin = 0,
			PayoffWinLog = 0,
			PayoffPlace = 0,
			PayoffPlaceLog = 0,
			TS2 = GETDATE()
	    FROM RaceHorse
	    WHERE  dbo.RaceHorseBet.RaceDate >= @RaceDateFrom;
	    --------------------------------------------------------------------------------
	    -- RaceHorse Win
	    --------------------------------------------------------------------------------
	    UPDATE RaceHorseBet
		 SET
			PayoffWin = PayoffByPayAll.Pay,
			TS2 = GETDATE()
	    FROM RaceHorseBet
		    INNER JOIN PayoffByPayAll ON PayoffByPayAll.RaceDate = RaceHorseBet.RaceDate
								   AND PayoffByPayAll.JyoCD = RaceHorseBet.JyoCD
								   AND PayoffByPayAll.Kaiji = RaceHorseBet.Kaiji
								   AND PayoffByPayAll.Nichiji = RaceHorseBet.Nichiji
								   AND PayoffByPayAll.RaceNum = RaceHorseBet.RaceNum
								   AND PayoffByPayAll.Kumi1 = RaceHorseBet.Umaban
								   AND PayoffByPayAll.Kumi2 = 0
								   AND PayoffByPayAll.Kumi3 = 0
	    WHERE  PayoffByPayAll.BetTypeCD = 1
			 AND dbo.RaceHorseBet.RaceDate >= @RaceDateFrom;
	    --------------------------------------------------------------------------------
	    -- RaceHorse Place
	    --------------------------------------------------------------------------------
	    UPDATE RaceHorseBet
		 SET
			PayoffPlace = PayoffByPayAll.Pay,
			TS2 = GETDATE()
	    FROM RaceHorseBet
		    INNER JOIN PayoffByPayAll ON PayoffByPayAll.RaceDate = RaceHorseBet.RaceDate
								   AND PayoffByPayAll.JyoCD = RaceHorseBet.JyoCD
								   AND PayoffByPayAll.Kaiji = RaceHorseBet.Kaiji
								   AND PayoffByPayAll.Nichiji = RaceHorseBet.Nichiji
								   AND PayoffByPayAll.RaceNum = RaceHorseBet.RaceNum
								   AND PayoffByPayAll.Kumi1 = RaceHorseBet.Umaban
								   AND PayoffByPayAll.Kumi2 = 0
								   AND PayoffByPayAll.Kumi3 = 0
	    WHERE  PayoffByPayAll.BetTypeCD = 2
			 AND dbo.RaceHorseBet.RaceDate >= @RaceDateFrom;

	    --------------------------------------------------------------------------------
	    -- Return
	    --------------------------------------------------------------------------------
	    RETURN @Return;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspa_Analysis_MgmtBet_CheckHitByRaceDate]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspa_Analysis_MgmtBet_CheckHitByRaceDate]
	@RaceDate [datetime]
WITH EXECUTE AS CALLER
AS
BEGIN
	    DECLARE @Return INT= 0;
	    DECLARE @RaceDateFrom DATETIME= '2014-01-01';

	    --------------------------------------------------------------------------------
	    -- MgmtBet	:	Initialize
	    --------------------------------------------------------------------------------
	    UPDATE MgmtBet
		 SET
			IsHit = 0,
			HitCount = 0,
			HitMoney = 0,
			ReturnMoney = -BetMoney,
			TS = GETDATE()
	    WHERE  RaceDate = @RaceDate;

	    --SET @Return += @@rowcount;
	    --------------------------------------------------------------------------------
	    -- MgmtBet
	    --------------------------------------------------------------------------------
	    UPDATE MgmtBet
		 SET
			IsHit = 1,
			HitCount = 1,
			HitMoney = dbo.PayoffByPayAll.Pay,
			ReturnMoney = dbo.PayoffByPayAll.Pay - MgmtBet.BetMoney,
			TS = GETDATE()
	    FROM dbo.MgmtBet
		    INNER JOIN dbo.PayoffByPayAll ON dbo.MgmtBet.RaceDate = dbo.PayoffByPayAll.RaceDate
									  AND dbo.MgmtBet.JyoCD = dbo.PayoffByPayAll.JyoCD
									  AND dbo.MgmtBet.Kaiji = dbo.PayoffByPayAll.Kaiji
									  AND dbo.MgmtBet.Nichiji = dbo.PayoffByPayAll.Nichiji
									  AND dbo.MgmtBet.RaceNum = dbo.PayoffByPayAll.RaceNum
									  AND dbo.MgmtBet.BetTypeCD = dbo.PayoffByPayAll.BetTypeCD
									  AND dbo.MgmtBet.Kumi1 = dbo.PayoffByPayAll.Kumi1
									  AND dbo.MgmtBet.Kumi2 = dbo.PayoffByPayAll.Kumi2
									  AND dbo.MgmtBet.Kumi3 = dbo.PayoffByPayAll.Kumi3
	    WHERE  dbo.MgmtBet.RaceDate = @RaceDate;
	    SET @Return+=@@rowcount;
	    --------------------------------------------------------------------------------
	    -- Return
	    --------------------------------------------------------------------------------
	    RETURN @Return;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspa_Analysis_MgmtBet_CheckHitByRaceZAll]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspa_Analysis_MgmtBet_CheckHitByRaceZAll]
WITH EXECUTE AS CALLER
AS
BEGIN
	    DECLARE @Return INT= 0;
	    DECLARE @RaceDateTo DATETIME= '2013-12-31';

	    --------------------------------------------------------------------------------
	    -- Get TimeStamp
	    --------------------------------------------------------------------------------
	    UPDATE MgmtBet
		 SET
			IsHit = 0,
			HitCount = 0,
			HitMoney = 0,
			ReturnMoney = -BetMoney,
			TS = GETDATE()
	    WHERE  RaceDate <= @RaceDateTo;

	    --SET @Return += @@rowcount;
	    ---------------------------------------------------------------------------
	    -- MgmtBet
	    --------------------------------------------------------------------------------
	    UPDATE MgmtBet
		 SET
			IsHit = 1,
			HitCount = 1,
			HitMoney = dbo.PayoffByPayAll.Pay,
			ReturnMoney = dbo.PayoffByPayAll.Pay - MgmtBet.BetMoney,
			TS = GETDATE()
	    FROM dbo.MgmtBet
		    INNER JOIN dbo.PayoffByPayAll ON dbo.MgmtBet.RaceDate = dbo.PayoffByPayAll.RaceDate
									  AND dbo.MgmtBet.JyoCD = dbo.PayoffByPayAll.JyoCD
									  AND dbo.MgmtBet.Kaiji = dbo.PayoffByPayAll.Kaiji
									  AND dbo.MgmtBet.Nichiji = dbo.PayoffByPayAll.Nichiji
									  AND dbo.MgmtBet.RaceNum = dbo.PayoffByPayAll.RaceNum
									  AND dbo.MgmtBet.BetTypeCD = dbo.PayoffByPayAll.BetTypeCD
									  AND dbo.MgmtBet.Kumi1 = dbo.PayoffByPayAll.Kumi1
									  AND dbo.MgmtBet.Kumi2 = dbo.PayoffByPayAll.Kumi2
									  AND dbo.MgmtBet.Kumi3 = dbo.PayoffByPayAll.Kumi3
	    WHERE  MgmtBet.RaceDate <= @RaceDateTo;
	    SET @Return+=@@rowcount;
	    --------------------------------------------------------------------------------
	    -- Return
	    --------------------------------------------------------------------------------
	    RETURN @Return;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspa_Analysis_MgmtBet_ClearHitByRaceAll]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspa_Analysis_MgmtBet_ClearHitByRaceAll]
WITH EXECUTE AS CALLER
AS
BEGIN
	    DECLARE @RaceDateFrom DATETIME= '2014-01-01';
	    DECLARE @Return INT= 0;
	    --------------------------------------------------------------------------------
	    -- MgmtBet	:	Initialize
	    --------------------------------------------------------------------------------
	    UPDATE MgmtBet
		 SET
			IsHit = 0,
			HitCount = 0,
			HitMoney = 0,
			ReturnMoney = -BetMoney,
			TS = GETDATE()
	    WHERE  MgmtBet.RaceDate >= @RaceDateFrom;
	    SET @Return+=@@rowcount;
	    --------------------------------------------------------------------------------
	    -- Clear Sumamry Bet & Hit
	    --------------------------------------------------------------------------------
	    UPDATE Race
		 SET
			BetCount = NULL,
			HitCount = NULL,
			BetMoney = NULL,
			HitMoney = NULL,
			ReturnMoney = NULL,
			TS2 = GETDATE()
	    WHERE  Race.RaceDate >= @RaceDateFrom;

	    --SET @Return += @@rowcount;
	    --------------------------------------------------------------------------------
	    -- Return
	    --------------------------------------------------------------------------------
	    RETURN @Return;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspa_Analysis_MgmtBet_DeleteByRaceAll]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspa_Analysis_MgmtBet_DeleteByRaceAll]
WITH EXECUTE AS CALLER
AS
BEGIN
	    DECLARE @Return INT= 0;
	    DECLARE @RaceDateFrom DATETIME= '2014-01-01';

	    --------------------------------------------------------------------------------
	    -- MgmtBet	:	Delete All Bets
	    --------------------------------------------------------------------------------
	    DELETE MgmtBet
	    WHERE  MgmtBet.RaceDate >= @RaceDateFrom;
	    SET @Return+=@@rowcount;
	    --------------------------------------------------------------------------------
	    -- Return
	    --------------------------------------------------------------------------------
	    RETURN @Return;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspa_Analysis_MgmtBetDetail_CheckByRaceAll]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspa_Analysis_MgmtBetDetail_CheckByRaceAll]
WITH EXECUTE AS CALLER
AS
BEGIN
	    DECLARE @Return INT= 0;
	    DECLARE @RaceDateFrom DATETIME= '2014-01-01';

	    --------------------------------------------------------------------------------
	    -- MgmtBet	:	Initialize
	    --------------------------------------------------------------------------------
	    UPDATE MgmtBetHistoryDetail
		 SET
			IsHit = 0,
			HitCount = 0,
			HitMoney = 0,
			ReturnMoney = -BetMoney,
			TS = GETDATE()
	    WHERE  RaceDate >= @RaceDateFrom;

	    --SET @Return += @@rowcount;
	    --------------------------------------------------------------------------------
	    -- MgmtBet	:
	    --------------------------------------------------------------------------------
	    UPDATE MgmtBetHistoryDetail
		 SET
			IsHit = 1,
			HitCount = 1,
			HitMoney = dbo.PayoffByPayAll.Pay,
			ReturnMoney = dbo.PayoffByPayAll.Pay - MgmtBetHistoryDetail.BetMoney,
			TS = GETDATE()
	    FROM dbo.MgmtBetHistoryDetail
		    INNER JOIN dbo.PayoffByPayAll ON dbo.MgmtBetHistoryDetail.RaceDate = dbo.PayoffByPayAll.RaceDate
									  AND dbo.MgmtBetHistoryDetail.JyoCD = dbo.PayoffByPayAll.JyoCD
									  AND dbo.MgmtBetHistoryDetail.Kaiji = dbo.PayoffByPayAll.Kaiji
									  AND dbo.MgmtBetHistoryDetail.Nichiji = dbo.PayoffByPayAll.Nichiji
									  AND dbo.MgmtBetHistoryDetail.RaceNum = dbo.PayoffByPayAll.RaceNum
									  AND dbo.MgmtBetHistoryDetail.BetTypeCD = dbo.PayoffByPayAll.BetTypeCD
									  AND dbo.MgmtBetHistoryDetail.Kumi1 = dbo.PayoffByPayAll.Kumi1
									  AND dbo.MgmtBetHistoryDetail.Kumi2 = dbo.PayoffByPayAll.Kumi2
									  AND dbo.MgmtBetHistoryDetail.Kumi3 = dbo.PayoffByPayAll.Kumi3
	    WHERE  dbo.MgmtBetHistoryDetail.RaceDate >= @RaceDateFrom;
	    SET @Return+=@@rowcount;
	    --------------------------------------------------------------------------------
	    -- Return
	    --------------------------------------------------------------------------------
	    RETURN @Return;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspa_Analysis_PayoffByPayAll_GetByRaceDate]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspa_Analysis_PayoffByPayAll_GetByRaceDate]
	@RaceDate [datetime]
WITH EXECUTE AS CALLER
AS
BEGIN
	    DECLARE @Return INT= 0;
	    --------------------------------------------------------------------------------
	    -- PayoffByPayAll
	    --------------------------------------------------------------------------------
	    SELECT *
	    FROM   PayoffByPayAll
	    WHERE  RaceDate = @RaceDate
	    ORDER BY BetTypeCD,
			   Num;
	    SET @Return+=@@rowcount;
	    --------------------------------------------------------------------------------
	    -- Return
	    --------------------------------------------------------------------------------
	    RETURN @Return;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspa_Analysis_PayoffByPayAll_GetByRaceNum]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspa_Analysis_PayoffByPayAll_GetByRaceNum]
	@RaceDate [datetime],
	@JyoCD [nchar](2),
	@Kaiji [int],
	@Nichiji [int],
	@RaceNum [int]
WITH EXECUTE AS CALLER
AS
BEGIN
	    DECLARE @Return INT= 0;
	    --------------------------------------------------------------------------------
	    -- PayoffByPayAll
	    --------------------------------------------------------------------------------
	    SELECT *
	    FROM   PayoffByPayAll
	    WHERE  RaceDate = @RaceDate
			 AND JyoCD = @JyoCD
			 AND Kaiji = @Kaiji
			 AND Nichiji = @Nichiji
			 AND RaceNum = @RaceNum
	    ORDER BY BetTypeCD,
			   Num;
	    SET @Return+=@@rowcount;
	    --------------------------------------------------------------------------------
	    -- Return
	    --------------------------------------------------------------------------------
	    RETURN @Return;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspa_Analysis_Race_ClearLastCrollTimeStamp]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspa_Analysis_Race_ClearLastCrollTimeStamp]
WITH EXECUTE AS CALLER
AS
BEGIN
	    DECLARE @Return INT= 0;
	    --------------------------------------------------------------------------------
	    -- Clear Sumamry Bet & Hit
	    --------------------------------------------------------------------------------
	    UPDATE Race
		 SET
			LastCrollTimeStamp = NULL;
	    SET @Return+=@@rowcount;
	    --------------------------------------------------------------------------------
	    -- Return
	    --------------------------------------------------------------------------------
	    RETURN;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspa_Analysis_Race_UpdateHitByRaceAll]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspa_Analysis_Race_UpdateHitByRaceAll]
WITH EXECUTE AS CALLER
AS
BEGIN
	    DECLARE @Return INT= 0;
	    DECLARE @RaceDateFrom DATETIME= '2014-01-01';

	    --------------------------------------------------------------------------------
	    -- Summary Bet & Hit
	    --------------------------------------------------------------------------------
	    UPDATE Race
		 SET
			BetCount = mb.BetCount,
			HitCount = mb.HitCount,
			BetMoney = mb.BetMoney,
			HitMoney = mb.HitMoney,
			ReturnMoney = mb.ReturnMoney,
			TS2 = GETDATE()
	    FROM Race
		    INNER JOIN
	    (
		   SELECT RaceDate,
				JyoCD,
				Kaiji,
				Nichiji,
				RaceNum,
				BetCount = SUM(BetCount),
				HitCount = SUM(HitCount),
				BetMoney = SUM(BetMoney),
				HitMoney = SUM(HitMoney),
				ReturnMoney = SUM(ReturnMoney)
		   FROM   MgmtBet
		   GROUP BY RaceDate,
				  JyoCD,
				  Kaiji,
				  Nichiji,
				  RaceNum
	    ) mb ON Race.RaceDate = mb.RaceDate
			  AND Race.JyoCD = mb.JyoCD
			  AND Race.Kaiji = mb.Kaiji
			  AND Race.Nichiji = mb.Nichiji
			  AND Race.RaceNum = mb.RaceNum
	    WHERE  Race.RaceDate >= @RaceDateFrom;
	    SET @Return+=@@rowcount;
	    --------------------------------------------------------------------------------
	    -- Return
	    --------------------------------------------------------------------------------
	    RETURN @Return;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspa_Analysis_Race_UpdateHitByRaceNum]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspa_Analysis_Race_UpdateHitByRaceNum]
	@RaceDate [datetime],
	@JyoCD [nchar](2),
	@Kaiji [int],
	@Nichiji [int],
	@RaceNum [int]
WITH EXECUTE AS CALLER
AS
BEGIN
	    DECLARE @Return INT= 0;
	    --------------------------------------------------------------------------------
	    -- Update Hit
	    --------------------------------------------------------------------------------
	    UPDATE Race
		 SET
			BetCount = mb.BetCount,
			HitCount = mb.HitCount,
			BetMoney = mb.BetMoney,
			HitMoney = mb.HitMoney,
			ReturnMoney = mb.ReturnMoney,
			TS2 = GETDATE()
	    FROM Race
		    INNER JOIN
	    (
		   SELECT RaceDate,
				JyoCD,
				Kaiji,
				Nichiji,
				RaceNum,
				BetCount = SUM(BetCount),
				HitCount = SUM(HitCount),
				BetMoney = SUM(BetMoney),
				HitMoney = SUM(HitMoney),
				ReturnMoney = SUM(ReturnMoney)
		   FROM   MgmtBet
		   GROUP BY RaceDate,
				  JyoCD,
				  Kaiji,
				  Nichiji,
				  RaceNum
	    ) mb ON Race.RaceDate = mb.RaceDate
			  AND Race.JyoCD = mb.JyoCD
			  AND Race.Kaiji = mb.Kaiji
			  AND Race.Nichiji = mb.Nichiji
			  AND Race.RaceNum = mb.RaceNum
	    WHERE  Race.RaceDate = @RaceDate
			 AND Race.JyoCD = @JyoCD
			 AND Race.Kaiji = @Kaiji
			 AND Race.Nichiji = @Nichiji
			 AND Race.RaceNum = @RaceNum;
	    SET @Return+=@@rowcount;
	    --------------------------------------------------------------------------------
	    -- Return
	    --------------------------------------------------------------------------------
	    RETURN @Return;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspa_Analysis_Race_UpdateHitByRaceZAll]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspa_Analysis_Race_UpdateHitByRaceZAll]
WITH EXECUTE AS CALLER
AS
BEGIN
	    DECLARE @Return INT= 0;
	    DECLARE @RaceDateTo DATETIME= '2013-12-31';

	    --------------------------------------------------------------------------------
	    -- Update Hit
	    --------------------------------------------------------------------------------
	    UPDATE Race
		 SET
			BetCount = mb.BetCount,
			HitCount = mb.HitCount,
			BetMoney = mb.BetMoney,
			HitMoney = mb.HitMoney,
			ReturnMoney = mb.ReturnMoney,
			TS2 = GETDATE()
	    FROM Race
		    INNER JOIN
	    (
		   SELECT RaceDate,
				JyoCD,
				Kaiji,
				Nichiji,
				RaceNum,
				BetCount = SUM(BetCount),
				HitCount = SUM(HitCount),
				BetMoney = SUM(BetMoney),
				HitMoney = SUM(HitMoney),
				ReturnMoney = SUM(ReturnMoney)
		   FROM   MgmtBet
		   GROUP BY RaceDate,
				  JyoCD,
				  Kaiji,
				  Nichiji,
				  RaceNum
	    ) mb ON Race.RaceDate = mb.RaceDate
			  AND Race.JyoCD = mb.JyoCD
			  AND Race.Kaiji = mb.Kaiji
			  AND Race.Nichiji = mb.Nichiji
			  AND Race.RaceNum = mb.RaceNum
	    WHERE  Race.RaceDate <= @RaceDateTo;
	    SET @Return+=@@rowcount;
	    --------------------------------------------------------------------------------
	    -- Return
	    --------------------------------------------------------------------------------
	    RETURN @Return;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspc_Factorial]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspc_Factorial]
	@SrcNumber [float],
	@DesNumber [float] OUTPUT
WITH EXECUTE AS CALLER
AS
BEGIN
    SET @DesNumber = 1

    WHILE @SrcNumber > 0
    BEGIN
        SET @DesNumber = @DesNumber * @SrcNumber
        SET @SrcNumber = @SrcNumber - 1
    END
END

GO
/****** Object:  StoredProcedure [dbo].[uspc_FactorialLog]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspc_FactorialLog]
	@SrcNumber [float]
WITH EXECUTE AS CALLER
AS
BEGIN
    DECLARE	@DesNumber    FLOAT
    SET @DesNumber = LOG(1)
    WHILE @SrcNumber > 0
    BEGIN
        SET @DesNumber = @DesNumber + LOG(@SrcNumber)
        SET @SrcNumber = @SrcNumber - 1
    END
    SELECT	EXP(@DesNumber)
END;


GO
/****** Object:  StoredProcedure [dbo].[uspc_MgmtBet_DeleteByRaceZAll]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspc_MgmtBet_DeleteByRaceZAll]
WITH EXECUTE AS CALLER
AS
BEGIN
	    DECLARE @RaceDateTo DATETIME= '2013-12-31';

	    --------------------------------------------------------------------------------
	    -- MgmtBet	:	Delete All Bets
	    --------------------------------------------------------------------------------
	    DELETE FROM MgmtBet
	    WHERE       RaceDate <= @RaceDateTo;


	    --------------------------------------------------------------------------------
	    -- Return
	    --------------------------------------------------------------------------------
	    RETURN;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspc_Race_ClearHitByRaceZAll]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspc_Race_ClearHitByRaceZAll]
WITH EXECUTE AS CALLER
AS
BEGIN
	    DECLARE @RaceDateTo DATETIME= '2013-12-31';

	    --------------------------------------------------------------------------------
	    -- Clear Sumamry Bet & Hit
	    --------------------------------------------------------------------------------
	    UPDATE Race
		 SET
			BetCount = NULL,
			HitCount = NULL,
			BetMoney = NULL,
			HitMoney = NULL,
			ReturnMoney = NULL,
			TS2 = GETDATE()
	    WHERE  RaceDate <= @RaceDateTo;


	    --------------------------------------------------------------------------------
	    -- Return
	    --------------------------------------------------------------------------------
	    RETURN;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspt_Bet1_Delete]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspt_Bet1_Delete]
	@RaceID [nchar](20)
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         BEGIN TRANSACTION;
         --------------------------------------------------------------------------------
         -- DELETE
         --------------------------------------------------------------------------------
         DELETE Bet1ByBracket
         FROM Bet1ByBracket
              WHERE Bet1ByBracket.RaceID = @RaceID;
         --------------------------------------------------------------------------------
         -- DELETE
         --------------------------------------------------------------------------------
         DELETE Bet1ByExacta
         FROM Bet1ByExacta
              WHERE Bet1ByExacta.RaceID = @RaceID;
         --------------------------------------------------------------------------------
         -- DELETE
         --------------------------------------------------------------------------------
         DELETE Bet1ByPlace
         FROM Bet1ByPlace
              WHERE Bet1ByPlace.RaceID = @RaceID;
         --------------------------------------------------------------------------------
         -- DELETE
         --------------------------------------------------------------------------------
         DELETE Bet1ByQuinella
         FROM Bet1ByQuinella
              WHERE Bet1ByQuinella.RaceID = @RaceID;
         --------------------------------------------------------------------------------
         -- DELETE
         --------------------------------------------------------------------------------
         DELETE Bet1ByTrio
         FROM Bet1ByTrio
              WHERE Bet1ByTrio.RaceID = @RaceID;
         --------------------------------------------------------------------------------
         -- DELETE
         --------------------------------------------------------------------------------
         DELETE Bet1ByWide
         FROM Bet1ByWide
              WHERE Bet1ByWide.RaceID = @RaceID;
         --------------------------------------------------------------------------------
         -- DELETE
         --------------------------------------------------------------------------------
         DELETE Bet1ByWin
         FROM Bet1ByWin
              WHERE Bet1ByWin.RaceID = @RaceID;
         COMMIT TRANSACTION;
     END;


GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_1_Win_000]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_1_Win_000]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 1: Win
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 0
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 1;
	END;


GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_1_Win_001]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_1_Win_001]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 1: Win
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 1
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 1;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_2_Place_000]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_2_Place_000]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 2: Place
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 0
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 2;
	END;


GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_2_Place_001]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_2_Place_001]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 2: Place
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 1
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 2;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_2_Place_003]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_2_Place_003]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 2: Place
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 3
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 2;
	END;


GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_4_Quinella_000]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_4_Quinella_000]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 4: Quinella
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 0
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 4;
	END;


GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_4_Quinella_001]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_4_Quinella_001]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 4: Quinella
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 1
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 4;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_4_Quinella_003]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_4_Quinella_003]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 4: Quinella
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 3
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 4;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_4_Quinella_004]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_4_Quinella_004]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 4: Quinella
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 4
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 4;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_5_Wide_000]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_5_Wide_000]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 5: Wide
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 0
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 5;
	END;


GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_5_Wide_001]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_5_Wide_001]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 5: Wide
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 1
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 5;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_5_Wide_003]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_5_Wide_003]
WITH EXECUTE AS CALLER
AS
BEGIN
SET NOCOUNT ON;

--------------------------------
-- 5: Wide
--------------------------------
UPDATE
	ConfigBet
	SET
		CurrentValue = 3
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 5
END





GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_6_Exacta_000]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_6_Exacta_000]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 6: Exacta
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 0
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 6;
	END;


GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_6_Exacta_001]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_6_Exacta_001]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 6: Exacta
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 1
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 6;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_6_Exacta_002]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_6_Exacta_002]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 6: Exacta
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 2
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 6;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_6_Exacta_003]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_6_Exacta_003]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;
	    UPDATE ConfigBet
		 SET
			CurrentValue = 3
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 6;
	END;


GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_6_Exacta_006]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_6_Exacta_006]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 6: Exacta
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 6
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 6;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_6_Exacta_008]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_6_Exacta_008]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 6: Exacta
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 8
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 6;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_7_Trio_000]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_7_Trio_000]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 7: Trio
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 0
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 7;
	END;


GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_7_Trio_001]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_7_Trio_001]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 7: Trio
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 1
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 7;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_7_Trio_004]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_7_Trio_004]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 7: Trio
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 4
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 7;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_7_Trio_010]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_7_Trio_010]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 7: Trio
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 10
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 7;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_7_Trio_012]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_7_Trio_012]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 7: Trio
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 12
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 7;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_7_Trio_024]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_7_Trio_024]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 7: Trio
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 24
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 7;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_7_Trio_240]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_7_Trio_240]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 7: Trio
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 240
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 7;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_8_Trifecta_000]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_8_Trifecta_000]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 8: Trifecta
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 0
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 8;
	END;


GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_8_Trifecta_006]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_8_Trifecta_006]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 8: Trifecta
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 6
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 8;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_8_Trifecta_024]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_8_Trifecta_024]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 8: Trifecta
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 24
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 8;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_8_Trifecta_060]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_8_Trifecta_060]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;

	    --------------------------------
	    -- 8: Trifecta
	    --------------------------------
	    UPDATE ConfigBet
		 SET
			CurrentValue = 60
	    WHERE  ConfigTypeCD = 1
			 AND BetTypeCD = 8;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_8_Trifecta_072]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_8_Trifecta_072]
WITH EXECUTE AS CALLER
AS
BEGIN
SET NOCOUNT ON;

--------------------------------
-- 8: 三連単
--------------------------------
UPDATE
	ConfigBet
	SET
		CurrentValue = 72
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 8
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_Load_Default]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_Load_Default]
WITH EXECUTE AS CALLER
AS
BEGIN
SET NOCOUNT ON;

--------------------------------
-- 1: 単勝
--------------------------------
UPDATE
	ConfigBet
	SET
		CurrentValue = DefaultValue
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 1
;
--------------------------------
-- 2: 複勝
--------------------------------
UPDATE
	ConfigBet
	SET
		CurrentValue = DefaultValue
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 2
;
--------------------------------
-- 3: 枠連
--------------------------------
UPDATE
	ConfigBet
	SET
		CurrentValue = DefaultValue
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 3
;
--------------------------------
-- 4: 馬連
--------------------------------
UPDATE
	ConfigBet
	SET
		CurrentValue = DefaultValue
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 4
;
--------------------------------
-- ５: ワイド
--------------------------------
UPDATE
	ConfigBet
	SET
		CurrentValue = DefaultValue
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 5
;
--------------------------------
-- 6: 馬単
--------------------------------
UPDATE
	ConfigBet
	SET
		CurrentValue = DefaultValue
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 6
;
--------------------------------
-- 7: 三連複
--------------------------------
UPDATE
	ConfigBet
	SET
		CurrentValue = DefaultValue
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 7
;
--------------------------------
-- 8: 三連単
--------------------------------
UPDATE
	ConfigBet
	SET
		CurrentValue = DefaultValue
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 8
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_Set_All_0]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_Set_All_0]
WITH EXECUTE AS CALLER
AS
BEGIN
SET NOCOUNT ON;

--------------------------------
-- 1: 単勝
--------------------------------
UPDATE
	ConfigBet
	SET
		CurrentValue = 0
	,	DefaultValue = 1
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 1
--------------------------------
-- 2: 複勝
--------------------------------
UPDATE
	ConfigBet
	SET
		CurrentValue = 0
	,	DefaultValue = 3
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 2
--------------------------------
-- 3: 枠連
--------------------------------
UPDATE
	ConfigBet
	SET
		CurrentValue = 0
	,	DefaultValue = 0
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 3
--------------------------------
-- 4: 馬連
--------------------------------
UPDATE
	ConfigBet
	SET
		CurrentValue = 0
	,	DefaultValue = 4
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 4
--------------------------------
-- ５: ワイド
--------------------------------
UPDATE
	ConfigBet
	SET
		CurrentValue = 0
	,	DefaultValue = 6
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 5
--------------------------------
-- 6: 馬単
--------------------------------
UPDATE
	ConfigBet
	SET
		CurrentValue = 0
	,	DefaultValue = 8
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 6
--------------------------------
-- 7: 三連複
--------------------------------
UPDATE
	ConfigBet
	SET
		CurrentValue = 0
	,	DefaultValue = 10
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 7
--------------------------------
-- 8: 三連単
--------------------------------
UPDATE
	ConfigBet
	SET
		CurrentValue = 0
	,	DefaultValue = 60
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 8
END


GO
/****** Object:  StoredProcedure [dbo].[uspu_ConfigBet_Set_Default]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspu_ConfigBet_Set_Default]
WITH EXECUTE AS CALLER
AS
BEGIN
SET NOCOUNT ON;

--------------------------------
-- 1: 単勝
--------------------------------
UPDATE
	ConfigBet
	SET
		DefaultValue = 1
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 1
;
--------------------------------
-- 2: 複勝
--------------------------------
UPDATE
	ConfigBet
	SET
		DefaultValue = 3
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 2
;
--------------------------------
-- 3: 枠連
--------------------------------
UPDATE
	ConfigBet
	SET
		DefaultValue = 0
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 3
;
--------------------------------
-- 4: 馬連
--------------------------------
UPDATE
	ConfigBet
	SET
		DefaultValue = 4
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 4
;
--------------------------------
-- ５: ワイド
--------------------------------
UPDATE
	ConfigBet
	SET
		DefaultValue = 6
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 5
;
--------------------------------
-- 6: 馬単
--------------------------------
UPDATE
	ConfigBet
	SET
		DefaultValue = 8
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 6
;
--------------------------------
-- 7: 三連複
--------------------------------
UPDATE
	ConfigBet
	SET
		DefaultValue = 10
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 7
;
--------------------------------
-- 8: 三連単
--------------------------------
UPDATE
	ConfigBet
	SET
		DefaultValue = 60
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 8
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_Banusi_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Banusi_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- Banusi	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	Banusi
	SET
		TS2 = GETDATE ()
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_Bet1ByBracket_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Bet1ByBracket_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceHorse	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	Bet1ByBracket
	SET
		TS2 = GETDATE ()
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_Bet1ByExacta_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Bet1ByExacta_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceHorse	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	Bet1ByExacta
	SET
		TS2 = GETDATE ()
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_Bet1ByPlace_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Bet1ByPlace_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceHorse	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	Bet1ByPlace
	SET
		TS2 = GETDATE ()
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_Bet1ByQuinella_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Bet1ByQuinella_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceHorse	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	Bet1ByQuinella
	SET
		TS2 = GETDATE ()
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_Bet1ByTrio_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Bet1ByTrio_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceHorse	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	Bet1ByTrio
	SET
		TS2 = GETDATE ()
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_Bet1ByWide_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Bet1ByWide_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceHorse	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	Bet1ByWide
	SET
		TS2 = GETDATE ()
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_Bet1ByWin_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Bet1ByWin_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceHorse	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	Bet1ByWin
	SET
		TS2 = GETDATE ()
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_Bet6ByTrifecta_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Bet6ByTrifecta_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceHorse	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	Bet6ByTrifecta
	SET
		TS2 = GETDATE ()
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_ConfigBet_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_ConfigBet_Update]
	@BetCount [int]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- ConfigBet		:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	ConfigBet
	SET
		CurrentValue = 0
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 1
;
UPDATE
	ConfigBet
	SET
		CurrentValue = 0
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 2
;
UPDATE
	ConfigBet
	SET
		CurrentValue = 0
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 3
;
UPDATE
	ConfigBet
	SET
		CurrentValue = 0
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 4
;
UPDATE
	ConfigBet
	SET
		CurrentValue = 0
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 5
;
UPDATE
	ConfigBet
	SET
		CurrentValue = 0
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 6
;
UPDATE
	ConfigBet
	SET
		CurrentValue = @BetCount
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 7
;
UPDATE
	ConfigBet
	SET
		CurrentValue = 0
	WHERE
		ConfigTypeCD = 1
		AND BetTypeCD = 8
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_DataMining_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_DataMining_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	DataMining
	SET
		TS2 = GETDATE ()
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_Hansyoku_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Hansyoku_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- HansyokuByTotal00	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	Hansyoku
	SET
		TS2 = GETDATE()
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_HorseByCourseType_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_HorseByCourseType_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- HorseByCourseType	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	HorseByCourseType
	SET
		TS2 = GETDATE()
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_HorseByDistanceType_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_HorseByDistanceType_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- HorseByDistance	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	HorseByDistanceType
	SET
		TS2 = GETDATE()
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_HorseByRunningStyle_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_HorseByRunningStyle_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- HorseByRunningStyle	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	HorseByRunningStyle
	SET
		TS2 = GETDATE()
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_HorseByTotal_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_HorseByTotal_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- HorseByTotal	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	HorseByTotal
	SET
		TS2 = GETDATE()
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_HorseByTrackCondition_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_HorseByTrackCondition_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- HorseByTrackCondition	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	HorseByTrackCondition
	SET
		TS2 = GETDATE()
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_Jocky_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Jocky_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- Jocky	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	Jocky
	SET
		TS2 = GETDATE()
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_JockyByDistanceType_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_JockyByDistanceType_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- JockyByDistanceType	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	JockyByDistanceType
	SET
		TS2 = GETDATE()
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_JockyByTotal_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_JockyByTotal_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- JockyByTotal	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	JockyByTotal
	SET
		TS2 = GETDATE()
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_JockyByTrackType_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_JockyByTrackType_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- JockyByTrackType	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	JockyByTrackType
	SET
		TS2 = GETDATE()
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_MgmtBet_Truncate]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_MgmtBet_Truncate]
WITH EXECUTE AS CALLER
AS
BEGIN
SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- MgmtBet Clear Bet Data
--------------------------------------------------------------------------------
TRUNCATE TABLE MgmtBet
;

END



GO
/****** Object:  StoredProcedure [dbo].[uspx_MgmtBet_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_MgmtBet_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	MgmtBet
	SET
		TS2 = GETDATE();

END



GO
/****** Object:  StoredProcedure [dbo].[uspx_MgmtBet_TS2_Update_ByRaceNum]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_MgmtBet_TS2_Update_ByRaceNum]
	@RaceDate [datetime],
	@JyoCD [nchar](2),
	@Kaiji [int],
	@Nichiji [int],
	@RaceNum [int]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	MgmtBet
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate = @RaceDate
		AND JyoCD = @JyoCD
		AND Kaiji = @Kaiji
		AND Nichiji = @Nichiji
		AND RaceNum = @RaceNum;

END


GO
/****** Object:  StoredProcedure [dbo].[uspx_MgmtSim_Truncate]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_MgmtSim_Truncate]
WITH EXECUTE AS CALLER
AS
BEGIN
SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- mgmtSim Clear Bet Data
--------------------------------------------------------------------------------
TRUNCATE TABLE MgmtSim
;

END



GO
/****** Object:  StoredProcedure [dbo].[uspx_Odds1ByBracket_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Odds1ByBracket_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Odds1ByWinPlace	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	Odds1ByBracket
	SET
		TS2 = GETDATE();

END



GO
/****** Object:  StoredProcedure [dbo].[uspx_Odds1Place_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Odds1Place_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Odds1ByPlacePlace	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	Odds1ByPlace
	SET
		TS2 = GETDATE();

END


GO
/****** Object:  StoredProcedure [dbo].[uspx_Odds1Win_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Odds1Win_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Odds1ByWinPlace	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	Odds1ByWin
	SET
		TS2 = GETDATE();

END



GO
/****** Object:  StoredProcedure [dbo].[uspx_Odds2ByQuinella_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Odds2ByQuinella_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Odds1ByWinPlace	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	Odds2ByQuinella
	SET
		TS2 = GETDATE();

END



GO
/****** Object:  StoredProcedure [dbo].[uspx_Odds3ByWide_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Odds3ByWide_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	Odds3ByWide
	SET
		TS2 = GETDATE();

END



GO
/****** Object:  StoredProcedure [dbo].[uspx_Odds4ByExacta_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Odds4ByExacta_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	Odds4ByExacta
	SET
		TS2 = GETDATE();

END



GO
/****** Object:  StoredProcedure [dbo].[uspx_Odds5ByTrio_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Odds5ByTrio_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	Odds5ByTrio
	SET
		TS2 = GETDATE();

END



GO
/****** Object:  StoredProcedure [dbo].[uspx_Odds6ByTrifecta_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Odds6ByTrifecta_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	Odds6ByTrifecta
	SET
		TS2 = GETDATE();

END



GO
/****** Object:  StoredProcedure [dbo].[uspx_PayoffByPayAll_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_PayoffByPayAll_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- PayoffByPayAll	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	PayoffByPayAll
	SET
		TS2 = GETDATE();
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_PayoffByPayAll_TS2_Update_ByRaceNum]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_PayoffByPayAll_TS2_Update_ByRaceNum]
	@RaceDate [datetime],
	@JyoCD [nchar](2),
	@Kaiji [int],
	@Nichiji [int],
	@RaceNum [int]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	PayoffByPayAll
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate = @RaceDate
		AND JyoCD = @JyoCD
		AND Kaiji = @Kaiji
		AND Nichiji = @Nichiji
		AND RaceNum = @RaceNum;

END



GO
/****** Object:  StoredProcedure [dbo].[uspx_Race_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Race_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	Race
	SET
		TS2 = GETDATE ()
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_Race_TS2_Update_ByRaceAll]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Race_TS2_Update_ByRaceAll]
WITH EXECUTE AS CALLER
AS
BEGIN

DECLARE @RaceDate datetime = '2013-01-01'

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	Race
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate >= @RaceDate
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_Race_TS2_Update_ByRaceDate]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_Race_TS2_Update_ByRaceDate]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	Race
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate >= '2015-12-01'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_Select]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_Select]
WITH EXECUTE AS CALLER
AS
BEGIN

SELECT
	*
	FROM
		RaceHorse
	WHERE
		RaceDate >= '2014-01-01'

END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceHorse	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE ()
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceAll]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceAll]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

DECLARE @RaceDate datetime = '2013-01-01'
--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate >= @RaceDate
;
END





GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate]
	@RaceDate [datetime]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate = @RaceDate
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_1900_1986]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_1900_1986]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '1900-01-01' AND '1986-12-31'
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_1987_1988]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_1987_1988]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '1987-01-01' AND '1988-12-31'
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_1989_1990]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_1989_1990]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '1989-01-01' AND '1990-12-31'
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_1991_1992]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_1991_1992]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '1991-01-01' AND '1992-12-31'
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_1993_1994]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_1993_1994]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '1993-01-01' AND '1994-12-31'
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_1995_1996]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_1995_1996]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '1995-01-01' AND '1996-12-31'
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_1997_1998]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_1997_1998]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '1997-01-01' AND '1998-12-31'
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_1999_2000]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_1999_2000]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '1999-01-01' AND '2000-12-31'
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2001_2002]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2001_2002]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2001-01-01' AND '2002-12-31'
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2003_2003]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2003_2003]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2003-01-01' AND '2003-12-31'
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2004_2004]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2004_2004]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2004-01-01' AND '2004-12-31'
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2005_2005]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2005_2005]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2005-01-01' AND '2005-12-31'
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2006_2006]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2006_2006]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2006-01-01' AND '2006-12-31'
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2007_2007]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2007_2007]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2007-01-01' AND '2007-12-31'
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2008_2008]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2008_2008]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2008-01-01' AND '2008-12-31'
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2009_2009]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2009_2009]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2009-01-01' AND '2009-12-31'
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2010_2010]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2010_2010]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2010-01-01' AND '2010-12-31'
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2011_2011]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2011_2011]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2011-01-01' AND '2011-12-31'
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2012_2012]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2012_2012]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2012-01-01' AND '2012-12-31'
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2013_2013]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2013_2013]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2013-01-01' AND '2013-12-31'
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2014_2014]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2014_2014]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2014-01-01' AND '2014-12-31'
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2015_2015]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceDate_2015_2015]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2015-01-01' AND '2015-12-31'
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_ByRaceNum]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_ByRaceNum]
	@RaceDate [datetime],
	@JyoCD [nchar](2),
	@Kaiji [int],
	@Nichiji [int],
	@RaceNum [int]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- Race	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate = @RaceDate
		AND JyoCD = @JyoCD
		AND Kaiji = @Kaiji
		AND Nichiji = @Nichiji
		AND RaceNum = @RaceNum
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_Temp]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_Temp]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceHorse	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate >= '2015-12-01'
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceHorse_TS2_Update_Temp2]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceHorse_TS2_Update_Temp2]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceHorse	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate >= '2014-06-01'
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResult_Delete_RaceDateFrom]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResult_Delete_RaceDateFrom]
WITH EXECUTE AS CALLER
AS
BEGIN

SET NOCOUNT ON;

DECLARE @RaceDateFrom datetime2 = '2016-02-20'

DELETE FROM
RaceResult
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByBanusi
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByBanusiByTotal
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByBreeder
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByBreederByTotal
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByChildrenJyoken01
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByChildrenJyoken02
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByChildrenJyoken05
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByHorse
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByHorseByCourseType
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByHorseByDistanceType
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByHorseByJyo
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByHorseByRunningStyle
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByHorseByTotal
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByHorseByTrackCondition
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByHorseByTrackType
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByJocky
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByJockyByDistanceType
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByJockyByTrackType
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByParents01
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByParents02
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByParents05
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByTrainer
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByTrainerByDistanceType
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByTrainerByJyo
WHERE racedate >= @RaceDateFrom
;
DELETE FROM
RaceResultByTrainerByTrackType
WHERE racedate >= @RaceDateFrom
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResult_InsertUpdate_RaceResultByChildrenCourseType01_2004]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResult_InsertUpdate_RaceResultByChildrenCourseType01_2004]
WITH EXECUTE AS CALLER
AS
BEGIN
         BEGIN TRANSACTION;
         DECLARE @RaceIdFrom [NCHAR](20)= '20040101-00-00-00-00';
         DECLARE @RaceIdTo [NCHAR](20)= '20041231-00-00-00-00';
         DECLARE @Return INT= 0;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenCourseType01
         --------------------------------------------------------------------------------
         DELETE RaceResultByChildrenCourseType01
         FROM RaceResultByChildrenCourseType01
         WHERE RaceResultByChildrenCourseType01.RaceId BETWEEN @RaceIdFrom AND @RaceIdTo;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenCourseType01
         --------------------------------------------------------------------------------
         INSERT INTO RaceResultByChildrenCourseType01
         (RaceId,
          KettoNum,
          CourseTypeCD,
          RaceDate,
          RunCount,
          HitCount1,
          HitRate1,
          HitCount12,
          HitRate12,
          HitCount123,
          HitRate123,
          ExpectedValueWin,
          ExpectedValuePlace,
          TS
         )
                SELECT t1.RaceId,
                       t1.KettoNum,
                       t1.CourseTypeCD,
                       Race.RaceDate,
                       t1.RunCount,
                       t1.HitCount1,
                       t1.HitRate1,
                       t1.HitCount12,
                       t1.HitRate12,
                       t1.HitCount123,
                       t1.HitRate123,
                       t1.ExpectedValueWin,
                       t1.ExpectedValuePlace,
                       GETDATE()
                FROM
                (
                    SELECT RaceHorse.RaceId,
                           RaceHorse.KettoNum,
                           Race.CourseTypeCD,
                           SUM(RaceHorse_Child.RunCount) AS RunCount,
                           SUM(RaceHorse_Child.HitCount1) AS HitCount1,
                           SUM(RaceHorse_Child.HitCount1) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate1,
                           SUM(RaceHorse_Child.HitCount12) AS HitCount12,
                           SUM(RaceHorse_Child.HitCount12) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate12,
                           SUM(RaceHorse_Child.HitCount123) AS HitCount123,
                           SUM(RaceHorse_Child.HitCount123) / NULLIF(SUM(RaceHorse_Child.RunCount), 0) AS HitRate123,
                           AVG(RaceHorseBet_Child.PayoffWin) AS ExpectedValueWin,
                           AVG(RaceHorseBet_Child.PayOffPlace) AS ExpectedValuePlace
                    FROM RaceResult
                         INNER JOIN RaceHorse
                         ON RaceHorse.RaceId = RaceResult.RaceId
                            AND RaceHorse.KettoNum = RaceResult.KettoNum
                         INNER JOIN Race
                         ON Race.RaceId = RaceHorse.RaceId
                         INNER JOIN Horse
                         ON Horse.KettoNum = RaceHorse.KettoNum
                         INNER JOIN Horse AS Horse_Child
                         ON Horse_Child.Ketto3InfoHansyokuNum1 = Horse.Ketto3InfoHansyokuNum1
                         INNER JOIN RaceHorse AS RaceHorse_Child
                         ON RaceHorse_Child.KettoNum = Horse_Child.KettoNum
                         INNER JOIN Race Race_Child
                         ON Race_Child.RaceId = RaceHorse_Child.RaceId
                         INNER JOIN RaceHorseBet AS RaceHorseBet_Child
                         ON RaceHorseBet_Child.RaceId = RaceHorse_Child.RaceId
                            AND RaceHorseBet_Child.KettoNum = RaceHorse_Child.KettoNum
                    WHERE Race_Child.IsNormal = 1
                          AND RaceHorse_Child.IsNormal = 1
                          AND Race.RaceDate > Race_Child.RaceDate
                          AND Race.CourseTypeCD = Race_Child.CourseTypeCD
                          AND RaceHorse.RaceId BETWEEN @RaceIdFrom AND @RaceIdTo
                    GROUP BY RaceHorse.RaceId,
                             RaceHorse.KettoNum,
                             Race.CourseTypeCD
                ) AS t1
                INNER JOIN Race
                ON Race.RaceId = t1.RaceId;
         SET @Return = @@ROWCOUNT;
         --------------------------------------------------------------------------------
         -- RaceResultByChildrenCourseType01
         --------------------------------------------------------------------------------
         UPDATE RaceResultByChildrenCourseType01
           SET
               RunCountLog = LOG(RaceResultByChildrenCourseType01.RunCount + 1),
               HitCount1Log = LOG(RaceResultByChildrenCourseType01.HitCount1 + 1),
               HitCount12Log = LOG(RaceResultByChildrenCourseType01.HitCount12 + 1),
               HitCount123Log = LOG(RaceResultByChildrenCourseType01.HitCount123 + 1),
               TS2 = GETDATE()
         FROM RaceResultByChildrenCourseType01
         WHERE RaceResultByChildrenCourseType01.RaceId BETWEEN @RaceIdFrom AND @RaceIdTo;
  
         --------------------------------------------------------------------------------
         -- Return
         --------------------------------------------------------------------------------  
         COMMIT TRANSACTION;
         RETURN @Return;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResult_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResult_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResult
	SET
		TS2 = GETDATE()
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResult_TS2_Update_2004_2009]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResult_TS2_Update_2004_2009]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResult
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2004-01-01' AND '2009-12-31'

;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResult_TS2_Update_2010_2016]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResult_TS2_Update_2010_2016]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResult
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2010-01-01' AND '2016-12-31'

;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResult_TS2_Update_Temp1]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResult_TS2_Update_Temp1]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResult
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate >='2016-02-13'
--		AND JyoCD = '08'
--		AND RaceNum = 12
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByBanusi_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByBanusi_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByBanusi
	SET
		TS2 = GETDATE()
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByBanusiByTotal_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByBanusiByTotal_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByBanusiByTotal	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByBanusiByTotal
	SET
		TS2 = GETDATE()
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByBreeder_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByBreeder_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByBreeder	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByBreeder
	SET
		TS2 = GETDATE()
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByBreederByTotal_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByBreederByTotal_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByBreederByTotal	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByBreederByTotal
	SET
		TS2 = GETDATE();
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByBreederByTotal_TS2_Update_2004_2006]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByBreederByTotal_TS2_Update_2004_2006]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByBreederByTotal	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByBreederByTotal
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2004-01-01' AND '2006-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByBreederByTotal_TS2_Update_2007_2009]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByBreederByTotal_TS2_Update_2007_2009]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByBreederByTotal	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByBreederByTotal
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2007-01-01' AND '2009-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByBreederByTotal_TS2_Update_2010_2012]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByBreederByTotal_TS2_Update_2010_2012]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByBreederByTotal	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByBreederByTotal
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2010-01-01' AND '2012-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByBreederByTotal_TS2_Update_2013_2015]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByBreederByTotal_TS2_Update_2013_2015]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByBreederByTotal	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByBreederByTotal
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2013-01-01' AND '2015-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByChildrenAll_Truncate_All]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByChildrenAll_Truncate_All]
WITH EXECUTE AS CALLER
AS
BEGIN
--SET NOCOUNT ON;

--------------------------------------------------------------------------------
-- RaceResultByChildrenAll
--------------------------------------------------------------------------------
TRUNCATE TABLE RaceResultByChildrenAll01;
TRUNCATE TABLE RaceResultByChildrenAll02;
TRUNCATE TABLE RaceResultByChildrenAll03;
TRUNCATE TABLE RaceResultByChildrenAll04;
TRUNCATE TABLE RaceResultByChildrenAll05;
TRUNCATE TABLE RaceResultByChildrenAll06;
TRUNCATE TABLE RaceResultByChildrenAll07;
TRUNCATE TABLE RaceResultByChildrenAll08;
TRUNCATE TABLE RaceResultByChildrenAll09;
TRUNCATE TABLE RaceResultByChildrenAll10;
TRUNCATE TABLE RaceResultByChildrenAll11;
TRUNCATE TABLE RaceResultByChildrenAll12;
TRUNCATE TABLE RaceResultByChildrenAll13;
TRUNCATE TABLE RaceResultByChildrenAll14;

END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByChildrenJyoken01_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByChildrenJyoken01_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- RaceResultByChildrenJyoken01	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByChildrenJyoken01
	SET
		TS2 = GETDATE()
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByChildrenJyoken02_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByChildrenJyoken02_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- RaceResultByChildrenJyoken02	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByChildrenJyoken02
	SET
		TS2 = GETDATE()
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByChildrenJyoken05_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByChildrenJyoken05_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- RaceResultByChildrenJyoken05	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByChildrenJyoken05
	SET
		TS2 = GETDATE()
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByChildrenTrackType01_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByChildrenTrackType01_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- RaceResultByChildrenTrackType01	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByChildrenTrackType01
	SET
		TS2 = GETDATE()
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByChildrenTrackType02_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByChildrenTrackType02_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- RaceResultByChildrenTrackType02	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByChildrenTrackType02
	SET
		TS2 = GETDATE()
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByChildrenTrackType05_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByChildrenTrackType05_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- RaceResultByChildrenTrackType05	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByChildrenTrackType05
	SET
		TS2 = GETDATE()
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorse_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorse_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorse
	SET
		TS2 = GETDATE()
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorse_TS2_Update_2004_2006]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorse_TS2_Update_2004_2006]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2004-01-01' AND '2006-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorse_TS2_Update_2007_2009]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorse_TS2_Update_2007_2009]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2007-01-01' AND '2009-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorse_TS2_Update_2010_2012]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorse_TS2_Update_2010_2012]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2010-01-01' AND '2012-12-31'
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorse_TS2_Update_2013_2015]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorse_TS2_Update_2013_2015]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorse
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2013-01-01' AND '2015-12-31'
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByCourseType_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByCourseType_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByCourseType
	SET
		TS2 = GETDATE()
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByCourseType_TS2_Update_2004_2006]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByCourseType_TS2_Update_2004_2006]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByCourseType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2004-01-01' AND '2006-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByCourseType_TS2_Update_2007_2009]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByCourseType_TS2_Update_2007_2009]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByCourseType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2007-01-01' AND '2009-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByCourseType_TS2_Update_2010_2012]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByCourseType_TS2_Update_2010_2012]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByCourseType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2010-01-01' AND '2012-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByCourseType_TS2_Update_2013_2015]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByCourseType_TS2_Update_2013_2015]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByCourseType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2013-01-01' AND '2015-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByDistanceType_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByDistanceType_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByDistanceType
	SET
		TS2 = GETDATE()
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByDistanceType_TS2_Update_2004_2006]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByDistanceType_TS2_Update_2004_2006]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByDistanceType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2004-01-01' AND '2006-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByDistanceType_TS2_Update_2007_2009]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByDistanceType_TS2_Update_2007_2009]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByDistanceType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2007-01-01' AND '2009-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByDistanceType_TS2_Update_2010_2012]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByDistanceType_TS2_Update_2010_2012]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByDistanceType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2010-01-01' AND '2012-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByDistanceType_TS2_Update_2013_2015]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByDistanceType_TS2_Update_2013_2015]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByDistanceType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2013-01-01' AND '2015-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByJyo_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByJyo_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByJyo
	SET
		TS2 = GETDATE()
;
END




GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByJyo_TS2_Update_2004_2006]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByJyo_TS2_Update_2004_2006]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByJyo
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2004-01-01' AND '2006-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByJyo_TS2_Update_2007_2009]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByJyo_TS2_Update_2007_2009]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByJyo
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2007-01-01' AND '2009-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByJyo_TS2_Update_2010_2012]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByJyo_TS2_Update_2010_2012]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByJyo
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2009-01-01' AND '2012-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByJyo_TS2_Update_2013_2015]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByJyo_TS2_Update_2013_2015]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByJyo
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2013-01-01' AND '2015-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByRunningStyle_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByRunningStyle_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE	
	RaceResultByHorseByRunningStyle
	SET
		TS2 = GETDATE()
;
END





GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByTotal_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByTotal_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByHorseByTotal	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByTotal
	SET
		TS2 = GETDATE()
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByTotal_TS2_Update_2004_2006]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByTotal_TS2_Update_2004_2006]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByHorseByTotal	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByTotal
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2004-01-01' AND '2006-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByTotal_TS2_Update_2007_2009]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByTotal_TS2_Update_2007_2009]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByHorseByTotal	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByTotal
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2007-01-01' AND '2009-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByTotal_TS2_Update_2010_2012]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByTotal_TS2_Update_2010_2012]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByHorseByTotal	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByTotal
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2010-01-01' AND '2012-12-31'
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByTotal_TS2_Update_2013_2015]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByTotal_TS2_Update_2013_2015]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByHorseByTotal	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByTotal
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2013-01-01' AND '2015-12-31'
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByTrackCondition_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByTrackCondition_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByHorseByTrackCondition	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByTrackCondition
	SET
		TS2 = GETDATE()
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByTrackCondition_TS2_Update_2004_2006]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByTrackCondition_TS2_Update_2004_2006]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByHorseByTrackCondition	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByTrackCondition
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2004-01-01' AND '2006-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByTrackCondition_TS2_Update_2007_2009]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByTrackCondition_TS2_Update_2007_2009]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByHorseByTrackCondition	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByTrackCondition
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2007-01-01' AND '2009-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByTrackCondition_TS2_Update_2010_2012]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByTrackCondition_TS2_Update_2010_2012]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByHorseByTrackCondition	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByTrackCondition
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2010-01-01' AND '2012-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByTrackCondition_TS2_Update_2013_2015]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByTrackCondition_TS2_Update_2013_2015]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByHorseByTrackCondition	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByTrackCondition
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2013-01-01' AND '2015-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByTrackType_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByTrackType_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByHorseByTrackCondition	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByTrackType
	SET
		TS2 = GETDATE()
;
END





GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByTrackType_TS2_Update_2004_2006]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByTrackType_TS2_Update_2004_2006]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByHorseByTrackCondition	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByTrackType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2004-01-01' AND '2006-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByTrackType_TS2_Update_2007_2009]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByTrackType_TS2_Update_2007_2009]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByHorseByTrackCondition	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByTrackType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2007-01-01' AND '2009-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByTrackType_TS2_Update_2010_2012]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByTrackType_TS2_Update_2010_2012]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByHorseByTrackCondition	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByTrackType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2010-01-01' AND '2012-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByHorseByTrackType_TS2_Update_2013_2015]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByHorseByTrackType_TS2_Update_2013_2015]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByHorseByTrackCondition	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByHorseByTrackType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2012-01-01' AND '2015-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJocky_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJocky_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByJocky	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJocky
	SET
		TS2 = GETDATE()
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJocky_TS2_Update_2004_2006]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJocky_TS2_Update_2004_2006]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByJocky	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJocky
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2004-01-01' AND '2006-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJocky_TS2_Update_2007_2009]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJocky_TS2_Update_2007_2009]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByJocky	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJocky
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2007-01-01' AND '2009-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJocky_TS2_Update_2010_2012]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJocky_TS2_Update_2010_2012]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByJocky	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJocky
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2010-01-01' AND '2012-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJocky_TS2_Update_2013_2015]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJocky_TS2_Update_2013_2015]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByJocky	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJocky
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2013-01-01' AND '2015-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJockyByDistanceType_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJockyByDistanceType_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByJockyByDistanceType	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJockyByDistanceType
	SET
		TS2 = GETDATE()
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJockyByDistanceType_TS2_Update_2004_2006]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJockyByDistanceType_TS2_Update_2004_2006]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByJockyByDistanceType	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJockyByDistanceType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2004-01-01' AND '2006-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJockyByDistanceType_TS2_Update_2007_2009]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJockyByDistanceType_TS2_Update_2007_2009]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByJockyByDistanceType	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJockyByDistanceType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2007-01-01' AND '2009-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJockyByDistanceType_TS2_Update_2010_2012]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJockyByDistanceType_TS2_Update_2010_2012]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByJockyByDistanceType	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJockyByDistanceType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2010-01-01' AND '2012-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJockyByDistanceType_TS2_Update_2013_2015]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJockyByDistanceType_TS2_Update_2013_2015]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByJockyByDistanceType	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJockyByDistanceType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2013-01-01' AND '2015-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJockyByJyo_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJockyByJyo_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByJockyByJyo	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJockyByJyo
	SET
		TS2 = GETDATE()
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJockyByJyo_TS2_Update_2004_2006]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJockyByJyo_TS2_Update_2004_2006]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByJockyByJyo	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJockyByJyo
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2004-01-01' AND '2006-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJockyByJyo_TS2_Update_2007_2009]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJockyByJyo_TS2_Update_2007_2009]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByJockyByJyo	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJockyByJyo
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2007-01-01' AND '2009-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJockyByJyo_TS2_Update_2010_2012]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJockyByJyo_TS2_Update_2010_2012]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByJockyByJyo	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJockyByJyo
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2009-01-01' AND '2012-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJockyByJyo_TS2_Update_2013_2015]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJockyByJyo_TS2_Update_2013_2015]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByJockyByJyo	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJockyByJyo
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2013-01-01' AND '2015-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJockyByTrackType_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJockyByTrackType_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByJockyByTrackType	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJockyByTrackType
	SET
		TS2 = GETDATE()
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJockyByTrackType_TS2_Update_2004_2006]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJockyByTrackType_TS2_Update_2004_2006]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- RaceResultByJockyByTrackType	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJockyByTrackType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2004-01-01' AND '2006-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJockyByTrackType_TS2_Update_2007_2009]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJockyByTrackType_TS2_Update_2007_2009]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- RaceResultByJockyByTrackType	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJockyByTrackType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2007-01-01' AND '2009-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJockyByTrackType_TS2_Update_2010_2012]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJockyByTrackType_TS2_Update_2010_2012]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- RaceResultByJockyByTrackType	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJockyByTrackType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2010-01-01' AND '2012-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByJockyByTrackType_TS2_Update_2013_2015]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByJockyByTrackType_TS2_Update_2013_2015]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- RaceResultByJockyByTrackType	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByJockyByTrackType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2013-01-01' AND '2015-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainer_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainer_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainer
	SET
		TS2 = GETDATE()
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainer_TS2_Update_2004_2006]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainer_TS2_Update_2004_2006]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainer
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2004-01-01' AND '2006-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainer_TS2_Update_2007_2009]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainer_TS2_Update_2007_2009]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainer
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2007-01-01' AND '2009-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainer_TS2_Update_2010_2012]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainer_TS2_Update_2010_2012]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainer
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2010-01-01' AND '2012-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainer_TS2_Update_2013_2015]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainer_TS2_Update_2013_2015]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainer
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2013-01-01' AND '2015-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainerByDistanceType_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainerByDistanceType_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByTrainerByDistance	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainerByDistanceType
	SET
		TS2 = GETDATE()
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainerByDistanceType_TS2_Update_2004_2006]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainerByDistanceType_TS2_Update_2004_2006]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByTrainerByDistance	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainerByDistanceType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2004-01-01' AND '2006-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainerByDistanceType_TS2_Update_2007_2009]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainerByDistanceType_TS2_Update_2007_2009]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByTrainerByDistance	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainerByDistanceType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2007-01-01' AND '2009-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainerByDistanceType_TS2_Update_2010_2012]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainerByDistanceType_TS2_Update_2010_2012]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByTrainerByDistance	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainerByDistanceType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2010-01-01' AND '2012-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainerByDistanceType_TS2_Update_2013_2015]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainerByDistanceType_TS2_Update_2013_2015]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByTrainerByDistance	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainerByDistanceType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2013-01-01' AND '2015-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainerByJyo_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainerByJyo_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByTrainerByJyo	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainerByJyo
	SET
		TS2 = GETDATE()
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainerByJyo_TS2_Update_2004_2006]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainerByJyo_TS2_Update_2004_2006]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByTrainerByJyo	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainerByJyo
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2004-01-01' AND '2006-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainerByJyo_TS2_Update_2007_2009]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainerByJyo_TS2_Update_2007_2009]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByTrainerByJyo	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainerByJyo
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2007-01-01' AND '2009-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainerByJyo_TS2_Update_2010_2012]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainerByJyo_TS2_Update_2010_2012]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByTrainerByJyo	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainerByJyo
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2010-01-01' AND '2012-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainerByJyo_TS2_Update_2013_2015]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainerByJyo_TS2_Update_2013_2015]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByTrainerByJyo	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainerByJyo
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2013-01-01' AND '2015-12-31'
;
END

GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainerByTrackType_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainerByTrackType_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN

--------------------------------------------------------------------------------
-- RaceResultByTrainerByTrackType	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainerByTrackType
	SET
		TS2 = GETDATE()
;
END



GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainerByTrackType_TS2_Update_2004_2006]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainerByTrackType_TS2_Update_2004_2006]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- RaceResultByTrainerByTrackType	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainerByTrackType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2004-01-01' AND '2006-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainerByTrackType_TS2_Update_2007_2009]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainerByTrackType_TS2_Update_2007_2009]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- RaceResultByTrainerByTrackType	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainerByTrackType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2007-01-01' AND '2009-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainerByTrackType_TS2_Update_2010_2012]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainerByTrackType_TS2_Update_2010_2012]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- RaceResultByTrainerByTrackType	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainerByTrackType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2010-01-01' AND '2012-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_RaceResultByTrainerByTrackType_TS2_Update_2013_2015]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_RaceResultByTrainerByTrackType_TS2_Update_2013_2015]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- RaceResultByTrainerByTrackType	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	RaceResultByTrainerByTrackType
	SET
		TS2 = GETDATE()
	WHERE
		RaceDate BETWEEN '2013-01-01' AND '2015-12-31'
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_StdBaTaijyu_DelIns]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_StdBaTaijyu_DelIns]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;

         --------------------------------------------------------------------------------
         -- DELETE StdTime
         --------------------------------------------------------------------------------
         DELETE StdBaTaijyu;

         --------------------------------------------------------------------------------
         -- INSERT StdTime By Cndition
         --------------------------------------------------------------------------------
         INSERT INTO StdBaTaijyu
         (ID,
          BaTaijyuCount,
          BaTaijyuAvg,
          BaTaijyuStDev,
          BaTaijyuSum,
          BaTaijyuMin,
          BaTaijyuMax,
          BaTaijyuSigma3Minus,
          BaTaijyuSigma2Minus,
          BaTaijyuSigma1Minus,
          BaTaijyuSigma1Plus,
          BaTaijyuSigma2Plus,
          BaTaijyuSigma3Plus,
          TS
         )
                SELECT 1,
                       COUNT(RaceHorse.BaTaijyu),
                       AVG(RaceHorse.BaTaijyu),
                       STDEV(RaceHorse.BaTaijyu),
                       SUM(RaceHorse.BaTaijyu),
                       MIN(RaceHorse.BaTaijyu),
                       MAX(RaceHorse.BaTaijyu),
                       AVG(RaceHorse.BaTaijyu) - STDEV(RaceHorse.BaTaijyu) * 3,
                       AVG(RaceHorse.BaTaijyu) - STDEV(RaceHorse.BaTaijyu) * 2,
                       AVG(RaceHorse.BaTaijyu) - STDEV(RaceHorse.BaTaijyu) * 1,
                       AVG(RaceHorse.BaTaijyu) + STDEV(RaceHorse.BaTaijyu) * 1,
                       AVG(RaceHorse.BaTaijyu) + STDEV(RaceHorse.BaTaijyu) * 2,
                       AVG(RaceHorse.BaTaijyu) + STDEV(RaceHorse.BaTaijyu) * 3,
                       GETDATE()
                FROM RaceHorse
                     INNER JOIN Race ON Race.RaceDate = RaceHorse.RaceDate
                                        AND Race.JyoCD = RaceHorse.JyoCD
                                        AND Race.Kaiji = RaceHorse.Kaiji
                                        AND Race.Nichiji = RaceHorse.Nichiji
                                        AND Race.RaceNum = RaceHorse.RaceNum
                WHERE(dbo.Race.DataKubun = '7')
                     AND (dbo.RaceHorse.DataKubun = '7')
                     AND (dbo.RaceHorse.IJyoCD = '0')
                     AND (dbo.RaceHorse.BaTaijyu > 0);
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspx_StdDMTimeByClass_DelIns]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_StdDMTimeByClass_DelIns]
WITH EXECUTE AS CALLER
AS
DECLARE @BaseCount INT= NULL;
     DECLARE @BaseStdDMTimeAvg FLOAT= NULL;
     DECLARE @BaseStdDMTimeStDev FLOAT= NULL;
     DECLARE @BaseStdDMTimeSum FLOAT= NULL;
     DECLARE @BaseStdDMTimeMin FLOAT= NULL;
     DECLARE @BaseStdDMTimeMax FLOAT= NULL;
     BEGIN
         SET NOCOUNT ON;

         --------------------------------------------------------------------------------
         -- Basic Time
         --------------------------------------------------------------------------------

         SELECT @BaseCount = [DMTimeCount],
                @BaseStdDMTimeAvg = [DMTimeAvg],
                @BaseStdDMTimeStDev = [DMTimeStDev],
                @BaseStdDMTimeSum = [DMTimeSum],
                @BaseStdDMTimeMin = [DMTimeMin],
                @BaseStdDMTimeMax = [DMTimeMax]
         FROM [Jackpot].[dbo].[Z_StdDMTimeByBase]
         WHERE Z_StdDMTimeByBase.ID = 1;
  
  
         --------------------------------------------------------------------------------
         -- DELETE StdDMTime
         --------------------------------------------------------------------------------
         DELETE StdDMTimeByClass;

         --------------------------------------------------------------------------------
         -- INSERT StdDMTime By Cndition
         --------------------------------------------------------------------------------
         INSERT INTO StdDMTimeByClass
         (TrackTypeCD,
          TrackCD,
          JyoCD,
          Kyori,
          CourseKubunCD,
          TrackConditionCD,
          JyokenCD5,
          DMTimeCount,
          DMTimeAvg,
          DMTimeStDev,
          DMTimeSum,
          DMTimeMin,
          DMTimeMax,
          DMTimeSigma3Minus,
          DMTimeSigma2Minus,
          DMTimeSigma1Minus,
          DMTimeSigma1Plus,
          DMTimeSigma2Plus,
          DMTimeSigma3Plus,
          TS
         )
                SELECT TrackTypeCD,
                       TrackCD,
                       JyoCD,
                       Kyori,
                       CourseKubunCD,
                       TrackConditionCD,
                       JyokenCD5,
                       DMTimeCount,
                       DMTimeAvg,
                       DMTimeStDev,
                       DMTimeSum,
                       DMTimeMin,
                       DMTimeMax,
                       DMTimeSigma3Minus,
                       DMTimeSigma2Minus,
                       DMTimeSigma1Minus,
                       DMTimeSigma1Plus,
                       DMTimeSigma2Plus,
                       DMTimeSigma3Plus,
                       GETDATE()
                FROM Z_StdDMTimeByClass;

         --------------------------------------------------------------------------------
         -- UPDATE
         --------------------------------------------------------------------------------
         UPDATE StdDMTimeByClass
           SET
               Ratio = NULLIF(tbl1.DMTimeAvg / @BaseStdDMTimeAvg, 0),
               TS2 = GETDATE()
         FROM StdDMTimeByClass
              INNER JOIN Z_StdDMTimeByClass AS tbl1 ON tbl1.TrackCD = StdDMTimeByClass.TrackCD
                                                       AND tbl1.JyoCD = StdDMTimeByClass.JyoCD
                                                       AND tbl1.Kyori = StdDMTimeByClass.Kyori
                                                       AND tbl1.CourseKubunCD = StdDMTimeByClass.CourseKubunCD
                                                       AND tbl1.TrackConditionCD = StdDMTimeByClass.TrackConditionCD;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspx_StdHaronTimeL3ByClass_DelIns]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_StdHaronTimeL3ByClass_DelIns]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         --------------------------------------------------------------------------------
         -- DELETE
         --------------------------------------------------------------------------------
         DELETE StdHaronTimeL3ByClass;
         --------------------------------------------------------------------------------
         -- INSERT
         --------------------------------------------------------------------------------
         INSERT INTO StdHaronTimeL3ByClass
         (TrackTypeCD,
          TrackCD,
          JyoCD,
          Kyori,
          CourseKubunCD,
          TrackConditionCD,
          JyokenCD5,
          ClassHaronTimeL3Count,
          ClassHaronTimeL3Avg,
          ClassHaronTimeL3StDev,
          ClassHaronTimeL3Sum,
          ClassHaronTimeL3Min,
          ClassHaronTimeL3Max,
          ClassHaronTimeL3Sigma3Minus,
          ClassHaronTimeL3Sigma2Minus,
          ClassHaronTimeL3Sigma1Minus,
          ClassHaronTimeL3Sigma1Plus,
          ClassHaronTimeL3Sigma2Plus,
          ClassHaronTimeL3Sigma3Plus,
          TS
         )
                SELECT TrackTypeCD,
                       TrackCD,
                       JyoCD,
                       Kyori,
                       CourseKubunCD,
                       TrackConditionCD,
                       JyokenCD5,
                       ClassHaronTimeL3Count,
                       ClassHaronTimeL3Avg,
                       ClassHaronTimeL3StDev,
                       ClassHaronTimeL3Sum,
                       ClassHaronTimeL3Min,
                       ClassHaronTimeL3Max,
                       ClassHaronTimeL3Sigma3Minus,
                       ClassHaronTimeL3Sigma2Minus,
                       ClassHaronTimeL3Sigma1Minus,
                       ClassHaronTimeL3Sigma1Plus,
                       ClassHaronTimeL3Sigma2Plus,
                       ClassHaronTimeL3Sigma3Plus,
                       GETDATE()
                FROM Z_StdHaronTimeL3ByClass;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspx_StdHaronTimeL4ByClass_DelIns]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_StdHaronTimeL4ByClass_DelIns]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         --------------------------------------------------------------------------------
         -- DELETE
         --------------------------------------------------------------------------------
         DELETE StdHaronTimeL4ByClass;
         --------------------------------------------------------------------------------
         -- INSERT
         --------------------------------------------------------------------------------
         INSERT INTO StdHaronTimeL4ByClass
         (TrackTypeCD,
          TrackCD,
          JyoCD,
          Kyori,
          CourseKubunCD,
          TrackConditionCD,
          JyokenCD5,
          ClassHaronTimeL4Count,
          ClassHaronTimeL4Avg,
          ClassHaronTimeL4StDev,
          ClassHaronTimeL4Sum,
          ClassHaronTimeL4Min,
          ClassHaronTimeL4Max,
          ClassHaronTimeL4Sigma3Minus,
          ClassHaronTimeL4Sigma2Minus,
          ClassHaronTimeL4Sigma1Minus,
          ClassHaronTimeL4Sigma1Plus,
          ClassHaronTimeL4Sigma2Plus,
          ClassHaronTimeL4Sigma3Plus,
          TS
         )
                SELECT TrackTypeCD,
                       TrackCD,
                       JyoCD,
                       Kyori,
                       CourseKubunCD,
                       TrackConditionCD,
                       JyokenCD5,
                       ClassHaronTimeL4Count,
                       ClassHaronTimeL4Avg,
                       ClassHaronTimeL4StDev,
                       ClassHaronTimeL4Sum,
                       ClassHaronTimeL4Min,
                       ClassHaronTimeL4Max,
                       ClassHaronTimeL4Sigma3Minus,
                       ClassHaronTimeL4Sigma2Minus,
                       ClassHaronTimeL4Sigma1Minus,
                       ClassHaronTimeL4Sigma1Plus,
                       ClassHaronTimeL4Sigma2Plus,
                       ClassHaronTimeL4Sigma3Plus,
                       GETDATE()
                FROM Z_StdHaronTimeL4ByClass;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspx_StdHaronTimeS3ByClass_DelIns]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_StdHaronTimeS3ByClass_DelIns]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         --------------------------------------------------------------------------------
         -- DELETE
         --------------------------------------------------------------------------------
         DELETE StdHaronTimeS3ByClass;
         --------------------------------------------------------------------------------
         -- INSERT
         --------------------------------------------------------------------------------
         INSERT INTO StdHaronTimeS3ByClass
         (TrackTypeCD,
          TrackCD,
          JyoCD,
          Kyori,
          CourseKubunCD,
          TrackConditionCD,
          JyokenCD5,
          ClassHaronTimeS3Count,
          ClassHaronTimeS3Avg,
          ClassHaronTimeS3StDev,
          ClassHaronTimeS3Sum,
          ClassHaronTimeS3Min,
          ClassHaronTimeS3Max,
          ClassHaronTimeS3Sigma3Minus,
          ClassHaronTimeS3Sigma2Minus,
          ClassHaronTimeS3Sigma1Minus,
          ClassHaronTimeS3Sigma1Plus,
          ClassHaronTimeS3Sigma2Plus,
          ClassHaronTimeS3Sigma3Plus,
          TS
         )
                SELECT TrackTypeCD,
                       TrackCD,
                       JyoCD,
                       Kyori,
                       CourseKubunCD,
                       TrackConditionCD,
                       JyokenCD5,
                       ClassHaronTimeS3Count,
                       ClassHaronTimeS3Avg,
                       ClassHaronTimeS3StDev,
                       ClassHaronTimeS3Sum,
                       ClassHaronTimeS3Min,
                       ClassHaronTimeS3Max,
                       ClassHaronTimeS3Sigma3Minus,
                       ClassHaronTimeS3Sigma2Minus,
                       ClassHaronTimeS3Sigma1Minus,
                       ClassHaronTimeS3Sigma1Plus,
                       ClassHaronTimeS3Sigma2Plus,
                       ClassHaronTimeS3Sigma3Plus,
                       GETDATE()
                FROM Z_StdHaronTimeS3ByClass;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspx_StdHaronTimeS4ByClass_DelIns]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_StdHaronTimeS4ByClass_DelIns]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         --------------------------------------------------------------------------------
         -- DELETE
         --------------------------------------------------------------------------------
         DELETE StdHaronTimeS4ByClass;
         --------------------------------------------------------------------------------
         -- INSERT
         --------------------------------------------------------------------------------
         INSERT INTO StdHaronTimeS4ByClass
         (TrackTypeCD,
          TrackCD,
          JyoCD,
          Kyori,
          CourseKubunCD,
          TrackConditionCD,
          JyokenCD5,
          ClassHaronTimeS4Count,
          ClassHaronTimeS4Avg,
          ClassHaronTimeS4StDev,
          ClassHaronTimeS4Sum,
          ClassHaronTimeS4Min,
          ClassHaronTimeS4Max,
          ClassHaronTimeS4Sigma3Minus,
          ClassHaronTimeS4Sigma2Minus,
          ClassHaronTimeS4Sigma1Minus,
          ClassHaronTimeS4Sigma1Plus,
          ClassHaronTimeS4Sigma2Plus,
          ClassHaronTimeS4Sigma3Plus,
          TS
         )
                SELECT TrackTypeCD,
                       TrackCD,
                       JyoCD,
                       Kyori,
                       CourseKubunCD,
                       TrackConditionCD,
                       JyokenCD5,
                       ClassHaronTimeS4Count,
                       ClassHaronTimeS4Avg,
                       ClassHaronTimeS4StDev,
                       ClassHaronTimeS4Sum,
                       ClassHaronTimeS4Min,
                       ClassHaronTimeS4Max,
                       ClassHaronTimeS4Sigma3Minus,
                       ClassHaronTimeS4Sigma2Minus,
                       ClassHaronTimeS4Sigma1Minus,
                       ClassHaronTimeS4Sigma1Plus,
                       ClassHaronTimeS4Sigma2Plus,
                       ClassHaronTimeS4Sigma3Plus,
                       GETDATE()
                FROM Z_StdHaronTimeS4ByClass;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspx_StdHorseHaronTimeL3ByClass_DelIns]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_StdHorseHaronTimeL3ByClass_DelIns]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         --------------------------------------------------------------------------------
         -- DELETE
         --------------------------------------------------------------------------------
         DELETE StdHorseHaronTimeL3ByClass;
         --------------------------------------------------------------------------------
         -- INSERT
         --------------------------------------------------------------------------------
         INSERT INTO StdHorseHaronTimeL3ByClass
         (TrackTypeCD,
          TrackCD,
          JyoCD,
          Kyori,
          CourseKubunCD,
          TrackConditionCD,
          JyokenCD5,
          ClassHaronTimeL3Count,
          ClassHaronTimeL3Avg,
          ClassHaronTimeL3StDev,
          ClassHaronTimeL3Sum,
          ClassHaronTimeL3Min,
          ClassHaronTimeL3Max,
          ClassHaronTimeL3Sigma3Minus,
          ClassHaronTimeL3Sigma2Minus,
          ClassHaronTimeL3Sigma1Minus,
          ClassHaronTimeL3Sigma1Plus,
          ClassHaronTimeL3Sigma2Plus,
          ClassHaronTimeL3Sigma3Plus,
          TS
         )
                SELECT TrackTypeCD,
                       TrackCD,
                       JyoCD,
                       Kyori,
                       CourseKubunCD,
                       TrackConditionCD,
                       JyokenCD5,
                       ClassHaronTimeL3Count,
                       ClassHaronTimeL3Avg,
                       ClassHaronTimeL3StDev,
                       ClassHaronTimeL3Sum,
                       ClassHaronTimeL3Min,
                       ClassHaronTimeL3Max,
                       ClassHaronTimeL3Sigma3Minus,
                       ClassHaronTimeL3Sigma2Minus,
                       ClassHaronTimeL3Sigma1Minus,
                       ClassHaronTimeL3Sigma1Plus,
                       ClassHaronTimeL3Sigma2Plus,
                       ClassHaronTimeL3Sigma3Plus,
                       GETDATE()
                FROM Z_StdHorseHaronTimeL3ByClass;
     END;


GO
/****** Object:  StoredProcedure [dbo].[uspx_StdHorseHaronTimeL4ByClass_DelIns]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_StdHorseHaronTimeL4ByClass_DelIns]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         --------------------------------------------------------------------------------
         -- DELETE
         --------------------------------------------------------------------------------
         DELETE StdHorseHaronTimeL4ByClass;
         --------------------------------------------------------------------------------
         -- INSERT
         --------------------------------------------------------------------------------
         INSERT INTO StdHorseHaronTimeL4ByClass
         (TrackTypeCD,
          TrackCD,
          JyoCD,
          Kyori,
          CourseKubunCD,
          TrackConditionCD,
          JyokenCD5,
          ClassHaronTimeL4Count,
          ClassHaronTimeL4Avg,
          ClassHaronTimeL4StDev,
          ClassHaronTimeL4Sum,
          ClassHaronTimeL4Min,
          ClassHaronTimeL4Max,
          ClassHaronTimeL4Sigma3Minus,
          ClassHaronTimeL4Sigma2Minus,
          ClassHaronTimeL4Sigma1Minus,
          ClassHaronTimeL4Sigma1Plus,
          ClassHaronTimeL4Sigma2Plus,
          ClassHaronTimeL4Sigma3Plus,
          TS
         )
                SELECT TrackTypeCD,
                       TrackCD,
                       JyoCD,
                       Kyori,
                       CourseKubunCD,
                       TrackConditionCD,
                       JyokenCD5,
                       ClassHaronTimeL4Count,
                       ClassHaronTimeL4Avg,
                       ClassHaronTimeL4StDev,
                       ClassHaronTimeL4Sum,
                       ClassHaronTimeL4Min,
                       ClassHaronTimeL4Max,
                       ClassHaronTimeL4Sigma3Minus,
                       ClassHaronTimeL4Sigma2Minus,
                       ClassHaronTimeL4Sigma1Minus,
                       ClassHaronTimeL4Sigma1Plus,
                       ClassHaronTimeL4Sigma2Plus,
                       ClassHaronTimeL4Sigma3Plus,
                       GETDATE()
                FROM Z_StdHorseHaronTimeL4ByClass;
     END;



GO
/****** Object:  StoredProcedure [dbo].[uspx_StdSlopeTraining_DelIns]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_StdSlopeTraining_DelIns]
WITH EXECUTE AS CALLER
AS
DECLARE @BaseHaronTime4Avg FLOAT= 682.100539840855;
     DECLARE @BaseLapTime4Avg FLOAT= 176.263325666096;
     DECLARE @BaseHaronTime3Avg FLOAT= 507.239517932893;
     DECLARE @BaseLapTime3Avg FLOAT= 168.832454373722;
     DECLARE @BaseHaronTime2Avg FLOAT= 338.498475304061;
     DECLARE @BaseLapTime2Avg FLOAT= 168.918888635311;
     DECLARE @BaseLapTime1Avg FLOAT= 169.559140531084;
     BEGIN
         SET NOCOUNT ON;

         --------------------------------------------------------------------------------
         -- DELETE StdSlopeTraining
         --------------------------------------------------------------------------------
         DELETE StdSlopeTraining;

         --------------------------------------------------------------------------------
         -- INSERT StdSlopeTraining
         --------------------------------------------------------------------------------
         INSERT INTO StdSlopeTraining
         (TresenKubun,
          Count,
          HaronTime4Avg,
          HaronTime4StDev,
          HaronTime4Sum,
          LapTime4Avg,
          LapTime4StDev,
          LapTime4Sum,
          HaronTime3Avg,
          HaronTime3StDev,
          HaronTime3Sum,
          LapTime3Avg,
          LapTime3StDev,
          LapTime3Sum,
          HaronTime2Avg,
          HaronTime2StDev,
          HaronTime2Sum,
          LapTime2Avg,
          LapTime2StDev,
          LapTime2Sum,
          LapTime1Avg,
          LapTime1StDev,
          LapTime1Sum,
          TS
         )
                SELECT TresenKubun,
                       COUNT(*) AS Count,
                       AVG(CONVERT(   FLOAT, SlopeTraining.HaronTime4, 2)) AS HaronTime4Avg,
                       STDEV(CONVERT( FLOAT, SlopeTraining.HaronTime4, 2)) AS HaronTime4StDev,
                       SUM(CONVERT(   FLOAT, SlopeTraining.HaronTime4, 2)) AS HaronTime4Sum,
                       AVG(CONVERT(   FLOAT, SlopeTraining.LapTime4, 2)) AS LapTime4Avg,
                       STDEV(CONVERT( FLOAT, SlopeTraining.LapTime4, 2)) AS LapTime4StDev,
                       SUM(CONVERT(   FLOAT, SlopeTraining.LapTime4, 2)) AS LapTime4Sum,
                       AVG(CONVERT(   FLOAT, SlopeTraining.HaronTime3, 2)) AS HaronTime3Avg,
                       STDEV(CONVERT( FLOAT, SlopeTraining.HaronTime3, 2)) AS HaronTime3StDev,
                       SUM(CONVERT(   FLOAT, SlopeTraining.HaronTime3, 2)) AS HaronTime3Sum,
                       AVG(CONVERT(   FLOAT, SlopeTraining.LapTime3, 2)) AS LapTime3Avg,
                       STDEV(CONVERT( FLOAT, SlopeTraining.LapTime3, 2)) AS LapTime3StDev,
                       SUM(CONVERT(   FLOAT, SlopeTraining.LapTime3, 2)) AS LapTime3Sum,
                       AVG(CONVERT(   FLOAT, SlopeTraining.HaronTime2, 2)) AS HaronTime2Avg,
                       STDEV(CONVERT( FLOAT, SlopeTraining.HaronTime2, 2)) AS HaronTime2StDev,
                       SUM(CONVERT(   FLOAT, SlopeTraining.HaronTime2, 2)) AS HaronTime2Sum,
                       AVG(CONVERT(   FLOAT, SlopeTraining.LapTime2, 2)) AS LapTime2Avg,
                       STDEV(CONVERT( FLOAT, SlopeTraining.LapTime2, 2)) AS LapTime2StDev,
                       SUM(CONVERT(   FLOAT, SlopeTraining.LapTime2, 2)) AS LapTime2Sum,
                       AVG(CONVERT(   FLOAT, SlopeTraining.LapTime1, 2)) AS LapTime1Avg,
                       STDEV(CONVERT( FLOAT, SlopeTraining.LapTime1, 2)) AS LapTime1StDev,
                       SUM(CONVERT(   FLOAT, SlopeTraining.LapTime1, 2)) AS LapTime1Sum,
                       GETDATE()
                FROM SlopeTraining
			 WHERE dbo.SlopeTraining.ChokyoDate  BETWEEN '2004-01-01' AND '2013-12-31'

/*
                WHERE SlopeTraining.HaronTime4 > 0
                      AND SlopeTraining.LapTime4 > 0
                      AND SlopeTraining.HaronTime3 > 0
                      AND SlopeTraining.LapTime3 > 0
                      AND SlopeTraining.HaronTime2 > 0
                      AND SlopeTraining.LapTime2 > 0
                      AND SlopeTraining.LapTime1 > 0
*/

                GROUP BY TresenKubun;
         --------------------------------------------------------------------------------
         -- UPDATE StdSlopeTraining
         --------------------------------------------------------------------------------
         UPDATE StdSlopeTraining
           SET
               HaronTime4Ratio = NULLIF(HaronTime4Avg / @BaseHaronTime4Avg, 0),
               LapTime4Ratio = NULLIF(LapTime4Avg / @BaseLapTime4Avg, 0),
               HaronTime3Ratio = NULLIF(HaronTime3Avg / @BaseHaronTime3Avg, 0),
               LapTime3Ratio = NULLIF(LapTime3Avg / @BaseLapTime3Avg, 0),
               HaronTime2Ratio = NULLIF(HaronTime2Avg / @BaseHaronTime2Avg, 0),
               LapTime2Ratio = NULLIF(LapTime2Avg / @BaseLapTime2Avg, 0),
               LapTime1Ratio = NULLIF(LapTime1Avg / @BaseLapTime1Avg, 0),
               TS2 = GETDATE();
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspx_StdSyogaiMileTimeByClass_DelIns]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_StdSyogaiMileTimeByClass_DelIns]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         --------------------------------------------------------------------------------
         -- DELETE
         --------------------------------------------------------------------------------
         DELETE StdSyogaiMileTimeByClass;
         --------------------------------------------------------------------------------
         -- INSERT
         --------------------------------------------------------------------------------
         INSERT INTO StdSyogaiMileTimeByClass
         (TrackTypeCD,
          TrackCD,
          JyoCD,
          Kyori,
          CourseKubunCD,
          TrackConditionCD,
          JyokenCD5,
          ClassSyogaiMileTimeCount,
          ClassSyogaiMileTimeAvg,
          ClassSyogaiMileTimeStDev,
          ClassSyogaiMileTimeSum,
          ClassSyogaiMileTimeMin,
          ClassSyogaiMileTimeMax,
          ClassSyogaiMileTimeSigma3Minus,
          ClassSyogaiMileTimeSigma2Minus,
          ClassSyogaiMileTimeSigma1Minus,
          ClassSyogaiMileTimeSigma1Plus,
          ClassSyogaiMileTimeSigma2Plus,
          ClassSyogaiMileTimeSigma3Plus,
          TS
         )
                SELECT TrackTypeCD,
                       TrackCD,
                       JyoCD,
                       Kyori,
                       CourseKubunCD,
                       TrackConditionCD,
                       JyokenCD5,
                       ClassSyogaiMileTimeCount,
                       ClassSyogaiMileTimeAvg,
                       ClassSyogaiMileTimeStDev,
                       ClassSyogaiMileTimeSum,
                       ClassSyogaiMileTimeMin,
                       ClassSyogaiMileTimeMax,
                       ClassSyogaiMileTimeSigma3Minus,
                       ClassSyogaiMileTimeSigma2Minus,
                       ClassSyogaiMileTimeSigma1Minus,
                       ClassSyogaiMileTimeSigma1Plus,
                       ClassSyogaiMileTimeSigma2Plus,
                       ClassSyogaiMileTimeSigma3Plus,
                       GETDATE()
                FROM Z_StdSyogaiMileTimeByClass;
     END;


GO
/****** Object:  StoredProcedure [dbo].[uspx_StdTime_Batch1]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_StdTime_Batch1]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         --------------------------------------------------------------------------------
         -- DELETE/INSERT StdTimeByBase
         --------------------------------------------------------------------------------
         EXEC uspx_StdTimeByBase_DelIns;
         --------------------------------------------------------------------------------
         -- DELETE/INSERT StdTimeByClass;
         --------------------------------------------------------------------------------
         EXEC uspx_StdTimeByClass_DelIns;
         --------------------------------------------------------------------------------
         -- StdTimeByBase
         --------------------------------------------------------------------------------
         DECLARE @Ratio FLOAT= NULL;
         SELECT @Ratio = stb.BaseTimeAvg
         FROM dbo.StdTimeByBase stb
         WHERE ID = 1;
         --------------------------------------------------------------------------------
         -- UPDATE
         --------------------------------------------------------------------------------
         UPDATE StdTimeByClass
           SET
               Ratio = NULLIF(ClassTimeAvg / @Ratio, 0),
               TS2 = GETDATE();
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspx_StdTime_Batch2]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_StdTime_Batch2]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         --------------------------------------------------------------------------------
         -- DELETE/INSERT StdTimeByAll
         --------------------------------------------------------------------------------
         EXEC uspx_StdTimeByAll_DelIns;
     END;


GO
/****** Object:  StoredProcedure [dbo].[uspx_StdTime_Batch3]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_StdTime_Batch3]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         --------------------------------------------------------------------------------
         -- DELETE/INSERT StdTimeDevByAll
         --------------------------------------------------------------------------------
         EXEC uspx_StdTimeDevByAll_DelIns;

         --------------------------------------------------------------------------------
         -- DELETE/INSERT StdTimeDevByClass
         --------------------------------------------------------------------------------
         EXEC uspx_StdTimeDevByClass_DelIns;
     END;


GO
/****** Object:  StoredProcedure [dbo].[uspx_StdTimeByBase_DelIns]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_StdTimeByBase_DelIns]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;
	    --------------------------------------------------------------------------------
	    -- DELETE
	    --------------------------------------------------------------------------------
	    DELETE StdTimeByBase;
	    --------------------------------------------------------------------------------
	    -- INSERT
	    --------------------------------------------------------------------------------
	    INSERT INTO StdTimeByBase
	    (JyokenCD5,
		TrackTypeCD,
		JyoCD,
		TrackCD,
		Kyori,
		CourseKubunCD,
		TrackConditionCD,
		Futan,
		TimeCount,
		TimeAvg,
		TimeStDev,
		TimeSum,
		TimeMin,
		TimeMax,
		TimeSigma3Minus,
		TimeSigma2Minus,
		TimeSigma1Minus,
		TimeSigma1Plus,
		TimeSigma2Plus,
		TimeSigma3Plus,
		TS
	    )
			 SELECT JyokenCD5,
				   TrackTypeCD,
				   JyoCD,
				   TrackCD,
				   Kyori,
				   CourseKubunCD,
				   TrackConditionCD,
				   Futan,
				   TimeCount,
				   TimeAvg,
				   TimeStDev,
				   TimeSum,
				   TimeMin,
				   TimeMax,
				   TimeSigma3Minus,
				   TimeSigma2Minus,
				   TimeSigma1Minus,
				   TimeSigma1Plus,
				   TimeSigma2Plus,
				   TimeSigma3Plus,
				   GETDATE()
			 FROM   Z_StdTimeByBase;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspx_StdTimeByClass_DelIns]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_StdTimeByClass_DelIns]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;
	    --------------------------------------------------------------------------------
	    -- DELETE
	    --------------------------------------------------------------------------------
	    DELETE StdTimeByClass;
	    --------------------------------------------------------------------------------
	    -- INSERT
	    --------------------------------------------------------------------------------
	    INSERT INTO StdTimeByClass
	    (JyokenCD5,
		TrackTypeCD,
		JyoCD,
		TrackCD,
		Kyori,
		CourseKubunCD,
		TrackConditionCD,
		Futan,
		TimeCount,
		TimeAvg,
		TimeStDev,
		TimeSum,
		TimeMin,
		TimeMax,
		TimeSigma3Minus,
		TimeSigma2Minus,
		TimeSigma1Minus,
		TimeSigma1Plus,
		TimeSigma2Plus,
		TimeSigma3Plus,
		TS
	    )
			 SELECT JyokenCD5,
				   TrackTypeCD,
				   JyoCD,
				   TrackCD,
				   Kyori,
				   CourseKubunCD,
				   TrackConditionCD,
				   Futan,
				   TimeCount,
				   TimeAvg,
				   TimeStDev,
				   TimeSum,
				   TimeMin,
				   TimeMax,
				   TimeSigma3Minus,
				   TimeSigma2Minus,
				   TimeSigma1Minus,
				   TimeSigma1Plus,
				   TimeSigma2Plus,
				   TimeSigma3Plus,
				   GETDATE()
			 FROM   Z_StdTimeByClass;
	    --------------------------------------------------------------------------------
	    -- UPDATE
	    --------------------------------------------------------------------------------
	    UPDATE StdTimeByClass
		 SET
			AvgRatio = NULL,
			StDevRatio = NULL,
			TS2 = GETDATE();
	    --------------------------------------------------------------------------------
	    -- UPDATE
	    --------------------------------------------------------------------------------
	    UPDATE StdTimeByClass
		 SET
			AvgRatio = NULLIF(c.TimeAvg / b.TimeAvg,0),
			StDevRatio = NULLIF(c.TimeStDev / b.TimeStDev,0),
			TS2 = GETDATE()
	    FROM StdTimeByClass AS c
		    INNER JOIN StdTimeByBase AS b
		    ON b.JyokenCD5 = c.JyokenCD5
			  AND b.TrackTypeCD = c.TrackTypeCD
	    WHERE  b.TrackTypeCD = 1
			 AND b.JyoCD = '06'
			 AND b.TrackCD = '18'
			 AND b.Kyori = 1600
			 AND b.CourseKubunCD = 'A '
			 AND b.TrackConditionCD = 1
			 AND b.Futan = 54;
	    --------------------------------------------------------------------------------
	    -- UPDATE
	    --------------------------------------------------------------------------------
	    UPDATE StdTimeByClass
		 SET
			AvgRatio = NULLIF(c.TimeAvg / b.TimeAvg,0),
			StDevRatio = NULLIF(c.TimeStDev / b.TimeStDev,0),
			TS2 = GETDATE()
	    FROM StdTimeByClass AS c
		    INNER JOIN StdTimeByBase AS b
		    ON b.JyokenCD5 = c.JyokenCD5
			  AND b.TrackTypeCD = c.TrackTypeCD
	    WHERE  b.TrackTypeCD = 2
			 AND b.JyoCD = '06'
			 AND b.TrackCD = '24'
			 AND b.Kyori = 1800
			 AND b.CourseKubunCD = '  '
			 AND b.TrackConditionCD = 1
			 AND b.Futan = 54;
	    --------------------------------------------------------------------------------
	    -- UPDATE
	    --------------------------------------------------------------------------------
	    UPDATE StdTimeByClass
		 SET
			AvgRatio = NULLIF(c.TimeAvg / b.TimeAvg,0),
			StDevRatio = NULLIF(c.TimeStDev / b.TimeStDev,0),
			TS2 = GETDATE()
	    FROM StdTimeByClass AS c
		    INNER JOIN StdTimeByBase AS b
		    ON b.TrackTypeCD = c.TrackTypeCD
	    WHERE  b.TrackTypeCD = 3
			 AND b.JyokenCD5 = '703'
			 AND b.JyoCD = '06'
			 AND b.TrackCD = '52'
			 AND b.Kyori = 2880
			 AND b.CourseKubunCD = '  '
			 AND b.TrackConditionCD = 1
			 AND b.Futan = 60;
	    --------------------------------------------------------------------------------
	    -- UPDATE
	    --------------------------------------------------------------------------------
	    UPDATE StdTimeByClass
		 SET
			AvgRatio = NULLIF(c.TimeAvg / b.TimeAvg,0),
			StDevRatio = NULLIF(c.TimeStDev / b.TimeStDev,0),
			TS2 = GETDATE()
	    FROM StdTimeByClass AS c
		    INNER JOIN StdTimeByBase AS b
		    ON b.TrackTypeCD = c.TrackTypeCD
	    WHERE  b.JyokenCD5 = '999'
			 AND b.JyoCD = '06'
			 AND b.TrackCD = '52'
			 AND b.Kyori = 3200
			 AND b.CourseKubunCD = '  '
			 AND b.TrackConditionCD = 1
			 AND b.Futan = 60;
	    --------------------------------------------------------------------------------
	    -- UPDATE
	    --------------------------------------------------------------------------------
	    UPDATE StdTimeByClass
		 SET
			StdTimeAvg = TimeAvg / AvgRatio,
			StdTimeStDev = TimeStDev / StDevRatio,
			TS2 = GETDATE()
	    FROM StdTimeByClass;
	END;

GO
/****** Object:  StoredProcedure [dbo].[uspx_StdTimeByJyoken_DelIns]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_StdTimeByJyoken_DelIns]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;
	    --------------------------------------------------------------------------------
	    -- DELETE
	    --------------------------------------------------------------------------------
	    DELETE StdTimeByJyoken;
	    --------------------------------------------------------------------------------
	    -- INSERT
	    --------------------------------------------------------------------------------
	    INSERT INTO StdTimeByJyoken
	    (JyokenCD5,
		TrackTypeCD,
		TimeCount,
		TimeAvg,
		TimeStDev,
		TimeSum,
		TimeMin,
		TimeMax,
		TimeSigma3Minus,
		TimeSigma2Minus,
		TimeSigma1Minus,
		TimeSigma1Plus,
		TimeSigma2Plus,
		TimeSigma3Plus,
		TS
	    )
			 SELECT JyokenCD5,
				   TrackTypeCD,
				   TimeCount,
				   TimeAvg,
				   TimeStDev,
				   TimeSum,
				   TimeMin,
				   TimeMax,
				   TimeSigma3Minus,
				   TimeSigma2Minus,
				   TimeSigma1Minus,
				   TimeSigma1Plus,
				   TimeSigma2Plus,
				   TimeSigma3Plus,
				   GETDATE()
			 FROM   Z_StdTimeByJyoken;
	END;


GO
/****** Object:  StoredProcedure [dbo].[uspx_StdTimeDevByAll_DelIns]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_StdTimeDevByAll_DelIns]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         --------------------------------------------------------------------------------
         -- DELETE
         --------------------------------------------------------------------------------
         DELETE StdTimeDevByAll;
         --------------------------------------------------------------------------------
         -- INSERT
         --------------------------------------------------------------------------------
         INSERT INTO StdTimeDevByAll
         (ID,
          StdTimeDevCount,
          StdTimeDevAvg,
          StdTimeDevStDev,
          StdTimeDevSum,
          StdTimeDevMin,
          StdTimeDevMax,
          StdTimeDevSigma3Minus,
          StdTimeDevSigma2Minus,
          StdTimeDevSigma1Minus,
          StdTimeDevSigma1Plus,
          StdTimeDevSigma2Plus,
          StdTimeDevSigma3Plus,
          TS
         )
                SELECT ID,
                       StdTimeDevCount,
                       StdTimeDevAvg,
                       StdTimeDevStDev,
                       StdTimeDevSum,
                       StdTimeDevMin,
                       StdTimeDevMax,
                       StdTimeDevSigma3Minus,
                       StdTimeDevSigma2Minus,
                       StdTimeDevSigma1Minus,
                       StdTimeDevSigma1Plus,
                       StdTimeDevSigma2Plus,
                       StdTimeDevSigma3Plus,
                       GETDATE()
                FROM Z_StdTimeDevByAll;
     END;


GO
/****** Object:  StoredProcedure [dbo].[uspx_StdTimeDevByClass_DelIns]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_StdTimeDevByClass_DelIns]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         --------------------------------------------------------------------------------
         -- DELETE
         --------------------------------------------------------------------------------
         DELETE StdTimeDevByClass;
         --------------------------------------------------------------------------------
         -- INSERT
         --------------------------------------------------------------------------------
         INSERT INTO StdTimeDevByClass
         (TrackTypeCD,
          TrackCD,
          JyoCD,
          Kyori,
          CourseKubunCD,
          TrackConditionCD,
          JyokenCD5,
          ClassStdTimeDevCount,
          ClassStdTimeDevAvg,
          ClassStdTimeDevStDev,
          ClassStdTimeDevSum,
          ClassStdTimeDevMin,
          ClassStdTimeDevMax,
          ClassStdTimeDevSigma3Minus,
          ClassStdTimeDevSigma2Minus,
          ClassStdTimeDevSigma1Minus,
          ClassStdTimeDevSigma1Plus,
          ClassStdTimeDevSigma2Plus,
          ClassStdTimeDevSigma3Plus,
          TS
         )
                SELECT TrackTypeCD,
                       TrackCD,
                       JyoCD,
                       Kyori,
                       CourseKubunCD,
                       TrackConditionCD,
                       JyokenCD5,
                       ClassStdTimeDevCount,
                       ClassStdTimeDevAvg,
                       ClassStdTimeDevStDev,
                       ClassStdTimeDevSum,
                       ClassStdTimeDevMin,
                       ClassStdTimeDevMax,
                       ClassStdTimeDevSigma3Minus,
                       ClassStdTimeDevSigma2Minus,
                       ClassStdTimeDevSigma1Minus,
                       ClassStdTimeDevSigma1Plus,
                       ClassStdTimeDevSigma2Plus,
                       ClassStdTimeDevSigma3Plus,
                       GETDATE()
                FROM Z_StdTimeDevByClass;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspx_TrainerByDistance_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_TrainerByDistance_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- TrainerByDistance	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	TrainerByDistance
	SET
		TS2 = GETDATE()
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_TrainerByTotal_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_TrainerByTotal_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- TrainerByDistance	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	TrainerByTotal
	SET
		TS2 = GETDATE()
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_TrainerByTrackType_TS2_Update]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_TrainerByTrackType_TS2_Update]
WITH EXECUTE AS CALLER
AS
BEGIN
--------------------------------------------------------------------------------
-- TrainerByDistance	:	UPDATE
--------------------------------------------------------------------------------
UPDATE
	TrainerByTrackType
	SET
		TS2 = GETDATE()
;
END


GO
/****** Object:  StoredProcedure [dbo].[uspx_z_TrackTypeCD_JyokenCD5_Kyori]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_z_TrackTypeCD_JyokenCD5_Kyori]
WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON;
     BEGIN
         SELECT Race.TrackTypeCD,
                Race.JyokenCD5,
                Race.Kyori,
                COUNT(*) AS Count
         FROM Race
         WHERE Race.IsNormal = 1
         GROUP BY Race.TrackTypeCD,
                  Race.JyokenCD5,
                  Race.Kyori
         ORDER BY Race.TrackTypeCD,
                  Race.JyokenCD5,
                  Race.Kyori;
     END;


GO
/****** Object:  StoredProcedure [dbo].[uspx_ZBayesianByChildrenJyoken05_DelIns]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_ZBayesianByChildrenJyoken05_DelIns]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;
	    --------------------------------------------------------------------------------
	    -- DELETE
	    --------------------------------------------------------------------------------
	    DELETE ZBayesianByChildrenJyoken05;
	    --------------------------------------------------------------------------------
	    -- INSERT
	    --------------------------------------------------------------------------------
	    INSERT INTO ZBayesianByChildrenJyoken05
	    (
			KettoNum,
			JyokenCD5,
			RunCount,
			HitCount1,
			HitRate1,
			DeviateCount1,
			DeviateRate1,
			HitCount12,
			HitRate12,
			DeviateCount12,
			DeviateRate12,
			HitCount123,
			HitRate123,
			DeviateCount123,
			DeviateRate123,
			TS
	    )
			 SELECT
				RaceHorse.KettoNum,
				Race.JyokenCD5,
				SUM(RaceHorse.RunCount) As RunCount,
				SUM(RaceHorse.HitCount1) AS HitCount1,
				SUM(RaceHorse.HitCount1)/NULLIF(SUM(RaceHorse.RunCount), 0) AS HitRate1,
				SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount1) AS DeviateCount1,
				(SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount1))/NULLIF(SUM(RaceHorse.RunCount), 0) AS DeviateRate1,
				SUM(RaceHorse.HitCount12) AS HitCount12,
				SUM(RaceHorse.HitCount12)/NULLIF(SUM(RaceHorse.RunCount), 0) AS HitRate12,
				SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount12) AS DeviateCount12,
				(SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount12))/NULLIF(SUM(RaceHorse.RunCount), 0) AS DeviateRate12,
				SUM(RaceHorse.HitCount123) AS HitCount123,
				SUM(RaceHorse.HitCount123)/NULLIF(SUM(RaceHorse.RunCount), 0) AS HitRate123,
				SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount123) As DeviateCount123,
				(SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount123))/NULLIF(SUM(RaceHorse.RunCount), 0) AS DeviateRate123,
				GETDATE() AS TS
			 FROM   RaceHorse
			 INNER JOIN Race
				ON Race.RaceDate = RaceHorse.RaceDate
				AND Race.JyoCD = RaceHorse.JyoCD
				AND Race.Kaiji = RaceHorse.Kaiji
				AND Race.Nichiji = RaceHorse.Nichiji
				AND Race.RaceNum = RaceHorse.RaceNum
			 INNER JOIN RaceResultByChildrenJyoken05
				ON RaceResultByChildrenJyoken05.RaceDate = RaceHorse.RaceDate
				AND RaceResultByChildrenJyoken05.JyoCD = RaceHorse.JyoCD
				AND RaceResultByChildrenJyoken05.Kaiji = RaceHorse.Kaiji
				AND RaceResultByChildrenJyoken05.Nichiji = RaceHorse.Nichiji
				AND RaceResultByChildrenJyoken05.RaceNum = RaceHorse.RaceNum
				AND RaceResultByChildrenJyoken05.KettoNum = RaceHorse.KettoNum
				AND RaceResultByChildrenJyoken05.JyokenCD5 = Race.JyokenCD5
			 WHERE Race.IsNormal = 1
				AND Race.RaceDate <= '2013-12-31'
				AND RaceHorse.IsNormal = 1
			GROUP BY
				RaceHorse.KettoNum,
				Race.JyokenCD5
	END;




GO
/****** Object:  StoredProcedure [dbo].[uspx_ZBayesianByJyokenGradeMiracle_DelIns]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_ZBayesianByJyokenGradeMiracle_DelIns]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;
	    --------------------------------------------------------------------------------
	    -- DELETE
	    --------------------------------------------------------------------------------
	    DELETE ZBayesianByJyokenGradeMiracle;
	    --------------------------------------------------------------------------------
	    -- INSERT
	    --------------------------------------------------------------------------------
	    INSERT INTO ZBayesianByJyokenGradeMiracle
	    (
			JyokenCD5,
			GradeCD,
			IsMiracle,
			RunCount,
			HitCount1,
			HitRate1,
			DeviateCount1,
			DeviateRate1,
			HitCount12,
			HitRate12,
			DeviateCount12,
			DeviateRate12,
			HitCount123,
			HitRate123,
			DeviateCount123,
			DeviateRate123,
			TS
	    )
			 SELECT
				Race.JyokenCD5,
				Race.GradeCD,
				HorseMiracle.IsMiracle,
				SUM(RaceHorse.RunCount),
				SUM(RaceHorse.HitCount1),
				SUM(RaceHorse.HitCount1)/NULLIF(SUM(RaceHorse.RunCount), 0),
				SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount1),
				(SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount1))/NULLIF(SUM(RaceHorse.RunCount), 0),
				SUM(RaceHorse.HitCount12),
				SUM(RaceHorse.HitCount12)/NULLIF(SUM(RaceHorse.RunCount), 0),
				SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount12),
				(SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount12))/NULLIF(SUM(RaceHorse.RunCount), 0),
				SUM(RaceHorse.HitCount123),
				SUM(RaceHorse.HitCount123)/NULLIF(SUM(RaceHorse.RunCount), 0),
				SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount123),
				(SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount123))/NULLIF(SUM(RaceHorse.RunCount), 0),
				GETDATE()
			 FROM   RaceHorse
			 INNER JOIN Race
				ON Race.RaceDate = RaceHorse.RaceDate
				AND Race.JyoCD = RaceHorse.JyoCD
				AND Race.Kaiji = RaceHorse.Kaiji
				AND Race.Nichiji = RaceHorse.Nichiji
				AND Race.RaceNum = RaceHorse.RaceNum
			 INNER JOIN HorseMiracle
				ON HorseMiracle.KettoNum = RaceHorse.KettoNum
			 WHERE Race.IsNormal = 1
				AND Race.RaceDate <= '2013-12-31'
				AND RaceHorse.IsNormal = 1
				AND HorseMiracle.IsMiracle = 1
			GROUP BY
				Race.JyokenCD5,
				Race.GradeCD,
				HorseMiracle.IsMiracle
	    --------------------------------------------------------------------------------
	    -- INSERT
	    --------------------------------------------------------------------------------
	    INSERT INTO ZBayesianByJyokenGradeMiracle
	    (
			JyokenCD5,
			GradeCD,
			IsMiracle,
			RunCount,
			HitCount1,
			HitRate1,
			DeviateCount1,
			DeviateRate1,
			HitCount12,
			HitRate12,
			DeviateCount12,
			DeviateRate12,
			HitCount123,
			HitRate123,
			DeviateCount123,
			DeviateRate123,
			TS
	    )
			 SELECT
				Race.JyokenCD5,
				Race.GradeCD,
				HorseMiracle.IsMiracle,
				SUM(RaceHorse.RunCount),
				SUM(RaceHorse.HitCount1),
				SUM(RaceHorse.HitCount1)/NULLIF(SUM(RaceHorse.RunCount), 0),
				SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount1),
				(SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount1))/NULLIF(SUM(RaceHorse.RunCount), 0),
				SUM(RaceHorse.HitCount12),
				SUM(RaceHorse.HitCount12)/NULLIF(SUM(RaceHorse.RunCount), 0),
				SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount12),
				(SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount12))/NULLIF(SUM(RaceHorse.RunCount), 0),
				SUM(RaceHorse.HitCount123),
				SUM(RaceHorse.HitCount123)/NULLIF(SUM(RaceHorse.RunCount), 0),
				SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount123),
				(SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount123))/NULLIF(SUM(RaceHorse.RunCount), 0),
				GETDATE()
			 FROM   RaceHorse
			 INNER JOIN Race
				ON Race.RaceDate = RaceHorse.RaceDate
				AND Race.JyoCD = RaceHorse.JyoCD
				AND Race.Kaiji = RaceHorse.Kaiji
				AND Race.Nichiji = RaceHorse.Nichiji
				AND Race.RaceNum = RaceHorse.RaceNum
			 INNER JOIN HorseMiracle
				ON HorseMiracle.KettoNum = RaceHorse.KettoNum
			 WHERE Race.IsNormal = 1
				AND Race.RaceDate <= '2013-12-31'
				AND RaceHorse.IsNormal = 1
				AND HorseMiracle.IsMiracle = 0
			GROUP BY
				Race.JyokenCD5,
				Race.GradeCD,
				HorseMiracle.IsMiracle
	END;


GO
/****** Object:  StoredProcedure [dbo].[uspx_ZBayesianByJyokenGradeSex_DelIns]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspx_ZBayesianByJyokenGradeSex_DelIns]
WITH EXECUTE AS CALLER
AS
BEGIN
	    SET NOCOUNT ON;
	    --------------------------------------------------------------------------------
	    -- DELETE
	    --------------------------------------------------------------------------------
	    DELETE ZBayesianByJyokenGradeSex;
	    --------------------------------------------------------------------------------
	    -- INSERT
	    --------------------------------------------------------------------------------
	    INSERT INTO ZBayesianByJyokenGradeSex
	    (
			JyokenCD5,
			GradeCD,
			SexCD,
			RunCount,
			HitCount1,
			HitRate1,
			DeviateCount1,
			DeviateRate1,
			HitCount12,
			HitRate12,
			DeviateCount12,
			DeviateRate12,
			HitCount123,
			HitRate123,
			DeviateCount123,
			DeviateRate123,
			TS
	    )
			 SELECT
				Race.JyokenCD5,
				Race.GradeCD,
				RaceHorse.SexCD,
				SUM(RaceHorse.RunCount) AS RunCount,
				SUM(RaceHorse.HitCount1) AS HitCount1,
				SUM(RaceHorse.HitCount1)/NULLIF(SUM(RaceHorse.RunCount), 0) AS HitRate1,
				SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount1) AS DeviateCount1,
				(SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount1))/NULLIF(SUM(RaceHorse.RunCount), 0) AS Deviaterate1,
				SUM(RaceHorse.HitCount12) As HitCoutn12,
				SUM(RaceHorse.HitCount12)/NULLIF(SUM(RaceHorse.RunCount), 0) AS HitRate12,
				SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount12) AS DeviateCount12,
				(SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount12))/NULLIF(SUM(RaceHorse.RunCount), 0) AS DeviateRate12,
				SUM(RaceHorse.HitCount123) AS HitCount123,
				SUM(RaceHorse.HitCount123)/NULLIF(SUM(RaceHorse.RunCount), 0) AS HitRate123,
				SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount123) AS DeviateCount123,
				(SUM(RaceHorse.RunCount) - SUM(RaceHorse.HitCount123))/NULLIF(SUM(RaceHorse.RunCount), 0) AS DeviateRate123,
				GETDATE()
			 FROM   RaceHorse
			 INNER JOIN Race
				ON Race.RaceDate = RaceHorse.RaceDate
				AND Race.JyoCD = RaceHorse.JyoCD
				AND Race.Kaiji = RaceHorse.Kaiji
				AND Race.Nichiji = RaceHorse.Nichiji
				AND Race.RaceNum = RaceHorse.RaceNum
			 WHERE Race.IsNormal = 1
				AND Race.RaceDate <= '2013-12-31'
				AND RaceHorse.IsNormal = 1
			GROUP BY
				Race.JyokenCD5,
				Race.GradeCD,
				RaceHorse.SexCD
END


GO
/****** Object:  StoredProcedure [dbo].[uspz_ExternalScripts_Enabled]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_ExternalScripts_Enabled]
WITH EXECUTE AS CALLER
AS
BEGIN
exec sp_configure 'external scripts enabled', 1; 
reconfigure;

exec sp_configure


	END;


GO
/****** Object:  StoredProcedure [dbo].[uspz_ServiceBroker_CreateQue]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_ServiceBroker_CreateQue]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;

         --------------------------------------------------------------------------------
         -- Service Broker ON
         --------------------------------------------------------------------------------
         CREATE QUEUE ContactChangeMessages;
         CREATE SERVICE ContactChangeNotifications ON QUEUE ContactChangeMessages([http://schemas.microsoft.com/SQL/Notifications/PostQueryNotification]);
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspz_ServiceBroker_Enable]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_ServiceBroker_Enable]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;

         --------------------------------------------------------------------------------
         -- Service Broker ON
         --------------------------------------------------------------------------------
         CREATE QUEUE NameChangeQueue;
         CREATE SERVICE NameChangeService ON QUEUE NameChangeQueue([http://schemas.microsoft.com/SQL/Notifications/PostQueryNotification]);
         GRANT SUBSCRIBE QUERY NOTIFICATIONS TO "KONA\united73";

         --ALTER DATABASE Jackpot SET ENABLE_BROKER;
         ALTER DATABASE [Jackpot] SET ENABLE_BROKER WITH ROLLBACK IMMEDIATE;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspz_ServiceBroker_Enable_DTS]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_ServiceBroker_Enable_DTS]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;

         --------------------------------------------------------------------------------
         -- Service Broker ON
         --------------------------------------------------------------------------------
         SELECT name,
                is_broker_enabled
         FROM sys.databases;
         CREATE QUEUE NameChangeQueue;
         CREATE SERVICE NameChangeService ON QUEUE NameChangeQueue([http://schemas.microsoft.com/SQL/Notifications/PostQueryNotification]);
         GRANT SUBSCRIBE QUERY NOTIFICATIONS TO "NETPLANNINGDIV\d0011557";

         --ALTER DATABASE Jackpot SET ENABLE_BROKER;
         ALTER DATABASE [Jackpot] SET ENABLE_BROKER WITH ROLLBACK IMMEDIATE;
         SELECT name,
                is_broker_enabled
         FROM sys.databases;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspz_ServiceBroker_Select]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_ServiceBroker_Select]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;

         --------------------------------------------------------------------------------
         -- Service Broker
         --------------------------------------------------------------------------------
         SELECT name,
                is_broker_enabled
         FROM sys.databases;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspz_Survey_UseLeastIndex]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_Survey_UseLeastIndex]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;

         --# --------------------------------------------
         --# 使用頻度の少ないインデックスの一覧を取得
         --# --------------------------------------------
         SELECT o.name 'テーブルID',
                i.name 'インデックスID',
                s.user_seeks 'Index Seek数',
                s.user_scans 'Index Scan数',
                s.user_updates 'UPDATE数',
                s.user_seeks + s.user_scans + s.user_updates '合計'
         FROM sys.objects o
              INNER JOIN sys.indexes i ON o.object_id = i.object_id
              INNER JOIN sys.dm_db_index_usage_stats s ON i.index_id = s.index_id
         WHERE o.type = 'U' --# ユーザテーブルを対象
               AND database_id = DB_ID()
         ORDER BY s.user_seeks + s.user_scans + s.user_updates;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspz_Survey_UseMostCpu]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_Survey_UseMostCpu]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;

         --# -----------------------------------------------------------
         --# CPU利用の多いクエリを取得する
         --# -----------------------------------------------------------
         SELECT TOP 100 total_worker_time / execution_count / 1000.0 AS [平均 CPU 時間（ミリ秒）],
                        total_elapsed_time / execution_count / 1000.0 AS [平均実行時間（ミリ秒）],
                        SUBSTRING(text, (statement_start_offset/2)+1, ((CASE statement_end_offset
                                                                            WHEN-1
                                                                            THEN DATALENGTH(text)
                                                                            ELSE statement_end_offset
                                                                        END-statement_start_offset)/2)+1) AS sql
         FROM sys.dm_exec_query_stats
              CROSS APPLY sys.dm_exec_sql_text(sql_handle)
         ORDER BY [平均 CPU 時間（ミリ秒）] DESC;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspz_Sys_DBCC DROPCLEANBUFFERS]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_Sys_DBCC DROPCLEANBUFFERS]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         DBCC DROPCLEANBUFFERS;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspz_Sys_DBCC_CheckDB_ALL_ERRORMSGS]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_Sys_DBCC_CheckDB_ALL_ERRORMSGS]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         DBCC CHECKDB(Jackpot) WITH ALL_ERRORMSGS;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspz_Sys_DBCC_CheckDB_Jackpot]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_Sys_DBCC_CheckDB_Jackpot]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         DBCC CHECKDB(Jackpot);
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspz_Sys_DBCC_CheckDB_REPAIR_ALLOW_DATA_LOSS ]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_Sys_DBCC_CheckDB_REPAIR_ALLOW_DATA_LOSS ]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         DBCC CHECKDB(Jackpot, REPAIR_ALLOW_DATA_LOSS) WITH ALL_ERRORMSGS;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspz_Sys_DBCC_CheckDB_REPAIR_REBUILD]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_Sys_DBCC_CheckDB_REPAIR_REBUILD]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         DBCC CHECKDB(Jackpot, REPAIR_REBUILD) WITH ALL_ERRORMSGS;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspz_Sys_DBCC_CheckDB_Tempdb]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_Sys_DBCC_CheckDB_Tempdb]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         DBCC CHECKDB(tempdb);
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspz_Sys_DBCC_FREEPROCCACHE]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_Sys_DBCC_FREEPROCCACHE]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         DBCC FREEPROCCACHE;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspz_Sys_DBCC_SHRINKDATABASE]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_Sys_DBCC_SHRINKDATABASE]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;

         -- データベースの空き領域: 0%
         DBCC SHRINKDATABASE(Jackpot, 0);
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspz_Sys_DBCC_SHRINKFILE]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_Sys_DBCC_SHRINKFILE]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         DBCC SHRINKFILE(Jackpot_data_0, 10);
         DBCC SHRINKFILE(Jackpot_data_1, 10);
         DBCC SHRINKFILE(Jackpot_data_2, 10);
         DBCC SHRINKFILE(Jackpot_data_3, 10);
         DBCC SHRINKFILE(Jackpot_data_4, 10);
         DBCC SHRINKFILE(Jackpot_data_5, 10);
         DBCC SHRINKFILE(Jackpot_data_6, 10);
         DBCC SHRINKFILE(Jackpot_data_7, 10);
         --DBCC SHRINKFILE (Jackpot_data_8, 10);

         DBCC SHRINKFILE(Jackpot_log_0, 10);
         DBCC SHRINKFILE(Jackpot_log_1, 10);
         DBCC SHRINKFILE(Jackpot_log_2, 10);
         DBCC SHRINKFILE(Jackpot_log_3, 10);
         DBCC SHRINKFILE(Jackpot_log_4, 10);
         DBCC SHRINKFILE(Jackpot_log_5, 10);
         DBCC SHRINKFILE(Jackpot_log_6, 10);
         DBCC SHRINKFILE(Jackpot_log_7, 10);
         --DBCC SHRINKFILE (Jackpot_log_8, 10);

     END;

GO
/****** Object:  StoredProcedure [dbo].[uspz_Sys_GetAllTables_Sys_Tables]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_Sys_GetAllTables_Sys_Tables]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;

         --------------------------------------------------------------------------------
         -- Sys.Tables
         --------------------------------------------------------------------------------

         SELECT *
         FROM Sys.Tables
         ORDER BY name;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspz_Sys_GetAllTables_sysobjects]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_Sys_GetAllTables_sysobjects]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;

         --------------------------------------------------------------------------------
         -- sysobjects
         --------------------------------------------------------------------------------

         SELECT *
         FROM sysobjects
         WHERE xtype = 'u'
         ORDER BY name;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspz_Sys_UpdateStats]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_Sys_UpdateStats]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;

         --------------------------------------------------------------------------------
         -- Update Stas
         --------------------------------------------------------------------------------

         EXEC sp_updatestats;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspz_Sys_Version]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspz_Sys_Version]
WITH EXECUTE AS CALLER
AS
BEGIN
         SET NOCOUNT ON;
         SELECT @@VERSION;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspzz_StandardTime_StandardRate1]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspzz_StandardTime_StandardRate1]
WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON;
     BEGIN
         DECLARE @RaceDateFrom DATETIME= '2004-01-01';
         DECLARE @RaceDateTo DATETIME= '2013-12-31';
         SELECT Race.TrackTypeCD,
                Race.JyokenCD5,
                Race.TrackConditionCD,
                COUNT(*) AS StandardTimeCount,
                AVG(CONVERT(   FLOAT, RaceHorse.Time, 2)) AS StandardTimeAvg,
                STDEV(CONVERT( FLOAT, RaceHorse.Time, 2)) AS StandardTimeStDev,
                SUM(CONVERT(   FLOAT, RaceHorse.Time, 2)) AS StandardTimeSum,
                GETDATE() AS TS
         FROM RaceHorse
              INNER JOIN Race ON Race.RaceDate = RaceHorse.RaceDate
                                 AND Race.JyoCD = RaceHorse.JyoCD
                                 AND Race.Kaiji = RaceHorse.Kaiji
                                 AND Race.Nichiji = RaceHorse.Nichiji
                                 AND Race.RaceNum = RaceHorse.RaceNum
         WHERE Race.DataKubun = '7'
               AND Race.Kyori = 1600
               AND Race.RaceDate BETWEEN @RaceDateFrom AND @RaceDateTo
               AND RaceHorse.DataKubun = '7'
               AND RaceHorse.IJyoCD = '0'
               AND RaceHorse.KakuteiJyuni > 0
               AND RaceHorse.Time > 0
         GROUP BY Race.TrackTypeCD,
                  Race.JyokenCD5,
                  Race.TrackConditionCD
         ORDER BY Race.TrackTypeCD,
                  Race.JyokenCD5,
                  Race.TrackConditionCD;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspzz_StandardTime_Stats1]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspzz_StandardTime_Stats1]
WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON;
     BEGIN
         DECLARE @RaceDateFrom DATETIME= '2004-01-01';
         DECLARE @RaceDateTo DATETIME= '2013-12-31';
         SELECT Race.TrackTypeCD,
                Race.JyokenCD5,
                --,	Race.JyoCD
                Race.Kyori,
                COUNT(*) AS StandardTimeCount,
                AVG(CONVERT(   FLOAT, RaceHorse.Time, 2)) AS StandardTimeAvg,
                STDEV(CONVERT( FLOAT, RaceHorse.Time, 2)) AS StandardTimeStDev,
                SUM(CONVERT(   FLOAT, RaceHorse.Time, 2)) AS StandardTimeSum,
                GETDATE() AS TS
         FROM RaceHorse
              INNER JOIN Race ON Race.RaceDate = RaceHorse.RaceDate
                                 AND Race.JyoCD = RaceHorse.JyoCD
                                 AND Race.Kaiji = RaceHorse.Kaiji
                                 AND Race.Nichiji = RaceHorse.Nichiji
                                 AND Race.RaceNum = RaceHorse.RaceNum
         WHERE Race.DataKubun = '7'
               AND Race.TenkoCD = '1'
               AND Race.TrackConditionCD = '1'
               AND dbo.RaceHorse.RaceDate BETWEEN @RaceDateFrom AND @RaceDateTo
               AND RaceHorse.DataKubun = '7'
               AND RaceHorse.IJyoCD = '0'
               AND RaceHorse.KakuteiJyuni > 0
               AND RaceHorse.Time > 0
         GROUP BY Race.TrackTypeCD,
                  Race.JyokenCD5	,
                  --	,	Race.JyoCD
                  Race.Kyori
         ORDER BY Race.TrackTypeCD,
                  Race.JyokenCD5	,
                  --	,	Race.JyoCD
                  Race.Kyori;
     END;

GO
/****** Object:  StoredProcedure [dbo].[uspzz_StandardTime_Stats2]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspzz_StandardTime_Stats2]
WITH EXECUTE AS CALLER
AS
SET NOCOUNT ON;
     BEGIN
         DECLARE @RaceDateFrom DATETIME= '2004-01-01';
         DECLARE @RaceDateTo DATETIME= '2013-12-31';
         SELECT Race.TrackTypeCD,
                Race.JyokenCD5,
                Race.JyoCD,
                Race.Kyori,
                COUNT(*) AS StandardTimeCount,
                AVG(CONVERT(   FLOAT, RaceHorse.Time, 2)) AS StandardTimeAvg,
                STDEV(CONVERT( FLOAT, RaceHorse.Time, 2)) AS StandardTimeStDev,
                SUM(CONVERT(   FLOAT, RaceHorse.Time, 2)) AS StandardTimeSum,
                GETDATE() AS TS
         FROM RaceHorse
              INNER JOIN Race ON Race.RaceDate = RaceHorse.RaceDate
                                 AND Race.JyoCD = RaceHorse.JyoCD
                                 AND Race.Kaiji = RaceHorse.Kaiji
                                 AND Race.Nichiji = RaceHorse.Nichiji
                                 AND Race.RaceNum = RaceHorse.RaceNum
         WHERE Race.DataKubun = '7'
               AND Race.TenkoCD = '1'
               AND Race.TrackConditionCD = '1'
               AND dbo.RaceHorse.RaceDate BETWEEN @RaceDateFrom AND @RaceDateTo
               AND RaceHorse.DataKubun = '7'
               AND RaceHorse.IJyoCD = '0'
               AND RaceHorse.KakuteiJyuni > 0
               AND RaceHorse.Time > 0
         GROUP BY Race.TrackTypeCD,
                  Race.JyokenCD5,
                  Race.JyoCD,
                  Race.Kyori
         ORDER BY Race.TrackTypeCD,
                  Race.JyokenCD5,
                  Race.JyoCD,
                  Race.Kyori;
     END;

GO
