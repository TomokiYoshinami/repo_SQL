USE [Jackpot]
GO
/****** Object:  View [dbo].[ViewOdds]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewOdds]
AS
	SELECT RecordSpec,
		  DataKubun,
		  MakeDate,
		  RaceDate,
		  JyoCD,
		  Kaiji,
		  Nichiji,
		  RaceNum,
		  RaceID,
		  BetTypeCD,
		  Kumi1,
		  Kumi2,
		  Kumi3,
		  Odds1,
		  Odds2,
		  Ninki,
		  TS
	FROM     dbo.Odds1ByWin
	UNION ALL
	SELECT RecordSpec,
		  DataKubun,
		  MakeDate,
		  RaceDate,
		  JyoCD,
		  Kaiji,
		  Nichiji,
		  RaceNum,
		  RaceID,
		  BetTypeCD,
		  Kumi1,
		  Kumi2,
		  Kumi3,
		  Odds1,
		  Odds2,
		  Ninki,
		  TS
	FROM     dbo.Odds1ByPlace
	UNION ALL
	SELECT RecordSpec,
		  DataKubun,
		  MakeDate,
		  RaceDate,
		  JyoCD,
		  Kaiji,
		  Nichiji,
		  RaceNum,
		  RaceID,
		  BetTypeCD,
		  Kumi1,
		  Kumi2,
		  Kumi3,
		  Odds1,
		  Odds2,
		  Ninki,
		  TS
	FROM     dbo.Odds1ByBracket
	UNION ALL
	SELECT RecordSpec,
		  DataKubun,
		  MakeDate,
		  RaceDate,
		  JyoCD,
		  Kaiji,
		  Nichiji,
		  RaceNum,
		  RaceID,
		  BetTypeCD,
		  Kumi1,
		  Kumi2,
		  Kumi3,
		  Odds1,
		  Odds2,
		  Ninki,
		  TS
	FROM     dbo.Odds2ByQuinella
	UNION ALL
	SELECT RecordSpec,
		  DataKubun,
		  MakeDate,
		  RaceDate,
		  JyoCD,
		  Kaiji,
		  Nichiji,
		  RaceNum,
		  RaceID,
		  BetTypeCD,
		  Kumi1,
		  Kumi2,
		  Kumi3,
		  Odds1,
		  Odds2,
		  Ninki,
		  TS
	FROM     dbo.Odds3ByWide
	UNION ALL
	SELECT RecordSpec,
		  DataKubun,
		  MakeDate,
		  RaceDate,
		  JyoCD,
		  Kaiji,
		  Nichiji,
		  RaceNum,
		  RaceID,
		  BetTypeCD,
		  Kumi1,
		  Kumi2,
		  Kumi3,
		  Odds1,
		  Odds2,
		  Ninki,
		  TS
	FROM     dbo.Odds4ByExacta
	UNION ALL
	SELECT RecordSpec,
		  DataKubun,
		  MakeDate,
		  RaceDate,
		  JyoCD,
		  Kaiji,
		  Nichiji,
		  RaceNum,
		  RaceID,
		  BetTypeCD,
		  Kumi1,
		  Kumi2,
		  Kumi3,
		  Odds1,
		  Odds2,
		  Ninki,
		  TS
	FROM     dbo.Odds5ByTrio
	UNION ALL
	SELECT RecordSpec,
		  DataKubun,
		  MakeDate,
		  RaceDate,
		  JyoCD,
		  Kaiji,
		  Nichiji,
		  RaceNum,
		  RaceID,
		  BetTypeCD,
		  Kumi1,
		  Kumi2,
		  Kumi3,
		  Odds1,
		  Odds2,
		  Ninki,
		  TS
	FROM   dbo.Odds6ByTrifecta;


GO
/****** Object:  View [dbo].[ViewMgmtSim]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewMgmtSim]
AS
	SELECT dbo.MgmtSim.RaceDate,
		  dbo.MgmtSim.JyoCD,
		  dbo.MgmtSim.Kaiji,
		  dbo.MgmtSim.Nichiji,
		  dbo.MgmtSim.RaceNum,
		  dbo.MgmtSim.RaceID,
		  dbo.MgmtSim.BetDateTime,
		  dbo.MgmtSim.BetTypeCD,
		  dbo.MasterBetType.BetTypeContent,
		  dbo.MgmtSim.Kumi1,
		  dbo.MgmtSim.Kumi2,
		  dbo.MgmtSim.Kumi3,
		  dbo.MgmtSim.BetNum,
		  dbo.ViewOdds.Odds1,
		  dbo.ViewOdds.Odds2,
		  dbo.ViewOdds.Ninki,
		  dbo.MgmtSim.BetCount,
		  dbo.MgmtSim.HitCount,
		  dbo.MgmtSim.BetMoney,
		  dbo.MgmtSim.HitMoney,
		  dbo.MgmtSim.ReturnMoney,
		  dbo.MgmtSim.BetMoney * dbo.ViewOdds.Odds1 AS WillHitMoney1,
		  dbo.MgmtSim.BetMoney * dbo.ViewOdds.Odds1 - dbo.MgmtSim.BetMoney AS WillReturnMoney1,
		  dbo.MgmtSim.BetMoney * dbo.ViewOdds.Odds2 AS WillHitMoney2,
		  dbo.MgmtSim.BetMoney * dbo.ViewOdds.Odds2 - dbo.MgmtSim.BetMoney AS WillReturnMoney2,
		  dbo.MgmtSim.PredictDateTime,
		  dbo.MgmtSim.IsBet,
		  dbo.MgmtSim.IsFixed,
		  dbo.MgmtSim.FixedDateTime,
		  dbo.MgmtSim.IsSentJRA,
		  dbo.MgmtSim.SentJRADateTime,
		  dbo.MgmtSim.IsHit,
		  dbo.MgmtSim.IsChecked,
		  dbo.MgmtSim.CheckDateTime,
		  dbo.MgmtSim.PredictValue1,
		  dbo.MgmtSim.PredictValue2,
		  dbo.MgmtSim.PredictValue3,
		  dbo.MgmtSim.TotalPredictValue,
		  dbo.MgmtSim.TotalPredictValueRank,
		  dbo.MgmtSim.Wakuban1,
		  dbo.MgmtSim.Wakuban2,
		  dbo.MgmtSim.Wakuban3,
		  dbo.MgmtSim.TS,
		  dbo.MgmtSim.TS2
	FROM   dbo.MasterBetType
		  INNER JOIN dbo.MgmtSim
		  ON dbo.MgmtSim.BetTypeCD = dbo.MasterBetType.BetTypeCD
		  INNER JOIN dbo.ViewOdds
		  ON dbo.ViewOdds.RaceDate = dbo.MgmtSim.RaceDate
			AND dbo.ViewOdds.JyoCD = dbo.MgmtSim.JyoCD
			AND dbo.ViewOdds.Kaiji = dbo.MgmtSim.Kaiji
			AND dbo.ViewOdds.Nichiji = dbo.MgmtSim.Nichiji
			AND dbo.ViewOdds.RaceNum = dbo.MgmtSim.RaceNum
			AND dbo.ViewOdds.Kumi1 = dbo.MgmtSim.Kumi1
			AND dbo.ViewOdds.Kumi2 = dbo.MgmtSim.Kumi2
			AND dbo.ViewOdds.Kumi3 = dbo.MgmtSim.Kumi3
			AND dbo.ViewOdds.BetTypeCD = dbo.MgmtSim.BetTypeCD
	WHERE  dbo.MgmtSim.RaceDate >= CONVERT(DATETIME,'2014-01-01 00:00:00',102);


GO
/****** Object:  View [dbo].[ViewMgmtBet]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewMgmtBet]
AS
	SELECT dbo.MgmtBet.RaceDate,
		  dbo.MgmtBet.JyoCD,
		  dbo.MgmtBet.Kaiji,
		  dbo.MgmtBet.Nichiji,
		  dbo.MgmtBet.RaceNum,
		  dbo.MgmtBet.RaceID,
		  dbo.MgmtBet.BetDateTime,
		  dbo.MgmtBet.BetTypeCD,
		  dbo.MasterBetType.BetTypeContent,
		  dbo.MgmtBet.Kumi1,
		  dbo.MgmtBet.Kumi2,
		  dbo.MgmtBet.Kumi3,
		  dbo.MgmtBet.BetNum,
		  dbo.ViewOdds.Odds1,
		  dbo.ViewOdds.Odds2,
		  dbo.ViewOdds.Ninki,
		  dbo.MgmtBet.BetCount,
		  dbo.MgmtBet.HitCount,
		  dbo.MgmtBet.BetMoney,
		  dbo.MgmtBet.HitMoney,
		  dbo.MgmtBet.ReturnMoney,
		  dbo.MgmtBet.BetMoney * dbo.ViewOdds.Odds1 AS WillHitMoney1,
		  dbo.MgmtBet.BetMoney * dbo.ViewOdds.Odds1 - dbo.MgmtBet.BetMoney AS WillReturnMoney1,
		  dbo.MgmtBet.BetMoney * dbo.ViewOdds.Odds2 AS WillHitMoney2,
		  dbo.MgmtBet.BetMoney * dbo.ViewOdds.Odds2 - dbo.MgmtBet.BetMoney AS WillReturnMoney2,
		  dbo.MgmtBet.PredictDateTime,
		  dbo.MgmtBet.IsBet,
		  dbo.MgmtBet.IsFixed,
		  dbo.MgmtBet.FixedDateTime,
		  dbo.MgmtBet.IsSentJRA,
		  dbo.MgmtBet.SentJRADateTime,
		  dbo.MgmtBet.IsHit,
		  dbo.MgmtBet.IsChecked,
		  dbo.MgmtBet.CheckDateTime,
		  dbo.MgmtBet.PredictValue1,
		  dbo.MgmtBet.PredictValue2,
		  dbo.MgmtBet.PredictValue3,
		  dbo.MgmtBet.TotalPredictValue,
		  dbo.MgmtBet.TotalPredictValueRank,
		  dbo.MgmtBet.Wakuban1,
		  dbo.MgmtBet.Wakuban2,
		  dbo.MgmtBet.Wakuban3,
		  dbo.MgmtBet.TS,
		  dbo.MgmtBet.TS2,
		  dbo.MgmtBet.GUID
	FROM   dbo.MasterBetType
		  INNER JOIN dbo.MgmtBet
		  ON dbo.MgmtBet.BetTypeCD = dbo.MasterBetType.BetTypeCD
		  INNER JOIN dbo.ViewOdds
		  ON dbo.ViewOdds.RaceID = dbo.MgmtBet.RaceID
			AND dbo.ViewOdds.Kumi1 = dbo.MgmtBet.Kumi1
			AND dbo.ViewOdds.Kumi2 = dbo.MgmtBet.Kumi2
			AND dbo.ViewOdds.Kumi3 = dbo.MgmtBet.Kumi3
			AND dbo.ViewOdds.BetTypeCD = dbo.MgmtBet.BetTypeCD
	WHERE  dbo.MgmtBet.RaceDate >= CONVERT(DATETIME,'2014-01-01 00:00:00',102);


GO
/****** Object:  View [dbo].[ViewPayoffByPayAll]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewPayoffByPayAll]
AS
	SELECT dbo.PayoffByPayAll.IsHit,
		  dbo.PayoffByPayAll.RecordSpec,
		  dbo.PayoffByPayAll.DataKubun,
		  dbo.PayoffByPayAll.MakeDate,
		  dbo.PayoffByPayAll.RaceDate,
		  dbo.PayoffByPayAll.JyoCD,
		  dbo.PayoffByPayAll.Kaiji,
		  dbo.PayoffByPayAll.Nichiji,
		  dbo.PayoffByPayAll.RaceNum,
		  dbo.PayoffByPayAll.RaceID,
		  dbo.PayoffByPayAll.BetTypeCD,
		  dbo.MasterBetType.BetTypeContent,
		  dbo.PayoffByPayAll.Num,
		  dbo.PayoffByPayAll.Kumi1,
		  dbo.PayoffByPayAll.Kumi2,
		  dbo.PayoffByPayAll.Kumi3,
		  dbo.PayoffByPayAll.Pay,
		  dbo.PayoffByPayAll.Ninki,
		  dbo.PayoffByPayAll.TS,
		  dbo.PayoffByPayAll.TS2,
		  rs1.Wakuban AS Wakuban1,
		  rs2.Wakuban AS Wakuban2,
		  rs3.Wakuban AS Wakuban3
	FROM   dbo.PayoffByPayAll
		  INNER JOIN dbo.MasterBetType
		  ON dbo.MasterBetType.BetTypeCD = dbo.PayoffByPayAll.BetTypeCD
		  LEFT OUTER JOIN dbo.RaceHorse AS rs1
		  ON rs1.RaceID = PayoffByPayAll.RaceID
			AND rs1.Umaban = PayoffByPayAll.Kumi1
		  LEFT OUTER JOIN dbo.RaceHorse AS rs2
		  ON rs2.RaceID = PayoffByPayAll.RaceID
			AND rs2.Umaban = PayoffByPayAll.Kumi2
		  LEFT OUTER JOIN dbo.RaceHorse AS rs3
		  ON rs3.RaceID = PayoffByPayAll.RaceID
			AND rs3.Umaban = PayoffByPayAll.Kumi3
	WHERE  dbo.PayoffByPayAll.RaceDate >= CONVERT(DATETIME,'2014-01-01 00:00:00',102);


GO
/****** Object:  View [dbo].[ViewRace]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewRace]
AS
	SELECT dbo.Race.RecordSpec,
		  dbo.Race.DataKubun,
		  dbo.Race.MakeDate,
		  dbo.Race.RaceDate,
		  dbo.Race.JyoCD,
		  dbo.Race.Kaiji,
		  dbo.Race.Nichiji,
		  dbo.Race.RaceNum,
		  dbo.Race.RaceID,
		  dbo.Race.YoubiCD,
		  dbo.Race.TokuNum,
		  dbo.Race.Hondai,
		  dbo.Race.Fukudai,
		  dbo.Race.Kakko,
		  dbo.Race.HondaiEng,
		  dbo.Race.FukudaiEng,
		  dbo.Race.KakkoEng,
		  dbo.Race.Ryakusyo10,
		  dbo.Race.Ryakusyo6,
		  dbo.Race.Ryakusyo3,
		  dbo.Race.Kubun,
		  dbo.Race.Nkai,
		  dbo.Race.GradeCD,
		  dbo.Race.GradeCDBefore,
		  dbo.Race.SyubetuCD,
		  dbo.Race.KigoCD,
		  dbo.Race.JyuryoCD,
		  dbo.Race.JyokenCD1,
		  dbo.Race.JyokenCD2,
		  dbo.Race.JyokenCD3,
		  dbo.Race.JyokenCD4,
		  dbo.Race.JyokenCD5,
		  dbo.Race.JyokenName,
		  dbo.Race.Kyori,
		  dbo.Race.KyoriBefore,
		  dbo.Race.DistanceTypeCD,
		  dbo.Race.DistanceType2CD,
		  dbo.Race.SmileCD,
		  dbo.Race.TrackCD,
		  dbo.Race.TrackCDBefore,
		  dbo.Race.CourseKubunCD,
		  dbo.Race.CourseKubunCDBefore,
		  dbo.Race.Honsyokin1,
		  dbo.Race.Honsyokin2,
		  dbo.Race.Honsyokin3,
		  dbo.Race.Honsyokin4,
		  dbo.Race.Honsyokin5,
		  dbo.Race.Honsyokin6,
		  dbo.Race.Honsyokin7,
		  dbo.Race.HonsyokinBefore1,
		  dbo.Race.HonsyokinBefore2,
		  dbo.Race.HonsyokinBefore3,
		  dbo.Race.HonsyokinBefore4,
		  dbo.Race.HonsyokinBefore5,
		  dbo.Race.Fukasyokin1,
		  dbo.Race.Fukasyokin2,
		  dbo.Race.Fukasyokin3,
		  dbo.Race.Fukasyokin4,
		  dbo.Race.Fukasyokin5,
		  dbo.Race.FukasyokinBefore1,
		  dbo.Race.FukasyokinBefore2,
		  dbo.Race.FukasyokinBefore3,
		  dbo.Race.HassoTime,
		  dbo.Race.HassoTimeBefore,
		  dbo.Race.TorokuTosu,
		  dbo.Race.SyussoTosu,
		  dbo.Race.NyusenTosu,
		  dbo.Race.TenkoCD,
		  dbo.Race.TrackTypeCD,
		  dbo.Race.TrackType2CD,
		  dbo.Race.TrackType3CD,
		  dbo.Race.CourseTypeCD,
		  dbo.Race.TrackConditionCD,
		  dbo.Race.SibaBabaCD,
		  dbo.Race.DirtBabaCD,
		  dbo.Race.SyogaiMileTime,
		  dbo.Race.HaronTimeS3,
		  dbo.Race.HaronTimeS4,
		  dbo.Race.HaronTimeL3,
		  dbo.Race.HaronTimeL4,
		  dbo.Race.RecordUpKubun,
		  dbo.Race.TS,
		  dbo.Race.IsNormal,
		  dbo.Race.LastCrollTimeStamp,
		  dbo.Race.PredictDateTime,
		  dbo.Race.ConfirmDateTime,
		  dbo.Race.BetCount,
		  dbo.Race.HitCount,
		  dbo.Race.BetMoney,
		  dbo.Race.HitMoney,
		  dbo.Race.ReturnMoney,
		  dbo.Race.HitRateByBet,
		  dbo.Race.HitRateByRace,
		  dbo.Race.ReturnMoneyRateByRace,
		  dbo.Race.TS2,
		  dbo.MasterSyubetsu.SyubetuRyakusyo6 AS SyubetsuRyakusyo6,
		  dbo.MasterTrackType.TrackType,
		  dbo.MasterTrackCondition.TrackCondition,
		  dbo.MasterTenko.Tenko,
		  dbo.MasterGrade.Grade,
		  dbo.MasterJyoken5.Jyoken,
		  dbo.MasterTrack.Track,
		  dbo.MasterKigo.Kigo,
		  dbo.MasterJyuryo.Jyuryo,
		  dbo.MasterJyo.JyoCDName
	FROM   dbo.Race
		  INNER JOIN dbo.MasterGrade
		  ON dbo.MasterGrade.GradeCD = dbo.Race.GradeCD
		  INNER JOIN dbo.MasterJyo
		  ON dbo.MasterJyo.JyoCD = dbo.Race.JyoCD
		  INNER JOIN dbo.MasterJyoken5
		  ON dbo.MasterJyoken5.JyokenCD5 = dbo.Race.JyokenCD5
		  INNER JOIN dbo.MasterJyuryo
		  ON dbo.MasterJyuryo.JyuryoCD = dbo.Race.JyuryoCD
		  INNER JOIN dbo.MasterKigo
		  ON dbo.MasterKigo.KigoCD = dbo.Race.KigoCD
		  INNER JOIN dbo.MasterSmile
		  ON dbo.MasterSmile.SmileCD = dbo.Race.SmileCD
		  INNER JOIN dbo.MasterSyubetsu
		  ON dbo.MasterSyubetsu.SyubetuCD = dbo.Race.SyubetuCD
		  INNER JOIN dbo.MasterTenko
		  ON dbo.MasterTenko.TenkoCD = dbo.Race.TenkoCD
		  INNER JOIN dbo.MasterTrack
		  ON dbo.MasterTrack.TrackCD = dbo.Race.TrackCD
		  INNER JOIN dbo.MasterTrackCondition
		  ON dbo.MasterTrackCondition.TrackConditionCD = dbo.Race.TrackConditionCD
		  INNER JOIN dbo.MasterTrackType
		  ON dbo.MasterTrackType.TrackTypeCD = dbo.Race.TrackTypeCD
	WHERE  dbo.Race.JyoCD BETWEEN '01' AND '10'
		  AND dbo.Race.RaceDate >= CONVERT(DATETIME,'2014-01-01 00:00:00',102)
		  AND (dbo.Race.DataKubun = '1'
			  OR dbo.Race.DataKubun = '2'
			  OR dbo.Race.DataKubun = '3'
			  OR dbo.Race.DataKubun = '4'
			  OR dbo.Race.DataKubun = '5'
			  OR dbo.Race.DataKubun = '6'
			  OR dbo.Race.DataKubun = '7');


GO
/****** Object:  View [dbo].[ViewRaceDate]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewRaceDate]
AS
	SELECT    ISNULL(ROW_NUMBER() OVER(ORDER BY t1.RaceDate ASC),0) AS ID,
			t1.RaceDate
	FROM
	(
	    SELECT DISTINCT
			 Race.RaceDate AS RaceDate
	    FROM   dbo.Race
	    WHERE  Race.JyoCD BETWEEN '01' AND '10'
			 AND Race.RaceDate >= CONVERT( DATETIME,'2014-01-01 00:00:00',102)
	) AS t1;


GO
/****** Object:  View [dbo].[ViewRaceHorse]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewRaceHorse]
AS
	SELECT          --ISNULL((ROW_NUMBER() OVER (ORDER BY dbo.RaceHorse.RaceDate, dbo.RaceHorse.JyoCD, dbo.RaceHorse.Kaiji, dbo.RaceHorse.Nichiji, dbo.RaceHorse.RaceNum, dbo.RaceHorse.Wakuban, dbo.RaceHorse.Umaban, dbo.RaceHorse.KettoNum ASC)), 0) AS ID,
	dbo.RaceHorse.RecordSpec,
	dbo.RaceHorse.DataKubun,
	dbo.RaceHorse.MakeDate,
	dbo.RaceHorse.RaceDate,
	dbo.RaceHorse.JyoCD,
	dbo.RaceHorse.Kaiji,
	dbo.RaceHorse.Nichiji,
	dbo.RaceHorse.RaceNum,
	dbo.RaceHorse.RaceID,
	dbo.RaceHorse.Wakuban,
	dbo.RaceHorse.Umaban,
	dbo.RaceHorse.KettoNum,
	dbo.RaceHorse.Bamei,
	dbo.RaceHorse.UmaKigoCD,
	dbo.RaceHorse.SexCD,
	dbo.RaceHorse.HinsyuCD,
	dbo.RaceHorse.KeiroCD,
	dbo.RaceHorse.Barei,
	dbo.RaceHorse.TozaiCD,
	dbo.RaceHorse.ChokyosiCode,
	dbo.RaceHorse.ChokyosiRyakusyo,
	dbo.RaceHorse.BanusiCode,
	dbo.RaceHorse.BanusiName,
	dbo.RaceHorse.Fukusyoku,
	dbo.RaceHorse.reserved1,
	dbo.RaceHorse.Futan,
	dbo.RaceHorse.FutanBefore,
	dbo.RaceHorse.Blinker,
	dbo.RaceHorse.IsBlinker,
	dbo.RaceHorse.reserved2,
	dbo.RaceHorse.KisyuCode,
	dbo.RaceHorse.KisyuCodeBefore,
	dbo.RaceHorse.KisyuRyakusyo,
	dbo.RaceHorse.KisyuRyakusyoBefore,
	dbo.RaceHorse.MinaraiCD,
	dbo.RaceHorse.MinaraiCDBefore,
	dbo.RaceHorse.BaTaijyu,
	dbo.RaceHorse.ZogenFugo,
	dbo.RaceHorse.ZogenSa,
	dbo.RaceHorse.IJyoCD,
	dbo.RaceHorse.NyusenJyuni,
	dbo.RaceHorse.KakuteiJyuni,
	dbo.RaceHorse.DochakuKubun,
	dbo.RaceHorse.DochakuTosu,
	dbo.RaceHorse.Time,
	dbo.RaceHorse.ChakusaCD,
	dbo.RaceHorse.ChakusaCDP,
	dbo.RaceHorse.ChakusaCDPP,
	dbo.RaceHorse.Jyuni1c,
	dbo.RaceHorse.Jyuni2c,
	dbo.RaceHorse.Jyuni3c,
	dbo.RaceHorse.Jyuni4c,
	dbo.RaceHorse.Honsyokin,
	dbo.RaceHorse.Fukasyokin,
	dbo.RaceHorse.reserved3,
	dbo.RaceHorse.reserved4,
	dbo.RaceHorse.HaronTimeL4,
	dbo.RaceHorse.HaronTimeL3,
	dbo.RaceHorse.KettoNum1,
	dbo.RaceHorse.Bamei1,
	dbo.RaceHorse.KettoNum2,
	dbo.RaceHorse.Bamei2,
	dbo.RaceHorse.KettoNum3,
	dbo.RaceHorse.Bamei3,
	dbo.RaceHorse.TimeDiff,
	dbo.RaceHorse.RecordUpKubun,
	dbo.RaceHorse.DMKubun,
	dbo.RaceHorse.DMTime,
	dbo.RaceHorse.DMGosaP,
	dbo.RaceHorse.DMGosaM,
	dbo.RaceHorse.DMJyuni,
	dbo.RaceHorse.Kyakusitu,
	dbo.RaceHorse.TS,
	dbo.RaceHorse.IsNormal,
	dbo.RaceHorse.StdTime,
	dbo.RaceHorse.StdTimeDev,
	dbo.RaceHorse.ClassTimeDev,
	dbo.RaceHorse.ZogenPercent,
	dbo.RaceHorse.LifeTime,
	dbo.RaceHorseBet.PayoffWin,
	dbo.RaceHorseBet.PayoffWinLog,
	dbo.RaceHorseBet.PayoffPlace,
	dbo.RaceHorseBet.PayoffPlaceLog,
	dbo.RaceHorseBet.PredictHitRate,
	dbo.RaceHorseBet.PredictHitRateLogit,
	dbo.RaceHorseBet.PredictPay,
	dbo.RaceHorseBet.PredictPayLog,
	dbo.RaceHorseBet.PredictExpectedValue,
	dbo.RaceHorseBet.PredictValue,
	dbo.RaceHorseBet.PredictRank,
	dbo.RaceHorseBet.PredictDateTime,
	dbo.RaceHorseBet.ResultValue,
	dbo.RaceHorseBet.ResultRank,
	PredictValue00,
	PredictValue00Temp,
	PredictValue00Rate,
	PredictValue00Sum,
	PredictValue01,
	PredictValue01Temp,
	PredictValue01Rate,
	PredictValue01Sum,
	PredictValue02,
	PredictValue02Temp,
	PredictValue02Rate,
	PredictValue02Sum,
	PredictValue03,
	PredictValue03Temp,
	PredictValue03Rate,
	PredictValue03Sum,
	PredictValue04,
	PredictValue04Temp,
	PredictValue04Rate,
	PredictValue04Sum,
	PredictValue05,
	PredictValue05Temp,
	PredictValue05Rate,
	PredictValue05Sum,
	PredictValue06,
	PredictValue06Temp,
	PredictValue06Rate,
	PredictValue06Sum,
	PredictValue07,
	PredictValue07Temp,
	PredictValue07Rate,
	PredictValue07Sum,
	PredictValue08,
	PredictValue08Temp,
	PredictValue08Rate,
	PredictValue08Sum,
	PredictValue09,
	PredictValue09Temp,
	PredictValue09Rate,
	PredictValue09Sum,
	PredictValue10,
	PredictValue10Temp,
	PredictValue10Rate,
	PredictValue10Sum,
	PredictValue11,
	PredictValue11Temp,
	PredictValue11Rate,
	PredictValue11Sum,
	PredictValue12,
	PredictValue12Temp,
	PredictValue12Rate,
	PredictValue12Sum,
	PredictValue13,
	PredictValue13Temp,
	PredictValue13Rate,
	PredictValue13Sum,
	PredictValue14,
	PredictValue14Temp,
	PredictValue14Rate,
	PredictValue14Sum,
	PredictValue15,
	PredictValue15Temp,
	PredictValue15Rate,
	PredictValue15Sum,
	PredictValue16,
	PredictValue16Temp,
	PredictValue16Rate,
	PredictValue16Sum,
	PredictValue17,
	PredictValue17Temp,
	PredictValue17Rate,
	PredictValue17Sum,
	PredictValue18,
	PredictValue18Temp,
	PredictValue18Rate,
	PredictValue18Sum,
	PredictValue19,
	PredictValue19Temp,
	PredictValue19Rate,
	PredictValue19Sum,
	PredictValue20,
	PredictValue20Temp,
	PredictValue20Rate,
	PredictValue20Sum,
	PredictValue21,
	PredictValue21Temp,
	PredictValue21Rate,
	PredictValue21Sum,
	PredictValue22,
	PredictValue22Temp,
	PredictValue22Rate,
	PredictValue22Sum,
	PredictValue23,
	PredictValue23Temp,
	PredictValue23Rate,
	PredictValue23Sum,
	PredictValue24,
	PredictValue24Temp,
	PredictValue24Rate,
	PredictValue24Sum,
	PredictValue25,
	PredictValue25Temp,
	PredictValue25Rate,
	PredictValue25Sum,
	PredictValue26,
	PredictValue26Temp,
	PredictValue26Rate,
	PredictValue26Sum,
	PredictValue27,
	PredictValue27Temp,
	PredictValue27Rate,
	PredictValue27Sum,
	PredictValue28,
	PredictValue28Temp,
	PredictValue28Rate,
	PredictValue28Sum,
	PredictValue29,
	PredictValue29Temp,
	PredictValue29Rate,
	PredictValue29Sum,
	PredictValue30,
	PredictValue30Temp,
	PredictValue30Rate,
	PredictValue30Sum,
	dbo.RaceHorse.RunCount,
	dbo.RaceHorse.HitCount1,
	dbo.RaceHorse.HitCount2,
	dbo.RaceHorse.HitCount3,
	dbo.RaceHorse.HitCount4,
	dbo.RaceHorse.HitCount5,
	dbo.RaceHorse.HitCount6,
	dbo.RaceHorse.HitCount12,
	dbo.RaceHorse.HitCount123,
	dbo.RaceHorse.IsHit_1,
	dbo.RaceHorse.IsHit_2,
	dbo.RaceHorse.IsHit_3,
	dbo.RaceHorse.IsHit_12,
	dbo.RaceHorse.IsHit_123,
	dbo.RaceHorse.IsNinki_01,
	dbo.RaceHorse.IsNinki_02,
	dbo.RaceHorse.IsNinki_03,
	dbo.RaceHorse.IsNinki_04,
	dbo.RaceHorse.IsNinki_05,
	dbo.RaceHorse.IsNinki_06,
	dbo.RaceHorse.IsNinki_07,
	dbo.RaceHorse.IsNinki_08,
	dbo.RaceHorse.IsNinki_09,
	dbo.RaceHorse.IsNinki_10,
	dbo.RaceHorse.IsNinki_11,
	dbo.RaceHorse.IsNinki_12,
	dbo.RaceHorse.IsNinki_13,
	dbo.RaceHorse.IsNinki_14,
	dbo.RaceHorse.IsNinki_15,
	dbo.RaceHorse.IsNinki_16,
	dbo.RaceHorse.IsNinki_17,
	dbo.RaceHorse.IsNinki_18,
	dbo.RaceHorse.Prev1RaceResult,
	dbo.RaceHorse.Prev1TrackTypeCD,
	dbo.RaceHorse.IsPrev1TrackTypeCD_1,
	dbo.RaceHorse.IsPrev1TrackTypeCD_2,
	dbo.RaceHorse.IsPrev1TrackTypeCD_3,
	dbo.RaceHorse.Prev1JyokenCD5,
	dbo.RaceHorse.IsPrev1JyokenCD5_005,
	dbo.RaceHorse.IsPrev1JyokenCD5_010,
	dbo.RaceHorse.IsPrev1JyokenCD5_016,
	dbo.RaceHorse.IsPrev1JyokenCD5_701,
	dbo.RaceHorse.IsPrev1JyokenCD5_703,
	dbo.RaceHorse.IsPrev1JyokenCD5_999,
	dbo.RaceHorse.IsPrev1JyokenCD5_Up,
	dbo.RaceHorse.IsPrev1JyokenCD5_Down,
	dbo.RaceHorse.IsPrev1RaceResult_01,
	dbo.RaceHorse.IsPrev1RaceResult_02,
	dbo.RaceHorse.IsPrev1RaceResult_03,
	dbo.RaceHorse.IsPrev1RaceResult_04,
	dbo.RaceHorse.IsPrev1RaceResult_05,
	dbo.RaceHorse.IsPrev1RaceResult_06,
	dbo.RaceHorse.IsPrev1RaceResult_07,
	dbo.RaceHorse.IsPrev1RaceResult_08,
	dbo.RaceHorse.IsPrev1RaceResult_09,
	dbo.RaceHorse.IsPrev1RaceResult_10,
	dbo.RaceHorse.IsPrev1RaceResult_11,
	dbo.RaceHorse.IsPrev1RaceResult_12,
	dbo.RaceHorse.IsPrev1RaceResult_13,
	dbo.RaceHorse.IsPrev1RaceResult_14,
	dbo.RaceHorse.IsPrev1RaceResult_15,
	dbo.RaceHorse.IsPrev1RaceResult_16,
	dbo.RaceHorse.IsPrev1RaceResult_17,
	dbo.RaceHorse.IsPrev1RaceResult_18,
	dbo.RaceHorse.TS2,
	dbo.DataMining.DMStdTimeDev,
	dbo.Odds1ByWin.Odds1 AS OddsWin,
	dbo.Odds1ByWin.Odds1Log AS OddsWinLog,
	dbo.Odds1ByWin.ApprovalRateWin,
	dbo.Odds1ByWin.ApprovalRateWinLog,
	dbo.Odds1ByWin.Ninki,
	dbo.Odds1ByPlace.Odds1 AS OddsPlace1,
	dbo.Odds1ByPlace.Odds2 AS OddsPlace2,
	dbo.Odds1ByPlace.ApprovalRatePlace1,
	dbo.Odds1ByPlace.ApprovalRatePlace1Log,
	dbo.Odds1ByPlace.ApprovalRatePlace2,
	dbo.Odds1ByPlace.ApprovalRatePlace2Log,
	dbo.JockyUniform.FukusyokuImage,
	dbo.MasterIjyo.Ijyo,
	dbo.MasterIjyo.IjyoRyakusyo2,
	dbo.MasterHinsyu.HinsyuRyakusyo,
	dbo.MasterKyakusitu.Description,
	dbo.MasterKeiro.Keiro,
	dbo.MasterMinarai.MinaraiGenryo,
	dbo.MasterSex.Sex,
	dbo.MasterUmaKigo.UmaKigo
	FROM  dbo.RaceHorse
		 INNER JOIN dbo.RaceHorseBet
		 ON dbo.RaceHorseBet.RaceID = dbo.RaceHorse.RaceID
		    AND dbo.RaceHorseBet.KettoNum = dbo.RaceHorse.KettoNum
		 INNER JOIN dbo.MasterIjyo
		 ON dbo.MasterIjyo.IJyoCD = dbo.RaceHorse.IJyoCD
		 INNER JOIN dbo.MasterSex
		 ON dbo.MasterSex.SexCD = dbo.RaceHorse.SexCD
		 INNER JOIN dbo.MasterMinarai
		 ON dbo.MasterMinarai.MinaraiCD = dbo.RaceHorse.MinaraiCD
		 INNER JOIN dbo.MasterUmaKigo
		 ON dbo.MasterUmaKigo.UmaKigoCD = dbo.RaceHorse.UmaKigoCD
		 INNER JOIN dbo.MasterHinsyu
		 ON dbo.MasterHinsyu.HinsyuCD = dbo.RaceHorse.HinsyuCD
		 INNER JOIN dbo.MasterKyakusitu
		 ON dbo.MasterKyakusitu.Kyakusitu = dbo.RaceHorse.Kyakusitu
		 INNER JOIN dbo.MasterKeiro
		 ON dbo.MasterKeiro.KeiroCD = dbo.RaceHorse.KeiroCD
		 INNER JOIN dbo.DataMining
		 ON dbo.DataMining.RaceID = dbo.RaceHorse.RaceID
		    AND dbo.DataMining.Umaban = dbo.RaceHorse.Umaban
		 INNER JOIN dbo.Odds1ByWin
		 ON dbo.Odds1ByWin.RaceID = dbo.RaceHorse.RaceID
		    AND dbo.Odds1ByWin.Kumi1 = dbo.RaceHorse.Umaban
		    AND dbo.Odds1ByWin.BetTypeCD = 1
		    AND dbo.Odds1ByWin.Kumi2 = 0
		    AND dbo.Odds1ByWin.Kumi3 = 0
		 INNER JOIN dbo.Odds1ByPlace
		 ON dbo.Odds1ByPlace.RaceID = dbo.RaceHorse.RaceID
		    AND dbo.Odds1ByPlace.Kumi1 = dbo.RaceHorse.Umaban
		    AND dbo.Odds1ByPlace.BetTypeCD = 2
		    AND dbo.Odds1ByPlace.Kumi2 = 0
		    AND dbo.Odds1ByPlace.Kumi3 = 0
		 INNER JOIN dbo.JockyUniform
		 ON dbo.JockyUniform.Fukusyoku = dbo.RaceHorse.Fukusyoku
	WHERE dbo.RaceHorse.RaceDate >= CONVERT(DATETIME,'2014-01-01 00:00:00',102)
		 AND dbo.RaceHorse.JyoCD BETWEEN '01' AND '10'
		 AND (dbo.RaceHorse.DataKubun = '1'
			 OR dbo.RaceHorse.DataKubun = '2'
			 OR dbo.RaceHorse.DataKubun = '3'
			 OR dbo.RaceHorse.DataKubun = '4'
			 OR dbo.RaceHorse.DataKubun = '5'
			 OR dbo.RaceHorse.DataKubun = '6'
			 OR dbo.RaceHorse.DataKubun = '7');


GO
/****** Object:  View [dbo].[ViewStatsType1RaceAll]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewStatsType1RaceAll]
AS
	SELECT    ISNULL(ROW_NUMBER() OVER(ORDER BY SUM(BetCountByRace) ASC),0) AS ID,
			SUM(BetCountByRace) AS BetCountByRace,
			SUM(HitCountByRace) AS HitCountByRace,
			SUM(CONVERT( FLOAT,HitCountByRace,2)) / NULLIF(SUM(CONVERT(FLOAT,BetCountByRace,2)),0) AS HitCountRateByRace,
			SUM(BetMoneyByRace) AS BetMoneyByRace,
			SUM(HitMoneyByRace) AS HitMoneyByRace,
			SUM(ReturnMoneyByRace) AS ReturnMoneyByRace,
			SUM(CONVERT( FLOAT,HitMoneyByRace,2)) / NULLIF(SUM(CONVERT(FLOAT,BetMoneyByRace,2)),0) AS ReturnMoneyRateByRace
	FROM
	(
	    SELECT RaceDate,
			 JyoCD,
			 Kaiji,
			 Nichiji,
			 RaceNum,
			 CASE
				WHEN SUM(BetCount) > 0
				THEN 1
				ELSE 0
			 END AS BetCountByRace,
			 CASE
				WHEN SUM(HitCount) > 0
				THEN 1
				ELSE 0
			 END AS HitCountByRace,
			 SUM(BetMoney) AS BetMoneyByRace,
			 SUM(HitMoney) AS HitMoneyByRace,
			 SUM(ReturnMoney) AS ReturnMoneyByRace
	    FROM   dbo.MgmtBet
	    WHERE  RaceDate >= CONVERT( DATETIME,'2014-01-01 00:00:00',102)
	    GROUP BY RaceDate,
			   JyoCD,
			   Kaiji,
			   Nichiji,
			   RaceNum
	) AS t1;


GO
/****** Object:  View [dbo].[ViewStatsType1RaceDate]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewStatsType1RaceDate]
AS
	SELECT    ISNULL(ROW_NUMBER() OVER(ORDER BY SUM(BetCountByRace) ASC),0) AS ID,
			t1.RaceDate,
			SUM(t1.BetCountByRace) AS BetCountByRace,
			SUM(t1.HitCountByRace) AS HitCountByRace,
			SUM(CONVERT( FLOAT,t1.HitCountByRace,2)) / NULLIF(SUM(CONVERT(FLOAT,t1.BetCountByRace,2)),0) AS HitCountRateByRace,
			SUM(t1.BetMoneyByRace) AS BetMoneyByRace,
			SUM(t1.HitMoneyByRace) AS HitMoneyByRace,
			SUM(t1.ReturnMoneyByRace) AS ReturnMoneyByRace,
			SUM(CONVERT( FLOAT,t1.HitMoneyByRace,2)) / NULLIF(SUM(CONVERT(FLOAT,t1.BetMoneyByRace,2)),0) AS ReturnMoneyRateByRace
	FROM
	(
	    SELECT RaceDate,
			 JyoCD,
			 Kaiji,
			 Nichiji,
			 RaceNum,
			 CASE
				WHEN SUM(BetCount) > 0
				THEN 1
				ELSE 0
			 END AS BetCountByRace,
			 CASE
				WHEN SUM(HitCount) > 0
				THEN 1
				ELSE 0
			 END AS HitCountByRace,
			 SUM(BetMoney) AS BetMoneyByRace,
			 SUM(HitMoney) AS HitMoneyByRace,
			 SUM(ReturnMoney) AS ReturnMoneyByRace
	    FROM   dbo.MgmtBet
	    WHERE  RaceDate >= CONVERT( DATETIME,'2014-01-01 00:00:00',102)
	    GROUP BY RaceDate,
			   JyoCD,
			   Kaiji,
			   Nichiji,
			   RaceNum
	) AS t1
	GROUP BY RaceDate;


GO
/****** Object:  View [dbo].[ViewStatsType1RaceNum]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewStatsType1RaceNum]
AS
	SELECT    ISNULL(ROW_NUMBER() OVER(ORDER BY SUM(BetCountByRace) ASC),0) AS ID,
			t1.RaceDate,
			t1.JyoCD,
			t1.Kaiji,
			t1.Nichiji,
			t1.RaceNum,
			SUM(t1.BetCountByRace) AS BetCountByRace,
			SUM(t1.HitCountByRace) AS HitCountByRace,
			SUM(CONVERT( FLOAT,t1.HitCountByRace,2)) / NULLIF(SUM(CONVERT(FLOAT,t1.BetCountByRace,2)),0) AS HitCountRateByRace,
			SUM(t1.BetMoneyByRace) AS BetMoneyByRace,
			SUM(t1.HitMoneyByRace) AS HitMoneyByRace,
			SUM(t1.ReturnMoneyByRace) AS ReturnMoneyByRace,
			SUM(CONVERT( FLOAT,t1.HitMoneyByRace,2)) / NULLIF(SUM(CONVERT(FLOAT,t1.BetMoneyByRace,2)),0) AS ReturnMoneyRateByRace
	FROM
	(
	    SELECT RaceDate,
			 JyoCD,
			 Kaiji,
			 Nichiji,
			 RaceNum,
			 CASE
				WHEN SUM(BetCount) > 0
				THEN 1
				ELSE 0
			 END AS BetCountByRace,
			 CASE
				WHEN SUM(HitCount) > 0
				THEN 1
				ELSE 0
			 END AS HitCountByRace,
			 SUM(BetMoney) AS BetMoneyByRace,
			 SUM(HitMoney) AS HitMoneyByRace,
			 SUM(ReturnMoney) AS ReturnMoneyByRace
	    FROM   dbo.MgmtBet
	    WHERE  RaceDate >= CONVERT( DATETIME,'2014-01-01 00:00:00',102)
	    GROUP BY RaceDate,
			   JyoCD,
			   Kaiji,
			   Nichiji,
			   RaceNum
	) AS t1
	GROUP BY RaceDate,
		    JyoCD,
		    Kaiji,
		    Nichiji,
		    RaceNum;


GO
/****** Object:  View [dbo].[ViewStatsType2RaceAll]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewStatsType2RaceAll]
AS
	SELECT        t2.BetTypeCD,
			    dbo.MasterBetType.BetTypeContent,
			    t2.BetCountByRace,
			    t2.HitCountByRace,
			    t2.HitCountRateByRace,
			    t2.BetMoneyByRace,
			    t2.HitMoneyByRace,
			    t2.ReturnMoneyByRace,
			    t2.ReturnMoneyRateByRace
	FROM
	(
	    SELECT    t1.BetTypeCD,
			    SUM(t1.BetCountByRace) AS BetCountByRace,
			    SUM(t1.HitCountByRace) AS HitCountByRace,
			    SUM(CONVERT( FLOAT,t1.HitCountByRace,2)) / NULLIF(SUM(CONVERT(FLOAT,t1.BetCountByRace,2)),0) AS HitCountRateByRace,
			    SUM(t1.BetMoneyByRace) AS BetMoneyByRace,
			    SUM(t1.HitMoneyByRace) AS HitMoneyByRace,
			    SUM(t1.ReturnMoneyByRace) AS ReturnMoneyByRace,
			    SUM(CONVERT( FLOAT,t1.HitMoneyByRace,2)) / NULLIF(SUM(CONVERT(FLOAT,t1.BetMoneyByRace,2)),0) AS ReturnMoneyRateByRace
	    FROM
	    (
		   SELECT RaceDate,
				JyoCD,
				Kaiji,
				Nichiji,
				RaceNum,
				BetTypeCD,
				CASE
				    WHEN SUM(BetCount) > 0
				    THEN 1
				    ELSE 0
				END AS BetCountByRace,
				CASE
				    WHEN SUM(HitCount) > 0
				    THEN 1
				    ELSE 0
				END AS HitCountByRace,
				SUM(BetMoney) AS BetMoneyByRace,
				SUM(HitMoney) AS HitMoneyByRace,
				SUM(ReturnMoney) AS ReturnMoneyByRace
		   FROM   MgmtBet
		   WHERE  MgmtBet.RaceDate >= CONVERT( DATETIME,'2014-01-01 00:00:00',102)
		   GROUP BY RaceDate,
				  JyoCD,
				  Kaiji,
				  Nichiji,
				  RaceNum,
				  BetTypeCD
	    ) AS t1
	    GROUP BY t1.BetTypeCD
	) t2
	INNER JOIN dbo.MasterBetType
	ON t2.BetTypeCD = dbo.MasterBetType.BetTypeCD;


GO
/****** Object:  View [dbo].[ViewStatsType2RaceDate]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewStatsType2RaceDate]
AS
	SELECT        t2.RaceDate,
			    t2.BetTypeCD,
			    dbo.MasterBetType.BetTypeContent,
			    t2.BetCountByRace,
			    t2.HitCountByRace,
			    t2.HitCountRateByRace,
			    t2.BetMoneyByRace,
			    t2.HitMoneyByRace,
			    t2.ReturnMoneyByRace,
			    t2.ReturnMoneyRateByRace
	FROM
	(
	    SELECT    t1.RaceDate,
			    t1.BetTypeCD,
			    SUM(t1.BetCountByRace) AS BetCountByRace,
			    SUM(t1.HitCountByRace) AS HitCountByRace,
			    SUM(CONVERT( FLOAT,t1.HitCountByRace,2)) / NULLIF(SUM(CONVERT(FLOAT,t1.BetCountByRace,2)),0) AS HitCountRateByRace,
			    SUM(t1.BetMoneyByRace) AS BetMoneyByRace,
			    SUM(t1.HitMoneyByRace) AS HitMoneyByRace,
			    SUM(t1.ReturnMoneyByRace) AS ReturnMoneyByRace,
			    SUM(CONVERT( FLOAT,t1.HitMoneyByRace,2)) / NULLIF(SUM(CONVERT(FLOAT,t1.BetMoneyByRace,2)),0) AS ReturnMoneyRateByRace
	    FROM
	    (
		   SELECT RaceDate,
				JyoCD,
				Kaiji,
				Nichiji,
				RaceNum,
				BetTypeCD,
				CASE
				    WHEN SUM(BetCount) > 0
				    THEN 1
				    ELSE 0
				END AS BetCountByRace,
				CASE
				    WHEN SUM(HitCount) > 0
				    THEN 1
				    ELSE 0
				END AS HitCountByRace,
				SUM(BetMoney) AS BetMoneyByRace,
				SUM(HitMoney) AS HitMoneyByRace,
				SUM(ReturnMoney) AS ReturnMoneyByRace
		   FROM   dbo.MgmtBet
		   WHERE  dbo.MgmtBet.RaceDate >= CONVERT( DATETIME,'2014-01-01 00:00:00',102)
		   GROUP BY RaceDate,
				  JyoCD,
				  Kaiji,
				  Nichiji,
				  RaceNum,
				  BetTypeCD
	    ) AS t1
	    GROUP BY t1.RaceDate,
			   t1.BetTypeCD
	) AS t2
	INNER JOIN dbo.MasterBetType
	ON t2.BetTypeCD = dbo.MasterBetType.BetTypeCD;


GO
/****** Object:  View [dbo].[ViewStatsType2RaceNum]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewStatsType2RaceNum]
AS
	SELECT        t2.RaceDate,
			    t2.JyoCD,
			    t2.Kaiji,
			    t2.Nichiji,
			    t2.RaceNum,
			    t2.BetTypeCD,
			    dbo.MasterBetType.BetTypeContent,
			    t2.BetCountByRace,
			    t2.HitCountByRace,
			    t2.HitCountRateByRace,
			    t2.BetMoneyByRace,
			    t2.HitMoneyByRace,
			    t2.ReturnMoneyByRace,
			    t2.ReturnMoneyRateByRace
	FROM
	(
	    SELECT    t1.RaceDate,
			    t1.JyoCD,
			    t1.Kaiji,
			    t1.Nichiji,
			    t1.RaceNum,
			    t1.BetTypeCD,
			    SUM(t1.BetCountByRace) AS BetCountByRace,
			    SUM(t1.HitCountByRace) AS HitCountByRace,
			    SUM(CONVERT( FLOAT,t1.HitCountByRace,2)) / NULLIF(SUM(CONVERT(FLOAT,t1.BetCountByRace,2)),0) AS HitCountRateByRace,
			    SUM(t1.BetMoneyByRace) AS BetMoneyByRace,
			    SUM(t1.HitMoneyByRace) AS HitMoneyByRace,
			    SUM(t1.ReturnMoneyByRace) AS ReturnMoneyByRace,
			    SUM(CONVERT( FLOAT,t1.HitMoneyByRace,2)) / NULLIF(SUM(CONVERT(FLOAT,t1.BetMoneyByRace,2)),0) AS ReturnMoneyRateByRace
	    FROM
	    (
		   SELECT RaceDate,
				JyoCD,
				Kaiji,
				Nichiji,
				RaceNum,
				BetTypeCD,
				CASE
				    WHEN SUM(BetCount) > 0
				    THEN 1
				    ELSE 0
				END AS BetCountByRace,
				CASE
				    WHEN SUM(HitCount) > 0
				    THEN 1
				    ELSE 0
				END AS HitCountByRace,
				SUM(BetMoney) AS BetMoneyByRace,
				SUM(HitMoney) AS HitMoneyByRace,
				SUM(ReturnMoney) AS ReturnMoneyByRace
		   FROM   dbo.MgmtBet
		   WHERE  dbo.MgmtBet.RaceDate >= CONVERT( DATETIME,'2014-01-01 00:00:00',102)
		   GROUP BY RaceDate,
				  JyoCD,
				  Kaiji,
				  Nichiji,
				  RaceNum,
				  BetTypeCD
	    ) AS t1
	    GROUP BY t1.RaceDate,
			   t1.JyoCD,
			   t1.Kaiji,
			   t1.Nichiji,
			   t1.RaceNum,
			   t1.BetTypeCD
	) AS t2
	INNER JOIN dbo.MasterBetType
	ON t2.BetTypeCD = dbo.MasterBetType.BetTypeCD;


GO
/****** Object:  View [dbo].[ViewStatsType3RaceAll]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewStatsType3RaceAll]
AS
	SELECT        t2.TrackTypeCD,
			    dbo.MasterTrackType.TrackType,
			    t2.BetTypeCD,
			    dbo.MasterBetType.BetTypeContent,
			    t2.BetCountByRace,
			    t2.HitCountByRace,
			    t2.HitCountRateByRace,
			    t2.BetMoneyByRace,
			    t2.HitMoneyByRace,
			    t2.ReturnMoneyByRace,
			    t2.ReturnMoneyRateByRace
	FROM
	(
	    SELECT    t1.TrackTypeCD,
			    t1.BetTypeCD,
			    SUM(t1.BetCountByRace) AS BetCountByRace,
			    SUM(t1.HitCountByRace) AS HitCountByRace,
			    SUM(CONVERT( FLOAT,t1.HitCountByRace,2)) / NULLIF(SUM(CONVERT(FLOAT,t1.BetCountByRace,2)),0) AS HitCountRateByRace,
			    SUM(t1.BetMoneyByRace) AS BetMoneyByRace,
			    SUM(t1.HitMoneyByRace) AS HitMoneyByRace,
			    SUM(t1.ReturnMoneyByRace) AS ReturnMoneyByRace,
			    SUM(CONVERT( FLOAT,t1.HitMoneyByRace,2)) / NULLIF(SUM(CONVERT(FLOAT,t1.BetMoneyByRace,2)),0) AS ReturnMoneyRateByRace
	    FROM
	    (
		   SELECT dbo.MgmtBet.RaceDate,
				dbo.MgmtBet.JyoCD,
				dbo.MgmtBet.Kaiji,
				dbo.MgmtBet.Nichiji,
				dbo.MgmtBet.RaceNum,
				dbo.MgmtBet.BetTypeCD,
				dbo.Race.TrackTypeCD,
				CASE
				    WHEN SUM(MgmtBet.BetCount) > 0
				    THEN 1
				    ELSE 0
				END AS BetCountByRace,
				CASE
				    WHEN SUM(MgmtBet.HitCount) > 0
				    THEN 1
				    ELSE 0
				END AS HitCountByRace,
				SUM(dbo.MgmtBet.BetMoney) AS BetMoneyByRace,
				SUM(dbo.MgmtBet.HitMoney) AS HitMoneyByRace,
				SUM(dbo.MgmtBet.ReturnMoney) AS ReturnMoneyByRace
		   FROM   dbo.MgmtBet
				INNER JOIN dbo.Race
				ON dbo.MgmtBet.RaceDate = dbo.Race.RaceDate
				   AND dbo.MgmtBet.JyoCD = dbo.Race.JyoCD
				   AND dbo.MgmtBet.Kaiji = dbo.Race.Kaiji
				   AND dbo.MgmtBet.Nichiji = dbo.Race.Nichiji
				   AND dbo.MgmtBet.RaceNum = dbo.Race.RaceNum
		   WHERE  MgmtBet.RaceDate >= CONVERT( DATETIME,'2014-01-01 00:00:00',102)
		   GROUP BY dbo.MgmtBet.RaceDate,
				  dbo.MgmtBet.JyoCD,
				  dbo.MgmtBet.Kaiji,
				  dbo.MgmtBet.Nichiji,
				  dbo.MgmtBet.RaceNum,
				  dbo.MgmtBet.BetTypeCD,
				  dbo.Race.TrackTypeCD
	    ) AS t1
	    GROUP BY t1.TrackTypeCD,
			   t1.BetTypeCD
	) AS t2
	INNER JOIN dbo.MasterBetType
	ON t2.BetTypeCD = dbo.MasterBetType.BetTypeCD
	INNER JOIN dbo.MasterTrackType
	ON t2.TrackTypeCD = dbo.MasterTrackType.TrackTypeCD;


GO
/****** Object:  View [dbo].[ViewStatsType4RaceAll]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewStatsType4RaceAll]
AS
	SELECT        t2.JyokenCD5,
			    t2.BetTypeCD,
			    dbo.MasterBetType.BetTypeContent,
			    t2.BetCountByRace,
			    t2.HitCountByRace,
			    t2.HitCountRateByRace,
			    t2.BetMoneyByRace,
			    t2.HitMoneyByRace,
			    t2.ReturnMoneyByRace,
			    t2.ReturnMoneyRateByRace
	FROM
	(
	    SELECT    t1.JyokenCD5,
			    t1.BetTypeCD,
			    SUM(t1.BetCountByRace) AS BetCountByRace,
			    SUM(t1.HitCountByRace) AS HitCountByRace,
			    SUM(CONVERT( FLOAT,t1.HitCountByRace,2)) / NULLIF(SUM(CONVERT(FLOAT,t1.BetCountByRace,2)),0) AS HitCountRateByRace,
			    SUM(t1.BetMoneyByRace) AS BetMoneyByRace,
			    SUM(t1.HitMoneyByRace) AS HitMoneyByRace,
			    SUM(t1.ReturnMoneyByRace) AS ReturnMoneyByRace,
			    SUM(CONVERT( FLOAT,t1.HitMoneyByRace,2)) / NULLIF(SUM(CONVERT(FLOAT,t1.BetMoneyByRace,2)),0) AS ReturnMoneyRateByRace
	    FROM
	    (
		   SELECT dbo.MgmtBet.RaceDate,
				dbo.MgmtBet.JyoCD,
				dbo.MgmtBet.Kaiji,
				dbo.MgmtBet.Nichiji,
				dbo.MgmtBet.RaceNum,
				dbo.Race.JyokenCD5,
				dbo.MgmtBet.BetTypeCD,
				CASE
				    WHEN SUM(MgmtBet.BetCount) > 0
				    THEN 1
				    ELSE 0
				END AS BetCountByRace,
				CASE
				    WHEN SUM(MgmtBet.HitCount) > 0
				    THEN 1
				    ELSE 0
				END AS HitCountByRace,
				SUM(dbo.MgmtBet.BetMoney) AS BetMoneyByRace,
				SUM(dbo.MgmtBet.HitMoney) AS HitMoneyByRace,
				SUM(dbo.MgmtBet.ReturnMoney) AS ReturnMoneyByRace
		   FROM   dbo.MgmtBet
				INNER JOIN dbo.Race
				ON dbo.MgmtBet.RaceDate = dbo.Race.RaceDate
				   AND dbo.MgmtBet.JyoCD = dbo.Race.JyoCD
				   AND dbo.MgmtBet.Kaiji = dbo.Race.Kaiji
				   AND dbo.MgmtBet.Nichiji = dbo.Race.Nichiji
				   AND dbo.MgmtBet.RaceNum = dbo.Race.RaceNum
		   WHERE  MgmtBet.RaceDate >= CONVERT( DATETIME,'2014-01-01 00:00:00',102)
		   GROUP BY dbo.MgmtBet.RaceDate,
				  dbo.MgmtBet.JyoCD,
				  dbo.MgmtBet.Kaiji,
				  dbo.MgmtBet.Nichiji,
				  dbo.MgmtBet.RaceNum,
				  dbo.Race.JyokenCD5,
				  dbo.MgmtBet.BetTypeCD
	    ) AS t1
	    GROUP BY t1.JyokenCD5,
			   t1.BetTypeCD
	) AS t2
	INNER JOIN dbo.MasterBetType
	ON t2.BetTypeCD = dbo.MasterBetType.BetTypeCD;


GO
/****** Object:  View [dbo].[ViewStatsType5RaceAll]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewStatsType5RaceAll]
AS
	SELECT        t2.JyoCD,
			    MasterJyo.JyoCDName,
			    t2.BetTypeCD,
			    dbo.MasterBetType.BetTypeContent,
			    t2.BetCountByRace,
			    t2.HitCountByRace,
			    t2.HitCountRateByRace,
			    t2.BetMoneyByRace,
			    t2.HitMoneyByRace,
			    t2.ReturnMoneyByRace,
			    t2.ReturnMoneyRateByRace
	FROM
	(
	    SELECT    t1.JyoCD,
			    t1.BetTypeCD,
			    SUM(t1.BetCountByRace) AS BetCountByRace,
			    SUM(t1.HitCountByRace) AS HitCountByRace,
			    SUM(CONVERT( FLOAT,t1.HitCountByRace,2)) / NULLIF(SUM(CONVERT(FLOAT,t1.BetCountByRace,2)),0) AS HitCountRateByRace,
			    SUM(t1.BetMoneyByRace) AS BetMoneyByRace,
			    SUM(t1.HitMoneyByRace) AS HitMoneyByRace,
			    SUM(t1.ReturnMoneyByRace) AS ReturnMoneyByRace,
			    SUM(CONVERT( FLOAT,t1.HitMoneyByRace,2)) / NULLIF(SUM(CONVERT(FLOAT,t1.BetMoneyByRace,2)),0) AS ReturnMoneyRateByRace
	    FROM
	    (
		   SELECT dbo.MgmtBet.RaceDate,
				dbo.MgmtBet.JyoCD,
				dbo.MgmtBet.Kaiji,
				dbo.MgmtBet.Nichiji,
				dbo.MgmtBet.RaceNum,
				dbo.MgmtBet.BetTypeCD,
				CASE
				    WHEN SUM(MgmtBet.BetCount) > 0
				    THEN 1
				    ELSE 0
				END AS BetCountByRace,
				CASE
				    WHEN SUM(MgmtBet.HitCount) > 0
				    THEN 1
				    ELSE 0
				END AS HitCountByRace,
				SUM(dbo.MgmtBet.BetMoney) AS BetMoneyByRace,
				SUM(dbo.MgmtBet.HitMoney) AS HitMoneyByRace,
				SUM(dbo.MgmtBet.ReturnMoney) AS ReturnMoneyByRace
		   FROM   dbo.MgmtBet
				INNER JOIN dbo.Race
				ON dbo.MgmtBet.RaceDate = dbo.Race.RaceDate
				   AND dbo.MgmtBet.JyoCD = dbo.Race.JyoCD
				   AND dbo.MgmtBet.Kaiji = dbo.Race.Kaiji
				   AND dbo.MgmtBet.Nichiji = dbo.Race.Nichiji
				   AND dbo.MgmtBet.RaceNum = dbo.Race.RaceNum
		   WHERE  MgmtBet.RaceDate >= CONVERT( DATETIME,'2014-01-01 00:00:00',102)
		   GROUP BY dbo.MgmtBet.RaceDate,
				  dbo.MgmtBet.JyoCD,
				  dbo.MgmtBet.Kaiji,
				  dbo.MgmtBet.Nichiji,
				  dbo.MgmtBet.RaceNum,
				  dbo.MgmtBet.BetTypeCD
	    ) AS t1
	    GROUP BY t1.JyoCD,
			   t1.BetTypeCD
	) AS t2
	INNER JOIN dbo.MasterJyo
	ON dbo.MasterJyo.JyoCD = t2.JyoCD
	INNER JOIN dbo.MasterBetType
	ON dbo.MasterBetType.BetTypeCD = t2.BetTypeCD;


GO
/****** Object:  View [dbo].[ViewZBayesianByJyokenBlinker]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[ViewZBayesianByJyokenBlinker]
AS
	SELECT
	Race.JyokenCD5,
	RaceHorse.IsBlinker,
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
	AVG(RaceHorseBet.PayoffWin) AS ExpectedValueWin,
	AVG(RaceHorseBet.PayOffPlace) AS ExpectedValuePlace,
	GETDATE() AS TS
	FROM   RaceHorse
		INNER JOIN Race
	ON Race.RaceDate = RaceHorse.RaceDate
		AND Race.JyoCD = RaceHorse.JyoCD
		AND Race.Kaiji = RaceHorse.Kaiji
		AND Race.Nichiji = RaceHorse.Nichiji
		AND Race.RaceNum = RaceHorse.RaceNum
	INNER JOIN RaceHorseBet ON RaceHorseBet.RaceDate = RaceHorse.RaceDate
		AND RaceHorseBet.JyoCD = RaceHorse.JyoCD
		AND RaceHorseBet.Kaiji = RaceHorse.Kaiji
		AND RaceHorseBet.Nichiji = RaceHorse.Nichiji
		AND RaceHorseBet.RaceNum = RaceHorse.RaceNum
		AND RaceHorseBet.KettoNum = RaceHorse.KettoNum
	WHERE Race.IsNormal = 1
		AND Race.RaceDate <= '2013-12-31'
GROUP BY
	Race.JyokenCD5,
	RaceHorse.IsBlinker




GO
/****** Object:  View [dbo].[ViewZBayesianByJyokenGradeJyuryoFutan]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[ViewZBayesianByJyokenGradeJyuryoFutan]
AS
	SELECT
	Race.JyokenCD5,
	Race.JyuryoCD,
	Race.GradeCD,
	RaceHorse.Futan,
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
	AVG(RaceHorseBet.PayoffWin) AS ExpectedValueWin,
	AVG(RaceHorseBet.PayOffPlace) AS ExpectedValuePlace,
	AVG(RaceHorseBet.PayoffWin) / 100 AS ExpectedValueRateWin,
	AVG(RaceHorseBet.PayOffPlace) / 100 AS ExpectedValueRatePlace,
	GETDATE() AS TS
	FROM   RaceHorse
		INNER JOIN Race
	ON Race.RaceDate = RaceHorse.RaceDate
		AND Race.JyoCD = RaceHorse.JyoCD
		AND Race.Kaiji = RaceHorse.Kaiji
		AND Race.Nichiji = RaceHorse.Nichiji
		AND Race.RaceNum = RaceHorse.RaceNum
	INNER JOIN RaceHorseBet ON RaceHorseBet.RaceDate = RaceHorse.RaceDate
		AND RaceHorseBet.JyoCD = RaceHorse.JyoCD
		AND RaceHorseBet.Kaiji = RaceHorse.Kaiji
		AND RaceHorseBet.Nichiji = RaceHorse.Nichiji
		AND RaceHorseBet.RaceNum = RaceHorse.RaceNum
		AND RaceHorseBet.KettoNum = RaceHorse.KettoNum
	WHERE Race.IsNormal = 1
		AND Race.RaceDate <= '2013-12-31'
GROUP BY
	Race.JyokenCD5,
	Race.GradeCD,
	Race.JyuryoCD,
	RaceHorse.Futan




GO
/****** Object:  View [dbo].[ViewZBayesianByJyokenGradeMinarai]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewZBayesianByJyokenGradeMinarai]
AS
	SELECT
	Race.JyokenCD5,
	Race.GradeCD,
	RaceHorse.MinaraiCD,
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
	AVG(RaceHorseBet.PayoffWin) AS ExpectedValueWin,
	AVG(RaceHorseBet.PayOffPlace) AS ExpectedValuePlace,
	GETDATE() AS TS
	FROM   RaceHorse
		INNER JOIN Race
	ON Race.RaceDate = RaceHorse.RaceDate
		AND Race.JyoCD = RaceHorse.JyoCD
		AND Race.Kaiji = RaceHorse.Kaiji
		AND Race.Nichiji = RaceHorse.Nichiji
		AND Race.RaceNum = RaceHorse.RaceNum
	INNER JOIN RaceHorseBet ON RaceHorseBet.RaceDate = RaceHorse.RaceDate
		AND RaceHorseBet.JyoCD = RaceHorse.JyoCD
		AND RaceHorseBet.Kaiji = RaceHorse.Kaiji
		AND RaceHorseBet.Nichiji = RaceHorse.Nichiji
		AND RaceHorseBet.RaceNum = RaceHorse.RaceNum
		AND RaceHorseBet.KettoNum = RaceHorse.KettoNum
	WHERE Race.IsNormal = 1
		AND Race.RaceDate <= '2013-12-31'
GROUP BY
	Race.JyokenCD5,
	Race.GradeCD,
	RaceHorse.MinaraiCD



GO
/****** Object:  View [dbo].[ViewZBayesianByJyokenGradeMiracle]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewZBayesianByJyokenGradeMiracle]
AS
			 SELECT
				Race.JyokenCD5,
				Race.GradeCD,
				HorseMiracle.IsMiracle,
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
			 INNER JOIN HorseMiracle
				ON HorseMiracle.KettoNum = RaceHorse.KettoNum
			 WHERE Race.IsNormal = 1
				AND Race.RaceDate <= '2013-12-31'
				AND RaceHorse.IsNormal = 1
			GROUP BY
				Race.JyokenCD5,
				Race.GradeCD,
				HorseMiracle.IsMiracle



GO
/****** Object:  View [dbo].[ViewZBayesianByJyokenGradeSex]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewZBayesianByJyokenGradeSex]
AS
	SELECT
	Race.JyokenCD5,
	Race.GradeCD,
	RaceHorse.SexCD,
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
	AVG(RaceHorseBet.PayoffWin) AS ExpectedValueWin,
	AVG(RaceHorseBet.PayOffPlace) AS ExpectedValuePlace,
	GETDATE() AS TS
	FROM   RaceHorse
		INNER JOIN Race
	ON Race.RaceDate = RaceHorse.RaceDate
		AND Race.JyoCD = RaceHorse.JyoCD
		AND Race.Kaiji = RaceHorse.Kaiji
		AND Race.Nichiji = RaceHorse.Nichiji
		AND Race.RaceNum = RaceHorse.RaceNum
	INNER JOIN RaceHorseBet ON RaceHorseBet.RaceDate = RaceHorse.RaceDate
		AND RaceHorseBet.JyoCD = RaceHorse.JyoCD
		AND RaceHorseBet.Kaiji = RaceHorse.Kaiji
		AND RaceHorseBet.Nichiji = RaceHorse.Nichiji
		AND RaceHorseBet.RaceNum = RaceHorse.RaceNum
		AND RaceHorseBet.KettoNum = RaceHorse.KettoNum
	WHERE Race.IsNormal = 1
		AND Race.RaceDate <= '2013-12-31'
GROUP BY
	Race.JyokenCD5,
	Race.GradeCD,
	RaceHorse.SexCD



GO
/****** Object:  View [dbo].[ViewZBayesianByJyokenJyuryoFutan]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewZBayesianByJyokenJyuryoFutan]
AS
	SELECT
	Race.JyokenCD5,
	Race.JyuryoCD,
	RaceHorse.Futan,
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
	AVG(RaceHorseBet.PayoffWin) AS ExpectedValueWin,
	AVG(RaceHorseBet.PayOffPlace) AS ExpectedValuePlace,
	AVG(RaceHorseBet.PayoffWin) / 100 AS ExpectedValueRateWin,
	AVG(RaceHorseBet.PayOffPlace) / 100 AS ExpectedValueRatePlace,
	GETDATE() AS TS
	FROM   RaceHorse
		INNER JOIN Race
	ON Race.RaceDate = RaceHorse.RaceDate
		AND Race.JyoCD = RaceHorse.JyoCD
		AND Race.Kaiji = RaceHorse.Kaiji
		AND Race.Nichiji = RaceHorse.Nichiji
		AND Race.RaceNum = RaceHorse.RaceNum
	INNER JOIN RaceHorseBet ON RaceHorseBet.RaceDate = RaceHorse.RaceDate
		AND RaceHorseBet.JyoCD = RaceHorse.JyoCD
		AND RaceHorseBet.Kaiji = RaceHorse.Kaiji
		AND RaceHorseBet.Nichiji = RaceHorse.Nichiji
		AND RaceHorseBet.RaceNum = RaceHorse.RaceNum
		AND RaceHorseBet.KettoNum = RaceHorse.KettoNum
	WHERE Race.IsNormal = 1
		AND Race.RaceDate <= '2013-12-31'
GROUP BY
	Race.JyokenCD5,
	Race.JyuryoCD,
	RaceHorse.Futan



GO
/****** Object:  View [dbo].[ViewZBayesianByJyokenMinaraiHitRate]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewZBayesianByJyokenMinaraiHitRate]
AS
	SELECT
	Race.JyokenCD5,
	RaceHorse.MinaraiCD,
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
	AVG(RaceHorseBet.PayoffWin) AS ExpectedValueWin,
	AVG(RaceHorseBet.PayOffPlace) AS ExpectedValuePlace,
	GETDATE() AS TS
	FROM   RaceHorse
		INNER JOIN Race
	ON Race.RaceDate = RaceHorse.RaceDate
		AND Race.JyoCD = RaceHorse.JyoCD
		AND Race.Kaiji = RaceHorse.Kaiji
		AND Race.Nichiji = RaceHorse.Nichiji
		AND Race.RaceNum = RaceHorse.RaceNum
	INNER JOIN RaceHorseBet ON RaceHorseBet.RaceDate = RaceHorse.RaceDate
		AND RaceHorseBet.JyoCD = RaceHorse.JyoCD
		AND RaceHorseBet.Kaiji = RaceHorse.Kaiji
		AND RaceHorseBet.Nichiji = RaceHorse.Nichiji
		AND RaceHorseBet.RaceNum = RaceHorse.RaceNum
		AND RaceHorseBet.KettoNum = RaceHorse.KettoNum
	WHERE Race.IsNormal = 1
		AND Race.RaceDate <= '2013-12-31'
GROUP BY
	Race.JyokenCD5,
	RaceHorse.MinaraiCD



GO
/****** Object:  View [dbo].[ViewZBayesianByJyokenSex]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewZBayesianByJyokenSex]
AS
	SELECT
	Race.JyokenCD5,
	RaceHorse.SexCD,
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
	AVG(RaceHorseBet.PayoffWin) AS ExpectedValueWin,
	AVG(RaceHorseBet.PayOffPlace) AS ExpectedValuePlace,
	GETDATE() AS TS
	FROM   RaceHorse
		INNER JOIN Race
	ON Race.RaceDate = RaceHorse.RaceDate
		AND Race.JyoCD = RaceHorse.JyoCD
		AND Race.Kaiji = RaceHorse.Kaiji
		AND Race.Nichiji = RaceHorse.Nichiji
		AND Race.RaceNum = RaceHorse.RaceNum
	INNER JOIN RaceHorseBet ON RaceHorseBet.RaceDate = RaceHorse.RaceDate
		AND RaceHorseBet.JyoCD = RaceHorse.JyoCD
		AND RaceHorseBet.Kaiji = RaceHorse.Kaiji
		AND RaceHorseBet.Nichiji = RaceHorse.Nichiji
		AND RaceHorseBet.RaceNum = RaceHorse.RaceNum
		AND RaceHorseBet.KettoNum = RaceHorse.KettoNum
	WHERE Race.IsNormal = 1
		AND Race.RaceDate <= '2013-12-31'
GROUP BY
	Race.JyokenCD5,
	RaceHorse.SexCD



GO
/****** Object:  View [dbo].[ViewZBayesianByUpDownByJyoken]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewZBayesianByUpDownByJyoken]
AS
	SELECT
	Race.JyokenCD5 AS JyokenCD5,
	RaceHorse.Prev1JyokenCD5 AS Prev1JyokenCD5,
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
	AVG(RaceHorseBet.PayoffWin) AS ExpectedValueWin,
	AVG(RaceHorseBet.PayOffPlace) AS ExpectedValuePlace,
	GETDATE() AS TS
	FROM   RaceHorse
		INNER JOIN Race
			ON Race.RaceDate = RaceHorse.RaceDate
			AND Race.JyoCD = RaceHorse.JyoCD
			AND Race.Kaiji = RaceHorse.Kaiji
			AND Race.Nichiji = RaceHorse.Nichiji
			AND Race.RaceNum = RaceHorse.RaceNum
		INNER JOIN RaceHorseBet ON RaceHorseBet.RaceDate = RaceHorse.RaceDate
			AND RaceHorseBet.JyoCD = RaceHorse.JyoCD
			AND RaceHorseBet.Kaiji = RaceHorse.Kaiji
			AND RaceHorseBet.Nichiji = RaceHorse.Nichiji
			AND RaceHorseBet.RaceNum = RaceHorse.RaceNum
			AND RaceHorseBet.KettoNum = RaceHorse.KettoNum
	WHERE Race.IsNormal = 1
		AND Race.RaceDate <= '2013-12-31'
		AND RaceHorse.IsNormal = 1
GROUP BY
	Race.JyokenCD5,
	RaceHorse.Prev1JyokenCD5



GO
/****** Object:  View [dbo].[ViewZBayesianByUpDownByJyokenGrade]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[ViewZBayesianByUpDownByJyokenGrade]
AS
	SELECT
	Race.JyokenCD5 AS JyokenCD5,
	Race.GradeCD AS GradeCD,
	RaceHorse.Prev1JyokenCD5 AS Prev1JyokenCD5,
	RaceHorse.Prev1GradeCD AS Prev1GradeCD,
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
	AVG(RaceHorseBet.PayoffWin) AS ExpectedValueWin,
	AVG(RaceHorseBet.PayOffPlace) AS ExpectedValuePlace,
	GETDATE() AS TS
	FROM   RaceHorse
		INNER JOIN Race
		ON Race.RaceDate = RaceHorse.RaceDate
			AND Race.JyoCD = RaceHorse.JyoCD
			AND Race.Kaiji = RaceHorse.Kaiji
			AND Race.Nichiji = RaceHorse.Nichiji
			AND Race.RaceNum = RaceHorse.RaceNum
		INNER JOIN RaceHorseBet ON RaceHorseBet.RaceDate = RaceHorse.RaceDate
			AND RaceHorseBet.JyoCD = RaceHorse.JyoCD
			AND RaceHorseBet.Kaiji = RaceHorse.Kaiji
			AND RaceHorseBet.Nichiji = RaceHorse.Nichiji
			AND RaceHorseBet.RaceNum = RaceHorse.RaceNum
			AND RaceHorseBet.KettoNum = RaceHorse.KettoNum
		WHERE Race.IsNormal = 1
			AND Race.RaceDate <= '2013-12-31'
			AND RaceHorse.IsNormal = 1
		GROUP BY
			Race.JyokenCD5,
			Race.GradeCD,
			RaceHorse.Prev1JyokenCD5,
			RaceHorse.Prev1GradeCD



GO
/****** Object:  View [dbo].[XSL_ViewStatsAnalysisMgmtBetByBetAll]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[XSL_ViewStatsAnalysisMgmtBetByBetAll]
AS
     SELECT dbo.MgmtBet.RaceDate,
            dbo.MgmtBet.JyoCD,
            dbo.MgmtBet.Kaiji,
            dbo.MgmtBet.Nichiji,
            dbo.MgmtBet.RaceNum,
            dbo.MgmtBet.BetTypeCD,
            dbo.MgmtBet.BetNum,
            dbo.MgmtBet.Kumi1,
            dbo.MgmtBet.Kumi2,
            dbo.MgmtBet.Kumi3,
            dbo.MgmtBet.BetCount,
            dbo.MgmtBet.HitCount,
            dbo.MgmtBet.BetMoney,
            dbo.MgmtBet.HitMoney,
            dbo.MgmtBet.ReturnMoney,
            dbo.MgmtBet.IsBet,
            dbo.MgmtBet.BetDateTime,
            dbo.MgmtBet.IsFixed,
            dbo.MgmtBet.FixedDateTime,
            dbo.MgmtBet.IsSentJRA,
            dbo.MgmtBet.SentJRADateTime,
            dbo.MgmtBet.IsHit,
            dbo.MgmtBet.IsChecked,
            dbo.MgmtBet.CheckDateTime,
            dbo.MgmtBet.PredictValue1,
            dbo.MgmtBet.PredictValue2,
            dbo.MgmtBet.PredictValue3,
            dbo.MgmtBet.TotalPredictValue,
            dbo.MgmtBet.TotalPredictValueRank,
            dbo.MgmtBet.PredictDateTime,
            dbo.MgmtBet.Wakuban1,
            dbo.MgmtBet.Wakuban2,
            dbo.MgmtBet.Wakuban3,
            dbo.Race.YoubiCD,
            dbo.Race.TokuNum,
            dbo.Race.Hondai,
            dbo.Race.Fukudai,
            dbo.Race.Kakko,
            dbo.Race.HondaiEng,
            dbo.Race.FukudaiEng,
            dbo.Race.KakkoEng,
            dbo.Race.Ryakusyo10,
            dbo.Race.Ryakusyo6,
            dbo.Race.Ryakusyo3,
            dbo.Race.Kubun,
            dbo.Race.Nkai,
            dbo.Race.GradeCD,
            dbo.Race.GradeCDBefore,
            dbo.Race.SyubetuCD,
            dbo.Race.KigoCD,
            dbo.Race.JyuryoCD,
            dbo.Race.JyokenCD1,
            dbo.Race.JyokenCD2,
            dbo.Race.JyokenCD3,
            dbo.Race.JyokenCD4,
            dbo.Race.JyokenCD5,
            dbo.Race.JyokenName,
            dbo.Race.Kyori,
            dbo.Race.KyoriBefore,
            dbo.Race.DistanceTypeCD,
            dbo.Race.DistanceType2CD,
            dbo.Race.SmileCD,
            dbo.Race.TrackCD,
            dbo.Race.TrackCDBefore,
            dbo.Race.CourseKubunCD,
            dbo.Race.CourseKubunCDBefore,
            dbo.Race.Honsyokin1,
            dbo.Race.Honsyokin2,
            dbo.Race.Honsyokin3,
            dbo.Race.Honsyokin4,
            dbo.Race.Honsyokin5,
            dbo.Race.Honsyokin6,
            dbo.Race.Honsyokin7,
            dbo.Race.HonsyokinBefore1,
            dbo.Race.HonsyokinBefore2,
            dbo.Race.HonsyokinBefore3,
            dbo.Race.HonsyokinBefore4,
            dbo.Race.HonsyokinBefore5,
            dbo.Race.Fukasyokin1,
            dbo.Race.Fukasyokin2,
            dbo.Race.Fukasyokin3,
            dbo.Race.Fukasyokin4,
            dbo.Race.Fukasyokin5,
            dbo.Race.FukasyokinBefore1,
            dbo.Race.FukasyokinBefore2,
            dbo.Race.FukasyokinBefore3,
            dbo.Race.HassoTime,
            dbo.Race.HassoTimeBefore,
            dbo.Race.TorokuTosu,
            dbo.Race.SyussoTosu,
            dbo.Race.NyusenTosu,
            dbo.Race.TenkoCD,
            dbo.Race.TrackTypeCD,
            dbo.Race.TrackType2CD,
            dbo.Race.TrackType3CD,
            dbo.Race.CourseTypeCD,
            dbo.Race.TrackConditionCD,
            dbo.Race.SibaBabaCD,
            dbo.Race.DirtBabaCD,
            dbo.Race.SyogaiMileTime,
            dbo.Race.HaronTimeS3,
            dbo.Race.HaronTimeS4,
            dbo.Race.HaronTimeL3,
            dbo.Race.HaronTimeL4,
            dbo.Race.RecordUpKubun,
            dbo.Race.LastCrollTimeStamp,
            dbo.Race.TS,
            dbo.MasterJyo.JyoNameRyakusyo1,
            dbo.MasterJyo.JyoNameRyakusyo2,
            dbo.MasterJyo.JyoNameRyakusyo3,
            dbo.MasterJyo.JyoCDName,
            dbo.MasterCourseKubun.CourseKubunName,
            dbo.MasterJyoken5.Jyoken,
            dbo.MasterTrack.Track,
            dbo.MasterTrack.Track6,
            dbo.MasterDistanceType.DistanceFrom,
            dbo.MasterDistanceType.DistanceTo,
            dbo.MasterGrade.Grade,
            dbo.MasterGrade.GradeFull,
            dbo.MasterSyubetsu.Syubetu,
            dbo.MasterSyubetsu.SyubetuRyakusyo4,
            dbo.MasterSyubetsu.SyubetuRyakusyo6,
            dbo.MasterSyubetsu.SyubetuRyakusyo8,
            dbo.MasterCourseType.CourseTypeName,
            dbo.MasterJyuryo.Jyuryo,
            dbo.MasterTenko.Tenko,
            dbo.MasterTrackCondition.TrackCondition,
            dbo.MasterTrackType.TrackType,
            dbo.MasterBetType.BetTypeContent,
            dbo.MasterSex.Sex,
            dbo.MasterMinarai.MinaraiRyakusyo,
            dbo.MasterMinarai.MinaraiGenryo
     FROM dbo.MgmtBet
          INNER JOIN dbo.Race ON dbo.MgmtBet.RaceDate = dbo.Race.RaceDate
                                 AND dbo.MgmtBet.JyoCD = dbo.Race.JyoCD
                                 AND dbo.MgmtBet.Kaiji = dbo.Race.Kaiji
                                 AND dbo.MgmtBet.Nichiji = dbo.Race.Nichiji
                                 AND dbo.MgmtBet.RaceNum = dbo.Race.RaceNum
          INNER JOIN dbo.MasterBetType ON dbo.MgmtBet.BetTypeCD = dbo.MasterBetType.BetTypeCD
          INNER JOIN dbo.RaceHorse ON dbo.Race.RaceDate = dbo.RaceHorse.RaceDate
                                      AND dbo.Race.JyoCD = dbo.RaceHorse.JyoCD
                                      AND dbo.Race.Kaiji = dbo.RaceHorse.Kaiji
                                      AND dbo.Race.Nichiji = dbo.RaceHorse.Nichiji
                                      AND dbo.Race.RaceNum = dbo.RaceHorse.RaceNum
          INNER JOIN dbo.MasterCourseKubun ON dbo.Race.CourseKubunCD = dbo.MasterCourseKubun.CourseKubunCD
          INNER JOIN dbo.MasterCourseType ON dbo.Race.CourseTypeCD = dbo.MasterCourseType.CourseTypeCD
          INNER JOIN dbo.MasterDistanceType ON dbo.Race.DistanceTypeCD = dbo.MasterDistanceType.DistanceTypeCD
          INNER JOIN dbo.MasterGrade ON dbo.Race.GradeCD = dbo.MasterGrade.GradeCD
          INNER JOIN dbo.MasterJyuryo ON dbo.Race.JyuryoCD = dbo.MasterJyuryo.JyuryoCD
          INNER JOIN dbo.MasterJyo ON dbo.Race.JyoCD = dbo.MasterJyo.JyoCD
          INNER JOIN dbo.MasterJyoken5 ON dbo.Race.JyokenCD5 = dbo.MasterJyoken5.JyokenCD5
          INNER JOIN dbo.MasterKyori ON dbo.Race.Kyori = dbo.MasterKyori.Kyori
          INNER JOIN dbo.MasterMinarai ON dbo.RaceHorse.MinaraiCD = dbo.MasterMinarai.MinaraiCD
          INNER JOIN dbo.MasterSex ON dbo.RaceHorse.SexCD = dbo.MasterSex.SexCD
          INNER JOIN dbo.MasterSyubetsu ON dbo.Race.SyubetuCD = dbo.MasterSyubetsu.SyubetuCD
          INNER JOIN dbo.MasterTenko ON dbo.Race.TenkoCD = dbo.MasterTenko.TenkoCD
          INNER JOIN dbo.MasterTrackCondition ON dbo.Race.TrackConditionCD = dbo.MasterTrackCondition.TrackConditionCD
          INNER JOIN dbo.MasterTrack ON dbo.Race.TrackCD = dbo.MasterTrack.TrackCD
          INNER JOIN dbo.MasterTrackType ON dbo.Race.TrackTypeCD = dbo.MasterTrackType.TrackTypeCD
     WHERE(dbo.Race.RaceDate >= CONVERT(DATETIME, '2014-01-01 00:00:00', 102));





GO
/****** Object:  View [dbo].[XSL_ViewStatsAnalysisMgmtBetByRaceDate]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[XSL_ViewStatsAnalysisMgmtBetByRaceDate]
AS
     SELECT RaceDate,
            BetCountByRace,
            HitCountByRace,
            HitCountRateByRace,
            BetMoneyByRace,
            HitMoneyByRace,
            ReturnMoneyByRace,
            ReturnMoneyRateByRace
     FROM
     (
         SELECT RaceDate,
                JyoCD,
                Kaiji,
                Nichiji,
                RaceNum,
                SUM(BetCountByRace) AS BetCountByRace,
                SUM(HitCountByRace) AS HitCountByRace,
                SUM(CONVERT( FLOAT, HitCountByRace, 2)) / NULLIF(SUM(CONVERT(FLOAT, BetCountByRace, 2)), 0) AS HitCountRateByRace,
                SUM(BetMoneyByRace) AS BetMoneyByRace,
                SUM(HitMoneyByRace) AS HitMoneyByRace,
                SUM(ReturnMoneyByRace) AS ReturnMoneyByRace,
                SUM(CONVERT( FLOAT, HitMoneyByRace, 2)) / NULLIF(SUM(CONVERT(FLOAT, BetMoneyByRace, 2)), 0) AS ReturnMoneyRateByRace
         FROM
         (
             SELECT RaceDate,
                    JyoCD,
                    Kaiji,
                    Nichiji,
                    RaceNum,
                    CASE
                        WHEN SUM(BetCount) > 0
                        THEN 1
                        ELSE 0
                    END AS BetCountByRace,
                    CASE
                        WHEN SUM(HitCount) > 0
                        THEN 1
                        ELSE 0
                    END AS HitCountByRace,
                    SUM(BetMoney) AS BetMoneyByRace,
                    SUM(HitMoney) AS HitMoneyByRace,
                    SUM(ReturnMoney) AS ReturnMoneyByRace
             FROM dbo.MgmtBet
             WHERE(RaceDate > CONVERT( DATETIME, '2014-01-01 00:00:00', 102))
             GROUP BY RaceDate,
                      JyoCD,
                      Kaiji,
                      Nichiji,
                      RaceNum
         ) AS t1
         GROUP BY RaceDate,
                  JyoCD,
                  Kaiji,
                  Nichiji,
                  RaceNum
     ) AS t2;




GO
/****** Object:  View [dbo].[XSL_ViewStatsAnalysisMgmtBetByRaceNum]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[XSL_ViewStatsAnalysisMgmtBetByRaceNum]
AS
     SELECT t2.RaceDate,
            t2.JyoCD,
            t2.Kaiji,
            t2.Nichiji,
            t2.RaceNum,
            t2.BetTypeCD,
            t2.BetCountByRace,
            t2.HitCountByRace,
            t2.HitCountRateByRace,
            t2.BetMoneyByRace,
            t2.HitMoneyByRace,
            t2.ReturnMoneyByRace,
            t2.ReturnMoneyRateByRace,
            dbo.Race.GradeCD,
            dbo.Race.SyubetuCD,
            dbo.Race.KigoCD,
            dbo.Race.JyokenCD5,
            dbo.Race.Kyori,
            dbo.Race.DistanceTypeCD,
            dbo.Race.DistanceType2CD,
            dbo.Race.SmileCD,
            dbo.Race.CourseKubunCD,
            dbo.Race.TorokuTosu,
            dbo.Race.TenkoCD,
            dbo.Race.TrackTypeCD,
            dbo.Race.TrackType2CD,
            dbo.Race.TrackType3CD,
            dbo.Race.CourseTypeCD,
            dbo.Race.TrackConditionCD,
            dbo.MasterJyo.JyoNameRyakusyo1,
            dbo.MasterJyo.JyoNameRyakusyo2,
            dbo.MasterJyo.JyoNameRyakusyo3,
            dbo.MasterJyo.JyoCDName,
            dbo.MasterCourseKubun.CourseKubunName,
            dbo.MasterJyoken5.Jyoken,
            dbo.MasterTrack.Track,
            dbo.MasterTrack.Track6,
            dbo.MasterDistanceType.DistanceFrom,
            dbo.MasterDistanceType.DistanceTo,
            dbo.MasterGrade.Grade,
            dbo.MasterGrade.GradeFull,
            dbo.MasterSyubetsu.Syubetu,
            dbo.MasterSyubetsu.SyubetuRyakusyo4,
            dbo.MasterSyubetsu.SyubetuRyakusyo6,
            dbo.MasterSyubetsu.SyubetuRyakusyo8,
            dbo.MasterCourseType.CourseTypeName,
            dbo.MasterJyuryo.Jyuryo,
            dbo.MasterTenko.Tenko,
            dbo.MasterTrackCondition.TrackCondition,
            dbo.MasterTrackType.TrackType,
            dbo.MasterBetType.BetTypeContent

/*
  dbo.MasterSex.Sex,
  dbo.MasterMinarai.MinaraiRyakusyo,
  dbo.MasterMinarai.MinaraiGenryo
*/

     FROM
     (
         SELECT RaceDate,
                JyoCD,
                Kaiji,
                Nichiji,
                RaceNum,
                BetTypeCD,
                SUM(BetCountByRace) AS BetCountByRace,
  
/*
    	,	CASE
  				WHEN SUM ( HitCountByRace ) > 0
  					THEN
  						1
  				ELSE
  					0
  			END AS BetCountByRace
  */
 
                SUM(HitCountByRace) AS HitCountByRace,
  
/*
  		,	CASE
  				WHEN SUM ( HitCountByRace ) > 0
  					THEN
  						1
  				ELSE
  					0
  			END AS HitCountByRace
  */
 
                SUM(CONVERT( FLOAT, HitCountByRace, 2)) / NULLIF(SUM(CONVERT(FLOAT, BetCountByRace, 2)), 0) AS HitCountRateByRace,
                SUM(BetMoneyByRace) AS BetMoneyByRace,
                SUM(HitMoneyByRace) AS HitMoneyByRace,
                SUM(ReturnMoneyByRace) AS ReturnMoneyByRace,
                SUM(CONVERT( FLOAT, HitMoneyByRace, 2)) / NULLIF(SUM(CONVERT(FLOAT, BetMoneyByRace, 2)), 0) AS ReturnMoneyRateByRace
         FROM
         (
             SELECT RaceDate,
                    JyoCD,
                    Kaiji,
                    Nichiji,
                    RaceNum,
                    BetTypeCD,
                    CASE
                        WHEN SUM(BetCount) > 0
                        THEN 1
                        ELSE 0
                    END AS BetCountByRace,
                    CASE
                        WHEN SUM(HitCount) > 0
                        THEN 1
                        ELSE 0
                    END AS HitCountByRace,
                    SUM(BetMoney) AS BetMoneyByRace,
                    SUM(HitMoney) AS HitMoneyByRace,
                    SUM(ReturnMoney) AS ReturnMoneyByRace
             FROM dbo.MgmtBet
             GROUP BY RaceDate,
                      JyoCD,
                      Kaiji,
                      Nichiji,
                      RaceNum,
                      BetTypeCD
         ) AS t1
         GROUP BY RaceDate,
                  JyoCD,
                  Kaiji,
                  Nichiji,
                  RaceNum,
                  BetTypeCD
     ) AS t2
     INNER JOIN dbo.Race ON Race.RaceDate = t2.RaceDate
                            AND Race.JyoCD = t2.JyoCD
                            AND Race.Kaiji = t2.Kaiji
                            AND Race.Nichiji = t2.Nichiji
                            AND Race.RaceNum = t2.RaceNum
     INNER JOIN dbo.MasterBetType ON t2.BetTypeCD = dbo.MasterBetType.BetTypeCD 

/*
INNER JOIN dbo.RaceHorse
  ON dbo.Race.RaceDate = dbo.RaceHorse.RaceDate
  AND dbo.Race.JyoCD = dbo.RaceHorse.JyoCD
  AND dbo.Race.Kaiji = dbo.RaceHorse.Kaiji
  AND dbo.Race.Nichiji = dbo.RaceHorse.Nichiji
  AND dbo.Race.RaceNum = dbo.RaceHorse.RaceNum
  */

     INNER JOIN dbo.MasterCourseKubun ON dbo.Race.CourseKubunCD = dbo.MasterCourseKubun.CourseKubunCD
     INNER JOIN dbo.MasterCourseType ON dbo.Race.CourseTypeCD = dbo.MasterCourseType.CourseTypeCD
     INNER JOIN dbo.MasterDistanceType ON dbo.Race.DistanceTypeCD = dbo.MasterDistanceType.DistanceTypeCD
     INNER JOIN dbo.MasterGrade ON dbo.Race.GradeCD = dbo.MasterGrade.GradeCD
     INNER JOIN dbo.MasterJyuryo ON dbo.Race.JyuryoCD = dbo.MasterJyuryo.JyuryoCD
     INNER JOIN dbo.MasterJyo ON dbo.Race.JyoCD = dbo.MasterJyo.JyoCD
     INNER JOIN dbo.MasterJyoken5 ON dbo.Race.JyokenCD5 = dbo.MasterJyoken5.JyokenCD5
     INNER JOIN dbo.MasterKyori ON dbo.Race.Kyori = dbo.MasterKyori.Kyori 

/*
INNER JOIN dbo.MasterMinarai
  ON dbo.RaceHorse.MinaraiCD = dbo.MasterMinarai.MinaraiCD
INNER JOIN dbo.MasterSex
  ON dbo.RaceHorse.SexCD = dbo.MasterSex.SexCD
*/

     INNER JOIN dbo.MasterSyubetsu ON dbo.Race.SyubetuCD = dbo.MasterSyubetsu.SyubetuCD
     INNER JOIN dbo.MasterTenko ON dbo.Race.TenkoCD = dbo.MasterTenko.TenkoCD
     INNER JOIN dbo.MasterTrackCondition ON dbo.Race.TrackConditionCD = dbo.MasterTrackCondition.TrackConditionCD
     INNER JOIN dbo.MasterTrack ON dbo.Race.TrackCD = dbo.MasterTrack.TrackCD
     INNER JOIN dbo.MasterTrackType ON dbo.Race.TrackTypeCD = dbo.MasterTrackType.TrackTypeCD
     WHERE(dbo.Race.RaceDate >= CONVERT(DATETIME, '2014-01-01 00:00:00', 102));





GO
/****** Object:  View [dbo].[XSL_ViewStatsAnalysisMgmtSimByBetAll]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[XSL_ViewStatsAnalysisMgmtSimByBetAll]
AS
     SELECT dbo.MgmtSim.RaceDate,
            dbo.MgmtSim.JyoCD,
            dbo.MgmtSim.Kaiji,
            dbo.MgmtSim.Nichiji,
            dbo.MgmtSim.RaceNum,
            dbo.MgmtSim.BetTypeCD,
            dbo.MgmtSim.BetNum,
            dbo.MgmtSim.Kumi1,
            dbo.MgmtSim.Kumi2,
            dbo.MgmtSim.Kumi3,
            dbo.MgmtSim.BetCount,
            dbo.MgmtSim.HitCount,
            dbo.MgmtSim.BetMoney,
            dbo.MgmtSim.HitMoney,
            dbo.MgmtSim.ReturnMoney,
            dbo.MgmtSim.IsBet,
            dbo.MgmtSim.BetDateTime,
            dbo.MgmtSim.IsFixed,
            dbo.MgmtSim.FixedDateTime,
            dbo.MgmtSim.IsSentJRA,
            dbo.MgmtSim.SentJRADateTime,
            dbo.MgmtSim.IsHit,
            dbo.MgmtSim.IsChecked,
            dbo.MgmtSim.CheckDateTime,
            dbo.MgmtSim.PredictValue1,
            dbo.MgmtSim.PredictValue2,
            dbo.MgmtSim.PredictValue3,
            dbo.MgmtSim.TotalPredictValue,
            dbo.MgmtSim.TotalPredictValueRank,
            dbo.MgmtSim.PredictDateTime,
            dbo.MgmtSim.Wakuban1,
            dbo.MgmtSim.Wakuban2,
            dbo.MgmtSim.Wakuban3,
            dbo.Race.YoubiCD,
            dbo.Race.TokuNum,
            dbo.Race.Hondai,
            dbo.Race.Fukudai,
            dbo.Race.Kakko,
            dbo.Race.HondaiEng,
            dbo.Race.FukudaiEng,
            dbo.Race.KakkoEng,
            dbo.Race.Ryakusyo10,
            dbo.Race.Ryakusyo6,
            dbo.Race.Ryakusyo3,
            dbo.Race.Kubun,
            dbo.Race.Nkai,
            dbo.Race.GradeCD,
            dbo.Race.GradeCDBefore,
            dbo.Race.SyubetuCD,
            dbo.Race.KigoCD,
            dbo.Race.JyuryoCD,
            dbo.Race.JyokenCD1,
            dbo.Race.JyokenCD2,
            dbo.Race.JyokenCD3,
            dbo.Race.JyokenCD4,
            dbo.Race.JyokenCD5,
            dbo.Race.JyokenName,
            dbo.Race.Kyori,
            dbo.Race.KyoriBefore,
            dbo.Race.DistanceTypeCD,
            dbo.Race.DistanceType2CD,
            dbo.Race.SmileCD,
            dbo.Race.TrackCD,
            dbo.Race.TrackCDBefore,
            dbo.Race.CourseKubunCD,
            dbo.Race.CourseKubunCDBefore,
            dbo.Race.Honsyokin1,
            dbo.Race.Honsyokin2,
            dbo.Race.Honsyokin3,
            dbo.Race.Honsyokin4,
            dbo.Race.Honsyokin5,
            dbo.Race.Honsyokin6,
            dbo.Race.Honsyokin7,
            dbo.Race.HonsyokinBefore1,
            dbo.Race.HonsyokinBefore2,
            dbo.Race.HonsyokinBefore3,
            dbo.Race.HonsyokinBefore4,
            dbo.Race.HonsyokinBefore5,
            dbo.Race.Fukasyokin1,
            dbo.Race.Fukasyokin2,
            dbo.Race.Fukasyokin3,
            dbo.Race.Fukasyokin4,
            dbo.Race.Fukasyokin5,
            dbo.Race.FukasyokinBefore1,
            dbo.Race.FukasyokinBefore2,
            dbo.Race.FukasyokinBefore3,
            dbo.Race.HassoTime,
            dbo.Race.HassoTimeBefore,
            dbo.Race.TorokuTosu,
            dbo.Race.SyussoTosu,
            dbo.Race.NyusenTosu,
            dbo.Race.TenkoCD,
            dbo.Race.TrackTypeCD,
            dbo.Race.TrackType2CD,
            dbo.Race.TrackType3CD,
            dbo.Race.CourseTypeCD,
            dbo.Race.TrackConditionCD,
            dbo.Race.SibaBabaCD,
            dbo.Race.DirtBabaCD,
            dbo.Race.SyogaiMileTime,
            dbo.Race.HaronTimeS3,
            dbo.Race.HaronTimeS4,
            dbo.Race.HaronTimeL3,
            dbo.Race.HaronTimeL4,
            dbo.Race.RecordUpKubun,
            dbo.Race.LastCrollTimeStamp,
            dbo.Race.TS,
            dbo.MasterJyo.JyoNameRyakusyo1,
            dbo.MasterJyo.JyoNameRyakusyo2,
            dbo.MasterJyo.JyoNameRyakusyo3,
            dbo.MasterJyo.JyoCDName,
            dbo.MasterCourseKubun.CourseKubunName,
            dbo.MasterJyoken5.Jyoken,
            dbo.MasterTrack.Track,
            dbo.MasterTrack.Track6,
            dbo.MasterDistanceType.DistanceFrom,
            dbo.MasterDistanceType.DistanceTo,
            dbo.MasterGrade.Grade,
            dbo.MasterGrade.GradeFull,
            dbo.MasterSyubetsu.Syubetu,
            dbo.MasterSyubetsu.SyubetuRyakusyo4,
            dbo.MasterSyubetsu.SyubetuRyakusyo6,
            dbo.MasterSyubetsu.SyubetuRyakusyo8,
            dbo.MasterCourseType.CourseTypeName,
            dbo.MasterJyuryo.Jyuryo,
            dbo.MasterTenko.Tenko,
            dbo.MasterTrackCondition.TrackCondition,
            dbo.MasterTrackType.TrackType,
            dbo.MasterBetType.BetTypeContent,
            dbo.MasterSex.Sex,
            dbo.MasterMinarai.MinaraiRyakusyo,
            dbo.MasterMinarai.MinaraiGenryo
     FROM dbo.MgmtSim
          INNER JOIN dbo.Race ON dbo.MgmtSim.RaceDate = dbo.Race.RaceDate
                                 AND dbo.MgmtSim.JyoCD = dbo.Race.JyoCD
                                 AND dbo.MgmtSim.Kaiji = dbo.Race.Kaiji
                                 AND dbo.MgmtSim.Nichiji = dbo.Race.Nichiji
                                 AND dbo.MgmtSim.RaceNum = dbo.Race.RaceNum
          INNER JOIN dbo.MasterBetType ON dbo.MgmtSim.BetTypeCD = dbo.MasterBetType.BetTypeCD
          INNER JOIN dbo.RaceHorse ON dbo.Race.RaceDate = dbo.RaceHorse.RaceDate
                                      AND dbo.Race.JyoCD = dbo.RaceHorse.JyoCD
                                      AND dbo.Race.Kaiji = dbo.RaceHorse.Kaiji
                                      AND dbo.Race.Nichiji = dbo.RaceHorse.Nichiji
                                      AND dbo.Race.RaceNum = dbo.RaceHorse.RaceNum
          INNER JOIN dbo.MasterCourseKubun ON dbo.Race.CourseKubunCD = dbo.MasterCourseKubun.CourseKubunCD
          INNER JOIN dbo.MasterCourseType ON dbo.Race.CourseTypeCD = dbo.MasterCourseType.CourseTypeCD
          INNER JOIN dbo.MasterDistanceType ON dbo.Race.DistanceTypeCD = dbo.MasterDistanceType.DistanceTypeCD
          INNER JOIN dbo.MasterGrade ON dbo.Race.GradeCD = dbo.MasterGrade.GradeCD
          INNER JOIN dbo.MasterJyuryo ON dbo.Race.JyuryoCD = dbo.MasterJyuryo.JyuryoCD
          INNER JOIN dbo.MasterJyo ON dbo.Race.JyoCD = dbo.MasterJyo.JyoCD
          INNER JOIN dbo.MasterJyoken5 ON dbo.Race.JyokenCD5 = dbo.MasterJyoken5.JyokenCD5
          INNER JOIN dbo.MasterKyori ON dbo.Race.Kyori = dbo.MasterKyori.Kyori
          INNER JOIN dbo.MasterMinarai ON dbo.RaceHorse.MinaraiCD = dbo.MasterMinarai.MinaraiCD
          INNER JOIN dbo.MasterSex ON dbo.RaceHorse.SexCD = dbo.MasterSex.SexCD
          INNER JOIN dbo.MasterSyubetsu ON dbo.Race.SyubetuCD = dbo.MasterSyubetsu.SyubetuCD
          INNER JOIN dbo.MasterTenko ON dbo.Race.TenkoCD = dbo.MasterTenko.TenkoCD
          INNER JOIN dbo.MasterTrackCondition ON dbo.Race.TrackConditionCD = dbo.MasterTrackCondition.TrackConditionCD
          INNER JOIN dbo.MasterTrack ON dbo.Race.TrackCD = dbo.MasterTrack.TrackCD
          INNER JOIN dbo.MasterTrackType ON dbo.Race.TrackTypeCD = dbo.MasterTrackType.TrackTypeCD
     WHERE(dbo.Race.RaceDate BETWEEN CONVERT(DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102));




GO
/****** Object:  View [dbo].[XSL_ViewStatsAnalysisMgmtSimByRaceNum]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[XSL_ViewStatsAnalysisMgmtSimByRaceNum]
AS
     SELECT t2.RaceDate,
            t2.JyoCD,
            t2.Kaiji,
            t2.Nichiji,
            t2.RaceNum,
            t2.BetTypeCD,
            t2.BetCountByRace,
            t2.HitCountByRace,
            t2.HitCountRateByRace,
            t2.BetMoneyByRace,
            t2.HitMoneyByRace,
            t2.ReturnMoneyByRace,
            t2.ReturnMoneyRateByRace,
            dbo.Race.GradeCD,
            dbo.Race.SyubetuCD,
            dbo.Race.KigoCD,
            dbo.Race.JyokenCD5,
            dbo.Race.Kyori,
            dbo.Race.DistanceTypeCD,
            dbo.Race.DistanceType2CD,
            dbo.Race.SmileCD,
            dbo.Race.CourseKubunCD,
            dbo.Race.TorokuTosu,
            dbo.Race.TenkoCD,
            dbo.Race.TrackTypeCD,
            dbo.Race.TrackType2CD,
            dbo.Race.TrackType3CD,
            dbo.Race.CourseTypeCD,
            dbo.Race.TrackConditionCD,
            dbo.MasterJyo.JyoNameRyakusyo1,
            dbo.MasterJyo.JyoNameRyakusyo2,
            dbo.MasterJyo.JyoNameRyakusyo3,
            dbo.MasterJyo.JyoCDName,
            dbo.MasterCourseKubun.CourseKubunName,
            dbo.MasterJyoken5.Jyoken,
            dbo.MasterTrack.Track,
            dbo.MasterTrack.Track6,
            dbo.MasterDistanceType.DistanceFrom,
            dbo.MasterDistanceType.DistanceTo,
            dbo.MasterGrade.Grade,
            dbo.MasterGrade.GradeFull,
            dbo.MasterSyubetsu.Syubetu,
            dbo.MasterSyubetsu.SyubetuRyakusyo4,
            dbo.MasterSyubetsu.SyubetuRyakusyo6,
            dbo.MasterSyubetsu.SyubetuRyakusyo8,
            dbo.MasterCourseType.CourseTypeName,
            dbo.MasterJyuryo.Jyuryo,
            dbo.MasterTenko.Tenko,
            dbo.MasterTrackCondition.TrackCondition,
            dbo.MasterTrackType.TrackType,
            dbo.MasterBetType.BetTypeContent,
            dbo.MasterSex.Sex,
            dbo.MasterMinarai.MinaraiRyakusyo,
            dbo.MasterMinarai.MinaraiGenryo
     FROM
     (
         SELECT RaceDate,
                JyoCD,
                Kaiji,
                Nichiji,
                RaceNum,
                BetTypeCD,
                SUM(BetCountByRace) AS BetCountByRace,
  
/*
    	,	CASE
  				WHEN SUM ( HitCountByRace ) > 0
  					THEN
  						1
  				ELSE
  					0
  			END AS BetCountByRace
  */
 
                SUM(HitCountByRace) AS HitCountByRace,
  
/*
  		,	CASE
  				WHEN SUM ( HitCountByRace ) > 0
  					THEN
  						1
  				ELSE
  					0
  			END AS HitCountByRace
  */
 
                SUM(CONVERT( FLOAT, HitCountByRace, 2)) / NULLIF(SUM(CONVERT(FLOAT, BetCountByRace, 2)), 0) AS HitCountRateByRace,
                SUM(BetMoneyByRace) AS BetMoneyByRace,
                SUM(HitMoneyByRace) AS HitMoneyByRace,
                SUM(ReturnMoneyByRace) AS ReturnMoneyByRace,
                SUM(CONVERT( FLOAT, HitMoneyByRace, 2)) / NULLIF(SUM(CONVERT(FLOAT, BetMoneyByRace, 2)), 0) AS ReturnMoneyRateByRace
         FROM
         (
             SELECT RaceDate,
                    JyoCD,
                    Kaiji,
                    Nichiji,
                    RaceNum,
                    BetTypeCD,
                    CASE
                        WHEN SUM(BetCount) > 0
                        THEN 1
                        ELSE 0
                    END AS BetCountByRace,
                    CASE
                        WHEN SUM(HitCount) > 0
                        THEN 1
                        ELSE 0
                    END AS HitCountByRace,
                    SUM(BetMoney) AS BetMoneyByRace,
                    SUM(HitMoney) AS HitMoneyByRace,
                    SUM(ReturnMoney) AS ReturnMoneyByRace
             FROM dbo.MgmtSim
             GROUP BY RaceDate,
                      JyoCD,
                      Kaiji,
                      Nichiji,
                      RaceNum,
                      BetTypeCD
         ) AS t1
         GROUP BY RaceDate,
                  JyoCD,
                  Kaiji,
                  Nichiji,
                  RaceNum,
                  BetTypeCD
     ) AS t2
     INNER JOIN dbo.Race ON Race.RaceDate = t2.RaceDate
                            AND Race.JyoCD = t2.JyoCD
                            AND Race.Kaiji = t2.Kaiji
                            AND Race.Nichiji = t2.Nichiji
                            AND Race.RaceNum = t2.RaceNum
     INNER JOIN dbo.MasterBetType ON t2.BetTypeCD = dbo.MasterBetType.BetTypeCD
     INNER JOIN dbo.RaceHorse ON dbo.Race.RaceDate = dbo.RaceHorse.RaceDate
                                 AND dbo.Race.JyoCD = dbo.RaceHorse.JyoCD
                                 AND dbo.Race.Kaiji = dbo.RaceHorse.Kaiji
                                 AND dbo.Race.Nichiji = dbo.RaceHorse.Nichiji
                                 AND dbo.Race.RaceNum = dbo.RaceHorse.RaceNum
     INNER JOIN dbo.MasterCourseKubun ON dbo.Race.CourseKubunCD = dbo.MasterCourseKubun.CourseKubunCD
     INNER JOIN dbo.MasterCourseType ON dbo.Race.CourseTypeCD = dbo.MasterCourseType.CourseTypeCD
     INNER JOIN dbo.MasterDistanceType ON dbo.Race.DistanceTypeCD = dbo.MasterDistanceType.DistanceTypeCD
     INNER JOIN dbo.MasterGrade ON dbo.Race.GradeCD = dbo.MasterGrade.GradeCD
     INNER JOIN dbo.MasterJyuryo ON dbo.Race.JyuryoCD = dbo.MasterJyuryo.JyuryoCD
     INNER JOIN dbo.MasterJyo ON dbo.Race.JyoCD = dbo.MasterJyo.JyoCD
     INNER JOIN dbo.MasterJyoken5 ON dbo.Race.JyokenCD5 = dbo.MasterJyoken5.JyokenCD5
     INNER JOIN dbo.MasterKyori ON dbo.Race.Kyori = dbo.MasterKyori.Kyori
     INNER JOIN dbo.MasterMinarai ON dbo.RaceHorse.MinaraiCD = dbo.MasterMinarai.MinaraiCD
     INNER JOIN dbo.MasterSex ON dbo.RaceHorse.SexCD = dbo.MasterSex.SexCD
     INNER JOIN dbo.MasterSyubetsu ON dbo.Race.SyubetuCD = dbo.MasterSyubetsu.SyubetuCD
     INNER JOIN dbo.MasterTenko ON dbo.Race.TenkoCD = dbo.MasterTenko.TenkoCD
     INNER JOIN dbo.MasterTrackCondition ON dbo.Race.TrackConditionCD = dbo.MasterTrackCondition.TrackConditionCD
     INNER JOIN dbo.MasterTrack ON dbo.Race.TrackCD = dbo.MasterTrack.TrackCD
     INNER JOIN dbo.MasterTrackType ON dbo.Race.TrackTypeCD = dbo.MasterTrackType.TrackTypeCD
     WHERE(dbo.Race.RaceDate BETWEEN CONVERT(DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102));




GO
/****** Object:  View [dbo].[XSL_ViewStatsCandlestickMgmtBetByHassoTime]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[XSL_ViewStatsCandlestickMgmtBetByHassoTime]
AS
     SELECT tbl4.RaceDate,
            tbl4.HassoTime,
            tbl3.BetMoneyTotalMax,
            tbl3.BetMoneyTotalMin,
            tbl4.BetMoneyTotal,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                  tbl4.HassoTime) - tbl4.BetMoneyTotal AS BetMoneyOpen,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                  tbl4.HassoTime) - tbl4.BetMoneyTotal + tbl3.BetMoneyTotalMax AS BetMoneyHigh,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                  tbl4.HassoTime) - tbl4.BetMoneyTotal + tbl3.BetMoneyTotalMin AS BetMoneyLow,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                  tbl4.HassoTime) AS BetMoneyClose,
            tbl3.HitMoneyTotalMax,
            tbl3.HitMoneyTotalMin,
            tbl4.HitMoneyTotal,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                  tbl4.HassoTime) - tbl4.HitMoneyTotal AS HitMoneyOpen,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                  tbl4.HassoTime) - tbl4.HitMoneyTotal + tbl3.HitMoneyTotalMax AS HitMoneyHigh,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                  tbl4.HassoTime) - tbl4.HitMoneyTotal + tbl3.HitMoneyTotalMin AS HitMoneyLow,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                  tbl4.HassoTime) AS HitMoneyClose,
            tbl3.ReturnMoneyTotalMax,
            tbl3.ReturnMoneyTotalMin,
            tbl4.ReturnMoneyTotal,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                     tbl4.HassoTime) - tbl4.ReturnMoneyTotal AS ReturnMoneyOpen,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                     tbl4.HassoTime) - tbl4.ReturnMoneyTotal + tbl3.ReturnMoneyTotalMax AS ReturnMoneyHigh,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                     tbl4.HassoTime) - tbl4.ReturnMoneyTotal + tbl3.ReturnMoneyTotalMin AS ReturnMoneyLow,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                     tbl4.HassoTime) AS ReturnMoneyClose
     FROM
     (
         SELECT MgmtBet.RaceDate,
                Race.HassoTime,
                SUM(MgmtBet.BetMoney) AS BetMoneyTotal,
                SUM(MgmtBet.HitMoney) AS HitMoneyTotal,
                SUM(MgmtBet.ReturnMoney) AS ReturnMoneyTotal
         FROM MgmtBet
              INNER JOIN Race ON MgmtBet.RaceDate = Race.RaceDate
                                 AND MgmtBet.JyoCD = Race.JyoCD
                                 AND MgmtBet.Kaiji = Race.Kaiji
                                 AND MgmtBet.Nichiji = Race.Nichiji
                                 AND MgmtBet.RaceNum = Race.RaceNum
         WHERE(dbo.MgmtBet.RaceDate >= CONVERT( DATETIME, '2014-01-01 00:00:00', 102))
         GROUP BY MgmtBet.RaceDate,
                  Race.HassoTime
     ) tbl4
     INNER JOIN
     (
         SELECT tbl2.RaceDate,
                tbl2.HassoTime,
                MAX(tbl2.BetMoneyCumulativeTotal) AS BetMoneyTotalMax,
                MIN(tbl2.BetMoneyCumulativeTotal) AS BetMoneyTotalMin,
                MAX(tbl2.HitMoneyCumulativeTotal) AS HitMoneyTotalMax,
                MIN(tbl2.HitMoneyCumulativeTotal) AS HitMoneyTotalMin,
                MAX(tbl2.ReturnMoneyCumulativeTotal) AS ReturnMoneyTotalMax,
                MIN(tbl2.ReturnMoneyCumulativeTotal) AS ReturnMoneyTotalMin
         FROM
         (
             SELECT tbl1.RaceDate,
                    tbl1.JyoCD,
                    tbl1.Kaiji,
                    tbl1.Nichiji,
                    tbl1.RaceNum,
                    tbl1.HassoTime,
                    tbl1.BetMoneyHassoTimeTotal,
                    SUM(tbl1.BetMoneyHassoTimeTotal) OVER(PARTITION BY tbl1.RaceDate,
                                                                       tbl1.HassoTime ORDER BY tbl1.RaceDate,
                                                                                               tbl1.JyoCD,
                                                                                               tbl1.Kaiji,
                                                                                               tbl1.Nichiji,
                                                                                               tbl1.RaceNum,
                                                                                               tbl1.HassoTime) AS BetMoneyCumulativeTotal,
                    tbl1.HitMoneyHassoTimeTotal,
                    SUM(tbl1.HitMoneyHassoTimeTotal) OVER(PARTITION BY tbl1.RaceDate,
                                                                       tbl1.HassoTime ORDER BY tbl1.RaceDate,
                                                                                               tbl1.JyoCD,
                                                                                               tbl1.Kaiji,
                                                                                               tbl1.Nichiji,
                                                                                               tbl1.RaceNum,
                                                                                               tbl1.HassoTime) AS HitMoneyCumulativeTotal,
                    tbl1.ReturnMoneyHassoTimeTotal,
                    SUM(tbl1.ReturnMoneyHassoTimeTotal) OVER(PARTITION BY tbl1.RaceDate,
                                                                          tbl1.HassoTime ORDER BY tbl1.RaceDate,
                                                                                                  tbl1.JyoCD,
                                                                                                  tbl1.Kaiji,
                                                                                                  tbl1.Nichiji,
                                                                                                  tbl1.RaceNum,
                                                                                                  tbl1.HassoTime) AS ReturnMoneyCumulativeTotal
             FROM
             (
                 SELECT MgmtBet.RaceDate,
                        MgmtBet.JyoCD,
                        MgmtBet.Kaiji,
                        MgmtBet.Nichiji,
                        MgmtBet.RaceNum,
                        Race.HassoTime,
                        SUM(MgmtBet.BetMoney) AS BetMoneyHassoTimeTotal,
                        SUM(MgmtBet.HitMoney) AS HitMoneyHassoTimeTotal,
                        SUM(MgmtBet.ReturnMoney) AS ReturnMoneyHassoTimeTotal
                 FROM MgmtBet
                      INNER JOIN Race ON MgmtBet.RaceDate = Race.RaceDate
                                         AND MgmtBet.JyoCD = Race.JyoCD
                                         AND MgmtBet.Kaiji = Race.Kaiji
                                         AND MgmtBet.Nichiji = Race.Nichiji
                                         AND MgmtBet.RaceNum = Race.RaceNum
                 GROUP BY MgmtBet.RaceDate,
                          MgmtBet.JyoCD,
                          MgmtBet.Kaiji,
                          MgmtBet.Nichiji,
                          MgmtBet.RaceNum,
                          Race.HassoTime
             ) tbl1
         ) tbl2
         GROUP BY tbl2.RaceDate,
                  tbl2.HassoTime

/*
		ORDER BY
		tbl2.RaceDate
		*/

     ) tbl3 ON tbl4.RaceDate = tbl3.RaceDate
               AND tbl4.HassoTime = tbl3.HassoTime;




GO
/****** Object:  View [dbo].[XSL_ViewStatsCandlestickMgmtBetByRaceDate]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[XSL_ViewStatsCandlestickMgmtBetByRaceDate]
AS
     SELECT tbl4.RaceDate,
            tbl3.BetMoneyTotalMax,
            tbl3.BetMoneyTotalMin,
            tbl4.BetMoneyTotal,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.BetMoneyTotal AS BetMoneyOpen,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.BetMoneyTotal + tbl3.BetMoneyTotalMax AS BetMoneyHigh,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.BetMoneyTotal + tbl3.BetMoneyTotalMin AS BetMoneyLow,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate) AS BetMoneyClose,
            tbl3.HitMoneyTotalMax,
            tbl3.HitMoneyTotalMin,
            tbl4.HitMoneyTotal,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.HitMoneyTotal AS HitMoneyOpen,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.HitMoneyTotal + tbl3.HitMoneyTotalMax AS HitMoneyHigh,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.HitMoneyTotal + tbl3.HitMoneyTotalMin AS HitMoneyLow,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate) AS HitMoneyClose,
            tbl3.ReturnMoneyTotalMax,
            tbl3.ReturnMoneyTotalMin,
            tbl4.ReturnMoneyTotal,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.ReturnMoneyTotal AS ReturnMoneyOpen,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.ReturnMoneyTotal + tbl3.ReturnMoneyTotalMax AS ReturnMoneyHigh,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.ReturnMoneyTotal + tbl3.ReturnMoneyTotalMin AS ReturnMoneyLow,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate) AS ReturnMoneyClose
     FROM
     (
         SELECT MgmtBet.RaceDate,
                SUM(MgmtBet.BetMoney) AS BetMoneyTotal,
                SUM(MgmtBet.HitMoney) AS HitMoneyTotal,
                SUM(MgmtBet.ReturnMoney) AS ReturnMoneyTotal
         FROM MgmtBet
         WHERE(dbo.MgmtBet.RaceDate >= CONVERT( DATETIME, '2014-01-01 00:00:00', 102))
         GROUP BY MgmtBet.RaceDate
     ) tbl4
     INNER JOIN
     (
         SELECT tbl2.RaceDate,
                MAX(tbl2.BetMoneyCumulativeTotal) AS BetMoneyTotalMax,
                MIN(tbl2.BetMoneyCumulativeTotal) AS BetMoneyTotalMin,
                MAX(tbl2.HitMoneyCumulativeTotal) AS HitMoneyTotalMax,
                MIN(tbl2.HitMoneyCumulativeTotal) AS HitMoneyTotalMin,
                MAX(tbl2.ReturnMoneyCumulativeTotal) AS ReturnMoneyTotalMax,
                MIN(tbl2.ReturnMoneyCumulativeTotal) AS ReturnMoneyTotalMin
         FROM
         (
             SELECT tbl1.RaceDate,
                    tbl1.JyoCD,
                    tbl1.Kaiji,
                    tbl1.Nichiji,
                    tbl1.RaceNum,
                    tbl1.BetMoneyHassoTimeTotal,
                    SUM(tbl1.BetMoneyHassoTimeTotal) OVER(PARTITION BY tbl1.RaceDate ORDER BY tbl1.RaceDate,
                                                                                              tbl1.JyoCD,
                                                                                              tbl1.Kaiji,
                                                                                              tbl1.Nichiji,
                                                                                              tbl1.RaceNum,
                                                                                              tbl1.HassoTime) AS BetMoneyCumulativeTotal,
                    tbl1.HitMoneyHassoTimeTotal,
                    SUM(tbl1.HitMoneyHassoTimeTotal) OVER(PARTITION BY tbl1.RaceDate ORDER BY tbl1.RaceDate,
                                                                                              tbl1.JyoCD,
                                                                                              tbl1.Kaiji,
                                                                                              tbl1.Nichiji,
                                                                                              tbl1.RaceNum,
                                                                                              tbl1.HassoTime) AS HitMoneyCumulativeTotal,
                    tbl1.ReturnMoneyHassoTimeTotal,
                    SUM(tbl1.ReturnMoneyHassoTimeTotal) OVER(PARTITION BY tbl1.RaceDate ORDER BY tbl1.RaceDate,
                                                                                                 tbl1.JyoCD,
                                                                                                 tbl1.Kaiji,
                                                                                                 tbl1.Nichiji,
                                                                                                 tbl1.RaceNum,
                                                                                                 tbl1.HassoTime) AS ReturnMoneyCumulativeTotal
             FROM
             (
                 SELECT MgmtBet.RaceDate,
                        MgmtBet.JyoCD,
                        MgmtBet.Kaiji,
                        MgmtBet.Nichiji,
                        MgmtBet.RaceNum,
                        Race.HassoTime,
                        SUM(MgmtBet.BetMoney) AS BetMoneyHassoTimeTotal,
                        SUM(MgmtBet.HitMoney) AS HitMoneyHassoTimeTotal,
                        SUM(MgmtBet.ReturnMoney) AS ReturnMoneyHassoTimeTotal
                 FROM MgmtBet
                      INNER JOIN Race ON MgmtBet.RaceDate = Race.RaceDate
                                         AND MgmtBet.JyoCD = Race.JyoCD
                                         AND MgmtBet.Kaiji = Race.Kaiji
                                         AND MgmtBet.Nichiji = Race.Nichiji
                                         AND MgmtBet.RaceNum = Race.RaceNum
                 WHERE MgmtBet.RaceDate >= '2014-01-01'
                 GROUP BY MgmtBet.RaceDate,
                          MgmtBet.JyoCD,
                          MgmtBet.Kaiji,
                          MgmtBet.Nichiji,
                          MgmtBet.RaceNum,
                          Race.HassoTime
             ) tbl1
         ) tbl2
         GROUP BY tbl2.RaceDate
     ) tbl3 ON tbl4.RaceDate = tbl3.RaceDate;




GO
/****** Object:  View [dbo].[XSL_ViewStatsCandlestickMgmtBetByRaceDateAll]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[XSL_ViewStatsCandlestickMgmtBetByRaceDateAll]
AS
     SELECT tbl4.RaceDate,
            tbl3.BetMoneyTotalMax,
            tbl3.BetMoneyTotalMin,
            tbl4.BetMoneyTotal,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.BetMoneyTotal AS BetMoneyOpen,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.BetMoneyTotal + tbl3.BetMoneyTotalMax AS BetMoneyHigh,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.BetMoneyTotal + tbl3.BetMoneyTotalMin AS BetMoneyLow,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate) AS BetMoneyClose,
            tbl3.HitMoneyTotalMax,
            tbl3.HitMoneyTotalMin,
            tbl4.HitMoneyTotal,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.HitMoneyTotal AS HitMoneyOpen,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.HitMoneyTotal + tbl3.HitMoneyTotalMax AS HitMoneyHigh,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.HitMoneyTotal + tbl3.HitMoneyTotalMin AS HitMoneyLow,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate) AS HitMoneyClose,
            tbl3.ReturnMoneyTotalMax,
            tbl3.ReturnMoneyTotalMin,
            tbl4.ReturnMoneyTotal,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.ReturnMoneyTotal AS ReturnMoneyOpen,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.ReturnMoneyTotal + tbl3.ReturnMoneyTotalMax AS ReturnMoneyHigh,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.ReturnMoneyTotal + tbl3.ReturnMoneyTotalMin AS ReturnMoneyLow,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate) AS ReturnMoneyClose
     FROM
     (
         SELECT MgmtBet.RaceDate,
                SUM(MgmtBet.BetMoney) AS BetMoneyTotal,
                SUM(MgmtBet.HitMoney) AS HitMoneyTotal,
                SUM(MgmtBet.ReturnMoney) AS ReturnMoneyTotal
         FROM MgmtBet
         WHERE(dbo.MgmtBet.RaceDate >= CONVERT( DATETIME, '2014-01-01 00:00:00', 102))
         GROUP BY MgmtBet.RaceDate
     ) tbl4
     INNER JOIN
     (
         SELECT tbl2.RaceDate,
                MAX(tbl2.BetMoneyCumulativeTotal) AS BetMoneyTotalMax,
                MIN(tbl2.BetMoneyCumulativeTotal) AS BetMoneyTotalMin,
                MAX(tbl2.HitMoneyCumulativeTotal) AS HitMoneyTotalMax,
                MIN(tbl2.HitMoneyCumulativeTotal) AS HitMoneyTotalMin,
                MAX(tbl2.ReturnMoneyCumulativeTotal) AS ReturnMoneyTotalMax,
                MIN(tbl2.ReturnMoneyCumulativeTotal) AS ReturnMoneyTotalMin
         FROM
         (
             SELECT tbl1.RaceDate,
                    tbl1.JyoCD,
                    tbl1.Kaiji,
                    tbl1.Nichiji,
                    tbl1.RaceNum,
                    tbl1.BetMoneyHassoTimeTotal,
                    SUM(tbl1.BetMoneyHassoTimeTotal) OVER(PARTITION BY tbl1.RaceDate ORDER BY tbl1.RaceDate,
                                                                                              tbl1.JyoCD,
                                                                                              tbl1.Kaiji,
                                                                                              tbl1.Nichiji,
                                                                                              tbl1.RaceNum,
                                                                                              tbl1.HassoTime) AS BetMoneyCumulativeTotal,
                    tbl1.HitMoneyHassoTimeTotal,
                    SUM(tbl1.HitMoneyHassoTimeTotal) OVER(PARTITION BY tbl1.RaceDate ORDER BY tbl1.RaceDate,
                                                                                              tbl1.JyoCD,
                                                                                              tbl1.Kaiji,
                                                                                              tbl1.Nichiji,
                                                                                              tbl1.RaceNum,
                                                                                              tbl1.HassoTime) AS HitMoneyCumulativeTotal,
                    tbl1.ReturnMoneyHassoTimeTotal,
                    SUM(tbl1.ReturnMoneyHassoTimeTotal) OVER(PARTITION BY tbl1.RaceDate ORDER BY tbl1.RaceDate,
                                                                                                 tbl1.JyoCD,
                                                                                                 tbl1.Kaiji,
                                                                                                 tbl1.Nichiji,
                                                                                                 tbl1.RaceNum,
                                                                                                 tbl1.HassoTime) AS ReturnMoneyCumulativeTotal
             FROM
             (
                 SELECT MgmtBet.RaceDate,
                        MgmtBet.JyoCD,
                        MgmtBet.Kaiji,
                        MgmtBet.Nichiji,
                        MgmtBet.RaceNum,
                        Race.HassoTime,
                        SUM(MgmtBet.BetMoney) AS BetMoneyHassoTimeTotal,
                        SUM(MgmtBet.HitMoney) AS HitMoneyHassoTimeTotal,
                        SUM(MgmtBet.ReturnMoney) AS ReturnMoneyHassoTimeTotal
                 FROM MgmtBet
                      INNER JOIN Race ON MgmtBet.RaceDate = Race.RaceDate
                                         AND MgmtBet.JyoCD = Race.JyoCD
                                         AND MgmtBet.Kaiji = Race.Kaiji
                                         AND MgmtBet.Nichiji = Race.Nichiji
                                         AND MgmtBet.RaceNum = Race.RaceNum
                 WHERE MgmtBet.RaceDate >= '2014-01-01'
                 GROUP BY MgmtBet.RaceDate,
                          MgmtBet.JyoCD,
                          MgmtBet.Kaiji,
                          MgmtBet.Nichiji,
                          MgmtBet.RaceNum,
                          Race.HassoTime
             ) tbl1
         ) tbl2
         GROUP BY tbl2.RaceDate
     ) tbl3 ON tbl4.RaceDate = tbl3.RaceDate;




GO
/****** Object:  View [dbo].[XSL_ViewStatsCandlestickMgmtSimByHassoTime]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[XSL_ViewStatsCandlestickMgmtSimByHassoTime]
AS
     SELECT tbl4.RaceDate,
            tbl4.HassoTime,
            tbl3.BetMoneyTotalMax,
            tbl3.BetMoneyTotalMin,
            tbl4.BetMoneyTotal,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                  tbl4.HassoTime) - tbl4.BetMoneyTotal AS BetMoneyOpen,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                  tbl4.HassoTime) - tbl4.BetMoneyTotal + tbl3.BetMoneyTotalMax AS BetMoneyHigh,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                  tbl4.HassoTime) - tbl4.BetMoneyTotal + tbl3.BetMoneyTotalMin AS BetMoneyLow,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                  tbl4.HassoTime) AS BetMoneyClose,
            tbl3.HitMoneyTotalMax,
            tbl3.HitMoneyTotalMin,
            tbl4.HitMoneyTotal,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                  tbl4.HassoTime) - tbl4.HitMoneyTotal AS HitMoneyOpen,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                  tbl4.HassoTime) - tbl4.HitMoneyTotal + tbl3.HitMoneyTotalMax AS HitMoneyHigh,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                  tbl4.HassoTime) - tbl4.HitMoneyTotal + tbl3.HitMoneyTotalMin AS HitMoneyLow,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                  tbl4.HassoTime) AS HitMoneyClose,
            tbl3.ReturnMoneyTotalMax,
            tbl3.ReturnMoneyTotalMin,
            tbl4.ReturnMoneyTotal,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                     tbl4.HassoTime) - tbl4.ReturnMoneyTotal AS ReturnMoneyOpen,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                     tbl4.HassoTime) - tbl4.ReturnMoneyTotal + tbl3.ReturnMoneyTotalMax AS ReturnMoneyHigh,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                     tbl4.HassoTime) - tbl4.ReturnMoneyTotal + tbl3.ReturnMoneyTotalMin AS ReturnMoneyLow,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate,
                                                     tbl4.HassoTime) AS ReturnMoneyClose
     FROM
     (
         SELECT MgmtSim.RaceDate,
                Race.HassoTime,
                SUM(MgmtSim.BetMoney) AS BetMoneyTotal,
                SUM(MgmtSim.HitMoney) AS HitMoneyTotal,
                SUM(MgmtSim.ReturnMoney) AS ReturnMoneyTotal
         FROM MgmtSim
              INNER JOIN Race ON MgmtSim.RaceDate = Race.RaceDate
                                 AND MgmtSim.JyoCD = Race.JyoCD
                                 AND MgmtSim.Kaiji = Race.Kaiji
                                 AND MgmtSim.Nichiji = Race.Nichiji
                                 AND MgmtSim.RaceNum = Race.RaceNum
         WHERE(dbo.MgmtSim.RaceDate BETWEEN CONVERT( DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102))
         GROUP BY MgmtSim.RaceDate,
                  Race.HassoTime
     ) tbl4
     INNER JOIN
     (
         SELECT tbl2.RaceDate,
                tbl2.HassoTime,
                MAX(tbl2.BetMoneyCumulativeTotal) AS BetMoneyTotalMax,
                MIN(tbl2.BetMoneyCumulativeTotal) AS BetMoneyTotalMin,
                MAX(tbl2.HitMoneyCumulativeTotal) AS HitMoneyTotalMax,
                MIN(tbl2.HitMoneyCumulativeTotal) AS HitMoneyTotalMin,
                MAX(tbl2.ReturnMoneyCumulativeTotal) AS ReturnMoneyTotalMax,
                MIN(tbl2.ReturnMoneyCumulativeTotal) AS ReturnMoneyTotalMin
         FROM
         (
             SELECT tbl1.RaceDate,
                    tbl1.JyoCD,
                    tbl1.Kaiji,
                    tbl1.Nichiji,
                    tbl1.RaceNum,
                    tbl1.HassoTime,
                    tbl1.BetMoneyHassoTimeTotal,
                    SUM(tbl1.BetMoneyHassoTimeTotal) OVER(PARTITION BY tbl1.RaceDate,
                                                                       tbl1.HassoTime ORDER BY tbl1.RaceDate,
                                                                                               tbl1.JyoCD,
                                                                                               tbl1.Kaiji,
                                                                                               tbl1.Nichiji,
                                                                                               tbl1.RaceNum,
                                                                                               tbl1.HassoTime) AS BetMoneyCumulativeTotal,
                    tbl1.HitMoneyHassoTimeTotal,
                    SUM(tbl1.HitMoneyHassoTimeTotal) OVER(PARTITION BY tbl1.RaceDate,
                                                                       tbl1.HassoTime ORDER BY tbl1.RaceDate,
                                                                                               tbl1.JyoCD,
                                                                                               tbl1.Kaiji,
                                                                                               tbl1.Nichiji,
                                                                                               tbl1.RaceNum,
                                                                                               tbl1.HassoTime) AS HitMoneyCumulativeTotal,
                    tbl1.ReturnMoneyHassoTimeTotal,
                    SUM(tbl1.ReturnMoneyHassoTimeTotal) OVER(PARTITION BY tbl1.RaceDate,
                                                                          tbl1.HassoTime ORDER BY tbl1.RaceDate,
                                                                                                  tbl1.JyoCD,
                                                                                                  tbl1.Kaiji,
                                                                                                  tbl1.Nichiji,
                                                                                                  tbl1.RaceNum,
                                                                                                  tbl1.HassoTime) AS ReturnMoneyCumulativeTotal
             FROM
             (
                 SELECT MgmtSim.RaceDate,
                        MgmtSim.JyoCD,
                        MgmtSim.Kaiji,
                        MgmtSim.Nichiji,
                        MgmtSim.RaceNum,
                        Race.HassoTime,
                        SUM(MgmtSim.BetMoney) AS BetMoneyHassoTimeTotal,
                        SUM(MgmtSim.HitMoney) AS HitMoneyHassoTimeTotal,
                        SUM(MgmtSim.ReturnMoney) AS ReturnMoneyHassoTimeTotal
                 FROM MgmtSim
                      INNER JOIN Race ON MgmtSim.RaceDate = Race.RaceDate
                                         AND MgmtSim.JyoCD = Race.JyoCD
                                         AND MgmtSim.Kaiji = Race.Kaiji
                                         AND MgmtSim.Nichiji = Race.Nichiji
                                         AND MgmtSim.RaceNum = Race.RaceNum
                 GROUP BY MgmtSim.RaceDate,
                          MgmtSim.JyoCD,
                          MgmtSim.Kaiji,
                          MgmtSim.Nichiji,
                          MgmtSim.RaceNum,
                          Race.HassoTime
             ) tbl1
         ) tbl2
         GROUP BY tbl2.RaceDate,
                  tbl2.HassoTime
     ) tbl3 ON tbl4.RaceDate = tbl3.RaceDate
               AND tbl4.HassoTime = tbl3.HassoTime;




GO
/****** Object:  View [dbo].[XSL_ViewStatsCandlestickMgmtSimByRaceDate]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[XSL_ViewStatsCandlestickMgmtSimByRaceDate]
AS
     SELECT tbl4.RaceDate,
            tbl3.BetMoneyTotalMax,
            tbl3.BetMoneyTotalMin,
            tbl4.BetMoneyTotal,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.BetMoneyTotal AS BetMoneyOpen,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.BetMoneyTotal + tbl3.BetMoneyTotalMax AS BetMoneyHigh,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.BetMoneyTotal + tbl3.BetMoneyTotalMin AS BetMoneyLow,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate) AS BetMoneyClose,
            tbl3.HitMoneyTotalMax,
            tbl3.HitMoneyTotalMin,
            tbl4.HitMoneyTotal,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.HitMoneyTotal AS HitMoneyOpen,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.HitMoneyTotal + tbl3.HitMoneyTotalMax AS HitMoneyHigh,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.HitMoneyTotal + tbl3.HitMoneyTotalMin AS HitMoneyLow,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate) AS HitMoneyClose,
            tbl3.ReturnMoneyTotalMax,
            tbl3.ReturnMoneyTotalMin,
            tbl4.ReturnMoneyTotal,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.ReturnMoneyTotal AS ReturnMoneyOpen,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.ReturnMoneyTotal + tbl3.ReturnMoneyTotalMax AS ReturnMoneyHigh,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.ReturnMoneyTotal + tbl3.ReturnMoneyTotalMin AS ReturnMoneyLow,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate) AS ReturnMoneyClose
     FROM
     (
         SELECT MgmtSim.RaceDate,
                SUM(MgmtSim.BetMoney) AS BetMoneyTotal,
                SUM(MgmtSim.HitMoney) AS HitMoneyTotal,
                SUM(MgmtSim.ReturnMoney) AS ReturnMoneyTotal
         FROM MgmtSim
         WHERE(dbo.MgmtSim.RaceDate BETWEEN CONVERT( DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102))
         GROUP BY MgmtSim.RaceDate
     ) tbl4
     INNER JOIN
     (
         SELECT tbl2.RaceDate,
                MAX(tbl2.BetMoneyCumulativeTotal) AS BetMoneyTotalMax,
                MIN(tbl2.BetMoneyCumulativeTotal) AS BetMoneyTotalMin,
                MAX(tbl2.HitMoneyCumulativeTotal) AS HitMoneyTotalMax,
                MIN(tbl2.HitMoneyCumulativeTotal) AS HitMoneyTotalMin,
                MAX(tbl2.ReturnMoneyCumulativeTotal) AS ReturnMoneyTotalMax,
                MIN(tbl2.ReturnMoneyCumulativeTotal) AS ReturnMoneyTotalMin
         FROM
         (
             SELECT tbl1.RaceDate,
                    tbl1.JyoCD,
                    tbl1.Kaiji,
                    tbl1.Nichiji,
                    tbl1.RaceNum,
                    tbl1.BetMoneyHassoTimeTotal,
                    SUM(tbl1.BetMoneyHassoTimeTotal) OVER(PARTITION BY tbl1.RaceDate ORDER BY tbl1.RaceDate,
                                                                                              tbl1.JyoCD,
                                                                                              tbl1.Kaiji,
                                                                                              tbl1.Nichiji,
                                                                                              tbl1.RaceNum,
                                                                                              tbl1.HassoTime) AS BetMoneyCumulativeTotal,
                    tbl1.HitMoneyHassoTimeTotal,
                    SUM(tbl1.HitMoneyHassoTimeTotal) OVER(PARTITION BY tbl1.RaceDate ORDER BY tbl1.RaceDate,
                                                                                              tbl1.JyoCD,
                                                                                              tbl1.Kaiji,
                                                                                              tbl1.Nichiji,
                                                                                              tbl1.RaceNum,
                                                                                              tbl1.HassoTime) AS HitMoneyCumulativeTotal,
                    tbl1.ReturnMoneyHassoTimeTotal,
                    SUM(tbl1.ReturnMoneyHassoTimeTotal) OVER(PARTITION BY tbl1.RaceDate ORDER BY tbl1.RaceDate,
                                                                                                 tbl1.JyoCD,
                                                                                                 tbl1.Kaiji,
                                                                                                 tbl1.Nichiji,
                                                                                                 tbl1.RaceNum,
                                                                                                 tbl1.HassoTime) AS ReturnMoneyCumulativeTotal
             FROM
             (
                 SELECT MgmtSim.RaceDate,
                        MgmtSim.JyoCD,
                        MgmtSim.Kaiji,
                        MgmtSim.Nichiji,
                        MgmtSim.RaceNum,
                        Race.HassoTime,
                        SUM(MgmtSim.BetMoney) AS BetMoneyHassoTimeTotal,
                        SUM(MgmtSim.HitMoney) AS HitMoneyHassoTimeTotal,
                        SUM(MgmtSim.ReturnMoney) AS ReturnMoneyHassoTimeTotal
                 FROM MgmtSim
                      INNER JOIN Race ON MgmtSim.RaceDate = Race.RaceDate
                                         AND MgmtSim.JyoCD = Race.JyoCD
                                         AND MgmtSim.Kaiji = Race.Kaiji
                                         AND MgmtSim.Nichiji = Race.Nichiji
                                         AND MgmtSim.RaceNum = Race.RaceNum
                 WHERE(dbo.MgmtSim.RaceDate BETWEEN CONVERT( DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102))
                 GROUP BY MgmtSim.RaceDate,
                          MgmtSim.JyoCD,
                          MgmtSim.Kaiji,
                          MgmtSim.Nichiji,
                          MgmtSim.RaceNum,
                          Race.HassoTime
             ) tbl1
         ) tbl2
         GROUP BY tbl2.RaceDate

/*
																		ORDER BY
																		tbl2.RaceDate
																		*/

     ) tbl3 ON tbl4.RaceDate = tbl3.RaceDate;




GO
/****** Object:  View [dbo].[XSL_ViewStatsCandlestickMgmtSimByRaceDateAll]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[XSL_ViewStatsCandlestickMgmtSimByRaceDateAll]
AS
     SELECT tbl4.RaceDate,
            tbl3.BetMoneyTotalMax,
            tbl3.BetMoneyTotalMin,
            tbl4.BetMoneyTotal,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.BetMoneyTotal AS BetMoneyOpen,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.BetMoneyTotal + tbl3.BetMoneyTotalMax AS BetMoneyHigh,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.BetMoneyTotal + tbl3.BetMoneyTotalMin AS BetMoneyLow,
            SUM(tbl4.BetMoneyTotal) OVER(ORDER BY tbl4.RaceDate) AS BetMoneyClose,
            tbl3.HitMoneyTotalMax,
            tbl3.HitMoneyTotalMin,
            tbl4.HitMoneyTotal,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.HitMoneyTotal AS HitMoneyOpen,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.HitMoneyTotal + tbl3.HitMoneyTotalMax AS HitMoneyHigh,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.HitMoneyTotal + tbl3.HitMoneyTotalMin AS HitMoneyLow,
            SUM(tbl4.HitMoneyTotal) OVER(ORDER BY tbl4.RaceDate) AS HitMoneyClose,
            tbl3.ReturnMoneyTotalMax,
            tbl3.ReturnMoneyTotalMin,
            tbl4.ReturnMoneyTotal,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.ReturnMoneyTotal AS ReturnMoneyOpen,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.ReturnMoneyTotal + tbl3.ReturnMoneyTotalMax AS ReturnMoneyHigh,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate) - tbl4.ReturnMoneyTotal + tbl3.ReturnMoneyTotalMin AS ReturnMoneyLow,
            SUM(tbl4.ReturnMoneyTotal) OVER(ORDER BY tbl4.RaceDate) AS ReturnMoneyClose
     FROM
     (
         SELECT MgmtSim.RaceDate,
                SUM(MgmtSim.BetMoney) AS BetMoneyTotal,
                SUM(MgmtSim.HitMoney) AS HitMoneyTotal,
                SUM(MgmtSim.ReturnMoney) AS ReturnMoneyTotal
         FROM MgmtSim
         WHERE(dbo.MgmtSim.RaceDate BETWEEN CONVERT( DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102))
         GROUP BY MgmtSim.RaceDate
     ) tbl4
     INNER JOIN
     (
         SELECT tbl2.RaceDate,
                MAX(tbl2.BetMoneyCumulativeTotal) AS BetMoneyTotalMax,
                MIN(tbl2.BetMoneyCumulativeTotal) AS BetMoneyTotalMin,
                MAX(tbl2.HitMoneyCumulativeTotal) AS HitMoneyTotalMax,
                MIN(tbl2.HitMoneyCumulativeTotal) AS HitMoneyTotalMin,
                MAX(tbl2.ReturnMoneyCumulativeTotal) AS ReturnMoneyTotalMax,
                MIN(tbl2.ReturnMoneyCumulativeTotal) AS ReturnMoneyTotalMin
         FROM
         (
             SELECT tbl1.RaceDate,
                    tbl1.JyoCD,
                    tbl1.Kaiji,
                    tbl1.Nichiji,
                    tbl1.RaceNum,
                    tbl1.BetMoneyHassoTimeTotal,
                    SUM(tbl1.BetMoneyHassoTimeTotal) OVER(PARTITION BY tbl1.RaceDate ORDER BY tbl1.RaceDate,
                                                                                              tbl1.JyoCD,
                                                                                              tbl1.Kaiji,
                                                                                              tbl1.Nichiji,
                                                                                              tbl1.RaceNum,
                                                                                              tbl1.HassoTime) AS BetMoneyCumulativeTotal,
                    tbl1.HitMoneyHassoTimeTotal,
                    SUM(tbl1.HitMoneyHassoTimeTotal) OVER(PARTITION BY tbl1.RaceDate ORDER BY tbl1.RaceDate,
                                                                                              tbl1.JyoCD,
                                                                                              tbl1.Kaiji,
                                                                                              tbl1.Nichiji,
                                                                                              tbl1.RaceNum,
                                                                                              tbl1.HassoTime) AS HitMoneyCumulativeTotal,
                    tbl1.ReturnMoneyHassoTimeTotal,
                    SUM(tbl1.ReturnMoneyHassoTimeTotal) OVER(PARTITION BY tbl1.RaceDate ORDER BY tbl1.RaceDate,
                                                                                                 tbl1.JyoCD,
                                                                                                 tbl1.Kaiji,
                                                                                                 tbl1.Nichiji,
                                                                                                 tbl1.RaceNum,
                                                                                                 tbl1.HassoTime) AS ReturnMoneyCumulativeTotal
             FROM
             (
                 SELECT MgmtSim.RaceDate,
                        MgmtSim.JyoCD,
                        MgmtSim.Kaiji,
                        MgmtSim.Nichiji,
                        MgmtSim.RaceNum,
                        Race.HassoTime,
                        SUM(MgmtSim.BetMoney) AS BetMoneyHassoTimeTotal,
                        SUM(MgmtSim.HitMoney) AS HitMoneyHassoTimeTotal,
                        SUM(MgmtSim.ReturnMoney) AS ReturnMoneyHassoTimeTotal
                 FROM MgmtSim
                      INNER JOIN Race ON MgmtSim.RaceDate = Race.RaceDate
                                         AND MgmtSim.JyoCD = Race.JyoCD
                                         AND MgmtSim.Kaiji = Race.Kaiji
                                         AND MgmtSim.Nichiji = Race.Nichiji
                                         AND MgmtSim.RaceNum = Race.RaceNum
                 WHERE(dbo.MgmtSim.RaceDate BETWEEN CONVERT( DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102))
                 GROUP BY MgmtSim.RaceDate,
                          MgmtSim.JyoCD,
                          MgmtSim.Kaiji,
                          MgmtSim.Nichiji,
                          MgmtSim.RaceNum,
                          Race.HassoTime
             ) tbl1
         ) tbl2
         GROUP BY tbl2.RaceDate

/*
																		ORDER BY
																		tbl2.RaceDate
																		*/

     ) tbl3 ON tbl4.RaceDate = tbl3.RaceDate;




GO
/****** Object:  View [dbo].[Y_ViewMgmtBetSumByRaceNum]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Y_ViewMgmtBetSumByRaceNum]
AS
     SELECT RaceDate,
            JyoCD,
            Kaiji,
            Nichiji,
            RaceNum,
            CASE
                WHEN SUM(BetCount) > 0
                THEN 1
                ELSE 0
            END AS BetCountByRace,
            CASE
                WHEN SUM(HitCount) > 0
                THEN 1
                ELSE 0
            END AS HitCountByRace,
            SUM(BetMoney) AS BetMoneyByRace,
            SUM(HitMoney) AS HitMoneyByRace,
            SUM(ReturnMoney) AS ReturnMoneyByRace
     FROM dbo.MgmtBet
     GROUP BY RaceDate,
              JyoCD,
              Kaiji,
              Nichiji,
              RaceNum;




GO
/****** Object:  View [dbo].[Y_ViewMgmtBetSumByRaceNumBetTypeCD]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Y_ViewMgmtBetSumByRaceNumBetTypeCD]
AS
     SELECT t1.RaceDate,
            t1.JyoCD,
            t1.Kaiji,
            t1.Nichiji,
            t1.RaceNum,
            t1.BetTypeCD,
            MasterBetType.BetTypeContent
     FROM
     (
         SELECT RaceDate,
                JyoCD,
                Kaiji,
                Nichiji,
                RaceNum,
                BetTypeCD,
                CASE
                    WHEN SUM(BetCount) > 0
                    THEN 1
                    ELSE 0
                END AS BetCountByRace,
                CASE
                    WHEN SUM(HitCount) > 0
                    THEN 1
                    ELSE 0
                END AS HitCountByRace,
                SUM(BetMoney) AS BetMoneyByRace,
                SUM(HitMoney) AS HitMoneyByRace,
                SUM(ReturnMoney) AS ReturnMoneyByRace
         FROM dbo.MgmtBet
         GROUP BY RaceDate,
                  JyoCD,
                  Kaiji,
                  Nichiji,
                  RaceNum,
                  BetTypeCD
     ) AS t1
     INNER JOIN MasterBetType ON MasterBetType.BetTypeCD = t1.BetTypeCD;




GO
/****** Object:  View [dbo].[Y_ViewMgmtBetSumByRaceNumBetTypeCDTrackTypeCD]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Y_ViewMgmtBetSumByRaceNumBetTypeCDTrackTypeCD]
AS
     SELECT t1.RaceDate,
            t1.JyoCD,
            t1.Kaiji,
            t1.Nichiji,
            t1.RaceNum,
            t1.BetTypeCD,
            MasterBetType.BetTypeContent
     FROM
     (
         SELECT dbo.MgmtBet.RaceDate,
                dbo.MgmtBet.JyoCD,
                dbo.MgmtBet.Kaiji,
                dbo.MgmtBet.Nichiji,
                dbo.MgmtBet.RaceNum,
                dbo.MgmtBet.BetTypeCD,
                dbo.Race.TrackTypeCD,
                CASE
                    WHEN SUM(MgmtBet.BetCount) > 0
                    THEN 1
                    ELSE 0
                END AS BetCountByRace,
                CASE
                    WHEN SUM(MgmtBet.HitCount) > 0
                    THEN 1
                    ELSE 0
                END AS HitCountByRace,
                SUM(dbo.MgmtBet.BetMoney) AS BetMoneyByRace,
                SUM(dbo.MgmtBet.HitMoney) AS HitMoneyByRace,
                SUM(dbo.MgmtBet.ReturnMoney) AS ReturnMoneyByRace
         FROM dbo.MgmtBet
              INNER JOIN dbo.Race ON dbo.MgmtBet.RaceDate = dbo.Race.RaceDate
                                     AND dbo.MgmtBet.JyoCD = dbo.Race.JyoCD
                                     AND dbo.MgmtBet.Kaiji = dbo.Race.Kaiji
                                     AND dbo.MgmtBet.Nichiji = dbo.Race.Nichiji
                                     AND dbo.MgmtBet.RaceNum = dbo.Race.RaceNum
         GROUP BY dbo.MgmtBet.RaceDate,
                  dbo.MgmtBet.JyoCD,
                  dbo.MgmtBet.Kaiji,
                  dbo.MgmtBet.Nichiji,
                  dbo.MgmtBet.RaceNum,
                  dbo.MgmtBet.BetTypeCD,
                  dbo.Race.TrackTypeCD
     ) AS t1
     INNER JOIN MasterBetType ON MasterBetType.BetTypeCD = t1.BetTypeCD;




GO
/****** Object:  View [dbo].[Y_ViewMgmtBetSumByRaceNumBetTypeCDTrackTypeCDJyokenCD5]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Y_ViewMgmtBetSumByRaceNumBetTypeCDTrackTypeCDJyokenCD5]
AS
     SELECT t1.RaceDate,
            t1.JyoCD,
            t1.Kaiji,
            t1.Nichiji,
            t1.RaceNum,
            t1.BetTypeCD,
            MasterBetType.BetTypeContent,
            t1.TrackTypeCD,
            t1.JyokenCD5
     FROM
     (
         SELECT dbo.MgmtBet.RaceDate,
                dbo.MgmtBet.JyoCD,
                dbo.MgmtBet.Kaiji,
                dbo.MgmtBet.Nichiji,
                dbo.MgmtBet.RaceNum,
                dbo.MgmtBet.BetTypeCD,
                dbo.Race.TrackTypeCD,
                dbo.Race.JyokenCD5,
                CASE
                    WHEN SUM(MgmtBet.BetCount) > 0
                    THEN 1
                    ELSE 0
                END AS BetCountByRace,
                CASE
                    WHEN SUM(MgmtBet.HitCount) > 0
                    THEN 1
                    ELSE 0
                END AS HitCountByRace,
                SUM(dbo.MgmtBet.BetMoney) AS BetMoneyByRace,
                SUM(dbo.MgmtBet.HitMoney) AS HitMoneyByRace,
                SUM(dbo.MgmtBet.ReturnMoney) AS ReturnMoneyByRace
         FROM dbo.MgmtBet
              INNER JOIN dbo.Race ON dbo.MgmtBet.RaceDate = dbo.Race.RaceDate
                                     AND dbo.MgmtBet.JyoCD = dbo.Race.JyoCD
                                     AND dbo.MgmtBet.Kaiji = dbo.Race.Kaiji
                                     AND dbo.MgmtBet.Nichiji = dbo.Race.Nichiji
                                     AND dbo.MgmtBet.RaceNum = dbo.Race.RaceNum
         GROUP BY dbo.MgmtBet.RaceDate,
                  dbo.MgmtBet.JyoCD,
                  dbo.MgmtBet.Kaiji,
                  dbo.MgmtBet.Nichiji,
                  dbo.MgmtBet.RaceNum,
                  dbo.MgmtBet.BetTypeCD,
                  dbo.Race.TrackTypeCD,
                  dbo.Race.JyokenCD5
     ) AS t1
     INNER JOIN MasterBetType ON MasterBetType.BetTypeCD = t1.BetTypeCD;




GO
/****** Object:  View [dbo].[Z_R_G_1_703_00_0000]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Z_R_G_1_703_00_0000]
AS
	SELECT dbo.RaceHorse.StdTimeDev AS [RaceHorse.StdTimeDev],
		  dbo.RaceHorse.StdTime AS [RaceHorse.StdTime],
		  dbo.RaceHorse.IsHit_1 AS [RaceHorse.IsHit_1],
		  dbo.RaceHorse.IsHit_12 AS [RaceHorse.IsHit_12],
		  dbo.RaceHorse.IsHit_123 AS [RaceHorse.IsHit_123],
		  dbo.RaceHorse.KakuteiJyuni AS [RaceHorse.KakuteiJyuni],
		  dbo.RaceHorseBet.PayoffWin AS [RaceHorse.PayoffWin],
		  dbo.RaceHorseBet.PayoffWinLog AS [RaceHorse.PayoffWinLog],
		  dbo.RaceHorseBet.PayoffPlace AS [RaceHorse.PayoffPlace],
		  dbo.RaceHorseBet.PayoffPlaceLog AS [RaceHorse.PayoffPlaceLog],
		  dbo.Race.JyoCD AS [Race.JyoCD],
		  dbo.Race.TrackTypeCD AS [Race.TrackTypeCD],
		  dbo.Race.JyokenCD5 AS [Race.JyokenCD5],
		  dbo.Race.Kyori AS [Race.Kyori],
		  dbo.Race.TenkoCD AS [Race.TenkoCD],
		  dbo.Race.TrackConditionCD AS [Race.TrackConditionCD],
		  dbo.RaceHorse.BaTaijyu AS [RaceHorse.BaTaijyu],
		  dbo.RaceHorse.Futan AS [RaceHorse.Futan],
		  dbo.RaceHorse.IsBlinker AS [RaceHorse.IsBlinker],
		  dbo.RaceHorse.ZogenSa AS [RaceHorse.ZogenSa],
		  dbo.RaceHorse.ZogenPercent AS [RaceHorse.ZogenPercent],
		  dbo.RaceHorse.FutanPercent AS [RaceHorse.FutanPercent],
		  dbo.RaceHorse.LifeTime AS [RaceHorse.LifeTime],
		  dbo.RaceHorse.Ninki AS [RaceHorse.Ninki],
		  dbo.RaceHorse.IsNinki_01 AS [RaceHorse.IsNinki_01],
		  dbo.RaceHorse.IsNinki_02 AS [RaceHorse.IsNinki_02],
		  dbo.RaceHorse.IsNinki_03 AS [RaceHorse.IsNinki_03],
		  dbo.RaceHorse.IsNinki_04 AS [RaceHorse.IsNinki_04],
		  dbo.RaceHorse.IsNinki_05 AS [RaceHorse.IsNinki_05],
		  dbo.RaceHorse.IsNinki_06 AS [RaceHorse.IsNinki_06],
		  dbo.RaceHorse.IsNinki_07 AS [RaceHorse.IsNinki_07],
		  dbo.RaceHorse.IsNinki_08 AS [RaceHorse.IsNinki_08],
		  dbo.RaceHorse.IsNinki_09 AS [RaceHorse.IsNinki_09],
		  dbo.RaceHorse.IsNinki_10 AS [RaceHorse.IsNinki_10],
		  dbo.RaceHorse.IsNinki_11 AS [RaceHorse.IsNinki_11],
		  dbo.RaceHorse.IsNinki_12 AS [RaceHorse.IsNinki_12],
		  dbo.RaceHorse.IsNinki_13 AS [RaceHorse.IsNinki_13],
		  dbo.RaceHorse.IsNinki_14 AS [RaceHorse.IsNinki_14],
		  dbo.RaceHorse.IsNinki_15 AS [RaceHorse.IsNinki_15],
		  dbo.RaceHorse.IsNinki_16 AS [RaceHorse.IsNinki_16],
		  dbo.RaceHorse.IsNinki_17 AS [RaceHorse.IsNinki_17],
		  dbo.RaceHorse.IsNinki_18 AS [RaceHorse.IsNinki_18],
		  dbo.RaceHorse.Prev1TrackTypeCD AS [RaceHorse.Prev1TrackTypeCD],
		  dbo.RaceHorse.IsPrev1TrackTypeCD_1 AS [RaceHorse.IsPrev1TrackTypeCD_1],
		  dbo.RaceHorse.IsPrev1TrackTypeCD_2 AS [RaceHorse.IsPrev1TrackTypeCD_2],
		  dbo.RaceHorse.IsPrev1TrackTypeCD_3 AS [RaceHorse.IsPrev1TrackTypeCD_3],
		  dbo.RaceHorse.Prev1JyokenCD5 AS [RaceHorse.Prev1JyokenCD5],
		  dbo.RaceHorse.IsPrev1JyokenCD5_005 AS [RaceHorse.IsPrev1JyokenCD5_005],
		  dbo.RaceHorse.IsPrev1JyokenCD5_010 AS [RaceHorse.IsPrev1JyokenCD5_010],
		  dbo.RaceHorse.IsPrev1JyokenCD5_016 AS [RaceHorse.IsPrev1JyokenCD5_016],
		  dbo.RaceHorse.IsPrev1JyokenCD5_701 AS [RaceHorse.IsPrev1JyokenCD5_701],
		  dbo.RaceHorse.IsPrev1JyokenCD5_703 AS [RaceHorse.IsPrev1JyokenCD5_703],
		  dbo.RaceHorse.IsPrev1JyokenCD5_999 AS [RaceHorse.IsPrev1JyokenCD5_999],
		  dbo.RaceHorse.IsPrev1JyokenCD5_Up AS [RaceHorse.IsPrev1JyokenCD5_Up],
		  dbo.RaceHorse.IsPrev1JyokenCD5_Down AS [RaceHorse.IsPrev1JyokenCD5_Down],
		  dbo.RaceHorse.Prev1RaceResult AS [RaceHorse.Prev1RaceResult],
		  dbo.RaceHorse.IsPrev1RaceResult_01 AS [RaceHorse.IsPrev1RaceResult_01],
		  dbo.RaceHorse.IsPrev1RaceResult_02 AS [RaceHorse.IsPrev1RaceResult_02],
		  dbo.RaceHorse.IsPrev1RaceResult_03 AS [RaceHorse.IsPrev1RaceResult_03],
		  dbo.RaceHorse.IsPrev1RaceResult_04 AS [RaceHorse.IsPrev1RaceResult_04],
		  dbo.RaceHorse.IsPrev1RaceResult_05 AS [RaceHorse.IsPrev1RaceResult_05],
		  dbo.RaceHorse.IsPrev1RaceResult_06 AS [RaceHorse.IsPrev1RaceResult_06],
		  dbo.RaceHorse.IsPrev1RaceResult_07 AS [RaceHorse.IsPrev1RaceResult_07],
		  dbo.RaceHorse.IsPrev1RaceResult_08 AS [RaceHorse.IsPrev1RaceResult_08],
		  dbo.RaceHorse.IsPrev1RaceResult_09 AS [RaceHorse.IsPrev1RaceResult_09],
		  dbo.RaceHorse.IsPrev1RaceResult_10 AS [RaceHorse.IsPrev1RaceResult_10],
		  dbo.RaceHorse.IsPrev1RaceResult_11 AS [RaceHorse.IsPrev1RaceResult_11],
		  dbo.RaceHorse.IsPrev1RaceResult_12 AS [RaceHorse.IsPrev1RaceResult_12],
		  dbo.RaceHorse.IsPrev1RaceResult_13 AS [RaceHorse.IsPrev1RaceResult_13],
		  dbo.RaceHorse.IsPrev1RaceResult_14 AS [RaceHorse.IsPrev1RaceResult_14],
		  dbo.RaceHorse.IsPrev1RaceResult_15 AS [RaceHorse.IsPrev1RaceResult_15],
		  dbo.RaceHorse.IsPrev1RaceResult_16 AS [RaceHorse.IsPrev1RaceResult_16],
		  dbo.RaceHorse.IsPrev1RaceResult_17 AS [RaceHorse.IsPrev1RaceResult_17],
		  dbo.RaceHorse.IsPrev1RaceResult_18 AS [RaceHorse.IsPrev1RaceResult_18],
		  dbo.DataMining.DMTime AS [DataMining.DMTime],
		  dbo.DataMining.DMTimeP AS [DataMining.DMTimeP],
		  dbo.DataMining.DMTimeM AS [DataMining.DMTimeM],
		  dbo.DataMining.DMStdTime AS [DataMining.DMStdTime],
		  dbo.DataMining.DMStdTimeDev AS [DataMining.DMStdTimeDev],
		  dbo.Odds1ByWin.BetCount AS [Odds1ByWin.BetCount],
		  dbo.Odds1ByWin.Odds1 AS [Odds1ByWin.Odds1],
		  dbo.Odds1ByWin.Odds1Log AS [Odds1ByWin.Odds1Log],
		  dbo.Odds1ByWin.OddsRate1 AS [Odds1ByWin.OddsRate1],
		  dbo.Odds1ByWin.OddsInverse1 AS [Odds1ByWin.OddsInverse1],
		  dbo.Odds1ByWin.OddsInverse1Log AS [Odds1ByWin.OddsInverse1Log],
		  dbo.Odds1ByWin.ApprovalRateWin AS [Odds1ByWin.ApprovalRateWin],
		  dbo.Odds1ByWin.ApprovalRateWinLog AS [Odds1ByWin.ApprovalRateWinLog],
		  dbo.Odds1ByPlace.Odds1 AS [Odds1ByPlace.Odds1],
		  dbo.Odds1ByPlace.Odds1Log AS [Odds1ByPlace.Odds1Log],
		  dbo.Odds1ByPlace.Odds2 AS [Odds1ByPlace.Odds2],
		  dbo.Odds1ByPlace.Odds2Log AS [Odds1ByPlace.Odds2Log],
		  dbo.Odds1ByPlace.OddsRate1 AS [Odds1ByPlace.OddsRate1],
		  dbo.Odds1ByPlace.OddsRate2 AS [Odds1ByPlace.OddsRate2],
		  dbo.Odds1ByPlace.OddsInverse1 AS [Odds1ByPlace.OddsInverse1],
		  dbo.Odds1ByPlace.OddsInverse2 AS [Odds1ByPlace.OddsInverse2],
		  dbo.Odds1ByPlace.OddsInverse1Log AS [Odds1ByPlace.OddsInverse1Log],
		  dbo.Odds1ByPlace.OddsInverse2Log AS [Odds1ByPlace.OddsInverse2Log],
		  dbo.Odds1ByPlace.ApprovalRatePlace1 AS [Odds1ByPlace.ApprovalRatePlace1],
		  dbo.Odds1ByPlace.ApprovalRatePlace1Log AS [Odds1ByPlace.ApprovalRatePlace1Log],
		  dbo.Odds1ByPlace.ApprovalRatePlace2 AS [Odds1ByPlace.ApprovalRatePlace2],
		  dbo.Odds1ByPlace.ApprovalRatePlace2Log AS [Odds1ByPlace.ApprovalRatePlace2Log],
		  dbo.RaceResultByBanusi.HonSyokinTotal AS [RaceResultByBanusi.HonSyokinTotal],
		  dbo.RaceResultByBanusi.HonSyokinTotalLog AS [RaceResultByBanusi.HonSyokinTotalLog],
		  dbo.RaceResultByBanusi.FukaSyokin AS [RaceResultByBanusi.FukaSyokin],
		  dbo.RaceResultByBanusi.FukaSyokinLog AS [RaceResultByBanusi.FukaSyokinLog],
		  dbo.RaceResultByBanusiByTotal.RunCount AS [RaceResultByBanusiByTotal.RunCount],
		  dbo.RaceResultByBanusiByTotal.RunCountLog AS [RaceResultByBanusiByTotal.RunCountLog],
		  dbo.RaceResultByBanusiByTotal.HitCount1 AS [RaceResultByBanusiByTotal.HitCount1],
		  dbo.RaceResultByBanusiByTotal.HitCount1Log AS [RaceResultByBanusiByTotal.HitCount1Log],
		  dbo.RaceResultByBanusiByTotal.HitRate1 AS [RaceResultByBanusiByTotal.HitRate1],
		  dbo.RaceResultByBanusiByTotal.HitRate1Log AS [RaceResultByBanusiByTotal.HitRate1Log],
		  dbo.RaceResultByBanusiByTotal.HitCount12 AS [RaceResultByBanusiByTotal.HitCount12],
		  dbo.RaceResultByBanusiByTotal.HitCount12Log AS [RaceResultByBanusiByTotal.HitCount12Log],
		  dbo.RaceResultByBanusiByTotal.HitRate12 AS [RaceResultByBanusiByTotal.HitRate12],
		  dbo.RaceResultByBanusiByTotal.HitRate12Log AS [RaceResultByBanusiByTotal.HitRate12Log],
		  dbo.RaceResultByBanusiByTotal.HitCount123 AS [RaceResultByBanusiByTotal.HitCount123],
		  dbo.RaceResultByBanusiByTotal.HitCount123Log AS [RaceResultByBanusiByTotal.HitCount123Log],
		  dbo.RaceResultByBanusiByTotal.HitRate123 AS [RaceResultByBanusiByTotal.HitRate123],
		  dbo.RaceResultByBanusiByTotal.HitRate123Log AS [RaceResultByBanusiByTotal.HitRate123Log],
		  dbo.RaceResultByBanusiByTotal.OddsWin AS [RaceResultByBanusiByTotal.OddsWin],
		  dbo.RaceResultByBanusiByTotal.OddsWinLog AS [RaceResultByBanusiByTotal.OddsWinLog],
		  dbo.RaceResultByBanusiByTotal.OddsPlace1 AS [RaceResultByBanusiByTotal.OddsPlace1],
		  dbo.RaceResultByBanusiByTotal.OddsPlace1Log AS [RaceResultByBanusiByTotal.OddsPlace1Log],
		  dbo.RaceResultByBanusiByTotal.OddsPlace2 AS [RaceResultByBanusiByTotal.OddsPlace2],
		  dbo.RaceResultByBanusiByTotal.OddsPlace2Log AS [RaceResultByBanusiByTotal.OddsPlace2Log],
		  dbo.RaceResultByBanusiByTotal.OddsWinInverse AS [RaceResultByBanusiByTotal.OddsWinInvers],
		  dbo.RaceResultByBanusiByTotal.OddsWinInverseLog AS [RaceResultByBanusiByTotal.OddsWinInverseLog],
		  dbo.RaceResultByBanusiByTotal.OddsPlaceInverse1 AS [RaceResultByBanusiByTotal.OddsPlaceInverse1],
		  dbo.RaceResultByBanusiByTotal.OddsPlaceInverse1Log AS [RaceResultByBanusiByTotal.OddsPlaceInverse1Log],
		  dbo.RaceResultByBanusiByTotal.OddsPlaceInverse2 AS [RaceResultByBanusiByTotal.OddsPlaceInverse2],
		  dbo.RaceResultByBanusiByTotal.OddsPlaceInverse2Log AS [RaceResultByBanusiByTotal.OddsPlaceInverse2Log],
		  dbo.RaceResultByBanusiByTotal.ApprovalRateWin AS [RaceResultByBanusiByTotal.ApprovalRateWin],
		  dbo.RaceResultByBanusiByTotal.ApprovalRateWinLog AS [RaceResultByBanusiByTotal.ApprovalRateWinLog],
		  dbo.RaceResultByBanusiByTotal.ApprovalRatePlace1 AS [RaceResultByBanusiByTotal.ApprovalRatePlace1],
		  dbo.RaceResultByBanusiByTotal.ApprovalRatePlace1Log AS [RaceResultByBanusiByTotal.ApprovalRatePlace1Log],
		  dbo.RaceResultByBanusiByTotal.ApprovalRatePlace2 AS [RaceResultByBanusiByTotal.ApprovalRatePlace2],
		  dbo.RaceResultByBanusiByTotal.ApprovalRatePlace2Log AS [RaceResultByBanusiByTotal.ApprovalRatePlace2Log],
		  dbo.RaceResultByBanusiByTotal.ExpectedValueWin AS [RaceResultByBanusiByTotal.ExpectedValueWin],
		  dbo.RaceResultByBanusiByTotal.ExpectedValueWinLog AS [RaceResultByBanusiByTotal.ExpectedValueWinLog],
		  dbo.RaceResultByBanusiByTotal.ExpectedValuePlace AS [RaceResultByBanusiByTotal.ExpectedValuePlace],
		  dbo.RaceResultByBanusiByTotal.ExpectedValuePlaceLog AS [RaceResultByBanusiByTotal.ExpectedValuePlaceLog],
		  dbo.RaceResultByBanusiByTotal.StdTime AS [RaceResultByBanusiByTotal.StdTime],
		  dbo.RaceResultByBanusiByTotal.StdTimeDev AS [RaceResultByBanusiByTotal.StdTimeDev],
		  dbo.RaceResultByBreeder.HonSyokinTotal AS [RaceResultByBreeder.HonSyokinTotal],
		  dbo.RaceResultByBreeder.HonSyokinTotalLog AS [RaceResultByBreeder.HonSyokinTotalLog],
		  dbo.RaceResultByBreeder.FukaSyokin AS [RaceResultByBreeder.FukaSyokin],
		  dbo.RaceResultByBreeder.FukaSyokinLog AS [RaceResultByBreeder.FukaSyokinLog],
		  dbo.RaceResultByBreederByTotal.RunCount AS [RaceResultByBreederByTotal.RunCount],
		  dbo.RaceResultByBreederByTotal.RunCountLog AS [RaceResultByBreederByTotal.RunCountLog],
		  dbo.RaceResultByBreederByTotal.HitCount1 AS [RaceResultByBreederByTotal.HitCount1],
		  dbo.RaceResultByBreederByTotal.HitCount1Log AS [RaceResultByBreederByTotal.HitCount1Log],
		  dbo.RaceResultByBreederByTotal.HitRate1 AS [RaceResultByBreederByTotal.HitRate1],
		  dbo.RaceResultByBreederByTotal.HitRate1Log AS [RaceResultByBreederByTotal.HitRate1Log],
		  dbo.RaceResultByBreederByTotal.HitCount12 AS [RaceResultByBreederByTotal.HitCount2],
		  dbo.RaceResultByBreederByTotal.HitCount12Log AS [RaceResultByBreederByTotal.HitCount12Log],
		  dbo.RaceResultByBreederByTotal.HitRate2 AS [RaceResultByBreederByTotal.HitRate12],
		  dbo.RaceResultByBreederByTotal.HitCount123 AS [RaceResultByBreederByTotal.HitCount123],
		  dbo.RaceResultByBreederByTotal.HitCount123Log AS [RaceResultByBreederByTotal.HitCount123Log],
		  dbo.RaceResultByBreederByTotal.HitRate123 AS [RaceResultByBreederByTotal.HitRate123],
		  dbo.RaceResultByBreederByTotal.HitRate123Log AS [RaceResultByBreederByTotal.HitRate123Log],
		  dbo.RaceResultByBreederByTotal.OddsWin AS [RaceResultByBreederByTotal.OddsWin],
		  dbo.RaceResultByBreederByTotal.OddsWinLog AS [RaceResultByBreederByTotal.OddsWinLog],
		  dbo.RaceResultByBreederByTotal.OddsPlace1 AS [RaceResultByBreederByTotal.OddsPlace1],
		  dbo.RaceResultByBreederByTotal.OddsPlace1Log AS [RaceResultByBreederByTotal.OddsPlace1Log],
		  dbo.RaceResultByBreederByTotal.OddsPlace2 AS [RaceResultByBreederByTotal.OddsPlace2],
		  dbo.RaceResultByBreederByTotal.OddsPlace2Log AS [RaceResultByBreederByTotal.OddsPlace2Log],
		  dbo.RaceResultByBreederByTotal.OddsWinInverse AS [RaceResultByBreederByTotal.OddsWinInvers],
		  dbo.RaceResultByBreederByTotal.OddsWinInverseLog AS [RaceResultByBreederByTotal.OddsWinInverseLog],
		  dbo.RaceResultByBreederByTotal.OddsPlaceInverse1 AS [RaceResultByBreederByTotal.OddsPlaceInverse1],
		  dbo.RaceResultByBreederByTotal.OddsPlaceInverse1Log AS [RaceResultByBreederByTotal.OddsPlaceInverse1Log],
		  dbo.RaceResultByBreederByTotal.OddsPlaceInverse2 AS [RaceResultByBreederByTotal.OddsPlaceInverse2],
		  dbo.RaceResultByBreederByTotal.OddsPlaceInverse2Log AS [RaceResultByBreederByTotal.OddsPlaceInverse2Log],
		  dbo.RaceResultByBreederByTotal.ApprovalRateWin AS [RaceResultByBreederByTotal.ApprovalRateWin],
		  dbo.RaceResultByBreederByTotal.ApprovalRateWinLog AS [RaceResultByBreederByTotal.ApprovalRateWinLog],
		  dbo.RaceResultByBreederByTotal.ApprovalRatePlace1 AS [RaceResultByBreederByTotal.ApprovalRatePlace1],
		  dbo.RaceResultByBreederByTotal.ApprovalRatePlace1Log AS [RaceResultByBreederByTotal.ApprovalRatePlace1Log],
		  dbo.RaceResultByBreederByTotal.ApprovalRatePlace2 AS [RaceResultByBreederByTotal.ApprovalRatePlace2],
		  dbo.RaceResultByBreederByTotal.ApprovalRatePlace2Log AS [RaceResultByBreederByTotal.ApprovalRatePlace2Log],
		  dbo.RaceResultByBreederByTotal.ExpectedValueWin AS [RaceResultByBreederByTotal.ExpectedValueWin],
		  dbo.RaceResultByBreederByTotal.ExpectedValueWinLog AS [RaceResultByBreederByTotal.ExpectedValueWinLog],
		  dbo.RaceResultByBreederByTotal.ExpectedValuePlace AS [RaceResultByBreederByTotal.ExpectedValuePlace],
		  dbo.RaceResultByBreederByTotal.ExpectedValuePlaceLog AS [RaceResultByBreederByTotal.ExpectedValuePlaceLog],
		  dbo.RaceResultByBreederByTotal.StdTime AS [RaceResultByBreederByTotal.StdTime],
		  dbo.RaceResultByBreederByTotal.StdTimeDev AS [RaceResultByBreederByTotal.StdTimeDev],
		  dbo.RaceResultByHorse.RuikeiHonsyoHeiti AS [RaceResultByHorse.RuikeiHonsyoHeiti],
		  dbo.RaceResultByHorse.RuikeiHonsyoHeitiLog AS [RaceResultByHorse.RuikeiHonsyoHeitiLog],
		  dbo.RaceResultByHorse.RuikeiHonsyoSyogai AS [RaceResultByHorse.RuikeiHonsyoSyogai],
		  dbo.RaceResultByHorse.RuikeiHonsyoSyogaiLog AS [RaceResultByHorse.RuikeiHonsyoSyogaiLog],
/*
		, dbo.RaceResultByHorseByCourseType.RunCount AS [RaceResultByHorseByCourseType.RunCount]
		, dbo.RaceResultByHorseByCourseType.RunCountLog AS [RaceResultByHorseByCourseType.RunCountLog]
		, dbo.RaceResultByHorseByCourseType.HitCount1 AS [RaceResultByHorseByCourseType.HitCount1]
		, dbo.RaceResultByHorseByCourseType.HitCount1Log AS [RaceResultByHorseByCourseType.HitCount1Log]
		, dbo.RaceResultByHorseByCourseType.HitRate1 AS [RaceResultByHorseByCourseType.HitRate1]
		, dbo.RaceResultByHorseByCourseType.HitRate1Log AS [RaceResultByHorseByCourseType.HitRate1Log]
		, dbo.RaceResultByHorseByCourseType.HitCount12 AS [RaceResultByHorseByCourseType.HitCount12]
		, dbo.RaceResultByHorseByCourseType.HitCount12Log AS [RaceResultByHorseByCourseType.HitCount12Log]
		, dbo.RaceResultByHorseByCourseType.HitRate12 AS [RaceResultByHorseByCourseType.HitRate12]
		, dbo.RaceResultByHorseByCourseType.HitRate12Log AS [RaceResultByHorseByCourseType.HitRate12Log]
		, dbo.RaceResultByHorseByCourseType.HitCount123 AS [RaceResultByHorseByCourseType.HitCount123]
		, dbo.RaceResultByHorseByCourseType.HitCount123Log AS [RaceResultByHorseByCourseType.HitCount123Log]
		, dbo.RaceResultByHorseByCourseType.HitRate123 AS [RaceResultByHorseByCourseType.HitRate123]
		, dbo.RaceResultByHorseByCourseType.HitRate123Log AS [RaceResultByHorseByCourseType.HitRate123Log]
		, dbo.RaceResultByHorseByCourseType.OddsWin AS [RaceResultByHorseByCourseType.OddsWin]
		, dbo.RaceResultByHorseByCourseType.OddsWinLog AS [RaceResultByHorseByCourseType.OddsWinLog]
		, dbo.RaceResultByHorseByCourseType.OddsPlace1 AS [RaceResultByHorseByCourseType.OddsPlace1]
		, dbo.RaceResultByHorseByCourseType.OddsPlace1Log AS [RaceResultByHorseByCourseType.OddsPlace1Log]
		, dbo.RaceResultByHorseByCourseType.OddsPlace2 AS [RaceResultByHorseByCourseType.OddsPlace2]
		, dbo.RaceResultByHorseByCourseType.OddsPlace2Log AS [RaceResultByHorseByCourseType.OddsPlace2Log]
		, dbo.RaceResultByHorseByCourseType.OddsWinInverse AS [RaceResultByHorseByCourseType.OddsWinInvers]
		, dbo.RaceResultByHorseByCourseType.OddsWinInverseLog AS [RaceResultByHorseByCourseType.OddsWinInverseLog]
		, dbo.RaceResultByHorseByCourseType.OddsPlaceInverse1 AS [RaceResultByHorseByCourseType.OddsPlaceInverse1]
		, dbo.RaceResultByHorseByCourseType.OddsPlaceInverse1Log AS [RaceResultByHorseByCourseType.OddsPlaceInverse1Log]
		, dbo.RaceResultByHorseByCourseType.OddsPlaceInverse2 AS [RaceResultByHorseByCourseType.OddsPlaceInverse2]
		, dbo.RaceResultByHorseByCourseType.OddsPlaceInverse2Log AS [RaceResultByHorseByCourseType.OddsPlaceInverse2Log]
		, dbo.RaceResultByHorseByCourseType.ApprovalRateWin AS [RaceResultByHorseByCourseType.ApprovalRateWin]
		, dbo.RaceResultByHorseByCourseType.ApprovalRatePlace1 AS [RaceResultByHorseByCourseType.ApprovalRatePlace1]
		, dbo.RaceResultByHorseByCourseType.ApprovalRatePlace2 AS [RaceResultByHorseByCourseType.ApprovalRatePlace2]
		, dbo.RaceResultByHorseByCourseType.ApprovalRateWinLog AS [RaceResultByHorseByCourseType.ApprovalRateWinLog]
		, dbo.RaceResultByHorseByCourseType.ApprovalRatePlace1Log AS [RaceResultByHorseByCourseType.ApprovalRatePlace1Log]
		, dbo.RaceResultByHorseByCourseType.ApprovalRatePlace2Log AS [RaceResultByHorseByCourseType.ApprovalRatePlace2Log]
		, dbo.RaceResultByHorseByCourseType.ExpectedValueWin AS [RaceResultByHorseByCourseType.ExpectedValueWin]
		, dbo.RaceResultByHorseByCourseType.ExpectedValueWinLog AS [RaceResultByHorseByCourseType.ExpectedValueWinLog]
		, dbo.RaceResultByHorseByCourseType.ExpectedValuePlace AS [RaceResultByHorseByCourseType.ExpectedValuePlace]
		, dbo.RaceResultByHorseByCourseType.ExpectedValuePlaceLog AS [RaceResultByHorseByCourseType.ExpectedValuePlaceLog]
		, dbo.RaceResultByHorseByCourseType.StdTime AS [RaceResultByHorseByCourseType.StdTime]
		, dbo.RaceResultByHorseByCourseType.StdTimeDev AS [RaceResultByHorseByCourseType.StdTimeDev]
*/
/*
		, dbo.RaceResultByHorseByDistanceType.RunCount AS [RaceResultByHorseByDistanceType.RunCount]
		, dbo.RaceResultByHorseByDistanceType.RunCountLog AS [RaceResultByHorseByDistanceType.RunCountLog]
		, dbo.RaceResultByHorseByDistanceType.HitCount1 AS [RaceResultByHorseByDistanceType.HitCount1]
		, dbo.RaceResultByHorseByDistanceType.HitCount1Log AS [RaceResultByHorseByDistanceType.HitCount1Log]
		, dbo.RaceResultByHorseByDistanceType.HitRate1 AS [RaceResultByHorseByDistanceType.HitRate1]
		, dbo.RaceResultByHorseByDistanceType.HitRate1Log AS [RaceResultByHorseByDistanceType.HitRate1Log]
		, dbo.RaceResultByHorseByDistanceType.HitCount12 AS [RaceResultByHorseByDistanceType.HitCount12]
		, dbo.RaceResultByHorseByDistanceType.HitCount12Log AS [RaceResultByHorseByDistanceType.HitCount12Log]
		, dbo.RaceResultByHorseByDistanceType.HitRate12 AS [RaceResultByHorseByDistanceType.HitRate12]
		, dbo.RaceResultByHorseByDistanceType.HitRate12Log AS [RaceResultByHorseByDistanceType.HitRate12Log]
		, dbo.RaceResultByHorseByDistanceType.HitCount123 AS [RaceResultByHorseByDistanceType.HitCount123]
		, dbo.RaceResultByHorseByDistanceType.HitCount123Log AS [RaceResultByHorseByDistanceType.HitCount123Log]
		, dbo.RaceResultByHorseByDistanceType.HitRate123 AS [RaceResultByHorseByDistanceType.HitRate123]
		, dbo.RaceResultByHorseByDistanceType.HitRate123Log AS [RaceResultByHorseByDistanceType.HitRate123Log]
		, dbo.RaceResultByHorseByDistanceType.OddsWin AS [RaceResultByHorseByDistanceType.OddsWin]
		, dbo.RaceResultByHorseByDistanceType.OddsWinLog AS [RaceResultByHorseByDistanceType.OddsWinLog]
		, dbo.RaceResultByHorseByDistanceType.OddsPlace1 AS [RaceResultByHorseByDistanceType.OddsPlace1]
		, dbo.RaceResultByHorseByDistanceType.OddsPlace1Log AS [RaceResultByHorseByDistanceType.OddsPlace1Log]
		, dbo.RaceResultByHorseByDistanceType.OddsPlace2 AS [RaceResultByHorseByDistanceType.OddsPlace2]
		, dbo.RaceResultByHorseByDistanceType.OddsPlace2Log AS [RaceResultByHorseByDistanceType.OddsPlace2Log]
		, dbo.RaceResultByHorseByDistanceType.OddsWinInverse AS [RaceResultByHorseByDistanceType.OddsWinInvers]
		, dbo.RaceResultByHorseByDistanceType.OddsWinInverseLog AS [RaceResultByHorseByDistanceType.OddsWinInverseLog]
		, dbo.RaceResultByHorseByDistanceType.OddsPlaceInverse1 AS [RaceResultByHorseByDistanceType.OddsPlaceInverse1]
		, dbo.RaceResultByHorseByDistanceType.OddsPlaceInverse1Log AS [RaceResultByHorseByDistanceType.OddsPlaceInverse1Log]
		, dbo.RaceResultByHorseByDistanceType.OddsPlaceInverse2 AS [RaceResultByHorseByDistanceType.OddsPlaceInverse2]
		, dbo.RaceResultByHorseByDistanceType.OddsPlaceInverse2Log AS [RaceResultByHorseByDistanceType.OddsPlaceInverse2Log]
		, dbo.RaceResultByHorseByDistanceType.ApprovalRateWin AS [RaceResultByHorseByDistanceType.ApprovalRateWin]
		, dbo.RaceResultByHorseByDistanceType.ApprovalRatePlace1 AS [RaceResultByHorseByDistanceType.ApprovalRatePlace1]
		, dbo.RaceResultByHorseByDistanceType.ApprovalRatePlace2 AS [RaceResultByHorseByDistanceType.ApprovalRatePlace2]
		, dbo.RaceResultByHorseByDistanceType.ApprovalRateWinLog AS [RaceResultByHorseByDistanceType.ApprovalRateWinLog]
		, dbo.RaceResultByHorseByDistanceType.ApprovalRatePlace1Log AS [RaceResultByHorseByDistanceType.ApprovalRatePlace1Log]
		, dbo.RaceResultByHorseByDistanceType.ApprovalRatePlace2Log AS [RaceResultByHorseByDistanceType.ApprovalRatePlace2Log]
		, dbo.RaceResultByHorseByDistanceType.ExpectedValueWin AS [RaceResultByHorseByDistanceType.ExpectedValueWin]
		, dbo.RaceResultByHorseByDistanceType.ExpectedValueWinLog AS [RaceResultByHorseByDistanceType.ExpectedValueWinLog]
		, dbo.RaceResultByHorseByDistanceType.ExpectedValuePlace AS [RaceResultByHorseByDistanceType.ExpectedValuePlace]
		, dbo.RaceResultByHorseByDistanceType.ExpectedValuePlaceLog AS [RaceResultByHorseByDistanceType.ExpectedValuePlaceLog]
		, dbo.RaceResultByHorseByDistanceType.StdTime AS [RaceResultByHorseByDistanceType.StdTime]
		, dbo.RaceResultByHorseByDistanceType.StdTimeDev AS [RaceResultByHorseByDistanceType.StdTimeDev]
*/
/*
		, dbo.RaceResultByHorseByJyo.RunCount AS [RaceResultByHorseByJyo.RunCount]
		, dbo.RaceResultByHorseByJyo.RunCountLog AS [RaceResultByHorseByJyo.RunCountLog]
		, dbo.RaceResultByHorseByJyo.HitCount1 AS [RaceResultByHorseByJyo.HitCount1]
		, dbo.RaceResultByHorseByJyo.HitCount1Log AS [RaceResultByHorseByJyo.HitCount1Log]
		, dbo.RaceResultByHorseByJyo.HitRate1 AS [RaceResultByHorseByJyo.HitRate1]
		, dbo.RaceResultByHorseByJyo.HitRate1Log AS [RaceResultByHorseByJyo.HitRate1Log]
		, dbo.RaceResultByHorseByJyo.HitCount12 AS [RaceResultByHorseByJyo.HitCount12]
		, dbo.RaceResultByHorseByJyo.HitCount12Log AS [RaceResultByHorseByJyo.HitCount12Log]
		, dbo.RaceResultByHorseByJyo.HitRate12 AS [RaceResultByHorseByJyo.HitRate12]
		, dbo.RaceResultByHorseByJyo.HitRate12Log AS [RaceResultByHorseByJyo.HitRate12Log]
		, dbo.RaceResultByHorseByJyo.HitCount123 AS [RaceResultByHorseByJyo.HitCount123]
		, dbo.RaceResultByHorseByJyo.HitCount123Log AS [RaceResultByHorseByJyo.HitCount123Log]
		, dbo.RaceResultByHorseByJyo.HitRate123 AS [RaceResultByHorseByJyo.HitRate123]
		, dbo.RaceResultByHorseByJyo.HitRate123Log AS [RaceResultByHorseByJyo.HitRate123Log]
		, dbo.RaceResultByHorseByJyo.OddsWin AS [RaceResultByHorseByJyo.OddsWin]
		, dbo.RaceResultByHorseByJyo.OddsWinLog AS [RaceResultByHorseByJyo.OddsWinLog]
		, dbo.RaceResultByHorseByJyo.OddsPlace1 AS [RaceResultByHorseByJyo.OddsPlace1]
		, dbo.RaceResultByHorseByJyo.OddsPlace1Log AS [RaceResultByHorseByJyo.OddsPlace1Log]
		, dbo.RaceResultByHorseByJyo.OddsPlace2 AS [RaceResultByHorseByJyo.OddsPlace2]
		, dbo.RaceResultByHorseByJyo.OddsPlace2Log AS [RaceResultByHorseByJyo.OddsPlace2Log]
		, dbo.RaceResultByHorseByJyo.OddsWinInverse AS [RaceResultByHorseByJyo.OddsWinInvers]
		, dbo.RaceResultByHorseByJyo.OddsWinInverseLog AS [RaceResultByHorseByJyo.OddsWinInverseLog]
		, dbo.RaceResultByHorseByJyo.OddsPlaceInverse1 AS [RaceResultByHorseByJyo.OddsPlaceInverse1]
		, dbo.RaceResultByHorseByJyo.OddsPlaceInverse1Log AS [RaceResultByHorseByJyo.OddsPlaceInverse1Log]
		, dbo.RaceResultByHorseByJyo.OddsPlaceInverse2 AS [RaceResultByHorseByJyo.OddsPlaceInverse2]
		, dbo.RaceResultByHorseByJyo.OddsPlaceInverse2Log AS [RaceResultByHorseByJyo.OddsPlaceInverse2Log]
		, dbo.RaceResultByHorseByJyo.ApprovalRateWin AS [RaceResultByHorseByJyo.ApprovalRateWin]
		, dbo.RaceResultByHorseByJyo.ApprovalRatePlace1 AS [RaceResultByHorseByJyo.ApprovalRatePlace1]
		, dbo.RaceResultByHorseByJyo.ApprovalRatePlace2 AS [RaceResultByHorseByJyo.ApprovalRatePlace2]
		, dbo.RaceResultByHorseByJyo.ApprovalRateWinLog AS [RaceResultByHorseByJyo.ApprovalRateWinLog]
		, dbo.RaceResultByHorseByJyo.ApprovalRatePlace1Log AS [RaceResultByHorseByJyo.ApprovalRatePlace1Log]
		, dbo.RaceResultByHorseByJyo.ApprovalRatePlace2Log AS [RaceResultByHorseByJyo.ApprovalRatePlace2Log]
		, dbo.RaceResultByHorseByJyo.ExpectedValueWin AS [RaceResultByHorseByJyo.ExpectedValueWin]
		, dbo.RaceResultByHorseByJyo.ExpectedValueWinLog AS [RaceResultByHorseByJyo.ExpectedValueWinLog]
		, dbo.RaceResultByHorseByJyo.ExpectedValuePlace AS [RaceResultByHorseByJyo.ExpectedValuePlace]
		, dbo.RaceResultByHorseByJyo.ExpectedValuePlaceLog AS [RaceResultByHorseByJyo.ExpectedValuePlaceLog]
		, dbo.RaceResultByHorseByJyo.StdTime AS [RaceResultByHorseByJyo.StdTime]
		, dbo.RaceResultByHorseByJyo.StdTimeDev AS [RaceResultByHorseByJyo.StdTimeDev]
*/
/*
		, dbo.RaceResultByHorseByRunningStyle.HitRate1 AS [RaceResultByHorseByRunningStyle.HitRate1]
		, dbo.RaceResultByHorseByRunningStyle.HitRate1Log AS [RaceResultByHorseByRunningStyle.HitRate1Log]
		, dbo.RaceResultByHorseByRunningStyle.HitRate2 AS [RaceResultByHorseByRunningStyle.HitRate2]
		, dbo.RaceResultByHorseByRunningStyle.HitRate2Log AS [RaceResultByHorseByRunningStyle.HitRate2Log]
		, dbo.RaceResultByHorseByRunningStyle.HitRate3 AS [RaceResultByHorseByRunningStyle.HitRate3]
		, dbo.RaceResultByHorseByRunningStyle.HitRate3Log AS [RaceResultByHorseByRunningStyle.HitRate3Log]
		, dbo.RaceResultByHorseByRunningStyle.HitRate4 AS [RaceResultByHorseByRunningStyle.HitRate4]
		, dbo.RaceResultByHorseByRunningStyle.HitRate4Log AS [RaceResultByHorseByRunningStyle.HitRate4Log]
*/
		  dbo.RaceResultByHorseByRunningStyle.RunningStyleAvg AS [RaceResultByHorseByRunningStyle.RunningStyleAvg],
		  dbo.RaceResultByHorseByTotal.RunCount AS [RaceResultByHorseByTotal.RunCount],
		  dbo.RaceResultByHorseByTotal.RunCountLog AS [RaceResultByHorseByTotal.RunCountLog],
		  dbo.RaceResultByHorseByTotal.HitCount1 AS [RaceResultByHorseByTotal.HitCount1],
		  dbo.RaceResultByHorseByTotal.HitCount1Log AS [RaceResultByHorseByTotal.HitCount1Log],
		  dbo.RaceResultByHorseByTotal.HitRate1 AS [RaceResultByHorseByTotal.HitRate1],
		  dbo.RaceResultByHorseByTotal.HitRate1Log AS [RaceResultByHorseByTotal.HitRate1Log],
		  dbo.RaceResultByHorseByTotal.HitCount12 AS [RaceResultByHorseByTotal.HitCount12],
		  dbo.RaceResultByHorseByTotal.HitCount12Log AS [RaceResultByHorseByTotal.HitCount12Log],
		  dbo.RaceResultByHorseByTotal.HitRate12 AS [RaceResultByHorseByTotal.HitRate12],
		  dbo.RaceResultByHorseByTotal.HitRate12Log AS [RaceResultByHorseByTotal.HitRate12Log],
		  dbo.RaceResultByHorseByTotal.HitCount123 AS [RaceResultByHorseByTotal.HitCount123],
		  dbo.RaceResultByHorseByTotal.HitCount123Log AS [RaceResultByHorseByTotal.HitCount123Log],
		  dbo.RaceResultByHorseByTotal.HitRate123 AS [RaceResultByHorseByTotal.HitRate123],
		  dbo.RaceResultByHorseByTotal.HitRate123Log AS [RaceResultByHorseByTotal.HitRate123Log],
		  dbo.RaceResultByHorseByTotal.OddsWin AS [RaceResultByHorseByTotal.OddsWin],
		  dbo.RaceResultByHorseByTotal.OddsWinLog AS [RaceResultByHorseByTotal.OddsWinLog],
		  dbo.RaceResultByHorseByTotal.OddsPlace1 AS [RaceResultByHorseByTotal.OddsPlace1],
		  dbo.RaceResultByHorseByTotal.OddsPlace1Log AS [RaceResultByHorseByTotal.OddsPlace1Log],
		  dbo.RaceResultByHorseByTotal.OddsPlace2 AS [RaceResultByHorseByTotal.OddsPlace2],
		  dbo.RaceResultByHorseByTotal.OddsPlace2Log AS [RaceResultByHorseByTotal.OddsPlace2Log],
		  dbo.RaceResultByHorseByTotal.OddsWinInverse AS [RaceResultByHorseByTotal.OddsWinInvers],
		  dbo.RaceResultByHorseByTotal.OddsWinInverseLog AS [RaceResultByHorseByTotal.OddsWinInverseLog],
		  dbo.RaceResultByHorseByTotal.OddsPlaceInverse1 AS [RaceResultByHorseByTotal.OddsPlaceInverse1],
		  dbo.RaceResultByHorseByTotal.OddsPlaceInverse1Log AS [RaceResultByHorseByTotal.OddsPlaceInverse1Log],
		  dbo.RaceResultByHorseByTotal.OddsPlaceInverse2 AS [RaceResultByHorseByTotal.OddsPlaceInverse2],
		  dbo.RaceResultByHorseByTotal.OddsPlaceInverse2Log AS [RaceResultByHorseByTotal.OddsPlaceInverse2Log],
		  dbo.RaceResultByHorseByTotal.ApprovalRateWin AS [RaceResultByHorseByTotal.ApprovalRateWin],
		  dbo.RaceResultByHorseByTotal.ApprovalRateWinLog AS [RaceResultByHorseByTotal.ApprovalRateWinLog],
		  dbo.RaceResultByHorseByTotal.ApprovalRatePlace1 AS [RaceResultByHorseByTotal.ApprovalRatePlace1],
		  dbo.RaceResultByHorseByTotal.ApprovalRatePlace1Log AS [RaceResultByHorseByTotal.ApprovalRatePlace1Log],
		  dbo.RaceResultByHorseByTotal.ApprovalRatePlace2 AS [RaceResultByHorseByTotal.ApprovalRatePlace2],
		  dbo.RaceResultByHorseByTotal.ApprovalRatePlace2Log AS [RaceResultByHorseByTotal.ApprovalRatePlace2Log],
		  dbo.RaceResultByHorseByTotal.ExpectedValueWin AS [RaceResultByHorseByTotal.ExpectedValueWin],
		  dbo.RaceResultByHorseByTotal.ExpectedValueWinLog AS [RaceResultByHorseByTotal.ExpectedValueWinLog],
		  dbo.RaceResultByHorseByTotal.ExpectedValuePlace AS [RaceResultByHorseByTotal.ExpectedValuePlace],
		  dbo.RaceResultByHorseByTotal.ExpectedValuePlaceLog AS [RaceResultByHorseByTotal.ExpectedValuePlaceLog],
		  dbo.RaceResultByHorseByTotal.StdTime AS [RaceResultByHorseByTotal.StdTime],
		  dbo.RaceResultByHorseByTotal.StdTimeDev AS [RaceResultByHorseByTotal.StdTimeDev],
/*
		, dbo.RaceResultByHorseByTrackCondition.RunCount AS [RaceResultByHorseByTrackCondition.RunCount]
		, dbo.RaceResultByHorseByTrackCondition.RunCountLog AS [RaceResultByHorseByTrackCondition.RunCountLog]
		, dbo.RaceResultByHorseByTrackCondition.HitCount1 AS [RaceResultByHorseByTrackCondition.HitCount1]
		, dbo.RaceResultByHorseByTrackCondition.HitCount1Log AS [RaceResultByHorseByTrackCondition.HitCount1Log]
		, dbo.RaceResultByHorseByTrackCondition.HitRate1 AS [RaceResultByHorseByTrackCondition.HitRate1]
		, dbo.RaceResultByHorseByTrackCondition.HitRate1Log AS [RaceResultByHorseByTrackCondition.HitRate1Log]
		, dbo.RaceResultByHorseByTrackCondition.HitCount12 AS [RaceResultByHorseByTrackCondition.HitCount12]
		, dbo.RaceResultByHorseByTrackCondition.HitCount12Log AS [RaceResultByHorseByTrackCondition.HitCount12Log]
		, dbo.RaceResultByHorseByTrackCondition.HitRate12 AS [RaceResultByHorseByTrackCondition.HitRate12]
		, dbo.RaceResultByHorseByTrackCondition.HitRate12Log AS [RaceResultByHorseByTrackCondition.HitRate12Log]
		, dbo.RaceResultByHorseByTrackCondition.HitCount123 AS [RaceResultByHorseByTrackCondition.HitCount123]
		, dbo.RaceResultByHorseByTrackCondition.HitCount123Log AS [RaceResultByHorseByTrackCondition.HitCount123Log]
		, dbo.RaceResultByHorseByTrackCondition.HitRate123 AS [RaceResultByHorseByTrackCondition.HitRate123]
		, dbo.RaceResultByHorseByTrackCondition.HitRate123Log AS [RaceResultByHorseByTrackCondition.HitRate123Log]
		, dbo.RaceResultByHorseByTrackCondition.OddsWin AS [RaceResultByHorseByTrackCondition.OddsWin]
		, dbo.RaceResultByHorseByTrackCondition.OddsWinLog AS [RaceResultByHorseByTrackCondition.OddsWinLog]
		, dbo.RaceResultByHorseByTrackCondition.OddsPlace1 AS [RaceResultByHorseByTrackCondition.OddsPlace1]
		, dbo.RaceResultByHorseByTrackCondition.OddsPlace1Log AS [RaceResultByHorseByTrackCondition.OddsPlace1Log]
		, dbo.RaceResultByHorseByTrackCondition.OddsPlace2 AS [RaceResultByHorseByTrackCondition.OddsPlace2]
		, dbo.RaceResultByHorseByTrackCondition.OddsPlace2Log AS [RaceResultByHorseByTrackCondition.OddsPlace2Log]
		, dbo.RaceResultByHorseByTrackCondition.OddsWinInverse AS [RaceResultByHorseByTrackCondition.OddsWinInvers]
		, dbo.RaceResultByHorseByTrackCondition.OddsWinInverseLog AS [RaceResultByHorseByTrackCondition.OddsWinInverseLog]
		, dbo.RaceResultByHorseByTrackCondition.OddsPlaceInverse1 AS [RaceResultByHorseByTrackCondition.OddsPlaceInverse1]
		, dbo.RaceResultByHorseByTrackCondition.OddsPlaceInverse1Log AS [RaceResultByHorseByTrackCondition.OddsPlaceInverse1Log]
		, dbo.RaceResultByHorseByTrackCondition.OddsPlaceInverse2 AS [RaceResultByHorseByTrackCondition.OddsPlaceInverse2]
		, dbo.RaceResultByHorseByTrackCondition.OddsPlaceInverse2Log AS [RaceResultByHorseByTrackCondition.OddsPlaceInverse2Log]
		, dbo.RaceResultByHorseByTrackCondition.ApprovalRateWin AS [RaceResultByHorseByTrackCondition.ApprovalRateWin]
		, dbo.RaceResultByHorseByTrackCondition.ApprovalRateWinLog AS [RaceResultByHorseByTrackCondition.ApprovalRateWinLog]
		, dbo.RaceResultByHorseByTrackCondition.ApprovalRatePlace1 AS [RaceResultByHorseByTrackCondition.ApprovalRatePlace1]
		, dbo.RaceResultByHorseByTrackCondition.ApprovalRatePlace1Log AS [RaceResultByHorseByTrackCondition.ApprovalRatePlace1Log]
		, dbo.RaceResultByHorseByTrackCondition.ApprovalRatePlace2 AS [RaceResultByHorseByTrackCondition.ApprovalRatePlace2]
		, dbo.RaceResultByHorseByTrackCondition.ApprovalRatePlace2Log AS [RaceResultByHorseByTrackCondition.ApprovalRatePlace2Log]
		, dbo.RaceResultByHorseByTrackCondition.ExpectedValueWin AS [RaceResultByHorseByTrackCondition.ExpectedValueWin]
		, dbo.RaceResultByHorseByTrackCondition.ExpectedValueWinLog AS [RaceResultByHorseByTrackCondition.ExpectedValueWinLog]
		, dbo.RaceResultByHorseByTrackCondition.ExpectedValuePlace AS [RaceResultByHorseByTrackCondition.ExpectedValuePlace]
		, dbo.RaceResultByHorseByTrackCondition.ExpectedValuePlaceLog AS [RaceResultByHorseByTrackCondition.ExpectedValuePlaceLog]
		, dbo.RaceResultByHorseByTrackCondition.StdTime AS [RaceResultByHorseByTrackCondition.StdTime]
		, dbo.RaceResultByHorseByTrackCondition.StdTimeDev AS [RaceResultByHorseByTrackCondition.StdTimeDev]

		, dbo.RaceResultByHorseByTrackType.RunCount AS [RaceResultByHorseByTrackType.RunCount]
		, dbo.RaceResultByHorseByTrackType.RunCountLog AS [RaceResultByHorseByTrackType.RunCountLog]
		, dbo.RaceResultByHorseByTrackType.HitCount1 AS [RaceResultByHorseByTrackType.HitCount1]
		, dbo.RaceResultByHorseByTrackType.HitCount1Log AS [RaceResultByHorseByTrackType.HitCount1Log]
		, dbo.RaceResultByHorseByTrackType.HitRate1 AS [RaceResultByHorseByTrackType.HitRate1]
		, dbo.RaceResultByHorseByTrackType.HitRate1Log AS [RaceResultByHorseByTrackType.HitRate1Log]
		, dbo.RaceResultByHorseByTrackType.HitCount12 AS [RaceResultByHorseByTrackType.HitCount12]
		, dbo.RaceResultByHorseByTrackType.HitCount12Log AS [RaceResultByHorseByTrackType.HitCount12Log]
		, dbo.RaceResultByHorseByTrackType.HitRate12 AS [RaceResultByHorseByTrackType.HitRate12]
		, dbo.RaceResultByHorseByTrackType.HitRate12Log AS [RaceResultByHorseByTrackType.HitRate12Log]
		, dbo.RaceResultByHorseByTrackType.HitCount123 AS [RaceResultByHorseByTrackType.HitCount123]
		, dbo.RaceResultByHorseByTrackType.HitCount123Log AS [RaceResultByHorseByTrackType.HitCount123Log]
		, dbo.RaceResultByHorseByTrackType.HitRate123 AS [RaceResultByHorseByTrackType.HitRate123]
		, dbo.RaceResultByHorseByTrackType.HitRate123Log AS [RaceResultByHorseByTrackType.HitRate123Log]
		, dbo.RaceResultByHorseByTrackType.OddsWin AS [RaceResultByHorseByTrackType.OddsWin]
		, dbo.RaceResultByHorseByTrackType.OddsWinLog AS [RaceResultByHorseByTrackType.OddsWinLog]
		, dbo.RaceResultByHorseByTrackType.OddsPlace1 AS [RaceResultByHorseByTrackType.OddsPlace1]
		, dbo.RaceResultByHorseByTrackType.OddsPlace1Log AS [RaceResultByHorseByTrackType.OddsPlace1Log]
		, dbo.RaceResultByHorseByTrackType.OddsPlace2 AS [RaceResultByHorseByTrackType.OddsPlace2]
		, dbo.RaceResultByHorseByTrackType.OddsPlace2Log AS [RaceResultByHorseByTrackType.OddsPlace2Log]
		, dbo.RaceResultByHorseByTrackType.OddsWinInverse AS [RaceResultByHorseByTrackType.OddsWinInvers]
		, dbo.RaceResultByHorseByTrackType.OddsWinInverseLog AS [RaceResultByHorseByTrackType.OddsWinInverseLog]
		, dbo.RaceResultByHorseByTrackType.OddsPlaceInverse1 AS [RaceResultByHorseByTrackType.OddsPlaceInverse1]
		, dbo.RaceResultByHorseByTrackType.OddsPlaceInverse1Log AS [RaceResultByHorseByTrackType.OddsPlaceInverse1Log]
		, dbo.RaceResultByHorseByTrackType.OddsPlaceInverse2 AS [RaceResultByHorseByTrackType.OddsPlaceInverse2]
		, dbo.RaceResultByHorseByTrackType.OddsPlaceInverse2Log AS [RaceResultByHorseByTrackType.OddsPlaceInverse2Log]
		, dbo.RaceResultByHorseByTrackType.ApprovalRateWin AS [RaceResultByHorseByTrackType.ApprovalRateWin]
		, dbo.RaceResultByHorseByTrackType.ApprovalRateWinLog AS [RaceResultByHorseByTrackType.ApprovalRateWinLog]
		, dbo.RaceResultByHorseByTrackType.ApprovalRatePlace1 AS [RaceResultByHorseByTrackType.ApprovalRatePlace1]
		, dbo.RaceResultByHorseByTrackType.ApprovalRatePlace1Log AS [RaceResultByHorseByTrackType.ApprovalRatePlace1Log]
		, dbo.RaceResultByHorseByTrackType.ApprovalRatePlace2 AS [RaceResultByHorseByTrackType.ApprovalRatePlace2]
		, dbo.RaceResultByHorseByTrackType.ApprovalRatePlace2Log AS [RaceResultByHorseByTrackType.ApprovalRatePlace2Log]
		, dbo.RaceResultByHorseByTrackType.ExpectedValueWin AS [RaceResultByHorseByTrackType.ExpectedValueWin]
		, dbo.RaceResultByHorseByTrackType.ExpectedValueWinLog AS [RaceResultByHorseByTrackType.ExpectedValueWinLog]
		, dbo.RaceResultByHorseByTrackType.ExpectedValuePlace AS [RaceResultByHorseByTrackType.ExpectedValuePlace]
		, dbo.RaceResultByHorseByTrackType.ExpectedValuePlaceLog AS [RaceResultByHorseByTrackType.ExpectedValuePlaceLog]
		, dbo.RaceResultByHorseByTrackType.StdTime AS [RaceResultByHorseByTrackType.StdTime]
		, dbo.RaceResultByHorseByTrackType.StdTimeDev AS [RaceResultByHorseByTrackType.StdTimeDev]
*/
		  dbo.RaceResultByJocky.HonSyokinHeichi AS [RaceResultByJocky.HonSyokinHeichi],
		  dbo.RaceResultByJocky.HonSyokinHeichiLog AS [RaceResultByJocky.HonSyokinHeichiLog],
		  dbo.RaceResultByJocky.HonSyokinSyogai AS [RaceResultByJocky.HonSyokinSyogai],
		  dbo.RaceResultByJocky.HonSyokinSyogaiLog AS [RaceResultByJocky.HonSyokinSyogaiLog],
/*
		, dbo.RaceResultByJockyByDistanceType.RunCount AS [RaceResultByJockyByDistanceType.RunCount]
		, dbo.RaceResultByJockyByDistanceType.RunCountLog AS [RaceResultByJockyByDistanceType.RunCountLog]
		, dbo.RaceResultByJockyByDistanceType.HitCount1 AS [RaceResultByJockyByDistanceType.HitCount1]
		, dbo.RaceResultByJockyByDistanceType.HitCount1Log AS [RaceResultByJockyByDistanceType.HitCount1Log]
		, dbo.RaceResultByJockyByDistanceType.HitRate1 AS [RaceResultByJockyByDistanceType.HitRate1]
		, dbo.RaceResultByJockyByDistanceType.HitRate1Log AS [RaceResultByJockyByDistanceType.HitRate1Log]
		, dbo.RaceResultByJockyByDistanceType.HitCount12 AS [RaceResultByJockyByDistanceType.HitCount12]
		, dbo.RaceResultByJockyByDistanceType.HitCount12Log AS [RaceResultByJockyByDistanceType.HitCount12Log]
		, dbo.RaceResultByJockyByDistanceType.HitRate12 AS [RaceResultByJockyByDistanceType.HitRate12]
		, dbo.RaceResultByJockyByDistanceType.HitRate12Log AS [RaceResultByJockyByDistanceType.HitRate12Log]
		, dbo.RaceResultByJockyByDistanceType.HitCount123 AS [RaceResultByJockyByDistanceType.HitCount123]
		, dbo.RaceResultByJockyByDistanceType.HitCount123Log AS [RaceResultByJockyByDistanceType.HitCount123Log]
		, dbo.RaceResultByJockyByDistanceType.HitRate123 AS [RaceResultByJockyByDistanceType.HitRate123]
		, dbo.RaceResultByJockyByDistanceType.HitRate123Log AS [RaceResultByJockyByDistanceType.HitRate123Log]
		, dbo.RaceResultByJockyByDistanceType.OddsWin AS [RaceResultByJockyByDistanceType.OddsWin]
		, dbo.RaceResultByJockyByDistanceType.OddsWinLog AS [RaceResultByJockyByDistanceType.OddsWinLog]
		, dbo.RaceResultByJockyByDistanceType.OddsPlace1 AS [RaceResultByJockyByDistanceType.OddsPlace1]
		, dbo.RaceResultByJockyByDistanceType.OddsPlace1Log AS [RaceResultByJockyByDistanceType.OddsPlace1Log]
		, dbo.RaceResultByJockyByDistanceType.OddsPlace2 AS [RaceResultByJockyByDistanceType.OddsPlace2]
		, dbo.RaceResultByJockyByDistanceType.OddsPlace2Log AS [RaceResultByJockyByDistanceType.OddsPlace2Log]
		, dbo.RaceResultByJockyByDistanceType.OddsWinInverse AS [RaceResultByJockyByDistanceType.OddsWinInvers]
		, dbo.RaceResultByJockyByDistanceType.OddsWinInverseLog AS [RaceResultByJockyByDistanceType.OddsWinInverseLog]
		, dbo.RaceResultByJockyByDistanceType.OddsPlaceInverse1 AS [RaceResultByJockyByDistanceType.OddsPlaceInverse1]
		, dbo.RaceResultByJockyByDistanceType.OddsPlaceInverse1Log AS [RaceResultByJockyByDistanceType.OddsPlaceInverse1Log]
		, dbo.RaceResultByJockyByDistanceType.OddsPlaceInverse2 AS [RaceResultByJockyByDistanceType.OddsPlaceInverse2]
		, dbo.RaceResultByJockyByDistanceType.OddsPlaceInverse2Log AS [RaceResultByJockyByDistanceType.OddsPlaceInverse2Log]
		, dbo.RaceResultByJockyByDistanceType.ApprovalRateWin AS [RaceResultByJockyByDistanceType.ApprovalRateWin]
		, dbo.RaceResultByJockyByDistanceType.ApprovalRateWinLog AS [RaceResultByJockyByDistanceType.ApprovalRateWinLog]
		, dbo.RaceResultByJockyByDistanceType.ApprovalRatePlace1 AS [RaceResultByJockyByDistanceType.ApprovalRatePlace1]
		, dbo.RaceResultByJockyByDistanceType.ApprovalRatePlace1Log AS [RaceResultByJockyByDistanceType.ApprovalRatePlace1Log]
		, dbo.RaceResultByJockyByDistanceType.ApprovalRatePlace2 AS [RaceResultByJockyByDistanceType.ApprovalRatePlace2]
		, dbo.RaceResultByJockyByDistanceType.ApprovalRatePlace2Log AS [RaceResultByJockyByDistanceType.ApprovalRatePlace2Log]
		, dbo.RaceResultByJockyByDistanceType.ExpectedValueWin AS [RaceResultByJockyByDistanceType.ExpectedValueWin]
		, dbo.RaceResultByJockyByDistanceType.ExpectedValueWinLog AS [RaceResultByJockyByDistanceType.ExpectedValueWinLog]
		, dbo.RaceResultByJockyByDistanceType.ExpectedValuePlace AS [RaceResultByJockyByDistanceType.ExpectedValuePlace]
		, dbo.RaceResultByJockyByDistanceType.ExpectedValuePlaceLog AS [RaceResultByJockyByDistanceType.ExpectedValuePlaceLog]
		, dbo.RaceResultByJockyByDistanceType.StdTime AS [RaceResultByJockyByDistanceType.StdTime]
		, dbo.RaceResultByJockyByDistanceType.StdTimeDev AS [RaceResultByJockyByDistanceType.StdTimeDev]
*/
		  dbo.RaceResultByJockyByJyo.RunCount AS [RaceResultByJockyByJyo.RunCount],
		  dbo.RaceResultByJockyByJyo.RunCountLog AS [RaceResultByJockyByJyo.RunCountLog],
		  dbo.RaceResultByJockyByJyo.HitCount1 AS [RaceResultByJockyByJyo.HitCount1],
		  dbo.RaceResultByJockyByJyo.HitCount1Log AS [RaceResultByJockyByJyo.HitCount1Log],
		  dbo.RaceResultByJockyByJyo.HitRate1 AS [RaceResultByJockyByJyo.HitRate1],
		  dbo.RaceResultByJockyByJyo.HitRate1Log AS [RaceResultByJockyByJyo.HitRate1Log],
		  dbo.RaceResultByJockyByJyo.HitCount12 AS [RaceResultByJockyByJyo.HitCount12],
		  dbo.RaceResultByJockyByJyo.HitCount12Log AS [RaceResultByJockyByJyo.HitCount12Log],
		  dbo.RaceResultByJockyByJyo.HitRate12 AS [RaceResultByJockyByJyo.HitRate12],
		  dbo.RaceResultByJockyByJyo.HitRate12Log AS [RaceResultByJockyByJyo.HitRate12Log],
		  dbo.RaceResultByJockyByJyo.HitCount123 AS [RaceResultByJockyByJyo.HitCount123],
		  dbo.RaceResultByJockyByJyo.HitCount123Log AS [RaceResultByJockyByJyo.HitCount123Log],
		  dbo.RaceResultByJockyByJyo.HitRate123 AS [RaceResultByJockyByJyo.HitRate123],
		  dbo.RaceResultByJockyByJyo.HitRate123Log AS [RaceResultByJockyByJyo.HitRate123Log],
		  dbo.RaceResultByJockyByJyo.OddsWin AS [RaceResultByJockyByJyo.OddsWin],
		  dbo.RaceResultByJockyByJyo.OddsWinLog AS [RaceResultByJockyByJyo.OddsWinLog],
		  dbo.RaceResultByJockyByJyo.OddsPlace1 AS [RaceResultByJockyByJyo.OddsPlace1],
		  dbo.RaceResultByJockyByJyo.OddsPlace1Log AS [RaceResultByJockyByJyo.OddsPlace1Log],
		  dbo.RaceResultByJockyByJyo.OddsPlace2 AS [RaceResultByJockyByJyo.OddsPlace2],
		  dbo.RaceResultByJockyByJyo.OddsPlace2Log AS [RaceResultByJockyByJyo.OddsPlace2Log],
		  dbo.RaceResultByJockyByJyo.OddsWinInverse AS [RaceResultByJockyByJyo.OddsWinInvers],
		  dbo.RaceResultByJockyByJyo.OddsWinInverseLog AS [RaceResultByJockyByJyo.OddsWinInverseLog],
		  dbo.RaceResultByJockyByJyo.OddsPlaceInverse1 AS [RaceResultByJockyByJyo.OddsPlaceInverse1],
		  dbo.RaceResultByJockyByJyo.OddsPlaceInverse1Log AS [RaceResultByJockyByJyo.OddsPlaceInverse1Log],
		  dbo.RaceResultByJockyByJyo.OddsPlaceInverse2 AS [RaceResultByJockyByJyo.OddsPlaceInverse2],
		  dbo.RaceResultByJockyByJyo.OddsPlaceInverse2Log AS [RaceResultByJockyByJyo.OddsPlaceInverse2Log],
		  dbo.RaceResultByJockyByJyo.ApprovalRateWin AS [RaceResultByJockyByJyo.ApprovalRateWin],
		  dbo.RaceResultByJockyByJyo.ApprovalRateWinLog AS [RaceResultByJockyByJyo.ApprovalRateWinLog],
		  dbo.RaceResultByJockyByJyo.ApprovalRatePlace1 AS [RaceResultByJockyByJyo.ApprovalRatePlace1],
		  dbo.RaceResultByJockyByJyo.ApprovalRatePlace1Log AS [RaceResultByJockyByJyo.ApprovalRatePlace1Log],
		  dbo.RaceResultByJockyByJyo.ApprovalRatePlace2 AS [RaceResultByJockyByJyo.ApprovalRatePlace2],
		  dbo.RaceResultByJockyByJyo.ApprovalRatePlace2Log AS [RaceResultByJockyByJyo.ApprovalRatePlace2Log],
		  dbo.RaceResultByJockyByJyo.ExpectedValueWin AS [RaceResultByJockyByJyo.ExpectedValueWin],
		  dbo.RaceResultByJockyByJyo.ExpectedValueWinLog AS [RaceResultByJockyByJyo.ExpectedValueWinLog],
		  dbo.RaceResultByJockyByJyo.ExpectedValuePlace AS [RaceResultByJockyByJyo.ExpectedValuePlace],
		  dbo.RaceResultByJockyByJyo.ExpectedValuePlaceLog AS [RaceResultByJockyByJyo.ExpectedValuePlaceLog],
		  dbo.RaceResultByJockyByJyo.StdTime AS [RaceResultByJockyByJyo.StdTime],
		  dbo.RaceResultByJockyByJyo.StdTimeDev AS [RaceResultByJockyByJyo.StdTimeDev],
		  dbo.RaceResultByJockyByTrackType.RunCount AS [RaceResultByJockyByTrackType.RunCount],
		  dbo.RaceResultByJockyByTrackType.RunCountLog AS [RaceResultByJockyByTrackType.RunCountLog],
		  dbo.RaceResultByJockyByTrackType.HitCount1 AS [RaceResultByJockyByTrackType.HitCount1],
		  dbo.RaceResultByJockyByTrackType.HitCount1Log AS [RaceResultByJockyByTrackType.HitCount1Log],
		  dbo.RaceResultByJockyByTrackType.HitRate1 AS [RaceResultByJockyByTrackType.HitRate1],
		  dbo.RaceResultByJockyByTrackType.HitRate1Log AS [RaceResultByJockyByTrackType.HitRate1Log],
		  dbo.RaceResultByJockyByTrackType.HitCount12 AS [RaceResultByJockyByTrackType.HitCount12],
		  dbo.RaceResultByJockyByTrackType.HitCount12Log AS [RaceResultByJockyByTrackType.HitCount12Log],
		  dbo.RaceResultByJockyByTrackType.HitRate12 AS [RaceResultByJockyByTrackType.HitRate12],
		  dbo.RaceResultByJockyByTrackType.HitRate12Log AS [RaceResultByJockyByTrackType.HitRate12Log],
		  dbo.RaceResultByJockyByTrackType.HitCount123 AS [RaceResultByJockyByTrackType.HitCount123],
		  dbo.RaceResultByJockyByTrackType.HitCount123Log AS [RaceResultByJockyByTrackType.HitCount123Log],
		  dbo.RaceResultByJockyByTrackType.HitRate123 AS [RaceResultByJockyByTrackType.HitRate123],
		  dbo.RaceResultByJockyByTrackType.HitRate123Log AS [RaceResultByJockyByTrackType.HitRate123Log],
		  dbo.RaceResultByJockyByTrackType.OddsWin AS [RaceResultByJockyByTrackType.OddsWin],
		  dbo.RaceResultByJockyByTrackType.OddsWinLog AS [RaceResultByJockyByTrackType.OddsWinLog],
		  dbo.RaceResultByJockyByTrackType.OddsPlace1 AS [RaceResultByJockyByTrackType.OddsPlace1],
		  dbo.RaceResultByJockyByTrackType.OddsPlace1Log AS [RaceResultByJockyByTrackType.OddsPlace1Log],
		  dbo.RaceResultByJockyByTrackType.OddsPlace2 AS [RaceResultByJockyByTrackType.OddsPlace2],
		  dbo.RaceResultByJockyByTrackType.OddsPlace2Log AS [RaceResultByJockyByTrackType.OddsPlace2Log],
		  dbo.RaceResultByJockyByTrackType.OddsWinInverse AS [RaceResultByJockyByTrackType.OddsWinInvers],
		  dbo.RaceResultByJockyByTrackType.OddsWinInverseLog AS [RaceResultByJockyByTrackType.OddsWinInverseLog],
		  dbo.RaceResultByJockyByTrackType.OddsPlaceInverse1 AS [RaceResultByJockyByTrackType.OddsPlaceInverse1],
		  dbo.RaceResultByJockyByTrackType.OddsPlaceInverse1Log AS [RaceResultByJockyByTrackType.OddsPlaceInverse1Log],
		  dbo.RaceResultByJockyByTrackType.OddsPlaceInverse2 AS [RaceResultByJockyByTrackType.OddsPlaceInverse2],
		  dbo.RaceResultByJockyByTrackType.OddsPlaceInverse2Log AS [RaceResultByJockyByTrackType.OddsPlaceInverse2Log],
		  dbo.RaceResultByJockyByTrackType.ApprovalRateWin AS [RaceResultByJockyByTrackType.ApprovalRateWin],
		  dbo.RaceResultByJockyByTrackType.ApprovalRateWinLog AS [RaceResultByJockyByTrackType.ApprovalRateWinLog],
		  dbo.RaceResultByJockyByTrackType.ApprovalRatePlace1 AS [RaceResultByJockyByTrackType.ApprovalRatePlace1],
		  dbo.RaceResultByJockyByTrackType.ApprovalRatePlace1Log AS [RaceResultByJockyByTrackType.ApprovalRatePlace1Log],
		  dbo.RaceResultByJockyByTrackType.ApprovalRatePlace2 AS [RaceResultByJockyByTrackType.ApprovalRatePlace2],
		  dbo.RaceResultByJockyByTrackType.ApprovalRatePlace2Log AS [RaceResultByJockyByTrackType.ApprovalRatePlace2Log],
		  dbo.RaceResultByJockyByTrackType.ExpectedValueWin AS [RaceResultByJockyByTrackType.ExpectedValueWin],
		  dbo.RaceResultByJockyByTrackType.ExpectedValueWinLog AS [RaceResultByJockyByTrackType.ExpectedValueWinLog],
		  dbo.RaceResultByJockyByTrackType.ExpectedValuePlace AS [RaceResultByJockyByTrackType.ExpectedValuePlace],
		  dbo.RaceResultByJockyByTrackType.ExpectedValuePlaceLog AS [RaceResultByJockyByTrackType.ExpectedValuePlaceLog],
		  dbo.RaceResultByJockyByTrackType.StdTime AS [RaceResultByJockyByTrackType.StdTime],
		  dbo.RaceResultByJockyByTrackType.StdTimeDev AS [RaceResultByJockyByTrackType.StdTimeDev],
		  dbo.RaceResultByTrainer.HonSyokinHeichi AS [RaceResultByTrainer.HonSyokinHeichi],
		  dbo.RaceResultByTrainer.HonSyokinHeichiLog AS [RaceResultByTrainer.HonSyokinHeichiLog],
		  dbo.RaceResultByTrainer.HonSyokinSyogai AS [RaceResultByTrainer.HonSyokinSyogai],
		  dbo.RaceResultByTrainer.HonSyokinSyogaiLog AS [RaceResultByTrainer.HonSyokinSyogaiLog],
/*
		, dbo.RaceResultByTrainerByDistanceType.RunCount AS [RaceResultByTrainerByDistanceType.RunCount]
		, dbo.RaceResultByTrainerByDistanceType.RunCountLog AS [RaceResultByTrainerByDistanceType.RunCountLog]
		, dbo.RaceResultByTrainerByDistanceType.HitCount1 AS [RaceResultByTrainerByDistanceType.HitCount1]
		, dbo.RaceResultByTrainerByDistanceType.HitCount1Log AS [RaceResultByTrainerByDistanceType.HitCount1Log]
		, dbo.RaceResultByTrainerByDistanceType.HitRate1 AS [RaceResultByTrainerByDistanceType.HitRate1]
		, dbo.RaceResultByTrainerByDistanceType.HitRate1Log AS [RaceResultByTrainerByDistanceType.HitRate1Log]
		, dbo.RaceResultByTrainerByDistanceType.HitCount12 AS [RaceResultByTrainerByDistanceType.HitCount12]
		, dbo.RaceResultByTrainerByDistanceType.HitCount12Log AS [RaceResultByTrainerByDistanceType.HitCount12Log]
		, dbo.RaceResultByTrainerByDistanceType.HitRate12 AS [RaceResultByTrainerByDistanceType.HitRate12]
		, dbo.RaceResultByTrainerByDistanceType.HitRate12Log AS [RaceResultByTrainerByDistanceType.HitRate12Log]
		, dbo.RaceResultByTrainerByDistanceType.HitCount123 AS [RaceResultByTrainerByDistanceType.HitCount123]
		, dbo.RaceResultByTrainerByDistanceType.HitCount123Log AS [RaceResultByTrainerByDistanceType.HitCount123Log]
		, dbo.RaceResultByTrainerByDistanceType.HitRate123 AS [RaceResultByTrainerByDistanceType.HitRate123]
		, dbo.RaceResultByTrainerByDistanceType.HitRate123Log AS [RaceResultByTrainerByDistanceType.HitRate123Log]
		, dbo.RaceResultByTrainerByDistanceType.OddsWin AS [RaceResultByTrainerByDistanceType.OddsWin]
		, dbo.RaceResultByTrainerByDistanceType.OddsWinLog AS [RaceResultByTrainerByDistanceType.OddsWinLog]
		, dbo.RaceResultByTrainerByDistanceType.OddsPlace1 AS [RaceResultByTrainerByDistanceType.OddsPlace1]
		, dbo.RaceResultByTrainerByDistanceType.OddsPlace1Log AS [RaceResultByTrainerByDistanceType.OddsPlace1Log]
		, dbo.RaceResultByTrainerByDistanceType.OddsPlace2 AS [RaceResultByTrainerByDistanceType.OddsPlace2]
		, dbo.RaceResultByTrainerByDistanceType.OddsPlace2Log AS [RaceResultByTrainerByDistanceType.OddsPlace2Log]
		, dbo.RaceResultByTrainerByDistanceType.OddsWinInverse AS [RaceResultByTrainerByDistanceType.OddsWinInvers]
		, dbo.RaceResultByTrainerByDistanceType.OddsWinInverseLog AS [RaceResultByTrainerByDistanceType.OddsWinInverseLog]
		, dbo.RaceResultByTrainerByDistanceType.OddsPlaceInverse1 AS [RaceResultByTrainerByDistanceType.OddsPlaceInverse1]
		, dbo.RaceResultByTrainerByDistanceType.OddsPlaceInverse1Log AS [RaceResultByTrainerByDistanceType.OddsPlaceInverse1Log]
		, dbo.RaceResultByTrainerByDistanceType.OddsPlaceInverse2 AS [RaceResultByTrainerByDistanceType.OddsPlaceInverse2]
		, dbo.RaceResultByTrainerByDistanceType.OddsPlaceInverse2Log AS [RaceResultByTrainerByDistanceType.OddsPlaceInverse2Log]
		, dbo.RaceResultByTrainerByDistanceType.ApprovalRateWin AS [RaceResultByTrainerByDistanceType.ApprovalRateWin]
		, dbo.RaceResultByTrainerByDistanceType.ApprovalRateWinLog AS [RaceResultByTrainerByDistanceType.ApprovalRateWinLog]
		, dbo.RaceResultByTrainerByDistanceType.ApprovalRatePlace1 AS [RaceResultByTrainerByDistanceType.ApprovalRatePlace1]
		, dbo.RaceResultByTrainerByDistanceType.ApprovalRatePlace1Log AS [RaceResultByTrainerByDistanceType.ApprovalRatePlace1Log]
		, dbo.RaceResultByTrainerByDistanceType.ApprovalRatePlace2 AS [RaceResultByTrainerByDistanceType.ApprovalRatePlace2]
		, dbo.RaceResultByTrainerByDistanceType.ApprovalRatePlace2Log AS [RaceResultByTrainerByDistanceType.ApprovalRatePlace2Log]
		, dbo.RaceResultByTrainerByDistanceType.ExpectedValueWin AS [RaceResultByTrainerByDistanceType.ExpectedValueWin]
		, dbo.RaceResultByTrainerByDistanceType.ExpectedValueWinLog AS [RaceResultByTrainerByDistanceType.ExpectedValueWinLog]
		, dbo.RaceResultByTrainerByDistanceType.ExpectedValuePlace AS [RaceResultByTrainerByDistanceType.ExpectedValuePlace]
		, dbo.RaceResultByTrainerByDistanceType.ExpectedValuePlaceLog AS [RaceResultByTrainerByDistanceType.ExpectedValuePlaceLog]
		, dbo.RaceResultByTrainerByDistanceType.StdTime AS [RaceResultByTrainerByDistanceType.StdTime]
		, dbo.RaceResultByTrainerByDistanceType.StdTimeDev AS [RaceResultByTrainerByDistanceType.StdTimeDev]
*/
		  dbo.RaceResultByTrainerByJyo.RunCount AS [RaceResultByTrainerByJyo.RunCount],
		  dbo.RaceResultByTrainerByJyo.RunCountLog AS [RaceResultByTrainerByJyo.RunCountLog],
		  dbo.RaceResultByTrainerByJyo.HitCount1 AS [RaceResultByTrainerByJyo.HitCount1],
		  dbo.RaceResultByTrainerByJyo.HitCount1Log AS [RaceResultByTrainerByJyo.HitCount1Log],
		  dbo.RaceResultByTrainerByJyo.HitRate1 AS [RaceResultByTrainerByJyo.HitRate1],
		  dbo.RaceResultByTrainerByJyo.HitRate1Log AS [RaceResultByTrainerByJyo.HitRate1Log],
		  dbo.RaceResultByTrainerByJyo.HitCount12 AS [RaceResultByTrainerByJyo.HitCount12],
		  dbo.RaceResultByTrainerByJyo.HitCount12Log AS [RaceResultByTrainerByJyo.HitCount12Log],
		  dbo.RaceResultByTrainerByJyo.HitRate12 AS [RaceResultByTrainerByJyo.HitRate12],
		  dbo.RaceResultByTrainerByJyo.HitRate12Log AS [RaceResultByTrainerByJyo.HitRate12Log],
		  dbo.RaceResultByTrainerByJyo.HitCount123 AS [RaceResultByTrainerByJyo.HitCount123],
		  dbo.RaceResultByTrainerByJyo.HitCount123Log AS [RaceResultByTrainerByJyo.HitCount123Log],
		  dbo.RaceResultByTrainerByJyo.HitRate123 AS [RaceResultByTrainerByJyo.HitRate123],
		  dbo.RaceResultByTrainerByJyo.HitRate123Log AS [RaceResultByTrainerByJyo.HitRate123Log],
		  dbo.RaceResultByTrainerByJyo.OddsWin AS [RaceResultByTrainerByJyo.OddsWin],
		  dbo.RaceResultByTrainerByJyo.OddsWinLog AS [RaceResultByTrainerByJyo.OddsWinLog],
		  dbo.RaceResultByTrainerByJyo.OddsPlace1 AS [RaceResultByTrainerByJyo.OddsPlace1],
		  dbo.RaceResultByTrainerByJyo.OddsPlace1Log AS [RaceResultByTrainerByJyo.OddsPlace1Log],
		  dbo.RaceResultByTrainerByJyo.OddsPlace2 AS [RaceResultByTrainerByJyo.OddsPlace2],
		  dbo.RaceResultByTrainerByJyo.OddsPlace2Log AS [RaceResultByTrainerByJyo.OddsPlace2Log],
		  dbo.RaceResultByTrainerByJyo.OddsWinInverse AS [RaceResultByTrainerByJyo.OddsWinInvers],
		  dbo.RaceResultByTrainerByJyo.OddsWinInverseLog AS [RaceResultByTrainerByJyo.OddsWinInverseLog],
		  dbo.RaceResultByTrainerByJyo.OddsPlaceInverse1 AS [RaceResultByTrainerByJyo.OddsPlaceInverse1],
		  dbo.RaceResultByTrainerByJyo.OddsPlaceInverse1Log AS [RaceResultByTrainerByJyo.OddsPlaceInverse1Log],
		  dbo.RaceResultByTrainerByJyo.OddsPlaceInverse2 AS [RaceResultByTrainerByJyo.OddsPlaceInverse2],
		  dbo.RaceResultByTrainerByJyo.OddsPlaceInverse2Log AS [RaceResultByTrainerByJyo.OddsPlaceInverse2Log],
		  dbo.RaceResultByTrainerByJyo.ApprovalRateWin AS [RaceResultByTrainerByJyo.ApprovalRateWin],
		  dbo.RaceResultByTrainerByJyo.ApprovalRateWinLog AS [RaceResultByTrainerByJyo.ApprovalRateWinLog],
		  dbo.RaceResultByTrainerByJyo.ApprovalRatePlace1 AS [RaceResultByTrainerByJyo.ApprovalRatePlace1],
		  dbo.RaceResultByTrainerByJyo.ApprovalRatePlace1Log AS [RaceResultByTrainerByJyo.ApprovalRatePlace1Log],
		  dbo.RaceResultByTrainerByJyo.ApprovalRatePlace2 AS [RaceResultByTrainerByJyo.ApprovalRatePlace2],
		  dbo.RaceResultByTrainerByJyo.ApprovalRatePlace2Log AS [RaceResultByTrainerByJyo.ApprovalRatePlace2Log],
		  dbo.RaceResultByTrainerByJyo.ExpectedValueWin AS [RaceResultByTrainerByJyo.ExpectedValueWin],
		  dbo.RaceResultByTrainerByJyo.ExpectedValueWinLog AS [RaceResultByTrainerByJyo.ExpectedValueWinLog],
		  dbo.RaceResultByTrainerByJyo.ExpectedValuePlace AS [RaceResultByTrainerByJyo.ExpectedValuePlace],
		  dbo.RaceResultByTrainerByJyo.ExpectedValuePlaceLog AS [RaceResultByTrainerByJyo.ExpectedValuePlaceLog],
		  dbo.RaceResultByTrainerByJyo.StdTime AS [RaceResultByTrainerByJyo.StdTime],
		  dbo.RaceResultByTrainerByJyo.StdTimeDev AS [RaceResultByTrainerByJyo.StdTimeDev],
		  dbo.RaceResultByTrainerByTrackType.RunCount AS [RaceResultByTrainerByTrackType.RunCount],
		  dbo.RaceResultByTrainerByTrackType.RunCountLog AS [RaceResultByTrainerByTrackType.RunCountLog],
		  dbo.RaceResultByTrainerByTrackType.HitCount1 AS [RaceResultByTrainerByTrackType.HitCount1],
		  dbo.RaceResultByTrainerByTrackType.HitCount1Log AS [RaceResultByTrainerByTrackType.HitCount1Log],
		  dbo.RaceResultByTrainerByTrackType.HitRate1 AS [RaceResultByTrainerByTrackType.HitRate1],
		  dbo.RaceResultByTrainerByTrackType.HitRate1Log AS [RaceResultByTrainerByTrackType.HitRate1Log],
		  dbo.RaceResultByTrainerByTrackType.HitCount12 AS [RaceResultByTrainerByTrackType.HitCount12],
		  dbo.RaceResultByTrainerByTrackType.HitCount12Log AS [RaceResultByTrainerByTrackType.HitCount12Log],
		  dbo.RaceResultByTrainerByTrackType.HitRate12 AS [RaceResultByTrainerByTrackType.HitRate12],
		  dbo.RaceResultByTrainerByTrackType.HitRate12Log AS [RaceResultByTrainerByTrackType.HitRate12Log],
		  dbo.RaceResultByTrainerByTrackType.HitCount123 AS [RaceResultByTrainerByTrackType.HitCount123],
		  dbo.RaceResultByTrainerByTrackType.HitCount123Log AS [RaceResultByTrainerByTrackType.HitCount123Log],
		  dbo.RaceResultByTrainerByTrackType.HitRate123 AS [RaceResultByTrainerByTrackType.HitRate123],
		  dbo.RaceResultByTrainerByTrackType.HitRate123Log AS [RaceResultByTrainerByTrackType.HitRate123Log],
		  dbo.RaceResultByTrainerByTrackType.OddsWin AS [RaceResultByTrainerByTrackType.OddsWin],
		  dbo.RaceResultByTrainerByTrackType.OddsWinLog AS [RaceResultByTrainerByTrackType.OddsWinLog],
		  dbo.RaceResultByTrainerByTrackType.OddsPlace1 AS [RaceResultByTrainerByTrackType.OddsPlace1],
		  dbo.RaceResultByTrainerByTrackType.OddsPlace1Log AS [RaceResultByTrainerByTrackType.OddsPlace1Log],
		  dbo.RaceResultByTrainerByTrackType.OddsPlace2 AS [RaceResultByTrainerByTrackType.OddsPlace2],
		  dbo.RaceResultByTrainerByTrackType.OddsPlace2Log AS [RaceResultByTrainerByTrackType.OddsPlace2Log],
		  dbo.RaceResultByTrainerByTrackType.OddsWinInverse AS [RaceResultByTrainerByTrackType.OddsWinInvers],
		  dbo.RaceResultByTrainerByTrackType.OddsWinInverseLog AS [RaceResultByTrainerByTrackType.OddsWinInverseLog],
		  dbo.RaceResultByTrainerByTrackType.OddsPlaceInverse1 AS [RaceResultByTrainerByTrackType.OddsPlaceInverse1],
		  dbo.RaceResultByTrainerByTrackType.OddsPlaceInverse1Log AS [RaceResultByTrainerByTrackType.OddsPlaceInverse1Log],
		  dbo.RaceResultByTrainerByTrackType.OddsPlaceInverse2 AS [RaceResultByTrainerByTrackType.OddsPlaceInverse2],
		  dbo.RaceResultByTrainerByTrackType.OddsPlaceInverse2Log AS [RaceResultByTrainerByTrackType.OddsPlaceInverse2Log],
		  dbo.RaceResultByTrainerByTrackType.ApprovalRateWin AS [RaceResultByTrainerByTrackType.ApprovalRateWin],
		  dbo.RaceResultByTrainerByTrackType.ApprovalRateWinLog AS [RaceResultByTrainerByTrackType.ApprovalRateWinLog],
		  dbo.RaceResultByTrainerByTrackType.ApprovalRatePlace1 AS [RaceResultByTrainerByTrackType.ApprovalRatePlace1],
		  dbo.RaceResultByTrainerByTrackType.ApprovalRatePlace1Log AS [RaceResultByTrainerByTrackType.ApprovalRatePlace1Log],
		  dbo.RaceResultByTrainerByTrackType.ApprovalRatePlace2 AS [RaceResultByTrainerByTrackType.ApprovalRatePlace2],
		  dbo.RaceResultByTrainerByTrackType.ApprovalRatePlace2Log AS [RaceResultByTrainerByTrackType.ApprovalRatePlace2Log],
		  dbo.RaceResultByTrainerByTrackType.ExpectedValueWin AS [RaceResultByTrainerByTrackType.ExpectedValueWin],
		  dbo.RaceResultByTrainerByTrackType.ExpectedValueWinLog AS [RaceResultByTrainerByTrackType.ExpectedValueWinLog],
		  dbo.RaceResultByTrainerByTrackType.ExpectedValuePlace AS [RaceResultByTrainerByTrackType.ExpectedValuePlace],
		  dbo.RaceResultByTrainerByTrackType.ExpectedValuePlaceLog AS [RaceResultByTrainerByTrackType.ExpectedValuePlaceLog],
		  dbo.RaceResultByTrainerByTrackType.StdTime AS [RaceResultByTrainerByTrackType.StdTime],
		  dbo.RaceResultByTrainerByTrackType.StdTimeDev AS [RaceResultByTrainerByTrackType.StdTimeDev],
		  dbo.RaceResultByChildrenCourseType01.RunCount AS [RaceResultByChildrenCourseType01.RunCount],
		  dbo.RaceResultByChildrenCourseType01.RunCountLog AS [RaceResultByChildrenCourseType01.RunCountLog],
		  dbo.RaceResultByChildrenCourseType01.HitCount1 AS [RaceResultByChildrenCourseType01.HitCount1],
		  dbo.RaceResultByChildrenCourseType01.HitCount1Log AS [RaceResultByChildrenCourseType01.HitCount1Log],
		  dbo.RaceResultByChildrenCourseType01.HitRate1 AS [RaceResultByChildrenCourseType01.HitRate1],
		  dbo.RaceResultByChildrenCourseType01.HitCount12 AS [RaceResultByChildrenCourseType01.HitCount12],
		  dbo.RaceResultByChildrenCourseType01.HitCount12Log AS [RaceResultByChildrenCourseType01.HitCount12Log],
		  dbo.RaceResultByChildrenCourseType01.HitRate12 AS [RaceResultByChildrenCourseType01.HitRate12],
		  dbo.RaceResultByChildrenCourseType01.HitCount123 AS [RaceResultByChildrenCourseType01.HitCount123],
		  dbo.RaceResultByChildrenCourseType01.HitCount123Log AS [RaceResultByChildrenCourseType01.HitCount123Log],
		  dbo.RaceResultByChildrenCourseType01.HitRate123 AS [RaceResultByChildrenCourseType01.HitRate123],
		  dbo.RaceResultByChildrenCourseType01.ExpectedValueWin AS [RaceResultByChildrenCourseType01.ExpectedValueWin],
		  dbo.RaceResultByChildrenCourseType01.ExpectedValuePlace AS [RaceResultByChildrenCourseType01.ExpectedValuePlace],
		  dbo.RaceResultByChildrenCourseType02.RunCount AS [RaceResultByChildrenCourseType02.RunCount],
		  dbo.RaceResultByChildrenCourseType02.RunCountLog AS [RaceResultByChildrenCourseType02.RunCountLog],
		  dbo.RaceResultByChildrenCourseType02.HitCount1 AS [RaceResultByChildrenCourseType02.HitCount1],
		  dbo.RaceResultByChildrenCourseType02.HitCount1Log AS [RaceResultByChildrenCourseType02.HitCount1Log],
		  dbo.RaceResultByChildrenCourseType02.HitRate1 AS [RaceResultByChildrenCourseType02.HitRate1],
		  dbo.RaceResultByChildrenCourseType02.HitCount12 AS [RaceResultByChildrenCourseType02.HitCount12],
		  dbo.RaceResultByChildrenCourseType02.HitCount12Log AS [RaceResultByChildrenCourseType02.HitCount12Log],
		  dbo.RaceResultByChildrenCourseType02.HitRate12 AS [RaceResultByChildrenCourseType02.HitRate12],
		  dbo.RaceResultByChildrenCourseType02.HitCount123 AS [RaceResultByChildrenCourseType02.HitCount123],
		  dbo.RaceResultByChildrenCourseType02.HitCount123Log AS [RaceResultByChildrenCourseType02.HitCount123Log],
		  dbo.RaceResultByChildrenCourseType02.HitRate123 AS [RaceResultByChildrenCourseType02.HitRate123],
		  dbo.RaceResultByChildrenCourseType02.ExpectedValueWin AS [RaceResultByChildrenCourseType02.ExpectedValueWin],
		  dbo.RaceResultByChildrenCourseType02.ExpectedValuePlace AS [RaceResultByChildrenCourseType02.ExpectedValuePlace],
		  dbo.RaceResultByChildrenJyoken01.RunCount AS [RaceResultByChildrenJyoken01.RunCount],
		  dbo.RaceResultByChildrenJyoken01.RunCountLog AS [RaceResultByChildrenJyoken01.RunCountLog],
		  dbo.RaceResultByChildrenJyoken01.HitCount1 AS [RaceResultByChildrenJyoken01.HitCount1],
		  dbo.RaceResultByChildrenJyoken01.HitCount1Log AS [RaceResultByChildrenJyoken01.HitCount1Log],
		  dbo.RaceResultByChildrenJyoken01.HitRate1 AS [RaceResultByChildrenJyoken01.HitRate1],
		  dbo.RaceResultByChildrenJyoken01.HitCount12 AS [RaceResultByChildrenJyoken01.HitCount12],
		  dbo.RaceResultByChildrenJyoken01.HitCount12Log AS [RaceResultByChildrenJyoken01.HitCount12Log],
		  dbo.RaceResultByChildrenJyoken01.HitRate12 AS [RaceResultByChildrenJyoken01.HitRate12],
		  dbo.RaceResultByChildrenJyoken01.HitCount123 AS [RaceResultByChildrenJyoken01.HitCount123],
		  dbo.RaceResultByChildrenJyoken01.HitCount123Log AS [RaceResultByChildrenJyoken01.HitCount123Log],
		  dbo.RaceResultByChildrenJyoken01.HitRate123 AS [RaceResultByChildrenJyoken01.HitRate123],
		  dbo.RaceResultByChildrenJyoken01.ExpectedValueWin AS [RaceResultByChildrenJyoken01.ExpectedValueWin],
		  dbo.RaceResultByChildrenJyoken01.ExpectedValuePlace AS [RaceResultByChildrenJyoken01.ExpectedValuePlace],
		  dbo.RaceResultByChildrenJyoken02.RunCount AS [RaceResultByChildrenJyoken02.RunCount],
		  dbo.RaceResultByChildrenJyoken02.RunCountLog AS [RaceResultByChildrenJyoken02.RunCountLog],
		  dbo.RaceResultByChildrenJyoken02.HitCount1 AS [RaceResultByChildrenJyoken02.HitCount1],
		  dbo.RaceResultByChildrenJyoken02.HitCount1Log AS [RaceResultByChildrenJyoken02.HitCount1Log],
		  dbo.RaceResultByChildrenJyoken02.HitRate1 AS [RaceResultByChildrenJyoken02.HitRate1],
		  dbo.RaceResultByChildrenJyoken02.HitCount12 AS [RaceResultByChildrenJyoken02.HitCount12],
		  dbo.RaceResultByChildrenJyoken02.HitCount12Log AS [RaceResultByChildrenJyoken02.HitCount12Log],
		  dbo.RaceResultByChildrenJyoken02.HitRate12 AS [RaceResultByChildrenJyoken02.HitRate12],
		  dbo.RaceResultByChildrenJyoken02.HitCount123 AS [RaceResultByChildrenJyoken02.HitCount123],
		  dbo.RaceResultByChildrenJyoken02.HitCount123Log AS [RaceResultByChildrenJyoken02.HitCount123Log],
		  dbo.RaceResultByChildrenJyoken02.HitRate123 AS [RaceResultByChildrenJyoken02.HitRate123],
		  dbo.RaceResultByChildrenJyoken02.ExpectedValueWin AS [RaceResultByChildrenJyoken02.ExpectedValueWin],
		  dbo.RaceResultByChildrenJyoken02.ExpectedValuePlace AS [RaceResultByChildrenJyoken02.ExpectedValuePlace],
		  dbo.RaceResultByChildrenSmile01.RunCount AS [RaceResultByChildrenSmile01.RunCount],
		  dbo.RaceResultByChildrenSmile01.RunCountLog AS [RaceResultByChildrenSmile01.RunCountLog],
		  dbo.RaceResultByChildrenSmile01.HitCount1 AS [RaceResultByChildrenSmile01.HitCount1],
		  dbo.RaceResultByChildrenSmile01.HitCount1Log AS [RaceResultByChildrenSmile01.HitCount1Log],
		  dbo.RaceResultByChildrenSmile01.HitRate1 AS [RaceResultByChildrenSmile01.HitRate1],
		  dbo.RaceResultByChildrenSmile01.HitCount12 AS [RaceResultByChildrenSmile01.HitCount12],
		  dbo.RaceResultByChildrenSmile01.HitCount12Log AS [RaceResultByChildrenSmile01.HitCount12Log],
		  dbo.RaceResultByChildrenSmile01.HitRate12 AS [RaceResultByChildrenSmile01.HitRate12],
		  dbo.RaceResultByChildrenSmile01.HitCount123 AS [RaceResultByChildrenSmile01.HitCount123],
		  dbo.RaceResultByChildrenSmile01.HitCount123Log AS [RaceResultByChildrenSmile01.HitCount123Log],
		  dbo.RaceResultByChildrenSmile01.HitRate123 AS [RaceResultByChildrenSmile01.HitRate123],
		  dbo.RaceResultByChildrenSmile01.ExpectedValueWin AS [RaceResultByChildrenSmile01.ExpectedValueWin],
		  dbo.RaceResultByChildrenSmile01.ExpectedValuePlace AS [RaceResultByChildrenSmile01.ExpectedValuePlace],
		  dbo.RaceResultByChildrenSmile02.RunCount AS [RaceResultByChildrenSmile02.RunCount],
		  dbo.RaceResultByChildrenSmile02.RunCountLog AS [RaceResultByChildrenSmile02.RunCountLog],
		  dbo.RaceResultByChildrenSmile02.HitCount1 AS [RaceResultByChildrenSmile02.HitCount1],
		  dbo.RaceResultByChildrenSmile02.HitCount1Log AS [RaceResultByChildrenSmile02.HitCount1Log],
		  dbo.RaceResultByChildrenSmile02.HitRate1 AS [RaceResultByChildrenSmile02.HitRate1],
		  dbo.RaceResultByChildrenSmile02.HitCount12 AS [RaceResultByChildrenSmile02.HitCount12],
		  dbo.RaceResultByChildrenSmile02.HitCount12Log AS [RaceResultByChildrenSmile02.HitCount12Log],
		  dbo.RaceResultByChildrenSmile02.HitRate12 AS [RaceResultByChildrenSmile02.HitRate12],
		  dbo.RaceResultByChildrenSmile02.HitCount123 AS [RaceResultByChildrenSmile02.HitCount123],
		  dbo.RaceResultByChildrenSmile02.HitCount123Log AS [RaceResultByChildrenSmile02.HitCount123Log],
		  dbo.RaceResultByChildrenSmile02.HitRate123 AS [RaceResultByChildrenSmile02.HitRate123],
		  dbo.RaceResultByChildrenSmile02.ExpectedValueWin AS [RaceResultByChildrenSmile02.ExpectedValueWin],
		  dbo.RaceResultByChildrenSmile02.ExpectedValuePlace AS [RaceResultByChildrenSmile02.ExpectedValuePlace],
		  dbo.RaceResultByChildrenTrackCondition01.RunCount AS [RaceResultByChildrenTrackCondition01.RunCount],
		  dbo.RaceResultByChildrenTrackCondition01.RunCountLog AS [RaceResultByChildrenTrackCondition01.RunCountLog],
		  dbo.RaceResultByChildrenTrackCondition01.HitCount1 AS [RaceResultByChildrenTrackCondition01.HitCount1],
		  dbo.RaceResultByChildrenTrackCondition01.HitCount1Log AS [RaceResultByChildrenTrackCondition01.HitCount1Log],
		  dbo.RaceResultByChildrenTrackCondition01.HitRate1 AS [RaceResultByChildrenTrackCondition01.HitRate1],
		  dbo.RaceResultByChildrenTrackCondition01.HitCount12 AS [RaceResultByChildrenTrackCondition01.HitCount12],
		  dbo.RaceResultByChildrenTrackCondition01.HitCount12Log AS [RaceResultByChildrenTrackCondition01.HitCount12Log],
		  dbo.RaceResultByChildrenTrackCondition01.HitRate12 AS [RaceResultByChildrenTrackCondition01.HitRate12],
		  dbo.RaceResultByChildrenTrackCondition01.HitCount123 AS [RaceResultByChildrenTrackCondition01.HitCount123],
		  dbo.RaceResultByChildrenTrackCondition01.HitCount123Log AS [RaceResultByChildrenTrackCondition01.HitCount123Log],
		  dbo.RaceResultByChildrenTrackCondition01.HitRate123 AS [RaceResultByChildrenTrackCondition01.HitRate123],
		  dbo.RaceResultByChildrenTrackCondition01.ExpectedValueWin AS [RaceResultByChildrenTrackCondition01.ExpectedValueWin],
		  dbo.RaceResultByChildrenTrackCondition01.ExpectedValuePlace AS [RaceResultByChildrenTrackCondition01.ExpectedValuePlace],
		  dbo.RaceResultByChildrenTrackCondition02.RunCount AS [RaceResultByChildrenTrackCondition02.RunCount],
		  dbo.RaceResultByChildrenTrackCondition02.RunCountLog AS [RaceResultByChildrenTrackCondition02.RunCountLog],
		  dbo.RaceResultByChildrenTrackCondition02.HitCount1 AS [RaceResultByChildrenTrackCondition02.HitCount1],
		  dbo.RaceResultByChildrenTrackCondition02.HitCount1Log AS [RaceResultByChildrenTrackCondition02.HitCount1Log],
		  dbo.RaceResultByChildrenTrackCondition02.HitRate1 AS [RaceResultByChildrenTrackCondition02.HitRate1],
		  dbo.RaceResultByChildrenTrackCondition02.HitCount12 AS [RaceResultByChildrenTrackCondition02.HitCount12],
		  dbo.RaceResultByChildrenTrackCondition02.HitCount12Log AS [RaceResultByChildrenTrackCondition02.HitCount12Log],
		  dbo.RaceResultByChildrenTrackCondition02.HitRate12 AS [RaceResultByChildrenTrackCondition02.HitRate12],
		  dbo.RaceResultByChildrenTrackCondition02.HitCount123 AS [RaceResultByChildrenTrackCondition02.HitCount123],
		  dbo.RaceResultByChildrenTrackCondition02.HitCount123Log AS [RaceResultByChildrenTrackCondition02.HitCount123Log],
		  dbo.RaceResultByChildrenTrackCondition02.HitRate123 AS [RaceResultByChildrenTrackCondition02.HitRate123],
		  dbo.RaceResultByChildrenTrackCondition02.ExpectedValueWin AS [RaceResultByChildrenTrackCondition02.ExpectedValueWin],
		  dbo.RaceResultByChildrenTrackCondition02.ExpectedValuePlace AS [RaceResultByChildrenTrackCondition02.ExpectedValuePlace],
		  dbo.RaceResultByChildrenTrackType01.RunCount AS [RaceResultByChildrenTrackType01.RunCount],
		  dbo.RaceResultByChildrenTrackType01.RunCountLog AS [RaceResultByChildrenTrackType01.RunCountLog],
		  dbo.RaceResultByChildrenTrackType01.HitCount1 AS [RaceResultByChildrenTrackType01.HitCount1],
		  dbo.RaceResultByChildrenTrackType01.HitCount1Log AS [RaceResultByChildrenTrackType01.HitCount1Log],
		  dbo.RaceResultByChildrenTrackType01.HitRate1 AS [RaceResultByChildrenTrackType01.HitRate1],
		  dbo.RaceResultByChildrenTrackType01.HitCount12 AS [RaceResultByChildrenTrackType01.HitCount12],
		  dbo.RaceResultByChildrenTrackType01.HitCount12Log AS [RaceResultByChildrenTrackType01.HitCount12Log],
		  dbo.RaceResultByChildrenTrackType01.HitRate12 AS [RaceResultByChildrenTrackType01.HitRate12],
		  dbo.RaceResultByChildrenTrackType01.HitCount123 AS [RaceResultByChildrenTrackType01.HitCount123],
		  dbo.RaceResultByChildrenTrackType01.HitCount123Log AS [RaceResultByChildrenTrackType01.HitCount123Log],
		  dbo.RaceResultByChildrenTrackType01.HitRate123 AS [RaceResultByChildrenTrackType01.HitRate123],
		  dbo.RaceResultByChildrenTrackType01.ExpectedValueWin AS [RaceResultByChildrenTrackType01.ExpectedValueWin],
		  dbo.RaceResultByChildrenTrackType01.ExpectedValuePlace AS [RaceResultByChildrenTrackType01.ExpectedValuePlace],
		  dbo.RaceResultByChildrenTrackType02.RunCount AS [RaceResultByChildrenTrackType02.RunCount],
		  dbo.RaceResultByChildrenTrackType02.RunCountLog AS [RaceResultByChildrenTrackType02.RunCountLog],
		  dbo.RaceResultByChildrenTrackType02.HitCount1 AS [RaceResultByChildrenTrackType02.HitCount1],
		  dbo.RaceResultByChildrenTrackType02.HitCount1Log AS [RaceResultByChildrenTrackType02.HitCount1Log],
		  dbo.RaceResultByChildrenTrackType02.HitRate1 AS [RaceResultByChildrenTrackType02.HitRate1],
		  dbo.RaceResultByChildrenTrackType02.HitCount12 AS [RaceResultByChildrenTrackType02.HitCount12],
		  dbo.RaceResultByChildrenTrackType02.HitCount12Log AS [RaceResultByChildrenTrackType02.HitCount12Log],
		  dbo.RaceResultByChildrenTrackType02.HitRate12 AS [RaceResultByChildrenTrackType02.HitRate12],
		  dbo.RaceResultByChildrenTrackType02.HitCount123 AS [RaceResultByChildrenTrackType02.HitCount123],
		  dbo.RaceResultByChildrenTrackType02.HitCount123Log AS [RaceResultByChildrenTrackType02.HitCount123Log],
		  dbo.RaceResultByChildrenTrackType02.HitRate123 AS [RaceResultByChildrenTrackType02.HitRate123],
		  dbo.RaceResultByChildrenTrackType02.ExpectedValueWin AS [RaceResultByChildrenTrackType02.ExpectedValueWin],
		  dbo.RaceResultByChildrenTrackType02.ExpectedValuePlace AS [RaceResultByChildrenTrackType02.ExpectedValuePlace],
/*
		, dbo.RaceResultByParents01.RunCount AS [RaceResultByParents01.RunCount]
		, dbo.RaceResultByParents01.RunCountLog AS [RaceResultByParents01.RunCountLog]
		, dbo.RaceResultByParents01.HitCount1 AS [RaceResultByParents01.HitCount1]
		, dbo.RaceResultByParents01.HitCount1Log AS [RaceResultByParents01.HitCount1Log]
		, dbo.RaceResultByParents01.HitRate1 AS [RaceResultByParents01.HitRate1]
		, dbo.RaceResultByParents01.HitRate1Log AS [RaceResultByParents01.HitRate1Log]
		, dbo.RaceResultByParents01.HitCount12 AS [RaceResultByParents01.HitCount12]
		, dbo.RaceResultByParents01.HitCount12Log AS [RaceResultByParents01.HitCount12Log]
		, dbo.RaceResultByParents01.HitRate12 AS [RaceResultByParents01.HitRate12]
		, dbo.RaceResultByParents01.HitRate12Log AS [RaceResultByParents01.HitRate12Log]
		, dbo.RaceResultByParents01.HitCount123 AS [RaceResultByParents01.HitCount123]
		, dbo.RaceResultByParents01.HitCount123Log AS [RaceResultByParents01.HitCount123Log]
		, dbo.RaceResultByParents01.HitRate123 AS [RaceResultByParents01.HitRate123]
		, dbo.RaceResultByParents01.HitRate123Log AS [RaceResultByParents01.HitRate123Log]
		, dbo.RaceResultByParents01.OddsWin AS [RaceResultByParents01.OddsWin]
		, dbo.RaceResultByParents01.OddsWinLog AS [RaceResultByParents01.OddsWinLog]
		, dbo.RaceResultByParents01.OddsPlace1 AS [RaceResultByParents01.OddsPlace1]
		, dbo.RaceResultByParents01.OddsPlace1Log AS [RaceResultByParents01.OddsPlace1Log]
		, dbo.RaceResultByParents01.OddsPlace2 AS [RaceResultByParents01.OddsPlace2]
		, dbo.RaceResultByParents01.OddsPlace2Log AS [RaceResultByParents01.OddsPlace2Log]
		, dbo.RaceResultByParents01.OddsWinInverse AS [RaceResultByParents01.OddsWinInvers]
		, dbo.RaceResultByParents01.OddsWinInverseLog AS [RaceResultByParents01.OddsWinInverseLog]
		, dbo.RaceResultByParents01.OddsPlaceInverse1 AS [RaceResultByParents01.OddsPlaceInverse1]
		, dbo.RaceResultByParents01.OddsPlaceInverse1Log AS [RaceResultByParents01.OddsPlaceInverse1Log]
		, dbo.RaceResultByParents01.OddsPlaceInverse2 AS [RaceResultByParents01.OddsPlaceInverse2]
		, dbo.RaceResultByParents01.OddsPlaceInverse2Log AS [RaceResultByParents01.OddsPlaceInverse2Log]
		, dbo.RaceResultByParents01.ApprovalRateWin AS [RaceResultByParents01.ApprovalRateWin]
		, dbo.RaceResultByParents01.ApprovalRateWinLog AS [RaceResultByParents01.ApprovalRateWinLog]
		, dbo.RaceResultByParents01.ApprovalRatePlace1 AS [RaceResultByParents01.ApprovalRatePlace1]
		, dbo.RaceResultByParents01.ApprovalRatePlace1Log AS [RaceResultByParents01.ApprovalRatePlace1Log]
		, dbo.RaceResultByParents01.ApprovalRatePlace2 AS [RaceResultByParents01.ApprovalRatePlace2]
		, dbo.RaceResultByParents01.ApprovalRatePlace2Log AS [RaceResultByParents01.ApprovalRatePlace2Log]
		, dbo.RaceResultByParents01.ExpectedValueWin AS [RaceResultByParents01.ExpectedValueWin]
		, dbo.RaceResultByParents01.ExpectedValueWinLog AS [RaceResultByParents01.ExpectedValueWinLog]
		, dbo.RaceResultByParents01.ExpectedValuePlace AS [RaceResultByParents01.ExpectedValuePlace]
		, dbo.RaceResultByParents01.ExpectedValuePlaceLog AS [RaceResultByParents01.ExpectedValuePlaceLog]
		, dbo.RaceResultByParents01.StdTime AS [RaceResultByParents01.StdTime]
		, dbo.RaceResultByParents01.StdTimeDev AS [RaceResultByParents01.StdTimeDev]

		, dbo.RaceResultByParents02.RunCount AS [RaceResultByParents02.RunCount]
		, dbo.RaceResultByParents02.RunCountLog AS [RaceResultByParents02.RunCountLog]
		, dbo.RaceResultByParents02.HitCount1 AS [RaceResultByParents02.HitCount1]
		, dbo.RaceResultByParents02.HitCount1Log AS [RaceResultByParents02.HitCount1Log]
		, dbo.RaceResultByParents02.HitRate1 AS [RaceResultByParents02.HitRate1]
		, dbo.RaceResultByParents02.HitRate1Log AS [RaceResultByParents02.HitRate1Log]
		, dbo.RaceResultByParents02.HitCount12 AS [RaceResultByParents02.HitCount12]
		, dbo.RaceResultByParents02.HitCount12Log AS [RaceResultByParents02.HitCount12Log]
		, dbo.RaceResultByParents02.HitRate12 AS [RaceResultByParents02.HitRate12]
		, dbo.RaceResultByParents02.HitRate12Log AS [RaceResultByParents02.HitRate12Log]
		, dbo.RaceResultByParents02.HitCount123 AS [RaceResultByParents02.HitCount123]
		, dbo.RaceResultByParents02.HitCount123Log AS [RaceResultByParents02.HitCount123Log]
		, dbo.RaceResultByParents02.HitRate123 AS [RaceResultByParents02.HitRate123]
		, dbo.RaceResultByParents02.HitRate123Log AS [RaceResultByParents02.HitRate123Log]
		, dbo.RaceResultByParents02.OddsWin AS [RaceResultByParents02.OddsWin]
		, dbo.RaceResultByParents02.OddsWinLog AS [RaceResultByParents02.OddsWinLog]
		, dbo.RaceResultByParents02.OddsPlace1 AS [RaceResultByParents02.OddsPlace1]
		, dbo.RaceResultByParents02.OddsPlace1Log AS [RaceResultByParents02.OddsPlace1Log]
		, dbo.RaceResultByParents02.OddsPlace2 AS [RaceResultByParents02.OddsPlace2]
		, dbo.RaceResultByParents02.OddsPlace2Log AS [RaceResultByParents02.OddsPlace2Log]
		, dbo.RaceResultByParents02.OddsWinInverse AS [RaceResultByParents02.OddsWinInvers]
		, dbo.RaceResultByParents02.OddsWinInverseLog AS [RaceResultByParents02.OddsWinInverseLog]
		, dbo.RaceResultByParents02.OddsPlaceInverse1 AS [RaceResultByParents02.OddsPlaceInverse1]
		, dbo.RaceResultByParents02.OddsPlaceInverse1Log AS [RaceResultByParents02.OddsPlaceInverse1Log]
		, dbo.RaceResultByParents02.OddsPlaceInverse2 AS [RaceResultByParents02.OddsPlaceInverse2]
		, dbo.RaceResultByParents02.OddsPlaceInverse2Log AS [RaceResultByParents02.OddsPlaceInverse2Log]
		, dbo.RaceResultByParents02.ApprovalRateWin AS [RaceResultByParents02.ApprovalRateWin]
		, dbo.RaceResultByParents02.ApprovalRateWinLog AS [RaceResultByParents02.ApprovalRateWinLog]
		, dbo.RaceResultByParents02.ApprovalRatePlace1 AS [RaceResultByParents02.ApprovalRatePlace1]
		, dbo.RaceResultByParents02.ApprovalRatePlace1Log AS [RaceResultByParents02.ApprovalRatePlace1Log]
		, dbo.RaceResultByParents02.ApprovalRatePlace2 AS [RaceResultByParents02.ApprovalRatePlace2]
		, dbo.RaceResultByParents02.ApprovalRatePlace2Log AS [RaceResultByParents02.ApprovalRatePlace2Log]
		, dbo.RaceResultByParents02.ExpectedValueWin AS [RaceResultByParents02.ExpectedValueWin]
		, dbo.RaceResultByParents02.ExpectedValueWinLog AS [RaceResultByParents02.ExpectedValueWinLog]
		, dbo.RaceResultByParents02.ExpectedValuePlace AS [RaceResultByParents02.ExpectedValuePlace]
		, dbo.RaceResultByParents02.ExpectedValuePlaceLog AS [RaceResultByParents02.ExpectedValuePlaceLog]
		, dbo.RaceResultByParents02.StdTime AS [RaceResultByParents02.StdTime]
		, dbo.RaceResultByParents02.StdTimeDev AS [RaceResultByParents02.StdTimeDev]
*/
		  dbo.MasterMinarai.IsMinaraiCD_1KgMinus AS [MasterMinarai.IsMinaraiCD_1KgMinus],
		  dbo.MasterMinarai.IsMinaraiCD_2KgMinus AS [MasterMinarai.IsMinaraiCD_2KgMinus],
		  dbo.MasterMinarai.IsMinaraiCD_3KgMinus AS [MasterMinarai.IsMinaraiCD_3KgMinus],
		  dbo.MasterSex.IsSexCD_Male AS [MasterSex.IsSexCD_Male],
		  dbo.MasterSex.IsSexCD_Mare AS [MasterSex.IsSexCD_Mare],
		  dbo.MasterSex.IsSexCD_Gelding AS [MasterSex.IsSexCD_Gelding]
	FROM   dbo.Race
		  INNER JOIN dbo.RaceHorse
		  ON dbo.Race.RaceID = dbo.RaceHorse.RaceID
		  INNER JOIN dbo.RaceHorseBet
		  ON dbo.RaceHorseBet.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceHorseBet.KettoNum = dbo.RaceHorse.KettoNum
		  INNER JOIN dbo.DataMining
		  ON dbo.DataMining.RaceID = dbo.RaceHorse.RaceID
			AND dbo.DataMining.Umaban = dbo.RaceHorse.Umaban
		  INNER JOIN dbo.Odds1ByWin
		  ON dbo.Odds1ByWin.RaceID = dbo.RaceHorse.RaceID
			AND dbo.Odds1ByWin.BetTypeCD = 1
			AND dbo.RaceHorse.Umaban = dbo.Odds1ByWin.Kumi1
			AND dbo.Odds1ByWin.Kumi2 = 0
			AND dbo.Odds1ByWin.Kumi3 = 0
		  INNER JOIN dbo.Odds1ByPlace
		  ON dbo.Odds1ByPlace.RaceID = dbo.RaceHorse.RaceID
			AND dbo.Odds1ByPlace.BetTypeCD = 2
			AND dbo.RaceHorse.Umaban = dbo.Odds1ByPlace.Kumi1
			AND dbo.Odds1ByPlace.Kumi2 = 0
			AND dbo.Odds1ByPlace.Kumi3 = 0
		  INNER JOIN dbo.RaceResultByBanusi
		  ON dbo.RaceResultByBanusi.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByBanusi.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByBanusi.SummaryType = 2
		  INNER JOIN dbo.RaceResultByBanusiByTotal
		  ON dbo.RaceResultByBanusiByTotal.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByBanusiByTotal.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByBanusiByTotal.SummaryType = 2
		  INNER JOIN dbo.RaceResultByBreeder
		  ON dbo.RaceResultByBreeder.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByBreeder.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByBreeder.SummaryType = 2
		  INNER JOIN dbo.RaceResultByBreederByTotal
		  ON dbo.RaceResultByBreederByTotal.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByBreederByTotal.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByBreederByTotal.SummaryType = 2
		  INNER JOIN dbo.RaceResultByHorse
		  ON dbo.RaceResultByHorse.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByHorse.KettoNum = dbo.RaceHorse.KettoNum
		  INNER JOIN dbo.RaceResultByHorseByCourseType
		  ON dbo.RaceResultByHorseByCourseType.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByHorseByCourseType.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByHorseByCourseType.TrackTypeCD = dbo.Race.TrackTypeCD
			AND dbo.RaceResultByHorseByCourseType.CourseTypeCD = dbo.Race.CourseTypeCD
/*
		INNER JOIN
		dbo.RaceResultByHorseByDistanceType
		ON
		dbo.RaceResultByHorseByDistanceType.RaceID = dbo.RaceHorse.RaceID
		AND dbo.RaceResultByHorseByDistanceType.KettoNum = dbo.RaceHorse.KettoNum
		AND dbo.RaceResultByHorseByDistanceType.TrackTypeCD = dbo.Race.TrackTypeCD
		AND dbo.RaceResultByHorseByDistanceType.DistanceTypeCD = dbo.Race.DistanceTypeCD
*/
		  INNER JOIN dbo.RaceResultByHorseByJyo
		  ON dbo.RaceResultByHorseByJyo.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByHorseByJyo.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByHorseByJyo.TrackTypeCD = dbo.Race.TrackTypeCD
			AND dbo.RaceResultByHorseByJyo.JyoCD2 = dbo.Race.JyoCD
		  INNER JOIN dbo.RaceResultByHorseByRunningStyle
		  ON dbo.RaceResultByHorseByRunningStyle.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByHorseByRunningStyle.KettoNum = dbo.RaceHorse.KettoNum
		  INNER JOIN dbo.RaceResultByHorseByTotal
		  ON dbo.RaceResultByHorseByTotal.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByHorseByTotal.KettoNum = dbo.RaceHorse.KettoNum
		  INNER JOIN dbo.RaceResultByHorseByTrackCondition
		  ON dbo.RaceResultByHorseByTrackCondition.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByHorseByTrackCondition.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByHorseByTrackCondition.TrackTypeCD = dbo.Race.TrackTypeCD
			AND dbo.RaceResultByHorseByTrackCondition.TrackConditionCD = dbo.Race.TrackConditionCD
		  INNER JOIN dbo.RaceResultByHorseByTrackType
		  ON dbo.RaceResultByHorseByTrackType.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByHorseByTrackType.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByHorseByTrackType.TrackTypeCD = dbo.Race.TrackTypeCD
		  INNER JOIN dbo.RaceResultByJocky
		  ON dbo.RaceResultByJocky.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByJocky.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByJocky.SummaryType = 2
/*
		INNER JOIN
		dbo.RaceResultByJockyByDistanceType
		ON
		dbo.RaceResultByJockyByDistanceType.RaceID = dbo.RaceHorse.RaceID
		AND dbo.RaceResultByJockyByDistanceType.KettoNum = dbo.RaceHorse.KettoNum
		AND dbo.RaceResultByJockyByDistanceType.SummaryType = 2
		AND dbo.RaceResultByJockyByDistanceType.TrackType2CD = dbo.Race.TrackType2CD
		AND dbo.RaceResultByJockyByDistanceType.DistanceTypeCD = dbo.Race.DistanceTypeCD
*/
		  INNER JOIN dbo.RaceResultByJockyByJyo
		  ON dbo.RaceResultByJockyByJyo.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByJockyByJyo.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByJockyByJyo.SummaryType = 2
			AND dbo.RaceResultByJockyByJyo.TrackTypeCD = dbo.Race.TrackTypeCD
			AND dbo.RaceResultByJockyByJyo.JyoCD2 = dbo.Race.JyoCD
		  INNER JOIN dbo.RaceResultByJockyByTrackType
		  ON dbo.RaceResultByJockyByTrackType.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByJockyByTrackType.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByJockyByTrackType.SummaryType = 2
			AND dbo.RaceResultByJockyByTrackType.TrackTypeCD = dbo.Race.TrackTypeCD
		  INNER JOIN dbo.RaceResultByTrainer
		  ON dbo.RaceResultByTrainer.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByTrainer.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByTrainer.SummaryType = 2
/*
		INNER JOIN
		dbo.RaceResultByTrainerByDistanceType
		ON
		dbo.RaceResultByTrainerByDistanceType.RaceID = dbo.RaceHorse.RaceID
		AND dbo.RaceResultByTrainerByDistanceType.KettoNum = dbo.RaceHorse.KettoNum
		AND dbo.RaceResultByTrainerByDistanceType.SummaryType = 2
		AND dbo.RaceResultByTrainerByDistanceType.TrackType2CD = dbo.Race.TrackType2CD
		AND dbo.RaceResultByTrainerByDistanceType.DistanceTypeCD = dbo.Race.DistanceTypeCD
*/
		  INNER JOIN dbo.RaceResultByTrainerByJyo
		  ON dbo.RaceResultByTrainerByJyo.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByTrainerByJyo.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByTrainerByJyo.SummaryType = 2
			AND dbo.RaceResultByTrainerByJyo.TrackTypeCD = dbo.Race.TrackTypeCD
			AND dbo.RaceResultByTrainerByJyo.JyoCD2 = dbo.Race.JyoCD
		  INNER JOIN dbo.RaceResultByTrainerByTrackType
		  ON dbo.RaceResultByTrainerByTrackType.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByTrainerByTrackType.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByTrainerByTrackType.SummaryType = 2
			AND dbo.RaceResultByTrainerByTrackType.TrackTypeCD = dbo.Race.TrackTypeCD
		  INNER JOIN dbo.RaceResultByChildrenCourseType01
		  ON dbo.RaceResultByChildrenCourseType01.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenCourseType01.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenCourseType01.CourseTypeCD = dbo.Race.CourseTypeCD
		  INNER JOIN dbo.RaceResultByChildrenCourseType02
		  ON dbo.RaceResultByChildrenCourseType02.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenCourseType02.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenCourseType02.CourseTypeCD = dbo.Race.CourseTypeCD
		  INNER JOIN dbo.RaceResultByChildrenJyoken01
		  ON dbo.RaceResultByChildrenJyoken01.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenJyoken01.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenJyoken01.JyokenCD5 = dbo.Race.JyokenCD5
		  INNER JOIN dbo.RaceResultByChildrenJyoken02
		  ON dbo.RaceResultByChildrenJyoken02.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenJyoken02.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenJyoken02.JyokenCD5 = dbo.Race.JyokenCD5
		  INNER JOIN dbo.RaceResultByChildrenSmile01
		  ON dbo.RaceResultByChildrenSmile01.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenSmile01.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenSmile01.SmileCD = dbo.Race.SmileCD
		  INNER JOIN dbo.RaceResultByChildrenSmile02
		  ON dbo.RaceResultByChildrenSmile02.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenSmile02.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenSmile02.SmileCD = dbo.Race.SmileCD
		  INNER JOIN dbo.RaceResultByChildrenTrackCondition01
		  ON dbo.RaceResultByChildrenTrackCondition01.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenTrackCondition01.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenTrackCondition01.TrackConditionCD = dbo.Race.TrackConditionCD
		  INNER JOIN dbo.RaceResultByChildrenTrackCondition02
		  ON dbo.RaceResultByChildrenTrackCondition02.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenTrackCondition02.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenTrackCondition02.TrackConditionCD = dbo.Race.TrackConditionCD
		  INNER JOIN dbo.RaceResultByChildrenTrackType01
		  ON dbo.RaceResultByChildrenTrackType01.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenTrackType01.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenTrackType01.TrackTypeCD = dbo.Race.TrackTypeCD
		  INNER JOIN dbo.RaceResultByChildrenTrackType02
		  ON dbo.RaceResultByChildrenTrackType02.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenTrackType02.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenTrackType02.TrackTypeCD = dbo.Race.TrackTypeCD
/*
		INNER JOIN
		dbo.RaceResultByParents01
		ON
		dbo.RaceResultByParents01.RaceID = dbo.RaceHorse.RaceID
		AND dbo.RaceResultByParents01.KettoNum = dbo.RaceHorse.KettoNum
		INNER JOIN
		dbo.RaceResultByParents02
		ON
		dbo.RaceResultByParents02.RaceID = dbo.RaceHorse.RaceID
		AND dbo.RaceResultByParents02.KettoNum = dbo.RaceHorse.KettoNum
*/
		  INNER JOIN dbo.MasterMinarai
		  ON dbo.RaceHorse.MinaraiCD = dbo.MasterMinarai.MinaraiCD
		  INNER JOIN dbo.MasterSex
		  ON dbo.RaceHorse.SexCD = dbo.MasterSex.SexCD
	WHERE  dbo.Race.IsNormal = 1
		  AND dbo.RaceHorse.IsNormal = 1
		  AND dbo.Race.RaceDate BETWEEN CONVERT(DATETIME,'2004-01-01 00:00:00',102) AND CONVERT(DATETIME,'2013-12-31 00:00:00',102)
		  AND dbo.Race.TrackTypeCD = 1
		  AND dbo.Race.JyokenCD5 = '703';


GO
/****** Object:  View [dbo].[Z_R_G_2_005_00_0000]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Z_R_G_2_005_00_0000]
AS
	SELECT dbo.RaceHorse.StdTimeDev AS [RaceHorse.StdTimeDev],
		  dbo.RaceHorse.StdTime AS [RaceHorse.StdTime],
		  dbo.RaceHorse.IsHit_1 AS [RaceHorse.IsHit_1],
		  dbo.RaceHorse.IsHit_12 AS [RaceHorse.IsHit_12],
		  dbo.RaceHorse.IsHit_123 AS [RaceHorse.IsHit_123],
		  dbo.RaceHorse.KakuteiJyuni AS [RaceHorse.KakuteiJyuni],
		  dbo.RaceHorseBet.PayoffWin AS [RaceHorse.PayoffWin],
		  dbo.RaceHorseBet.PayoffWinLog AS [RaceHorse.PayoffWinLog],
		  dbo.RaceHorseBet.PayoffPlace AS [RaceHorse.PayoffPlace],
		  dbo.RaceHorseBet.PayoffPlaceLog AS [RaceHorse.PayoffPlaceLog],
		  dbo.Race.JyoCD AS [Race.JyoCD],
		  dbo.Race.TrackTypeCD AS [Race.TrackTypeCD],
		  dbo.Race.JyokenCD5 AS [Race.JyokenCD5],
		  dbo.Race.Kyori AS [Race.Kyori],
		  dbo.Race.TenkoCD AS [Race.TenkoCD],
		  dbo.Race.TrackConditionCD AS [Race.TrackConditionCD],
		  dbo.RaceHorse.BaTaijyu AS [RaceHorse.BaTaijyu],
		  dbo.RaceHorse.Futan AS [RaceHorse.Futan],
		  dbo.RaceHorse.IsBlinker AS [RaceHorse.IsBlinker],
		  dbo.RaceHorse.ZogenSa AS [RaceHorse.ZogenSa],
		  dbo.RaceHorse.ZogenPercent AS [RaceHorse.ZogenPercent],
		  dbo.RaceHorse.FutanPercent AS [RaceHorse.FutanPercent],
		  dbo.RaceHorse.LifeTime AS [RaceHorse.LifeTime],
		  dbo.RaceHorse.Ninki AS [RaceHorse.Ninki],
		  dbo.RaceHorse.IsNinki_01 AS [RaceHorse.IsNinki_01],
		  dbo.RaceHorse.IsNinki_02 AS [RaceHorse.IsNinki_02],
		  dbo.RaceHorse.IsNinki_03 AS [RaceHorse.IsNinki_03],
		  dbo.RaceHorse.IsNinki_04 AS [RaceHorse.IsNinki_04],
		  dbo.RaceHorse.IsNinki_05 AS [RaceHorse.IsNinki_05],
		  dbo.RaceHorse.IsNinki_06 AS [RaceHorse.IsNinki_06],
		  dbo.RaceHorse.IsNinki_07 AS [RaceHorse.IsNinki_07],
		  dbo.RaceHorse.IsNinki_08 AS [RaceHorse.IsNinki_08],
		  dbo.RaceHorse.IsNinki_09 AS [RaceHorse.IsNinki_09],
		  dbo.RaceHorse.IsNinki_10 AS [RaceHorse.IsNinki_10],
		  dbo.RaceHorse.IsNinki_11 AS [RaceHorse.IsNinki_11],
		  dbo.RaceHorse.IsNinki_12 AS [RaceHorse.IsNinki_12],
		  dbo.RaceHorse.IsNinki_13 AS [RaceHorse.IsNinki_13],
		  dbo.RaceHorse.IsNinki_14 AS [RaceHorse.IsNinki_14],
		  dbo.RaceHorse.IsNinki_15 AS [RaceHorse.IsNinki_15],
		  dbo.RaceHorse.IsNinki_16 AS [RaceHorse.IsNinki_16],
		  dbo.RaceHorse.IsNinki_17 AS [RaceHorse.IsNinki_17],
		  dbo.RaceHorse.IsNinki_18 AS [RaceHorse.IsNinki_18],
		  dbo.RaceHorse.Prev1TrackTypeCD AS [RaceHorse.Prev1TrackTypeCD],
		  dbo.RaceHorse.IsPrev1TrackTypeCD_1 AS [RaceHorse.IsPrev1TrackTypeCD_1],
		  dbo.RaceHorse.IsPrev1TrackTypeCD_2 AS [RaceHorse.IsPrev1TrackTypeCD_2],
		  dbo.RaceHorse.IsPrev1TrackTypeCD_3 AS [RaceHorse.IsPrev1TrackTypeCD_3],
		  dbo.RaceHorse.Prev1JyokenCD5 AS [RaceHorse.Prev1JyokenCD5],
		  dbo.RaceHorse.IsPrev1JyokenCD5_005 AS [RaceHorse.IsPrev1JyokenCD5_005],
		  dbo.RaceHorse.IsPrev1JyokenCD5_010 AS [RaceHorse.IsPrev1JyokenCD5_010],
		  dbo.RaceHorse.IsPrev1JyokenCD5_016 AS [RaceHorse.IsPrev1JyokenCD5_016],
		  dbo.RaceHorse.IsPrev1JyokenCD5_701 AS [RaceHorse.IsPrev1JyokenCD5_701],
		  dbo.RaceHorse.IsPrev1JyokenCD5_703 AS [RaceHorse.IsPrev1JyokenCD5_703],
		  dbo.RaceHorse.IsPrev1JyokenCD5_999 AS [RaceHorse.IsPrev1JyokenCD5_999],
		  dbo.RaceHorse.IsPrev1JyokenCD5_Up AS [RaceHorse.IsPrev1JyokenCD5_Up],
		  dbo.RaceHorse.IsPrev1JyokenCD5_Down AS [RaceHorse.IsPrev1JyokenCD5_Down],
		  dbo.RaceHorse.Prev1RaceResult AS [RaceHorse.Prev1RaceResult],
		  dbo.RaceHorse.IsPrev1RaceResult_01 AS [RaceHorse.IsPrev1RaceResult_01],
		  dbo.RaceHorse.IsPrev1RaceResult_02 AS [RaceHorse.IsPrev1RaceResult_02],
		  dbo.RaceHorse.IsPrev1RaceResult_03 AS [RaceHorse.IsPrev1RaceResult_03],
		  dbo.RaceHorse.IsPrev1RaceResult_04 AS [RaceHorse.IsPrev1RaceResult_04],
		  dbo.RaceHorse.IsPrev1RaceResult_05 AS [RaceHorse.IsPrev1RaceResult_05],
		  dbo.RaceHorse.IsPrev1RaceResult_06 AS [RaceHorse.IsPrev1RaceResult_06],
		  dbo.RaceHorse.IsPrev1RaceResult_07 AS [RaceHorse.IsPrev1RaceResult_07],
		  dbo.RaceHorse.IsPrev1RaceResult_08 AS [RaceHorse.IsPrev1RaceResult_08],
		  dbo.RaceHorse.IsPrev1RaceResult_09 AS [RaceHorse.IsPrev1RaceResult_09],
		  dbo.RaceHorse.IsPrev1RaceResult_10 AS [RaceHorse.IsPrev1RaceResult_10],
		  dbo.RaceHorse.IsPrev1RaceResult_11 AS [RaceHorse.IsPrev1RaceResult_11],
		  dbo.RaceHorse.IsPrev1RaceResult_12 AS [RaceHorse.IsPrev1RaceResult_12],
		  dbo.RaceHorse.IsPrev1RaceResult_13 AS [RaceHorse.IsPrev1RaceResult_13],
		  dbo.RaceHorse.IsPrev1RaceResult_14 AS [RaceHorse.IsPrev1RaceResult_14],
		  dbo.RaceHorse.IsPrev1RaceResult_15 AS [RaceHorse.IsPrev1RaceResult_15],
		  dbo.RaceHorse.IsPrev1RaceResult_16 AS [RaceHorse.IsPrev1RaceResult_16],
		  dbo.RaceHorse.IsPrev1RaceResult_17 AS [RaceHorse.IsPrev1RaceResult_17],
		  dbo.RaceHorse.IsPrev1RaceResult_18 AS [RaceHorse.IsPrev1RaceResult_18],
		  dbo.DataMining.DMTime AS [DataMining.DMTime],
		  dbo.DataMining.DMTimeP AS [DataMining.DMTimeP],
		  dbo.DataMining.DMTimeM AS [DataMining.DMTimeM],
		  dbo.DataMining.DMStdTime AS [DataMining.DMStdTime],
		  dbo.DataMining.DMStdTimeDev AS [DataMining.DMStdTimeDev],
		  dbo.Odds1ByWin.BetCount AS [Odds1ByWin.BetCount],
		  dbo.Odds1ByWin.Odds1 AS [Odds1ByWin.Odds1],
		  dbo.Odds1ByWin.Odds1Log AS [Odds1ByWin.Odds1Log],
		  dbo.Odds1ByWin.OddsRate1 AS [Odds1ByWin.OddsRate1],
		  dbo.Odds1ByWin.OddsInverse1 AS [Odds1ByWin.OddsInverse1],
		  dbo.Odds1ByWin.OddsInverse1Log AS [Odds1ByWin.OddsInverse1Log],
		  dbo.Odds1ByWin.ApprovalRateWin AS [Odds1ByWin.ApprovalRateWin],
		  dbo.Odds1ByWin.ApprovalRateWinLog AS [Odds1ByWin.ApprovalRateWinLog],
		  dbo.Odds1ByPlace.Odds1 AS [Odds1ByPlace.Odds1],
		  dbo.Odds1ByPlace.Odds1Log AS [Odds1ByPlace.Odds1Log],
		  dbo.Odds1ByPlace.Odds2 AS [Odds1ByPlace.Odds2],
		  dbo.Odds1ByPlace.Odds2Log AS [Odds1ByPlace.Odds2Log],
		  dbo.Odds1ByPlace.OddsRate1 AS [Odds1ByPlace.OddsRate1],
		  dbo.Odds1ByPlace.OddsRate2 AS [Odds1ByPlace.OddsRate2],
		  dbo.Odds1ByPlace.OddsInverse1 AS [Odds1ByPlace.OddsInverse1],
		  dbo.Odds1ByPlace.OddsInverse2 AS [Odds1ByPlace.OddsInverse2],
		  dbo.Odds1ByPlace.OddsInverse1Log AS [Odds1ByPlace.OddsInverse1Log],
		  dbo.Odds1ByPlace.OddsInverse2Log AS [Odds1ByPlace.OddsInverse2Log],
		  dbo.Odds1ByPlace.ApprovalRatePlace1 AS [Odds1ByPlace.ApprovalRatePlace1],
		  dbo.Odds1ByPlace.ApprovalRatePlace1Log AS [Odds1ByPlace.ApprovalRatePlace1Log],
		  dbo.Odds1ByPlace.ApprovalRatePlace2 AS [Odds1ByPlace.ApprovalRatePlace2],
		  dbo.Odds1ByPlace.ApprovalRatePlace2Log AS [Odds1ByPlace.ApprovalRatePlace2Log],
		  dbo.RaceResultByBanusi.HonSyokinTotal AS [RaceResultByBanusi.HonSyokinTotal],
		  dbo.RaceResultByBanusi.HonSyokinTotalLog AS [RaceResultByBanusi.HonSyokinTotalLog],
		  dbo.RaceResultByBanusi.FukaSyokin AS [RaceResultByBanusi.FukaSyokin],
		  dbo.RaceResultByBanusi.FukaSyokinLog AS [RaceResultByBanusi.FukaSyokinLog],
		  dbo.RaceResultByBanusiByTotal.RunCount AS [RaceResultByBanusiByTotal.RunCount],
		  dbo.RaceResultByBanusiByTotal.RunCountLog AS [RaceResultByBanusiByTotal.RunCountLog],
		  dbo.RaceResultByBanusiByTotal.HitCount1 AS [RaceResultByBanusiByTotal.HitCount1],
		  dbo.RaceResultByBanusiByTotal.HitCount1Log AS [RaceResultByBanusiByTotal.HitCount1Log],
		  dbo.RaceResultByBanusiByTotal.HitRate1 AS [RaceResultByBanusiByTotal.HitRate1],
		  dbo.RaceResultByBanusiByTotal.HitRate1Log AS [RaceResultByBanusiByTotal.HitRate1Log],
		  dbo.RaceResultByBanusiByTotal.HitCount12 AS [RaceResultByBanusiByTotal.HitCount12],
		  dbo.RaceResultByBanusiByTotal.HitCount12Log AS [RaceResultByBanusiByTotal.HitCount12Log],
		  dbo.RaceResultByBanusiByTotal.HitRate12 AS [RaceResultByBanusiByTotal.HitRate12],
		  dbo.RaceResultByBanusiByTotal.HitRate12Log AS [RaceResultByBanusiByTotal.HitRate12Log],
		  dbo.RaceResultByBanusiByTotal.HitCount123 AS [RaceResultByBanusiByTotal.HitCount123],
		  dbo.RaceResultByBanusiByTotal.HitCount123Log AS [RaceResultByBanusiByTotal.HitCount123Log],
		  dbo.RaceResultByBanusiByTotal.HitRate123 AS [RaceResultByBanusiByTotal.HitRate123],
		  dbo.RaceResultByBanusiByTotal.HitRate123Log AS [RaceResultByBanusiByTotal.HitRate123Log],
		  dbo.RaceResultByBanusiByTotal.OddsWin AS [RaceResultByBanusiByTotal.OddsWin],
		  dbo.RaceResultByBanusiByTotal.OddsWinLog AS [RaceResultByBanusiByTotal.OddsWinLog],
		  dbo.RaceResultByBanusiByTotal.OddsPlace1 AS [RaceResultByBanusiByTotal.OddsPlace1],
		  dbo.RaceResultByBanusiByTotal.OddsPlace1Log AS [RaceResultByBanusiByTotal.OddsPlace1Log],
		  dbo.RaceResultByBanusiByTotal.OddsPlace2 AS [RaceResultByBanusiByTotal.OddsPlace2],
		  dbo.RaceResultByBanusiByTotal.OddsPlace2Log AS [RaceResultByBanusiByTotal.OddsPlace2Log],
		  dbo.RaceResultByBanusiByTotal.OddsWinInverse AS [RaceResultByBanusiByTotal.OddsWinInvers],
		  dbo.RaceResultByBanusiByTotal.OddsWinInverseLog AS [RaceResultByBanusiByTotal.OddsWinInverseLog],
		  dbo.RaceResultByBanusiByTotal.OddsPlaceInverse1 AS [RaceResultByBanusiByTotal.OddsPlaceInverse1],
		  dbo.RaceResultByBanusiByTotal.OddsPlaceInverse1Log AS [RaceResultByBanusiByTotal.OddsPlaceInverse1Log],
		  dbo.RaceResultByBanusiByTotal.OddsPlaceInverse2 AS [RaceResultByBanusiByTotal.OddsPlaceInverse2],
		  dbo.RaceResultByBanusiByTotal.OddsPlaceInverse2Log AS [RaceResultByBanusiByTotal.OddsPlaceInverse2Log],
		  dbo.RaceResultByBanusiByTotal.ApprovalRateWin AS [RaceResultByBanusiByTotal.ApprovalRateWin],
		  dbo.RaceResultByBanusiByTotal.ApprovalRateWinLog AS [RaceResultByBanusiByTotal.ApprovalRateWinLog],
		  dbo.RaceResultByBanusiByTotal.ApprovalRatePlace1 AS [RaceResultByBanusiByTotal.ApprovalRatePlace1],
		  dbo.RaceResultByBanusiByTotal.ApprovalRatePlace1Log AS [RaceResultByBanusiByTotal.ApprovalRatePlace1Log],
		  dbo.RaceResultByBanusiByTotal.ApprovalRatePlace2 AS [RaceResultByBanusiByTotal.ApprovalRatePlace2],
		  dbo.RaceResultByBanusiByTotal.ApprovalRatePlace2Log AS [RaceResultByBanusiByTotal.ApprovalRatePlace2Log],
		  dbo.RaceResultByBanusiByTotal.ExpectedValueWin AS [RaceResultByBanusiByTotal.ExpectedValueWin],
		  dbo.RaceResultByBanusiByTotal.ExpectedValueWinLog AS [RaceResultByBanusiByTotal.ExpectedValueWinLog],
		  dbo.RaceResultByBanusiByTotal.ExpectedValuePlace AS [RaceResultByBanusiByTotal.ExpectedValuePlace],
		  dbo.RaceResultByBanusiByTotal.ExpectedValuePlaceLog AS [RaceResultByBanusiByTotal.ExpectedValuePlaceLog],
		  dbo.RaceResultByBanusiByTotal.StdTime AS [RaceResultByBanusiByTotal.StdTime],
		  dbo.RaceResultByBanusiByTotal.StdTimeDev AS [RaceResultByBanusiByTotal.StdTimeDev],
		  dbo.RaceResultByBreeder.HonSyokinTotal AS [RaceResultByBreeder.HonSyokinTotal],
		  dbo.RaceResultByBreeder.HonSyokinTotalLog AS [RaceResultByBreeder.HonSyokinTotalLog],
		  dbo.RaceResultByBreeder.FukaSyokin AS [RaceResultByBreeder.FukaSyokin],
		  dbo.RaceResultByBreeder.FukaSyokinLog AS [RaceResultByBreeder.FukaSyokinLog],
		  dbo.RaceResultByBreederByTotal.RunCount AS [RaceResultByBreederByTotal.RunCount],
		  dbo.RaceResultByBreederByTotal.RunCountLog AS [RaceResultByBreederByTotal.RunCountLog],
		  dbo.RaceResultByBreederByTotal.HitCount1 AS [RaceResultByBreederByTotal.HitCount1],
		  dbo.RaceResultByBreederByTotal.HitCount1Log AS [RaceResultByBreederByTotal.HitCount1Log],
		  dbo.RaceResultByBreederByTotal.HitRate1 AS [RaceResultByBreederByTotal.HitRate1],
		  dbo.RaceResultByBreederByTotal.HitRate1Log AS [RaceResultByBreederByTotal.HitRate1Log],
		  dbo.RaceResultByBreederByTotal.HitCount12 AS [RaceResultByBreederByTotal.HitCount2],
		  dbo.RaceResultByBreederByTotal.HitCount12Log AS [RaceResultByBreederByTotal.HitCount12Log],
		  dbo.RaceResultByBreederByTotal.HitRate2 AS [RaceResultByBreederByTotal.HitRate12],
		  dbo.RaceResultByBreederByTotal.HitCount123 AS [RaceResultByBreederByTotal.HitCount123],
		  dbo.RaceResultByBreederByTotal.HitCount123Log AS [RaceResultByBreederByTotal.HitCount123Log],
		  dbo.RaceResultByBreederByTotal.HitRate123 AS [RaceResultByBreederByTotal.HitRate123],
		  dbo.RaceResultByBreederByTotal.HitRate123Log AS [RaceResultByBreederByTotal.HitRate123Log],
		  dbo.RaceResultByBreederByTotal.OddsWin AS [RaceResultByBreederByTotal.OddsWin],
		  dbo.RaceResultByBreederByTotal.OddsWinLog AS [RaceResultByBreederByTotal.OddsWinLog],
		  dbo.RaceResultByBreederByTotal.OddsPlace1 AS [RaceResultByBreederByTotal.OddsPlace1],
		  dbo.RaceResultByBreederByTotal.OddsPlace1Log AS [RaceResultByBreederByTotal.OddsPlace1Log],
		  dbo.RaceResultByBreederByTotal.OddsPlace2 AS [RaceResultByBreederByTotal.OddsPlace2],
		  dbo.RaceResultByBreederByTotal.OddsPlace2Log AS [RaceResultByBreederByTotal.OddsPlace2Log],
		  dbo.RaceResultByBreederByTotal.OddsWinInverse AS [RaceResultByBreederByTotal.OddsWinInvers],
		  dbo.RaceResultByBreederByTotal.OddsWinInverseLog AS [RaceResultByBreederByTotal.OddsWinInverseLog],
		  dbo.RaceResultByBreederByTotal.OddsPlaceInverse1 AS [RaceResultByBreederByTotal.OddsPlaceInverse1],
		  dbo.RaceResultByBreederByTotal.OddsPlaceInverse1Log AS [RaceResultByBreederByTotal.OddsPlaceInverse1Log],
		  dbo.RaceResultByBreederByTotal.OddsPlaceInverse2 AS [RaceResultByBreederByTotal.OddsPlaceInverse2],
		  dbo.RaceResultByBreederByTotal.OddsPlaceInverse2Log AS [RaceResultByBreederByTotal.OddsPlaceInverse2Log],
		  dbo.RaceResultByBreederByTotal.ApprovalRateWin AS [RaceResultByBreederByTotal.ApprovalRateWin],
		  dbo.RaceResultByBreederByTotal.ApprovalRateWinLog AS [RaceResultByBreederByTotal.ApprovalRateWinLog],
		  dbo.RaceResultByBreederByTotal.ApprovalRatePlace1 AS [RaceResultByBreederByTotal.ApprovalRatePlace1],
		  dbo.RaceResultByBreederByTotal.ApprovalRatePlace1Log AS [RaceResultByBreederByTotal.ApprovalRatePlace1Log],
		  dbo.RaceResultByBreederByTotal.ApprovalRatePlace2 AS [RaceResultByBreederByTotal.ApprovalRatePlace2],
		  dbo.RaceResultByBreederByTotal.ApprovalRatePlace2Log AS [RaceResultByBreederByTotal.ApprovalRatePlace2Log],
		  dbo.RaceResultByBreederByTotal.ExpectedValueWin AS [RaceResultByBreederByTotal.ExpectedValueWin],
		  dbo.RaceResultByBreederByTotal.ExpectedValueWinLog AS [RaceResultByBreederByTotal.ExpectedValueWinLog],
		  dbo.RaceResultByBreederByTotal.ExpectedValuePlace AS [RaceResultByBreederByTotal.ExpectedValuePlace],
		  dbo.RaceResultByBreederByTotal.ExpectedValuePlaceLog AS [RaceResultByBreederByTotal.ExpectedValuePlaceLog],
		  dbo.RaceResultByBreederByTotal.StdTime AS [RaceResultByBreederByTotal.StdTime],
		  dbo.RaceResultByBreederByTotal.StdTimeDev AS [RaceResultByBreederByTotal.StdTimeDev],
		  dbo.RaceResultByHorse.RuikeiHonsyoHeiti AS [RaceResultByHorse.RuikeiHonsyoHeiti],
		  dbo.RaceResultByHorse.RuikeiHonsyoHeitiLog AS [RaceResultByHorse.RuikeiHonsyoHeitiLog],
		  dbo.RaceResultByHorse.RuikeiHonsyoSyogai AS [RaceResultByHorse.RuikeiHonsyoSyogai],
		  dbo.RaceResultByHorse.RuikeiHonsyoSyogaiLog AS [RaceResultByHorse.RuikeiHonsyoSyogaiLog],
/*
		, dbo.RaceResultByHorseByCourseType.RunCount AS [RaceResultByHorseByCourseType.RunCount]
		, dbo.RaceResultByHorseByCourseType.RunCountLog AS [RaceResultByHorseByCourseType.RunCountLog]
		, dbo.RaceResultByHorseByCourseType.HitCount1 AS [RaceResultByHorseByCourseType.HitCount1]
		, dbo.RaceResultByHorseByCourseType.HitCount1Log AS [RaceResultByHorseByCourseType.HitCount1Log]
		, dbo.RaceResultByHorseByCourseType.HitRate1 AS [RaceResultByHorseByCourseType.HitRate1]
		, dbo.RaceResultByHorseByCourseType.HitRate1Log AS [RaceResultByHorseByCourseType.HitRate1Log]
		, dbo.RaceResultByHorseByCourseType.HitCount12 AS [RaceResultByHorseByCourseType.HitCount12]
		, dbo.RaceResultByHorseByCourseType.HitCount12Log AS [RaceResultByHorseByCourseType.HitCount12Log]
		, dbo.RaceResultByHorseByCourseType.HitRate12 AS [RaceResultByHorseByCourseType.HitRate12]
		, dbo.RaceResultByHorseByCourseType.HitRate12Log AS [RaceResultByHorseByCourseType.HitRate12Log]
		, dbo.RaceResultByHorseByCourseType.HitCount123 AS [RaceResultByHorseByCourseType.HitCount123]
		, dbo.RaceResultByHorseByCourseType.HitCount123Log AS [RaceResultByHorseByCourseType.HitCount123Log]
		, dbo.RaceResultByHorseByCourseType.HitRate123 AS [RaceResultByHorseByCourseType.HitRate123]
		, dbo.RaceResultByHorseByCourseType.HitRate123Log AS [RaceResultByHorseByCourseType.HitRate123Log]
		, dbo.RaceResultByHorseByCourseType.OddsWin AS [RaceResultByHorseByCourseType.OddsWin]
		, dbo.RaceResultByHorseByCourseType.OddsWinLog AS [RaceResultByHorseByCourseType.OddsWinLog]
		, dbo.RaceResultByHorseByCourseType.OddsPlace1 AS [RaceResultByHorseByCourseType.OddsPlace1]
		, dbo.RaceResultByHorseByCourseType.OddsPlace1Log AS [RaceResultByHorseByCourseType.OddsPlace1Log]
		, dbo.RaceResultByHorseByCourseType.OddsPlace2 AS [RaceResultByHorseByCourseType.OddsPlace2]
		, dbo.RaceResultByHorseByCourseType.OddsPlace2Log AS [RaceResultByHorseByCourseType.OddsPlace2Log]
		, dbo.RaceResultByHorseByCourseType.OddsWinInverse AS [RaceResultByHorseByCourseType.OddsWinInvers]
		, dbo.RaceResultByHorseByCourseType.OddsWinInverseLog AS [RaceResultByHorseByCourseType.OddsWinInverseLog]
		, dbo.RaceResultByHorseByCourseType.OddsPlaceInverse1 AS [RaceResultByHorseByCourseType.OddsPlaceInverse1]
		, dbo.RaceResultByHorseByCourseType.OddsPlaceInverse1Log AS [RaceResultByHorseByCourseType.OddsPlaceInverse1Log]
		, dbo.RaceResultByHorseByCourseType.OddsPlaceInverse2 AS [RaceResultByHorseByCourseType.OddsPlaceInverse2]
		, dbo.RaceResultByHorseByCourseType.OddsPlaceInverse2Log AS [RaceResultByHorseByCourseType.OddsPlaceInverse2Log]
		, dbo.RaceResultByHorseByCourseType.ApprovalRateWin AS [RaceResultByHorseByCourseType.ApprovalRateWin]
		, dbo.RaceResultByHorseByCourseType.ApprovalRatePlace1 AS [RaceResultByHorseByCourseType.ApprovalRatePlace1]
		, dbo.RaceResultByHorseByCourseType.ApprovalRatePlace2 AS [RaceResultByHorseByCourseType.ApprovalRatePlace2]
		, dbo.RaceResultByHorseByCourseType.ApprovalRateWinLog AS [RaceResultByHorseByCourseType.ApprovalRateWinLog]
		, dbo.RaceResultByHorseByCourseType.ApprovalRatePlace1Log AS [RaceResultByHorseByCourseType.ApprovalRatePlace1Log]
		, dbo.RaceResultByHorseByCourseType.ApprovalRatePlace2Log AS [RaceResultByHorseByCourseType.ApprovalRatePlace2Log]
		, dbo.RaceResultByHorseByCourseType.ExpectedValueWin AS [RaceResultByHorseByCourseType.ExpectedValueWin]
		, dbo.RaceResultByHorseByCourseType.ExpectedValueWinLog AS [RaceResultByHorseByCourseType.ExpectedValueWinLog]
		, dbo.RaceResultByHorseByCourseType.ExpectedValuePlace AS [RaceResultByHorseByCourseType.ExpectedValuePlace]
		, dbo.RaceResultByHorseByCourseType.ExpectedValuePlaceLog AS [RaceResultByHorseByCourseType.ExpectedValuePlaceLog]
		, dbo.RaceResultByHorseByCourseType.StdTime AS [RaceResultByHorseByCourseType.StdTime]
		, dbo.RaceResultByHorseByCourseType.StdTimeDev AS [RaceResultByHorseByCourseType.StdTimeDev]
*/
/*
		, dbo.RaceResultByHorseByDistanceType.RunCount AS [RaceResultByHorseByDistanceType.RunCount]
		, dbo.RaceResultByHorseByDistanceType.RunCountLog AS [RaceResultByHorseByDistanceType.RunCountLog]
		, dbo.RaceResultByHorseByDistanceType.HitCount1 AS [RaceResultByHorseByDistanceType.HitCount1]
		, dbo.RaceResultByHorseByDistanceType.HitCount1Log AS [RaceResultByHorseByDistanceType.HitCount1Log]
		, dbo.RaceResultByHorseByDistanceType.HitRate1 AS [RaceResultByHorseByDistanceType.HitRate1]
		, dbo.RaceResultByHorseByDistanceType.HitRate1Log AS [RaceResultByHorseByDistanceType.HitRate1Log]
		, dbo.RaceResultByHorseByDistanceType.HitCount12 AS [RaceResultByHorseByDistanceType.HitCount12]
		, dbo.RaceResultByHorseByDistanceType.HitCount12Log AS [RaceResultByHorseByDistanceType.HitCount12Log]
		, dbo.RaceResultByHorseByDistanceType.HitRate12 AS [RaceResultByHorseByDistanceType.HitRate12]
		, dbo.RaceResultByHorseByDistanceType.HitRate12Log AS [RaceResultByHorseByDistanceType.HitRate12Log]
		, dbo.RaceResultByHorseByDistanceType.HitCount123 AS [RaceResultByHorseByDistanceType.HitCount123]
		, dbo.RaceResultByHorseByDistanceType.HitCount123Log AS [RaceResultByHorseByDistanceType.HitCount123Log]
		, dbo.RaceResultByHorseByDistanceType.HitRate123 AS [RaceResultByHorseByDistanceType.HitRate123]
		, dbo.RaceResultByHorseByDistanceType.HitRate123Log AS [RaceResultByHorseByDistanceType.HitRate123Log]
		, dbo.RaceResultByHorseByDistanceType.OddsWin AS [RaceResultByHorseByDistanceType.OddsWin]
		, dbo.RaceResultByHorseByDistanceType.OddsWinLog AS [RaceResultByHorseByDistanceType.OddsWinLog]
		, dbo.RaceResultByHorseByDistanceType.OddsPlace1 AS [RaceResultByHorseByDistanceType.OddsPlace1]
		, dbo.RaceResultByHorseByDistanceType.OddsPlace1Log AS [RaceResultByHorseByDistanceType.OddsPlace1Log]
		, dbo.RaceResultByHorseByDistanceType.OddsPlace2 AS [RaceResultByHorseByDistanceType.OddsPlace2]
		, dbo.RaceResultByHorseByDistanceType.OddsPlace2Log AS [RaceResultByHorseByDistanceType.OddsPlace2Log]
		, dbo.RaceResultByHorseByDistanceType.OddsWinInverse AS [RaceResultByHorseByDistanceType.OddsWinInvers]
		, dbo.RaceResultByHorseByDistanceType.OddsWinInverseLog AS [RaceResultByHorseByDistanceType.OddsWinInverseLog]
		, dbo.RaceResultByHorseByDistanceType.OddsPlaceInverse1 AS [RaceResultByHorseByDistanceType.OddsPlaceInverse1]
		, dbo.RaceResultByHorseByDistanceType.OddsPlaceInverse1Log AS [RaceResultByHorseByDistanceType.OddsPlaceInverse1Log]
		, dbo.RaceResultByHorseByDistanceType.OddsPlaceInverse2 AS [RaceResultByHorseByDistanceType.OddsPlaceInverse2]
		, dbo.RaceResultByHorseByDistanceType.OddsPlaceInverse2Log AS [RaceResultByHorseByDistanceType.OddsPlaceInverse2Log]
		, dbo.RaceResultByHorseByDistanceType.ApprovalRateWin AS [RaceResultByHorseByDistanceType.ApprovalRateWin]
		, dbo.RaceResultByHorseByDistanceType.ApprovalRatePlace1 AS [RaceResultByHorseByDistanceType.ApprovalRatePlace1]
		, dbo.RaceResultByHorseByDistanceType.ApprovalRatePlace2 AS [RaceResultByHorseByDistanceType.ApprovalRatePlace2]
		, dbo.RaceResultByHorseByDistanceType.ApprovalRateWinLog AS [RaceResultByHorseByDistanceType.ApprovalRateWinLog]
		, dbo.RaceResultByHorseByDistanceType.ApprovalRatePlace1Log AS [RaceResultByHorseByDistanceType.ApprovalRatePlace1Log]
		, dbo.RaceResultByHorseByDistanceType.ApprovalRatePlace2Log AS [RaceResultByHorseByDistanceType.ApprovalRatePlace2Log]
		, dbo.RaceResultByHorseByDistanceType.ExpectedValueWin AS [RaceResultByHorseByDistanceType.ExpectedValueWin]
		, dbo.RaceResultByHorseByDistanceType.ExpectedValueWinLog AS [RaceResultByHorseByDistanceType.ExpectedValueWinLog]
		, dbo.RaceResultByHorseByDistanceType.ExpectedValuePlace AS [RaceResultByHorseByDistanceType.ExpectedValuePlace]
		, dbo.RaceResultByHorseByDistanceType.ExpectedValuePlaceLog AS [RaceResultByHorseByDistanceType.ExpectedValuePlaceLog]
		, dbo.RaceResultByHorseByDistanceType.StdTime AS [RaceResultByHorseByDistanceType.StdTime]
		, dbo.RaceResultByHorseByDistanceType.StdTimeDev AS [RaceResultByHorseByDistanceType.StdTimeDev]
*/
/*
		, dbo.RaceResultByHorseByJyo.RunCount AS [RaceResultByHorseByJyo.RunCount]
		, dbo.RaceResultByHorseByJyo.RunCountLog AS [RaceResultByHorseByJyo.RunCountLog]
		, dbo.RaceResultByHorseByJyo.HitCount1 AS [RaceResultByHorseByJyo.HitCount1]
		, dbo.RaceResultByHorseByJyo.HitCount1Log AS [RaceResultByHorseByJyo.HitCount1Log]
		, dbo.RaceResultByHorseByJyo.HitRate1 AS [RaceResultByHorseByJyo.HitRate1]
		, dbo.RaceResultByHorseByJyo.HitRate1Log AS [RaceResultByHorseByJyo.HitRate1Log]
		, dbo.RaceResultByHorseByJyo.HitCount12 AS [RaceResultByHorseByJyo.HitCount12]
		, dbo.RaceResultByHorseByJyo.HitCount12Log AS [RaceResultByHorseByJyo.HitCount12Log]
		, dbo.RaceResultByHorseByJyo.HitRate12 AS [RaceResultByHorseByJyo.HitRate12]
		, dbo.RaceResultByHorseByJyo.HitRate12Log AS [RaceResultByHorseByJyo.HitRate12Log]
		, dbo.RaceResultByHorseByJyo.HitCount123 AS [RaceResultByHorseByJyo.HitCount123]
		, dbo.RaceResultByHorseByJyo.HitCount123Log AS [RaceResultByHorseByJyo.HitCount123Log]
		, dbo.RaceResultByHorseByJyo.HitRate123 AS [RaceResultByHorseByJyo.HitRate123]
		, dbo.RaceResultByHorseByJyo.HitRate123Log AS [RaceResultByHorseByJyo.HitRate123Log]
		, dbo.RaceResultByHorseByJyo.OddsWin AS [RaceResultByHorseByJyo.OddsWin]
		, dbo.RaceResultByHorseByJyo.OddsWinLog AS [RaceResultByHorseByJyo.OddsWinLog]
		, dbo.RaceResultByHorseByJyo.OddsPlace1 AS [RaceResultByHorseByJyo.OddsPlace1]
		, dbo.RaceResultByHorseByJyo.OddsPlace1Log AS [RaceResultByHorseByJyo.OddsPlace1Log]
		, dbo.RaceResultByHorseByJyo.OddsPlace2 AS [RaceResultByHorseByJyo.OddsPlace2]
		, dbo.RaceResultByHorseByJyo.OddsPlace2Log AS [RaceResultByHorseByJyo.OddsPlace2Log]
		, dbo.RaceResultByHorseByJyo.OddsWinInverse AS [RaceResultByHorseByJyo.OddsWinInvers]
		, dbo.RaceResultByHorseByJyo.OddsWinInverseLog AS [RaceResultByHorseByJyo.OddsWinInverseLog]
		, dbo.RaceResultByHorseByJyo.OddsPlaceInverse1 AS [RaceResultByHorseByJyo.OddsPlaceInverse1]
		, dbo.RaceResultByHorseByJyo.OddsPlaceInverse1Log AS [RaceResultByHorseByJyo.OddsPlaceInverse1Log]
		, dbo.RaceResultByHorseByJyo.OddsPlaceInverse2 AS [RaceResultByHorseByJyo.OddsPlaceInverse2]
		, dbo.RaceResultByHorseByJyo.OddsPlaceInverse2Log AS [RaceResultByHorseByJyo.OddsPlaceInverse2Log]
		, dbo.RaceResultByHorseByJyo.ApprovalRateWin AS [RaceResultByHorseByJyo.ApprovalRateWin]
		, dbo.RaceResultByHorseByJyo.ApprovalRatePlace1 AS [RaceResultByHorseByJyo.ApprovalRatePlace1]
		, dbo.RaceResultByHorseByJyo.ApprovalRatePlace2 AS [RaceResultByHorseByJyo.ApprovalRatePlace2]
		, dbo.RaceResultByHorseByJyo.ApprovalRateWinLog AS [RaceResultByHorseByJyo.ApprovalRateWinLog]
		, dbo.RaceResultByHorseByJyo.ApprovalRatePlace1Log AS [RaceResultByHorseByJyo.ApprovalRatePlace1Log]
		, dbo.RaceResultByHorseByJyo.ApprovalRatePlace2Log AS [RaceResultByHorseByJyo.ApprovalRatePlace2Log]
		, dbo.RaceResultByHorseByJyo.ExpectedValueWin AS [RaceResultByHorseByJyo.ExpectedValueWin]
		, dbo.RaceResultByHorseByJyo.ExpectedValueWinLog AS [RaceResultByHorseByJyo.ExpectedValueWinLog]
		, dbo.RaceResultByHorseByJyo.ExpectedValuePlace AS [RaceResultByHorseByJyo.ExpectedValuePlace]
		, dbo.RaceResultByHorseByJyo.ExpectedValuePlaceLog AS [RaceResultByHorseByJyo.ExpectedValuePlaceLog]
		, dbo.RaceResultByHorseByJyo.StdTime AS [RaceResultByHorseByJyo.StdTime]
		, dbo.RaceResultByHorseByJyo.StdTimeDev AS [RaceResultByHorseByJyo.StdTimeDev]
*/
/*
		, dbo.RaceResultByHorseByRunningStyle.HitRate1 AS [RaceResultByHorseByRunningStyle.HitRate1]
		, dbo.RaceResultByHorseByRunningStyle.HitRate1Log AS [RaceResultByHorseByRunningStyle.HitRate1Log]
		, dbo.RaceResultByHorseByRunningStyle.HitRate2 AS [RaceResultByHorseByRunningStyle.HitRate2]
		, dbo.RaceResultByHorseByRunningStyle.HitRate2Log AS [RaceResultByHorseByRunningStyle.HitRate2Log]
		, dbo.RaceResultByHorseByRunningStyle.HitRate3 AS [RaceResultByHorseByRunningStyle.HitRate3]
		, dbo.RaceResultByHorseByRunningStyle.HitRate3Log AS [RaceResultByHorseByRunningStyle.HitRate3Log]
		, dbo.RaceResultByHorseByRunningStyle.HitRate4 AS [RaceResultByHorseByRunningStyle.HitRate4]
		, dbo.RaceResultByHorseByRunningStyle.HitRate4Log AS [RaceResultByHorseByRunningStyle.HitRate4Log]
*/
		  dbo.RaceResultByHorseByRunningStyle.RunningStyleAvg AS [RaceResultByHorseByRunningStyle.RunningStyleAvg],
		  dbo.RaceResultByHorseByTotal.RunCount AS [RaceResultByHorseByTotal.RunCount],
		  dbo.RaceResultByHorseByTotal.RunCountLog AS [RaceResultByHorseByTotal.RunCountLog],
		  dbo.RaceResultByHorseByTotal.HitCount1 AS [RaceResultByHorseByTotal.HitCount1],
		  dbo.RaceResultByHorseByTotal.HitCount1Log AS [RaceResultByHorseByTotal.HitCount1Log],
		  dbo.RaceResultByHorseByTotal.HitRate1 AS [RaceResultByHorseByTotal.HitRate1],
		  dbo.RaceResultByHorseByTotal.HitRate1Log AS [RaceResultByHorseByTotal.HitRate1Log],
		  dbo.RaceResultByHorseByTotal.HitCount12 AS [RaceResultByHorseByTotal.HitCount12],
		  dbo.RaceResultByHorseByTotal.HitCount12Log AS [RaceResultByHorseByTotal.HitCount12Log],
		  dbo.RaceResultByHorseByTotal.HitRate12 AS [RaceResultByHorseByTotal.HitRate12],
		  dbo.RaceResultByHorseByTotal.HitRate12Log AS [RaceResultByHorseByTotal.HitRate12Log],
		  dbo.RaceResultByHorseByTotal.HitCount123 AS [RaceResultByHorseByTotal.HitCount123],
		  dbo.RaceResultByHorseByTotal.HitCount123Log AS [RaceResultByHorseByTotal.HitCount123Log],
		  dbo.RaceResultByHorseByTotal.HitRate123 AS [RaceResultByHorseByTotal.HitRate123],
		  dbo.RaceResultByHorseByTotal.HitRate123Log AS [RaceResultByHorseByTotal.HitRate123Log],
		  dbo.RaceResultByHorseByTotal.OddsWin AS [RaceResultByHorseByTotal.OddsWin],
		  dbo.RaceResultByHorseByTotal.OddsWinLog AS [RaceResultByHorseByTotal.OddsWinLog],
		  dbo.RaceResultByHorseByTotal.OddsPlace1 AS [RaceResultByHorseByTotal.OddsPlace1],
		  dbo.RaceResultByHorseByTotal.OddsPlace1Log AS [RaceResultByHorseByTotal.OddsPlace1Log],
		  dbo.RaceResultByHorseByTotal.OddsPlace2 AS [RaceResultByHorseByTotal.OddsPlace2],
		  dbo.RaceResultByHorseByTotal.OddsPlace2Log AS [RaceResultByHorseByTotal.OddsPlace2Log],
		  dbo.RaceResultByHorseByTotal.OddsWinInverse AS [RaceResultByHorseByTotal.OddsWinInvers],
		  dbo.RaceResultByHorseByTotal.OddsWinInverseLog AS [RaceResultByHorseByTotal.OddsWinInverseLog],
		  dbo.RaceResultByHorseByTotal.OddsPlaceInverse1 AS [RaceResultByHorseByTotal.OddsPlaceInverse1],
		  dbo.RaceResultByHorseByTotal.OddsPlaceInverse1Log AS [RaceResultByHorseByTotal.OddsPlaceInverse1Log],
		  dbo.RaceResultByHorseByTotal.OddsPlaceInverse2 AS [RaceResultByHorseByTotal.OddsPlaceInverse2],
		  dbo.RaceResultByHorseByTotal.OddsPlaceInverse2Log AS [RaceResultByHorseByTotal.OddsPlaceInverse2Log],
		  dbo.RaceResultByHorseByTotal.ApprovalRateWin AS [RaceResultByHorseByTotal.ApprovalRateWin],
		  dbo.RaceResultByHorseByTotal.ApprovalRateWinLog AS [RaceResultByHorseByTotal.ApprovalRateWinLog],
		  dbo.RaceResultByHorseByTotal.ApprovalRatePlace1 AS [RaceResultByHorseByTotal.ApprovalRatePlace1],
		  dbo.RaceResultByHorseByTotal.ApprovalRatePlace1Log AS [RaceResultByHorseByTotal.ApprovalRatePlace1Log],
		  dbo.RaceResultByHorseByTotal.ApprovalRatePlace2 AS [RaceResultByHorseByTotal.ApprovalRatePlace2],
		  dbo.RaceResultByHorseByTotal.ApprovalRatePlace2Log AS [RaceResultByHorseByTotal.ApprovalRatePlace2Log],
		  dbo.RaceResultByHorseByTotal.ExpectedValueWin AS [RaceResultByHorseByTotal.ExpectedValueWin],
		  dbo.RaceResultByHorseByTotal.ExpectedValueWinLog AS [RaceResultByHorseByTotal.ExpectedValueWinLog],
		  dbo.RaceResultByHorseByTotal.ExpectedValuePlace AS [RaceResultByHorseByTotal.ExpectedValuePlace],
		  dbo.RaceResultByHorseByTotal.ExpectedValuePlaceLog AS [RaceResultByHorseByTotal.ExpectedValuePlaceLog],
		  dbo.RaceResultByHorseByTotal.StdTime AS [RaceResultByHorseByTotal.StdTime],
		  dbo.RaceResultByHorseByTotal.StdTimeDev AS [RaceResultByHorseByTotal.StdTimeDev],
/*
		, dbo.RaceResultByHorseByTrackCondition.RunCount AS [RaceResultByHorseByTrackCondition.RunCount]
		, dbo.RaceResultByHorseByTrackCondition.RunCountLog AS [RaceResultByHorseByTrackCondition.RunCountLog]
		, dbo.RaceResultByHorseByTrackCondition.HitCount1 AS [RaceResultByHorseByTrackCondition.HitCount1]
		, dbo.RaceResultByHorseByTrackCondition.HitCount1Log AS [RaceResultByHorseByTrackCondition.HitCount1Log]
		, dbo.RaceResultByHorseByTrackCondition.HitRate1 AS [RaceResultByHorseByTrackCondition.HitRate1]
		, dbo.RaceResultByHorseByTrackCondition.HitRate1Log AS [RaceResultByHorseByTrackCondition.HitRate1Log]
		, dbo.RaceResultByHorseByTrackCondition.HitCount12 AS [RaceResultByHorseByTrackCondition.HitCount12]
		, dbo.RaceResultByHorseByTrackCondition.HitCount12Log AS [RaceResultByHorseByTrackCondition.HitCount12Log]
		, dbo.RaceResultByHorseByTrackCondition.HitRate12 AS [RaceResultByHorseByTrackCondition.HitRate12]
		, dbo.RaceResultByHorseByTrackCondition.HitRate12Log AS [RaceResultByHorseByTrackCondition.HitRate12Log]
		, dbo.RaceResultByHorseByTrackCondition.HitCount123 AS [RaceResultByHorseByTrackCondition.HitCount123]
		, dbo.RaceResultByHorseByTrackCondition.HitCount123Log AS [RaceResultByHorseByTrackCondition.HitCount123Log]
		, dbo.RaceResultByHorseByTrackCondition.HitRate123 AS [RaceResultByHorseByTrackCondition.HitRate123]
		, dbo.RaceResultByHorseByTrackCondition.HitRate123Log AS [RaceResultByHorseByTrackCondition.HitRate123Log]
		, dbo.RaceResultByHorseByTrackCondition.OddsWin AS [RaceResultByHorseByTrackCondition.OddsWin]
		, dbo.RaceResultByHorseByTrackCondition.OddsWinLog AS [RaceResultByHorseByTrackCondition.OddsWinLog]
		, dbo.RaceResultByHorseByTrackCondition.OddsPlace1 AS [RaceResultByHorseByTrackCondition.OddsPlace1]
		, dbo.RaceResultByHorseByTrackCondition.OddsPlace1Log AS [RaceResultByHorseByTrackCondition.OddsPlace1Log]
		, dbo.RaceResultByHorseByTrackCondition.OddsPlace2 AS [RaceResultByHorseByTrackCondition.OddsPlace2]
		, dbo.RaceResultByHorseByTrackCondition.OddsPlace2Log AS [RaceResultByHorseByTrackCondition.OddsPlace2Log]
		, dbo.RaceResultByHorseByTrackCondition.OddsWinInverse AS [RaceResultByHorseByTrackCondition.OddsWinInvers]
		, dbo.RaceResultByHorseByTrackCondition.OddsWinInverseLog AS [RaceResultByHorseByTrackCondition.OddsWinInverseLog]
		, dbo.RaceResultByHorseByTrackCondition.OddsPlaceInverse1 AS [RaceResultByHorseByTrackCondition.OddsPlaceInverse1]
		, dbo.RaceResultByHorseByTrackCondition.OddsPlaceInverse1Log AS [RaceResultByHorseByTrackCondition.OddsPlaceInverse1Log]
		, dbo.RaceResultByHorseByTrackCondition.OddsPlaceInverse2 AS [RaceResultByHorseByTrackCondition.OddsPlaceInverse2]
		, dbo.RaceResultByHorseByTrackCondition.OddsPlaceInverse2Log AS [RaceResultByHorseByTrackCondition.OddsPlaceInverse2Log]
		, dbo.RaceResultByHorseByTrackCondition.ApprovalRateWin AS [RaceResultByHorseByTrackCondition.ApprovalRateWin]
		, dbo.RaceResultByHorseByTrackCondition.ApprovalRateWinLog AS [RaceResultByHorseByTrackCondition.ApprovalRateWinLog]
		, dbo.RaceResultByHorseByTrackCondition.ApprovalRatePlace1 AS [RaceResultByHorseByTrackCondition.ApprovalRatePlace1]
		, dbo.RaceResultByHorseByTrackCondition.ApprovalRatePlace1Log AS [RaceResultByHorseByTrackCondition.ApprovalRatePlace1Log]
		, dbo.RaceResultByHorseByTrackCondition.ApprovalRatePlace2 AS [RaceResultByHorseByTrackCondition.ApprovalRatePlace2]
		, dbo.RaceResultByHorseByTrackCondition.ApprovalRatePlace2Log AS [RaceResultByHorseByTrackCondition.ApprovalRatePlace2Log]
		, dbo.RaceResultByHorseByTrackCondition.ExpectedValueWin AS [RaceResultByHorseByTrackCondition.ExpectedValueWin]
		, dbo.RaceResultByHorseByTrackCondition.ExpectedValueWinLog AS [RaceResultByHorseByTrackCondition.ExpectedValueWinLog]
		, dbo.RaceResultByHorseByTrackCondition.ExpectedValuePlace AS [RaceResultByHorseByTrackCondition.ExpectedValuePlace]
		, dbo.RaceResultByHorseByTrackCondition.ExpectedValuePlaceLog AS [RaceResultByHorseByTrackCondition.ExpectedValuePlaceLog]
		, dbo.RaceResultByHorseByTrackCondition.StdTime AS [RaceResultByHorseByTrackCondition.StdTime]
		, dbo.RaceResultByHorseByTrackCondition.StdTimeDev AS [RaceResultByHorseByTrackCondition.StdTimeDev]

		, dbo.RaceResultByHorseByTrackType.RunCount AS [RaceResultByHorseByTrackType.RunCount]
		, dbo.RaceResultByHorseByTrackType.RunCountLog AS [RaceResultByHorseByTrackType.RunCountLog]
		, dbo.RaceResultByHorseByTrackType.HitCount1 AS [RaceResultByHorseByTrackType.HitCount1]
		, dbo.RaceResultByHorseByTrackType.HitCount1Log AS [RaceResultByHorseByTrackType.HitCount1Log]
		, dbo.RaceResultByHorseByTrackType.HitRate1 AS [RaceResultByHorseByTrackType.HitRate1]
		, dbo.RaceResultByHorseByTrackType.HitRate1Log AS [RaceResultByHorseByTrackType.HitRate1Log]
		, dbo.RaceResultByHorseByTrackType.HitCount12 AS [RaceResultByHorseByTrackType.HitCount12]
		, dbo.RaceResultByHorseByTrackType.HitCount12Log AS [RaceResultByHorseByTrackType.HitCount12Log]
		, dbo.RaceResultByHorseByTrackType.HitRate12 AS [RaceResultByHorseByTrackType.HitRate12]
		, dbo.RaceResultByHorseByTrackType.HitRate12Log AS [RaceResultByHorseByTrackType.HitRate12Log]
		, dbo.RaceResultByHorseByTrackType.HitCount123 AS [RaceResultByHorseByTrackType.HitCount123]
		, dbo.RaceResultByHorseByTrackType.HitCount123Log AS [RaceResultByHorseByTrackType.HitCount123Log]
		, dbo.RaceResultByHorseByTrackType.HitRate123 AS [RaceResultByHorseByTrackType.HitRate123]
		, dbo.RaceResultByHorseByTrackType.HitRate123Log AS [RaceResultByHorseByTrackType.HitRate123Log]
		, dbo.RaceResultByHorseByTrackType.OddsWin AS [RaceResultByHorseByTrackType.OddsWin]
		, dbo.RaceResultByHorseByTrackType.OddsWinLog AS [RaceResultByHorseByTrackType.OddsWinLog]
		, dbo.RaceResultByHorseByTrackType.OddsPlace1 AS [RaceResultByHorseByTrackType.OddsPlace1]
		, dbo.RaceResultByHorseByTrackType.OddsPlace1Log AS [RaceResultByHorseByTrackType.OddsPlace1Log]
		, dbo.RaceResultByHorseByTrackType.OddsPlace2 AS [RaceResultByHorseByTrackType.OddsPlace2]
		, dbo.RaceResultByHorseByTrackType.OddsPlace2Log AS [RaceResultByHorseByTrackType.OddsPlace2Log]
		, dbo.RaceResultByHorseByTrackType.OddsWinInverse AS [RaceResultByHorseByTrackType.OddsWinInvers]
		, dbo.RaceResultByHorseByTrackType.OddsWinInverseLog AS [RaceResultByHorseByTrackType.OddsWinInverseLog]
		, dbo.RaceResultByHorseByTrackType.OddsPlaceInverse1 AS [RaceResultByHorseByTrackType.OddsPlaceInverse1]
		, dbo.RaceResultByHorseByTrackType.OddsPlaceInverse1Log AS [RaceResultByHorseByTrackType.OddsPlaceInverse1Log]
		, dbo.RaceResultByHorseByTrackType.OddsPlaceInverse2 AS [RaceResultByHorseByTrackType.OddsPlaceInverse2]
		, dbo.RaceResultByHorseByTrackType.OddsPlaceInverse2Log AS [RaceResultByHorseByTrackType.OddsPlaceInverse2Log]
		, dbo.RaceResultByHorseByTrackType.ApprovalRateWin AS [RaceResultByHorseByTrackType.ApprovalRateWin]
		, dbo.RaceResultByHorseByTrackType.ApprovalRateWinLog AS [RaceResultByHorseByTrackType.ApprovalRateWinLog]
		, dbo.RaceResultByHorseByTrackType.ApprovalRatePlace1 AS [RaceResultByHorseByTrackType.ApprovalRatePlace1]
		, dbo.RaceResultByHorseByTrackType.ApprovalRatePlace1Log AS [RaceResultByHorseByTrackType.ApprovalRatePlace1Log]
		, dbo.RaceResultByHorseByTrackType.ApprovalRatePlace2 AS [RaceResultByHorseByTrackType.ApprovalRatePlace2]
		, dbo.RaceResultByHorseByTrackType.ApprovalRatePlace2Log AS [RaceResultByHorseByTrackType.ApprovalRatePlace2Log]
		, dbo.RaceResultByHorseByTrackType.ExpectedValueWin AS [RaceResultByHorseByTrackType.ExpectedValueWin]
		, dbo.RaceResultByHorseByTrackType.ExpectedValueWinLog AS [RaceResultByHorseByTrackType.ExpectedValueWinLog]
		, dbo.RaceResultByHorseByTrackType.ExpectedValuePlace AS [RaceResultByHorseByTrackType.ExpectedValuePlace]
		, dbo.RaceResultByHorseByTrackType.ExpectedValuePlaceLog AS [RaceResultByHorseByTrackType.ExpectedValuePlaceLog]
		, dbo.RaceResultByHorseByTrackType.StdTime AS [RaceResultByHorseByTrackType.StdTime]
		, dbo.RaceResultByHorseByTrackType.StdTimeDev AS [RaceResultByHorseByTrackType.StdTimeDev]
*/
		  dbo.RaceResultByJocky.HonSyokinHeichi AS [RaceResultByJocky.HonSyokinHeichi],
		  dbo.RaceResultByJocky.HonSyokinHeichiLog AS [RaceResultByJocky.HonSyokinHeichiLog],
		  dbo.RaceResultByJocky.HonSyokinSyogai AS [RaceResultByJocky.HonSyokinSyogai],
		  dbo.RaceResultByJocky.HonSyokinSyogaiLog AS [RaceResultByJocky.HonSyokinSyogaiLog],
/*
		, dbo.RaceResultByJockyByDistanceType.RunCount AS [RaceResultByJockyByDistanceType.RunCount]
		, dbo.RaceResultByJockyByDistanceType.RunCountLog AS [RaceResultByJockyByDistanceType.RunCountLog]
		, dbo.RaceResultByJockyByDistanceType.HitCount1 AS [RaceResultByJockyByDistanceType.HitCount1]
		, dbo.RaceResultByJockyByDistanceType.HitCount1Log AS [RaceResultByJockyByDistanceType.HitCount1Log]
		, dbo.RaceResultByJockyByDistanceType.HitRate1 AS [RaceResultByJockyByDistanceType.HitRate1]
		, dbo.RaceResultByJockyByDistanceType.HitRate1Log AS [RaceResultByJockyByDistanceType.HitRate1Log]
		, dbo.RaceResultByJockyByDistanceType.HitCount12 AS [RaceResultByJockyByDistanceType.HitCount12]
		, dbo.RaceResultByJockyByDistanceType.HitCount12Log AS [RaceResultByJockyByDistanceType.HitCount12Log]
		, dbo.RaceResultByJockyByDistanceType.HitRate12 AS [RaceResultByJockyByDistanceType.HitRate12]
		, dbo.RaceResultByJockyByDistanceType.HitRate12Log AS [RaceResultByJockyByDistanceType.HitRate12Log]
		, dbo.RaceResultByJockyByDistanceType.HitCount123 AS [RaceResultByJockyByDistanceType.HitCount123]
		, dbo.RaceResultByJockyByDistanceType.HitCount123Log AS [RaceResultByJockyByDistanceType.HitCount123Log]
		, dbo.RaceResultByJockyByDistanceType.HitRate123 AS [RaceResultByJockyByDistanceType.HitRate123]
		, dbo.RaceResultByJockyByDistanceType.HitRate123Log AS [RaceResultByJockyByDistanceType.HitRate123Log]
		, dbo.RaceResultByJockyByDistanceType.OddsWin AS [RaceResultByJockyByDistanceType.OddsWin]
		, dbo.RaceResultByJockyByDistanceType.OddsWinLog AS [RaceResultByJockyByDistanceType.OddsWinLog]
		, dbo.RaceResultByJockyByDistanceType.OddsPlace1 AS [RaceResultByJockyByDistanceType.OddsPlace1]
		, dbo.RaceResultByJockyByDistanceType.OddsPlace1Log AS [RaceResultByJockyByDistanceType.OddsPlace1Log]
		, dbo.RaceResultByJockyByDistanceType.OddsPlace2 AS [RaceResultByJockyByDistanceType.OddsPlace2]
		, dbo.RaceResultByJockyByDistanceType.OddsPlace2Log AS [RaceResultByJockyByDistanceType.OddsPlace2Log]
		, dbo.RaceResultByJockyByDistanceType.OddsWinInverse AS [RaceResultByJockyByDistanceType.OddsWinInvers]
		, dbo.RaceResultByJockyByDistanceType.OddsWinInverseLog AS [RaceResultByJockyByDistanceType.OddsWinInverseLog]
		, dbo.RaceResultByJockyByDistanceType.OddsPlaceInverse1 AS [RaceResultByJockyByDistanceType.OddsPlaceInverse1]
		, dbo.RaceResultByJockyByDistanceType.OddsPlaceInverse1Log AS [RaceResultByJockyByDistanceType.OddsPlaceInverse1Log]
		, dbo.RaceResultByJockyByDistanceType.OddsPlaceInverse2 AS [RaceResultByJockyByDistanceType.OddsPlaceInverse2]
		, dbo.RaceResultByJockyByDistanceType.OddsPlaceInverse2Log AS [RaceResultByJockyByDistanceType.OddsPlaceInverse2Log]
		, dbo.RaceResultByJockyByDistanceType.ApprovalRateWin AS [RaceResultByJockyByDistanceType.ApprovalRateWin]
		, dbo.RaceResultByJockyByDistanceType.ApprovalRateWinLog AS [RaceResultByJockyByDistanceType.ApprovalRateWinLog]
		, dbo.RaceResultByJockyByDistanceType.ApprovalRatePlace1 AS [RaceResultByJockyByDistanceType.ApprovalRatePlace1]
		, dbo.RaceResultByJockyByDistanceType.ApprovalRatePlace1Log AS [RaceResultByJockyByDistanceType.ApprovalRatePlace1Log]
		, dbo.RaceResultByJockyByDistanceType.ApprovalRatePlace2 AS [RaceResultByJockyByDistanceType.ApprovalRatePlace2]
		, dbo.RaceResultByJockyByDistanceType.ApprovalRatePlace2Log AS [RaceResultByJockyByDistanceType.ApprovalRatePlace2Log]
		, dbo.RaceResultByJockyByDistanceType.ExpectedValueWin AS [RaceResultByJockyByDistanceType.ExpectedValueWin]
		, dbo.RaceResultByJockyByDistanceType.ExpectedValueWinLog AS [RaceResultByJockyByDistanceType.ExpectedValueWinLog]
		, dbo.RaceResultByJockyByDistanceType.ExpectedValuePlace AS [RaceResultByJockyByDistanceType.ExpectedValuePlace]
		, dbo.RaceResultByJockyByDistanceType.ExpectedValuePlaceLog AS [RaceResultByJockyByDistanceType.ExpectedValuePlaceLog]
		, dbo.RaceResultByJockyByDistanceType.StdTime AS [RaceResultByJockyByDistanceType.StdTime]
		, dbo.RaceResultByJockyByDistanceType.StdTimeDev AS [RaceResultByJockyByDistanceType.StdTimeDev]
*/
		  dbo.RaceResultByJockyByJyo.RunCount AS [RaceResultByJockyByJyo.RunCount],
		  dbo.RaceResultByJockyByJyo.RunCountLog AS [RaceResultByJockyByJyo.RunCountLog],
		  dbo.RaceResultByJockyByJyo.HitCount1 AS [RaceResultByJockyByJyo.HitCount1],
		  dbo.RaceResultByJockyByJyo.HitCount1Log AS [RaceResultByJockyByJyo.HitCount1Log],
		  dbo.RaceResultByJockyByJyo.HitRate1 AS [RaceResultByJockyByJyo.HitRate1],
		  dbo.RaceResultByJockyByJyo.HitRate1Log AS [RaceResultByJockyByJyo.HitRate1Log],
		  dbo.RaceResultByJockyByJyo.HitCount12 AS [RaceResultByJockyByJyo.HitCount12],
		  dbo.RaceResultByJockyByJyo.HitCount12Log AS [RaceResultByJockyByJyo.HitCount12Log],
		  dbo.RaceResultByJockyByJyo.HitRate12 AS [RaceResultByJockyByJyo.HitRate12],
		  dbo.RaceResultByJockyByJyo.HitRate12Log AS [RaceResultByJockyByJyo.HitRate12Log],
		  dbo.RaceResultByJockyByJyo.HitCount123 AS [RaceResultByJockyByJyo.HitCount123],
		  dbo.RaceResultByJockyByJyo.HitCount123Log AS [RaceResultByJockyByJyo.HitCount123Log],
		  dbo.RaceResultByJockyByJyo.HitRate123 AS [RaceResultByJockyByJyo.HitRate123],
		  dbo.RaceResultByJockyByJyo.HitRate123Log AS [RaceResultByJockyByJyo.HitRate123Log],
		  dbo.RaceResultByJockyByJyo.OddsWin AS [RaceResultByJockyByJyo.OddsWin],
		  dbo.RaceResultByJockyByJyo.OddsWinLog AS [RaceResultByJockyByJyo.OddsWinLog],
		  dbo.RaceResultByJockyByJyo.OddsPlace1 AS [RaceResultByJockyByJyo.OddsPlace1],
		  dbo.RaceResultByJockyByJyo.OddsPlace1Log AS [RaceResultByJockyByJyo.OddsPlace1Log],
		  dbo.RaceResultByJockyByJyo.OddsPlace2 AS [RaceResultByJockyByJyo.OddsPlace2],
		  dbo.RaceResultByJockyByJyo.OddsPlace2Log AS [RaceResultByJockyByJyo.OddsPlace2Log],
		  dbo.RaceResultByJockyByJyo.OddsWinInverse AS [RaceResultByJockyByJyo.OddsWinInvers],
		  dbo.RaceResultByJockyByJyo.OddsWinInverseLog AS [RaceResultByJockyByJyo.OddsWinInverseLog],
		  dbo.RaceResultByJockyByJyo.OddsPlaceInverse1 AS [RaceResultByJockyByJyo.OddsPlaceInverse1],
		  dbo.RaceResultByJockyByJyo.OddsPlaceInverse1Log AS [RaceResultByJockyByJyo.OddsPlaceInverse1Log],
		  dbo.RaceResultByJockyByJyo.OddsPlaceInverse2 AS [RaceResultByJockyByJyo.OddsPlaceInverse2],
		  dbo.RaceResultByJockyByJyo.OddsPlaceInverse2Log AS [RaceResultByJockyByJyo.OddsPlaceInverse2Log],
		  dbo.RaceResultByJockyByJyo.ApprovalRateWin AS [RaceResultByJockyByJyo.ApprovalRateWin],
		  dbo.RaceResultByJockyByJyo.ApprovalRateWinLog AS [RaceResultByJockyByJyo.ApprovalRateWinLog],
		  dbo.RaceResultByJockyByJyo.ApprovalRatePlace1 AS [RaceResultByJockyByJyo.ApprovalRatePlace1],
		  dbo.RaceResultByJockyByJyo.ApprovalRatePlace1Log AS [RaceResultByJockyByJyo.ApprovalRatePlace1Log],
		  dbo.RaceResultByJockyByJyo.ApprovalRatePlace2 AS [RaceResultByJockyByJyo.ApprovalRatePlace2],
		  dbo.RaceResultByJockyByJyo.ApprovalRatePlace2Log AS [RaceResultByJockyByJyo.ApprovalRatePlace2Log],
		  dbo.RaceResultByJockyByJyo.ExpectedValueWin AS [RaceResultByJockyByJyo.ExpectedValueWin],
		  dbo.RaceResultByJockyByJyo.ExpectedValueWinLog AS [RaceResultByJockyByJyo.ExpectedValueWinLog],
		  dbo.RaceResultByJockyByJyo.ExpectedValuePlace AS [RaceResultByJockyByJyo.ExpectedValuePlace],
		  dbo.RaceResultByJockyByJyo.ExpectedValuePlaceLog AS [RaceResultByJockyByJyo.ExpectedValuePlaceLog],
		  dbo.RaceResultByJockyByJyo.StdTime AS [RaceResultByJockyByJyo.StdTime],
		  dbo.RaceResultByJockyByJyo.StdTimeDev AS [RaceResultByJockyByJyo.StdTimeDev],
		  dbo.RaceResultByJockyByTrackType.RunCount AS [RaceResultByJockyByTrackType.RunCount],
		  dbo.RaceResultByJockyByTrackType.RunCountLog AS [RaceResultByJockyByTrackType.RunCountLog],
		  dbo.RaceResultByJockyByTrackType.HitCount1 AS [RaceResultByJockyByTrackType.HitCount1],
		  dbo.RaceResultByJockyByTrackType.HitCount1Log AS [RaceResultByJockyByTrackType.HitCount1Log],
		  dbo.RaceResultByJockyByTrackType.HitRate1 AS [RaceResultByJockyByTrackType.HitRate1],
		  dbo.RaceResultByJockyByTrackType.HitRate1Log AS [RaceResultByJockyByTrackType.HitRate1Log],
		  dbo.RaceResultByJockyByTrackType.HitCount12 AS [RaceResultByJockyByTrackType.HitCount12],
		  dbo.RaceResultByJockyByTrackType.HitCount12Log AS [RaceResultByJockyByTrackType.HitCount12Log],
		  dbo.RaceResultByJockyByTrackType.HitRate12 AS [RaceResultByJockyByTrackType.HitRate12],
		  dbo.RaceResultByJockyByTrackType.HitRate12Log AS [RaceResultByJockyByTrackType.HitRate12Log],
		  dbo.RaceResultByJockyByTrackType.HitCount123 AS [RaceResultByJockyByTrackType.HitCount123],
		  dbo.RaceResultByJockyByTrackType.HitCount123Log AS [RaceResultByJockyByTrackType.HitCount123Log],
		  dbo.RaceResultByJockyByTrackType.HitRate123 AS [RaceResultByJockyByTrackType.HitRate123],
		  dbo.RaceResultByJockyByTrackType.HitRate123Log AS [RaceResultByJockyByTrackType.HitRate123Log],
		  dbo.RaceResultByJockyByTrackType.OddsWin AS [RaceResultByJockyByTrackType.OddsWin],
		  dbo.RaceResultByJockyByTrackType.OddsWinLog AS [RaceResultByJockyByTrackType.OddsWinLog],
		  dbo.RaceResultByJockyByTrackType.OddsPlace1 AS [RaceResultByJockyByTrackType.OddsPlace1],
		  dbo.RaceResultByJockyByTrackType.OddsPlace1Log AS [RaceResultByJockyByTrackType.OddsPlace1Log],
		  dbo.RaceResultByJockyByTrackType.OddsPlace2 AS [RaceResultByJockyByTrackType.OddsPlace2],
		  dbo.RaceResultByJockyByTrackType.OddsPlace2Log AS [RaceResultByJockyByTrackType.OddsPlace2Log],
		  dbo.RaceResultByJockyByTrackType.OddsWinInverse AS [RaceResultByJockyByTrackType.OddsWinInvers],
		  dbo.RaceResultByJockyByTrackType.OddsWinInverseLog AS [RaceResultByJockyByTrackType.OddsWinInverseLog],
		  dbo.RaceResultByJockyByTrackType.OddsPlaceInverse1 AS [RaceResultByJockyByTrackType.OddsPlaceInverse1],
		  dbo.RaceResultByJockyByTrackType.OddsPlaceInverse1Log AS [RaceResultByJockyByTrackType.OddsPlaceInverse1Log],
		  dbo.RaceResultByJockyByTrackType.OddsPlaceInverse2 AS [RaceResultByJockyByTrackType.OddsPlaceInverse2],
		  dbo.RaceResultByJockyByTrackType.OddsPlaceInverse2Log AS [RaceResultByJockyByTrackType.OddsPlaceInverse2Log],
		  dbo.RaceResultByJockyByTrackType.ApprovalRateWin AS [RaceResultByJockyByTrackType.ApprovalRateWin],
		  dbo.RaceResultByJockyByTrackType.ApprovalRateWinLog AS [RaceResultByJockyByTrackType.ApprovalRateWinLog],
		  dbo.RaceResultByJockyByTrackType.ApprovalRatePlace1 AS [RaceResultByJockyByTrackType.ApprovalRatePlace1],
		  dbo.RaceResultByJockyByTrackType.ApprovalRatePlace1Log AS [RaceResultByJockyByTrackType.ApprovalRatePlace1Log],
		  dbo.RaceResultByJockyByTrackType.ApprovalRatePlace2 AS [RaceResultByJockyByTrackType.ApprovalRatePlace2],
		  dbo.RaceResultByJockyByTrackType.ApprovalRatePlace2Log AS [RaceResultByJockyByTrackType.ApprovalRatePlace2Log],
		  dbo.RaceResultByJockyByTrackType.ExpectedValueWin AS [RaceResultByJockyByTrackType.ExpectedValueWin],
		  dbo.RaceResultByJockyByTrackType.ExpectedValueWinLog AS [RaceResultByJockyByTrackType.ExpectedValueWinLog],
		  dbo.RaceResultByJockyByTrackType.ExpectedValuePlace AS [RaceResultByJockyByTrackType.ExpectedValuePlace],
		  dbo.RaceResultByJockyByTrackType.ExpectedValuePlaceLog AS [RaceResultByJockyByTrackType.ExpectedValuePlaceLog],
		  dbo.RaceResultByJockyByTrackType.StdTime AS [RaceResultByJockyByTrackType.StdTime],
		  dbo.RaceResultByJockyByTrackType.StdTimeDev AS [RaceResultByJockyByTrackType.StdTimeDev],
		  dbo.RaceResultByTrainer.HonSyokinHeichi AS [RaceResultByTrainer.HonSyokinHeichi],
		  dbo.RaceResultByTrainer.HonSyokinHeichiLog AS [RaceResultByTrainer.HonSyokinHeichiLog],
		  dbo.RaceResultByTrainer.HonSyokinSyogai AS [RaceResultByTrainer.HonSyokinSyogai],
		  dbo.RaceResultByTrainer.HonSyokinSyogaiLog AS [RaceResultByTrainer.HonSyokinSyogaiLog],
/*
		, dbo.RaceResultByTrainerByDistanceType.RunCount AS [RaceResultByTrainerByDistanceType.RunCount]
		, dbo.RaceResultByTrainerByDistanceType.RunCountLog AS [RaceResultByTrainerByDistanceType.RunCountLog]
		, dbo.RaceResultByTrainerByDistanceType.HitCount1 AS [RaceResultByTrainerByDistanceType.HitCount1]
		, dbo.RaceResultByTrainerByDistanceType.HitCount1Log AS [RaceResultByTrainerByDistanceType.HitCount1Log]
		, dbo.RaceResultByTrainerByDistanceType.HitRate1 AS [RaceResultByTrainerByDistanceType.HitRate1]
		, dbo.RaceResultByTrainerByDistanceType.HitRate1Log AS [RaceResultByTrainerByDistanceType.HitRate1Log]
		, dbo.RaceResultByTrainerByDistanceType.HitCount12 AS [RaceResultByTrainerByDistanceType.HitCount12]
		, dbo.RaceResultByTrainerByDistanceType.HitCount12Log AS [RaceResultByTrainerByDistanceType.HitCount12Log]
		, dbo.RaceResultByTrainerByDistanceType.HitRate12 AS [RaceResultByTrainerByDistanceType.HitRate12]
		, dbo.RaceResultByTrainerByDistanceType.HitRate12Log AS [RaceResultByTrainerByDistanceType.HitRate12Log]
		, dbo.RaceResultByTrainerByDistanceType.HitCount123 AS [RaceResultByTrainerByDistanceType.HitCount123]
		, dbo.RaceResultByTrainerByDistanceType.HitCount123Log AS [RaceResultByTrainerByDistanceType.HitCount123Log]
		, dbo.RaceResultByTrainerByDistanceType.HitRate123 AS [RaceResultByTrainerByDistanceType.HitRate123]
		, dbo.RaceResultByTrainerByDistanceType.HitRate123Log AS [RaceResultByTrainerByDistanceType.HitRate123Log]
		, dbo.RaceResultByTrainerByDistanceType.OddsWin AS [RaceResultByTrainerByDistanceType.OddsWin]
		, dbo.RaceResultByTrainerByDistanceType.OddsWinLog AS [RaceResultByTrainerByDistanceType.OddsWinLog]
		, dbo.RaceResultByTrainerByDistanceType.OddsPlace1 AS [RaceResultByTrainerByDistanceType.OddsPlace1]
		, dbo.RaceResultByTrainerByDistanceType.OddsPlace1Log AS [RaceResultByTrainerByDistanceType.OddsPlace1Log]
		, dbo.RaceResultByTrainerByDistanceType.OddsPlace2 AS [RaceResultByTrainerByDistanceType.OddsPlace2]
		, dbo.RaceResultByTrainerByDistanceType.OddsPlace2Log AS [RaceResultByTrainerByDistanceType.OddsPlace2Log]
		, dbo.RaceResultByTrainerByDistanceType.OddsWinInverse AS [RaceResultByTrainerByDistanceType.OddsWinInvers]
		, dbo.RaceResultByTrainerByDistanceType.OddsWinInverseLog AS [RaceResultByTrainerByDistanceType.OddsWinInverseLog]
		, dbo.RaceResultByTrainerByDistanceType.OddsPlaceInverse1 AS [RaceResultByTrainerByDistanceType.OddsPlaceInverse1]
		, dbo.RaceResultByTrainerByDistanceType.OddsPlaceInverse1Log AS [RaceResultByTrainerByDistanceType.OddsPlaceInverse1Log]
		, dbo.RaceResultByTrainerByDistanceType.OddsPlaceInverse2 AS [RaceResultByTrainerByDistanceType.OddsPlaceInverse2]
		, dbo.RaceResultByTrainerByDistanceType.OddsPlaceInverse2Log AS [RaceResultByTrainerByDistanceType.OddsPlaceInverse2Log]
		, dbo.RaceResultByTrainerByDistanceType.ApprovalRateWin AS [RaceResultByTrainerByDistanceType.ApprovalRateWin]
		, dbo.RaceResultByTrainerByDistanceType.ApprovalRateWinLog AS [RaceResultByTrainerByDistanceType.ApprovalRateWinLog]
		, dbo.RaceResultByTrainerByDistanceType.ApprovalRatePlace1 AS [RaceResultByTrainerByDistanceType.ApprovalRatePlace1]
		, dbo.RaceResultByTrainerByDistanceType.ApprovalRatePlace1Log AS [RaceResultByTrainerByDistanceType.ApprovalRatePlace1Log]
		, dbo.RaceResultByTrainerByDistanceType.ApprovalRatePlace2 AS [RaceResultByTrainerByDistanceType.ApprovalRatePlace2]
		, dbo.RaceResultByTrainerByDistanceType.ApprovalRatePlace2Log AS [RaceResultByTrainerByDistanceType.ApprovalRatePlace2Log]
		, dbo.RaceResultByTrainerByDistanceType.ExpectedValueWin AS [RaceResultByTrainerByDistanceType.ExpectedValueWin]
		, dbo.RaceResultByTrainerByDistanceType.ExpectedValueWinLog AS [RaceResultByTrainerByDistanceType.ExpectedValueWinLog]
		, dbo.RaceResultByTrainerByDistanceType.ExpectedValuePlace AS [RaceResultByTrainerByDistanceType.ExpectedValuePlace]
		, dbo.RaceResultByTrainerByDistanceType.ExpectedValuePlaceLog AS [RaceResultByTrainerByDistanceType.ExpectedValuePlaceLog]
		, dbo.RaceResultByTrainerByDistanceType.StdTime AS [RaceResultByTrainerByDistanceType.StdTime]
		, dbo.RaceResultByTrainerByDistanceType.StdTimeDev AS [RaceResultByTrainerByDistanceType.StdTimeDev]
*/
		  dbo.RaceResultByTrainerByJyo.RunCount AS [RaceResultByTrainerByJyo.RunCount],
		  dbo.RaceResultByTrainerByJyo.RunCountLog AS [RaceResultByTrainerByJyo.RunCountLog],
		  dbo.RaceResultByTrainerByJyo.HitCount1 AS [RaceResultByTrainerByJyo.HitCount1],
		  dbo.RaceResultByTrainerByJyo.HitCount1Log AS [RaceResultByTrainerByJyo.HitCount1Log],
		  dbo.RaceResultByTrainerByJyo.HitRate1 AS [RaceResultByTrainerByJyo.HitRate1],
		  dbo.RaceResultByTrainerByJyo.HitRate1Log AS [RaceResultByTrainerByJyo.HitRate1Log],
		  dbo.RaceResultByTrainerByJyo.HitCount12 AS [RaceResultByTrainerByJyo.HitCount12],
		  dbo.RaceResultByTrainerByJyo.HitCount12Log AS [RaceResultByTrainerByJyo.HitCount12Log],
		  dbo.RaceResultByTrainerByJyo.HitRate12 AS [RaceResultByTrainerByJyo.HitRate12],
		  dbo.RaceResultByTrainerByJyo.HitRate12Log AS [RaceResultByTrainerByJyo.HitRate12Log],
		  dbo.RaceResultByTrainerByJyo.HitCount123 AS [RaceResultByTrainerByJyo.HitCount123],
		  dbo.RaceResultByTrainerByJyo.HitCount123Log AS [RaceResultByTrainerByJyo.HitCount123Log],
		  dbo.RaceResultByTrainerByJyo.HitRate123 AS [RaceResultByTrainerByJyo.HitRate123],
		  dbo.RaceResultByTrainerByJyo.HitRate123Log AS [RaceResultByTrainerByJyo.HitRate123Log],
		  dbo.RaceResultByTrainerByJyo.OddsWin AS [RaceResultByTrainerByJyo.OddsWin],
		  dbo.RaceResultByTrainerByJyo.OddsWinLog AS [RaceResultByTrainerByJyo.OddsWinLog],
		  dbo.RaceResultByTrainerByJyo.OddsPlace1 AS [RaceResultByTrainerByJyo.OddsPlace1],
		  dbo.RaceResultByTrainerByJyo.OddsPlace1Log AS [RaceResultByTrainerByJyo.OddsPlace1Log],
		  dbo.RaceResultByTrainerByJyo.OddsPlace2 AS [RaceResultByTrainerByJyo.OddsPlace2],
		  dbo.RaceResultByTrainerByJyo.OddsPlace2Log AS [RaceResultByTrainerByJyo.OddsPlace2Log],
		  dbo.RaceResultByTrainerByJyo.OddsWinInverse AS [RaceResultByTrainerByJyo.OddsWinInvers],
		  dbo.RaceResultByTrainerByJyo.OddsWinInverseLog AS [RaceResultByTrainerByJyo.OddsWinInverseLog],
		  dbo.RaceResultByTrainerByJyo.OddsPlaceInverse1 AS [RaceResultByTrainerByJyo.OddsPlaceInverse1],
		  dbo.RaceResultByTrainerByJyo.OddsPlaceInverse1Log AS [RaceResultByTrainerByJyo.OddsPlaceInverse1Log],
		  dbo.RaceResultByTrainerByJyo.OddsPlaceInverse2 AS [RaceResultByTrainerByJyo.OddsPlaceInverse2],
		  dbo.RaceResultByTrainerByJyo.OddsPlaceInverse2Log AS [RaceResultByTrainerByJyo.OddsPlaceInverse2Log],
		  dbo.RaceResultByTrainerByJyo.ApprovalRateWin AS [RaceResultByTrainerByJyo.ApprovalRateWin],
		  dbo.RaceResultByTrainerByJyo.ApprovalRateWinLog AS [RaceResultByTrainerByJyo.ApprovalRateWinLog],
		  dbo.RaceResultByTrainerByJyo.ApprovalRatePlace1 AS [RaceResultByTrainerByJyo.ApprovalRatePlace1],
		  dbo.RaceResultByTrainerByJyo.ApprovalRatePlace1Log AS [RaceResultByTrainerByJyo.ApprovalRatePlace1Log],
		  dbo.RaceResultByTrainerByJyo.ApprovalRatePlace2 AS [RaceResultByTrainerByJyo.ApprovalRatePlace2],
		  dbo.RaceResultByTrainerByJyo.ApprovalRatePlace2Log AS [RaceResultByTrainerByJyo.ApprovalRatePlace2Log],
		  dbo.RaceResultByTrainerByJyo.ExpectedValueWin AS [RaceResultByTrainerByJyo.ExpectedValueWin],
		  dbo.RaceResultByTrainerByJyo.ExpectedValueWinLog AS [RaceResultByTrainerByJyo.ExpectedValueWinLog],
		  dbo.RaceResultByTrainerByJyo.ExpectedValuePlace AS [RaceResultByTrainerByJyo.ExpectedValuePlace],
		  dbo.RaceResultByTrainerByJyo.ExpectedValuePlaceLog AS [RaceResultByTrainerByJyo.ExpectedValuePlaceLog],
		  dbo.RaceResultByTrainerByJyo.StdTime AS [RaceResultByTrainerByJyo.StdTime],
		  dbo.RaceResultByTrainerByJyo.StdTimeDev AS [RaceResultByTrainerByJyo.StdTimeDev],
		  dbo.RaceResultByTrainerByTrackType.RunCount AS [RaceResultByTrainerByTrackType.RunCount],
		  dbo.RaceResultByTrainerByTrackType.RunCountLog AS [RaceResultByTrainerByTrackType.RunCountLog],
		  dbo.RaceResultByTrainerByTrackType.HitCount1 AS [RaceResultByTrainerByTrackType.HitCount1],
		  dbo.RaceResultByTrainerByTrackType.HitCount1Log AS [RaceResultByTrainerByTrackType.HitCount1Log],
		  dbo.RaceResultByTrainerByTrackType.HitRate1 AS [RaceResultByTrainerByTrackType.HitRate1],
		  dbo.RaceResultByTrainerByTrackType.HitRate1Log AS [RaceResultByTrainerByTrackType.HitRate1Log],
		  dbo.RaceResultByTrainerByTrackType.HitCount12 AS [RaceResultByTrainerByTrackType.HitCount12],
		  dbo.RaceResultByTrainerByTrackType.HitCount12Log AS [RaceResultByTrainerByTrackType.HitCount12Log],
		  dbo.RaceResultByTrainerByTrackType.HitRate12 AS [RaceResultByTrainerByTrackType.HitRate12],
		  dbo.RaceResultByTrainerByTrackType.HitRate12Log AS [RaceResultByTrainerByTrackType.HitRate12Log],
		  dbo.RaceResultByTrainerByTrackType.HitCount123 AS [RaceResultByTrainerByTrackType.HitCount123],
		  dbo.RaceResultByTrainerByTrackType.HitCount123Log AS [RaceResultByTrainerByTrackType.HitCount123Log],
		  dbo.RaceResultByTrainerByTrackType.HitRate123 AS [RaceResultByTrainerByTrackType.HitRate123],
		  dbo.RaceResultByTrainerByTrackType.HitRate123Log AS [RaceResultByTrainerByTrackType.HitRate123Log],
		  dbo.RaceResultByTrainerByTrackType.OddsWin AS [RaceResultByTrainerByTrackType.OddsWin],
		  dbo.RaceResultByTrainerByTrackType.OddsWinLog AS [RaceResultByTrainerByTrackType.OddsWinLog],
		  dbo.RaceResultByTrainerByTrackType.OddsPlace1 AS [RaceResultByTrainerByTrackType.OddsPlace1],
		  dbo.RaceResultByTrainerByTrackType.OddsPlace1Log AS [RaceResultByTrainerByTrackType.OddsPlace1Log],
		  dbo.RaceResultByTrainerByTrackType.OddsPlace2 AS [RaceResultByTrainerByTrackType.OddsPlace2],
		  dbo.RaceResultByTrainerByTrackType.OddsPlace2Log AS [RaceResultByTrainerByTrackType.OddsPlace2Log],
		  dbo.RaceResultByTrainerByTrackType.OddsWinInverse AS [RaceResultByTrainerByTrackType.OddsWinInvers],
		  dbo.RaceResultByTrainerByTrackType.OddsWinInverseLog AS [RaceResultByTrainerByTrackType.OddsWinInverseLog],
		  dbo.RaceResultByTrainerByTrackType.OddsPlaceInverse1 AS [RaceResultByTrainerByTrackType.OddsPlaceInverse1],
		  dbo.RaceResultByTrainerByTrackType.OddsPlaceInverse1Log AS [RaceResultByTrainerByTrackType.OddsPlaceInverse1Log],
		  dbo.RaceResultByTrainerByTrackType.OddsPlaceInverse2 AS [RaceResultByTrainerByTrackType.OddsPlaceInverse2],
		  dbo.RaceResultByTrainerByTrackType.OddsPlaceInverse2Log AS [RaceResultByTrainerByTrackType.OddsPlaceInverse2Log],
		  dbo.RaceResultByTrainerByTrackType.ApprovalRateWin AS [RaceResultByTrainerByTrackType.ApprovalRateWin],
		  dbo.RaceResultByTrainerByTrackType.ApprovalRateWinLog AS [RaceResultByTrainerByTrackType.ApprovalRateWinLog],
		  dbo.RaceResultByTrainerByTrackType.ApprovalRatePlace1 AS [RaceResultByTrainerByTrackType.ApprovalRatePlace1],
		  dbo.RaceResultByTrainerByTrackType.ApprovalRatePlace1Log AS [RaceResultByTrainerByTrackType.ApprovalRatePlace1Log],
		  dbo.RaceResultByTrainerByTrackType.ApprovalRatePlace2 AS [RaceResultByTrainerByTrackType.ApprovalRatePlace2],
		  dbo.RaceResultByTrainerByTrackType.ApprovalRatePlace2Log AS [RaceResultByTrainerByTrackType.ApprovalRatePlace2Log],
		  dbo.RaceResultByTrainerByTrackType.ExpectedValueWin AS [RaceResultByTrainerByTrackType.ExpectedValueWin],
		  dbo.RaceResultByTrainerByTrackType.ExpectedValueWinLog AS [RaceResultByTrainerByTrackType.ExpectedValueWinLog],
		  dbo.RaceResultByTrainerByTrackType.ExpectedValuePlace AS [RaceResultByTrainerByTrackType.ExpectedValuePlace],
		  dbo.RaceResultByTrainerByTrackType.ExpectedValuePlaceLog AS [RaceResultByTrainerByTrackType.ExpectedValuePlaceLog],
		  dbo.RaceResultByTrainerByTrackType.StdTime AS [RaceResultByTrainerByTrackType.StdTime],
		  dbo.RaceResultByTrainerByTrackType.StdTimeDev AS [RaceResultByTrainerByTrackType.StdTimeDev],
		  dbo.RaceResultByChildrenCourseType01.RunCount AS [RaceResultByChildrenCourseType01.RunCount],
		  dbo.RaceResultByChildrenCourseType01.RunCountLog AS [RaceResultByChildrenCourseType01.RunCountLog],
		  dbo.RaceResultByChildrenCourseType01.HitCount1 AS [RaceResultByChildrenCourseType01.HitCount1],
		  dbo.RaceResultByChildrenCourseType01.HitCount1Log AS [RaceResultByChildrenCourseType01.HitCount1Log],
		  dbo.RaceResultByChildrenCourseType01.HitRate1 AS [RaceResultByChildrenCourseType01.HitRate1],
		  dbo.RaceResultByChildrenCourseType01.HitCount12 AS [RaceResultByChildrenCourseType01.HitCount12],
		  dbo.RaceResultByChildrenCourseType01.HitCount12Log AS [RaceResultByChildrenCourseType01.HitCount12Log],
		  dbo.RaceResultByChildrenCourseType01.HitRate12 AS [RaceResultByChildrenCourseType01.HitRate12],
		  dbo.RaceResultByChildrenCourseType01.HitCount123 AS [RaceResultByChildrenCourseType01.HitCount123],
		  dbo.RaceResultByChildrenCourseType01.HitCount123Log AS [RaceResultByChildrenCourseType01.HitCount123Log],
		  dbo.RaceResultByChildrenCourseType01.HitRate123 AS [RaceResultByChildrenCourseType01.HitRate123],
		  dbo.RaceResultByChildrenCourseType01.ExpectedValueWin AS [RaceResultByChildrenCourseType01.ExpectedValueWin],
		  dbo.RaceResultByChildrenCourseType01.ExpectedValuePlace AS [RaceResultByChildrenCourseType01.ExpectedValuePlace],
		  dbo.RaceResultByChildrenCourseType02.RunCount AS [RaceResultByChildrenCourseType02.RunCount],
		  dbo.RaceResultByChildrenCourseType02.RunCountLog AS [RaceResultByChildrenCourseType02.RunCountLog],
		  dbo.RaceResultByChildrenCourseType02.HitCount1 AS [RaceResultByChildrenCourseType02.HitCount1],
		  dbo.RaceResultByChildrenCourseType02.HitCount1Log AS [RaceResultByChildrenCourseType02.HitCount1Log],
		  dbo.RaceResultByChildrenCourseType02.HitRate1 AS [RaceResultByChildrenCourseType02.HitRate1],
		  dbo.RaceResultByChildrenCourseType02.HitCount12 AS [RaceResultByChildrenCourseType02.HitCount12],
		  dbo.RaceResultByChildrenCourseType02.HitCount12Log AS [RaceResultByChildrenCourseType02.HitCount12Log],
		  dbo.RaceResultByChildrenCourseType02.HitRate12 AS [RaceResultByChildrenCourseType02.HitRate12],
		  dbo.RaceResultByChildrenCourseType02.HitCount123 AS [RaceResultByChildrenCourseType02.HitCount123],
		  dbo.RaceResultByChildrenCourseType02.HitCount123Log AS [RaceResultByChildrenCourseType02.HitCount123Log],
		  dbo.RaceResultByChildrenCourseType02.HitRate123 AS [RaceResultByChildrenCourseType02.HitRate123],
		  dbo.RaceResultByChildrenCourseType02.ExpectedValueWin AS [RaceResultByChildrenCourseType02.ExpectedValueWin],
		  dbo.RaceResultByChildrenCourseType02.ExpectedValuePlace AS [RaceResultByChildrenCourseType02.ExpectedValuePlace],
		  dbo.RaceResultByChildrenJyoken01.RunCount AS [RaceResultByChildrenJyoken01.RunCount],
		  dbo.RaceResultByChildrenJyoken01.RunCountLog AS [RaceResultByChildrenJyoken01.RunCountLog],
		  dbo.RaceResultByChildrenJyoken01.HitCount1 AS [RaceResultByChildrenJyoken01.HitCount1],
		  dbo.RaceResultByChildrenJyoken01.HitCount1Log AS [RaceResultByChildrenJyoken01.HitCount1Log],
		  dbo.RaceResultByChildrenJyoken01.HitRate1 AS [RaceResultByChildrenJyoken01.HitRate1],
		  dbo.RaceResultByChildrenJyoken01.HitCount12 AS [RaceResultByChildrenJyoken01.HitCount12],
		  dbo.RaceResultByChildrenJyoken01.HitCount12Log AS [RaceResultByChildrenJyoken01.HitCount12Log],
		  dbo.RaceResultByChildrenJyoken01.HitRate12 AS [RaceResultByChildrenJyoken01.HitRate12],
		  dbo.RaceResultByChildrenJyoken01.HitCount123 AS [RaceResultByChildrenJyoken01.HitCount123],
		  dbo.RaceResultByChildrenJyoken01.HitCount123Log AS [RaceResultByChildrenJyoken01.HitCount123Log],
		  dbo.RaceResultByChildrenJyoken01.HitRate123 AS [RaceResultByChildrenJyoken01.HitRate123],
		  dbo.RaceResultByChildrenJyoken01.ExpectedValueWin AS [RaceResultByChildrenJyoken01.ExpectedValueWin],
		  dbo.RaceResultByChildrenJyoken01.ExpectedValuePlace AS [RaceResultByChildrenJyoken01.ExpectedValuePlace],
		  dbo.RaceResultByChildrenJyoken02.RunCount AS [RaceResultByChildrenJyoken02.RunCount],
		  dbo.RaceResultByChildrenJyoken02.RunCountLog AS [RaceResultByChildrenJyoken02.RunCountLog],
		  dbo.RaceResultByChildrenJyoken02.HitCount1 AS [RaceResultByChildrenJyoken02.HitCount1],
		  dbo.RaceResultByChildrenJyoken02.HitCount1Log AS [RaceResultByChildrenJyoken02.HitCount1Log],
		  dbo.RaceResultByChildrenJyoken02.HitRate1 AS [RaceResultByChildrenJyoken02.HitRate1],
		  dbo.RaceResultByChildrenJyoken02.HitCount12 AS [RaceResultByChildrenJyoken02.HitCount12],
		  dbo.RaceResultByChildrenJyoken02.HitCount12Log AS [RaceResultByChildrenJyoken02.HitCount12Log],
		  dbo.RaceResultByChildrenJyoken02.HitRate12 AS [RaceResultByChildrenJyoken02.HitRate12],
		  dbo.RaceResultByChildrenJyoken02.HitCount123 AS [RaceResultByChildrenJyoken02.HitCount123],
		  dbo.RaceResultByChildrenJyoken02.HitCount123Log AS [RaceResultByChildrenJyoken02.HitCount123Log],
		  dbo.RaceResultByChildrenJyoken02.HitRate123 AS [RaceResultByChildrenJyoken02.HitRate123],
		  dbo.RaceResultByChildrenJyoken02.ExpectedValueWin AS [RaceResultByChildrenJyoken02.ExpectedValueWin],
		  dbo.RaceResultByChildrenJyoken02.ExpectedValuePlace AS [RaceResultByChildrenJyoken02.ExpectedValuePlace],
		  dbo.RaceResultByChildrenSmile01.RunCount AS [RaceResultByChildrenSmile01.RunCount],
		  dbo.RaceResultByChildrenSmile01.RunCountLog AS [RaceResultByChildrenSmile01.RunCountLog],
		  dbo.RaceResultByChildrenSmile01.HitCount1 AS [RaceResultByChildrenSmile01.HitCount1],
		  dbo.RaceResultByChildrenSmile01.HitCount1Log AS [RaceResultByChildrenSmile01.HitCount1Log],
		  dbo.RaceResultByChildrenSmile01.HitRate1 AS [RaceResultByChildrenSmile01.HitRate1],
		  dbo.RaceResultByChildrenSmile01.HitCount12 AS [RaceResultByChildrenSmile01.HitCount12],
		  dbo.RaceResultByChildrenSmile01.HitCount12Log AS [RaceResultByChildrenSmile01.HitCount12Log],
		  dbo.RaceResultByChildrenSmile01.HitRate12 AS [RaceResultByChildrenSmile01.HitRate12],
		  dbo.RaceResultByChildrenSmile01.HitCount123 AS [RaceResultByChildrenSmile01.HitCount123],
		  dbo.RaceResultByChildrenSmile01.HitCount123Log AS [RaceResultByChildrenSmile01.HitCount123Log],
		  dbo.RaceResultByChildrenSmile01.HitRate123 AS [RaceResultByChildrenSmile01.HitRate123],
		  dbo.RaceResultByChildrenSmile01.ExpectedValueWin AS [RaceResultByChildrenSmile01.ExpectedValueWin],
		  dbo.RaceResultByChildrenSmile01.ExpectedValuePlace AS [RaceResultByChildrenSmile01.ExpectedValuePlace],
		  dbo.RaceResultByChildrenSmile02.RunCount AS [RaceResultByChildrenSmile02.RunCount],
		  dbo.RaceResultByChildrenSmile02.RunCountLog AS [RaceResultByChildrenSmile02.RunCountLog],
		  dbo.RaceResultByChildrenSmile02.HitCount1 AS [RaceResultByChildrenSmile02.HitCount1],
		  dbo.RaceResultByChildrenSmile02.HitCount1Log AS [RaceResultByChildrenSmile02.HitCount1Log],
		  dbo.RaceResultByChildrenSmile02.HitRate1 AS [RaceResultByChildrenSmile02.HitRate1],
		  dbo.RaceResultByChildrenSmile02.HitCount12 AS [RaceResultByChildrenSmile02.HitCount12],
		  dbo.RaceResultByChildrenSmile02.HitCount12Log AS [RaceResultByChildrenSmile02.HitCount12Log],
		  dbo.RaceResultByChildrenSmile02.HitRate12 AS [RaceResultByChildrenSmile02.HitRate12],
		  dbo.RaceResultByChildrenSmile02.HitCount123 AS [RaceResultByChildrenSmile02.HitCount123],
		  dbo.RaceResultByChildrenSmile02.HitCount123Log AS [RaceResultByChildrenSmile02.HitCount123Log],
		  dbo.RaceResultByChildrenSmile02.HitRate123 AS [RaceResultByChildrenSmile02.HitRate123],
		  dbo.RaceResultByChildrenSmile02.ExpectedValueWin AS [RaceResultByChildrenSmile02.ExpectedValueWin],
		  dbo.RaceResultByChildrenSmile02.ExpectedValuePlace AS [RaceResultByChildrenSmile02.ExpectedValuePlace],
		  dbo.RaceResultByChildrenTrackCondition01.RunCount AS [RaceResultByChildrenTrackCondition01.RunCount],
		  dbo.RaceResultByChildrenTrackCondition01.RunCountLog AS [RaceResultByChildrenTrackCondition01.RunCountLog],
		  dbo.RaceResultByChildrenTrackCondition01.HitCount1 AS [RaceResultByChildrenTrackCondition01.HitCount1],
		  dbo.RaceResultByChildrenTrackCondition01.HitCount1Log AS [RaceResultByChildrenTrackCondition01.HitCount1Log],
		  dbo.RaceResultByChildrenTrackCondition01.HitRate1 AS [RaceResultByChildrenTrackCondition01.HitRate1],
		  dbo.RaceResultByChildrenTrackCondition01.HitCount12 AS [RaceResultByChildrenTrackCondition01.HitCount12],
		  dbo.RaceResultByChildrenTrackCondition01.HitCount12Log AS [RaceResultByChildrenTrackCondition01.HitCount12Log],
		  dbo.RaceResultByChildrenTrackCondition01.HitRate12 AS [RaceResultByChildrenTrackCondition01.HitRate12],
		  dbo.RaceResultByChildrenTrackCondition01.HitCount123 AS [RaceResultByChildrenTrackCondition01.HitCount123],
		  dbo.RaceResultByChildrenTrackCondition01.HitCount123Log AS [RaceResultByChildrenTrackCondition01.HitCount123Log],
		  dbo.RaceResultByChildrenTrackCondition01.HitRate123 AS [RaceResultByChildrenTrackCondition01.HitRate123],
		  dbo.RaceResultByChildrenTrackCondition01.ExpectedValueWin AS [RaceResultByChildrenTrackCondition01.ExpectedValueWin],
		  dbo.RaceResultByChildrenTrackCondition01.ExpectedValuePlace AS [RaceResultByChildrenTrackCondition01.ExpectedValuePlace],
		  dbo.RaceResultByChildrenTrackCondition02.RunCount AS [RaceResultByChildrenTrackCondition02.RunCount],
		  dbo.RaceResultByChildrenTrackCondition02.RunCountLog AS [RaceResultByChildrenTrackCondition02.RunCountLog],
		  dbo.RaceResultByChildrenTrackCondition02.HitCount1 AS [RaceResultByChildrenTrackCondition02.HitCount1],
		  dbo.RaceResultByChildrenTrackCondition02.HitCount1Log AS [RaceResultByChildrenTrackCondition02.HitCount1Log],
		  dbo.RaceResultByChildrenTrackCondition02.HitRate1 AS [RaceResultByChildrenTrackCondition02.HitRate1],
		  dbo.RaceResultByChildrenTrackCondition02.HitCount12 AS [RaceResultByChildrenTrackCondition02.HitCount12],
		  dbo.RaceResultByChildrenTrackCondition02.HitCount12Log AS [RaceResultByChildrenTrackCondition02.HitCount12Log],
		  dbo.RaceResultByChildrenTrackCondition02.HitRate12 AS [RaceResultByChildrenTrackCondition02.HitRate12],
		  dbo.RaceResultByChildrenTrackCondition02.HitCount123 AS [RaceResultByChildrenTrackCondition02.HitCount123],
		  dbo.RaceResultByChildrenTrackCondition02.HitCount123Log AS [RaceResultByChildrenTrackCondition02.HitCount123Log],
		  dbo.RaceResultByChildrenTrackCondition02.HitRate123 AS [RaceResultByChildrenTrackCondition02.HitRate123],
		  dbo.RaceResultByChildrenTrackCondition02.ExpectedValueWin AS [RaceResultByChildrenTrackCondition02.ExpectedValueWin],
		  dbo.RaceResultByChildrenTrackCondition02.ExpectedValuePlace AS [RaceResultByChildrenTrackCondition02.ExpectedValuePlace],
		  dbo.RaceResultByChildrenTrackType01.RunCount AS [RaceResultByChildrenTrackType01.RunCount],
		  dbo.RaceResultByChildrenTrackType01.RunCountLog AS [RaceResultByChildrenTrackType01.RunCountLog],
		  dbo.RaceResultByChildrenTrackType01.HitCount1 AS [RaceResultByChildrenTrackType01.HitCount1],
		  dbo.RaceResultByChildrenTrackType01.HitCount1Log AS [RaceResultByChildrenTrackType01.HitCount1Log],
		  dbo.RaceResultByChildrenTrackType01.HitRate1 AS [RaceResultByChildrenTrackType01.HitRate1],
		  dbo.RaceResultByChildrenTrackType01.HitCount12 AS [RaceResultByChildrenTrackType01.HitCount12],
		  dbo.RaceResultByChildrenTrackType01.HitCount12Log AS [RaceResultByChildrenTrackType01.HitCount12Log],
		  dbo.RaceResultByChildrenTrackType01.HitRate12 AS [RaceResultByChildrenTrackType01.HitRate12],
		  dbo.RaceResultByChildrenTrackType01.HitCount123 AS [RaceResultByChildrenTrackType01.HitCount123],
		  dbo.RaceResultByChildrenTrackType01.HitCount123Log AS [RaceResultByChildrenTrackType01.HitCount123Log],
		  dbo.RaceResultByChildrenTrackType01.HitRate123 AS [RaceResultByChildrenTrackType01.HitRate123],
		  dbo.RaceResultByChildrenTrackType01.ExpectedValueWin AS [RaceResultByChildrenTrackType01.ExpectedValueWin],
		  dbo.RaceResultByChildrenTrackType01.ExpectedValuePlace AS [RaceResultByChildrenTrackType01.ExpectedValuePlace],
		  dbo.RaceResultByChildrenTrackType02.RunCount AS [RaceResultByChildrenTrackType02.RunCount],
		  dbo.RaceResultByChildrenTrackType02.RunCountLog AS [RaceResultByChildrenTrackType02.RunCountLog],
		  dbo.RaceResultByChildrenTrackType02.HitCount1 AS [RaceResultByChildrenTrackType02.HitCount1],
		  dbo.RaceResultByChildrenTrackType02.HitCount1Log AS [RaceResultByChildrenTrackType02.HitCount1Log],
		  dbo.RaceResultByChildrenTrackType02.HitRate1 AS [RaceResultByChildrenTrackType02.HitRate1],
		  dbo.RaceResultByChildrenTrackType02.HitCount12 AS [RaceResultByChildrenTrackType02.HitCount12],
		  dbo.RaceResultByChildrenTrackType02.HitCount12Log AS [RaceResultByChildrenTrackType02.HitCount12Log],
		  dbo.RaceResultByChildrenTrackType02.HitRate12 AS [RaceResultByChildrenTrackType02.HitRate12],
		  dbo.RaceResultByChildrenTrackType02.HitCount123 AS [RaceResultByChildrenTrackType02.HitCount123],
		  dbo.RaceResultByChildrenTrackType02.HitCount123Log AS [RaceResultByChildrenTrackType02.HitCount123Log],
		  dbo.RaceResultByChildrenTrackType02.HitRate123 AS [RaceResultByChildrenTrackType02.HitRate123],
		  dbo.RaceResultByChildrenTrackType02.ExpectedValueWin AS [RaceResultByChildrenTrackType02.ExpectedValueWin],
		  dbo.RaceResultByChildrenTrackType02.ExpectedValuePlace AS [RaceResultByChildrenTrackType02.ExpectedValuePlace],
/*
		, dbo.RaceResultByParents01.RunCount AS [RaceResultByParents01.RunCount]
		, dbo.RaceResultByParents01.RunCountLog AS [RaceResultByParents01.RunCountLog]
		, dbo.RaceResultByParents01.HitCount1 AS [RaceResultByParents01.HitCount1]
		, dbo.RaceResultByParents01.HitCount1Log AS [RaceResultByParents01.HitCount1Log]
		, dbo.RaceResultByParents01.HitRate1 AS [RaceResultByParents01.HitRate1]
		, dbo.RaceResultByParents01.HitRate1Log AS [RaceResultByParents01.HitRate1Log]
		, dbo.RaceResultByParents01.HitCount12 AS [RaceResultByParents01.HitCount12]
		, dbo.RaceResultByParents01.HitCount12Log AS [RaceResultByParents01.HitCount12Log]
		, dbo.RaceResultByParents01.HitRate12 AS [RaceResultByParents01.HitRate12]
		, dbo.RaceResultByParents01.HitRate12Log AS [RaceResultByParents01.HitRate12Log]
		, dbo.RaceResultByParents01.HitCount123 AS [RaceResultByParents01.HitCount123]
		, dbo.RaceResultByParents01.HitCount123Log AS [RaceResultByParents01.HitCount123Log]
		, dbo.RaceResultByParents01.HitRate123 AS [RaceResultByParents01.HitRate123]
		, dbo.RaceResultByParents01.HitRate123Log AS [RaceResultByParents01.HitRate123Log]
		, dbo.RaceResultByParents01.OddsWin AS [RaceResultByParents01.OddsWin]
		, dbo.RaceResultByParents01.OddsWinLog AS [RaceResultByParents01.OddsWinLog]
		, dbo.RaceResultByParents01.OddsPlace1 AS [RaceResultByParents01.OddsPlace1]
		, dbo.RaceResultByParents01.OddsPlace1Log AS [RaceResultByParents01.OddsPlace1Log]
		, dbo.RaceResultByParents01.OddsPlace2 AS [RaceResultByParents01.OddsPlace2]
		, dbo.RaceResultByParents01.OddsPlace2Log AS [RaceResultByParents01.OddsPlace2Log]
		, dbo.RaceResultByParents01.OddsWinInverse AS [RaceResultByParents01.OddsWinInvers]
		, dbo.RaceResultByParents01.OddsWinInverseLog AS [RaceResultByParents01.OddsWinInverseLog]
		, dbo.RaceResultByParents01.OddsPlaceInverse1 AS [RaceResultByParents01.OddsPlaceInverse1]
		, dbo.RaceResultByParents01.OddsPlaceInverse1Log AS [RaceResultByParents01.OddsPlaceInverse1Log]
		, dbo.RaceResultByParents01.OddsPlaceInverse2 AS [RaceResultByParents01.OddsPlaceInverse2]
		, dbo.RaceResultByParents01.OddsPlaceInverse2Log AS [RaceResultByParents01.OddsPlaceInverse2Log]
		, dbo.RaceResultByParents01.ApprovalRateWin AS [RaceResultByParents01.ApprovalRateWin]
		, dbo.RaceResultByParents01.ApprovalRateWinLog AS [RaceResultByParents01.ApprovalRateWinLog]
		, dbo.RaceResultByParents01.ApprovalRatePlace1 AS [RaceResultByParents01.ApprovalRatePlace1]
		, dbo.RaceResultByParents01.ApprovalRatePlace1Log AS [RaceResultByParents01.ApprovalRatePlace1Log]
		, dbo.RaceResultByParents01.ApprovalRatePlace2 AS [RaceResultByParents01.ApprovalRatePlace2]
		, dbo.RaceResultByParents01.ApprovalRatePlace2Log AS [RaceResultByParents01.ApprovalRatePlace2Log]
		, dbo.RaceResultByParents01.ExpectedValueWin AS [RaceResultByParents01.ExpectedValueWin]
		, dbo.RaceResultByParents01.ExpectedValueWinLog AS [RaceResultByParents01.ExpectedValueWinLog]
		, dbo.RaceResultByParents01.ExpectedValuePlace AS [RaceResultByParents01.ExpectedValuePlace]
		, dbo.RaceResultByParents01.ExpectedValuePlaceLog AS [RaceResultByParents01.ExpectedValuePlaceLog]
		, dbo.RaceResultByParents01.StdTime AS [RaceResultByParents01.StdTime]
		, dbo.RaceResultByParents01.StdTimeDev AS [RaceResultByParents01.StdTimeDev]

		, dbo.RaceResultByParents02.RunCount AS [RaceResultByParents02.RunCount]
		, dbo.RaceResultByParents02.RunCountLog AS [RaceResultByParents02.RunCountLog]
		, dbo.RaceResultByParents02.HitCount1 AS [RaceResultByParents02.HitCount1]
		, dbo.RaceResultByParents02.HitCount1Log AS [RaceResultByParents02.HitCount1Log]
		, dbo.RaceResultByParents02.HitRate1 AS [RaceResultByParents02.HitRate1]
		, dbo.RaceResultByParents02.HitRate1Log AS [RaceResultByParents02.HitRate1Log]
		, dbo.RaceResultByParents02.HitCount12 AS [RaceResultByParents02.HitCount12]
		, dbo.RaceResultByParents02.HitCount12Log AS [RaceResultByParents02.HitCount12Log]
		, dbo.RaceResultByParents02.HitRate12 AS [RaceResultByParents02.HitRate12]
		, dbo.RaceResultByParents02.HitRate12Log AS [RaceResultByParents02.HitRate12Log]
		, dbo.RaceResultByParents02.HitCount123 AS [RaceResultByParents02.HitCount123]
		, dbo.RaceResultByParents02.HitCount123Log AS [RaceResultByParents02.HitCount123Log]
		, dbo.RaceResultByParents02.HitRate123 AS [RaceResultByParents02.HitRate123]
		, dbo.RaceResultByParents02.HitRate123Log AS [RaceResultByParents02.HitRate123Log]
		, dbo.RaceResultByParents02.OddsWin AS [RaceResultByParents02.OddsWin]
		, dbo.RaceResultByParents02.OddsWinLog AS [RaceResultByParents02.OddsWinLog]
		, dbo.RaceResultByParents02.OddsPlace1 AS [RaceResultByParents02.OddsPlace1]
		, dbo.RaceResultByParents02.OddsPlace1Log AS [RaceResultByParents02.OddsPlace1Log]
		, dbo.RaceResultByParents02.OddsPlace2 AS [RaceResultByParents02.OddsPlace2]
		, dbo.RaceResultByParents02.OddsPlace2Log AS [RaceResultByParents02.OddsPlace2Log]
		, dbo.RaceResultByParents02.OddsWinInverse AS [RaceResultByParents02.OddsWinInvers]
		, dbo.RaceResultByParents02.OddsWinInverseLog AS [RaceResultByParents02.OddsWinInverseLog]
		, dbo.RaceResultByParents02.OddsPlaceInverse1 AS [RaceResultByParents02.OddsPlaceInverse1]
		, dbo.RaceResultByParents02.OddsPlaceInverse1Log AS [RaceResultByParents02.OddsPlaceInverse1Log]
		, dbo.RaceResultByParents02.OddsPlaceInverse2 AS [RaceResultByParents02.OddsPlaceInverse2]
		, dbo.RaceResultByParents02.OddsPlaceInverse2Log AS [RaceResultByParents02.OddsPlaceInverse2Log]
		, dbo.RaceResultByParents02.ApprovalRateWin AS [RaceResultByParents02.ApprovalRateWin]
		, dbo.RaceResultByParents02.ApprovalRateWinLog AS [RaceResultByParents02.ApprovalRateWinLog]
		, dbo.RaceResultByParents02.ApprovalRatePlace1 AS [RaceResultByParents02.ApprovalRatePlace1]
		, dbo.RaceResultByParents02.ApprovalRatePlace1Log AS [RaceResultByParents02.ApprovalRatePlace1Log]
		, dbo.RaceResultByParents02.ApprovalRatePlace2 AS [RaceResultByParents02.ApprovalRatePlace2]
		, dbo.RaceResultByParents02.ApprovalRatePlace2Log AS [RaceResultByParents02.ApprovalRatePlace2Log]
		, dbo.RaceResultByParents02.ExpectedValueWin AS [RaceResultByParents02.ExpectedValueWin]
		, dbo.RaceResultByParents02.ExpectedValueWinLog AS [RaceResultByParents02.ExpectedValueWinLog]
		, dbo.RaceResultByParents02.ExpectedValuePlace AS [RaceResultByParents02.ExpectedValuePlace]
		, dbo.RaceResultByParents02.ExpectedValuePlaceLog AS [RaceResultByParents02.ExpectedValuePlaceLog]
		, dbo.RaceResultByParents02.StdTime AS [RaceResultByParents02.StdTime]
		, dbo.RaceResultByParents02.StdTimeDev AS [RaceResultByParents02.StdTimeDev]
*/
		  dbo.MasterMinarai.IsMinaraiCD_1KgMinus AS [MasterMinarai.IsMinaraiCD_1KgMinus],
		  dbo.MasterMinarai.IsMinaraiCD_2KgMinus AS [MasterMinarai.IsMinaraiCD_2KgMinus],
		  dbo.MasterMinarai.IsMinaraiCD_3KgMinus AS [MasterMinarai.IsMinaraiCD_3KgMinus],
		  dbo.MasterSex.IsSexCD_Male AS [MasterSex.IsSexCD_Male],
		  dbo.MasterSex.IsSexCD_Mare AS [MasterSex.IsSexCD_Mare],
		  dbo.MasterSex.IsSexCD_Gelding AS [MasterSex.IsSexCD_Gelding]
	FROM   dbo.Race
		  INNER JOIN dbo.RaceHorse
		  ON dbo.Race.RaceID = dbo.RaceHorse.RaceID
		  INNER JOIN dbo.RaceHorseBet
		  ON dbo.RaceHorseBet.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceHorseBet.KettoNum = dbo.RaceHorse.KettoNum
		  INNER JOIN dbo.DataMining
		  ON dbo.DataMining.RaceID = dbo.RaceHorse.RaceID
			AND dbo.DataMining.Umaban = dbo.RaceHorse.Umaban
		  INNER JOIN dbo.Odds1ByWin
		  ON dbo.Odds1ByWin.RaceID = dbo.RaceHorse.RaceID
			AND dbo.Odds1ByWin.BetTypeCD = 1
			AND dbo.RaceHorse.Umaban = dbo.Odds1ByWin.Kumi1
			AND dbo.Odds1ByWin.Kumi2 = 0
			AND dbo.Odds1ByWin.Kumi3 = 0
		  INNER JOIN dbo.Odds1ByPlace
		  ON dbo.Odds1ByPlace.RaceID = dbo.RaceHorse.RaceID
			AND dbo.Odds1ByPlace.BetTypeCD = 2
			AND dbo.RaceHorse.Umaban = dbo.Odds1ByPlace.Kumi1
			AND dbo.Odds1ByPlace.Kumi2 = 0
			AND dbo.Odds1ByPlace.Kumi3 = 0
		  INNER JOIN dbo.RaceResultByBanusi
		  ON dbo.RaceResultByBanusi.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByBanusi.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByBanusi.SummaryType = 2
		  INNER JOIN dbo.RaceResultByBanusiByTotal
		  ON dbo.RaceResultByBanusiByTotal.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByBanusiByTotal.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByBanusiByTotal.SummaryType = 2
		  INNER JOIN dbo.RaceResultByBreeder
		  ON dbo.RaceResultByBreeder.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByBreeder.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByBreeder.SummaryType = 2
		  INNER JOIN dbo.RaceResultByBreederByTotal
		  ON dbo.RaceResultByBreederByTotal.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByBreederByTotal.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByBreederByTotal.SummaryType = 2
		  INNER JOIN dbo.RaceResultByHorse
		  ON dbo.RaceResultByHorse.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByHorse.KettoNum = dbo.RaceHorse.KettoNum
		  INNER JOIN dbo.RaceResultByHorseByCourseType
		  ON dbo.RaceResultByHorseByCourseType.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByHorseByCourseType.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByHorseByCourseType.TrackTypeCD = dbo.Race.TrackTypeCD
			AND dbo.RaceResultByHorseByCourseType.CourseTypeCD = dbo.Race.CourseTypeCD
/*
		INNER JOIN
		dbo.RaceResultByHorseByDistanceType
		ON
		dbo.RaceResultByHorseByDistanceType.RaceID = dbo.RaceHorse.RaceID
		AND dbo.RaceResultByHorseByDistanceType.KettoNum = dbo.RaceHorse.KettoNum
		AND dbo.RaceResultByHorseByDistanceType.TrackTypeCD = dbo.Race.TrackTypeCD
		AND dbo.RaceResultByHorseByDistanceType.DistanceTypeCD = dbo.Race.DistanceTypeCD
*/
		  INNER JOIN dbo.RaceResultByHorseByJyo
		  ON dbo.RaceResultByHorseByJyo.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByHorseByJyo.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByHorseByJyo.TrackTypeCD = dbo.Race.TrackTypeCD
			AND dbo.RaceResultByHorseByJyo.JyoCD2 = dbo.Race.JyoCD
		  INNER JOIN dbo.RaceResultByHorseByRunningStyle
		  ON dbo.RaceResultByHorseByRunningStyle.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByHorseByRunningStyle.KettoNum = dbo.RaceHorse.KettoNum
		  INNER JOIN dbo.RaceResultByHorseByTotal
		  ON dbo.RaceResultByHorseByTotal.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByHorseByTotal.KettoNum = dbo.RaceHorse.KettoNum
		  INNER JOIN dbo.RaceResultByHorseByTrackCondition
		  ON dbo.RaceResultByHorseByTrackCondition.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByHorseByTrackCondition.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByHorseByTrackCondition.TrackTypeCD = dbo.Race.TrackTypeCD
			AND dbo.RaceResultByHorseByTrackCondition.TrackConditionCD = dbo.Race.TrackConditionCD
		  INNER JOIN dbo.RaceResultByHorseByTrackType
		  ON dbo.RaceResultByHorseByTrackType.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByHorseByTrackType.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByHorseByTrackType.TrackTypeCD = dbo.Race.TrackTypeCD
		  INNER JOIN dbo.RaceResultByJocky
		  ON dbo.RaceResultByJocky.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByJocky.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByJocky.SummaryType = 2
/*
		INNER JOIN
		dbo.RaceResultByJockyByDistanceType
		ON
		dbo.RaceResultByJockyByDistanceType.RaceID = dbo.RaceHorse.RaceID
		AND dbo.RaceResultByJockyByDistanceType.KettoNum = dbo.RaceHorse.KettoNum
		AND dbo.RaceResultByJockyByDistanceType.SummaryType = 2
		AND dbo.RaceResultByJockyByDistanceType.TrackType2CD = dbo.Race.TrackType2CD
		AND dbo.RaceResultByJockyByDistanceType.DistanceTypeCD = dbo.Race.DistanceTypeCD
*/
		  INNER JOIN dbo.RaceResultByJockyByJyo
		  ON dbo.RaceResultByJockyByJyo.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByJockyByJyo.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByJockyByJyo.SummaryType = 2
			AND dbo.RaceResultByJockyByJyo.TrackTypeCD = dbo.Race.TrackTypeCD
			AND dbo.RaceResultByJockyByJyo.JyoCD2 = dbo.Race.JyoCD
		  INNER JOIN dbo.RaceResultByJockyByTrackType
		  ON dbo.RaceResultByJockyByTrackType.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByJockyByTrackType.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByJockyByTrackType.SummaryType = 2
			AND dbo.RaceResultByJockyByTrackType.TrackTypeCD = dbo.Race.TrackTypeCD
		  INNER JOIN dbo.RaceResultByTrainer
		  ON dbo.RaceResultByTrainer.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByTrainer.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByTrainer.SummaryType = 2
/*
		INNER JOIN
		dbo.RaceResultByTrainerByDistanceType
		ON
		dbo.RaceResultByTrainerByDistanceType.RaceID = dbo.RaceHorse.RaceID
		AND dbo.RaceResultByTrainerByDistanceType.KettoNum = dbo.RaceHorse.KettoNum
		AND dbo.RaceResultByTrainerByDistanceType.SummaryType = 2
		AND dbo.RaceResultByTrainerByDistanceType.TrackType2CD = dbo.Race.TrackType2CD
		AND dbo.RaceResultByTrainerByDistanceType.DistanceTypeCD = dbo.Race.DistanceTypeCD
*/
		  INNER JOIN dbo.RaceResultByTrainerByJyo
		  ON dbo.RaceResultByTrainerByJyo.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByTrainerByJyo.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByTrainerByJyo.SummaryType = 2
			AND dbo.RaceResultByTrainerByJyo.TrackTypeCD = dbo.Race.TrackTypeCD
			AND dbo.RaceResultByTrainerByJyo.JyoCD2 = dbo.Race.JyoCD
		  INNER JOIN dbo.RaceResultByTrainerByTrackType
		  ON dbo.RaceResultByTrainerByTrackType.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByTrainerByTrackType.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByTrainerByTrackType.SummaryType = 2
			AND dbo.RaceResultByTrainerByTrackType.TrackTypeCD = dbo.Race.TrackTypeCD
		  INNER JOIN dbo.RaceResultByChildrenCourseType01
		  ON dbo.RaceResultByChildrenCourseType01.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenCourseType01.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenCourseType01.CourseTypeCD = dbo.Race.CourseTypeCD
		  INNER JOIN dbo.RaceResultByChildrenCourseType02
		  ON dbo.RaceResultByChildrenCourseType02.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenCourseType02.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenCourseType02.CourseTypeCD = dbo.Race.CourseTypeCD
		  INNER JOIN dbo.RaceResultByChildrenJyoken01
		  ON dbo.RaceResultByChildrenJyoken01.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenJyoken01.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenJyoken01.JyokenCD5 = dbo.Race.JyokenCD5
		  INNER JOIN dbo.RaceResultByChildrenJyoken02
		  ON dbo.RaceResultByChildrenJyoken02.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenJyoken02.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenJyoken02.JyokenCD5 = dbo.Race.JyokenCD5
		  INNER JOIN dbo.RaceResultByChildrenSmile01
		  ON dbo.RaceResultByChildrenSmile01.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenSmile01.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenSmile01.SmileCD = dbo.Race.SmileCD
		  INNER JOIN dbo.RaceResultByChildrenSmile02
		  ON dbo.RaceResultByChildrenSmile02.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenSmile02.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenSmile02.SmileCD = dbo.Race.SmileCD
		  INNER JOIN dbo.RaceResultByChildrenTrackCondition01
		  ON dbo.RaceResultByChildrenTrackCondition01.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenTrackCondition01.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenTrackCondition01.TrackConditionCD = dbo.Race.TrackConditionCD
		  INNER JOIN dbo.RaceResultByChildrenTrackCondition02
		  ON dbo.RaceResultByChildrenTrackCondition02.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenTrackCondition02.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenTrackCondition02.TrackConditionCD = dbo.Race.TrackConditionCD
		  INNER JOIN dbo.RaceResultByChildrenTrackType01
		  ON dbo.RaceResultByChildrenTrackType01.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenTrackType01.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenTrackType01.TrackTypeCD = dbo.Race.TrackTypeCD
		  INNER JOIN dbo.RaceResultByChildrenTrackType02
		  ON dbo.RaceResultByChildrenTrackType02.RaceID = dbo.RaceHorse.RaceID
			AND dbo.RaceResultByChildrenTrackType02.KettoNum = dbo.RaceHorse.KettoNum
			AND dbo.RaceResultByChildrenTrackType02.TrackTypeCD = dbo.Race.TrackTypeCD
/*
		INNER JOIN
		dbo.RaceResultByParents01
		ON
		dbo.RaceResultByParents01.RaceID = dbo.RaceHorse.RaceID
		AND dbo.RaceResultByParents01.KettoNum = dbo.RaceHorse.KettoNum
		INNER JOIN
		dbo.RaceResultByParents02
		ON
		dbo.RaceResultByParents02.RaceID = dbo.RaceHorse.RaceID
		AND dbo.RaceResultByParents02.KettoNum = dbo.RaceHorse.KettoNum
*/
		  INNER JOIN dbo.MasterMinarai
		  ON dbo.RaceHorse.MinaraiCD = dbo.MasterMinarai.MinaraiCD
		  INNER JOIN dbo.MasterSex
		  ON dbo.RaceHorse.SexCD = dbo.MasterSex.SexCD
	WHERE  dbo.Race.IsNormal = 1
		  AND dbo.RaceHorse.IsNormal = 1
		  AND dbo.Race.RaceDate BETWEEN CONVERT(DATETIME,'2004-01-01 00:00:00',102) AND CONVERT(DATETIME,'2013-12-31 00:00:00',102)
		  AND dbo.Race.TrackTypeCD = 2
		  AND dbo.Race.JyokenCD5 = '005';


GO
/****** Object:  View [dbo].[Z_R_G_Horse]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Z_R_G_Horse]
AS
	SELECT KettoNum,
		  BirthDate,
		  Bamei,
		  UmaKigoCD,
		  SexCD,
		  HinsyuCD,
		  KeiroCD,
		  RunCount,
		  RunCountLog,
		  HitCount1,
		  HitCount1Log,
		  HitRate1,
		  HitRate1Log,
		  HitCount12,
		  HitCount12Log,
		  HitRate12,
		  HitRate12Log,
		  HitCount123,
		  HitCount123Log,
		  HitRate123,
		  HitRate123Log
	FROM   dbo.Horse;


GO
/****** Object:  View [dbo].[Z_R_G_Payoff_1]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[Z_R_G_Payoff_1]
AS
SELECT
      RaceDate AS [PayoffByPayAll.RaceDate],
      JyoCD AS [PayoffByPayAll.JyoCD],
      Kaiji AS [PayoffByPayAll.Kaiji],
      Nichiji AS [PayoffByPayAll.Nichiji],
      RaceNum AS [PayoffByPayAll.RaceNum],
      BetTypeCD AS [PayoffByPayAll.BetTypeCD],
      Kumi1 AS [PayoffByPayAll.Kumi1],
      Kumi2 AS [PayoffByPayAll.Kumi2],
      Kumi3 AS [PayoffByPayAll.Kumi3],
      Num AS [PayoffByPayAll.Num],
      Pay AS [PayoffByPayAll.Pay],
      Ninki AS [PayoffByPayAll.Ninki],
      RaceID AS [PayoffByPayAll.RaceID],
      IsHit AS [PayoffByPayAll.IsHit],
      PayLog AS [PayoffByPayAll.PayLog]
     FROM dbo.PayoffByPayAll
	 WHERE PayoffByPayAll.BetTypeCD=1




GO
/****** Object:  View [dbo].[Z_R_G_Payoff_2]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[Z_R_G_Payoff_2]
AS
SELECT
      RaceDate AS [PayoffByPayAll.RaceDate],
      JyoCD AS [PayoffByPayAll.JyoCD],
      Kaiji AS [PayoffByPayAll.Kaiji],
      Nichiji AS [PayoffByPayAll.Nichiji],
      RaceNum AS [PayoffByPayAll.RaceNum],
      BetTypeCD AS [PayoffByPayAll.BetTypeCD],
      Kumi1 AS [PayoffByPayAll.Kumi1],
      Kumi2 AS [PayoffByPayAll.Kumi2],
      Kumi3 AS [PayoffByPayAll.Kumi3],
      Num AS [PayoffByPayAll.Num],
      Pay AS [PayoffByPayAll.Pay],
      Ninki AS [PayoffByPayAll.Ninki],
      RaceID AS [PayoffByPayAll.RaceID],
      IsHit AS [PayoffByPayAll.IsHit],
      PayLog AS [PayoffByPayAll.PayLog]
     FROM dbo.PayoffByPayAll
	 WHERE PayoffByPayAll.BetTypeCD=2




GO
/****** Object:  View [dbo].[Z_R_G_Payoff_7]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Z_R_G_Payoff_7]
AS
SELECT
      RaceDate AS [PayoffByPayAll.RaceDate],
      JyoCD AS [PayoffByPayAll.JyoCD],
      Kaiji AS [PayoffByPayAll.Kaiji],
      Nichiji AS [PayoffByPayAll.Nichiji],
      RaceNum AS [PayoffByPayAll.RaceNum],
      BetTypeCD AS [PayoffByPayAll.BetTypeCD],
      Kumi1 AS [PayoffByPayAll.Kumi1],
      Kumi2 AS [PayoffByPayAll.Kumi2],
      Kumi3 AS [PayoffByPayAll.Kumi3],
      Num AS [PayoffByPayAll.Num],
      Pay AS [PayoffByPayAll.Pay],
      Ninki AS [PayoffByPayAll.Ninki],
      RaceID AS [PayoffByPayAll.RaceID],
      IsHit AS [PayoffByPayAll.IsHit],
      PayLog AS [PayoffByPayAll.PayLog]
     FROM dbo.PayoffByPayAll
	 WHERE PayoffByPayAll.BetTypeCD=7


GO
/****** Object:  View [dbo].[Z_R_G_Payoff_8]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Z_R_G_Payoff_8]
AS
SELECT
      RaceDate AS [PayoffByPayAll.RaceDate],
      JyoCD AS [PayoffByPayAll.JyoCD],
      Kaiji AS [PayoffByPayAll.Kaiji],
      Nichiji AS [PayoffByPayAll.Nichiji],
      RaceNum AS [PayoffByPayAll.RaceNum],
      BetTypeCD AS [PayoffByPayAll.BetTypeCD],
      Kumi1 AS [PayoffByPayAll.Kumi1],
      Kumi2 AS [PayoffByPayAll.Kumi2],
      Kumi3 AS [PayoffByPayAll.Kumi3],
      Num AS [PayoffByPayAll.Num],
      Pay AS [PayoffByPayAll.Pay],
      Ninki AS [PayoffByPayAll.Ninki],
      RaceID AS [PayoffByPayAll.RaceID],
      IsHit AS [PayoffByPayAll.IsHit],
      PayLog AS [PayoffByPayAll.PayLog]
     FROM dbo.PayoffByPayAll
	 WHERE PayoffByPayAll.BetTypeCD=8


GO
/****** Object:  View [dbo].[Z_R_G_RaceHorse_001]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Z_R_G_RaceHorse_001]
AS
	SELECT dbo.RaceHorse.RaceDate AS [RaceHorse.RaceDate],
		  dbo.RaceHorse.JyoCD AS [RaceHorse.JyoCD],
		  dbo.RaceHorse.Kaiji AS [RaceHorse.Kaiji],
		  dbo.RaceHorse.Nichiji AS [RaceHorse.Nichiji],
		  dbo.RaceHorse.RaceNum AS [RaceHorse.RaceNum],
		  dbo.RaceHorse.KettoNum AS [RaceHorse.KettoNum],

		  dbo.RaceHorse.Barei AS [RaceHorse.Barei],
		  dbo.RaceHorse.LifeTime AS [RaceHorse.LifeTime],
		  dbo.RaceHorse.IsBlinker AS [RaceHorse.IsBlinker],
		  dbo.RaceHorse.Futan AS [RaceHorse.Futan],
		  dbo.RaceHorse.FutanPercent AS [RaceHorse.FutanPercent],
		  dbo.RaceHorse.MinaraiCD AS [RaceHorse.MinaraiCD],
		  dbo.MasterMinarai.IsMinaraiCD_1KgMinus AS [MasterMinarai.IsMinaraiCD_1KgMinus],
		  dbo.MasterMinarai.IsMinaraiCD_2KgMinus AS [MasterMinarai.IsMinaraiCD_2KgMinus],
		  dbo.MasterMinarai.IsMinaraiCD_3KgMinus AS [MasterMinarai.IsMinaraiCD_3KgMinus],
		  dbo.RaceHorse.SexCD AS [RaceHorse.SexCD],
		  dbo.MasterSex.IsSexCD_Male AS [MasterSex.IsSexCD_Male],
		  dbo.MasterSex.IsSexCD_Mare AS [MasterSex.IsSexCD_Mare],
		  dbo.MasterSex.IsSexCD_Gelding AS [MasterSex.IsSexCD_Gelding],
		  dbo.RaceHorse.BaTaijyu AS [RaceHorse.BaTaijyu],
		  dbo.RaceHorse.ZogenSa AS [RaceHorse.ZogenSa],
		  dbo.RaceHorse.ZogenPercent AS [RaceHorse.ZogenPercent],
		  dbo.RaceHorse.KakuteiJyuni AS [RaceHorse.KakuteiJyuni],

		  dbo.RaceHorse.IsHit_1 AS [RaceHorse.IsHit_1],
		  dbo.RaceHorse.IsHit_12 AS [RaceHorse.IsHit_12],
		  dbo.RaceHorse.IsHit_123 AS [RaceHorse.IsHit_123],
		  dbo.RaceHorse.Time AS [RaceHorse.Time],
		  dbo.RaceHorse.StdTime AS [RaceHorse.StdTime],
		  dbo.RaceHorse.StdTimeDev AS [RaceHorse.StdTimeDev],
		  dbo.RaceHorse.ClassTimeDev AS [RaceHorse.ClassTimeDev],
		  dbo.RaceHorse.Honsyokin AS [RaceHorse.Honsyokin],
		  dbo.RaceHorse.Fukasyokin AS [RaceHorse.Fukasyokin],
		  dbo.RaceHorseBet.PayoffWin AS [RaceHorseBet.PayoffWin],
		  dbo.RaceHorseBet.PayoffWinLog AS [RaceHorseBet.PayoffWinLog],
		  dbo.RaceHorseBet.PayoffPlace AS [RaceHorseBet.PayoffPlace],
		  dbo.RaceHorseBet.PayoffPlaceLog AS [RaceHorseBet.PayoffPlaceLog],
		  dbo.RaceHorse.Ninki AS [RaceHorse.Ninki],
		  dbo.RaceHorse.IsNinki_01 AS [RaceHorse.IsNinki_01],
		  dbo.RaceHorse.IsNinki_02 AS [RaceHorse.IsNinki_02],
		  dbo.RaceHorse.IsNinki_03 AS [RaceHorse.IsNinki_03],
		  dbo.RaceHorse.IsNinki_04 AS [RaceHorse.IsNinki_04],
		  dbo.RaceHorse.IsNinki_05 AS [RaceHorse.IsNinki_05],
		  dbo.RaceHorse.IsNinki_06 AS [RaceHorse.IsNinki_06],
		  dbo.RaceHorse.IsNinki_07 AS [RaceHorse.IsNinki_07],
		  dbo.RaceHorse.IsNinki_08 AS [RaceHorse.IsNinki_08],
		  dbo.RaceHorse.IsNinki_09 AS [RaceHorse.IsNinki_09],
		  dbo.RaceHorse.IsNinki_10 AS [RaceHorse.IsNinki_10],
		  dbo.RaceHorse.IsNinki_11 AS [RaceHorse.IsNinki_11],
		  dbo.RaceHorse.IsNinki_12 AS [RaceHorse.IsNinki_12],
		  dbo.RaceHorse.IsNinki_13 AS [RaceHorse.IsNinki_13],
		  dbo.RaceHorse.IsNinki_14 AS [RaceHorse.IsNinki_14],
		  dbo.RaceHorse.IsNinki_15 AS [RaceHorse.IsNinki_15],
		  dbo.RaceHorse.IsNinki_16 AS [RaceHorse.IsNinki_16],
		  dbo.RaceHorse.IsNinki_17 AS [RaceHorse.IsNinki_17],
		  dbo.RaceHorse.IsNinki_18 AS [RaceHorse.IsNinki_18],
		  dbo.RaceHorse.Prev1StdTime AS [RaceHorse.Prev1StdTime],
		  dbo.RaceHorse.Prev1StdTimeDev AS [RaceHorse.Prev1StdTimeDev],
		  dbo.RaceHorse.Prev1TrackTypeCD AS [RaceHorse.Prev1TrackTypeCD],
		  dbo.RaceHorse.IsPrev1TrackTypeCD_1 AS [RaceHorse.IsPrev1TrackTypeCD_1],
		  dbo.RaceHorse.IsPrev1TrackTypeCD_2 AS [RaceHorse.IsPrev1TrackTypeCD_2],
		  dbo.RaceHorse.IsPrev1TrackTypeCD_3 AS [RaceHorse.IsPrev1TrackTypeCD_3],
		  dbo.RaceHorse.Prev1JyokenCD5 AS [RaceHorse.Prev1JyokenCD5],
		  dbo.RaceHorse.IsPrev1JyokenCD5_005 AS [RaceHorse.IsPrev1JyokenCD5_005],
		  dbo.RaceHorse.IsPrev1JyokenCD5_010 AS [RaceHorse.IsPrev1JyokenCD5_010],
		  dbo.RaceHorse.IsPrev1JyokenCD5_016 AS [RaceHorse.IsPrev1JyokenCD5_016],
		  dbo.RaceHorse.IsPrev1JyokenCD5_701 AS [RaceHorse.IsPrev1JyokenCD5_701],
		  dbo.RaceHorse.IsPrev1JyokenCD5_703 AS [RaceHorse.IsPrev1JyokenCD5_703],
		  dbo.RaceHorse.IsPrev1JyokenCD5_999 AS [RaceHorse.IsPrev1JyokenCD5_999],
		  dbo.RaceHorse.IsPrev1JyokenCD5_Up AS [RaceHorse.IsPrev1JyokenCD5_Up],
		  dbo.RaceHorse.IsPrev1JyokenCD5_Down AS [RaceHorse.IsPrev1JyokenCD5_Down],
		  dbo.RaceHorse.Prev1RaceResult AS [RaceHorse.Prev1RaceResult],
		  dbo.RaceHorse.IsPrev1RaceResult_01 AS [RaceHorse.IsPrev1RaceResult_01],
		  dbo.RaceHorse.IsPrev1RaceResult_02 AS [RaceHorse.IsPrev1RaceResult_02],
		  dbo.RaceHorse.IsPrev1RaceResult_03 AS [RaceHorse.IsPrev1RaceResult_03],
		  dbo.RaceHorse.IsPrev1RaceResult_04 AS [RaceHorse.IsPrev1RaceResult_04],
		  dbo.RaceHorse.IsPrev1RaceResult_05 AS [RaceHorse.IsPrev1RaceResult_05],
		  dbo.RaceHorse.IsPrev1RaceResult_06 AS [RaceHorse.IsPrev1RaceResult_06],
		  dbo.RaceHorse.IsPrev1RaceResult_07 AS [RaceHorse.IsPrev1RaceResult_07],
		  dbo.RaceHorse.IsPrev1RaceResult_08 AS [RaceHorse.IsPrev1RaceResult_08],
		  dbo.RaceHorse.IsPrev1RaceResult_09 AS [RaceHorse.IsPrev1RaceResult_09],
		  dbo.RaceHorse.IsPrev1RaceResult_10 AS [RaceHorse.IsPrev1RaceResult_10],
		  dbo.RaceHorse.IsPrev1RaceResult_11 AS [RaceHorse.IsPrev1RaceResult_11],
		  dbo.RaceHorse.IsPrev1RaceResult_12 AS [RaceHorse.IsPrev1RaceResult_12],
		  dbo.RaceHorse.IsPrev1RaceResult_13 AS [RaceHorse.IsPrev1RaceResult_13],
		  dbo.RaceHorse.IsPrev1RaceResult_14 AS [RaceHorse.IsPrev1RaceResult_14],
		  dbo.RaceHorse.IsPrev1RaceResult_15 AS [RaceHorse.IsPrev1RaceResult_15],
		  dbo.RaceHorse.IsPrev1RaceResult_16 AS [RaceHorse.IsPrev1RaceResult_16],
		  dbo.RaceHorse.IsPrev1RaceResult_17 AS [RaceHorse.IsPrev1RaceResult_17],
		  dbo.RaceHorse.IsPrev1RaceResult_18 AS [RaceHorse.IsPrev1RaceResult_18]
	FROM   dbo.Race
		  INNER JOIN dbo.RaceHorse ON dbo.Race.RaceDate = dbo.RaceHorse.RaceDate
			AND dbo.Race.JyoCD = dbo.RaceHorse.JyoCD
			AND dbo.Race.Kaiji = dbo.RaceHorse.Kaiji
			AND dbo.Race.Nichiji = dbo.RaceHorse.Nichiji
			AND dbo.Race.RaceNum = dbo.RaceHorse.RaceNum
		  INNER JOIN dbo.RaceHorseBet ON dbo.RaceHorseBet.RaceDate = dbo.RaceHorse.RaceDate
			AND dbo.RaceHorseBet.JyoCD = dbo.RaceHorse.JyoCD
			AND dbo.RaceHorseBet.Kaiji = dbo.RaceHorse.Kaiji
			AND dbo.RaceHorseBet.Nichiji = dbo.RaceHorse.Nichiji
			AND dbo.RaceHorseBet.RaceNum = dbo.RaceHorse.RaceNum
			AND dbo.RaceHorseBet.KettoNum = dbo.RaceHorse.KettoNum
		  INNER JOIN dbo.MasterCourseKubun ON dbo.Race.CourseKubunCD = dbo.MasterCourseKubun.CourseKubunCD
		  INNER JOIN dbo.MasterCourseType ON dbo.Race.CourseTypeCD = dbo.MasterCourseType.CourseTypeCD
		  INNER JOIN dbo.MasterDistanceType ON dbo.Race.DistanceTypeCD = dbo.MasterDistanceType.DistanceTypeCD
		  INNER JOIN dbo.MasterGrade ON dbo.Race.GradeCD = dbo.MasterGrade.GradeCD
		  INNER JOIN dbo.MasterJyuryo ON dbo.Race.JyuryoCD = dbo.MasterJyuryo.JyuryoCD
		  INNER JOIN dbo.MasterJyo ON dbo.Race.JyoCD = dbo.MasterJyo.JyoCD
		  INNER JOIN dbo.MasterJyoken5 ON dbo.Race.JyokenCD5 = dbo.MasterJyoken5.JyokenCD5
		  INNER JOIN dbo.MasterKeiro ON dbo.RaceHorse.KeiroCD = dbo.MasterKeiro.KeiroCD
		  INNER JOIN dbo.MasterKyori ON dbo.Race.Kyori = dbo.MasterKyori.Kyori
		  INNER JOIN dbo.MasterMinarai ON dbo.RaceHorse.MinaraiCD = dbo.MasterMinarai.MinaraiCD
		  INNER JOIN dbo.MasterSex ON dbo.RaceHorse.SexCD = dbo.MasterSex.SexCD
		  INNER JOIN dbo.MasterSyubetsu ON dbo.Race.SyubetuCD = dbo.MasterSyubetsu.SyubetuCD
		  INNER JOIN dbo.MasterTenko ON dbo.Race.TenkoCD = dbo.MasterTenko.TenkoCD
		  INNER JOIN dbo.MasterTrack ON dbo.Race.TrackCD = dbo.MasterTrack.TrackCD
		  INNER JOIN dbo.MasterTrackCondition ON dbo.Race.TrackConditionCD = dbo.MasterTrackCondition.TrackConditionCD
		  INNER JOIN dbo.MasterTrackType ON dbo.Race.TrackTypeCD = dbo.MasterTrackType.TrackTypeCD
	WHERE  dbo.Race.IsNormal = 1
		  AND Race.TrackTypeCD = 1
		  AND dbo.RaceHorse.IsNormal = 1
		  AND dbo.Race.RaceDate BETWEEN CONVERT(DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102);



GO
/****** Object:  View [dbo].[Z_Stats_RaceCount_TrackType_Track_Kyori_CourseKubun_TrackCondition_Jyoken]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Z_Stats_RaceCount_TrackType_Track_Kyori_CourseKubun_TrackCondition_Jyoken]
AS
	SELECT TrackTypeCD,
		  TrackCD,
		  JyoCD,
		  Kyori,
		  CourseKubunCD,
		  TrackConditionCD,
		  JyokenCD5,
		  COUNT(*) AS COUNT
	FROM   dbo.Race
	WHERE  RaceDate BETWEEN CONVERT(DATETIME,'2004-01-01 00:00:00',102) AND CONVERT(DATETIME,'2013-12-31 00:00:00',102)
	GROUP BY TrackTypeCD,
		    TrackCD,
		    JyoCD,
		    Kyori,
		    CourseKubunCD,
		    TrackConditionCD,
		    JyokenCD5;


GO
/****** Object:  View [dbo].[Z_Stats_RaceCountBy_Jyo_Kyori_CourseKubun_TrackCondition]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Z_Stats_RaceCountBy_Jyo_Kyori_CourseKubun_TrackCondition]
AS
	SELECT dbo.Race.JyoCD,
		  Kyori,
		  TrackCD,
		  CourseKubunCD,
		  TrackConditionCD,
		  COUNT(*) AS COUNT
	FROM   dbo.Race
		  INNER JOIN dbo.RaceHorse
		  ON dbo.Race.RaceDate = dbo.RaceHorse.RaceDate
			AND dbo.Race.JyoCD = dbo.RaceHorse.JyoCD
			AND dbo.Race.Kaiji = dbo.RaceHorse.Kaiji
			AND dbo.Race.Nichiji = dbo.RaceHorse.Nichiji
			AND dbo.Race.RaceNum = dbo.RaceHorse.RaceNum
	WHERE  dbo.Race.RaceDate BETWEEN CONVERT(DATETIME,'1986-01-01 00:00:00',102) AND CONVERT(DATETIME,'2013-12-31 00:00:00',102)
	GROUP BY dbo.Race.JyoCD,
		    Kyori,
		    TrackCD,
		    CourseKubunCD,
		    TrackConditionCD;


GO
/****** Object:  View [dbo].[Z_Stats_RaceCountByTrackTypeCD_From20140101]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Z_Stats_RaceCountByTrackTypeCD_From20140101]
AS
	SELECT race.TrackTypeCD,
		  COUNT(*) AS Count
	FROM   dbo.Race
	WHERE  RaceDate >= CONVERT(DATETIME,'2014-01-01 00:00:00',102)
	GROUP BY race.TrackTypeCD;


GO
/****** Object:  View [dbo].[Z_Stats_RaceCountByTrackTypeCD_JyoCD]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Z_Stats_RaceCountByTrackTypeCD_JyoCD]
AS
	SELECT TOP (100) PERCENT TrackTypeCD,
						JyoCD,
						COUNT(*) AS COUNT
	FROM                     dbo.Race
	WHERE                    RaceDate BETWEEN CONVERT(DATETIME,'2004-01-01 00:00:00',102) AND CONVERT(DATETIME,'2013-12-31 00:00:00',102)
	GROUP BY TrackTypeCD,
		    JyoCD
	ORDER BY TrackTypeCD,
		    JyoCD;


GO
/****** Object:  View [dbo].[Z_Stats_RaceCountByTrackTypeCD_JyoCD_Kyori]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Z_Stats_RaceCountByTrackTypeCD_JyoCD_Kyori]
AS
	SELECT TrackTypeCD,
		  JyoCD,
		  Kyori,
		  COUNT(*) AS COUNT
	FROM   dbo.Race
	WHERE  RaceDate BETWEEN CONVERT(DATETIME,'2004-01-01 00:00:00',102) AND CONVERT(DATETIME,'2013-12-31 00:00:00',102)
	GROUP BY TrackTypeCD,
		    JyoCD,
		    Kyori;


GO
/****** Object:  View [dbo].[Z_Stats_RaceCountByTrackTypeCD_JyokenCD5]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Z_Stats_RaceCountByTrackTypeCD_JyokenCD5]
AS
	SELECT TrackTypeCD,
		  JyokenCD5,
		  COUNT(*) AS COUNT
	FROM   dbo.Race
	WHERE  RaceDate BETWEEN CONVERT(DATETIME,'2004-01-01 00:00:00',102) AND CONVERT(DATETIME,'2013-12-31 00:00:00',102)
	GROUP BY TrackTypeCD,
		    JyokenCD5;


GO
/****** Object:  View [dbo].[Z_Stats_RaceCountByTrackTypeCD_JyokenCD5_ByJyoCD]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Z_Stats_RaceCountByTrackTypeCD_JyokenCD5_ByJyoCD]
AS
     SELECT TrackTypeCD,
            JyokenCD5,
            JyoCD,
            COUNT(*) AS COUNT
     FROM dbo.Race
     WHERE(RaceDate BETWEEN CONVERT(DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102))
     GROUP BY TrackTypeCD,
              JyokenCD5,
              JyoCD;


GO
/****** Object:  View [dbo].[Z_Stats_RaceHorseCountByTrackTypeCD_JyoCD]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Z_Stats_RaceHorseCountByTrackTypeCD_JyoCD]
AS
     SELECT dbo.Race.TrackTypeCD,
            dbo.Race.JyoCD,
            COUNT(*) AS COUNT
     FROM dbo.Race
          INNER JOIN dbo.RaceHorse ON dbo.Race.RaceDate = dbo.RaceHorse.RaceDate
                                      AND dbo.Race.JyoCD = dbo.RaceHorse.JyoCD
                                      AND dbo.Race.Kaiji = dbo.RaceHorse.Kaiji
                                      AND dbo.Race.Nichiji = dbo.RaceHorse.Nichiji
                                      AND dbo.Race.RaceNum = dbo.RaceHorse.RaceNum
     WHERE(dbo.Race.RaceDate BETWEEN CONVERT(DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102))
     GROUP BY dbo.Race.TrackTypeCD,
              dbo.Race.JyoCD;


GO
/****** Object:  View [dbo].[Z_Stats_RaceHorseCountByTrackTypeCD_JyokenCD5]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Z_Stats_RaceHorseCountByTrackTypeCD_JyokenCD5]
AS
     SELECT dbo.Race.TrackTypeCD,
            dbo.Race.JyokenCD5,
            COUNT(*) AS COUNT
     FROM dbo.Race
          INNER JOIN dbo.RaceHorse ON dbo.Race.RaceDate = dbo.RaceHorse.RaceDate
                                      AND dbo.Race.JyoCD = dbo.RaceHorse.JyoCD
                                      AND dbo.Race.Kaiji = dbo.RaceHorse.Kaiji
                                      AND dbo.Race.Nichiji = dbo.RaceHorse.Nichiji
                                      AND dbo.Race.RaceNum = dbo.RaceHorse.RaceNum
     WHERE(dbo.Race.RaceDate BETWEEN CONVERT(DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102))
     GROUP BY dbo.Race.TrackTypeCD,
              dbo.Race.JyokenCD5;


GO
/****** Object:  View [dbo].[Z_Stats_RaceHorseCountByTrackTypeCD_JyokenCD5_JyoCD]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Z_Stats_RaceHorseCountByTrackTypeCD_JyokenCD5_JyoCD]
AS
     SELECT dbo.Race.TrackTypeCD,
            dbo.Race.JyokenCD5,
            dbo.Race.JyoCD,
            COUNT(*) AS COUNT
     FROM dbo.Race
          INNER JOIN dbo.RaceHorse ON dbo.Race.RaceDate = dbo.RaceHorse.RaceDate
                                      AND dbo.Race.JyoCD = dbo.RaceHorse.JyoCD
                                      AND dbo.Race.Kaiji = dbo.RaceHorse.Kaiji
                                      AND dbo.Race.Nichiji = dbo.RaceHorse.Nichiji
                                      AND dbo.Race.RaceNum = dbo.RaceHorse.RaceNum
     WHERE(dbo.Race.RaceDate BETWEEN CONVERT(DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102))
     GROUP BY dbo.Race.TrackTypeCD,
              dbo.Race.JyokenCD5,
              dbo.Race.JyoCD;


GO
/****** Object:  View [dbo].[Z_StdDMTimeByBase]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Z_StdDMTimeByBase]
AS
     SELECT 1 AS ID,
            COUNT(*) AS DMTimeCount,
            AVG(DataMining.DMTime) AS DMTimeAvg,
            STDEV(DataMining.DMTime) AS DMTimeStDev,
            SUM(DataMining.DMTime) AS DMTimeSum,
            MIN(DataMining.DMTime) AS DMTimeMin,
            MAX(DataMining.DMTime) AS DMTimeMax,
            AVG(DataMining.DMTime) - STDEV(DataMining.DMTime) * 3 AS DMTimeSigma3Minus,
            AVG(DataMining.DMTime) - STDEV(DataMining.DMTime) * 2 AS DMTimeSigma2Minus,
            AVG(DataMining.DMTime) - STDEV(DataMining.DMTime) * 1 AS DMTimeSigma1Minus,
            AVG(DataMining.DMTime) + STDEV(DataMining.DMTime) * 1 AS DMTimeSigma1Plus,
            AVG(DataMining.DMTime) + STDEV(DataMining.DMTime) * 2 AS DMTimeSigma2Plus,
            AVG(DataMining.DMTime) + STDEV(DataMining.DMTime) * 3 AS DMTimeSigma3Plus
     FROM dbo.DataMining
          INNER JOIN dbo.Race ON dbo.Race.RaceDate = dbo.DataMining.RaceDate
                                 AND dbo.Race.JyoCD = dbo.DataMining.JyoCD
                                 AND dbo.Race.Kaiji = dbo.DataMining.Kaiji
                                 AND dbo.Race.Nichiji = dbo.DataMining.Nichiji
                                 AND dbo.Race.RaceNum = dbo.DataMining.RaceNum
          INNER JOIN dbo.RaceHorse ON dbo.Race.RaceDate = dbo.RaceHorse.RaceDate
                                      AND dbo.Race.JyoCD = dbo.RaceHorse.JyoCD
                                      AND dbo.Race.Kaiji = dbo.RaceHorse.Kaiji
                                      AND dbo.Race.Nichiji = dbo.RaceHorse.Nichiji
                                      AND dbo.Race.RaceNum = dbo.RaceHorse.RaceNum
     WHERE(dbo.Race.DataKubun = '7')
          AND (dbo.RaceHorse.DataKubun = '7')
          AND (dbo.RaceHorse.IJyoCD = '0')
          AND (dbo.Race.RaceDate BETWEEN CONVERT(DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102))
          AND dbo.Race.TrackCD = '24'
          AND dbo.Race.JyoCD = '06'
          AND dbo.Race.Kyori = 1200
          AND dbo.Race.CourseKubunCD = '  '
          AND dbo.Race.TrackConditionCD = 1
     GROUP BY dbo.Race.TrackCD,
              dbo.Race.JyoCD,
              dbo.Race.Kyori,
              dbo.Race.CourseKubunCD,
              dbo.Race.TrackConditionCD;


GO
/****** Object:  View [dbo].[Z_StdDMTimeByClass]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Z_StdDMTimeByClass]
AS
     SELECT dbo.Race.TrackTypeCD,
            dbo.Race.TrackCD,
            dbo.Race.JyoCD,
            dbo.Race.Kyori,
            dbo.Race.CourseKubunCD,
            dbo.Race.TrackConditionCD,
            dbo.Race.JyokenCD5,
            COUNT(*) AS DMTimeCount,
            AVG(DataMining.DMTime) AS DMTimeAvg,
            STDEV(DataMining.DMTime) AS DMTimeStDev,
            SUM(DataMining.DMTime) AS DMTimeSum,
            MIN(DataMining.DMTime) AS DMTimeMin,
            MAX(DataMining.DMTime) AS DMTimeMax,
            AVG(DataMining.DMTime) - STDEV(DataMining.DMTime) * 3 AS DMTimeSigma3Minus,
            AVG(DataMining.DMTime) - STDEV(DataMining.DMTime) * 2 AS DMTimeSigma2Minus,
            AVG(DataMining.DMTime) - STDEV(DataMining.DMTime) * 1 AS DMTimeSigma1Minus,
            AVG(DataMining.DMTime) + STDEV(DataMining.DMTime) * 1 AS DMTimeSigma1Plus,
            AVG(DataMining.DMTime) + STDEV(DataMining.DMTime) * 2 AS DMTimeSigma2Plus,
            AVG(DataMining.DMTime) + STDEV(DataMining.DMTime) * 3 AS DMTimeSigma3Plus
     FROM dbo.DataMining
          INNER JOIN dbo.Race ON dbo.Race.RaceDate = dbo.DataMining.RaceDate
                                 AND dbo.Race.JyoCD = dbo.DataMining.JyoCD
                                 AND dbo.Race.Kaiji = dbo.DataMining.Kaiji
                                 AND dbo.Race.Nichiji = dbo.DataMining.Nichiji
                                 AND dbo.Race.RaceNum = dbo.DataMining.RaceNum
     WHERE(dbo.Race.DataKubun = '7')
          AND (dbo.Race.RaceDate BETWEEN CONVERT(DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102))
     GROUP BY dbo.Race.TrackTypeCD,
              dbo.Race.TrackCD,
              dbo.Race.JyoCD,
              dbo.Race.Kyori,
              dbo.Race.CourseKubunCD,
              dbo.Race.TrackConditionCD,
              dbo.Race.JyokenCD5;


GO
/****** Object:  View [dbo].[Z_StdHaronTimeL3ByClass]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Z_StdHaronTimeL3ByClass]
AS
     SELECT dbo.Race.TrackTypeCD,
            dbo.Race.TrackCD,
            dbo.Race.JyoCD,
            dbo.Race.Kyori,
            dbo.Race.CourseKubunCD,
            dbo.Race.TrackConditionCD,
            dbo.Race.JyokenCD5,
            COUNT(*) AS ClassHaronTimeL3Count,
            AVG(Race.HaronTimeL3) AS ClassHaronTimeL3Avg,
            STDEV(Race.HaronTimeL3) AS ClassHaronTimeL3StDev,
            SUM(Race.HaronTimeL3) AS ClassHaronTimeL3Sum,
            MIN(Race.HaronTimeL3) AS ClassHaronTimeL3Min,
            MAX(Race.HaronTimeL3) AS ClassHaronTimeL3Max,
            AVG(Race.HaronTimeL3) - STDEV(Race.HaronTimeL3) * 3 AS ClassHaronTimeL3Sigma3Minus,
            AVG(Race.HaronTimeL3) - STDEV(Race.HaronTimeL3) * 2 AS ClassHaronTimeL3Sigma2Minus,
            AVG(Race.HaronTimeL3) - STDEV(Race.HaronTimeL3) * 1 AS ClassHaronTimeL3Sigma1Minus,
            AVG(Race.HaronTimeL3) + STDEV(Race.HaronTimeL3) * 1 AS ClassHaronTimeL3Sigma1Plus,
            AVG(Race.HaronTimeL3) + STDEV(Race.HaronTimeL3) * 2 AS ClassHaronTimeL3Sigma2Plus,
            AVG(Race.HaronTimeL3) + STDEV(Race.HaronTimeL3) * 3 AS ClassHaronTimeL3Sigma3Plus
     FROM dbo.Race
     WHERE(dbo.Race.DataKubun = '7')
          AND (dbo.Race.RaceDate BETWEEN CONVERT(DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102))
          AND (Race.TrackTypeCD = 1
               OR Race.TrackTypeCD = 2)
          AND Race.HaronTimeL3 > 0
     GROUP BY dbo.Race.TrackTypeCD,
              dbo.Race.TrackCD,
              dbo.Race.JyoCD,
              dbo.Race.Kyori,
              dbo.Race.CourseKubunCD,
              dbo.Race.TrackConditionCD,
              dbo.Race.JyokenCD5;


GO
/****** Object:  View [dbo].[Z_StdHaronTimeL4ByClass]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Z_StdHaronTimeL4ByClass]
AS
     SELECT dbo.Race.TrackTypeCD,
            dbo.Race.TrackCD,
            dbo.Race.JyoCD,
            dbo.Race.Kyori,
            dbo.Race.CourseKubunCD,
            dbo.Race.TrackConditionCD,
            dbo.Race.JyokenCD5,
            COUNT(*) AS ClassHaronTimeL4Count,
            AVG(Race.HaronTimeL4) AS ClassHaronTimeL4Avg,
            STDEV(Race.HaronTimeL4) AS ClassHaronTimeL4StDev,
            SUM(Race.HaronTimeL4) AS ClassHaronTimeL4Sum,
            MIN(Race.HaronTimeL4) AS ClassHaronTimeL4Min,
            MAX(Race.HaronTimeL4) AS ClassHaronTimeL4Max,
            AVG(Race.HaronTimeL4) - STDEV(Race.HaronTimeL4) * 3 AS ClassHaronTimeL4Sigma3Minus,
            AVG(Race.HaronTimeL4) - STDEV(Race.HaronTimeL4) * 2 AS ClassHaronTimeL4Sigma2Minus,
            AVG(Race.HaronTimeL4) - STDEV(Race.HaronTimeL4) * 1 AS ClassHaronTimeL4Sigma1Minus,
            AVG(Race.HaronTimeL4) + STDEV(Race.HaronTimeL4) * 1 AS ClassHaronTimeL4Sigma1Plus,
            AVG(Race.HaronTimeL4) + STDEV(Race.HaronTimeL4) * 2 AS ClassHaronTimeL4Sigma2Plus,
            AVG(Race.HaronTimeL4) + STDEV(Race.HaronTimeL4) * 3 AS ClassHaronTimeL4Sigma3Plus
     FROM dbo.Race
     WHERE(dbo.Race.DataKubun = '7')
          AND (dbo.Race.RaceDate BETWEEN CONVERT(DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102))
          AND (Race.TrackTypeCD = 1
               OR Race.TrackTypeCD = 2)
          AND Race.HaronTimeL4 > 0
     GROUP BY dbo.Race.TrackTypeCD,
              dbo.Race.TrackCD,
              dbo.Race.JyoCD,
              dbo.Race.Kyori,
              dbo.Race.CourseKubunCD,
              dbo.Race.TrackConditionCD,
              dbo.Race.JyokenCD5;


GO
/****** Object:  View [dbo].[Z_StdHaronTimeS3ByClass]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Z_StdHaronTimeS3ByClass]
AS
     SELECT dbo.Race.TrackTypeCD,
            dbo.Race.TrackCD,
            dbo.Race.JyoCD,
            dbo.Race.Kyori,
            dbo.Race.CourseKubunCD,
            dbo.Race.TrackConditionCD,
            dbo.Race.JyokenCD5,
            COUNT(*) AS ClassHaronTimeS3Count,
            AVG(Race.HaronTimeS3) AS ClassHaronTimeS3Avg,
            STDEV(Race.HaronTimeS3) AS ClassHaronTimeS3StDev,
            SUM(Race.HaronTimeS3) AS ClassHaronTimeS3Sum,
            MIN(Race.HaronTimeS3) AS ClassHaronTimeS3Min,
            MAX(Race.HaronTimeS3) AS ClassHaronTimeS3Max,
            AVG(Race.HaronTimeS3) - STDEV(Race.HaronTimeS3) * 3 AS ClassHaronTimeS3Sigma3Minus,
            AVG(Race.HaronTimeS3) - STDEV(Race.HaronTimeS3) * 2 AS ClassHaronTimeS3Sigma2Minus,
            AVG(Race.HaronTimeS3) - STDEV(Race.HaronTimeS3) * 1 AS ClassHaronTimeS3Sigma1Minus,
            AVG(Race.HaronTimeS3) + STDEV(Race.HaronTimeS3) * 1 AS ClassHaronTimeS3Sigma1Plus,
            AVG(Race.HaronTimeS3) + STDEV(Race.HaronTimeS3) * 2 AS ClassHaronTimeS3Sigma2Plus,
            AVG(Race.HaronTimeS3) + STDEV(Race.HaronTimeS3) * 3 AS ClassHaronTimeS3Sigma3Plus
     FROM dbo.Race
     WHERE(dbo.Race.DataKubun = '7')
          AND (dbo.Race.RaceDate BETWEEN CONVERT(DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102))
          AND (Race.TrackTypeCD = 1
               OR Race.TrackTypeCD = 2)
          AND Race.HaronTimeS3 > 0
     GROUP BY dbo.Race.TrackTypeCD,
              dbo.Race.TrackCD,
              dbo.Race.JyoCD,
              dbo.Race.Kyori,
              dbo.Race.CourseKubunCD,
              dbo.Race.TrackConditionCD,
              dbo.Race.JyokenCD5;


GO
/****** Object:  View [dbo].[Z_StdHaronTimeS4ByClass]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Z_StdHaronTimeS4ByClass]
AS
     SELECT dbo.Race.TrackTypeCD,
            dbo.Race.TrackCD,
            dbo.Race.JyoCD,
            dbo.Race.Kyori,
            dbo.Race.CourseKubunCD,
            dbo.Race.TrackConditionCD,
            dbo.Race.JyokenCD5,
            COUNT(*) AS ClassHaronTimeS4Count,
            AVG(Race.HaronTimeS4) AS ClassHaronTimeS4Avg,
            STDEV(Race.HaronTimeS4) AS ClassHaronTimeS4StDev,
            SUM(Race.HaronTimeS4) AS ClassHaronTimeS4Sum,
            MIN(Race.HaronTimeS4) AS ClassHaronTimeS4Min,
            MAX(Race.HaronTimeS4) AS ClassHaronTimeS4Max,
            AVG(Race.HaronTimeS4) - STDEV(Race.HaronTimeS4) * 3 AS ClassHaronTimeS4Sigma3Minus,
            AVG(Race.HaronTimeS4) - STDEV(Race.HaronTimeS4) * 2 AS ClassHaronTimeS4Sigma2Minus,
            AVG(Race.HaronTimeS4) - STDEV(Race.HaronTimeS4) * 1 AS ClassHaronTimeS4Sigma1Minus,
            AVG(Race.HaronTimeS4) + STDEV(Race.HaronTimeS4) * 1 AS ClassHaronTimeS4Sigma1Plus,
            AVG(Race.HaronTimeS4) + STDEV(Race.HaronTimeS4) * 2 AS ClassHaronTimeS4Sigma2Plus,
            AVG(Race.HaronTimeS4) + STDEV(Race.HaronTimeS4) * 3 AS ClassHaronTimeS4Sigma3Plus
     FROM dbo.Race
     WHERE(dbo.Race.DataKubun = '7')
          AND (dbo.Race.RaceDate BETWEEN CONVERT(DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102))
          AND (Race.TrackTypeCD = 1
               OR Race.TrackTypeCD = 2)
          AND Race.HaronTimeS4 > 0
     GROUP BY dbo.Race.TrackTypeCD,
              dbo.Race.TrackCD,
              dbo.Race.JyoCD,
              dbo.Race.Kyori,
              dbo.Race.CourseKubunCD,
              dbo.Race.TrackConditionCD,
              dbo.Race.JyokenCD5;


GO
/****** Object:  View [dbo].[Z_StdHorseHaronTimeL3ByClass]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Z_StdHorseHaronTimeL3ByClass]
AS
     SELECT dbo.Race.TrackTypeCD,
            dbo.Race.TrackCD,
            dbo.Race.JyoCD,
            dbo.Race.Kyori,
            dbo.Race.CourseKubunCD,
            dbo.Race.TrackConditionCD,
            dbo.Race.JyokenCD5,
            COUNT(*) AS ClassHaronTimeL3Count,
            AVG(RaceHorse.HaronTimeL3) AS ClassHaronTimeL3Avg,
            STDEV(RaceHorse.HaronTimeL3) AS ClassHaronTimeL3StDev,
            SUM(RaceHorse.HaronTimeL3) AS ClassHaronTimeL3Sum,
            MIN(RaceHorse.HaronTimeL3) AS ClassHaronTimeL3Min,
            MAX(RaceHorse.HaronTimeL3) AS ClassHaronTimeL3Max,
            AVG(RaceHorse.HaronTimeL3) - STDEV(RaceHorse.HaronTimeL3) * 3 AS ClassHaronTimeL3Sigma3Minus,
            AVG(RaceHorse.HaronTimeL3) - STDEV(RaceHorse.HaronTimeL3) * 2 AS ClassHaronTimeL3Sigma2Minus,
            AVG(RaceHorse.HaronTimeL3) - STDEV(RaceHorse.HaronTimeL3) * 1 AS ClassHaronTimeL3Sigma1Minus,
            AVG(RaceHorse.HaronTimeL3) + STDEV(RaceHorse.HaronTimeL3) * 1 AS ClassHaronTimeL3Sigma1Plus,
            AVG(RaceHorse.HaronTimeL3) + STDEV(RaceHorse.HaronTimeL3) * 2 AS ClassHaronTimeL3Sigma2Plus,
            AVG(RaceHorse.HaronTimeL3) + STDEV(RaceHorse.HaronTimeL3) * 3 AS ClassHaronTimeL3Sigma3Plus
     FROM dbo.Race
          INNER JOIN dbo.RaceHorse ON dbo.Race.RaceDate = dbo.RaceHorse.RaceDate
                                      AND dbo.Race.JyoCD = dbo.RaceHorse.JyoCD
                                      AND dbo.Race.Kaiji = dbo.RaceHorse.Kaiji
                                      AND dbo.Race.Nichiji = dbo.RaceHorse.Nichiji
                                      AND dbo.Race.RaceNum = dbo.RaceHorse.RaceNum
     WHERE(dbo.Race.DataKubun = '7')
          AND (dbo.Race.RaceDate BETWEEN CONVERT(DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102))
          --          AND (Race.TrackTypeCD = 1
          --               OR Race.TrackTypeCD = 2)
          AND RaceHorse.HaronTimeL3 > 0
          AND (dbo.RaceHorse.DataKubun = '7')
          AND (dbo.RaceHorse.IjyoCD = '0')
     GROUP BY dbo.Race.TrackTypeCD,
              dbo.Race.TrackCD,
              dbo.Race.JyoCD,
              dbo.Race.Kyori,
              dbo.Race.CourseKubunCD,
              dbo.Race.TrackConditionCD,
              dbo.Race.JyokenCD5;


GO
/****** Object:  View [dbo].[Z_StdHorseHaronTimeL4ByClass]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Z_StdHorseHaronTimeL4ByClass]
AS
     SELECT dbo.Race.TrackTypeCD,
            dbo.Race.TrackCD,
            dbo.Race.JyoCD,
            dbo.Race.Kyori,
            dbo.Race.CourseKubunCD,
            dbo.Race.TrackConditionCD,
            dbo.Race.JyokenCD5,
            COUNT(*) AS ClassHaronTimeL4Count,
            AVG(RaceHorse.HaronTimeL4) AS ClassHaronTimeL4Avg,
            STDEV(RaceHorse.HaronTimeL4) AS ClassHaronTimeL4StDev,
            SUM(RaceHorse.HaronTimeL4) AS ClassHaronTimeL4Sum,
            MIN(RaceHorse.HaronTimeL4) AS ClassHaronTimeL4Min,
            MAX(RaceHorse.HaronTimeL4) AS ClassHaronTimeL4Max,
            AVG(RaceHorse.HaronTimeL4) - STDEV(RaceHorse.HaronTimeL4) * 3 AS ClassHaronTimeL4Sigma3Minus,
            AVG(RaceHorse.HaronTimeL4) - STDEV(RaceHorse.HaronTimeL4) * 2 AS ClassHaronTimeL4Sigma2Minus,
            AVG(RaceHorse.HaronTimeL4) - STDEV(RaceHorse.HaronTimeL4) * 1 AS ClassHaronTimeL4Sigma1Minus,
            AVG(RaceHorse.HaronTimeL4) + STDEV(RaceHorse.HaronTimeL4) * 1 AS ClassHaronTimeL4Sigma1Plus,
            AVG(RaceHorse.HaronTimeL4) + STDEV(RaceHorse.HaronTimeL4) * 2 AS ClassHaronTimeL4Sigma2Plus,
            AVG(RaceHorse.HaronTimeL4) + STDEV(RaceHorse.HaronTimeL4) * 3 AS ClassHaronTimeL4Sigma3Plus
     FROM dbo.Race
          INNER JOIN dbo.RaceHorse ON dbo.Race.RaceDate = dbo.RaceHorse.RaceDate
                                      AND dbo.Race.JyoCD = dbo.RaceHorse.JyoCD
                                      AND dbo.Race.Kaiji = dbo.RaceHorse.Kaiji
                                      AND dbo.Race.Nichiji = dbo.RaceHorse.Nichiji
                                      AND dbo.Race.RaceNum = dbo.RaceHorse.RaceNum
     WHERE(dbo.Race.DataKubun = '7')
          AND (dbo.Race.RaceDate BETWEEN CONVERT(DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102))
          --          AND (Race.TrackTypeCD = 1
          --               OR Race.TrackTypeCD = 2)
          AND RaceHorse.HaronTimeL4 > 0
          AND (dbo.RaceHorse.DataKubun = '7')
          AND (dbo.RaceHorse.IjyoCD = '0')
     GROUP BY dbo.Race.TrackTypeCD,
              dbo.Race.TrackCD,
              dbo.Race.JyoCD,
              dbo.Race.Kyori,
              dbo.Race.CourseKubunCD,
              dbo.Race.TrackConditionCD,
              dbo.Race.JyokenCD5;


GO
/****** Object:  View [dbo].[Z_StdSyogaiMileTimeByClass]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Z_StdSyogaiMileTimeByClass]
AS
     SELECT dbo.Race.TrackTypeCD,
            dbo.Race.TrackCD,
            dbo.Race.JyoCD,
            dbo.Race.Kyori,
            dbo.Race.CourseKubunCD,
            dbo.Race.TrackConditionCD,
            dbo.Race.JyokenCD5,
            COUNT(*) AS ClassSyogaiMileTimeCount,
            AVG(Race.SyogaiMileTime) AS ClassSyogaiMileTimeAvg,
            STDEV(Race.SyogaiMileTime) AS ClassSyogaiMileTimeStDev,
            SUM(Race.SyogaiMileTime) AS ClassSyogaiMileTimeSum,
            MIN(Race.SyogaiMileTime) AS ClassSyogaiMileTimeMin,
            MAX(Race.SyogaiMileTime) AS ClassSyogaiMileTimeMax,
            AVG(Race.SyogaiMileTime) - STDEV(Race.SyogaiMileTime) * 3 AS ClassSyogaiMileTimeSigma3Minus,
            AVG(Race.SyogaiMileTime) - STDEV(Race.SyogaiMileTime) * 2 AS ClassSyogaiMileTimeSigma2Minus,
            AVG(Race.SyogaiMileTime) - STDEV(Race.SyogaiMileTime) * 1 AS ClassSyogaiMileTimeSigma1Minus,
            AVG(Race.SyogaiMileTime) + STDEV(Race.SyogaiMileTime) * 1 AS ClassSyogaiMileTimeSigma1Plus,
            AVG(Race.SyogaiMileTime) + STDEV(Race.SyogaiMileTime) * 2 AS ClassSyogaiMileTimeSigma2Plus,
            AVG(Race.SyogaiMileTime) + STDEV(Race.SyogaiMileTime) * 3 AS ClassSyogaiMileTimeSigma3Plus
     FROM dbo.Race
     WHERE(dbo.Race.DataKubun = '7')
          AND (dbo.Race.RaceDate BETWEEN CONVERT(DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102))
          AND Race.TrackTypeCD = 3
          AND Race.SyogaiMileTime > 0
     GROUP BY dbo.Race.TrackTypeCD,
              dbo.Race.TrackCD,
              dbo.Race.JyoCD,
              dbo.Race.Kyori,
              dbo.Race.CourseKubunCD,
              dbo.Race.TrackConditionCD,
              dbo.Race.JyokenCD5;




GO
/****** Object:  View [dbo].[Z_StdTimeByBase]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Z_StdTimeByBase]
AS
	SELECT Race.JyokenCD5,
		  Race.TrackTypeCD,
		  Race.JyoCD,
		  Race.TrackCD,
		  Race.Kyori,
		  Race.CourseKubunCD,
		  Race.TrackConditionCD,
		  RaceHorse.Futan,
		  COUNT(*) AS TimeCount,
		  AVG(RaceHorse.Time) AS TimeAvg,
		  STDEVP(RaceHorse.Time) AS TimeStDev,
		  SUM(RaceHorse.Time) AS TimeSum,
		  MIN(RaceHorse.Time) AS TimeMin,
		  MAX(RaceHorse.Time) AS TimeMax,
		  AVG(RaceHorse.Time) - STDEVP(RaceHorse.Time) * 3 AS TimeSigma3Minus,
		  AVG(RaceHorse.Time) - STDEVP(RaceHorse.Time) * 2 AS TimeSigma2Minus,
		  AVG(RaceHorse.Time) - STDEVP(RaceHorse.Time) * 1 AS TimeSigma1Minus,
		  AVG(RaceHorse.Time) + STDEVP(RaceHorse.Time) * 1 AS TimeSigma1Plus,
		  AVG(RaceHorse.Time) + STDEVP(RaceHorse.Time) * 2 AS TimeSigma2Plus,
		  AVG(RaceHorse.Time) + STDEVP(RaceHorse.Time) * 3 AS TimeSigma3Plus
	FROM   Race
		  INNER JOIN RaceHorse
		  ON Race.RaceDate = RaceHorse.RaceDate
			AND Race.JyoCD = RaceHorse.JyoCD
			AND Race.Kaiji = RaceHorse.Kaiji
			AND Race.Nichiji = RaceHorse.Nichiji
			AND Race.RaceNum = RaceHorse.RaceNum
	WHERE  Race.DataKubun = '7'
		  AND RaceHorse.DataKubun = '7'
		  AND RaceHorse.IJyoCD = '0'
		  AND RaceHorse.Time > 0
		  --AND Race.RaceDate BETWEEN CONVERT(DATETIME,'2004-01-01 00:00:00',102) AND CONVERT(DATETIME,'2013-12-31 00:00:00',102)
		  AND Race.RaceDate BETWEEN CONVERT(DATETIME,'1986-01-01 00:00:00',102) AND CONVERT(DATETIME,'2013-12-31 00:00:00',102)
		  AND (Race.TrackTypeCD = 1
			  AND Race.JyoCD = '06'
			  AND Race.TrackCD = '18'
			  AND Race.Kyori = 1600
			  AND Race.CourseKubunCD = 'A '
			  AND RaceHorse.Futan = 54
			  AND Race.TrackConditionCD = 1
			  OR Race.TrackTypeCD = 2
			  AND Race.JyoCD = '06'
			  AND Race.TrackCD = '24'
			  AND Race.Kyori = 1800
			  AND Race.CourseKubunCD = '  '
			  AND Race.TrackConditionCD = 1
			  AND RaceHorse.Futan = 54
			  OR Race.TrackTypeCD = 3
			  AND Race.JyokenCD5 = '703'
			  AND Race.JyoCD = '06'
			  AND Race.TrackCD = '52'
			  AND Race.Kyori = 2880
			  AND Race.CourseKubunCD = '  '
			  AND Race.TrackConditionCD = 1
			  AND RaceHorse.Futan = 60
			  OR Race.TrackTypeCD = 3
			  AND Race.JyokenCD5 = '999'
			  AND Race.JyoCD = '06'
			  AND Race.TrackCD = '52'
			  AND Race.Kyori = 3200
			  AND Race.CourseKubunCD = '  '
			  AND Race.TrackConditionCD = 1
			  AND RaceHorse.Futan = 60)
	GROUP BY Race.JyokenCD5,
		    Race.TrackTypeCD,
		    Race.JyoCD,
		    Race.TrackCD,
		    Race.Kyori,
		    Race.CourseKubunCD,
		    Race.TrackConditionCD,
		    RaceHorse.Futan;



GO
/****** Object:  View [dbo].[Z_StdTimeByClass]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[Z_StdTimeByClass]
AS
	SELECT Race.JyokenCD5,
		  Race.TrackTypeCD,
		  Race.JyoCD,
		  Race.TrackCD,
		  Race.Kyori,
		  Race.CourseKubunCD,
		  Race.TrackConditionCD,
		  RaceHorse.Futan,
		  COUNT(*) AS TimeCount,
		  AVG(RaceHorse.Time) AS TimeAvg,
		  STDEVP(RaceHorse.Time) AS TimeStDev,
		  SUM(RaceHorse.Time) AS TimeSum,
		  MIN(RaceHorse.Time) AS TimeMin,
		  MAX(RaceHorse.Time) AS TimeMax,
		  AVG(RaceHorse.Time) - STDEVP(RaceHorse.Time) * 3 AS TimeSigma3Minus,
		  AVG(RaceHorse.Time) - STDEVP(RaceHorse.Time) * 2 AS TimeSigma2Minus,
		  AVG(RaceHorse.Time) - STDEVP(RaceHorse.Time) * 1 AS TimeSigma1Minus,
		  AVG(RaceHorse.Time) + STDEVP(RaceHorse.Time) * 1 AS TimeSigma1Plus,
		  AVG(RaceHorse.Time) + STDEVP(RaceHorse.Time) * 2 AS TimeSigma2Plus,
		  AVG(RaceHorse.Time) + STDEVP(RaceHorse.Time) * 3 AS TimeSigma3Plus
	FROM   Race
		  INNER JOIN RaceHorse
		  ON Race.RaceDate = RaceHorse.RaceDate
			AND Race.JyoCD = RaceHorse.JyoCD
			AND Race.Kaiji = RaceHorse.Kaiji
			AND Race.Nichiji = RaceHorse.Nichiji
			AND Race.RaceNum = RaceHorse.RaceNum
	WHERE  Race.DataKubun = '7'
		  AND RaceHorse.DataKubun = '7'
		  AND RaceHorse.IJyoCD = '0'
		  AND RaceHorse.Time > 0
		  --AND Race.RaceDate BETWEEN CONVERT(DATETIME,'2004-01-01 00:00:00',102) AND CONVERT(DATETIME,'2013-12-31 00:00:00',102)
		  AND Race.RaceDate BETWEEN CONVERT(DATETIME,'1986-01-01 00:00:00',102) AND CONVERT(DATETIME,'2013-12-31 00:00:00',102)
	GROUP BY Race.JyokenCD5,
		    Race.TrackTypeCD,
		    Race.JyoCD,
		    Race.TrackCD,
		    Race.Kyori,
		    Race.CourseKubunCD,
		    Race.TrackConditionCD,
		    RaceHorse.Futan;



GO
/****** Object:  View [dbo].[Z_StdTimeByJyoken]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Z_StdTimeByJyoken]
AS
	SELECT Race.JyokenCD5,
		  Race.TrackTypeCD,
		  COUNT(*) AS TimeCount,
		  AVG(RaceHorse.StdTime) AS TimeAvg,
		  STDEV(RaceHorse.StdTime) AS TimeStDev,
		  SUM(RaceHorse.StdTime) AS TimeSum,
		  MIN(RaceHorse.StdTime) AS TimeMin,
		  MAX(RaceHorse.StdTime) AS TimeMax,
		  AVG(RaceHorse.StdTime) - STDEV(RaceHorse.StdTime) * 3 AS TimeSigma3Minus,
		  AVG(RaceHorse.StdTime) - STDEV(RaceHorse.StdTime) * 2 AS TimeSigma2Minus,
		  AVG(RaceHorse.StdTime) - STDEV(RaceHorse.StdTime) * 1 AS TimeSigma1Minus,
		  AVG(RaceHorse.StdTime) + STDEV(RaceHorse.StdTime) * 1 AS TimeSigma1Plus,
		  AVG(RaceHorse.StdTime) + STDEV(RaceHorse.StdTime) * 2 AS TimeSigma2Plus,
		  AVG(RaceHorse.StdTime) + STDEV(RaceHorse.StdTime) * 3 AS TimeSigma3Plus
	FROM   Race
		  INNER JOIN RaceHorse
		  ON Race.RaceDate = RaceHorse.RaceDate
			AND Race.JyoCD = RaceHorse.JyoCD
			AND Race.Kaiji = RaceHorse.Kaiji
			AND Race.Nichiji = RaceHorse.Nichiji
			AND Race.RaceNum = RaceHorse.RaceNum
	WHERE  dbo.Race.DataKubun = '7'
		  AND dbo.RaceHorse.DataKubun = '7'
		  AND dbo.RaceHorse.IJyoCD = '0'
		  AND dbo.RaceHorse.Time > 0
		  --AND Race.RaceDate BETWEEN CONVERT(DATETIME,'2004-01-01 00:00:00',102) AND CONVERT(DATETIME,'2013-12-31 00:00:00',102)
		  AND Race.RaceDate BETWEEN CONVERT(DATETIME,'1986-01-01 00:00:00',102) AND CONVERT(DATETIME,'2013-12-31 00:00:00',102)
	GROUP BY Race.JyokenCD5,
		    Race.TrackTypeCD;


GO
/****** Object:  View [dbo].[Z_StdTimeDevByAll]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Z_StdTimeDevByAll]
AS
     SELECT 1 AS ID,
            COUNT(*) AS StdTimeDevCount,
            AVG(RaceHorse.StdTimeDev) AS StdTimeDevAvg,
            STDEV(RaceHorse.StdTimeDev) AS StdTimeDevStDev,
            SUM(RaceHorse.StdTimeDev) AS StdTimeDevSum,
            MIN(RaceHorse.StdTimeDev) AS StdTimeDevMin,
            MAX(RaceHorse.StdTimeDev) AS StdTimeDevMax,
            AVG(RaceHorse.StdTimeDev) - STDEV(RaceHorse.StdTimeDev) * 3 AS StdTimeDevSigma3Minus,
            AVG(RaceHorse.StdTimeDev) - STDEV(RaceHorse.StdTimeDev) * 2 AS StdTimeDevSigma2Minus,
            AVG(RaceHorse.StdTimeDev) - STDEV(RaceHorse.StdTimeDev) * 1 AS StdTimeDevSigma1Minus,
            AVG(RaceHorse.StdTimeDev) + STDEV(RaceHorse.StdTimeDev) * 1 AS StdTimeDevSigma1Plus,
            AVG(RaceHorse.StdTimeDev) + STDEV(RaceHorse.StdTimeDev) * 2 AS StdTimeDevSigma2Plus,
            AVG(RaceHorse.StdTimeDev) + STDEV(RaceHorse.StdTimeDev) * 3 AS StdTimeDevSigma3Plus
     FROM dbo.Race
          INNER JOIN dbo.RaceHorse ON dbo.Race.RaceDate = dbo.RaceHorse.RaceDate
                                      AND dbo.Race.JyoCD = dbo.RaceHorse.JyoCD
                                      AND dbo.Race.Kaiji = dbo.RaceHorse.Kaiji
                                      AND dbo.Race.Nichiji = dbo.RaceHorse.Nichiji
                                      AND dbo.Race.RaceNum = dbo.RaceHorse.RaceNum
     WHERE(dbo.Race.IsNormal = 1)
          AND (dbo.RaceHorse.IsNormal = 1)
          AND (dbo.Race.RaceDate BETWEEN CONVERT(DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102));



GO
/****** Object:  View [dbo].[Z_StdTimeDevByClass]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[Z_StdTimeDevByClass]
AS
     SELECT dbo.Race.TrackTypeCD,
            dbo.Race.TrackCD,
            dbo.Race.JyoCD,
            dbo.Race.Kyori,
            dbo.Race.CourseKubunCD,
            dbo.Race.TrackConditionCD,
            dbo.Race.JyokenCD5,
            COUNT(*) AS ClassStdTimeDevCount,
            AVG(RaceHorse.StdTimeDev) AS ClassStdTimeDevAvg,
            STDEV(RaceHorse.StdTimeDev) AS ClassStdTimeDevStDev,
            SUM(RaceHorse.StdTimeDev) AS ClassStdTimeDevSum,
            MIN(RaceHorse.StdTimeDev) AS ClassStdTimeDevMin,
            MAX(RaceHorse.StdTimeDev) AS ClassStdTimeDevMax,
            AVG(RaceHorse.StdTimeDev) - STDEV(RaceHorse.StdTimeDev) * 3 AS ClassStdTimeDevSigma3Minus,
            AVG(RaceHorse.StdTimeDev) - STDEV(RaceHorse.StdTimeDev) * 2 AS ClassStdTimeDevSigma2Minus,
            AVG(RaceHorse.StdTimeDev) - STDEV(RaceHorse.StdTimeDev) * 1 AS ClassStdTimeDevSigma1Minus,
            AVG(RaceHorse.StdTimeDev) + STDEV(RaceHorse.StdTimeDev) * 1 AS ClassStdTimeDevSigma1Plus,
            AVG(RaceHorse.StdTimeDev) + STDEV(RaceHorse.StdTimeDev) * 2 AS ClassStdTimeDevSigma2Plus,
            AVG(RaceHorse.StdTimeDev) + STDEV(RaceHorse.StdTimeDev) * 3 AS ClassStdTimeDevSigma3Plus
     FROM dbo.Race
          INNER JOIN dbo.RaceHorse ON dbo.Race.RaceDate = dbo.RaceHorse.RaceDate
                                      AND dbo.Race.JyoCD = dbo.RaceHorse.JyoCD
                                      AND dbo.Race.Kaiji = dbo.RaceHorse.Kaiji
                                      AND dbo.Race.Nichiji = dbo.RaceHorse.Nichiji
                                      AND dbo.Race.RaceNum = dbo.RaceHorse.RaceNum
     WHERE(dbo.Race.IsNormal = 1)
          AND (dbo.RaceHorse.IsNormal = 1)
          AND (dbo.Race.RaceDate BETWEEN CONVERT(DATETIME, '2004-01-01 00:00:00', 102) AND CONVERT(DATETIME, '2013-12-31 00:00:00', 102))
     GROUP BY dbo.Race.TrackTypeCD,
              dbo.Race.TrackCD,
              dbo.Race.JyoCD,
              dbo.Race.Kyori,
              dbo.Race.CourseKubunCD,
              dbo.Race.TrackConditionCD,
              dbo.Race.JyokenCD5;



GO
/****** Object:  View [dbo].[Z_Z_RaceCount_From20140101]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Z_Z_RaceCount_From20140101]
AS
     SELECT COUNT(*) AS Count
     FROM dbo.Race
     WHERE(RaceDate >= CONVERT(DATETIME, '2014-01-01 00:00:00', 102));


GO
/****** Object:  View [dbo].[Z_Z_RaceCount_To20121231]    Script Date: 2016/07/12 11:09:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Z_Z_RaceCount_To20121231]
AS
     SELECT COUNT(*) AS Count
     FROM dbo.Race
     WHERE(RaceDate <= CONVERT(DATETIME, '2013-12-31 00:00:00', 102));


GO
