USE [master]
GO

ALTER DATABASE [Jackpot] ADD FILEGROUP [memory_optimized_filegroup_0] CONTAINS MEMORY_OPTIMIZED_DATA 
GO

ALTER DATABASE [Jackpot] ADD FILE ( NAME = N'memory_optimized_file_897168807', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\Data\memory_optimized_file_897168807' ) TO FILEGROUP [memory_optimized_filegroup_0]
GO

USE [Jackpot]
GO

EXEC dbo.sp_rename @objname = N'[dbo].[ConfigJVLastFileTimeStamp]', @newname = N'ConfigJVLastFileTimeStamp_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

EXEC [Jackpot].dbo.sp_rename @objname = N'[dbo].[DF_ConfigJVLastFileTimeStamp_TS]', @newname = N'DF_ConfigJVLastFileTimeStamp_TSOnConfigJVLastFileTimeStamp_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

EXEC [Jackpot].dbo.sp_rename @objname = N'[dbo].[DF_ConfigJVLastFileTimeStamp_GUID]', @newname = N'DF_ConfigJVLastFileTimeStamp_GUIDOnConfigJVLastFileTimeStamp_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

SET ANSI_NULLS ON
GO

CREATE TABLE [dbo].[ConfigJVLastFileTimeStamp]
(
	[DataSpec] [char](4) COLLATE Japanese_CI_AS NOT NULL,
	[RecordSpec] [char](2) COLLATE Japanese_CI_AS NOT NULL,
	[FileTimeStamp] [datetime2](7) NULL,
	[TS] [datetime2](7) NULL,
	[GUID] [uniqueidentifier] NULL,

 CONSTRAINT [ConfigJVLastFileTimeStamp_éÂÉLÅ[]  PRIMARY KEY NONCLUSTERED HASH 
(
	[DataSpec],
	[RecordSpec]
)WITH ( BUCKET_COUNT = 128)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

GO

ALTER TABLE [dbo].[ConfigJVLastFileTimeStamp] ADD  CONSTRAINT [DF_ConfigJVLastFileTimeStamp_TS]  DEFAULT (getdate()) FOR [TS]
GO

ALTER TABLE [dbo].[ConfigJVLastFileTimeStamp] ADD  CONSTRAINT [DF_ConfigJVLastFileTimeStamp_GUID]  DEFAULT (newid()) FOR [GUID]
GO

INSERT INTO [Jackpot].[dbo].[ConfigJVLastFileTimeStamp] ([DataSpec], [RecordSpec], [FileTimeStamp], [TS], [GUID]) SELECT [DataSpec], [RecordSpec], [FileTimeStamp], [TS], [GUID] FROM [Jackpot].[dbo].[ConfigJVLastFileTimeStamp_old] 

GO


