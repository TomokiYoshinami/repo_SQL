USE [Jackpot]
GO
/****** Object:  StoredProcedure [dbo].[usp_MgmtBet_BetByRaceNum]    Script Date: 2016/07/12 10:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE dbo.usp_MgmtBet_BetByRaceNum 
                 @RaceId NCHAR(20)
WITH EXECUTE AS CALLER
AS
BEGIN
    BEGIN TRANSACTION;
    DECLARE @Return INT = 0;
    DECLARE @ConfigType INT = 1;
    DECLARE @BetMoney FLOAT = 100;
    DECLARE @IsSellTarget NCHAR(1) = '7';
    DECLARE @MinPredictValue INT = -900;
    DECLARE @RaceDateFrom DATETIME = '2014-01-01';
    DECLARE @BetDateTime DATETIME2 = GETDATE();
    --------------------------------------------------------------------------------
    -- 1 : Bet Win
    --------------------------------------------------------------------------------
    INSERT INTO BetMgmtByBet
    (
           RaceId,
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
           SELECT  
                  t1.RaceId, --RaceId
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
             SELECT 
                    rhb1.RaceId,
                    rhb1.RaceDate,
                    rhb1.JyoCd,
                    rhb1.Kaiji,
                    rhb1.Nichiji,
                    rhb1.RaceNum,
                    rhb1.Umaban,
                    rhb1.PredictValue,
                    rhb1.Wakuban,
                    rhb1.PredictDateTime,
                    RANK() OVER(PARTITION BY rhb1.RaceId
                    ORDER BY 
                             rhb1.PredictValue DESC) AS PredictValueRank
             FROM   RaceHorseBet rhb1
             WHERE
                    rhb1.RaceDate >= @RaceDateFrom
                    AND rhb1.PredictValue > @MinPredictValue
           ) t1
             INNER JOIN Race
             ON Race.RaceId = t1.RaceId
             INNER JOIN Odds1
             ON Odds1.RaceId = t1.RaceId
             INNER JOIN ConfigBet
             ON
                ConfigBet.ConfigTypeCd = @ConfigType
                AND ConfigBet.BetTypeCd = 1
                AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                AND ConfigBet.JyokenCd5 = Race.JyokenCd5
           WHERE
                 t1.RaceId = @RaceId
                 AND Odds1.TansyoFlag = @IsSellTarget
                 AND PredictValueRank <= ConfigBet.CurrentValue;
    SET @Return+=@@rowcount;
    --------------------------------------------------------------------------------
    -- 2 : Bet Place
    --------------------------------------------------------------------------------
    INSERT INTO BetMgmtByBet
    (
           RaceId,
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
           SELECT  
                  t1.RaceId,
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
             SELECT 
                    rhb1.RaceId,
                    rhb1.RaceDate,
                    rhb1.JyoCd,
                    rhb1.Kaiji,
                    rhb1.Nichiji,
                    rhb1.RaceNum,
                    rhb1.Umaban,
                    rhb1.PredictValue,
                    rhb1.Wakuban,
                    rhb1.PredictDateTime,
                    RANK() OVER(PARTITION BY rhb1.RaceId
                    ORDER BY 
                             rhb1.PredictValue DESC) AS PredictValueRank
             FROM   RaceHorseBet rhb1
             WHERE
                    rhb1.RaceDate >= @RaceDateFrom
                    AND rhb1.PredictValue > @MinPredictValue
           ) t1
             INNER JOIN Race
             ON Race.RaceId = t1.RaceId
             INNER JOIN Odds1
             ON Odds1.RaceId = t1.RaceId
             INNER JOIN ConfigBet
             ON
                ConfigBet.ConfigTypeCd = @ConfigType
                AND ConfigBet.BetTypeCd = 2
                AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                AND ConfigBet.JyokenCd5 = Race.JyokenCd5
           WHERE
                 Odds1.FukusyoFlag = @IsSellTarget
                 AND PredictValueRank <= ConfigBet.CurrentValue;
    SET @Return+=@@rowcount;
    --------------------------------------------------------------------------------
    -- 3 : Bet Bracket
    --------------------------------------------------------------------------------
    --------------------------------------------------------------------------------
    -- 4 : Bet Quinella
    --------------------------------------------------------------------------------
    INSERT INTO BetMgmtByBet
    (
           RaceId,
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
           SELECT  
                  t1.RaceId, --RaceId
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
             SELECT 
                    rhb1.RaceId,
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
                    rhb1.PredictValue
                    * rhb2.PredictValue
                    * 100 AS TotalPredictValue,
                    RANK() OVER(PARTITION BY rhb1.RaceId
                    ORDER BY 
                             rhb1.PredictValue
                             * rhb2.PredictValue DESC,
                             rhb1.PredictValue DESC,
                             rhb2.PredictValue DESC) AS PredictValueRank
             FROM   RaceHorseBet rhb1
                    INNER JOIN RaceHorseBet rhb2
                    ON rhb2.RaceId = rhb1.RaceId
             WHERE
                    rhb1.RaceDate >= @RaceDateFrom
                    AND rhb1.PredictValue > @MinPredictValue
                    AND rhb2.PredictValue > @MinPredictValue
                    AND rhb1.Umaban < rhb2.Umaban
           ) t1
             INNER JOIN Race
             ON Race.RaceId = t1.RaceId
             INNER JOIN Odds2
             ON Odds2.RaceId = t1.RaceId
             INNER JOIN ConfigBet
             ON
                ConfigBet.ConfigTypeCd = @ConfigType
                AND ConfigBet.BetTypeCd = 4
                AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                AND ConfigBet.JyokenCd5 = Race.JyokenCd5
           WHERE
                 t1.RaceId = @RaceId
                 AND Odds2.UmarenFlag = @IsSellTarget
                 AND PredictValueRank <= ConfigBet.CurrentValue;
    SET @Return+=@@rowcount;
    --------------------------------------------------------------------------------
    -- 5 : Bet Wide
    --------------------------------------------------------------------------------
    INSERT INTO BetMgmtByBet
    (
           RaceId,
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
           SELECT  
                  t1.RaceId,
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
             SELECT 
                    rhb1.RaceId,
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
                    rhb1.PredictValue
                    * rhb2.PredictValue
                    * 100 AS TotalPredictValue,
                    RANK() OVER(PARTITION BY rhb1.RaceId
                    ORDER BY 
                             rhb1.PredictValue
                             * rhb2.PredictValue DESC,
                             rhb1.PredictValue DESC,
                             rhb2.PredictValue DESC) AS PredictValueRank
             FROM   RaceHorseBet rhb1
                    INNER JOIN RaceHorseBet rhb2
                    ON rhb2.RaceId = rhb1.RaceId
             WHERE
                    rhb1.RaceDate >= @RaceDateFrom
                    AND rhb1.PredictValue > @MinPredictValue
                    AND rhb2.PredictValue > @MinPredictValue
                    AND rhb1.Umaban < rhb2.Umaban
           ) t1
             INNER JOIN Race
             ON Race.RaceId = t1.RaceId
             INNER JOIN Odds3
             ON Odds3.RaceId = t1.RaceId
             INNER JOIN ConfigBet
             ON
                ConfigBet.ConfigTypeCd = @ConfigType
                AND ConfigBet.BetTypeCd = 5
                AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                AND ConfigBet.JyokenCd5 = Race.JyokenCd5
           WHERE
                 t1.RaceId = @RaceId
                 AND Odds3.WideFlag = @IsSellTarget
                 AND PredictValueRank <= ConfigBet.CurrentValue;
    SET @Return+=@@rowcount;
    --------------------------------------------------------------------------------
    -- 6 : Bet Exacta
    --------------------------------------------------------------------------------
    INSERT INTO BetMgmtByBet
    (
           RaceId,
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
           SELECT  
                  t1.RaceId,
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
             SELECT 
                    rhb1.RaceId,
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
                    rhb1.PredictValue
                    * rhb2.PredictValue
                    * 100 AS TotalPredictValue,
                    RANK() OVER(PARTITION BY rhb1.RaceId
                    ORDER BY 
                             rhb1.PredictValue
                             * rhb2.PredictValue DESC,
                             rhb1.PredictValue DESC,
                             rhb2.PredictValue DESC) AS PredictValueRank
             FROM   RaceHorseBet rhb1
                    INNER JOIN RaceHorseBet rhb2
                    ON rhb2.RaceId = rhb1.RaceId
             WHERE
                    rhb1.RaceDate >= @RaceDateFrom
                    AND rhb1.PredictValue > @MinPredictValue
                    AND rhb2.PredictValue > @MinPredictValue
                    AND rhb1.Umaban != rhb2.Umaban
           ) t1
             INNER JOIN Race
             ON Race.RaceId = t1.RaceId
             INNER JOIN Odds4
             ON Odds4.RaceId = t1.RaceId
             INNER JOIN ConfigBet
             ON
                ConfigBet.ConfigTypeCd = @ConfigType
                AND ConfigBet.BetTypeCd = 6
                AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                AND ConfigBet.JyokenCd5 = Race.JyokenCd5
           WHERE
                 t1.RaceId = @RaceId
                 AND Odds4.UmatanFlag = @IsSellTarget
                 AND PredictValueRank <= ConfigBet.CurrentValue;
    SET @Return+=@@rowcount;
    --------------------------------------------------------------------------------
    -- 7 : Bet Trio
    --------------------------------------------------------------------------------
    INSERT INTO BetMgmtByBet
    (
           RaceId,
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
           SELECT  
                  t1.RaceId,
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
             SELECT 
                    rhb1.RaceId,
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
                    rhb1.PredictValue
                    * rhb2.PredictValue
                    * rhb3.PredictValue
                    * 10000 AS TotalPredictValue,
                    RANK() OVER(PARTITION BY rhb1.RaceId
                    ORDER BY 
                             rhb1.PredictValue
                             * rhb2.PredictValue
                             * rhb3.PredictValue DESC,
                             rhb1.PredictValue DESC,
                             rhb2.PredictValue DESC,
                             rhb3.PredictValue DESC) AS PredictValueRank
             FROM   RaceHorseBet rhb1
                    INNER JOIN RaceHorseBet rhb2
                    ON rhb2.RaceId = rhb1.RaceId
                    INNER JOIN RaceHorseBet rhb3
                    ON rhb3.RaceId = rhb1.RaceId
             WHERE
                    rhb1.RaceDate >= @RaceDateFrom
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
             ON
                ConfigBet.ConfigTypeCd = @ConfigType
                AND ConfigBet.BetTypeCd = 7
                AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                AND ConfigBet.JyokenCd5 = Race.JyokenCd5
           WHERE
                 t1.RaceId = @RaceId
                 AND Odds5.SanrenpukuFlag = @IsSellTarget
                 AND PredictValueRank <= ConfigBet.CurrentValue;
    SET @Return+=@@rowcount;
    --------------------------------------------------------------------------------
    -- 8 : Bet Trifecta
    --------------------------------------------------------------------------------
    INSERT INTO BetMgmtByBet
    (
           RaceId,
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
           SELECT  
                  t1.RaceId,
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
             SELECT 
                    rhb1.RaceId,
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
                    rhb1.PredictValue
                    * rhb2.PredictValue
                    * rhb3.PredictValue
                    * 10000 AS TotalPredictValue,
                    RANK() OVER(PARTITION BY rhb1.RaceId
                    ORDER BY 
                             rhb1.PredictValue
                             * rhb2.PredictValue
                             * rhb3.PredictValue DESC,
                             rhb1.PredictValue DESC,
                             rhb2.PredictValue DESC,
                             rhb3.PredictValue DESC) AS PredictValueRank
             FROM   RaceHorseBet rhb1
                    INNER JOIN RaceHorseBet rhb2
                    ON rhb2.RaceId = rhb1.RaceId
                    INNER JOIN RaceHorseBet rhb3
                    ON rhb3.RaceId = rhb1.RaceId
             WHERE
                    rhb1.RaceDate >= @RaceDateFrom
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
             ON
                ConfigBet.ConfigTypeCd = @ConfigType
                AND ConfigBet.BetTypeCd = 8
                AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                AND ConfigBet.JyokenCd5 = Race.JyokenCd5
           WHERE
                 t1.RaceId = @RaceId
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
    FROM   PayoffByPayAll
           INNER JOIN RaceHorseBet
           ON RaceHorseBet.RaceId = PayoffByPayAll.RaceId
    WHERE  
          RaceHorseBet.RaceId = @RaceId
          AND RaceHorseBet.RaceDate >= @RaceDateFrom;
    --------------------------------------------------------------------------------
    -- RaceHorseBet Win
    --------------------------------------------------------------------------------
    UPDATE RaceHorseBet
    SET    
        PayoffWin = PayoffByPayAll.Pay,
        TS = GETDATE(),
        TS2 = GETDATE()
    FROM   RaceHorseBet
           INNER JOIN PayoffByPayAll
           ON
              PayoffByPayAll.RaceId = RaceHorseBet.RaceId
              AND PayoffByPayAll.Kumi1 = RaceHorseBet.Umaban
              AND PayoffByPayAll.Kumi2 = 0
              AND PayoffByPayAll.Kumi3 = 0
    WHERE  
          RaceHorseBet.RaceId = @RaceId
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
    FROM   RaceHorseBet
           INNER JOIN PayoffByPayAll
           ON
              PayoffByPayAll.RaceId = RaceHorseBet.RaceId
              AND PayoffByPayAll.Kumi1 = RaceHorseBet.Umaban
              AND PayoffByPayAll.Kumi2 = 0
              AND PayoffByPayAll.Kumi3 = 0
    WHERE  
          RaceHorseBet.RaceId = @RaceId
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
    WHERE  
          MgmtBet.RaceId = @RaceId
          AND MgmtBet.RaceDate >= @RaceDateFrom;
    --------------------------------------------------------------------------------
    -- MgmtBet
    --------------------------------------------------------------------------------
    UPDATE MgmtBet
    SET    
        IsHit = 1,
        HitCount = 1,
        HitMoney = dbo.PayoffByPayAll.Pay,
        ReturnMoney = dbo.PayoffByPayAll.Pay
                      - MgmtBet.BetMoney,
        TS2 = GETDATE()
    FROM   MgmtBet
           INNER JOIN PayoffByPayAll
           ON
              PayoffByPayAll.RaceId = MgmtBet.RaceId
              AND PayoffByPayAll.BetTypeCd = MgmtBet.BetTypeCd
    WHERE  
          MgmtBet.RaceId = @RaceId
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
    FROM   PayoffByPayAll
    WHERE  
          PayoffByPayAll.RaceId = @RaceId
          AND PayoffByPayAll.RaceDate >= @RaceDateFrom;
    --------------------------------------------------------------------------------
    -- PayoffByPayAll
    --------------------------------------------------------------------------------
    UPDATE PayoffByPayAll
    SET    
        IsHit = 1,
        TS2 = GETDATE()
    FROM   MgmtBet
           INNER JOIN PayoffByPayAll
           ON
              PayoffByPayAll.RaceId = MgmtBet.RaceId
              AND PayoffByPayAll.BetTypeCd = MgmtBet.BetTypeCd
    WHERE  
          PayoffByPayAll.RaceId = @RaceId
          AND PayoffByPayAll.RaceDate >= @RaceDateFrom
          AND PayoffByPayAll.Kumi1 = MgmtBet.Kumi1
          AND PayoffByPayAll.Kumi2 = MgmtBet.Kumi2
          AND PayoffByPayAll.Kumi3 = MgmtBet.Kumi3;
    --------------------------------------------------------------------------------
    -- Race
    --------------------------------------------------------------------------------
    UPDATE  Race
    SET     
        BetCount = t1.BetCount,
        HitCount = t1.HitCount,
        BetMoney = t1.BetMoney,
        HitMoney = t1.HitMoney,
        ReturnMoney = t1.ReturnMoney,
        TS2 = GETDATE()
    FROM    Race
            INNER JOIN
      (
      SELECT 
             MgmtBet.RaceId,
             SUM(MgmtBet.BetCount) AS BetCount,
             SUM(MgmtBet.HitCount) AS HitCount,
             SUM(MgmtBet.BetMoney) AS BetMoney,
             SUM(MgmtBet.HitMoney) AS HitMoney,
             SUM(MgmtBet.ReturnMoney) AS ReturnMoney
      FROM   dbo.MgmtBet
      WHERE
             MgmtBet.RaceId = @RaceId
             AND MgmtBet.RaceDate >= @RaceDateFrom
      GROUP BY 
               MgmtBet.RaceId
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
CREATE PROCEDURE dbo.usp_MgmtBet_CheckHitByRaceNum 
                 @RaceId NCHAR(20)
WITH EXECUTE AS CALLER
AS
BEGIN
    BEGIN TRANSACTION;
    DECLARE @Return INT = 0;
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
    FROM   PayoffByPayAll
           INNER JOIN RaceHorseBet
           ON RaceHorseBet.RaceId = PayoffByPayAll.RaceId
    WHERE  
          RaceHorseBet.RaceId = @RaceId;
    --------------------------------------------------------------------------------
    -- RaceHorseBet Win
    --------------------------------------------------------------------------------
    UPDATE RaceHorseBet
    SET    
        PayoffWin = PayoffByPayAll.Pay,
        TS = GETDATE(),
        TS2 = GETDATE()
    FROM   RaceHorseBet
           INNER JOIN PayoffByPayAll
           ON
              PayoffByPayAll.RaceId = RaceHorseBet.RaceId
              AND PayoffByPayAll.Kumi1 = RaceHorseBet.Umaban
              AND PayoffByPayAll.Kumi2 = 0
              AND PayoffByPayAll.Kumi3 = 0
    WHERE  
          RaceHorseBet.RaceId = @RaceId
          AND PayoffByPayAll.BetTypeCd = 1;
    --------------------------------------------------------------------------------
    -- RaceHorseBet Place
    --------------------------------------------------------------------------------
    UPDATE RaceHorseBet
    SET    
        PayoffPlace = PayoffByPayAll.Pay,
        TS = GETDATE(),
        TS2 = GETDATE()
    FROM   RaceHorseBet
           INNER JOIN PayoffByPayAll
           ON
              PayoffByPayAll.RaceId = RaceHorseBet.RaceId
              AND PayoffByPayAll.Kumi1 = RaceHorseBet.Umaban
              AND PayoffByPayAll.Kumi2 = 0
              AND PayoffByPayAll.Kumi3 = 0
    WHERE  
          RaceHorseBet.RaceId = @RaceId
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
    WHERE  
          RaceId = @RaceId;
    --SET @Return += @@rowcount;
    --------------------------------------------------------------------------------
    -- MgmtBet
    --------------------------------------------------------------------------------
    UPDATE MgmtBet
    SET    
        IsHit = 1,
        HitCount = 1,
        HitMoney = dbo.PayoffByPayAll.Pay,
        ReturnMoney = dbo.PayoffByPayAll.Pay
                      - MgmtBet.BetMoney,
        TS = GETDATE()
    FROM   dbo.MgmtBet
           INNER JOIN dbo.PayoffByPayAll
           ON
              dbo.MgmtBet.RaceId = dbo.PayoffByPayAll.RaceId
              AND dbo.MgmtBet.BetTypeCd = dbo.PayoffByPayAll.BetTypeCd
              AND dbo.MgmtBet.Kumi1 = dbo.PayoffByPayAll.Kumi1
              AND dbo.MgmtBet.Kumi2 = dbo.PayoffByPayAll.Kumi2
              AND dbo.MgmtBet.Kumi3 = dbo.PayoffByPayAll.Kumi3
    WHERE  
          dbo.MgmtBet.RaceId = @RaceId;
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
CREATE PROCEDURE dbo.usp_MgmtBet_ClearHitByRaceNum 
                 @RaceId NCHAR(20)
WITH EXECUTE AS CALLER
AS
BEGIN
    BEGIN TRANSACTION;
    DECLARE @Return INT = 0;
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
    WHERE  
          MgmtBet.RaceId = @RaceId;
    SET @Return+=@@rowcount;
    --------------------------------------------------------------------------------
    -- Clear Sumamry Bet & Hit
    --------------------------------------------------------------------------------
    UPDATE Race
    SET    
        HitCount = 0,
        HitMoney = 0,
        TS2 = GETDATE()
    WHERE  
          Race.RaceId = @RaceId;
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
CREATE PROCEDURE dbo.usp_MgmtBet_DeleteBetCheckByRaceAll
WITH EXECUTE AS CALLER
AS
BEGIN
    BEGIN TRANSACTION;
    DECLARE @Return INT = 0;
    DECLARE @ConfigType INT = 1;
    DECLARE @BetMoney FLOAT = 100;
    DECLARE @IsSellTarget NCHAR(1) = '7';
    DECLARE @MinPredictValue INT = -900;
    DECLARE @RaceDateFrom DATETIME = '2014-01-01';
    DECLARE @BetDateTime DATETIME2 = GETDATE();
    --------------------------------------------------------------------------------
    -- MgmtBet Clear Bet Data
    --------------------------------------------------------------------------------
    DELETE MgmtBet
    WHERE  
          MgmtBet.RaceDate >= @RaceDateFrom;
    --SET @Return+=@@rowcount;
    --------------------------------------------------------------------------------
    -- 1 : Bet Win
    --------------------------------------------------------------------------------
    INSERT INTO BetMgmtByBet
    (
           RaceId,
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
           SELECT  
                  t1.RaceId, --RaceId
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
             SELECT 
                    rhb1.RaceId,
                    rhb1.RaceDate,
                    rhb1.JyoCd,
                    rhb1.Kaiji,
                    rhb1.Nichiji,
                    rhb1.RaceNum,
                    rhb1.Umaban,
                    rhb1.PredictValue,
                    rhb1.Wakuban,
                    rhb1.PredictDateTime,
                    RANK() OVER(PARTITION BY rhb1.RaceId
                    ORDER BY 
                             rhb1.PredictValue DESC) AS PredictValueRank
             FROM   RaceHorseBet rhb1
             WHERE
                    rhb1.RaceDate >= @RaceDateFrom
                    AND rhb1.PredictValue > @MinPredictValue
           ) t1
             INNER JOIN Race
             ON Race.RaceId = t1.RaceId --INNER JOIN Odds1 ON Odds1.RaceId = t1.RaceId
             INNER JOIN ConfigBet
             ON
                ConfigBet.ConfigTypeCd = @ConfigType
                AND ConfigBet.BetTypeCd = 1
                AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                AND ConfigBet.JyokenCd5 = Race.JyokenCd5
           WHERE PredictValueRank <= ConfigBet.CurrentValue;
    --AND Odds1.TansyoFlag = @IsSellTarget
    SET @Return+=@@rowcount;
    --------------------------------------------------------------------------------
    -- 2 : Bet Place
    --------------------------------------------------------------------------------
    INSERT INTO BetMgmtByBet
    (
           RaceId,
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
           SELECT  
                  t1.RaceId,
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
             SELECT 
                    rhb1.RaceId,
                    rhb1.RaceDate,
                    rhb1.JyoCd,
                    rhb1.Kaiji,
                    rhb1.Nichiji,
                    rhb1.RaceNum,
                    rhb1.Umaban,
                    rhb1.PredictValue,
                    rhb1.Wakuban,
                    rhb1.PredictDateTime,
                    RANK() OVER(PARTITION BY rhb1.RaceId
                    ORDER BY 
                             rhb1.PredictValue DESC) AS PredictValueRank
             FROM   RaceHorseBet rhb1
             WHERE
                    rhb1.RaceDate >= @RaceDateFrom
                    AND rhb1.PredictValue > @MinPredictValue
           ) t1
             INNER JOIN Race
             ON Race.RaceId = t1.RaceId --INNER JOIN Odds1 ON Odds1.RaceId = t1.RaceId
             INNER JOIN ConfigBet
             ON
                ConfigBet.ConfigTypeCd = @ConfigType
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
    INSERT INTO BetMgmtByBet
    (
           RaceId,
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
           SELECT  
                  t1.RaceId, --RaceId
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
             SELECT 
                    rhb1.RaceId,
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
                    rhb1.PredictValue
                    * rhb2.PredictValue
                    * 100 AS TotalPredictValue,
                    RANK() OVER(PARTITION BY rhb1.RaceId
                    ORDER BY 
                             rhb1.PredictValue
                             * rhb2.PredictValue DESC,
                             rhb1.PredictValue DESC,
                             rhb2.PredictValue DESC) AS PredictValueRank
             FROM   RaceHorseBet rhb1
                    INNER JOIN RaceHorseBet rhb2
                    ON rhb2.RaceId = rhb1.RaceId
             WHERE
                    rhb1.RaceDate >= @RaceDateFrom
                    AND rhb1.PredictValue > @MinPredictValue
                    AND rhb2.PredictValue > @MinPredictValue
                    AND rhb1.Umaban < rhb2.Umaban
           ) t1
             INNER JOIN Race
             ON Race.RaceId = t1.RaceId --INNER JOIN Odds2 ON Odds2.RaceId = t1.RaceId
             INNER JOIN ConfigBet
             ON
                ConfigBet.ConfigTypeCd = @ConfigType
                AND ConfigBet.BetTypeCd = 4
                AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                AND ConfigBet.JyokenCd5 = Race.JyokenCd5
           WHERE PredictValueRank <= ConfigBet.CurrentValue;
    --AND Odds2.UmarenFlag = @IsSellTarget
    SET @Return+=@@rowcount;
    --------------------------------------------------------------------------------
    -- 5 : Bet Wide
    --------------------------------------------------------------------------------
    INSERT INTO BetMgmtByBet
    (
           RaceId,
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
           SELECT  
                  t1.RaceId,
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
             SELECT 
                    rhb1.RaceId,
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
                    rhb1.PredictValue
                    * rhb2.PredictValue
                    * 100 AS TotalPredictValue,
                    RANK() OVER(PARTITION BY rhb1.RaceId
                    ORDER BY 
                             rhb1.PredictValue
                             * rhb2.PredictValue DESC,
                             rhb1.PredictValue DESC,
                             rhb2.PredictValue DESC) AS PredictValueRank
             FROM   RaceHorseBet rhb1
                    INNER JOIN RaceHorseBet rhb2
                    ON rhb2.RaceId = rhb1.RaceId
             WHERE
                    rhb1.RaceDate >= @RaceDateFrom
                    AND rhb1.PredictValue > @MinPredictValue
                    AND rhb2.PredictValue > @MinPredictValue
                    AND rhb1.Umaban < rhb2.Umaban
           ) t1
             INNER JOIN Race
             ON Race.RaceId = t1.RaceId --INNER JOIN Odds3 ON Odds3.RaceId = t1.RaceId
             INNER JOIN ConfigBet
             ON
                ConfigBet.ConfigTypeCd = @ConfigType
                AND ConfigBet.BetTypeCd = 5
                AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                AND ConfigBet.JyokenCd5 = Race.JyokenCd5
           WHERE PredictValueRank <= ConfigBet.CurrentValue;
    --AND Odds3.WideFlag = @IsSellTarget
    SET @Return+=@@rowcount;
    --------------------------------------------------------------------------------
    -- 6 : Bet Exacta
    --------------------------------------------------------------------------------
    INSERT INTO BetMgmtByBet
    (
           RaceId,
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
           SELECT  
                  t1.RaceId,
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
             SELECT 
                    rhb1.RaceId,
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
                    rhb1.PredictValue
                    * rhb2.PredictValue
                    * 100 AS TotalPredictValue,
                    RANK() OVER(PARTITION BY rhb1.RaceId
                    ORDER BY 
                             rhb1.PredictValue
                             * rhb2.PredictValue DESC,
                             rhb1.PredictValue DESC,
                             rhb2.PredictValue DESC) AS PredictValueRank
             FROM   RaceHorseBet rhb1
                    INNER JOIN RaceHorseBet rhb2
                    ON rhb2.RaceId = rhb1.RaceId
             WHERE
                    rhb1.RaceDate >= @RaceDateFrom
                    AND rhb1.PredictValue > @MinPredictValue
                    AND rhb2.PredictValue > @MinPredictValue
                    AND rhb1.Umaban != rhb2.Umaban
           ) t1
             INNER JOIN Race
             ON Race.RaceId = t1.RaceId --INNER JOIN Odds4 ON Odds4.RaceId = t1.RaceId
             INNER JOIN ConfigBet
             ON
                ConfigBet.ConfigTypeCd = @ConfigType
                AND ConfigBet.BetTypeCd = 6
                AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                AND ConfigBet.JyokenCd5 = Race.JyokenCd5
           WHERE PredictValueRank <= ConfigBet.CurrentValue;
    --AND Odds4.UmatanFlag = @IsSellTarget
    SET @Return+=@@rowcount;
    --------------------------------------------------------------------------------
    -- 7 : Bet Trio
    --------------------------------------------------------------------------------
    INSERT INTO BetMgmtByBet
    (
           RaceId,
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
           SELECT  
                  t1.RaceId,
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
             SELECT 
                    rhb1.RaceId,
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
                    rhb1.PredictValue
                    * rhb2.PredictValue
                    * rhb3.PredictValue
                    * 10000 AS TotalPredictValue,
                    RANK() OVER(PARTITION BY rhb1.RaceId
                    ORDER BY 
                             rhb1.PredictValue
                             * rhb2.PredictValue
                             * rhb3.PredictValue DESC,
                             rhb1.PredictValue DESC,
                             rhb2.PredictValue DESC,
                             rhb3.PredictValue DESC) AS PredictValueRank
             FROM   RaceHorseBet rhb1
                    INNER JOIN RaceHorseBet rhb2
                    ON rhb2.RaceId = rhb1.RaceId
                    INNER JOIN RaceHorseBet rhb3
                    ON rhb3.RaceId = rhb1.RaceId
             WHERE
                    rhb1.RaceDate >= @RaceDateFrom
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
             ON
                ConfigBet.ConfigTypeCd = @ConfigType
                AND ConfigBet.BetTypeCd = 7
                AND ConfigBet.TrackTypeCd = Race.TrackTypeCd
                AND ConfigBet.JyokenCd5 = Race.JyokenCd5
           WHERE PredictValueRank <= ConfigBet.CurrentValue;
    --AND Odds5.SanrenpukuFlag = @IsSellTarget
    SET @Return+=@@rowcount;
    --------------------------------------------------------------------------------
    -- 8 : Bet Trifecta
    --------------------------------------------------------------------------------
    INSERT INTO BetMgmtByBet
    (
           RaceId,
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
           SELECT  
                  t1.RaceId,
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
             SELECT 
                    rhb1.RaceId,
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
                    rhb1.PredictValue
                    * rhb2.PredictValue
                    * rhb3.PredictValue
                    * 10000 AS TotalPredictValue,
                    RANK() OVER(PARTITION BY rhb1.RaceId
                    ORDER BY 
                             rhb1.PredictValue
                             * rhb2.PredictValue
                             * rhb3.PredictValue DESC,
                             rhb1.PredictValue DESC,
                             rhb2.PredictValue DESC,
                             rhb3.PredictValue DESC) AS PredictValueRank
             FROM   RaceHorseBet rhb1
                    INNER JOIN RaceHorseBet rhb2
                    ON rhb2.RaceId = rhb1.RaceId
                    INNER JOIN RaceHorseBet rhb3
                    ON rhb3.RaceId = rhb1.RaceId
             WHERE
                    rhb1.RaceDate >= @RaceDateFrom
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
             ON
                ConfigBet.ConfigTypeCd = @ConfigType
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
    FROM   PayoffByPayAll
           INNER JOIN RaceHorseBet
           ON RaceHorseBet.RaceId = PayoffByPayAll.RaceId
    WHERE  
          RaceHorseBet.RaceDate >= @RaceDateFrom;
    --------------------------------------------------------------------------------
    -- RaceHorseBet Win
    --------------------------------------------------------------------------------
    UPDATE RaceHorseBet
    SET    
        PayoffWin = PayoffByPayAll.Pay,
        TS = GETDATE(),
        TS2 = GETDATE()
    FROM   RaceHorseBet
           INNER JOIN PayoffByPayAll
           ON
              PayoffByPayAll.RaceId = RaceHorseBet.RaceId
              AND PayoffByPayAll.Kumi1 = RaceHorseBet.Umaban
              AND PayoffByPayAll.Kumi2 = 0
              AND PayoffByPayAll.Kumi3 = 0
    WHERE  
          RaceHorseBet.RaceDate >= @RaceDateFrom
          AND PayoffByPayAll.BetTypeCd = 1;
    --------------------------------------------------------------------------------
    -- RaceHorseBet Place
    --------------------------------------------------------------------------------
    UPDATE RaceHorseBet
    SET    
        PayoffPlace = PayoffByPayAll.Pay,
        TS = GETDATE(),
        TS2 = GETDATE()
    FROM   RaceHorseBet
           INNER JOIN PayoffByPayAll
           ON
              PayoffByPayAll.RaceId = RaceHorseBet.RaceId
              AND PayoffByPayAll.Kumi1 = RaceHorseBet.Umaban
              AND PayoffByPayAll.Kumi2 = 0
              AND PayoffByPayAll.Kumi3 = 0
    WHERE  
          RaceHorseBet.RaceDate >= @RaceDateFrom
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
    WHERE  
          MgmtBet.RaceDate >= @RaceDateFrom;
    --------------------------------------------------------------------------------
    -- MgmtBet
    --------------------------------------------------------------------------------
    UPDATE MgmtBet
    SET    
        IsHit = 1,
        HitCount = 1,
        HitMoney = dbo.PayoffByPayAll.Pay,
        ReturnMoney = dbo.PayoffByPayAll.Pay
                      - MgmtBet.BetMoney,
        TS2 = GETDATE()
    FROM   MgmtBet
           INNER JOIN PayoffByPayAll
           ON
              PayoffByPayAll.RaceId = MgmtBet.RaceId
              AND PayoffByPayAll.BetTypeCd = MgmtBet.BetTypeCd
    WHERE  
          MgmtBet.RaceDate >= @RaceDateFrom
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
    FROM   PayoffByPayAll
    WHERE  
          PayoffByPayAll.RaceDate >= @RaceDateFrom;
    --------------------------------------------------------------------------------
    -- PayoffByPayAll
    --------------------------------------------------------------------------------
    UPDATE PayoffByPayAll
    SET    
        IsHit = 1,
        TS2 = GETDATE()
    FROM   MgmtBet
           INNER JOIN PayoffByPayAll
           ON
              PayoffByPayAll.RaceId = MgmtBet.RaceId
              AND PayoffByPayAll.BetTypeCd = MgmtBet.BetTypeCd
    WHERE  
          PayoffByPayAll.RaceDate >= @RaceDateFrom
          AND PayoffByPayAll.Kumi1 = MgmtBet.Kumi1
          AND PayoffByPayAll.Kumi2 = MgmtBet.Kumi2
          AND PayoffByPayAll.Kumi3 = MgmtBet.Kumi3;
    --------------------------------------------------------------------------------
    -- Race
    --------------------------------------------------------------------------------
    UPDATE  Race
    SET     
        BetCount = t1.BetCount,
        HitCount = t1.HitCount,
        BetMoney = t1.BetMoney,
        HitMoney = t1.HitMoney,
        ReturnMoney = t1.ReturnMoney,
        TS2 = GETDATE()
    FROM    Race
            INNER JOIN
      (
      SELECT 
             MgmtBet.RaceId,
             SUM(MgmtBet.BetCount) AS BetCount,
             SUM(MgmtBet.HitCount) AS HitCount,
             SUM(MgmtBet.BetMoney) AS BetMoney,
             SUM(MgmtBet.HitMoney) AS HitMoney,
             SUM(MgmtBet.ReturnMoney) AS ReturnMoney
      FROM   dbo.MgmtBet
      WHERE  MgmtBet.RaceDate >= @RaceDateFrom
      GROUP BY 
               MgmtBet.RaceId
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
CREATE PROCEDURE dbo.usp_MgmtBet_DeleteByRaceNum 
                 @RaceId NCHAR(20)
WITH EXECUTE AS CALLER
AS
BEGIN
    BEGIN TRANSACTION;
    DECLARE @Return INT = 0;
    --------------------------------------------------------------------------------
    -- MgmtBet	:	Delete All Bets
    --------------------------------------------------------------------------------
    DELETE MgmtBet
    WHERE  
          MgmtBet.RaceId = @RaceId;
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
CREATE PROCEDURE dbo.usp_RaceHorse_ClearPredValByRaceNum 
                 @RaceId NCHAR(20)
WITH EXECUTE AS CALLER
AS
BEGIN
    BEGIN TRANSACTION;
    DECLARE @Return INT = 0;
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
    WHERE  
          RaceId = @RaceId;
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
CREATE PROCEDURE dbo.usp_RaceHorse_UpdatePredValByRaceNum 
                 @RaceId NCHAR(20)
WITH EXECUTE AS CALLER
AS
BEGIN
    SET NOCOUNT ON;
    BEGIN TRANSACTION;
    DECLARE @Return INT = 0;
    --------------------------------------------------------------------------------
    -- Declaration
    --------------------------------------------------------------------------------
    DECLARE @RaceDateFrom DATETIME = '2014-01-01';
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
    FROM   RaceHorseBet
           INNER JOIN Race
           ON Race.RaceId = RaceHorseBet.RaceId
    WHERE  
          Race.RaceDate >= @RaceDateFrom
          AND Race.RaceId = @RaceId;
    --------------------------------------------------------------------------------
    -- OddsInverse 1
    --------------------------------------------------------------------------------
    UPDATE RaceHorseBet
    SET
    --PredictValue01 = Odds1ByWin.OddsInverse1,
        PredictValue01 = 1
                         / Race.TorokuTosu,
        TS2 = GETDATE()
    FROM   RaceHorseBet
           INNER JOIN Race
           ON
              Race.RaceId = RaceHorseBet.RaceId
              AND Race.JyoCd = RaceHorseBet.JyoCd
              AND Race.Kaiji = RaceHorseBet.Kaiji
              AND Race.Nichiji = RaceHorseBet.Nichiji
              AND Race.RaceNum = RaceHorseBet.RaceNum
           INNER JOIN Odds1ByWin
           ON
              Odds1ByWin.RaceId = RaceHorseBet.RaceId
              AND Odds1ByWin.BetTypeCd = 1
              AND Odds1ByWin.Kumi1 = RaceHorseBet.Umaban
              AND Odds1ByWin.Kumi2 = 0
              AND Odds1ByWin.Kumi3 = 0
    WHERE  
          Race.RaceDate >= @RaceDateFrom
          AND Race.RaceId = @RaceId;
    --------------------------------------------------------------------------------
    -- Update PredictValue
    --------------------------------------------------------------------------------
    UPDATE RaceHorseBet
    SET    
        PredictValue = PredictValue01,
        PredictDateTime = GETDATE(),
        TS2 = GETDATE()
    FROM   RaceHorseBet
           INNER JOIN Race
           ON Race.RaceId = RaceHorseBet.RaceId
    WHERE  
          Race.RaceDate >= @RaceDateFrom
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
    FROM   RaceHorseBet
           INNER JOIN Race
           ON Race.RaceId = RaceHorseBet.RaceId
           INNER JOIN RaceHorse
           ON
              RaceHorse.RaceId = RaceHorseBet.RaceId
              AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
    WHERE  
          Race.RaceDate >= @RaceDateFrom
          AND Race.RaceId = @RaceId
          AND
              (
              RaceHorse.IJyoCd = '1'
              OR RaceHorse.IJyoCd = '2'
              OR RaceHorse.IJyoCd = '3'
              OR RaceHorse.IJyoCd = '4'
              OR RaceHorse.IJyoCd = '5'
              OR RaceHorse.IJyoCd = '6'
              OR RaceHorse.IJyoCd = '7'
              );
    --------------------------------------------------------------------------------
    -- Update RaceHorse : レース中止
    --------------------------------------------------------------------------------
    UPDATE RaceHorseBet
    SET    
        PredictRank = 93,
        PredictValue = -993,
        PredictDateTime = GETDATE(),
        TS2 = GETDATE()
    FROM   RaceHorseBet
           INNER JOIN Race
           ON Race.RaceId = RaceHorseBet.RaceId
           INNER JOIN RaceHorse
           ON
              RaceHorse.RaceId = RaceHorseBet.RaceId
              AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
    WHERE  
          Race.RaceDate >= @RaceDateFrom
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
    FROM   RaceHorseBet
           INNER JOIN Race
           ON Race.RaceId = RaceHorseBet.RaceId
           INNER JOIN RaceHorse
           ON
              RaceHorse.RaceId = RaceHorseBet.RaceId
              AND RaceHorse.KettoNum = RaceHorseBet.KettoNum
    WHERE  
          Race.RaceDate >= @RaceDateFrom
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
    FROM   RaceHorseBet
           INNER JOIN Race
           ON Race.RaceId = RaceHorseBet.RaceId
    WHERE  
          Race.RaceDate >= @RaceDateFrom
          AND Race.RaceId = @RaceId
          AND PredictValue IS NULL;
    --------------------------------------------------------------------------------
    -- Update RaceHorse : Ranking
    --------------------------------------------------------------------------------
    UPDATE  RaceHorseBet
    SET     
        RaceHorseBet.PredictRank = t.PredictValueRank
    FROM    RaceHorseBet
            INNER JOIN
      (
      SELECT 
             RaceHorseBet.RaceId,
             RaceHorseBet.KettoNum,
             RaceHorseBet.PredictValue,
             RANK() OVER(PARTITION BY RaceHorseBet.RaceId
             ORDER BY 
                      RaceHorseBet.PredictValue DESC) AS PredictValueRank
      FROM   RaceHorseBet
             INNER JOIN Race
             ON Race.RaceId = RaceHorseBet.RaceId
      WHERE
             Race.RaceDate >= @RaceDateFrom
             AND Race.RaceId = @RaceId
    ) AS t
            ON
               RaceHorseBet.RaceId = t.RaceId
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