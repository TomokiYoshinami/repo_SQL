USE [Jackpot]
GO

EXEC dbo.sp_rename @objname = N'[dbo].[ConfigJVCurrentFileTimeStamp]', @newname = N'ConfigJVCurrentFileTimeStamp_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

EXEC [Jackpot].dbo.sp_rename @objname = N'[dbo].[DF_ConfigJVCurrentFileTimeStamp_TS]', @newname = N'DF_ConfigJVCurrentFileTimeStamp_TSOnConfigJVCurrentFileTimeStamp_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

EXEC [Jackpot].dbo.sp_rename @objname = N'[dbo].[DF_ConfigJVCurrentFileTimeStamp_GUID]', @newname = N'DF_ConfigJVCurrentFileTimeStamp_GUIDOnConfigJVCurrentFileTimeStamp_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

SET ANSI_NULLS ON
GO

CREATE TABLE [dbo].[ConfigJVCurrentFileTimeStamp]
(
	[DataSpec] [char](4) COLLATE Japanese_CI_AS NOT NULL,
	[RecordSpec] [char](2) COLLATE Japanese_CI_AS NOT NULL,
	[FileTimeStamp] [datetime2](7) NULL,
	[TS] [datetime2](7) NULL,
	[GUID] [uniqueidentifier] NULL,

 CONSTRAINT [ConfigJVCurrentFileTimeStamp_éÂÉLÅ[]  PRIMARY KEY NONCLUSTERED HASH 
(
	[DataSpec],
	[RecordSpec]
)WITH ( BUCKET_COUNT = 128)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

GO

ALTER TABLE [dbo].[ConfigJVCurrentFileTimeStamp] ADD  CONSTRAINT [DF_ConfigJVCurrentFileTimeStamp_TS]  DEFAULT (getdate()) FOR [TS]
GO

ALTER TABLE [dbo].[ConfigJVCurrentFileTimeStamp] ADD  CONSTRAINT [DF_ConfigJVCurrentFileTimeStamp_GUID]  DEFAULT (newid()) FOR [GUID]
GO

INSERT INTO [Jackpot].[dbo].[ConfigJVCurrentFileTimeStamp] ([DataSpec], [RecordSpec], [FileTimeStamp], [TS], [GUID]) SELECT [DataSpec], [RecordSpec], [FileTimeStamp], [TS], [GUID] FROM [Jackpot].[dbo].[ConfigJVCurrentFileTimeStamp_old] 

GO


