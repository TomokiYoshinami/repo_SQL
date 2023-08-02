USE [master]
GO

ALTER DATABASE [Jackpot] ADD FILEGROUP [memory_optimized_filegroup_0] CONTAINS MEMORY_OPTIMIZED_DATA 
GO

ALTER DATABASE [Jackpot] ADD FILE ( NAME = N'memory_optimized_file_858592717', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\Data\memory_optimized_file_858592717' ) TO FILEGROUP [memory_optimized_filegroup_0]
GO

USE [Jackpot]
GO

EXEC dbo.sp_rename @objname = N'[dbo].[DataMining]', @newname = N'DataMining_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

EXEC [Jackpot].dbo.sp_rename @objname = N'[dbo].[DF_DataMining_GUID]', @newname = N'DF_DataMining_GUIDOnDataMining_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

SET ANSI_NULLS ON
GO

CREATE TABLE [dbo].[DataMining]
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
	[Umaban] [int] NOT NULL,
	[MakeHM] [char](4) COLLATE Japanese_CI_AS NULL,
	[DMTime] [float](53) NULL,
	[DMTimeP] [float](53) NULL,
	[DMTimeM] [float](53) NULL,
	[DMGosaP] [float](53) NULL,
	[DMGosaM] [float](53) NULL,
	[TS] [datetime2](7) NULL,
	[RaceDMTimeDev] [float](53) NULL,
	[ClassDMTimeDev] [float](53) NULL,
	[DMStdTime] [float](53) NULL,
	[DMStdTimeDev] [float](53) NULL,
	[TS2] [datetime2](7) NULL,
	[GUID] [uniqueidentifier] NULL,

 CONSTRAINT [DataMining_éÂÉLÅ[]  PRIMARY KEY NONCLUSTERED HASH 
(
	[RaceID],
	[Umaban]
)WITH ( BUCKET_COUNT = 1048576)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

GO

ALTER TABLE [dbo].[DataMining] ADD  CONSTRAINT [DF_DataMining_GUID]  DEFAULT (newid()) FOR [GUID]
GO

INSERT INTO [Jackpot].[dbo].[DataMining] ([RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [Umaban], [MakeHM], [DMTime], [DMTimeP], [DMTimeM], [DMGosaP], [DMGosaM], [TS], [RaceDMTimeDev], [ClassDMTimeDev], [DMStdTime], [DMStdTimeDev], [TS2], [GUID]) SELECT [RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [Umaban], [MakeHM], [DMTime], [DMTimeP], [DMTimeM], [DMGosaP], [DMGosaM], [TS], [RaceDMTimeDev], [ClassDMTimeDev], [DMStdTime], [DMStdTimeDev], [TS2], [GUID] FROM [Jackpot].[dbo].[DataMining_old] 

GO


