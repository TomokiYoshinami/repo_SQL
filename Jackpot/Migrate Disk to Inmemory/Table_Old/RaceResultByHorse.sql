USE [Jackpot]
GO

EXEC dbo.sp_rename @objname = N'[dbo].[RaceResultByHorse]', @newname = N'RaceResultByHorse_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

EXEC [Jackpot].dbo.sp_rename @objname = N'[dbo].[DF_RaceResultByHorse_GUID]', @newname = N'DF_RaceResultByHorse_GUIDOnRaceResultByHorse_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

SET ANSI_NULLS ON
GO

CREATE TABLE [dbo].[RaceResultByHorse]
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
	[Bamei] [char](36) COLLATE Japanese_CI_AS NULL,
	[RuikeiHonsyoHeiti] [float](53) NULL,
	[RuikeiHonsyoSyogai] [float](53) NULL,
	[RuikeiFukaHeichi] [float](53) NULL,
	[RuikeiFukaSyogai] [float](53) NULL,
	[RuikeiSyutokuHeichi] [float](53) NULL,
	[RuikeiSyutokuSyogai] [float](53) NULL,
	[TS] [datetime2](7) NULL,
	[RuikeiHonsyoHeitiLog] [float](53) NULL,
	[RuikeiHonsyoSyogaiLog] [float](53) NULL,
	[RuikeiFukaHeichiLog] [float](53) NULL,
	[RuikeiFukaSyogaiLog] [float](53) NULL,
	[RuikeiSyutokuHeichiLog] [float](53) NULL,
	[RuikeiSyutokuSyogaiLog] [float](53) NULL,
	[TS2] [datetime2](7) NULL,
	[GUID] [uniqueidentifier] NULL,

 CONSTRAINT [RaceResultByHorse_éÂÉLÅ[]  PRIMARY KEY NONCLUSTERED HASH 
(
	[RaceID],
	[KettoNum]
)WITH ( BUCKET_COUNT = 1048576)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

GO

ALTER TABLE [dbo].[RaceResultByHorse] ADD  CONSTRAINT [DF_RaceResultByHorse_GUID]  DEFAULT (newid()) FOR [GUID]
GO

INSERT INTO [Jackpot].[dbo].[RaceResultByHorse] ([RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [KettoNum], [Bamei], [RuikeiHonsyoHeiti], [RuikeiHonsyoSyogai], [RuikeiFukaHeichi], [RuikeiFukaSyogai], [RuikeiSyutokuHeichi], [RuikeiSyutokuSyogai], [TS], [RuikeiHonsyoHeitiLog], [RuikeiHonsyoSyogaiLog], [RuikeiFukaHeichiLog], [RuikeiFukaSyogaiLog], [RuikeiSyutokuHeichiLog], [RuikeiSyutokuSyogaiLog], [TS2], [GUID]) SELECT [RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [KettoNum], [Bamei], [RuikeiHonsyoHeiti], [RuikeiHonsyoSyogai], [RuikeiFukaHeichi], [RuikeiFukaSyogai], [RuikeiSyutokuHeichi], [RuikeiSyutokuSyogai], [TS], [RuikeiHonsyoHeitiLog], [RuikeiHonsyoSyogaiLog], [RuikeiFukaHeichiLog], [RuikeiFukaSyogaiLog], [RuikeiSyutokuHeichiLog], [RuikeiSyutokuSyogaiLog], [TS2], [GUID] FROM [Jackpot].[dbo].[RaceResultByHorse_old] 

GO


