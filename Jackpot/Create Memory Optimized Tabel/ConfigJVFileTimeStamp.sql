USE [Jackpot]
GO

EXEC dbo.sp_rename @objname = N'[dbo].[ConfigJVFileTimeStamp]', @newname = N'ConfigJVFileTimeStamp_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

EXEC [Jackpot].dbo.sp_rename @objname = N'[dbo].[DF_ConfigJVFileTimeStamp_TS]', @newname = N'DF_ConfigJVFileTimeStamp_TSOnConfigJVFileTimeStamp_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

EXEC [Jackpot].dbo.sp_rename @objname = N'[dbo].[DF_ConfigJVFileTimeStamp_GUID]', @newname = N'DF_ConfigJVFileTimeStamp_GUIDOnConfigJVFileTimeStamp_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

SET ANSI_NULLS ON
GO

CREATE TABLE [dbo].[ConfigJVFileTimeStamp]
(
	[ID] [varchar](50) COLLATE Japanese_CI_AS NOT NULL,
	[FileTimeStamp] [datetime2](7) NULL,
	[TS] [datetime2](7) NULL,
	[GUID] [uniqueidentifier] NULL,

 CONSTRAINT [ConfigJVFileTimeStamp_éÂÉLÅ[]  PRIMARY KEY NONCLUSTERED HASH 
(
	[ID]
)WITH ( BUCKET_COUNT = 2)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

GO

ALTER TABLE [dbo].[ConfigJVFileTimeStamp] ADD  CONSTRAINT [DF_ConfigJVFileTimeStamp_TS]  DEFAULT (getdate()) FOR [TS]
GO

ALTER TABLE [dbo].[ConfigJVFileTimeStamp] ADD  CONSTRAINT [DF_ConfigJVFileTimeStamp_GUID]  DEFAULT (newid()) FOR [GUID]
GO

INSERT INTO [Jackpot].[dbo].[ConfigJVFileTimeStamp] ([ID], [FileTimeStamp], [TS], [GUID]) SELECT [ID], [FileTimeStamp], [TS], [GUID] FROM [Jackpot].[dbo].[ConfigJVFileTimeStamp_old] 

GO


