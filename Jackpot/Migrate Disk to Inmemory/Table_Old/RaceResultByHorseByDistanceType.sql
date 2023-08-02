USE [Jackpot]
GO

EXEC dbo.sp_rename @objname = N'[dbo].[RaceResultByHorseByDistanceType]', @newname = N'RaceResultByHorseByDistanceType_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

EXEC [Jackpot].dbo.sp_rename @objname = N'[dbo].[DF_RaceResultByHorseByDistanceType_GUID]', @newname = N'DF_RaceResultByHorseByDistanceType_GUIDOnRaceResultByHorseByDistanceType_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

SET ANSI_NULLS ON
GO

CREATE TABLE [dbo].[RaceResultByHorseByDistanceType]
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
	[KettoNum] [char](10) COLLATE Japanese_CI_AS NOT NULL,
	[TrackTypeCD] [int] NOT NULL,
	[DistanceTypeCD] [int] NOT NULL,
	[RunCount] [float](53) NULL,
	[HitCount1] [float](53) NULL,
	[HitRate1] [float](53) NULL,
	[HitCount2] [float](53) NULL,
	[HitRate2] [float](53) NULL,
	[HitCount3] [float](53) NULL,
	[HitRate3] [float](53) NULL,
	[HitCount4] [float](53) NULL,
	[HitRate4] [float](53) NULL,
	[HitCount5] [float](53) NULL,
	[HitRate5] [float](53) NULL,
	[HitCount6] [float](53) NULL,
	[HitRate6] [float](53) NULL,
	[TS] [datetime2](7) NULL,
	[SmileCD] [char](1) COLLATE Japanese_CI_AS NULL,
	[HitCount12] [float](53) NULL,
	[HitRate12] [float](53) NULL,
	[HitCount123] [float](53) NULL,
	[HitRate123] [float](53) NULL,
	[RunCountLog] [float](53) NULL,
	[HitCount1Log] [float](53) NULL,
	[HitRate1Log] [float](53) NULL,
	[HitCount2Log] [float](53) NULL,
	[HitRate2Log] [float](53) NULL,
	[HitCount3Log] [float](53) NULL,
	[HitRate3Log] [float](53) NULL,
	[HitCount4Log] [float](53) NULL,
	[HitRate4Log] [float](53) NULL,
	[HitCount5Log] [float](53) NULL,
	[HitRate5Log] [float](53) NULL,
	[HitCount6Log] [float](53) NULL,
	[HitRate6Log] [float](53) NULL,
	[HitCount12Log] [float](53) NULL,
	[HitRate12Log] [float](53) NULL,
	[HitCount123Log] [float](53) NULL,
	[HitRate123Log] [float](53) NULL,
	[OddsWin] [float](53) NULL,
	[OddsWinLog] [float](53) NULL,
	[OddsPlace1] [float](53) NULL,
	[OddsPlace1Log] [float](53) NULL,
	[OddsPlace2] [float](53) NULL,
	[OddsPlace2Log] [float](53) NULL,
	[OddsWinInverse] [float](53) NULL,
	[OddsPlaceInverse1] [float](53) NULL,
	[OddsPlaceInverse2] [float](53) NULL,
	[OddsWinInverseLog] [float](53) NULL,
	[OddsPlaceInverse1Log] [float](53) NULL,
	[OddsPlaceInverse2Log] [float](53) NULL,
	[ApprovalRateWin] [float](53) NULL,
	[ApprovalRateWinLog] [float](53) NULL,
	[ApprovalRatePlace1] [float](53) NULL,
	[ApprovalRatePlace1Log] [float](53) NULL,
	[ApprovalRatePlace2] [float](53) NULL,
	[ApprovalRatePlace2Log] [float](53) NULL,
	[ExpectedValueWin] [float](53) NULL,
	[ExpectedValueWinLog] [float](53) NULL,
	[ExpectedValuePlace] [float](53) NULL,
	[ExpectedValuePlaceLog] [float](53) NULL,
	[StdTime] [float](53) NULL,
	[StdTimeDev] [float](53) NULL,
	[StdTimeDevMin] [float](53) NULL,
	[StdTimeDevMax] [float](53) NULL,
	[TS2] [datetime2](7) NULL,
	[GUID] [uniqueidentifier] NULL,

 CONSTRAINT [RaceResultByHorseByDistanceType_éÂÉLÅ[]  PRIMARY KEY NONCLUSTERED HASH 
(
	[RaceID],
	[KettoNum],
	[TrackTypeCD],
	[DistanceTypeCD]
)WITH ( BUCKET_COUNT = 1048576)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

GO

ALTER TABLE [dbo].[RaceResultByHorseByDistanceType] ADD  CONSTRAINT [DF_RaceResultByHorseByDistanceType_GUID]  DEFAULT (newid()) FOR [GUID]
GO

INSERT INTO [Jackpot].[dbo].[RaceResultByHorseByDistanceType] ([RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [KettoNum], [TrackTypeCD], [DistanceTypeCD], [RunCount], [HitCount1], [HitRate1], [HitCount2], [HitRate2], [HitCount3], [HitRate3], [HitCount4], [HitRate4], [HitCount5], [HitRate5], [HitCount6], [HitRate6], [TS], [SmileCD], [HitCount12], [HitRate12], [HitCount123], [HitRate123], [RunCountLog], [HitCount1Log], [HitRate1Log], [HitCount2Log], [HitRate2Log], [HitCount3Log], [HitRate3Log], [HitCount4Log], [HitRate4Log], [HitCount5Log], [HitRate5Log], [HitCount6Log], [HitRate6Log], [HitCount12Log], [HitRate12Log], [HitCount123Log], [HitRate123Log], [OddsWin], [OddsWinLog], [OddsPlace1], [OddsPlace1Log], [OddsPlace2], [OddsPlace2Log], [OddsWinInverse], [OddsPlaceInverse1], [OddsPlaceInverse2], [OddsWinInverseLog], [OddsPlaceInverse1Log], [OddsPlaceInverse2Log], [ApprovalRateWin], [ApprovalRateWinLog], [ApprovalRatePlace1], [ApprovalRatePlace1Log], [ApprovalRatePlace2], [ApprovalRatePlace2Log], [ExpectedValueWin], [ExpectedValueWinLog], [ExpectedValuePlace], [ExpectedValuePlaceLog], [StdTime], [StdTimeDev], [StdTimeDevMin], [StdTimeDevMax], [TS2], [GUID]) SELECT [RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [KettoNum], [TrackTypeCD], [DistanceTypeCD], [RunCount], [HitCount1], [HitRate1], [HitCount2], [HitRate2], [HitCount3], [HitRate3], [HitCount4], [HitRate4], [HitCount5], [HitRate5], [HitCount6], [HitRate6], [TS], [SmileCD], [HitCount12], [HitRate12], [HitCount123], [HitRate123], [RunCountLog], [HitCount1Log], [HitRate1Log], [HitCount2Log], [HitRate2Log], [HitCount3Log], [HitRate3Log], [HitCount4Log], [HitRate4Log], [HitCount5Log], [HitRate5Log], [HitCount6Log], [HitRate6Log], [HitCount12Log], [HitRate12Log], [HitCount123Log], [HitRate123Log], [OddsWin], [OddsWinLog], [OddsPlace1], [OddsPlace1Log], [OddsPlace2], [OddsPlace2Log], [OddsWinInverse], [OddsPlaceInverse1], [OddsPlaceInverse2], [OddsWinInverseLog], [OddsPlaceInverse1Log], [OddsPlaceInverse2Log], [ApprovalRateWin], [ApprovalRateWinLog], [ApprovalRatePlace1], [ApprovalRatePlace1Log], [ApprovalRatePlace2], [ApprovalRatePlace2Log], [ExpectedValueWin], [ExpectedValueWinLog], [ExpectedValuePlace], [ExpectedValuePlaceLog], [StdTime], [StdTimeDev], [StdTimeDevMin], [StdTimeDevMax], [TS2], [GUID] FROM [Jackpot].[dbo].[RaceResultByHorseByDistanceType_old] 

GO


