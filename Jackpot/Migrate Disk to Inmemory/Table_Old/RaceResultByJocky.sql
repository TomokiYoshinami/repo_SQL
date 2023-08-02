USE [Jackpot]
GO

EXEC dbo.sp_rename @objname = N'[dbo].[RaceResultByJocky]', @newname = N'RaceResultByJocky_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

EXEC [Jackpot].dbo.sp_rename @objname = N'[dbo].[DF_RaceResultByJocky_GUID]', @newname = N'DF_RaceResultByJocky_GUIDOnRaceResultByJocky_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

SET ANSI_NULLS ON
GO

CREATE TABLE [dbo].[RaceResultByJocky]
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
	[KisyuCode] [char](5) COLLATE Japanese_CI_AS NULL,
	[KisyuName] [varchar](34) COLLATE Japanese_CI_AS NULL,
	[SetYear] [int] NULL,
	[HonSyokinHeichi] [float](53) NULL,
	[HonSyokinSyogai] [float](53) NULL,
	[FukaSyokinHeichi] [float](53) NULL,
	[FukaSyokinSyogai] [float](53) NULL,
	[TS] [datetime2](7) NULL,
	[HonSyokinHeichiLog] [float](53) NULL,
	[HonSyokinSyogaiLog] [float](53) NULL,
	[FukaSyokinHeichiLog] [float](53) NULL,
	[FukaSyokinSyogaiLog] [float](53) NULL,
	[TS2] [datetime2](7) NULL,
	[GUID] [uniqueidentifier] NULL,

 CONSTRAINT [RaceResultByJocky_éÂÉLÅ[]  PRIMARY KEY NONCLUSTERED HASH 
(
	[RaceID],
	[KettoNum],
	[SummaryType]
)WITH ( BUCKET_COUNT = 1048576)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

GO

ALTER TABLE [dbo].[RaceResultByJocky] ADD  CONSTRAINT [DF_RaceResultByJocky_GUID]  DEFAULT (newid()) FOR [GUID]
GO

INSERT INTO [Jackpot].[dbo].[RaceResultByJocky] ([RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [KettoNum], [SummaryType], [KisyuCode], [KisyuName], [SetYear], [HonSyokinHeichi], [HonSyokinSyogai], [FukaSyokinHeichi], [FukaSyokinSyogai], [TS], [HonSyokinHeichiLog], [HonSyokinSyogaiLog], [FukaSyokinHeichiLog], [FukaSyokinSyogaiLog], [TS2], [GUID]) SELECT [RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [KettoNum], [SummaryType], [KisyuCode], [KisyuName], [SetYear], [HonSyokinHeichi], [HonSyokinSyogai], [FukaSyokinHeichi], [FukaSyokinSyogai], [TS], [HonSyokinHeichiLog], [HonSyokinSyogaiLog], [FukaSyokinHeichiLog], [FukaSyokinSyogaiLog], [TS2], [GUID] FROM [Jackpot].[dbo].[RaceResultByJocky_old] 

GO


