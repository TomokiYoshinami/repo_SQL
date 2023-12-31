USE [Jackpot33330New]
GO
ALTER TABLE dbo.PredictModels DROP CONSTRAINT DF_PredictModels_Guid
GO
ALTER TABLE dbo.PredictModels DROP CONSTRAINT DF_PredictModels_Timestamp011
GO
ALTER TABLE dbo.PredictModels DROP CONSTRAINT DF_PredictModels_Timestamp01
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PredictModels3000]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PredictModels3000
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PredictModels2000]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PredictModels2000
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PredictModels1000]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PredictModels1000
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PredictModels0600]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PredictModels0600
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PredictModels]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PredictModels
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PredictModels
                              (
    PredictModelId   NVARCHAR(255) NULL,
    PredictModel     VARBINARY(MAX) NULL,
    AnalyzeLog       NVARCHAR(MAX) NULL,
    ExecDatetime     DATETIME NULL,
    Timestamp01      DATETIME NULL,
    PredictModelTemp VARBINARY(MAX) NULL,
    Timestamp02      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL
                              )
ON [INDEX] TEXTIMAGE_ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PredictModels0600
                                  (
    PredictModel VARBINARY(MAX) NULL
                                  )
ON [INDEX] TEXTIMAGE_ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PredictModels1000
                                  (
    PredictModel VARBINARY(MAX) NULL
                                  )
ON [INDEX] TEXTIMAGE_ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PredictModels2000
                                  (
    PredictModel VARBINARY(MAX) NULL
                                  )
ON [INDEX] TEXTIMAGE_ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PredictModels3000
                                  (
    PredictModel VARBINARY(MAX) NULL
                                  )
ON [INDEX] TEXTIMAGE_ON [INDEX]
GO
ALTER TABLE dbo.PredictModels
ADD CONSTRAINT DF_PredictModels_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.PredictModels
ADD CONSTRAINT DF_PredictModels_Timestamp011 DEFAULT GETDATE() FOR Timestamp02
GO
ALTER TABLE dbo.PredictModels
ADD CONSTRAINT DF_PredictModels_Guid DEFAULT NEWID() FOR Guid
GO