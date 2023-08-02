USE [Jackpot]
GO

EXEC dbo.sp_rename @objname = N'[dbo].[PayoffByPayAll]', @newname = N'PayoffByPayAll_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

EXEC [Jackpot].dbo.sp_rename @objname = N'[dbo].[DF_PayoffByPayAll_GUID]', @newname = N'DF_PayoffByPayAll_GUIDOnPayoffByPayAll_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

SET ANSI_NULLS ON
GO

CREATE TABLE [dbo].[PayoffByPayAll]
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
	[BetTypeCD] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Num] [int] NOT NULL,
	[Pay] [float](53) NULL,
	[Ninki] [float](53) NULL,
	[TS] [datetime2](7) NULL,
	[IsHit] [bit] NULL,
	[PayLog] [float](53) NULL,
	[TS2] [datetime2](7) NULL,
	[GUID] [uniqueidentifier] NULL,

 CONSTRAINT [PayoffByPayAll_éÂÉLÅ[]  PRIMARY KEY NONCLUSTERED HASH 
(
	[RaceID],
	[BetTypeCD],
	[Kumi1],
	[Kumi2],
	[Kumi3]
)WITH ( BUCKET_COUNT = 1048576)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

GO

ALTER TABLE [dbo].[PayoffByPayAll] ADD  CONSTRAINT [DF_PayoffByPayAll_GUID]  DEFAULT (newid()) FOR [GUID]
GO

INSERT INTO [Jackpot].[dbo].[PayoffByPayAll] ([RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [BetTypeCD], [Kumi1], [Kumi2], [Kumi3], [Num], [Pay], [Ninki], [TS], [IsHit], [PayLog], [TS2], [GUID]) SELECT [RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [BetTypeCD], [Kumi1], [Kumi2], [Kumi3], [Num], [Pay], [Ninki], [TS], [IsHit], [PayLog], [TS2], [GUID] FROM [Jackpot].[dbo].[PayoffByPayAll_old] 

GO


