USE [Jackpot]
GO

EXEC dbo.sp_rename @objname = N'[dbo].[RaceResultByBanusi]', @newname = N'RaceResultByBanusi_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

EXEC [Jackpot].dbo.sp_rename @objname = N'[dbo].[DF_RaceResultByBanusi_GUID]', @newname = N'DF_RaceResultByBanusi_GUIDOnRaceResultByBanusi_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

SET ANSI_NULLS ON
GO

CREATE TABLE [dbo].[RaceResultByBanusi]
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
	[BanusiCode] [char](6) COLLATE Japanese_CI_AS NULL,
	[SetYear] [int] NULL,
	[HonSyokinTotal] [float](53) NULL,
	[FukaSyokin] [float](53) NULL,
	[TS] [datetime2](7) NULL,
	[HonSyokinTotalLog] [float](53) NULL,
	[FukaSyokinLog] [float](53) NULL,
	[TS2] [datetime2](7) NULL,
	[GUID] [uniqueidentifier] NULL,

 CONSTRAINT [RaceResultByBanusi_éÂÉLÅ[]  PRIMARY KEY NONCLUSTERED HASH 
(
	[RaceID],
	[KettoNum],
	[SummaryType]
)WITH ( BUCKET_COUNT = 65536)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

GO

ALTER TABLE [dbo].[RaceResultByBanusi] ADD  CONSTRAINT [DF_RaceResultByBanusi_GUID]  DEFAULT (newid()) FOR [GUID]
GO

INSERT INTO [Jackpot].[dbo].[RaceResultByBanusi] ([RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [KettoNum], [SummaryType], [BanusiCode], [SetYear], [HonSyokinTotal], [FukaSyokin], [TS], [HonSyokinTotalLog], [FukaSyokinLog], [TS2], [GUID]) SELECT [RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [KettoNum], [SummaryType], [BanusiCode], [SetYear], [HonSyokinTotal], [FukaSyokin], [TS], [HonSyokinTotalLog], [FukaSyokinLog], [TS2], [GUID] FROM [Jackpot].[dbo].[RaceResultByBanusi_old] 

GO


