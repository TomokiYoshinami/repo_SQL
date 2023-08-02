USE [Jackpot]
GO

EXEC dbo.sp_rename @objname = N'[dbo].[ConfigJVFileName]', @newname = N'ConfigJVFileName_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

EXEC [Jackpot].dbo.sp_rename @objname = N'[dbo].[DF_ConfigJVFileName_TS]', @newname = N'DF_ConfigJVFileName_TSOnConfigJVFileName_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

EXEC [Jackpot].dbo.sp_rename @objname = N'[dbo].[DF_ConfigJVFileName_GUID]', @newname = N'DF_ConfigJVFileName_GUIDOnConfigJVFileName_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

SET ANSI_NULLS ON
GO

CREATE TABLE [dbo].[ConfigJVFileName]
(
	[ID] [varchar](50) COLLATE Japanese_CI_AS NOT NULL,
	[FileName] [varchar](max) COLLATE Japanese_CI_AS NULL,
	[TS] [datetime2](7) NULL,
	[GUID] [uniqueidentifier] NULL,

 CONSTRAINT [ConfigJVFileName_éÂÉLÅ[]  PRIMARY KEY NONCLUSTERED HASH 
(
	[ID]
)WITH ( BUCKET_COUNT = 2)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

GO

ALTER TABLE [dbo].[ConfigJVFileName] ADD  CONSTRAINT [DF_ConfigJVFileName_TS]  DEFAULT (getdate()) FOR [TS]
GO

ALTER TABLE [dbo].[ConfigJVFileName] ADD  CONSTRAINT [DF_ConfigJVFileName_GUID]  DEFAULT (newid()) FOR [GUID]
GO

INSERT INTO [Jackpot].[dbo].[ConfigJVFileName] ([ID], [FileName], [TS], [GUID]) SELECT [ID], [FileName], [TS], [GUID] FROM [Jackpot].[dbo].[ConfigJVFileName_old] 

GO


