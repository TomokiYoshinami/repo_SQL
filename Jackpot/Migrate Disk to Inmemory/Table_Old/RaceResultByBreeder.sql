USE [Jackpot]
GO

EXEC dbo.sp_rename @objname = N'[dbo].[RaceResultByBreeder]', @newname = N'RaceResultByBreeder_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

EXEC [Jackpot].dbo.sp_rename @objname = N'[dbo].[DF_RaceResultByBreeder_GUID]', @newname = N'DF_RaceResultByBreeder_GUIDOnRaceResultByBreeder_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

SET ANSI_NULLS ON
GO

CREATE TABLE [dbo].[RaceResultByBreeder]
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
	[SummaryType] [int] NOT NULL,
	[BreederCD] [char](6) COLLATE Japanese_CI_AS NULL,
	[SetYear] [int] NULL,
	[HonSyokinTotal] [float](53) NULL,
	[FukaSyokin] [float](53) NULL,
	[TS] [datetime2](7) NULL,
	[HonSyokinTotalLog] [float](53) NULL,
	[FukaSyokinLog] [float](53) NULL,
	[TS2] [datetime2](7) NULL,
	[GUID] [uniqueidentifier] NULL,

 CONSTRAINT [RaceResultByBreeder_éÂÉLÅ[]  PRIMARY KEY NONCLUSTERED HASH 
(
	[RaceID],
	[KettoNum],
	[SummaryType]
)WITH ( BUCKET_COUNT = 1048576)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

GO

ALTER TABLE [dbo].[RaceResultByBreeder] ADD  CONSTRAINT [DF_RaceResultByBreeder_GUID]  DEFAULT (newid()) FOR [GUID]
GO

INSERT INTO [Jackpot].[dbo].[RaceResultByBreeder] ([RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [KettoNum], [SummaryType], [BreederCD], [SetYear], [HonSyokinTotal], [FukaSyokin], [TS], [HonSyokinTotalLog], [FukaSyokinLog], [TS2], [GUID]) SELECT [RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [KettoNum], [SummaryType], [BreederCD], [SetYear], [HonSyokinTotal], [FukaSyokin], [TS], [HonSyokinTotalLog], [FukaSyokinLog], [TS2], [GUID] FROM [Jackpot].[dbo].[RaceResultByBreeder_old] 

GO


