USE [Jackpot]
GO

EXEC dbo.sp_rename @objname = N'[dbo].[RaceResultByHorseByRunningStyle]', @newname = N'RaceResultByHorseByRunningStyle_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

EXEC [Jackpot].dbo.sp_rename @objname = N'[dbo].[DF_RaceResultByHorseByRunningStyle_GUID]', @newname = N'DF_RaceResultByHorseByRunningStyle_GUIDOnRaceResultByHorseByRunningStyle_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

SET ANSI_NULLS ON
GO

CREATE TABLE [dbo].[RaceResultByHorseByRunningStyle]
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
	[RunCount] [float](53) NULL,
	[HitCount1] [float](53) NULL,
	[HitRate1] [float](53) NULL,
	[HitCount2] [float](53) NULL,
	[HitRate2] [float](53) NULL,
	[HitCount3] [float](53) NULL,
	[HitRate3] [float](53) NULL,
	[HitCount4] [float](53) NULL,
	[HitRate4] [float](53) NULL,
	[TS] [datetime2](7) NULL,
	[RunningStyleAvg] [float](53) NULL,
	[RunningStyleMax] [float](53) NULL,
	[RunCountLog] [float](53) NULL,
	[HitCount1Log] [float](53) NULL,
	[HitRate1Log] [float](53) NULL,
	[HitCount2Log] [float](53) NULL,
	[HitRate2Log] [float](53) NULL,
	[HitCount3Log] [float](53) NULL,
	[HitRate3Log] [float](53) NULL,
	[HitCount4Log] [float](53) NULL,
	[HitRate4Log] [float](53) NULL,
	[TS2] [datetime2](7) NULL,
	[GUID] [uniqueidentifier] NULL,

 CONSTRAINT [RaceResultByHorseByRunningStyle_éÂÉLÅ[]  PRIMARY KEY NONCLUSTERED HASH 
(
	[RaceID],
	[KettoNum]
)WITH ( BUCKET_COUNT = 1048576)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

GO

ALTER TABLE [dbo].[RaceResultByHorseByRunningStyle] ADD  CONSTRAINT [DF_RaceResultByHorseByRunningStyle_GUID]  DEFAULT (newid()) FOR [GUID]
GO

INSERT INTO [Jackpot].[dbo].[RaceResultByHorseByRunningStyle] ([RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [KettoNum], [RunCount], [HitCount1], [HitRate1], [HitCount2], [HitRate2], [HitCount3], [HitRate3], [HitCount4], [HitRate4], [TS], [RunningStyleAvg], [RunningStyleMax], [RunCountLog], [HitCount1Log], [HitRate1Log], [HitCount2Log], [HitRate2Log], [HitCount3Log], [HitRate3Log], [HitCount4Log], [HitRate4Log], [TS2], [GUID]) SELECT [RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [KettoNum], [RunCount], [HitCount1], [HitRate1], [HitCount2], [HitRate2], [HitCount3], [HitRate3], [HitCount4], [HitRate4], [TS], [RunningStyleAvg], [RunningStyleMax], [RunCountLog], [HitCount1Log], [HitRate1Log], [HitCount2Log], [HitRate2Log], [HitCount3Log], [HitRate3Log], [HitCount4Log], [HitRate4Log], [TS2], [GUID] FROM [Jackpot].[dbo].[RaceResultByHorseByRunningStyle_old] 

GO


