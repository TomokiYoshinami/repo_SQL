USE [Jackpot]
GO

EXEC dbo.sp_rename @objname = N'[dbo].[Race]', @newname = N'Race_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

EXEC [Jackpot].dbo.sp_rename @objname = N'[dbo].[DF_Race_GUID]', @newname = N'DF_Race_GUIDOnRace_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

SET ANSI_NULLS ON
GO

CREATE TABLE [dbo].[Race]
(
	[RecordSpec] [char](2) COLLATE Japanese_CI_AS NULL,
	[DataKubun] [char](1) COLLATE Japanese_CI_AS NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[JyoCD] [char](2) COLLATE Japanese_CI_AS NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceID] [char](20) COLLATE Japanese_CI_AS NOT NULL,
	[YoubiCD] [char](1) COLLATE Japanese_CI_AS NULL,
	[TokuNum] [char](4) COLLATE Japanese_CI_AS NULL,
	[Hondai] [nvarchar](60) COLLATE Japanese_CI_AS NULL,
	[Fukudai] [nvarchar](60) COLLATE Japanese_CI_AS NULL,
	[Kakko] [nvarchar](60) COLLATE Japanese_CI_AS NULL,
	[HondaiEng] [nvarchar](120) COLLATE Japanese_CI_AS NULL,
	[FukudaiEng] [nvarchar](120) COLLATE Japanese_CI_AS NULL,
	[KakkoEng] [nvarchar](120) COLLATE Japanese_CI_AS NULL,
	[Ryakusyo10] [nvarchar](20) COLLATE Japanese_CI_AS NULL,
	[Ryakusyo6] [nvarchar](12) COLLATE Japanese_CI_AS NULL,
	[Ryakusyo3] [nvarchar](6) COLLATE Japanese_CI_AS NULL,
	[Kubun] [char](1) COLLATE Japanese_CI_AS NULL,
	[Nkai] [int] NULL,
	[GradeCD] [char](1) COLLATE Japanese_CI_AS NULL,
	[GradeCDBefore] [char](1) COLLATE Japanese_CI_AS NULL,
	[SyubetuCD] [char](2) COLLATE Japanese_CI_AS NULL,
	[KigoCD] [char](3) COLLATE Japanese_CI_AS NULL,
	[JyuryoCD] [char](1) COLLATE Japanese_CI_AS NULL,
	[JyokenCD1] [char](3) COLLATE Japanese_CI_AS NULL,
	[JyokenCD2] [char](3) COLLATE Japanese_CI_AS NULL,
	[JyokenCD3] [char](3) COLLATE Japanese_CI_AS NULL,
	[JyokenCD4] [char](3) COLLATE Japanese_CI_AS NULL,
	[JyokenCD5] [char](3) COLLATE Japanese_CI_AS NULL,
	[JyokenName] [nvarchar](60) COLLATE Japanese_CI_AS NULL,
	[Kyori] [int] NULL,
	[KyoriBefore] [int] NULL,
	[DistanceTypeCD] [int] NULL,
	[DistanceType2CD] [int] NULL,
	[TrackCD] [char](2) COLLATE Japanese_CI_AS NULL,
	[TrackCDBefore] [char](2) COLLATE Japanese_CI_AS NULL,
	[CourseKubunCD] [char](2) COLLATE Japanese_CI_AS NULL,
	[CourseKubunCDBefore] [char](2) COLLATE Japanese_CI_AS NULL,
	[Honsyokin1] [float](53) NULL,
	[Honsyokin2] [float](53) NULL,
	[Honsyokin3] [float](53) NULL,
	[Honsyokin4] [float](53) NULL,
	[Honsyokin5] [float](53) NULL,
	[Honsyokin6] [float](53) NULL,
	[Honsyokin7] [float](53) NULL,
	[HonsyokinBefore1] [float](53) NULL,
	[HonsyokinBefore2] [float](53) NULL,
	[HonsyokinBefore3] [float](53) NULL,
	[HonsyokinBefore4] [float](53) NULL,
	[HonsyokinBefore5] [float](53) NULL,
	[Fukasyokin1] [float](53) NULL,
	[Fukasyokin2] [float](53) NULL,
	[Fukasyokin3] [float](53) NULL,
	[Fukasyokin4] [float](53) NULL,
	[Fukasyokin5] [float](53) NULL,
	[FukasyokinBefore1] [float](53) NULL,
	[FukasyokinBefore2] [float](53) NULL,
	[FukasyokinBefore3] [float](53) NULL,
	[HassoTime] [datetime2](7) NULL,
	[HassoTimeBefore] [datetime2](7) NULL,
	[TorokuTosu] [float](53) NULL,
	[SyussoTosu] [float](53) NULL,
	[NyusenTosu] [float](53) NULL,
	[TenkoCD] [char](1) COLLATE Japanese_CI_AS NULL,
	[TrackTypeCD] [int] NULL,
	[TrackType2CD] [int] NULL,
	[TrackType3CD] [int] NULL,
	[CourseTypeCD] [int] NULL,
	[TrackConditionCD] [int] NULL,
	[SibaBabaCD] [char](1) COLLATE Japanese_CI_AS NULL,
	[DirtBabaCD] [char](1) COLLATE Japanese_CI_AS NULL,
	[SyogaiMileTime] [float](53) NULL,
	[HaronTimeS3] [float](53) NULL,
	[HaronTimeS4] [float](53) NULL,
	[HaronTimeL3] [float](53) NULL,
	[HaronTimeL4] [float](53) NULL,
	[RecordUpKubun] [char](1) COLLATE Japanese_CI_AS NULL,
	[TS] [datetime2](7) NULL,
	[IsNormal] [bit] NULL,
	[SmileCD] [char](1) COLLATE Japanese_CI_AS NULL,
	[TimeCount] [int] NULL,
	[TimeAvg] [float](53) NULL,
	[TimeStDev] [float](53) NULL,
	[TimeSum] [float](53) NULL,
	[TimeMin] [float](53) NULL,
	[TimeMax] [float](53) NULL,
	[TimeSigma3Minus] [float](53) NULL,
	[TimeSigma2Minus] [float](53) NULL,
	[TimeSigma1Minus] [float](53) NULL,
	[TimeSigma1Plus] [float](53) NULL,
	[TimeSigma2Plus] [float](53) NULL,
	[TimeSigma3Plus] [float](53) NULL,
	[DMTimeCount] [int] NULL,
	[DMTimeAvg] [float](53) NULL,
	[DMTimeStDev] [float](53) NULL,
	[DMTimeSum] [float](53) NULL,
	[DMTimeMin] [float](53) NULL,
	[DMTimeMax] [float](53) NULL,
	[DMTimeSigma3Minus] [float](53) NULL,
	[DMTimeSigma2Minus] [float](53) NULL,
	[DMTimeSigma1Minus] [float](53) NULL,
	[DMTimeSigma1Plus] [float](53) NULL,
	[DMTimeSigma2Plus] [float](53) NULL,
	[DMTimeSigma3Plus] [float](53) NULL,
	[LastCrollTimeStamp] [datetime2](7) NULL,
	[IsAutoBet] [bit] NULL,
	[AutoBetDateTime] [datetime2](7) NULL,
	[PredictDateTime] [datetime2](7) NULL,
	[ConfirmDateTime] [datetime2](7) NULL,
	[BetCount] [float](53) NULL,
	[HitCount] [float](53) NULL,
	[BetMoney] [float](53) NULL,
	[HitMoney] [float](53) NULL,
	[ReturnMoney] [float](53) NULL,
	[HitRateByBet] [float](53) NULL,
	[HitRateByRace] [float](53) NULL,
	[ReturnMoneyRateByRace] [float](53) NULL,
	[TS2] [datetime2](7) NULL,
	[GUID] [uniqueidentifier] NULL,

 CONSTRAINT [Race_éÂÉLÅ[]  PRIMARY KEY NONCLUSTERED HASH 
(
	[RaceID]
)WITH ( BUCKET_COUNT = 262144)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

GO

ALTER TABLE [dbo].[Race] ADD  CONSTRAINT [DF_Race_GUID]  DEFAULT (newid()) FOR [GUID]
GO

INSERT INTO [Jackpot].[dbo].[Race] ([RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [YoubiCD], [TokuNum], [Hondai], [Fukudai], [Kakko], [HondaiEng], [FukudaiEng], [KakkoEng], [Ryakusyo10], [Ryakusyo6], [Ryakusyo3], [Kubun], [Nkai], [GradeCD], [GradeCDBefore], [SyubetuCD], [KigoCD], [JyuryoCD], [JyokenCD1], [JyokenCD2], [JyokenCD3], [JyokenCD4], [JyokenCD5], [JyokenName], [Kyori], [KyoriBefore], [DistanceTypeCD], [DistanceType2CD], [TrackCD], [TrackCDBefore], [CourseKubunCD], [CourseKubunCDBefore], [Honsyokin1], [Honsyokin2], [Honsyokin3], [Honsyokin4], [Honsyokin5], [Honsyokin6], [Honsyokin7], [HonsyokinBefore1], [HonsyokinBefore2], [HonsyokinBefore3], [HonsyokinBefore4], [HonsyokinBefore5], [Fukasyokin1], [Fukasyokin2], [Fukasyokin3], [Fukasyokin4], [Fukasyokin5], [FukasyokinBefore1], [FukasyokinBefore2], [FukasyokinBefore3], [HassoTime], [HassoTimeBefore], [TorokuTosu], [SyussoTosu], [NyusenTosu], [TenkoCD], [TrackTypeCD], [TrackType2CD], [TrackType3CD], [CourseTypeCD], [TrackConditionCD], [SibaBabaCD], [DirtBabaCD], [SyogaiMileTime], [HaronTimeS3], [HaronTimeS4], [HaronTimeL3], [HaronTimeL4], [RecordUpKubun], [TS], [IsNormal], [SmileCD], [TimeCount], [TimeAvg], [TimeStDev], [TimeSum], [TimeMin], [TimeMax], [TimeSigma3Minus], [TimeSigma2Minus], [TimeSigma1Minus], [TimeSigma1Plus], [TimeSigma2Plus], [TimeSigma3Plus], [DMTimeCount], [DMTimeAvg], [DMTimeStDev], [DMTimeSum], [DMTimeMin], [DMTimeMax], [DMTimeSigma3Minus], [DMTimeSigma2Minus], [DMTimeSigma1Minus], [DMTimeSigma1Plus], [DMTimeSigma2Plus], [DMTimeSigma3Plus], [LastCrollTimeStamp], [IsAutoBet], [AutoBetDateTime], [PredictDateTime], [ConfirmDateTime], [BetCount], [HitCount], [BetMoney], [HitMoney], [ReturnMoney], [HitRateByBet], [HitRateByRace], [ReturnMoneyRateByRace], [TS2], [GUID]) SELECT [RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [YoubiCD], [TokuNum], [Hondai], [Fukudai], [Kakko], [HondaiEng], [FukudaiEng], [KakkoEng], [Ryakusyo10], [Ryakusyo6], [Ryakusyo3], [Kubun], [Nkai], [GradeCD], [GradeCDBefore], [SyubetuCD], [KigoCD], [JyuryoCD], [JyokenCD1], [JyokenCD2], [JyokenCD3], [JyokenCD4], [JyokenCD5], [JyokenName], [Kyori], [KyoriBefore], [DistanceTypeCD], [DistanceType2CD], [TrackCD], [TrackCDBefore], [CourseKubunCD], [CourseKubunCDBefore], [Honsyokin1], [Honsyokin2], [Honsyokin3], [Honsyokin4], [Honsyokin5], [Honsyokin6], [Honsyokin7], [HonsyokinBefore1], [HonsyokinBefore2], [HonsyokinBefore3], [HonsyokinBefore4], [HonsyokinBefore5], [Fukasyokin1], [Fukasyokin2], [Fukasyokin3], [Fukasyokin4], [Fukasyokin5], [FukasyokinBefore1], [FukasyokinBefore2], [FukasyokinBefore3], [HassoTime], [HassoTimeBefore], [TorokuTosu], [SyussoTosu], [NyusenTosu], [TenkoCD], [TrackTypeCD], [TrackType2CD], [TrackType3CD], [CourseTypeCD], [TrackConditionCD], [SibaBabaCD], [DirtBabaCD], [SyogaiMileTime], [HaronTimeS3], [HaronTimeS4], [HaronTimeL3], [HaronTimeL4], [RecordUpKubun], [TS], [IsNormal], [SmileCD], [TimeCount], [TimeAvg], [TimeStDev], [TimeSum], [TimeMin], [TimeMax], [TimeSigma3Minus], [TimeSigma2Minus], [TimeSigma1Minus], [TimeSigma1Plus], [TimeSigma2Plus], [TimeSigma3Plus], [DMTimeCount], [DMTimeAvg], [DMTimeStDev], [DMTimeSum], [DMTimeMin], [DMTimeMax], [DMTimeSigma3Minus], [DMTimeSigma2Minus], [DMTimeSigma1Minus], [DMTimeSigma1Plus], [DMTimeSigma2Plus], [DMTimeSigma3Plus], [LastCrollTimeStamp], [IsAutoBet], [AutoBetDateTime], [PredictDateTime], [ConfirmDateTime], [BetCount], [HitCount], [BetMoney], [HitMoney], [ReturnMoney], [HitRateByBet], [HitRateByRace], [ReturnMoneyRateByRace], [TS2], [GUID] FROM [Jackpot].[dbo].[Race_old] 

GO


