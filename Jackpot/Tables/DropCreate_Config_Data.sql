GO
USE [Jackpot37004]
EXEC sys.sp_dropextendedproperty 
    @Name = N'MS_Description',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'ParsNo'
GO
EXEC sys.sp_dropextendedproperty 
    @Name = N'MS_Description',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'PassNo'
GO
EXEC sys.sp_dropextendedproperty 
    @Name = N'MS_Description',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'UserNo'
GO
EXEC sys.sp_dropextendedproperty 
    @Name = N'MS_Description',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'InetId'
GO
EXEC sys.sp_dropextendedproperty 
    @Name = N'MS_Description',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'Description'
GO
EXEC sys.sp_dropextendedproperty 
    @Name = N'MS_Description',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'Id'
GO
ALTER TABLE dbo.ConfigLastTimestamp DROP CONSTRAINT FK_ConfigLastTimestamp_MasterOpenModeDataSpec
GO
ALTER TABLE dbo.ConfigLastTimestamp DROP CONSTRAINT FK_ConfigLastTimestamp_MasterDataSpec
GO
ALTER TABLE dbo.ConfigBetMoney DROP CONSTRAINT FK_ConfigBetMoney_MasterBetType
GO
ALTER TABLE dbo.ConfigBetMoney DROP CONSTRAINT FK_ConfigBetMoney_Master2RaceClass
GO
ALTER TABLE dbo.ConfigBetCountWinFive DROP CONSTRAINT FK_ConfigBetCountWinFive_MasterConfigType
GO
ALTER TABLE dbo.ConfigBetCountWinFive DROP CONSTRAINT FK_ConfigBetCountWinFive_MasterBetType
GO
ALTER TABLE dbo.ConfigBetCount DROP CONSTRAINT FK_ConfigBetCount_MasterConfigType
GO
ALTER TABLE dbo.ConfigBetCount DROP CONSTRAINT FK_ConfigBetCount_MasterBetType
GO
ALTER TABLE dbo.ConfigBetCount DROP CONSTRAINT FK_ConfigBetCount_Master2Class
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType_202308 DROP CONSTRAINT FK_ConfigAccessOrderDataSpecRecType_202308_MasterDataSpec
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType_202307 DROP CONSTRAINT FK_ConfigAccessOrderDataSpecRecType_202307_MasterDataSpec
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType DROP CONSTRAINT FK_ConfigAccessOrderDataSpecRecType_MasterDataSpec
GO
ALTER TABLE dbo.ConfigRecType DROP CONSTRAINT DF_ConfigRecType_Guid
GO
ALTER TABLE dbo.ConfigPredict DROP CONSTRAINT DF_ConfigPredict_Guid
GO
ALTER TABLE dbo.ConfigOperation DROP CONSTRAINT DF_ConfigOperation_Guid
GO
ALTER TABLE dbo.ConfigLastTimestamp DROP CONSTRAINT DF_ConfigLastTimestamp_Guid
GO
ALTER TABLE dbo.ConfigLastTimestamp DROP CONSTRAINT DF_ConfigLastTimestamp_Timestamp01
GO
ALTER TABLE dbo.ConfigIpatHistory DROP CONSTRAINT DF_ConfigIpatHistory_Guid
GO
ALTER TABLE dbo.ConfigIpatBalance DROP CONSTRAINT DF_ConfigIpatBalance_Guid
GO
ALTER TABLE dbo.ConfigIpatAccount DROP CONSTRAINT DF_Account_Guid
GO
ALTER TABLE dbo.ConfigIpatAccount DROP CONSTRAINT DF_Account_Id
GO
ALTER TABLE dbo.ConfigEventAction DROP CONSTRAINT DF_ConfigEventAction_Guid
GO
ALTER TABLE dbo.ConfigDataSpec DROP CONSTRAINT DF_ConfigDataSpec_Guid
GO
ALTER TABLE dbo.ConfigBetMoney DROP CONSTRAINT DF_ConfigBetMoney_Guid
GO
ALTER TABLE dbo.ConfigBetMoney DROP CONSTRAINT DF_ConfigBetMoney_Timestamp01
GO
ALTER TABLE dbo.ConfigBetCountWinFive DROP CONSTRAINT DF_ConfigBetCountWinFive_Guid
GO
ALTER TABLE dbo.ConfigBetCount DROP CONSTRAINT DF_ConfigBetCount_Guid
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType_202308 DROP CONSTRAINT DF_ConfigAccessOrderDataSpecRecType_202308_Guid
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType_202308 DROP CONSTRAINT DF_ConfigAccessOrderDataSpecRecType_202308_Timestamp01
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType_202307 DROP CONSTRAINT DF_ConfigAccessOrderDataSpecRecType_202307_Guid
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType_202307 DROP CONSTRAINT DF_ConfigAccessOrderDataSpecRecType_202307_Timestamp01
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType DROP CONSTRAINT DF_ConfigAccessOrderDataSpecRecType_Guid
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType DROP CONSTRAINT DF_ConfigAccessOrderDataSpecRecType_Timestamp01
GO
IF EXISTS
  (
    SELECT *
      FROM sys.objects
      WHERE object_id = OBJECT_ID(N'[dbo].[ConfigRecType]')
            AND type IN
      (N'U'
      )
  )
  BEGIN
    DROP TABLE dbo.ConfigRecType
  END
GO
IF EXISTS
  (
    SELECT *
      FROM sys.objects
      WHERE object_id = OBJECT_ID(N'[dbo].[ConfigPredict]')
            AND type IN
      (N'U'
      )
  )
  BEGIN
    DROP TABLE dbo.ConfigPredict
  END
GO
IF EXISTS
  (
    SELECT *
      FROM sys.objects
      WHERE object_id = OBJECT_ID(N'[dbo].[ConfigOperation]')
            AND type IN
      (N'U'
      )
  )
  BEGIN
    DROP TABLE dbo.ConfigOperation
  END
GO
IF EXISTS
  (
    SELECT *
      FROM sys.objects
      WHERE object_id = OBJECT_ID(N'[dbo].[ConfigLastTimestamp]')
            AND type IN
      (N'U'
      )
  )
  BEGIN
    DROP TABLE dbo.ConfigLastTimestamp
  END
GO
IF EXISTS
  (
    SELECT *
      FROM sys.objects
      WHERE object_id = OBJECT_ID(N'[dbo].[ConfigIpatHistory]')
            AND type IN
      (N'U'
      )
  )
  BEGIN
    DROP TABLE dbo.ConfigIpatHistory
  END
GO
IF EXISTS
  (
    SELECT *
      FROM sys.objects
      WHERE object_id = OBJECT_ID(N'[dbo].[ConfigIpatBalance]')
            AND type IN
      (N'U'
      )
  )
  BEGIN
    DROP TABLE dbo.ConfigIpatBalance
  END
GO
IF EXISTS
  (
    SELECT *
      FROM sys.objects
      WHERE object_id = OBJECT_ID(N'[dbo].[ConfigIpatAccount]')
            AND type IN
      (N'U'
      )
  )
  BEGIN
    DROP TABLE dbo.ConfigIpatAccount
  END
GO
IF EXISTS
  (
    SELECT *
      FROM sys.objects
      WHERE object_id = OBJECT_ID(N'[dbo].[ConfigEventAction]')
            AND type IN
      (N'U'
      )
  )
  BEGIN
    DROP TABLE dbo.ConfigEventAction
  END
GO
IF EXISTS
  (
    SELECT *
      FROM sys.objects
      WHERE object_id = OBJECT_ID(N'[dbo].[ConfigDataSpec]')
            AND type IN
      (N'U'
      )
  )
  BEGIN
    DROP TABLE dbo.ConfigDataSpec
  END
GO
IF EXISTS
  (
    SELECT *
      FROM sys.objects
      WHERE object_id = OBJECT_ID(N'[dbo].[ConfigBetMoney]')
            AND type IN
      (N'U'
      )
  )
  BEGIN
    DROP TABLE dbo.ConfigBetMoney
  END
GO
IF EXISTS
  (
    SELECT *
      FROM sys.objects
      WHERE object_id = OBJECT_ID(N'[dbo].[ConfigBetCountWinFive]')
            AND type IN
      (N'U'
      )
  )
  BEGIN
    DROP TABLE dbo.ConfigBetCountWinFive
  END
GO
IF EXISTS
  (
    SELECT *
      FROM sys.objects
      WHERE object_id = OBJECT_ID(N'[dbo].[ConfigBetCount]')
            AND type IN
      (N'U'
      )
  )
  BEGIN
    DROP TABLE dbo.ConfigBetCount
  END
GO
IF EXISTS
  (
    SELECT *
      FROM sys.objects
      WHERE object_id = OBJECT_ID(N'[dbo].[ConfigAccessOrderDataSpecRecType_202308]')
            AND type IN
      (N'U'
      )
  )
  BEGIN
    DROP TABLE dbo.ConfigAccessOrderDataSpecRecType_202308
  END
GO
IF EXISTS
  (
    SELECT *
      FROM sys.objects
      WHERE object_id = OBJECT_ID(N'[dbo].[ConfigAccessOrderDataSpecRecType_202307]')
            AND type IN
      (N'U'
      )
  )
  BEGIN
    DROP TABLE dbo.ConfigAccessOrderDataSpecRecType_202307
  END
GO
IF EXISTS
  (
    SELECT *
      FROM sys.objects
      WHERE object_id = OBJECT_ID(N'[dbo].[ConfigAccessOrderDataSpecRecType]')
            AND type IN
      (N'U'
      )
  )
  BEGIN
    DROP TABLE dbo.ConfigAccessOrderDataSpecRecType
  END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode          INT NOT NULL,
   DataSpecSortOrder INT NOT NULL,
   RecTypeSortOrder  INT NOT NULL,
   DataSpecId        CHAR(4) NOT NULL,
   RecType           NCHAR(2) NOT NULL,
   Timestamp01       DATETIME NULL,
   Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
   CONSTRAINT PK_ConfigAccessOrderDataSpecRecType PRIMARY KEY CLUSTERED(OpenMode ASC,DataSpecSortOrder ASC,RecTypeSortOrder ASC)
   WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode          INT NOT NULL,
   DataSpecSortOrder INT NOT NULL,
   RecTypeSortOrder  INT NOT NULL,
   DataSpecId        CHAR(4) NOT NULL,
   RecType           NCHAR(2) NOT NULL,
   Timestamp01       DATETIME NULL,
   Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
   CONSTRAINT PK_ConfigAccessOrderDataSpecRecType_202307 PRIMARY KEY CLUSTERED(OpenMode ASC,DataSpecSortOrder ASC,RecTypeSortOrder ASC)
   WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode          INT NOT NULL,
   DataSpecSortOrder INT NOT NULL,
   RecTypeSortOrder  INT NOT NULL,
   DataSpecId        CHAR(4) NOT NULL,
   RecType           NCHAR(2) NOT NULL,
   Timestamp01       DATETIME NULL,
   Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
   CONSTRAINT PK_ConfigAccessOrderDataSpecRecType_202308 PRIMARY KEY CLUSTERED(OpenMode ASC,DataSpecSortOrder ASC,RecTypeSortOrder ASC)
   WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigBetCount
  (ConfigTypeId    INT NOT NULL,
   ClassId         NCHAR(7) NOT NULL,
   BetTypeId       INT NOT NULL,
   BetCount        FLOAT NULL,
   DefaultBetCount FLOAT NULL,
   LimitBetCount   FLOAT NULL,
   Timestamp01     DATETIME NULL,
   Guid            UNIQUEIDENTIFIER ROWGUIDCOL NULL,
   CONSTRAINT PK_ConfigBetCount PRIMARY KEY CLUSTERED(ConfigTypeId ASC,ClassId ASC,BetTypeId ASC)
   WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigBetCountWinFive
  (ConfigTypeId    INT NOT NULL,
   BetTypeId       INT NOT NULL,
   BetCount        FLOAT NULL,
   DefaultBetCount FLOAT NULL,
   LimitBetCount   FLOAT NULL,
   Timestamp01     DATETIME NULL,
   Guid            UNIQUEIDENTIFIER ROWGUIDCOL NULL,
   CONSTRAINT PK_ConfigBetCountWinFive PRIMARY KEY CLUSTERED(ConfigTypeId ASC,BetTypeId ASC)
   WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigBetMoney
  (RaceClassId     NCHAR(7) NOT NULL,
   BetTypeId       INT NOT NULL,
   InitialBetMoney FLOAT NULL,
   InitialBetRate  FLOAT NULL,
   LimitBetMoney   FLOAT NULL,
   RoiBetCount     FLOAT NULL,
   RoiHitCount     FLOAT NULL,
   RoiHitRate      FLOAT NULL,
   RoiBetMoney     FLOAT NULL,
   RoiHitMoney     FLOAT NULL,
   RoiReturnMoney  FLOAT NULL,
   RoiReturnRate   FLOAT NULL,
   Description     NVARCHAR(255) NULL,
   Timestamp01     DATETIME NULL,
   Guid            UNIQUEIDENTIFIER ROWGUIDCOL NULL,
   CONSTRAINT PK_ConfigBetMoney PRIMARY KEY CLUSTERED(RaceClassId ASC,BetTypeId ASC)
   WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigDataSpec
  (Id          INT NOT NULL,
   Difn        BIT NOT NULL,
   Race        BIT NOT NULL,
   Bldn        BIT NOT NULL,
   Ming        BIT NOT NULL,
   Snpn        BIT NOT NULL,
   Slop        BIT NOT NULL,
   Ysch        BIT NOT NULL,
   Hosn        BIT NOT NULL,
   Hoyu        BIT NOT NULL,
   Comm        BIT NOT NULL,
   Toku        BIT NOT NULL,
   Wood        BIT NOT NULL,
   Tcvn        BIT NOT NULL,
   Rcvn        BIT NOT NULL,
   Timestamp01 DATETIME NULL,
   Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
   CONSTRAINT PK_ConfigDataSpec PRIMARY KEY CLUSTERED(Id ASC)
   WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigEventAction
  (Id                        INT NOT NULL,
   IsPredictByCourseChange   BIT NOT NULL,
   IsPredictByExclusion      BIT NOT NULL,
   IsPredictByHorseWeight    BIT NOT NULL,
   IsPredictByJockeyChange   BIT NOT NULL,
   IsPredictByPayoff         BIT NOT NULL,
   IsPredictByPostTimeChange BIT NOT NULL,
   IsPredictByWeather        BIT NOT NULL,
   IsPredictByOdds           BIT NOT NULL,
   IsBetByCourseChange       BIT NOT NULL,
   IsBetByExclusion          BIT NOT NULL,
   IsBetByHorseWeight        BIT NOT NULL,
   IsBetByJockeyChange       BIT NOT NULL,
   IsBetByPayoff             BIT NOT NULL,
   IsBetByPostTimeChange     BIT NOT NULL,
   IsBetByWeather            BIT NOT NULL,
   IsBetByOdds               BIT NOT NULL,
   Timestamp01               DATETIME NULL,
   Guid                      UNIQUEIDENTIFIER ROWGUIDCOL NULL,
   CONSTRAINT PK_ConfigEventAction PRIMARY KEY CLUSTERED(Id ASC)
   WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigIpatAccount
  (Id          INT NOT NULL,
   Description NVARCHAR(255) NULL,
   InetId      NCHAR(8) NULL,
   UserNo      NCHAR(8) NULL,
   PassNo      NCHAR(4) NULL,
   ParsNo      NCHAR(4) NULL,
   Timestamp01 DATETIME NULL,
   Guid        UNIQUEIDENTIFIER NULL,
   CONSTRAINT PK_Account PRIMARY KEY CLUSTERED(Id ASC)
   WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigIpatBalance
  (Id          INT NOT NULL,
   Balance     FLOAT NULL,
   Deposit     FLOAT NULL,
   ProfitLoss  FLOAT NULL,
   Timestamp01 DATETIME NULL,
   Guid        UNIQUEIDENTIFIER NULL,
   CONSTRAINT PK_ConfigIpatBalance PRIMARY KEY CLUSTERED(Id ASC)
   WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigIpatHistory
  (RaceDate        [DATE] NOT NULL,
   IsFirstChecked  BIT NULL,
   CheckedDatetime DATETIME NULL,
   Deposit         FLOAT NULL,
   WithDraw        FLOAT NULL,
   Balance         FLOAT NULL,
   LimitBetMoney   FLOAT NULL,
   LimitBetCount   FLOAT NULL,
   Timestamp01     DATETIME NULL,
   Guid            UNIQUEIDENTIFIER NULL,
   CONSTRAINT PK_ConfigIpatHistory PRIMARY KEY CLUSTERED(RaceDate ASC)
   WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigLastTimestamp
  (OpenMode          INT NOT NULL,
   DataSpecId        CHAR(4) NOT NULL,
   RecType           NCHAR(2) NOT NULL,
   LastFileTimestamp NCHAR(14) NULL,
   LastFileName      NVARCHAR(255) NULL,
   Timestamp01       DATETIME NULL,
   Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
   CONSTRAINT PK_ConfigLastTimestamp PRIMARY KEY CLUSTERED(OpenMode ASC,DataSpecId ASC,RecType ASC)
   WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 80,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigOperation
  (Id                                   INT NOT NULL,
   IsReceiveEventMode                   BIT NOT NULL,
   IsDispatchEventMode                  BIT NOT NULL,
   IsUpdateOddsByCrawlMode              BIT NOT NULL,
   IsPredictMode                        BIT NOT NULL,
   IsBetMode                            BIT NOT NULL,
   IsHoldExtraBet                       BIT NOT NULL,
   IsBetOverwrite                       BIT NOT NULL,
   IsNotifyResult                       BIT NOT NULL,
   IsNotifyLine                         BIT NOT NULL,
   IsEntityQueueModeLinkedList          BIT NOT NULL,
   IsPredictByTrackTypeAndRaceCondition BIT NOT NULL,
   IsNeymanPearsonStep                  BIT NOT NULL,
   IsBayesianStep                       BIT NOT NULL,
   IsSoundReceiveEvent                  BIT NOT NULL,
   IsSoundDispatch                      BIT NOT NULL,
   IsSoundCrawlOdds                     BIT NOT NULL,
   IsSoundUpdateDbCommon                BIT NOT NULL,
   Timestamp01                          DATETIME NULL,
   IsVer490                             BIT NOT NULL,
   Timestamp02                          DATETIME NULL,
   Guid                                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
   CONSTRAINT PK_ConfigOperation PRIMARY KEY CLUSTERED(Id ASC)
   WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigPredict
  (Id                       INT NOT NULL,
   BasicT1C6A00             BIT NOT NULL,
   BasicT2C6A00             BIT NOT NULL,
   BasicT1C0A00             BIT NOT NULL,
   BasicT2C0A00             BIT NOT NULL,
   BasicT3C0A00             BIT NOT NULL,
   PrevT1C0A00              BIT NOT NULL,
   PrevT2C0A00              BIT NOT NULL,
   PrevT3C0A00              BIT NOT NULL,
   BayesianBlinker          BIT NOT NULL,
   BayesianCoatColor        BIT NOT NULL,
   BayesianGen01            BIT NOT NULL,
   BayesianGen02            BIT NOT NULL,
   BayesianGen05            BIT NOT NULL,
   BayesianHandicap         BIT NOT NULL,
   BayesianHorse            BIT NOT NULL,
   BayesianHorseGenre       BIT NOT NULL,
   BayesianHorseNum         BIT NOT NULL,
   BayesianJockey           BIT NOT NULL,
   BayesianJockeyApprentice BIT NOT NULL,
   BayesianOwner            BIT NOT NULL,
   BayesianRegion           BIT NOT NULL,
   BayesianSex              BIT NOT NULL,
   BayesianTrainer          BIT NOT NULL,
   Win5                     BIT NOT NULL,
   Timestamp01              DATETIME NULL,
   Guid                     UNIQUEIDENTIFIER ROWGUIDCOL NULL,
   CONSTRAINT PK_ConfigPredict PRIMARY KEY CLUSTERED(Id ASC)
   WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigRecType
  (Id          INT NOT NULL,
   DifnRa      BIT NOT NULL,
   DifnSe      BIT NOT NULL,
   DifnBn      BIT NOT NULL,
   DifnBr      BIT NOT NULL,
   DifnCh      BIT NOT NULL,
   DifnKs      BIT NOT NULL,
   DifnUm      BIT NOT NULL,
   DifnRc      BIT NOT NULL,
   RaceRa      BIT NOT NULL,
   RaceSe      BIT NOT NULL,
   RaceHr      BIT NOT NULL,
   RaceH1      BIT NOT NULL,
   RaceH6      BIT NOT NULL,
   RaceO1      BIT NOT NULL,
   RaceO2      BIT NOT NULL,
   RaceO3      BIT NOT NULL,
   RaceO4      BIT NOT NULL,
   RaceO5      BIT NOT NULL,
   RaceO6      BIT NOT NULL,
   RaceWf      BIT NOT NULL,
   RaceJg      BIT NOT NULL,
   BldnHn      BIT NOT NULL,
   BldnSk      BIT NOT NULL,
   BldnBt      BIT NOT NULL,
   MingDm      BIT NOT NULL,
   MingTm      BIT NOT NULL,
   SnpnCk      BIT NOT NULL,
   SlopHc      BIT NOT NULL,
   YschYs      BIT NOT NULL,
   HosnHs      BIT NOT NULL,
   HoyuHy      BIT NOT NULL,
   CommCs      BIT NOT NULL,
   TokuTk      BIT NOT NULL,
   WoodWc      BIT NOT NULL,
   Timestamp01 DATETIME NULL,
   Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
   CONSTRAINT PK_ConfigRecType PRIMARY KEY CLUSTERED(Id ASC)
   WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
  )
ON [PRIMARY]
GO
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    1,
    N'DIFN',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    2,
    N'DIFN',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    3,
    N'DIFN',
    N'BN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0cb67b76-b0a1-466b-990d-d9a1cef566cf'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    4,
    N'DIFN',
    N'BR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'35120b32-5d61-4399-8cf5-ddf877bf050c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    5,
    N'DIFN',
    N'CH',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5c6d0489-aaf0-4b73-b919-a3c98a72fac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    6,
    N'DIFN',
    N'KS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'db5859fa-6474-4dbc-a582-721b8608c880'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    7,
    N'DIFN',
    N'UM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1d168ee9-e560-4a36-983d-8998d98d7d83'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    8,
    N'DIFN',
    N'RC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd8949ab8-d1ed-4a72-80fe-0b3af207f651'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    1,
    N'RACE',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    2,
    N'RACE',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    3,
    N'RACE',
    N'HR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'92ecf84d-3874-4002-8d2a-e7390849c49d'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    4,
    N'RACE',
    N'H1',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'f190c9ec-4d21-4560-a813-9a2b8d94affd'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    5,
    N'RACE',
    N'H6',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5ad86b3c-21bf-40d6-ab9e-6c828ffa7cd7'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    6,
    N'RACE',
    N'O1',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'4b440001-67f8-4b48-8b1e-4059fb211445'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    7,
    N'RACE',
    N'O2',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'79ffcd02-754d-493e-b530-f6c0351af743'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    8,
    N'RACE',
    N'O3',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'57ab3618-1ac3-428c-967e-65ee1ff75993'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    9,
    N'RACE',
    N'O4',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'fe9397c3-0868-4653-a3a2-8019d52ffd57'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    10,
    N'RACE',
    N'O5',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd10b942c-bee0-495e-9b4e-5c2b748ec250'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    11,
    N'RACE',
    N'O6',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'69817618-189f-4906-8bac-58c4308aa500'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    12,
    N'RACE',
    N'WF',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1f5428fd-4446-4cca-a830-474d26f3ff28'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    13,
    N'RACE',
    N'JG',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'a4f2c7c5-1b41-4e4b-abc5-9f042e6c6f98'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    4,
    1,
    N'BLDN',
    N'HN',
    CAST(N'2023-06-05T11:31:19.300' AS DATETIME),
    N'e74117be-f836-4f28-9dce-ee23a2ec0da3'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    4,
    2,
    N'BLDN',
    N'SK',
    CAST(N'2023-06-05T11:31:31.117' AS DATETIME),
    N'd30f11b9-8155-47da-b3e3-1e3ecd162e69'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    4,
    3,
    N'BLDN',
    N'BT',
    CAST(N'2023-06-05T11:31:39.483' AS DATETIME),
    N'c67bc830-e101-4c18-b124-d5e49873b319'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    6,
    1,
    N'MING',
    N'DM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'4cd77e2f-c198-4ca3-bbc6-2c9e3cfc3ccb'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    6,
    2,
    N'MING',
    N'TM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'fdcb51a9-0538-43b2-8cd6-7b225ecc6776'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    7,
    1,
    N'SNPN',
    N'CK',
    CAST(N'2023-06-05T11:32:29.610' AS DATETIME),
    N'b40eaf9d-d407-4ce7-a5fd-dc3c86bc006d'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    9,
    1,
    N'SLOP',
    N'HC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'60644858-f1b8-47de-81e6-c0f981d313a2'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    10,
    1,
    N'YSCH',
    N'YS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'70dea4bc-954d-4e65-8d9d-6be02d933530'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    11,
    1,
    N'HOSN',
    N'HS',
    CAST(N'2023-06-05T11:33:04.893' AS DATETIME),
    N'3cafc155-8e43-4cbc-adf9-d62023c1d50a'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    13,
    1,
    N'HOYU',
    N'HY',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'e83031d9-c104-40f0-860b-717bceb4eeaa'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    14,
    1,
    N'COMM',
    N'CS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0c536254-5e90-4afa-ab1d-c819177b3ac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    15,
    1,
    N'TOKU',
    N'TK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'bf904a75-6d36-44b6-a9c1-2f37f8b59ba5'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    16,
    1,
    N'WOOD',
    N'WC',
    CAST(N'2021-09-19T00:00:00.000' AS DATETIME),
    N'bf904a75-6d36-44b6-a9c1-2f37f8b59ba5'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    1,
    N'RACE',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    2,
    N'RACE',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    3,
    N'RACE',
    N'HR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'92ecf84d-3874-4002-8d2a-e7390849c49d'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    4,
    N'RACE',
    N'H1',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'f190c9ec-4d21-4560-a813-9a2b8d94affd'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    5,
    N'RACE',
    N'H6',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5ad86b3c-21bf-40d6-ab9e-6c828ffa7cd7'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    6,
    N'RACE',
    N'O1',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'4b440001-67f8-4b48-8b1e-4059fb211445'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    7,
    N'RACE',
    N'O2',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'79ffcd02-754d-493e-b530-f6c0351af743'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    8,
    N'RACE',
    N'O3',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'57ab3618-1ac3-428c-967e-65ee1ff75993'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    9,
    N'RACE',
    N'O4',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'fe9397c3-0868-4653-a3a2-8019d52ffd57'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    10,
    N'RACE',
    N'O5',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd10b942c-bee0-495e-9b4e-5c2b748ec250'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    11,
    N'RACE',
    N'O6',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'69817618-189f-4906-8bac-58c4308aa500'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    12,
    N'RACE',
    N'WF',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1f5428fd-4446-4cca-a830-474d26f3ff28'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    13,
    N'RACE',
    N'JG',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'a4f2c7c5-1b41-4e4b-abc5-9f042e6c6f98'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    1,
    N'TCVN',
    N'RA',
    CAST(N'2023-06-05T11:34:31.400' AS DATETIME),
    N'b7827806-9abe-4c26-a8db-e0ecf9f5fd9b'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    2,
    N'TCVN',
    N'SE',
    CAST(N'2023-06-05T11:34:41.327' AS DATETIME),
    N'788f5626-ed23-4fae-bf50-1e654a953b4c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    3,
    N'TCVN',
    N'UM',
    CAST(N'2023-06-05T11:34:50.400' AS DATETIME),
    N'01efa22e-6d73-46a9-b70e-d257b2242c6f'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    4,
    N'TCVN',
    N'KS',
    CAST(N'2023-06-05T11:35:07.543' AS DATETIME),
    N'de8679c6-4f93-4496-b0b4-572691572fd7'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    5,
    N'TCVN',
    N'CH',
    CAST(N'2023-06-05T11:35:14.133' AS DATETIME),
    N'6143dab2-8d31-4a3f-80d8-6f8a42221aa7'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    6,
    N'TCVN',
    N'BR',
    CAST(N'2023-06-05T11:35:25.963' AS DATETIME),
    N'f1117d00-f711-401b-9328-d95120df4236'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    7,
    N'TCVN',
    N'BN',
    CAST(N'2023-06-05T11:35:35.997' AS DATETIME),
    N'2e2d2380-931d-472c-9f13-8a328d2444bd'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    8,
    N'TCVN',
    N'RC',
    CAST(N'2023-06-05T11:35:48.893' AS DATETIME),
    N'89a9ce27-a070-41df-b52e-307dcce6dc77'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    4,
    1,
    N'RCVN',
    N'RA',
    CAST(N'2023-06-05T11:36:00.083' AS DATETIME),
    N'9620c581-d4af-4a72-a334-a87f0cec1d74'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    4,
    2,
    N'RCVN',
    N'SE',
    CAST(N'2023-06-05T11:36:08.670' AS DATETIME),
    N'65555879-7f42-49dc-aa22-8cb7db138ad3'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    4,
    3,
    N'RCVN',
    N'UM',
    CAST(N'2023-06-05T11:36:17.460' AS DATETIME),
    N'585c8343-1f48-4a58-8db8-8052ac9b07d3'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    4,
    4,
    N'RCVN',
    N'KS',
    CAST(N'2023-06-05T11:36:26.580' AS DATETIME),
    N'a179fdb1-e123-43ac-a1d7-ca9a274ed56a'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    4,
    5,
    N'RCVN',
    N'CH',
    CAST(N'2023-06-05T11:36:36.647' AS DATETIME),
    N'0aaa746b-8c4c-4b0e-9db9-d4a80f76fc8e'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    4,
    6,
    N'RCVN',
    N'BR',
    CAST(N'2023-06-05T11:36:44.187' AS DATETIME),
    N'a260bd01-4a15-4e6f-a7be-40a14e5a180c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    4,
    7,
    N'RCVN',
    N'BN',
    CAST(N'2023-06-05T11:36:55.383' AS DATETIME),
    N'cd026c35-7cf6-411b-83c6-714b81ad3b04'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    4,
    8,
    N'RCVN',
    N'RC',
    CAST(N'2023-06-05T11:37:01.483' AS DATETIME),
    N'57d48e06-aa43-43fc-be07-ab9dbdfe4cf1'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    6,
    1,
    N'SNPN',
    N'CK',
    CAST(N'2023-06-05T11:37:33.630' AS DATETIME),
    N'a642dfe2-463e-437f-ad96-9ea22edeecb2'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    8,
    1,
    N'TOKU',
    N'TK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'bf904a75-6d36-44b6-a9c1-2f37f8b59ba5'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    9,
    1,
    N'WOOD',
    N'WC',
    CAST(N'2021-09-19T00:00:00.000' AS DATETIME),
    N'bf904a75-6d36-44b6-a9c1-2f37f8b59ba5'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    1,
    1,
    N'DIFN',
    N'BN',
    CAST(N'2023-06-05T11:38:21.890' AS DATETIME),
    N'0a6992d8-7bc6-44c4-beb1-17ddcc3a7974'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    1,
    2,
    N'DIFN',
    N'BR',
    CAST(N'2023-06-05T11:38:28.880' AS DATETIME),
    N'e52365a8-1aac-4870-8135-0c4666266417'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    1,
    3,
    N'DIFN',
    N'CH',
    CAST(N'2023-06-05T11:38:36.183' AS DATETIME),
    N'a47560e0-e951-41f0-8cd8-292e8759ef3c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    1,
    4,
    N'DIFN',
    N'KS',
    CAST(N'2023-06-05T11:38:45.153' AS DATETIME),
    N'c41e5c2e-551f-4ea0-b9c3-73deb318a299'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    1,
    5,
    N'DIFN',
    N'UM',
    CAST(N'2023-06-05T11:38:52.480' AS DATETIME),
    N'b14dfc84-023d-40ef-b7ae-fa2961e1d623'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    1,
    6,
    N'DIFN',
    N'RC',
    CAST(N'2023-06-05T11:38:59.593' AS DATETIME),
    N'070daa0a-05f1-4335-bc9a-be6259a1972f'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    1,
    N'RACE',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    2,
    N'RACE',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    3,
    N'RACE',
    N'HR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'92ecf84d-3874-4002-8d2a-e7390849c49d'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    4,
    N'RACE',
    N'H1',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'f190c9ec-4d21-4560-a813-9a2b8d94affd'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    5,
    N'RACE',
    N'H6',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5ad86b3c-21bf-40d6-ab9e-6c828ffa7cd7'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    6,
    N'RACE',
    N'O1',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'4b440001-67f8-4b48-8b1e-4059fb211445'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    7,
    N'RACE',
    N'O2',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'79ffcd02-754d-493e-b530-f6c0351af743'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    8,
    N'RACE',
    N'O3',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'57ab3618-1ac3-428c-967e-65ee1ff75993'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    9,
    N'RACE',
    N'O4',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'fe9397c3-0868-4653-a3a2-8019d52ffd57'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    10,
    N'RACE',
    N'O5',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd10b942c-bee0-495e-9b4e-5c2b748ec250'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    11,
    N'RACE',
    N'O6',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'69817618-189f-4906-8bac-58c4308aa500'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    12,
    N'RACE',
    N'WF',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1f5428fd-4446-4cca-a830-474d26f3ff28'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    13,
    N'RACE',
    N'JG',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'a4f2c7c5-1b41-4e4b-abc5-9f042e6c6f98'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    4,
    1,
    N'BLDN',
    N'HN',
    CAST(N'2023-06-05T11:39:09.713' AS DATETIME),
    N'1a007ebb-840d-4516-893d-ababcaa6887e'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    4,
    2,
    N'BLDN',
    N'SK',
    CAST(N'2023-06-05T11:39:18.047' AS DATETIME),
    N'4b717669-58b7-4c4d-b74d-01d37a81978c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    4,
    3,
    N'BLDN',
    N'BT',
    CAST(N'2023-06-05T11:39:27.687' AS DATETIME),
    N'f41b0299-766c-4076-8e51-2d1de03ab10c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    6,
    1,
    N'MING',
    N'DM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'4cd77e2f-c198-4ca3-bbc6-2c9e3cfc3ccb'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    6,
    2,
    N'MING',
    N'TM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'fdcb51a9-0538-43b2-8cd6-7b225ecc6776'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    7,
    1,
    N'SNPN',
    N'CK',
    CAST(N'2023-06-05T11:39:39.400' AS DATETIME),
    N'469802a3-d39d-4b67-ac95-10e862416cd3'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    9,
    1,
    N'SLOP',
    N'HC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'60644858-f1b8-47de-81e6-c0f981d313a2'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    10,
    1,
    N'YSCH',
    N'YS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'70dea4bc-954d-4e65-8d9d-6be02d933530'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    11,
    1,
    N'HOSN',
    N'HS',
    CAST(N'2023-06-05T11:39:47.933' AS DATETIME),
    N'12c6c60a-92e4-47ea-bfd7-644c7d276808'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    13,
    1,
    N'HOYU',
    N'HY',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'e83031d9-c104-40f0-860b-717bceb4eeaa'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    14,
    1,
    N'COMM',
    N'CS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0c536254-5e90-4afa-ab1d-c819177b3ac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    15,
    1,
    N'TOKU',
    N'TK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'bf904a75-6d36-44b6-a9c1-2f37f8b59ba5'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    16,
    1,
    N'WOOD',
    N'WC',
    CAST(N'2021-09-19T00:00:00.000' AS DATETIME),
    N'bf904a75-6d36-44b6-a9c1-2f37f8b59ba5'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    91,
    2,
    1,
    N'DIFF',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    91,
    2,
    2,
    N'DIFF',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
GO
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    91,
    2,
    3,
    N'DIFF',
    N'BN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0cb67b76-b0a1-466b-990d-d9a1cef566cf'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    91,
    2,
    4,
    N'DIFF',
    N'BR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'35120b32-5d61-4399-8cf5-ddf877bf050c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    91,
    2,
    5,
    N'DIFF',
    N'CH',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5c6d0489-aaf0-4b73-b919-a3c98a72fac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    91,
    2,
    6,
    N'DIFF',
    N'KS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'db5859fa-6474-4dbc-a582-721b8608c880'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    91,
    2,
    7,
    N'DIFF',
    N'UM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1d168ee9-e560-4a36-983d-8998d98d7d83'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    91,
    2,
    8,
    N'DIFF',
    N'RC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd8949ab8-d1ed-4a72-80fe-0b3af207f651'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    91,
    5,
    1,
    N'BLOD',
    N'HN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'32684df5-1e6d-40b4-9622-fe1175403700'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    91,
    5,
    2,
    N'BLOD',
    N'SK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'a7136b8f-0b87-4e18-a71e-741f0dc2e033'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    91,
    5,
    3,
    N'BLOD',
    N'BT',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'6f049de9-c867-4588-b24e-2ae4efc9ddf6'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    91,
    8,
    1,
    N'SNAP',
    N'CK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'103ff73a-fed7-418e-a53d-c7ffdb7d3c16'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    91,
    12,
    1,
    N'HOSE',
    N'HS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'383780a9-5b50-4a51-b6a4-8955b653e6d1'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    92,
    3,
    1,
    N'TCOV',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    92,
    3,
    2,
    N'TCOV',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    92,
    3,
    3,
    N'TCOV',
    N'UM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1d168ee9-e560-4a36-983d-8998d98d7d83'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    92,
    3,
    4,
    N'TCOV',
    N'KS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'db5859fa-6474-4dbc-a582-721b8608c880'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    92,
    3,
    5,
    N'TCOV',
    N'CH',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5c6d0489-aaf0-4b73-b919-a3c98a72fac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    92,
    3,
    6,
    N'TCOV',
    N'BR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'35120b32-5d61-4399-8cf5-ddf877bf050c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    92,
    3,
    7,
    N'TCOV',
    N'BN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0cb67b76-b0a1-466b-990d-d9a1cef566cf'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    92,
    3,
    8,
    N'TCOV',
    N'RC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd8949ab8-d1ed-4a72-80fe-0b3af207f651'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    92,
    5,
    1,
    N'RCOV',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    92,
    5,
    2,
    N'RCOV',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    92,
    5,
    3,
    N'RCOV',
    N'UM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1d168ee9-e560-4a36-983d-8998d98d7d83'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    92,
    5,
    4,
    N'RCOV',
    N'KS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'db5859fa-6474-4dbc-a582-721b8608c880'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    92,
    5,
    5,
    N'RCOV',
    N'CH',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5c6d0489-aaf0-4b73-b919-a3c98a72fac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    92,
    5,
    6,
    N'RCOV',
    N'BR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'35120b32-5d61-4399-8cf5-ddf877bf050c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    92,
    5,
    7,
    N'RCOV',
    N'BN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0cb67b76-b0a1-466b-990d-d9a1cef566cf'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    92,
    5,
    8,
    N'RCOV',
    N'RC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd8949ab8-d1ed-4a72-80fe-0b3af207f651'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    92,
    7,
    1,
    N'SNAP',
    N'CK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'103ff73a-fed7-418e-a53d-c7ffdb7d3c16'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    93,
    2,
    1,
    N'DIFF',
    N'BN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0cb67b76-b0a1-466b-990d-d9a1cef566cf'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    93,
    2,
    2,
    N'DIFF',
    N'BR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'35120b32-5d61-4399-8cf5-ddf877bf050c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    93,
    2,
    3,
    N'DIFF',
    N'CH',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5c6d0489-aaf0-4b73-b919-a3c98a72fac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    93,
    2,
    4,
    N'DIFF',
    N'KS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'db5859fa-6474-4dbc-a582-721b8608c880'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    93,
    2,
    5,
    N'DIFF',
    N'UM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1d168ee9-e560-4a36-983d-8998d98d7d83'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    93,
    2,
    6,
    N'DIFF',
    N'RC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd8949ab8-d1ed-4a72-80fe-0b3af207f651'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    93,
    5,
    1,
    N'BLOD',
    N'HN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'32684df5-1e6d-40b4-9622-fe1175403700'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    93,
    5,
    2,
    N'BLOD',
    N'SK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'a7136b8f-0b87-4e18-a71e-741f0dc2e033'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    93,
    5,
    3,
    N'BLOD',
    N'BT',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'6f049de9-c867-4588-b24e-2ae4efc9ddf6'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    93,
    8,
    1,
    N'SNAP',
    N'CK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'103ff73a-fed7-418e-a53d-c7ffdb7d3c16'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    93,
    12,
    1,
    N'HOSE',
    N'HS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'383780a9-5b50-4a51-b6a4-8955b653e6d1'
  )
GO
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    1,
    N'DIFF',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    2,
    N'DIFF',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    3,
    N'DIFF',
    N'BN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0cb67b76-b0a1-466b-990d-d9a1cef566cf'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    4,
    N'DIFF',
    N'BR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'35120b32-5d61-4399-8cf5-ddf877bf050c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    5,
    N'DIFF',
    N'CH',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5c6d0489-aaf0-4b73-b919-a3c98a72fac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    6,
    N'DIFF',
    N'KS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'db5859fa-6474-4dbc-a582-721b8608c880'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    7,
    N'DIFF',
    N'UM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1d168ee9-e560-4a36-983d-8998d98d7d83'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    8,
    N'DIFF',
    N'RC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd8949ab8-d1ed-4a72-80fe-0b3af207f651'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    1,
    N'RACE',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    2,
    N'RACE',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    3,
    N'RACE',
    N'HR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'92ecf84d-3874-4002-8d2a-e7390849c49d'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    4,
    N'RACE',
    N'H1',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'f190c9ec-4d21-4560-a813-9a2b8d94affd'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    5,
    N'RACE',
    N'H6',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5ad86b3c-21bf-40d6-ab9e-6c828ffa7cd7'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    6,
    N'RACE',
    N'O1',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'4b440001-67f8-4b48-8b1e-4059fb211445'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    7,
    N'RACE',
    N'O2',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'79ffcd02-754d-493e-b530-f6c0351af743'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    8,
    N'RACE',
    N'O3',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'57ab3618-1ac3-428c-967e-65ee1ff75993'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    9,
    N'RACE',
    N'O4',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'fe9397c3-0868-4653-a3a2-8019d52ffd57'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    10,
    N'RACE',
    N'O5',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd10b942c-bee0-495e-9b4e-5c2b748ec250'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    11,
    N'RACE',
    N'O6',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'69817618-189f-4906-8bac-58c4308aa500'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    12,
    N'RACE',
    N'WF',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1f5428fd-4446-4cca-a830-474d26f3ff28'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    13,
    N'RACE',
    N'JG',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'a4f2c7c5-1b41-4e4b-abc5-9f042e6c6f98'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    1,
    N'BLOD',
    N'HN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'32684df5-1e6d-40b4-9622-fe1175403700'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    2,
    N'BLOD',
    N'SK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'a7136b8f-0b87-4e18-a71e-741f0dc2e033'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    3,
    N'BLOD',
    N'BT',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'6f049de9-c867-4588-b24e-2ae4efc9ddf6'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    4,
    1,
    N'MING',
    N'DM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'4cd77e2f-c198-4ca3-bbc6-2c9e3cfc3ccb'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    4,
    2,
    N'MING',
    N'TM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'fdcb51a9-0538-43b2-8cd6-7b225ecc6776'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    5,
    1,
    N'SNAP',
    N'CK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'103ff73a-fed7-418e-a53d-c7ffdb7d3c16'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    6,
    1,
    N'SLOP',
    N'HC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'60644858-f1b8-47de-81e6-c0f981d313a2'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    7,
    1,
    N'YSCH',
    N'YS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'70dea4bc-954d-4e65-8d9d-6be02d933530'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    8,
    1,
    N'HOSE',
    N'HS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'383780a9-5b50-4a51-b6a4-8955b653e6d1'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    9,
    1,
    N'HOYU',
    N'HY',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'e83031d9-c104-40f0-860b-717bceb4eeaa'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    10,
    1,
    N'COMM',
    N'CS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0c536254-5e90-4afa-ab1d-c819177b3ac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    11,
    1,
    N'TOKU',
    N'TK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'bf904a75-6d36-44b6-a9c1-2f37f8b59ba5'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    12,
    1,
    N'WOOD',
    N'WC',
    CAST(N'2021-09-19T00:00:00.000' AS DATETIME),
    N'bf904a75-6d36-44b6-a9c1-2f37f8b59ba5'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    1,
    N'RACE',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    2,
    N'RACE',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    3,
    N'RACE',
    N'HR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'92ecf84d-3874-4002-8d2a-e7390849c49d'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    4,
    N'RACE',
    N'H1',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'f190c9ec-4d21-4560-a813-9a2b8d94affd'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    5,
    N'RACE',
    N'H6',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5ad86b3c-21bf-40d6-ab9e-6c828ffa7cd7'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    6,
    N'RACE',
    N'O1',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'4b440001-67f8-4b48-8b1e-4059fb211445'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    7,
    N'RACE',
    N'O2',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'79ffcd02-754d-493e-b530-f6c0351af743'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    8,
    N'RACE',
    N'O3',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'57ab3618-1ac3-428c-967e-65ee1ff75993'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    9,
    N'RACE',
    N'O4',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'fe9397c3-0868-4653-a3a2-8019d52ffd57'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    10,
    N'RACE',
    N'O5',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd10b942c-bee0-495e-9b4e-5c2b748ec250'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    11,
    N'RACE',
    N'O6',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'69817618-189f-4906-8bac-58c4308aa500'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    12,
    N'RACE',
    N'WF',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1f5428fd-4446-4cca-a830-474d26f3ff28'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    13,
    N'RACE',
    N'JG',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'a4f2c7c5-1b41-4e4b-abc5-9f042e6c6f98'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    1,
    N'TCOV',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    2,
    N'TCOV',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    3,
    N'TCOV',
    N'UM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1d168ee9-e560-4a36-983d-8998d98d7d83'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    4,
    N'TCOV',
    N'KS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'db5859fa-6474-4dbc-a582-721b8608c880'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    5,
    N'TCOV',
    N'CH',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5c6d0489-aaf0-4b73-b919-a3c98a72fac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    6,
    N'TCOV',
    N'BR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'35120b32-5d61-4399-8cf5-ddf877bf050c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    7,
    N'TCOV',
    N'BN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0cb67b76-b0a1-466b-990d-d9a1cef566cf'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    8,
    N'TCOV',
    N'RC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd8949ab8-d1ed-4a72-80fe-0b3af207f651'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    3,
    1,
    N'RCOV',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    3,
    2,
    N'RCOV',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    3,
    3,
    N'RCOV',
    N'UM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1d168ee9-e560-4a36-983d-8998d98d7d83'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    3,
    4,
    N'RCOV',
    N'KS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'db5859fa-6474-4dbc-a582-721b8608c880'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    3,
    5,
    N'RCOV',
    N'CH',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5c6d0489-aaf0-4b73-b919-a3c98a72fac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    3,
    6,
    N'RCOV',
    N'BR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'35120b32-5d61-4399-8cf5-ddf877bf050c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    3,
    7,
    N'RCOV',
    N'BN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0cb67b76-b0a1-466b-990d-d9a1cef566cf'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    3,
    8,
    N'RCOV',
    N'RC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd8949ab8-d1ed-4a72-80fe-0b3af207f651'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    4,
    1,
    N'SNAP',
    N'CK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'103ff73a-fed7-418e-a53d-c7ffdb7d3c16'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    5,
    1,
    N'TOKU',
    N'TK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'bf904a75-6d36-44b6-a9c1-2f37f8b59ba5'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    6,
    1,
    N'WOOD',
    N'WC',
    CAST(N'2021-09-19T00:00:00.000' AS DATETIME),
    N'bf904a75-6d36-44b6-a9c1-2f37f8b59ba5'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    1,
    1,
    N'DIFF',
    N'BN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0cb67b76-b0a1-466b-990d-d9a1cef566cf'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    1,
    2,
    N'DIFF',
    N'BR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'35120b32-5d61-4399-8cf5-ddf877bf050c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    1,
    3,
    N'DIFF',
    N'CH',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5c6d0489-aaf0-4b73-b919-a3c98a72fac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    1,
    4,
    N'DIFF',
    N'KS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'db5859fa-6474-4dbc-a582-721b8608c880'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    1,
    5,
    N'DIFF',
    N'UM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1d168ee9-e560-4a36-983d-8998d98d7d83'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    1,
    6,
    N'DIFF',
    N'RC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd8949ab8-d1ed-4a72-80fe-0b3af207f651'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    2,
    1,
    N'RACE',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    2,
    2,
    N'RACE',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    2,
    3,
    N'RACE',
    N'HR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'92ecf84d-3874-4002-8d2a-e7390849c49d'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    2,
    4,
    N'RACE',
    N'H1',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'f190c9ec-4d21-4560-a813-9a2b8d94affd'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    2,
    5,
    N'RACE',
    N'H6',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5ad86b3c-21bf-40d6-ab9e-6c828ffa7cd7'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    2,
    6,
    N'RACE',
    N'O1',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'4b440001-67f8-4b48-8b1e-4059fb211445'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    2,
    7,
    N'RACE',
    N'O2',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'79ffcd02-754d-493e-b530-f6c0351af743'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    2,
    8,
    N'RACE',
    N'O3',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'57ab3618-1ac3-428c-967e-65ee1ff75993'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    2,
    9,
    N'RACE',
    N'O4',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'fe9397c3-0868-4653-a3a2-8019d52ffd57'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    2,
    10,
    N'RACE',
    N'O5',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd10b942c-bee0-495e-9b4e-5c2b748ec250'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    2,
    11,
    N'RACE',
    N'O6',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'69817618-189f-4906-8bac-58c4308aa500'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    2,
    12,
    N'RACE',
    N'WF',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1f5428fd-4446-4cca-a830-474d26f3ff28'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    2,
    13,
    N'RACE',
    N'JG',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'a4f2c7c5-1b41-4e4b-abc5-9f042e6c6f98'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    1,
    N'BLOD',
    N'HN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'32684df5-1e6d-40b4-9622-fe1175403700'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    2,
    N'BLOD',
    N'SK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'a7136b8f-0b87-4e18-a71e-741f0dc2e033'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    3,
    N'BLOD',
    N'BT',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'6f049de9-c867-4588-b24e-2ae4efc9ddf6'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    4,
    1,
    N'MING',
    N'DM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'4cd77e2f-c198-4ca3-bbc6-2c9e3cfc3ccb'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    4,
    2,
    N'MING',
    N'TM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'fdcb51a9-0538-43b2-8cd6-7b225ecc6776'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    5,
    1,
    N'SNAP',
    N'CK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'103ff73a-fed7-418e-a53d-c7ffdb7d3c16'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    6,
    1,
    N'SLOP',
    N'HC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'60644858-f1b8-47de-81e6-c0f981d313a2'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    7,
    1,
    N'YSCH',
    N'YS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'70dea4bc-954d-4e65-8d9d-6be02d933530'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    8,
    1,
    N'HOSE',
    N'HS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'383780a9-5b50-4a51-b6a4-8955b653e6d1'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    9,
    1,
    N'HOYU',
    N'HY',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'e83031d9-c104-40f0-860b-717bceb4eeaa'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    10,
    1,
    N'COMM',
    N'CS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0c536254-5e90-4afa-ab1d-c819177b3ac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    11,
    1,
    N'TOKU',
    N'TK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'bf904a75-6d36-44b6-a9c1-2f37f8b59ba5'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202307
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    12,
    1,
    N'WOOD',
    N'WC',
    CAST(N'2021-09-19T00:00:00.000' AS DATETIME),
    N'bf904a75-6d36-44b6-a9c1-2f37f8b59ba5'
  )
GO
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    1,
    N'DIFN',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    2,
    N'DIFN',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    3,
    N'DIFN',
    N'BN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0cb67b76-b0a1-466b-990d-d9a1cef566cf'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    4,
    N'DIFN',
    N'BR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'35120b32-5d61-4399-8cf5-ddf877bf050c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    5,
    N'DIFN',
    N'CH',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5c6d0489-aaf0-4b73-b919-a3c98a72fac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    6,
    N'DIFN',
    N'KS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'db5859fa-6474-4dbc-a582-721b8608c880'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    7,
    N'DIFN',
    N'UM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1d168ee9-e560-4a36-983d-8998d98d7d83'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    8,
    N'DIFN',
    N'RC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd8949ab8-d1ed-4a72-80fe-0b3af207f651'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    1,
    N'DIFF',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    2,
    N'DIFF',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    3,
    N'DIFF',
    N'BN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0cb67b76-b0a1-466b-990d-d9a1cef566cf'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    4,
    N'DIFF',
    N'BR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'35120b32-5d61-4399-8cf5-ddf877bf050c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    5,
    N'DIFF',
    N'CH',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5c6d0489-aaf0-4b73-b919-a3c98a72fac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    6,
    N'DIFF',
    N'KS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'db5859fa-6474-4dbc-a582-721b8608c880'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    7,
    N'DIFF',
    N'UM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1d168ee9-e560-4a36-983d-8998d98d7d83'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    2,
    8,
    N'DIFF',
    N'RC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd8949ab8-d1ed-4a72-80fe-0b3af207f651'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    1,
    N'RACE',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    2,
    N'RACE',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    3,
    N'RACE',
    N'HR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'92ecf84d-3874-4002-8d2a-e7390849c49d'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    4,
    N'RACE',
    N'H1',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'f190c9ec-4d21-4560-a813-9a2b8d94affd'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    5,
    N'RACE',
    N'H6',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5ad86b3c-21bf-40d6-ab9e-6c828ffa7cd7'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    6,
    N'RACE',
    N'O1',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'4b440001-67f8-4b48-8b1e-4059fb211445'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    7,
    N'RACE',
    N'O2',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'79ffcd02-754d-493e-b530-f6c0351af743'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    8,
    N'RACE',
    N'O3',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'57ab3618-1ac3-428c-967e-65ee1ff75993'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    9,
    N'RACE',
    N'O4',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'fe9397c3-0868-4653-a3a2-8019d52ffd57'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    10,
    N'RACE',
    N'O5',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd10b942c-bee0-495e-9b4e-5c2b748ec250'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    11,
    N'RACE',
    N'O6',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'69817618-189f-4906-8bac-58c4308aa500'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    12,
    N'RACE',
    N'WF',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1f5428fd-4446-4cca-a830-474d26f3ff28'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    3,
    13,
    N'RACE',
    N'JG',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'a4f2c7c5-1b41-4e4b-abc5-9f042e6c6f98'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    4,
    1,
    N'BLDN',
    N'HN',
    CAST(N'2023-06-05T11:31:19.300' AS DATETIME),
    N'e74117be-f836-4f28-9dce-ee23a2ec0da3'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    4,
    2,
    N'BLDN',
    N'SK',
    CAST(N'2023-06-05T11:31:31.117' AS DATETIME),
    N'd30f11b9-8155-47da-b3e3-1e3ecd162e69'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    4,
    3,
    N'BLDN',
    N'BT',
    CAST(N'2023-06-05T11:31:39.483' AS DATETIME),
    N'c67bc830-e101-4c18-b124-d5e49873b319'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    5,
    1,
    N'BLOD',
    N'HN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'32684df5-1e6d-40b4-9622-fe1175403700'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    5,
    2,
    N'BLOD',
    N'SK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'a7136b8f-0b87-4e18-a71e-741f0dc2e033'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    5,
    3,
    N'BLOD',
    N'BT',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'6f049de9-c867-4588-b24e-2ae4efc9ddf6'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    6,
    1,
    N'MING',
    N'DM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'4cd77e2f-c198-4ca3-bbc6-2c9e3cfc3ccb'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    6,
    2,
    N'MING',
    N'TM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'fdcb51a9-0538-43b2-8cd6-7b225ecc6776'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    7,
    1,
    N'SNPN',
    N'CK',
    CAST(N'2023-06-05T11:32:29.610' AS DATETIME),
    N'b40eaf9d-d407-4ce7-a5fd-dc3c86bc006d'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    8,
    1,
    N'SNAP',
    N'CK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'103ff73a-fed7-418e-a53d-c7ffdb7d3c16'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    9,
    1,
    N'SLOP',
    N'HC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'60644858-f1b8-47de-81e6-c0f981d313a2'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    10,
    1,
    N'YSCH',
    N'YS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'70dea4bc-954d-4e65-8d9d-6be02d933530'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    11,
    1,
    N'HOSN',
    N'HS',
    CAST(N'2023-06-05T11:33:04.893' AS DATETIME),
    N'3cafc155-8e43-4cbc-adf9-d62023c1d50a'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    12,
    1,
    N'HOSE',
    N'HS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'383780a9-5b50-4a51-b6a4-8955b653e6d1'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    13,
    1,
    N'HOYU',
    N'HY',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'e83031d9-c104-40f0-860b-717bceb4eeaa'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    14,
    1,
    N'COMM',
    N'CS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0c536254-5e90-4afa-ab1d-c819177b3ac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    15,
    1,
    N'TOKU',
    N'TK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'bf904a75-6d36-44b6-a9c1-2f37f8b59ba5'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    16,
    1,
    N'WOOD',
    N'WC',
    CAST(N'2021-09-19T00:00:00.000' AS DATETIME),
    N'bf904a75-6d36-44b6-a9c1-2f37f8b59ba5'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    1,
    N'RACE',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    2,
    N'RACE',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    3,
    N'RACE',
    N'HR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'92ecf84d-3874-4002-8d2a-e7390849c49d'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    4,
    N'RACE',
    N'H1',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'f190c9ec-4d21-4560-a813-9a2b8d94affd'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    5,
    N'RACE',
    N'H6',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5ad86b3c-21bf-40d6-ab9e-6c828ffa7cd7'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    6,
    N'RACE',
    N'O1',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'4b440001-67f8-4b48-8b1e-4059fb211445'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    7,
    N'RACE',
    N'O2',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'79ffcd02-754d-493e-b530-f6c0351af743'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    8,
    N'RACE',
    N'O3',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'57ab3618-1ac3-428c-967e-65ee1ff75993'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    9,
    N'RACE',
    N'O4',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'fe9397c3-0868-4653-a3a2-8019d52ffd57'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    10,
    N'RACE',
    N'O5',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd10b942c-bee0-495e-9b4e-5c2b748ec250'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    11,
    N'RACE',
    N'O6',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'69817618-189f-4906-8bac-58c4308aa500'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    12,
    N'RACE',
    N'WF',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1f5428fd-4446-4cca-a830-474d26f3ff28'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    1,
    13,
    N'RACE',
    N'JG',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'a4f2c7c5-1b41-4e4b-abc5-9f042e6c6f98'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    1,
    N'TCVN',
    N'RA',
    CAST(N'2023-06-05T11:34:31.400' AS DATETIME),
    N'b7827806-9abe-4c26-a8db-e0ecf9f5fd9b'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    2,
    N'TCVN',
    N'SE',
    CAST(N'2023-06-05T11:34:41.327' AS DATETIME),
    N'788f5626-ed23-4fae-bf50-1e654a953b4c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    3,
    N'TCVN',
    N'UM',
    CAST(N'2023-06-05T11:34:50.400' AS DATETIME),
    N'01efa22e-6d73-46a9-b70e-d257b2242c6f'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    4,
    N'TCVN',
    N'KS',
    CAST(N'2023-06-05T11:35:07.543' AS DATETIME),
    N'de8679c6-4f93-4496-b0b4-572691572fd7'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    5,
    N'TCVN',
    N'CH',
    CAST(N'2023-06-05T11:35:14.133' AS DATETIME),
    N'6143dab2-8d31-4a3f-80d8-6f8a42221aa7'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    6,
    N'TCVN',
    N'BR',
    CAST(N'2023-06-05T11:35:25.963' AS DATETIME),
    N'f1117d00-f711-401b-9328-d95120df4236'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    7,
    N'TCVN',
    N'BN',
    CAST(N'2023-06-05T11:35:35.997' AS DATETIME),
    N'2e2d2380-931d-472c-9f13-8a328d2444bd'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    2,
    8,
    N'TCVN',
    N'RC',
    CAST(N'2023-06-05T11:35:48.893' AS DATETIME),
    N'89a9ce27-a070-41df-b52e-307dcce6dc77'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    3,
    1,
    N'TCOV',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    3,
    2,
    N'TCOV',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    3,
    3,
    N'TCOV',
    N'UM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1d168ee9-e560-4a36-983d-8998d98d7d83'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    3,
    4,
    N'TCOV',
    N'KS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'db5859fa-6474-4dbc-a582-721b8608c880'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    3,
    5,
    N'TCOV',
    N'CH',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5c6d0489-aaf0-4b73-b919-a3c98a72fac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    3,
    6,
    N'TCOV',
    N'BR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'35120b32-5d61-4399-8cf5-ddf877bf050c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    3,
    7,
    N'TCOV',
    N'BN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0cb67b76-b0a1-466b-990d-d9a1cef566cf'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    3,
    8,
    N'TCOV',
    N'RC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd8949ab8-d1ed-4a72-80fe-0b3af207f651'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    4,
    1,
    N'RCVN',
    N'RA',
    CAST(N'2023-06-05T11:36:00.083' AS DATETIME),
    N'9620c581-d4af-4a72-a334-a87f0cec1d74'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    4,
    2,
    N'RCVN',
    N'SE',
    CAST(N'2023-06-05T11:36:08.670' AS DATETIME),
    N'65555879-7f42-49dc-aa22-8cb7db138ad3'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    4,
    3,
    N'RCVN',
    N'UM',
    CAST(N'2023-06-05T11:36:17.460' AS DATETIME),
    N'585c8343-1f48-4a58-8db8-8052ac9b07d3'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    4,
    4,
    N'RCVN',
    N'KS',
    CAST(N'2023-06-05T11:36:26.580' AS DATETIME),
    N'a179fdb1-e123-43ac-a1d7-ca9a274ed56a'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    4,
    5,
    N'RCVN',
    N'CH',
    CAST(N'2023-06-05T11:36:36.647' AS DATETIME),
    N'0aaa746b-8c4c-4b0e-9db9-d4a80f76fc8e'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    4,
    6,
    N'RCVN',
    N'BR',
    CAST(N'2023-06-05T11:36:44.187' AS DATETIME),
    N'a260bd01-4a15-4e6f-a7be-40a14e5a180c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    4,
    7,
    N'RCVN',
    N'BN',
    CAST(N'2023-06-05T11:36:55.383' AS DATETIME),
    N'cd026c35-7cf6-411b-83c6-714b81ad3b04'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    4,
    8,
    N'RCVN',
    N'RC',
    CAST(N'2023-06-05T11:37:01.483' AS DATETIME),
    N'57d48e06-aa43-43fc-be07-ab9dbdfe4cf1'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    5,
    1,
    N'RCOV',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    5,
    2,
    N'RCOV',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    5,
    3,
    N'RCOV',
    N'UM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1d168ee9-e560-4a36-983d-8998d98d7d83'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    5,
    4,
    N'RCOV',
    N'KS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'db5859fa-6474-4dbc-a582-721b8608c880'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    5,
    5,
    N'RCOV',
    N'CH',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5c6d0489-aaf0-4b73-b919-a3c98a72fac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    5,
    6,
    N'RCOV',
    N'BR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'35120b32-5d61-4399-8cf5-ddf877bf050c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    5,
    7,
    N'RCOV',
    N'BN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0cb67b76-b0a1-466b-990d-d9a1cef566cf'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    5,
    8,
    N'RCOV',
    N'RC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd8949ab8-d1ed-4a72-80fe-0b3af207f651'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    6,
    1,
    N'SNPN',
    N'CK',
    CAST(N'2023-06-05T11:37:33.630' AS DATETIME),
    N'a642dfe2-463e-437f-ad96-9ea22edeecb2'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    7,
    1,
    N'SNAP',
    N'CK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'103ff73a-fed7-418e-a53d-c7ffdb7d3c16'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    8,
    1,
    N'TOKU',
    N'TK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'bf904a75-6d36-44b6-a9c1-2f37f8b59ba5'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    9,
    1,
    N'WOOD',
    N'WC',
    CAST(N'2021-09-19T00:00:00.000' AS DATETIME),
    N'bf904a75-6d36-44b6-a9c1-2f37f8b59ba5'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    1,
    1,
    N'DIFN',
    N'BN',
    CAST(N'2023-06-05T11:38:21.890' AS DATETIME),
    N'0a6992d8-7bc6-44c4-beb1-17ddcc3a7974'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    1,
    2,
    N'DIFN',
    N'BR',
    CAST(N'2023-06-05T11:38:28.880' AS DATETIME),
    N'e52365a8-1aac-4870-8135-0c4666266417'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    1,
    3,
    N'DIFN',
    N'CH',
    CAST(N'2023-06-05T11:38:36.183' AS DATETIME),
    N'a47560e0-e951-41f0-8cd8-292e8759ef3c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    1,
    4,
    N'DIFN',
    N'KS',
    CAST(N'2023-06-05T11:38:45.153' AS DATETIME),
    N'c41e5c2e-551f-4ea0-b9c3-73deb318a299'
  )
GO
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    1,
    5,
    N'DIFN',
    N'UM',
    CAST(N'2023-06-05T11:38:52.480' AS DATETIME),
    N'b14dfc84-023d-40ef-b7ae-fa2961e1d623'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    1,
    6,
    N'DIFN',
    N'RC',
    CAST(N'2023-06-05T11:38:59.593' AS DATETIME),
    N'070daa0a-05f1-4335-bc9a-be6259a1972f'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    2,
    1,
    N'DIFF',
    N'BN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0cb67b76-b0a1-466b-990d-d9a1cef566cf'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    2,
    2,
    N'DIFF',
    N'BR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'35120b32-5d61-4399-8cf5-ddf877bf050c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    2,
    3,
    N'DIFF',
    N'CH',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5c6d0489-aaf0-4b73-b919-a3c98a72fac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    2,
    4,
    N'DIFF',
    N'KS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'db5859fa-6474-4dbc-a582-721b8608c880'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    2,
    5,
    N'DIFF',
    N'UM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1d168ee9-e560-4a36-983d-8998d98d7d83'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    2,
    6,
    N'DIFF',
    N'RC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd8949ab8-d1ed-4a72-80fe-0b3af207f651'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    1,
    N'RACE',
    N'RA',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'695a277d-7371-47a4-9cc3-0d240406e726'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    2,
    N'RACE',
    N'SE',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'2727f3d9-df38-47ad-8cd5-69028ebd5809'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    3,
    N'RACE',
    N'HR',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'92ecf84d-3874-4002-8d2a-e7390849c49d'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    4,
    N'RACE',
    N'H1',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'f190c9ec-4d21-4560-a813-9a2b8d94affd'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    5,
    N'RACE',
    N'H6',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'5ad86b3c-21bf-40d6-ab9e-6c828ffa7cd7'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    6,
    N'RACE',
    N'O1',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'4b440001-67f8-4b48-8b1e-4059fb211445'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    7,
    N'RACE',
    N'O2',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'79ffcd02-754d-493e-b530-f6c0351af743'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    8,
    N'RACE',
    N'O3',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'57ab3618-1ac3-428c-967e-65ee1ff75993'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    9,
    N'RACE',
    N'O4',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'fe9397c3-0868-4653-a3a2-8019d52ffd57'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    10,
    N'RACE',
    N'O5',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'd10b942c-bee0-495e-9b4e-5c2b748ec250'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    11,
    N'RACE',
    N'O6',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'69817618-189f-4906-8bac-58c4308aa500'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    12,
    N'RACE',
    N'WF',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'1f5428fd-4446-4cca-a830-474d26f3ff28'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    3,
    13,
    N'RACE',
    N'JG',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'a4f2c7c5-1b41-4e4b-abc5-9f042e6c6f98'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    4,
    1,
    N'BLDN',
    N'HN',
    CAST(N'2023-06-05T11:39:09.713' AS DATETIME),
    N'1a007ebb-840d-4516-893d-ababcaa6887e'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    4,
    2,
    N'BLDN',
    N'SK',
    CAST(N'2023-06-05T11:39:18.047' AS DATETIME),
    N'4b717669-58b7-4c4d-b74d-01d37a81978c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    4,
    3,
    N'BLDN',
    N'BT',
    CAST(N'2023-06-05T11:39:27.687' AS DATETIME),
    N'f41b0299-766c-4076-8e51-2d1de03ab10c'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    5,
    1,
    N'BLOD',
    N'HN',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'32684df5-1e6d-40b4-9622-fe1175403700'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    5,
    2,
    N'BLOD',
    N'SK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'a7136b8f-0b87-4e18-a71e-741f0dc2e033'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    5,
    3,
    N'BLOD',
    N'BT',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'6f049de9-c867-4588-b24e-2ae4efc9ddf6'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    6,
    1,
    N'MING',
    N'DM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'4cd77e2f-c198-4ca3-bbc6-2c9e3cfc3ccb'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    6,
    2,
    N'MING',
    N'TM',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'fdcb51a9-0538-43b2-8cd6-7b225ecc6776'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    7,
    1,
    N'SNPN',
    N'CK',
    CAST(N'2023-06-05T11:39:39.400' AS DATETIME),
    N'469802a3-d39d-4b67-ac95-10e862416cd3'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    8,
    1,
    N'SNAP',
    N'CK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'103ff73a-fed7-418e-a53d-c7ffdb7d3c16'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    9,
    1,
    N'SLOP',
    N'HC',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'60644858-f1b8-47de-81e6-c0f981d313a2'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    10,
    1,
    N'YSCH',
    N'YS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'70dea4bc-954d-4e65-8d9d-6be02d933530'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    11,
    1,
    N'HOSN',
    N'HS',
    CAST(N'2023-06-05T11:39:47.933' AS DATETIME),
    N'12c6c60a-92e4-47ea-bfd7-644c7d276808'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    12,
    1,
    N'HOSE',
    N'HS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'383780a9-5b50-4a51-b6a4-8955b653e6d1'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    13,
    1,
    N'HOYU',
    N'HY',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'e83031d9-c104-40f0-860b-717bceb4eeaa'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    14,
    1,
    N'COMM',
    N'CS',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'0c536254-5e90-4afa-ab1d-c819177b3ac0'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    15,
    1,
    N'TOKU',
    N'TK',
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'bf904a75-6d36-44b6-a9c1-2f37f8b59ba5'
  )
INSERT INTO dbo.ConfigAccessOrderDataSpecRecType_202308
  (OpenMode,
   DataSpecSortOrder,
   RecTypeSortOrder,
   DataSpecId,
   RecType,
   Timestamp01,
   Guid
  )
VALUES
  (
    3,
    16,
    1,
    N'WOOD',
    N'WC',
    CAST(N'2021-09-19T00:00:00.000' AS DATETIME),
    N'bf904a75-6d36-44b6-a9c1-2f37f8b59ba5'
  )
GO
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C0A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'742940fa-0df5-464a-af64-2d0c4af5c27a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C0A11',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c1fd2ac0-20ef-4bd9-b86a-95a71c46d2e4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C0A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'99755985-8c4e-48e2-89e0-22e0bba60118'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C0A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'321eb494-8da8-41c5-905a-ecafb8e5b667'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C0A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1a9689cb-5845-4571-bad3-dbe382c4ce26'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C0A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'041e7a61-752e-4b84-8df5-9096b5ed5188'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C0A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2a9102c6-5061-44b0-98e0-d41d36b5a5db'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C0A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e3440d09-dbc6-4df7-bc13-0edfa45a9308'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'06609cbb-19af-424a-830f-4caef03aab07'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A11',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'fba9e88b-5cc9-44df-9f85-6ad731ca8cfd'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9b3c568c-1c59-47e8-befa-f43f00b95f3a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f6310ff0-9b96-4bfa-a28f-88bacc600f41'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0bbf168c-b2b3-45be-a12c-f5fe21060000'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b3c03a55-0f51-441e-8600-5f478d2307c6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'26eab3eb-1b49-4192-b606-381a40910fc7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'353566fa-80b3-4f9d-820b-79ab963d9f8c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7877e3a9-b0a2-4c5b-bab6-a94ccd03ebe4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A12',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'6a760f65-2bdf-4c57-8a83-0c510c1e3b01'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4dd60160-98c2-4797-a6f2-6dfb73be6fdc'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd97c48c8-974a-4208-bdc6-0d9d10c1cb0a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3f6cb984-46e9-4ac6-9dbb-124eae4e2752'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'6e0eb093-26da-4bc4-a3ad-41814e96c209'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c4efadf2-9d1c-48d6-86a4-3182e1d58215'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'fb519fc2-c1ae-43d6-8863-6aee676c1e92'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A13',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'190b13e7-8f9e-4d28-9ffa-ef7d40fa1dd4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A13',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'96240ddf-5758-45d3-be1b-dad53c83a3f7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A13',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'89ac7c6f-d9af-4274-8039-dfec2813bda0'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A13',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'52554e57-c96b-492a-896e-65fa835f58e9'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A13',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'dee17a94-8ab8-4d15-a26d-4dcc7dcba799'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A13',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b17d6daf-a9b5-4ef8-8b42-9c36815c6c55'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A13',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'834675fb-28a8-4d1d-b94f-cef18765208f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A13',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7b991fc5-8573-43f6-ace3-cc986a811e90'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A14',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5762c1f4-8774-464f-a4ce-f2487cd8059d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A14',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5527e14d-2691-4831-8751-2a134a93dd43'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A14',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a555c311-cd11-4073-acaf-1179ac90c900'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A14',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1ae08d25-1df8-4527-ba1d-370f30b0c199'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A14',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9243e7b8-f636-40ea-af0f-05d3c4b1a994'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A14',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'72be6db9-cfe2-4128-927c-66e145580983'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A14',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8a5adb3f-bc11-4b02-b9a3-d35692deff6a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A14',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e56baaea-35be-463d-8156-13f30d4c14ea'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A21',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e0e850e2-db3b-4b1b-aedf-0054fae383ca'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A21',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'04d6197e-3723-41e6-abe4-7141b3b11ee2'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A21',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7c7740f8-8a2b-46a1-85d0-a5d6f1163541'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A21',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1fe6dff5-d163-4658-8448-fc28c19fae93'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A21',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd6a7070b-2f4e-45d6-a02a-358b80c8175c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A21',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0288112b-f7d2-4528-a1f0-51b8e52b9bbe'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A21',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9251a54c-63d0-4eb2-b86b-1685d8b3c021'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A21',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a45e99a6-94be-49c8-a63a-65be0fab5290'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A22',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7febb48a-bb2b-4322-8a08-5167b7011d56'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A22',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'055d7f26-2f2a-49d4-963b-0cc11d781945'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A22',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5fe3da2b-2f92-45e9-ac4b-f1fe6fa90563'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A22',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'57256755-593e-45e2-835f-484c524cfbe7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A22',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0f2da136-192f-49ac-84ce-2df7305875af'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A22',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'574b4d93-f99e-4869-8c0a-564a77d794bb'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A22',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'27831f87-9240-4f66-8c42-3a405cb51bc5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A22',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a19bbc75-8999-4e38-8993-9dda17b004d4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A23',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'16c2b812-6150-4b29-be92-dc1b4abae8f2'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A23',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'06828d38-15d5-4496-9556-c944f20b2cfd'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A23',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'addfc7f8-98df-416c-945e-1857178638b6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A23',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'78528d45-966c-4e97-9814-ce285c2ef274'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A23',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b2378781-56f6-4973-aaab-fa5308b87985'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A23',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1c7853dc-c48d-41bf-88af-533e188e8b96'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A23',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5d0f39a2-8b72-415c-a567-12c9c2a1d095'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C1A23',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1b92024c-f80e-46ca-85d9-574563e76180'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C2A13',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8e93428f-5a2e-4a7a-9399-0427f285bbae'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C2A13',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f40d1d48-2876-49e9-8e0d-8a67f0c7d34c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C2A13',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0d92e50f-c1c1-42d9-a61d-667572b77012'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C2A13',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'bc469ddc-1deb-4fc7-80a5-c70ffc1ba05c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C2A13',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2b66ef08-310a-4b93-81d4-7d35e26b4ed5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C2A13',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f63c1e93-183e-4e6d-b508-8d41a72a7cfc'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C2A13',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'856d12cf-74c3-49ee-9d52-3109efae39a7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C2A13',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'afb545b7-a48e-4b04-8119-418b7a795669'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C2A14',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e2d99954-9900-477c-ae14-e18776f38b1d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C2A14',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3047db8c-5e55-48b2-b76c-09db27a63fbe'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C2A14',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a1dc420f-b480-4d44-ae9c-8f49cd83708b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C2A14',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2f571764-f5c7-4821-a109-45b230622e3f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C2A14',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'50e184ea-55ed-483c-aea2-7995861b3ef9'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C2A14',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7dae854a-1e46-424d-98b4-97438e341934'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C2A14',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1353c1f9-febe-47c9-99c7-bc5f7701d2d8'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C2A14',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'950f3cfb-f7de-429e-a899-2a58caf37d43'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f77db785-c7eb-4929-a274-d3c61192e779'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A11',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'35a569dd-220a-4496-bddd-888d82041bd8'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b2a41389-2c8a-4ead-b8d8-0c4fe7a3baf9'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'95dc5a23-f4bd-4657-aa88-28c4b48f4c9a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd1ee645f-2950-4d33-8554-db90548fc617'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8ab4c7a8-fd6b-418e-ab0d-24b3cb837994'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b80d1975-17eb-49e8-bb88-64d1a96296bb'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2cf11f98-ee67-4c03-b1d4-9cb8c74be68f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2df054fb-f92d-491f-9806-76e263e2e0f3'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A12',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0581fe1f-27a0-45a0-a615-ea865b9ffd64'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e2141fd8-b4ab-4f4b-b6ea-d32112ec8737'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd411332e-def5-4c58-b0e1-b887261fe3f3'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd09c8143-20f8-46ca-b15b-556f1cb279cf'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e69c7a91-2347-486a-a13e-da5b46f6be1c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'081656c0-c9f0-42fc-b8fc-70526231482f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'04190773-9515-4471-979c-49aafc0ef5cc'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A13',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'745c3727-e6e7-4e11-aabd-27ec56b8885d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A13',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd9faa3b5-fd4b-443d-a9f7-cef799914d41'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A13',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a4b663ce-c469-4afc-9712-d5063aeb6f0f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A13',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f0fd050b-1dc7-448e-81bf-ecb828a2aba1'
  )
GO
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A13',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'38ca8191-6b4d-4ee1-8984-e34b3561600f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A13',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'cad6b6c7-0ab6-4303-ae17-1f3bd99fa670'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A13',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ad502579-1183-499a-ab35-3dd2e5b2f230'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A13',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'538af4df-775d-43d2-a05c-880126385823'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A14',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3b884ad3-1bd3-4695-b0cb-79fb6a077764'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A14',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'dc7fa446-2cbf-44c8-a686-07dfe8ce4020'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A14',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1b6af43b-f14a-48f0-8f91-621660d5bfda'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A14',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'6baecc0e-a172-410a-bd9c-ccddc9064cca'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A14',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'16b64ddf-0037-4fff-89f5-5e377c4e9e97'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A14',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f4a56574-0180-418c-99d6-e39b34f7e413'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A14',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1e9a9fa0-0437-4b56-a064-05d782124374'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A14',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3dcdb9f6-a1df-41fb-a445-c9fd3a62aa47'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A23',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'feaf1778-34bc-4111-bd8e-3c747435d6c5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A23',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'114bacc1-35be-44d5-b7fa-a19a163bd7f5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A23',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e61ebe74-f47e-4729-ba50-66c73301faad'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A23',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5cbd1457-2ee0-453a-a9bf-eacee5de8ba6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A23',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e122cc69-1ca7-4884-8d27-dd34359bdbb7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A23',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8f46e155-6422-4e3a-8c9f-2aefd749d832'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A23',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'34a2b0eb-20d9-464b-985d-62b8076279e4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C3A23',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'06095f1a-5b10-4a10-b3ee-9aecea4a2da8'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'cfdf2368-fa4a-488b-817a-523fca818211'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A11',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'95c15d1c-253d-4213-ab18-36d297d191c4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'35437072-665b-4c55-a1e4-a4baa9d5f016'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0ae3320c-a40e-4aa2-8937-0c5a5849fa8b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'114b4a58-af2d-491f-a333-9e63bf166d3b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ab917808-665f-4bba-a502-9b8216042415'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ac3dbed9-9ff7-4a67-9aad-ef8e2fbc266c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9291c04b-71d5-4cfd-bed3-54db0ef8ebe7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'28728099-65ed-489d-9e92-1e523b468cb1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A12',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'29cb2db0-5cf4-4c3d-ac69-c4e1f2dd72a4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd4aab4fb-b6e3-4e02-bb41-a683be271890'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0a48c04a-1b51-4159-b6c8-b67476925022'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'6a772287-d3b4-407b-89fe-fc4197144b6c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b7363ee2-ce47-49a0-b96b-deede97c646e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'78f7b2b3-8524-4e1d-ae66-b1e8f943995d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'fbdc8027-1a7f-44ca-b8b9-40062cc0592c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A13',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4531d824-a448-4407-ac69-58ed5f8fe2f7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A13',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4a9a72bb-9cc7-4967-a508-eb8c1dcf38b5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A13',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'582b9c0e-6b12-4534-9cb6-2eaf2574a58b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A13',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'133163e3-9f56-4ca5-a469-5756945f8984'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A13',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b2b23780-5971-4595-9ed4-31b2f3073b63'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A13',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0bbe1288-f04c-47b5-8ea1-a1364a39cb1c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A13',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'948c67a6-a8c3-4b50-ba7a-5e58a71b5a54'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A13',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9e65f785-89e1-4e12-b327-921355e48d4e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A14',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd28c7221-7edd-4147-a415-35ca9a177f26'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A14',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b1ee3b58-e5d3-4631-8233-b2caa5d1819b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A14',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'21a70c11-c514-484f-aaa2-549a87616da3'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A14',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e2c5ee94-9128-4411-bf60-6da7dab60463'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A14',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'fa6060c5-420b-4ae0-b91d-9852e415392c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A14',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b21d4666-7914-4dca-a447-0790ac7b787c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A14',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'149c9a89-e39d-45fd-99c1-90918694d526'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A14',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ff317203-c527-40e7-9273-8d13509700fe'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A21',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2f41f123-e0f3-4a86-9397-b87c43a35dbc'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A21',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e43263bb-6114-4871-92ad-00e773371780'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A21',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f0ccb67d-b1ec-4080-b09d-797a135588c6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A21',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'29d14cb4-c7bb-45b8-b8ef-8fc4bd718571'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A21',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c3d05596-64b0-47d9-abc6-8239b7f914c8'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A21',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2263aa8f-b8b1-493b-a096-dac691c87e54'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A21',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1df75e63-ba6c-4db9-8990-b5d9c57d492a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A21',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c443ce34-d5ab-459a-84cb-a6643c292fee'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A23',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'feff23b8-af48-4351-9854-747f7e352962'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A23',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'eaccf8f7-956b-43e5-aa2f-ee6e5f0e4053'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A23',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'49ebdb65-2db9-48f9-9555-03812aaba8de'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A23',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'09cbd845-8b1f-496b-8421-ccbf5788446e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A23',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b6507bac-0394-43b0-bb84-8b895c99a179'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A23',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'80193396-91a1-422c-8cb9-50137a55707b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A23',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c174531c-2f88-48f2-b7a1-e1e4a61ad909'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C4A23',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a23667cb-169f-43b8-b064-ff38f779560c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e3a96d46-6bfd-4fc1-ab32-f481e93c44ca'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A11',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'6cb44748-eb74-44cf-b663-a405239f9f58'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'39112d9d-6559-4271-858f-a572850150df'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4aadc137-b688-44d5-8598-153fee99c34b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ee4da71b-a6f6-4feb-8c00-0ca6b47897f1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'150b14f0-6f77-4049-8827-32fa99caf6f7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'dcd648e2-655e-42fa-9453-4f5ef841a46e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'dafd9e6b-87b3-4314-88e7-8c0181118341'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1f1346fe-8dad-45e2-844f-296fbfbee087'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A12',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1398c1da-03a3-47d7-8258-d78e24fde5d3'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'77afd7c2-f4ec-48e1-8a80-7258cd7d6a43'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5baa56ab-cefb-468a-bbb0-36be3429693a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3496831c-39c6-4c1a-bd2a-19055fe4c848'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3244d89a-47fb-45b9-b9a6-a51c0654f9b4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0f8757ed-5750-4da8-8af1-fd974faea5c8'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4d19e729-2ccc-419a-ab2b-664b850f5f91'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A21',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'056e30ce-ecb9-4de6-810b-53106d691177'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A21',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'46724587-9d58-4609-b35e-e1caec6358e5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A21',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'97fb198c-38fe-47a7-8b2e-8b5ffca2af1a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A21',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'17406f8c-21c9-4a1f-a40e-09f4abba9b81'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A21',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'056713a9-a577-440b-aa0b-4a661b7ee3d0'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A21',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e2b15727-e9b5-4a50-9d8f-c811b2ae78d2'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A21',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'88b17458-775b-4aea-9638-00e0fafc3a23'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A21',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7682df2a-7bcf-4180-8fdf-ad146c9e23bf'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A22',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4d3d9135-0f79-493d-944f-6afee9f8ea20'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A22',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'37e5d925-6577-4a5f-a076-12ae58ae3696'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A22',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0fbf7c3c-6249-4eba-a1b1-58fef42e30f9'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A22',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8e154a4c-20ca-47b9-bede-ea28a9804348'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A22',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c351d7ea-f53f-491e-bf6a-e6e457a8c3cd'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A22',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5c6a4eed-56b6-4638-8c4c-649554d72687'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A22',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'dc7eb61d-a247-40d5-a646-03721b27709d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C5A22',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'87204d5c-40ce-43e1-8bab-80bbd7a86db4'
  )
GO
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C6A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e2f01f6b-005e-49bf-a81c-5320a57b72f9'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C6A11',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ec2e9d4e-8bf4-4828-9d38-253cb0b498a6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C6A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd7494e11-3d66-41f5-95fc-b0f2a70a73cb'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C6A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3c81b8bc-b1df-4e8c-a43e-3e8de52fa371'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C6A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'909df09c-c7b9-428f-bb1b-b23330360f8c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C6A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f5ee60ff-f016-4a3c-b7d9-b6e3d105cd62'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C6A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'6600a48c-dcf5-4466-9f55-b7dbe3f3e882'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C6A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1d311817-3e14-4774-a836-2f4d84685024'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C6A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ab6c33dd-1c14-4d2c-9212-57bb8a6d6810'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C6A12',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f827a738-61e7-4d0c-b1c4-91978bd86083'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C6A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3980a132-489e-4377-b0b8-cc111365bada'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C6A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'405c9a1b-9f8e-4cd2-90c3-52a6110a8aed'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C6A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c4130837-6c87-4db8-b44a-938852eccc33'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C6A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'6853c7e9-5774-4ec2-884b-5ff8b36a50b4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C6A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'457a9042-c661-4d97-9953-61889d861bd7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T1C6A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1af03092-9692-4cca-95ee-8395c0ccde19'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C0A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'15c1be5e-be7b-4cef-b1a2-a084beadb88c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C0A11',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ff1a9344-1944-4945-b805-9a76e7b46b8d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C0A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'21713db8-8e7e-45d1-aedf-453a1d948279'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C0A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f75ef460-183b-4e58-ad83-4a4823837155'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C0A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0bf70fb4-4e69-4a59-a828-271dd994314d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C0A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a40f1b1b-d364-455a-a713-f958ffd2a481'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C0A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f9b40267-a568-465c-96a8-8d0e57dac96f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C0A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2de747f2-1b02-4879-b80f-91e70abfd51e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c2b8a456-f01d-484e-b508-6bd2924471c1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A11',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ff9890f4-6c95-4065-abce-c971efd3a22f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'17f4dbe7-090e-42f3-b74f-1435eb963895'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'768353f5-bfa1-42b1-aef5-ffc43850638f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ba79e655-ab69-4c4d-b4b7-2284fb62e864'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'234a4d7c-1dd5-4071-9317-7ec58a16c07c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'140c2f74-0ef5-42b2-87e8-02588d3419b3'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b22aad49-dfba-4c68-ac26-f06b4d0de28a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7c693481-b89c-4845-a6cd-50447a12ea9b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A12',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7632170c-c38a-405e-9f30-cd4c88abf4aa'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0dfa7d57-9318-4729-a28b-0082cb5f19d1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b87cf972-dc47-4298-8187-f8001e7d6aee'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3a90e5bc-8937-4353-a891-afa9b312e9fa'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'6524c62c-6208-4e78-8b84-41d178595d41'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5a7d83a8-182b-4103-988d-9ad87ce6a006'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7cdda158-fa8e-4b2c-bc02-737deb88b200'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A13',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b091dd3f-57a5-4afb-b476-644c5fcbdb39'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A13',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7646d718-062e-499b-b322-81ffdca6624c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A13',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'aacc058b-c3cf-4763-8bcb-22320d64265c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A13',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'78ae279c-1eb1-4f2a-bfab-f48dfae8c3d5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A13',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'278a6cfd-937d-46ef-83ff-c2e0d1fbad05'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A13',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f79daafd-9045-4579-bee8-8741669468ed'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A13',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e866cc38-586e-4618-95b1-dde1e69b734c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A13',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0810ec4e-ccf9-41fe-9f1b-c8cebe5196cf'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A14',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'6d3de4ae-343a-4974-aa3a-193339e27c66'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A14',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'bc6dfea6-f0ff-4a49-bc74-600715a4b3c6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A14',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b6acc986-36c1-471e-8ec2-4967d515708b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A14',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b7baec7b-3b10-4ec3-982f-8f2596cce899'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A14',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'eb0e695d-c8fe-4316-9ba7-6a02f314a5db'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A14',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'912d53b0-fdac-46c8-a2bc-261a090ff9d7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A14',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3c986817-b8fc-4224-8c84-7e5e54a2cd4a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A14',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'451cc9ea-2f5e-421b-81b0-fe4843f49b8b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A21',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'86d1fce5-4835-4fb1-9aa7-88de8a624274'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A21',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c1be03a1-8a1f-40e4-8aac-5f72fa5872c7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A21',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a151ef61-89a2-492d-8d17-9c5c77c54b1a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A21',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a113f598-182c-4df1-9382-a7cab5278c4c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A21',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'6a07dce1-fed6-4943-9ca5-931a260a1ff4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A21',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd9c20a9b-b27f-47ec-b0f6-ce39739c27ff'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A21',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'735408d8-5fdc-4e30-8ba8-ea8530814fcc'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A21',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'bf4d3fe9-8d72-4344-9d5f-19814303ada2'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A23',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'cb21a96f-0ba1-4486-bec7-9113f58fcf47'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A23',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c73090ca-2be4-4067-89cf-2c20396b3aee'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A23',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5d180f42-11f3-42b1-a0b4-99b150e7bf18'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A23',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'45f4e8c2-febf-4981-9e72-211d4681e130'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A23',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'02377756-242d-40c6-84b1-56d6e5e60496'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A23',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b40d39e6-95ae-487a-8c48-d3779505f9ac'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A23',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ea3fbf6b-1c2f-4736-bdf5-94b6968f2b0a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C1A23',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f8efb2d3-f729-4c53-9e9c-d8a1a1ce929d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C2A13',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'89b1ae07-2f47-40bb-afb9-d7c0f46eef09'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C2A13',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0661ba9f-fbb3-45ac-9726-8a43fe1af399'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C2A13',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a8f65524-de52-4641-bb54-95620a1439fa'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C2A13',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9d98d6c8-6956-4975-a4a9-c87bb760b32f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C2A13',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2887b13f-9a09-418a-bc20-c3bb88ccc852'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C2A13',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'252bcaf0-fa50-4cbf-aa45-96e5fda775f9'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C2A13',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'53e143a4-81b7-4106-aec5-e8217e08355a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C2A13',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'dfa4d1a6-2447-4771-a387-3fa765c2affb'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C2A14',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'28f15dda-f62a-42e3-9bb2-a53ea6a52d91'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C2A14',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c88073db-23e2-4ab4-854e-b419c5499a4a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C2A14',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'97073b72-bce6-4e42-8fb6-2d9f77e08e85'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C2A14',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'377b8222-f5c7-46c0-9483-a8dd007f3778'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C2A14',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'53f035ac-3f54-40eb-a3d4-6fc3ea78df1b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C2A14',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a346db26-ca41-4c74-bb75-6d290d3fb18d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C2A14',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1801a493-b6a0-45c9-bc9b-abc168f98fa8'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C2A14',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3034970a-fb72-42e4-9cf9-9acc9c723046'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5fdeb05c-725d-4603-bff4-b08e182f7242'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A12',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'53aa2421-c606-4a7a-a3b3-1c9091a13195'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'232cd738-bd6a-4783-ac4d-83f4304d29c0'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2f9a3a08-1ce0-41b1-b211-8a38e2fcc3a3'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4c7648e5-0f03-4f64-8370-d3e64e2308c2'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4b1e2901-40b8-48d1-ab8a-42782fd97bd9'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'355eba87-8c3b-48c9-87cf-c99d8f8d9d62'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'fba9c139-828a-455a-824c-11a8f209b917'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A13',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ccf93efb-9518-4559-bd98-db983cbcb6fc'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A13',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'dbb1a75b-c0ff-4800-8a7c-b83a275bdbdb'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A13',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'aedbf927-cca9-4390-b855-a235ff348159'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A13',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2481b344-40e6-492f-b1dd-e1884375f7ac'
  )
GO
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A13',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'11e96246-ef75-4505-9f34-d2c3bd07e6bf'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A13',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ae8aae40-2280-439f-accd-66d1b6193124'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A13',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'facebbbc-715b-419e-87d4-48334bb59580'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A13',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'15b7ebd0-573d-4ac7-b330-563c6e74b4e0'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A14',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd3341f88-b22d-4d53-90eb-3972f04e130d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A14',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c8c251c8-4e36-4c7c-b6d7-36b746fc7b89'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A14',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c014c1c2-1718-4210-aa75-6301cc6ede4f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A14',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'03395a94-88af-4c43-9aff-6ab63d1affee'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A14',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'422b4f00-e0e5-44d0-a788-a8976b6e5993'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A14',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5a338145-acee-418a-9557-8dad770f6321'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A14',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b597d45c-aa6a-4e9c-91cd-25baf58c6850'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A14',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'247c3473-f1ed-43e6-9392-5b285cbd008b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A23',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b8a3ab8a-8e2c-48d1-8329-5980360556ff'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A23',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ec75d4ee-343b-485f-a826-a685c3e3ddd2'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A23',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c397e345-387e-430e-8946-7af6d57d9754'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A23',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3abd11ae-efae-42e5-9ea8-002f17354282'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A23',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a0ee8dde-72e2-423f-9c87-0ed7d528d5bd'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A23',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8d037774-aaa6-4d91-91d1-88c5808c3a72'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A23',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'49c2fb3d-a19c-4f59-a366-668ce824d0b4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C3A23',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'db175ef2-1e80-4c2d-9896-54f3379274a0'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5903f57b-ea9d-424c-8821-18ccc664d711'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A11',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7d3e3009-d04c-4b90-a074-5b256b8ab246'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'01e8ee5d-99a9-4655-b579-4dee017803b8'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'6ce3d569-2a5f-4b7c-b55f-9de6633cc13b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'86db5de6-385b-462c-89fa-c59d37c53fa8'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e884ab40-4a66-4c8c-b0f2-159ecb0472a4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5bcb2343-4b92-4f45-bd29-31f73fffef74'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'6d85a41f-47f3-4bdc-bac0-80e899f3fb41'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'6a6ce43d-3cec-4126-b99b-16f7b2de0c3f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A12',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'53eaa1c0-09b1-4973-a599-6a8258da1477'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'62c601df-cf5c-484a-a5d4-493fbd032fd4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'bdadbf93-a8d3-4067-a0a6-50dec6fe727b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd22b98e9-b1d4-40b5-9a2e-2486c104f0a4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7bb4f640-7533-4e0a-bb0b-90b87105e3fc'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'dc999223-3c11-4aef-ac3f-027f11af7746'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'74513b17-14fd-48b2-b052-6ddadd423717'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A13',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'692ddeeb-3cfa-49de-83a5-a1872f4c7da6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A13',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8be1ed6a-736f-4dc5-8ebd-5d988d8e3f88'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A13',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e0a6d9ea-71b5-472b-8227-711d5c435bac'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A13',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'64ee7c2c-4b19-4dac-9798-d9f91888b65e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A13',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'624ea87e-2a7f-4a64-922c-55a51b5d02fc'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A13',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4ada5404-df34-4cac-adbd-c0efafaef82b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A13',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8dabc5d9-58d2-402e-a552-d8aa3a4bbb4c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A13',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5b095f8a-7bed-4db1-922c-b83956033dcc'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A14',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'96c07cf5-50eb-4c46-94f6-77b10474acda'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A14',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3281e83d-7125-444e-b417-f08686b9313e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A14',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'39cc04ab-3134-49e8-8105-b0015aaefa69'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A14',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1f18fe53-7947-4b74-bae5-c13df42f3e12'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A14',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'959199a1-5d33-4d4f-85f5-458280ebaa76'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A14',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7ade568e-0dea-4acd-b06f-fde1e8b126cb'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A14',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'41f92fbc-e339-4675-ae10-3b7eb08e4b39'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A14',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ec82e10d-d639-4418-a033-0fb7f434be4c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A21',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b4acb39f-7556-4145-bcd0-9dda57d7ba05'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A21',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ccfb50e0-d7a0-48aa-98de-92115f5b36a1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A21',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'729512c8-d4d4-49f5-9fc5-dbb552fa9d89'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A21',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'44280c2e-2002-4247-9f92-fec5c3c55924'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A21',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'983a3649-6177-455d-90ad-5980b797ca03'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A21',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b86f0c2b-5d9b-49af-b754-309c92dc95a1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A21',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2cad04e1-956f-46c6-b722-1fd6a031fcfc'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A21',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'edc0e616-986a-4375-b692-1164e5daf60a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A23',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'480459ec-7203-4c8e-8843-c280ff293a8c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A23',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd34042e2-a806-4735-a82d-52dfa27a4320'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A23',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1e9345f6-5a55-4cd0-b74e-2e60e68dd026'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A23',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'15f926ae-3b19-4e26-9296-7931c22a3f13'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A23',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'228130f3-9052-4b5b-8abd-4ec75cfed264'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A23',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'30c2f116-ffa0-4ee0-b5ff-684e428d6f31'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A23',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f183b74a-0118-42e2-9212-54f4e3335958'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C4A23',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'aa4631bd-82de-4671-a23f-3612358e1133'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ff951014-364c-4260-95a0-90dad4b04c07'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A11',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8438e1b2-f64d-4305-a602-df78f46c4dae'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'94bacb8d-6db8-4b6f-9d9f-8e7ca60c8503'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0a7551db-a32b-40e7-8089-cc3f50a6d082'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4fbec783-6f4c-4bfe-b562-5564f3322b58'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'98d99e31-c8c2-40d4-a2d5-700585917a65'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c89d4dcc-9f5f-4ac5-a4a0-45d405b40962'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b24d7cbd-a7cb-4472-bfe1-033c5cc928df'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f05b7af8-6fdb-450f-972f-315b35ee3eb5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A12',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7a9d407b-657c-4e16-a0e3-0271de14ac28'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'96256571-6e42-4589-b2b1-6534c2dd9c15'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'913b264b-ba45-4673-8e76-29c53d4e8806'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f616fe21-b447-413e-9f5e-bf4ee3fd7092'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'17546b7c-d5d5-4baa-a4c0-a8f7926344a5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5c9fc350-85ac-4e92-bf89-45657ff80d40'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3f4fffef-3659-4674-bfea-9265f739ad62'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A21',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'485a9425-6b1b-497d-82d7-91beee97e435'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A21',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ffad918d-3bd1-490e-92d8-6559c23b7e6b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A21',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e4efd0f1-5e0b-4ab2-9793-ccacf7dd3d21'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A21',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8e53680a-e65a-4a84-8bd4-69243783fd0c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A21',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'195fe859-d5b5-4e3f-9a77-901f56b3e180'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A21',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'849a37dd-d9d2-4c64-a4fe-0bd3a61220cf'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A21',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3c60e50a-c416-4e20-80d7-54cb6da9b651'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A21',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'23d3e865-9392-414b-944d-7f756891f61f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A22',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ec50a458-02f9-4f3e-a9ce-c3570c55a835'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A22',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c7372366-d7ef-405a-931d-4685b4908ad9'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A22',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'fd80318f-4cd8-41af-9e88-e48a3e300f45'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A22',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5db363de-17b3-4646-89ea-6eed6381fb29'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A22',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'97fe4d48-e4c2-43d5-986d-a1acf9b7bbbe'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A22',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'cb4b6e6c-3ade-43c5-aeb6-021f1962ac57'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A22',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'76579fd7-26ab-475e-92ec-57e5a695115f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C5A22',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7d7d2c79-16a0-453c-839c-4d8b5fb18460'
  )
GO
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C6A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9264bc75-758a-4bc3-b8a2-209e351daf36'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C6A11',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'09a71616-bca7-4ec9-9503-10ef198fb7c3'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C6A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd70f7ad3-5d37-4b44-a1ca-430919cd4c2f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C6A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ab4878f4-9be8-40dd-8ea5-fe201ec0531d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C6A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'df2a6c44-a22d-4c15-a4e1-61cb0b30ff67'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C6A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'533b0c93-4e71-48f9-9347-6e94519c8525'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C6A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a0405a3c-5555-4149-b0ba-0787674deac2'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C6A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9b09b220-8f04-4372-a380-efc1d16c6940'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C6A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c53d564c-e284-41bf-b1c8-415bd2e5db22'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C6A12',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'fc079de4-a890-4b72-a313-3a4a42c67d61'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C6A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7d4203c2-9d49-4ad8-a803-eb6ff9f8d7e7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C6A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd757ec3c-6eda-494e-bc5a-6294d0ad2aee'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C6A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1ef1991f-dbc6-4afa-ac10-f5cf0dfec00a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C6A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd867e2f5-dffe-4d02-a733-fb793e2cd872'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C6A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b4b4e489-2721-4806-8e44-8ff2bd0ce261'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T2C6A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e31e2212-f06a-4c48-8e82-a94a066a715b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C1A18',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'20b31054-03c5-4fb0-bd3b-305ec3e866c8'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C1A18',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'998e5ac1-e5aa-464a-b176-5abfac9f55d9'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C1A18',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f3eb217e-79cd-4b6a-94d1-2852d20b6f68'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C1A18',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'05fac31b-bf01-4471-92ca-918a1c54ba0e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C1A18',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'86c366f7-a927-4522-a092-0c4972763604'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C1A18',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a2dcda75-a309-4039-a5e4-5d97394f0bd3'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C1A18',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ae9d1333-5530-47da-a37c-1b41d08cc3f2'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C1A18',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5b9ad7f9-4a01-4f5f-8d41-5de6057a627d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C1A19',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e064b38a-5069-49b9-a4f8-6a41d7852bf1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C1A19',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'35d42938-fe49-4d19-b10e-4289f04dbd1e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C1A19',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'172fada3-b1a1-4797-89fa-4b960740502f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C1A19',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'cbe8c038-7186-424f-a4c9-0239ff679019'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C1A19',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'816a7dec-3660-42e4-a778-25995d7cce4d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C1A19',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b44022a8-15db-4afd-8d4d-9d0f127c792c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C1A19',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'58b722f1-f571-42ce-a0fe-45d524b3eafb'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C1A19',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'73df5dd7-a5b6-4b40-be11-1765a6e0fb0d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C4A18',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3920e18a-043d-4802-b544-5616039cf1d3'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C4A18',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'bb9a67b2-a02d-473a-b1b6-cf4563af4322'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C4A18',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f40911b4-9348-40c1-94ce-71bdd42df5da'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C4A18',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'645fa1cf-4aaa-4279-85f0-8f4c97ca19b4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C4A18',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8b633b71-613d-45c0-a9d0-5541e9bf2779'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C4A18',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'528a190f-d4e6-406f-8599-388115118e31'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C4A18',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'019cbbae-41eb-4b62-a58e-32ca8ab6150e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C4A18',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f560ca72-4c69-4bc5-932e-c5a80274e3e1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C4A19',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'223de8d1-c9d1-4ebc-affa-832755b356b2'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C4A19',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0aa5953b-78c8-4147-a6f7-6858252ed61e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C4A19',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd1d9a313-1c40-432c-8e0a-d130d8fcdaf3'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C4A19',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ef5b4092-3d50-48cd-968f-8e7a486296ad'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C4A19',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'834aaf7b-1114-4077-ad00-52f29bce15fd'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C4A19',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd4fde9a1-b7d2-45f9-bce6-72648e6a2fa7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C4A19',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2c0642a6-97b4-45f1-9ad0-b8230c412780'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C4A19',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e9455b4a-9404-47a9-b02b-338bb6401e9c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C5A18',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'888a46fc-3a19-4caa-bdf5-431d88a85f42'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C5A18',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c26932b9-8ce8-44af-a2e3-60a4fecf52fb'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C5A18',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a5159692-0937-4f93-a39e-fda9fb3e6096'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C5A18',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'839abe3b-2644-4a9c-86bd-5c0fcc60ab41'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C5A18',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'53328913-024a-44ba-a21c-e1400f8490b6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C5A18',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1b9a620a-18f9-4797-bb36-944634269c18'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C5A18',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5252512d-5ca7-4a30-98b6-cea432452afb'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C5A18',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'87e92410-d8c6-4618-adfa-7cf295b1a441'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C5A19',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c57eb513-cbe8-4018-964a-90116b69f424'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C5A19',
    2,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'615c0683-b82e-4ff8-b178-0c9a3ab7c753'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C5A19',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9071382c-087b-49ca-aa45-9ae6d4c47507'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C5A19',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'76472bf4-6a04-44cf-b81d-efa923011d45'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C5A19',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a2658cbc-ed1b-476f-9f49-61633d2b2762'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C5A19',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c9811541-9af3-45c1-bdcf-f0e10610aeb3'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C5A19',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a7698373-42ca-4d39-b64d-601a78cca5aa'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'T3C5A19',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4b22cfd4-5188-4e6e-ba09-bbdcbed531cd'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C0A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7711471e-2e82-4780-911f-2a0a6e1ffdcc'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C0A11',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'39b73368-47a9-4521-aabb-247b6141cdb7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C0A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9d7991ac-ecc6-4860-9449-f55779903938'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C0A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1cdfe07b-0927-452e-b700-fbc400bf9fe1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C0A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'099536fd-b7c3-4237-a678-e1771ca0c578'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C0A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'76498c61-de28-4e48-a786-0d873d284016'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C0A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ab404e09-4dab-4cc2-8bf6-5edd4ebab125'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C0A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9191f494-48a9-4a8c-ae7f-010b41498e25'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c7ef03c2-45a8-4985-9dac-5ff94d4fdfd2'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A11',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f73a89cc-8670-4567-8c3d-238a537ac8bc'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a228c58c-0235-4aa3-a469-80cc5dfdd266'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5a4679c1-7885-4c0b-b88e-d427ea5d41a7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'aee94755-7e0d-4708-a05c-d6832c30151b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'515ea6a4-ec74-41ae-bea7-143d9512a506'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'66839c7d-35f0-411e-9258-c6d668c99221'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'52d16ee1-7414-4182-970f-3ae6a83de8a1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'dd458a23-6082-4c36-9272-6d8a4d0eda9f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A12',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'80bf674e-7592-4b9e-93f9-a84b4bd5070d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'17d6fb80-491e-4b18-8288-cf67ba2145f5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'cc07f013-9a65-4093-9535-6551f21b0e4e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd23c02d8-e1f2-4666-8244-9b99a5b5dd89'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c760a6f9-c94b-4830-956c-a582869a6286'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b438f969-484b-4cc6-8786-2aa50f7e4332'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2866ade6-a00c-40b3-8090-2be35f8bb78f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A13',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'db8fe4f6-3688-463d-855e-e5c96beb73e8'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A13',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1ae4e30a-a540-492d-9ff7-0e23b9b8e97e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A13',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'57d799b3-90d6-4bc2-a881-15378b693389'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A13',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e6d3df8e-07e3-418c-818d-05248ce5ec0d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A13',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'96260215-ed98-4876-a4e5-82c8513f730a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A13',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'fb6fbe39-4a59-4317-98cc-35f5df392e73'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A13',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'efe87251-1ae5-4f4e-9b7c-77f57bcd160c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A13',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4f49c871-d904-482c-939a-0b448f5e1e86'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A14',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0bb7d1a2-715a-45b1-bb22-6812a747e403'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A14',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'810daf64-4638-4976-a2c7-f83703c5cbee'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A14',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'41ebaf04-f389-4441-b214-d1420efd27fa'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A14',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0528b618-1b58-416c-a3f9-6b18ae9c7ff3'
  )
GO
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A14',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4bec0dd3-fb2b-43cd-83ec-7766173490f7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A14',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9afd9f2e-e545-4b58-882e-6864a9527ab9'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A14',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd1e38b16-b924-4049-8d45-4abcb1f12c9d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A14',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'72e46028-55ee-46d3-8594-e3a425722aab'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A21',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9ed5fe1a-850b-432e-9ff0-4b2cf33aa672'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A21',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'886ac5fc-5798-48c4-829b-9f9f4b62e253'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A21',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2b395681-0c49-4372-b46f-4d24af7667ff'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A21',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a4c94f28-1016-4b27-b099-9e36cb446b0b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A21',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'cd244581-5eb8-49ed-947a-43048e301750'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A21',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'cc80420d-b5d4-4be5-a5f3-110ca9affacd'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A21',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'fe8fc9f1-4d80-408f-a59f-c824b09b3272'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A21',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'13414d07-2492-47c1-ab26-cf12b23b1f9e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A22',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'58259a77-41c4-4c2e-8bc1-f086a611337a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A22',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'217f0d04-33d1-4bbf-86f8-dcbd53da628c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A22',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e2629c31-0dc3-40dc-9be2-154c23973431'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A22',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'fbb4354b-e645-4d20-adcd-8083b15c8ed5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A22',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'fa94a2e6-b2c3-47aa-9ffb-0d51791235f9'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A22',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'862c165c-1008-4cd3-8985-d9b93df11f77'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A22',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7443e41d-50f1-472f-a064-163b2efa5773'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A22',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'aa05b04a-0a74-4281-a253-0212ddba5639'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A23',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8270eb26-b90d-42b9-8bf5-99ba7c6021f4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A23',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'62abe4e5-726a-47de-85ae-6028086ff472'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A23',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5193ec06-c0ca-4119-ac3b-07d96499a437'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A23',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3e300b8d-63ad-4af5-8b1f-1d5816837e5d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A23',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f57ee3b7-f99b-4150-a85e-7d47bc637d22'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A23',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'719254b6-608f-4594-8884-794b7b8207af'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A23',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0b7b0d9e-0a65-4ebb-a1a4-3daf98d42585'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C1A23',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'872bc462-d6b3-4864-9f53-84e4267a7898'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C2A13',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3e8f7aaa-de07-4abb-9fff-26432a5777bd'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C2A13',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'50d525df-9d9e-48d2-b94b-3eddea5efe18'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C2A13',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd654eac6-a09e-4e92-ac99-2acc0f4a3505'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C2A13',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'6d31e763-f56e-4213-a0dc-7fb6ee3c6e9f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C2A13',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e88ed06f-8a91-47a9-8b82-c71e6f2590a2'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C2A13',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5ce161ec-ed4d-4ad0-8cb0-f41d375b017a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C2A13',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd64d63b8-ed5f-4aea-b701-806a6531921f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C2A13',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'85a6488d-cbc5-489d-9ba7-e1a23a76ac5d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C2A14',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'6a955de4-e8e7-4b17-8801-c996a1871bc3'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C2A14',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0d1c043e-fffa-4d99-b89a-badf527b7e1e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C2A14',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'95992095-866c-4078-8300-69593511c4f5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C2A14',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f95fb11c-c562-48e4-b1c6-f4cf11862ec8'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C2A14',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c34526e3-ef42-4da4-9c76-9b5ad4bd243e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C2A14',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ebad5bba-ea73-4e8b-a67c-0b7b9ea91e7a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C2A14',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'79dd8cd1-2864-476a-bf39-51d8c943a125'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C2A14',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b9eb0fd7-58cf-4934-b0ed-b7473b9b1baf'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'920de270-8b4d-4b54-91ea-9a3dc1e18ecd'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A11',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b17bc726-7bdf-42ec-9486-966d2f08b292'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'972ae7fb-9f56-447e-8371-fe4ab3468a97'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'81f86c47-843b-436f-92b2-6896e30f2d84'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'78116910-0ffd-408f-9f14-8761328b1eae'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a7f41e70-87fe-404c-b4b9-2f9e3c972129'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c82adcdd-0d71-40e3-8a9d-940bbdd148e1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'04965d94-bcaa-4efe-a8bf-13755545da35'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ef939cd1-3943-4439-934b-8f56b69a60ee'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A12',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e10a6595-9a68-4fd2-adca-acf78535d050'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b3ee3ff8-9ab1-4605-b74b-dfb038fb97a5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2b616759-b87f-4b9e-b06f-f9e572259b49'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0027af7f-7994-4ccb-8d7b-734148f985f8'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9938bcda-89b5-40a2-af59-7febb31472f8'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9bce50cc-dbc8-432d-b08d-82ed4f2db514'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'11c9d422-135d-48a6-92e8-7e560172e1ba'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A13',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b5a79446-e66b-4653-86fd-132130d6e6b4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A13',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5ef57bae-f633-46a7-baf8-07754d0dfdea'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A13',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd617fdff-c64e-4c5b-b086-6a259d16558c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A13',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'72ae2e6e-d681-45dc-8ab5-14165f311893'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A13',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'358cdf43-b203-417a-9c2b-369b3fecfd48'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A13',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ce0c21a6-5975-4d31-9ec0-d1b5c1258162'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A13',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f65b4f04-0a83-4d00-913d-a5dea88d507b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A13',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1b7be198-a943-453d-9338-b314f92af00b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A14',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'98996c5e-44ba-40d7-9627-6696fcbb72b0'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A14',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'47c68046-e902-453c-82d3-82b1a2d78524'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A14',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'092f3ea8-de3a-4002-87ed-ba6facf30799'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A14',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd114b82a-45a6-4fa9-b217-bb626f71c997'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A14',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'dd5b749e-8c2d-4c3b-a6a7-ee608de05f12'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A14',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'28768103-6434-4486-9b66-888327cc27af'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A14',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1d48bfb5-2fe3-4a0b-a12f-15188a383dae'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A14',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'117cbf3d-50bd-46e0-a269-7c60d892b9cd'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A23',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8a52d851-396b-4254-ae01-102a29ae5515'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A23',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a37576d1-e0db-414c-9ad2-caeb68882768'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A23',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'98d09f7d-f0dc-45d7-960d-5c1e237b617f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A23',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c917bb8d-b368-4a05-b942-6ae5933f36a9'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A23',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'048e7dfa-d035-4173-a6d5-2f8530dde670'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A23',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ef6e7fb5-8274-4bb4-b191-813738f90405'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A23',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9fbd345d-3ff3-4999-bc43-f33d23c8e56b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C3A23',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0c55806c-8492-4d20-b758-1f75e504c47c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f6f51518-883f-4d45-88bc-3478a9843854'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A11',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b3c631b0-78e7-4ef6-971c-e8e1c2279917'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'14ef20d7-b2cd-47d0-93d5-4456dd738733'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'144fd979-db41-4f03-bfae-a3c461488f55'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e7baeae3-7d88-4c4c-9adf-c28e8e9ec2bb'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8e6795fe-3090-4912-8364-b2117551fd4d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'36ad179a-37ac-4f24-91bd-73394eba748b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd2a4fb46-2413-4971-8c36-b6e94a19b3f9'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'dbb43ed4-6d86-4b2a-8448-5f7fc4633886'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A12',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'40b06191-df32-48bc-adc0-86523085ceac'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'76d67c7d-168f-435b-a345-e8ab14a3322e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0d6fab03-61da-4fdb-964d-fb9582f85d48'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'930d2bd8-6b71-4983-9ff9-70d7bcee0313'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3a8c8b0d-58f0-4f5f-8e68-3f07c32f61a0'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3269d0a7-e900-4cd5-a5bf-045f7412585f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'302255a1-31d4-4e58-b4c3-0cfb801d591e'
  )
GO
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A13',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b0d856f4-8af4-4ae6-8690-3c6209cf7618'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A13',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'063020e4-eae7-414c-9cd0-673d3ea938fc'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A13',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0adb0fd6-7540-4bd1-a7b9-1f5c5f20d299'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A13',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e06fc55b-60da-4269-9247-bd44e2a4cfd8'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A13',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8a856d9a-5849-4f69-b13f-7fec575e6ff7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A13',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f04a9dba-9262-4be5-af00-2a616bd1e8df'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A13',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'93ff43ab-b7e4-47fe-add3-8c41e705d553'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A13',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd704efe0-9c3d-4f5e-a7a5-339c3a966aa0'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A14',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd2905f09-75ee-4d34-a7a5-39f6aa3da606'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A14',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a1735f1b-1e27-494d-81fd-020463027b4f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A14',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2ab4cb17-630f-4d76-ac21-f2c1946bf945'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A14',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f13bbed9-8126-4afd-98fb-0264e51ae26c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A14',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8b71a2a7-01c7-43fe-bf97-b2bf527d5d1a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A14',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'470f454e-807a-43ea-b6c9-5e49e97cbd0b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A14',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'01a9446a-ae6e-444d-879e-873373fa2711'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A14',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7804d1d8-a1ba-4d3f-a67c-931585178464'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A21',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'19d3b1c9-0c42-498d-9848-14d9eecbf5df'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A21',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd513c68f-9929-462a-b1a5-537f6f1ac951'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A21',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2fa1a7eb-2b3a-4bd8-af4e-136b1a44e156'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A21',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5e48b038-6b0c-4440-8c26-68290001d3aa'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A21',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c7f8b580-ace3-4e4b-ac71-04c77caa3464'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A21',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'71890f1e-0bab-4f07-a43d-b3979d343ab6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A21',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'772aa0aa-ce89-4e25-aae7-1a1358e28823'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A21',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'36cf81d2-22a4-40f6-a589-08a929054300'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A23',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b229bc44-9199-492b-84dc-ca52df04c8b2'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A23',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'06172a90-8bfe-4336-aae6-e799014c0bcd'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A23',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'08526ee4-bf98-4a23-ae47-b4e553b22245'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A23',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7720e5eb-941b-439f-bcff-ffeda8004d31'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A23',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1ffcdf1e-ef8d-4074-9fe0-bbce4eb4f5a2'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A23',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5d89cf4d-c553-4fb6-9fbb-76d6dc2253c1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A23',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c9dbd300-7e42-43dd-9d5e-9e5b699788ab'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C4A23',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1142107f-fc0a-43cb-9b6e-5d93011eebbf'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'863d4c15-1f35-49ab-b811-e0655145d6e4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A11',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3ba3e8f6-ef18-4978-b4fc-85443f8a9627'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'47cfe99b-4146-48ff-8419-d8e82dc9ee50'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8d78b107-b367-4c44-b6cb-83056e1a1c7a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'47ce4c37-1186-4988-8501-cfe17127709b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8c99c626-a284-4681-a9bd-8811fcb21165'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c4910073-bb1f-4a7e-b235-faf7d041c226'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'271aad53-ebd8-4ec7-8e33-c2a5aefa1d3d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'15c70909-bfc5-4175-bc67-3a7a181d2e9a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A12',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'89dc2aa2-236c-4dc6-9c11-be949b51d636'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a758674f-cf0c-464a-b405-f8d5c54f251d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0b7c1d96-aa2e-416f-8258-6d51a9c184c2'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'807ab52f-dc4e-4d17-8a24-a24d72331276'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'836f056c-d3b3-4b80-9b3a-6551ea6a159d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2ed83366-8fff-46b7-80d0-128cbc153e7b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7d198a27-83a1-4f28-a271-32c237198a2f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A21',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7ad0d4f7-95e3-45f5-9254-e40dda6eb6d0'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A21',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ba81cbfd-3e17-4ced-a086-e9bedf57547b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A21',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a3ac8a39-64cd-42c9-8f18-b15fe573c5b7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A21',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'42b03259-66c7-4321-b7fd-1307b402a4aa'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A21',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'bc206b45-4ea5-402e-83af-23c3f8c4f3f2'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A21',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd9a600bb-0a17-4bec-b942-0c884872744f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A21',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0f2f3d93-5c4e-45f3-b9f2-23b1f4a7abd8'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A21',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'cbd331e5-9b71-40f7-b687-a48bb9a4f754'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A22',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'681434e2-a402-4746-96fc-c94a517c9500'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A22',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4444c9f6-511c-425c-8998-0a9ea29b50c6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A22',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'69d8c91f-dd2c-4592-95b1-a6b6a96c9374'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A22',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e1d96ae5-5ed9-4415-8704-bf098847ccc4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A22',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2dbaddb9-c51b-4f16-b737-6fb7c8816d6a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A22',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'71912042-98f6-46f2-89cb-7e199525247b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A22',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e9658ab1-3279-40eb-8340-46ad5c5ca920'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C5A22',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2337f654-b9c9-4984-8532-6039d0d1fc89'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C6A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'73acb7a5-173f-40e1-acc7-c5eb123bc85a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C6A11',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'da04662f-dc27-4727-a807-83ecf2a07066'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C6A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'716bf5af-313d-42cc-bd00-b1219fc253d7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C6A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'cc6ce2bb-3ce7-45de-bf04-a136912be609'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C6A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8fb5c399-4d25-4a10-a20f-2ea91a4b5ce6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C6A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'fa87b2fd-9eea-4860-abeb-246a923c5f6c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C6A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'19266808-c223-434b-b643-d0ac537c8cd9'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C6A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'574aa9b7-7204-4e5d-abc3-d3f0bda0c96a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C6A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a7df88a4-6de3-43a7-8301-f3ff8cb3a70b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C6A12',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c91e8dae-3673-44c8-9fbf-6d7b50126213'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C6A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'16391286-d79c-4e87-9c24-fe73f76682b0'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C6A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0a2e8ebc-b53e-4e71-b804-d5066e839bba'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C6A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'01744e39-036c-4d7c-b3bf-18cb9514dd1d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C6A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'6671a54a-2be5-44ec-a6b6-016aace4fc85'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C6A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'44ae360c-278d-4830-8b62-8ba9bd275371'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T1C6A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'85fc83e0-7d74-4cc9-a503-406405e17b61'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C0A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'87c28c50-d17d-4faf-a2e2-e09eb6ef2bc5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C0A11',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'cd2b5e0f-f84b-4e28-8620-2e8a3bdff9a7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C0A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'bf493ab5-90e6-4b3f-8112-9d724e06a66f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C0A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7dfecfd9-3171-4873-9ffa-f9239f47f607'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C0A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e1183127-2dae-48fc-b758-50b766d207ad'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C0A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'33b0b207-fe45-4dac-915d-ef786ea2e88a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C0A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2b3dedc1-b52d-4d85-bfc4-53b20842799f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C0A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'511f6688-8ac5-410a-bd28-ca6a355eb3c2'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f1f6596e-82c8-4e29-87e2-1d102bc6406f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A11',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'430eb133-1a53-4fa6-86fd-02508cca8af6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'610aa6a7-c209-4173-8442-8e76ecdf9fd0'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'badc61e3-819c-48ca-b473-44f432c4ebc2'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5a61571b-4037-42b8-be9a-45be902faddb'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0906fdcd-6861-4807-8167-09be33aeaad0'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'744201cf-0c7e-483b-bf0f-a05763a9fdfb'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c052a8f8-2197-48ed-9ceb-02fe9bec978b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f9db1a5d-3e44-4eb6-b4e0-bb91794735a3'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A12',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ea72fe93-29c2-4629-a07f-afb78778b58b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'60b7c5d0-cddd-4ab6-8550-c3c317ca54f7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f6576043-13dd-45e9-81af-6aaace83affe'
  )
GO
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f3ee561f-9e5c-4366-9127-d48c776bd28f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'012d484c-e2b8-4ee6-b168-d3eb6f99d99b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7cd6c35e-1298-48c7-8120-f7b780ca024b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e93b92e1-bcf6-4064-90e2-9cba85078f14'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A13',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'49653030-ce92-4161-83ad-3eeb0492159d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A13',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b2ebec7a-2755-4e7b-bf68-305e0f251075'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A13',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7d2ae95d-cc23-48e2-80f0-20b392d262df'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A13',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0efa155f-17a3-46e7-98fe-9cf2c58e35e6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A13',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'22abed70-d061-43b5-8345-af53dadebba7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A13',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'12fdd41f-752a-4017-b594-90d4fd59a96b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A13',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'916fdaee-8476-4f15-8d19-e70b75d6c643'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A13',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3f7adc43-1657-47c3-b905-f356412af4ea'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A14',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'01709926-3890-41c9-bccc-d18a2c04bd7d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A14',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b6bfc833-17f3-477d-aaf2-a2e69d4df0d7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A14',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ff503cf7-d28a-45ed-9cd9-0456950cab93'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A14',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'dd066c38-9eba-4bf7-97b4-82728226ae4a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A14',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8820ae12-1e22-46a3-87bc-27bedd9a5802'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A14',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'67fe3e74-9a81-4da9-8744-f0f87d63069d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A14',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd186d633-45cb-499c-8917-3df13d18679e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A14',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'13d21c3e-4320-4454-bb8a-3fe3eaba2f58'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A21',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'da3b6a72-a873-42d0-abb7-2c8718525660'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A21',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'23e45e0e-8fca-4404-88a1-6914d32c8c45'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A21',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ab834123-4722-42e7-932b-2d2bd401e244'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A21',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ef9edf2f-7206-4ccd-bd99-de09901d70c4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A21',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4b036a42-2011-41d3-b84f-aaf25b4a7946'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A21',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'41475eb8-d38f-419f-b94e-a3fa5ea9ce70'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A21',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4f95bb74-dbb2-45ec-b61a-12b9b34ec045'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A21',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'be04d284-9c67-4132-87a2-2fb249680ca6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A23',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'87da1e7e-7599-4a3b-b902-d54dd907e51f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A23',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd84b1495-f3b3-41f9-818e-6692fe9b4e6c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A23',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c33b930a-daa5-4fc4-a205-9c095e5bf759'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A23',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3f2d1f6a-f06e-4ec4-997d-6710d4db8214'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A23',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b2ccd3c2-9b57-48d3-bc68-af20eb495289'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A23',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0bc211a0-57ed-46e9-96fe-1693b4c08a74'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A23',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'720edef5-a0f5-41b4-a6cb-63e09d92bdf1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C1A23',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f65dbc7a-376e-4593-be8b-d57d1c196176'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C2A13',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f05b976e-5fbd-4b27-93a9-adbf78562c63'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C2A13',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a16eafda-dbd8-456c-8889-a4cf443e7fd5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C2A13',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9045f88e-8386-4696-8def-ccc404209ffd'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C2A13',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'93ad08d9-2fcf-45e7-87ec-e55d6c0b05c4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C2A13',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'bbde5d2f-df3f-423e-a729-d6eb00c75902'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C2A13',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'924ada7c-b2fc-4cca-8eab-24eca8214920'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C2A13',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9dae52ee-68c0-4396-a0e4-9bb155251f51'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C2A13',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'223342ab-9e5b-40df-8f82-3fdc32b8b394'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C2A14',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'fc47726b-9b45-40c5-be3c-399b24d4a962'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C2A14',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd915027a-99b1-4873-896b-cecf613eaa49'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C2A14',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'97ea011a-2d9d-4b7a-a74d-277972245317'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C2A14',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'6b0fb3e4-d67c-4a8b-9b46-e05aaaa451fe'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C2A14',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f0ca8152-7b46-4ec1-9854-f35bf0176288'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C2A14',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a05e6469-e15b-4330-b9b6-dfde1332c8d1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C2A14',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8a6e3f5c-95a3-4b43-ad57-e9f50b18fa8f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C2A14',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0afe5dea-d8e4-4646-b37c-2a46ad39dc4f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c7d04635-82a6-4a16-bf8a-37aac5a1c567'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A12',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9769fb38-84db-413d-b2fa-9b28e2d5f9c5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'15c24fab-1caf-45ae-8c91-888d724076d8'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c087d67f-6e4d-45be-b941-14b1cfc2565b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'618ad6a9-dd9a-48c7-a15a-b1d40c2d9bbd'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1f7e5f1d-ceed-493c-a799-ae291b1138d8'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7cb61afd-8d4e-42ad-a6f1-0f520f2ab8a1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'71df5622-7d6b-411d-a92f-f689f11915e7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A13',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5da918fd-6afc-4da3-ae43-581612f871b6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A13',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8df746d4-bbac-4a19-b543-b3fedfb59f11'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A13',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'83d63b46-6a98-49f7-a0a8-90608d8ac0b1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A13',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'14afcea3-943c-4067-8a5d-cae94245fc50'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A13',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd899b78a-8fb5-47d8-9856-af34a5ed3516'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A13',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ae14aff7-d8fd-4e56-8f2e-8e8f68d6227d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A13',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2fe9a379-a1b8-4cad-a30f-a9ed46809a34'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A13',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e3bb7eb4-933e-4d17-a364-284fa9285f08'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A14',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'45f5a0a8-0fdf-4f9e-9529-09291fe83e81'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A14',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'496a7598-9424-4704-b2b6-a621870acb28'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A14',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a06aecc3-6e15-4aed-93d5-7be5acb88ad1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A14',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1459bf91-9401-467a-96d8-508aa9a14c2d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A14',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8f89c568-0864-486e-8eef-16b6600d2140'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A14',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'74bf2a05-a13b-4b9f-91c9-be243ebd1e44'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A14',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'80aeca65-5e84-4834-9c7f-931397f6b585'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A14',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4e939d9d-4fba-48a0-9114-5c2f7391146a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A23',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'711dc15e-3704-4d36-8d06-e74ae631b63f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A23',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'580f208d-4c75-448a-ad05-7123d020bee9'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A23',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'068160f9-0559-4144-8e8b-1a6b37326c0d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A23',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c5489a82-5ee2-4158-98b4-9de44576ab53'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A23',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'89933a57-c370-4970-946b-8c8bc40faf0a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A23',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c9bfe35b-7cfb-41a7-9ddf-f6329c797eb6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A23',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8409656e-a4d6-4f9f-9670-a0683d78ece5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C3A23',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'196fc8d7-b1b4-49c2-bb7f-426b45af162e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a126e428-a90e-4a1f-9431-2aa0a1f9e52b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A11',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5f747782-4052-4f4f-b96b-d7ccbce0654f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'34df082a-9626-41d9-ad59-d6953b71d829'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7a524555-0b5e-4dac-8c15-6cd519ca33a0'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'81dc30f6-131a-4410-8fa7-37a06ef58811'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ae251eb7-37ee-4f94-8997-d93ad0e331e1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'383664e5-f336-446e-a4a2-5f1c0ed31a44'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'34f5b8cd-29b7-4f12-87c4-c05668862d60'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e932fd71-6f2d-420b-a368-a04d4c26b9f6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A12',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'aa94bf80-ca1e-4b66-a51a-ae4cf2cb8ea1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3b57ddb9-55d0-4966-8878-85e106c2cc5d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ac7c0716-82fc-4192-bff0-9ec8846f9893'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1d214cfa-78cd-49c9-b8ed-d51007e547f4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7ed20a01-34e0-4233-b290-2fba1a5fa955'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0bd407f3-5f11-4ba1-8981-bff146dc8e6c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1e56b10e-efc8-4070-b166-c660a59a92bd'
  )
GO
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A13',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c52efdd6-4b8c-4148-9327-ba0ba612e88b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A13',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'06f25b5f-03d6-4fb3-9ae0-43ddeadf8f27'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A13',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3ef5bae5-b91f-4cc8-bada-08c23d9b8aad'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A13',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'54e01f2b-deb8-4cbb-9361-de6985a6de3f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A13',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'bb7e5fbb-a19c-4d60-b371-8a8a0de6850e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A13',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'afab8130-ebaf-41dd-a711-1faa73c771c9'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A13',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f704a18e-00ea-4f50-9214-0aa3fd0cb485'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A13',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b14fffd1-36a4-4eff-b53c-d4a78b799eda'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A14',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3ceb319e-6419-41da-87cc-17e6c23b31b6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A14',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2c72efd5-5dd1-4376-8521-85b31493aca1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A14',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'babe7c6e-541d-438a-9b65-07b197d5ae67'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A14',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b43cc307-4448-409d-96ad-3ad76fd356ff'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A14',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'447fbe4f-ea20-4feb-949a-1d6a16df816b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A14',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a0529efc-9554-49a1-bc4b-a3a7d22f8f10'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A14',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ef463ff6-6f69-4f96-a6bf-53714124bf80'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A14',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0de3ee79-3888-481a-9671-c9cb197dfd86'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A21',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'aa1d7df1-04ca-49c8-b7d0-d43486eddfed'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A21',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2d209e67-74c0-46c6-b982-4ab1ef1c94d4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A21',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1592e44d-bbc9-4be9-a67f-309400ec7698'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A21',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'86d26d39-2d41-4005-bc41-37d8486e4563'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A21',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e9f57c8a-90bf-46ac-a5c9-dc41d50871e0'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A21',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f7c9184e-4f9a-4bd7-a7de-9b1c766e6294'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A21',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2b158ce0-f7d5-4a6b-8406-419afb7bf867'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A21',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e92de065-622f-4ad9-99a7-d9e97cc0cede'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A23',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'cb991ccb-d518-46a2-90fa-22d10d1631ea'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A23',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'06680cc5-ab95-4c77-a827-045ebc4d6996'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A23',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3a4b8fc2-7fc1-495a-a45b-cf5b39046baf'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A23',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'de78069f-dbd7-4e11-87b4-b6aa30d1b4b5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A23',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'fdac40c7-b961-48fe-ae04-a83d20b81853'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A23',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7d2673c8-824a-4cc5-b233-97fb7cb6a3b0'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A23',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'410b4aea-d6a5-4baa-97c9-d141af554a3d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C4A23',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9999e7f0-46d7-45db-921c-14fd7a693328'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'87f38d18-68de-4023-a6a9-82cc7939c569'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A11',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9c5ac905-5e75-4b86-a3bb-c3c3b454628e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e4eb5513-138c-4a95-905f-502d28e571a5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'303290ec-bc1b-4f5c-b6b1-28c32db95d57'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c5eac43a-0584-4a3d-afd2-90b4e574b2d1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ac99f830-8c2e-4487-af35-8a9c14d224c3'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4c3d9e72-1060-41e8-8a16-34ceab99fc31'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8d22447e-0bae-4bb1-b5bb-ed9ed63a3c70'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'19fb32bd-8b9b-48e4-8a93-c36ef5fa085d'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A12',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'c3498fcd-99bc-4e09-a845-4f8921680dd1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3b19c10d-6885-4c4b-9bb7-16b385031bc5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8bce434d-304e-4acf-ada3-615ad698e066'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9ec731e0-4a0d-4669-a2cd-fecbe38ceb16'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9cf3e842-be69-4c5b-99d1-b626a57fc5bf'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd73e787a-2bc6-40ed-b5f0-7a4baa5e6c84'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a9a10b6e-6a95-4403-a54f-55066f0ffce7'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A21',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a38ce527-6692-4af5-922a-b0f7f08b0062'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A21',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4d5ba360-5f32-4fec-b230-35b5b3951f42'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A21',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ee6f380c-2e7a-489b-be82-b36c053154e8'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A21',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd18474bc-117b-48eb-bf4a-ae9503b2b539'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A21',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b3bd7fa7-cff8-40b8-8537-20e417f48bce'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A21',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a245449a-c1d3-4975-9364-c545181b6a33'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A21',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'339cc5c4-9bf2-41c7-bde0-efe6af282f78'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A21',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'23c07548-45b1-49bd-bcbe-60d8511d6d5e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A22',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'4a5a33d6-82a3-4241-81d8-88e00d626201'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A22',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd2b968be-53e5-43f3-bbda-68188623ef6e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A22',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a422bacc-c1aa-43c7-9e84-1432e64f43e3'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A22',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'fc714875-420e-48d4-a0dc-36038c718301'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A22',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ca1a3518-f6a8-4695-9ce9-5b3ac90a4fcb'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A22',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0ff14730-1161-4f4c-8d86-0cd9b9139833'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A22',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'88d8f655-4fe4-4239-abfd-b71e0ffe7ca5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C5A22',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ef0daf2a-9194-4889-a67f-3ca9f3eeae37'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C6A11',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e905ace7-7ae1-4714-aba2-9b937dd84f2f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C6A11',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'480d08ea-ea8f-4162-9034-2fb0117e22fe'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C6A11',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3986cd80-e3b6-4a32-b1fb-b4dc4367a2c0'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C6A11',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'477e02d9-fa37-4db5-bdb2-74c850396195'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C6A11',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'41b18cc5-700a-462b-b712-b6b669729d6a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C6A11',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8a2e2c0f-63e1-49da-935f-046fb6502325'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C6A11',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'2f0c150f-fb3c-45f6-b228-04000f3184f6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C6A11',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'bb9695a4-d4be-4fc3-a393-14bcb970aca4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C6A12',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1d684388-529b-4378-9ffc-228bb999a769'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C6A12',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ab4faf42-d8a0-4ee1-a933-d5755805814e'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C6A12',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'46ef6d8e-9648-4f38-9766-4539435d86b3'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C6A12',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7a7e4c0c-b386-4329-aff9-b9fa754be662'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C6A12',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7e2fac07-5000-4a95-8678-515aef12d4f6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C6A12',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0f34fefc-93a6-497c-8502-bab2f6f8ce75'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C6A12',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'15665985-c464-44b0-90f0-284425ad8b9c'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T2C6A12',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e104543e-bb59-4614-b658-4d5b7aad5f52'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C1A18',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'3f14d60c-b011-4e9f-8cce-e53e7532610f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C1A18',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f1210f38-4242-4eb4-ac5f-036f0362b725'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C1A18',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b495a195-adf1-4828-b096-b4466466dd66'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C1A18',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e45f52f8-3bb3-4c10-b6e3-2ffd8edd907a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C1A18',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd11cb9f5-9e1d-4a06-84ac-41db716fc682'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C1A18',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'20147935-e910-4c28-bd2d-b91c65b7ce13'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C1A18',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'1479bf91-63e4-4c51-ad15-d5bd6636898f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C1A18',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'05529e71-870a-4193-87ee-58b7cd6f722f'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C1A19',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'058160fd-4c6f-40dc-990c-a465751901fe'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C1A19',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b8b7b764-5dfb-44c2-a90c-5cdcd72d3eb8'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C1A19',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'86239945-a980-4231-b7b8-c9f4e98683e6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C1A19',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'24f64164-5752-4c47-88bf-3c752f1b2488'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C1A19',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'e0d58663-548e-40d8-ab10-0501ffda457b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C1A19',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'adca5bc2-2ca1-4f11-8707-20fe379386ce'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C1A19',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'82df0442-95f6-42b5-b907-60c7bf15fb4a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C1A19',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7a3dcf41-f96b-4c50-82c5-7977a8b6cd68'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C4A18',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'61cf736a-a665-40d5-81b6-a37c3724f595'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C4A18',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'14639812-2b4e-47ed-8348-049978f93fd9'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C4A18',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd164229b-8070-446a-99e1-500cca9bfd20'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C4A18',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'd4ba49e2-8668-4744-ad3e-fe3ceae6043e'
  )
GO
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C4A18',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'a5074592-5c99-4d30-a8ed-cff67ad0a402'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C4A18',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'ed446e0a-25d8-4446-95b4-0bc40f7a83ed'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C4A18',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b9a1de76-28c4-4024-ac29-7cf21b9d7391'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C4A18',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'da00d791-69c0-4a35-839f-615cd241171a'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C4A19',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'0002fb02-716e-47fc-9677-5161483cc060'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C4A19',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'344676f3-08ff-43de-8157-dcad8c40dfb4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C4A19',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5fbb751e-2012-4d79-a96e-65cf0b3fdc2b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C4A19',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8edc486f-4aa4-4da5-9ad1-17ea75147d08'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C4A19',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'6b391559-01e9-45d1-84d6-d1c8ed4fc828'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C4A19',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7677ce54-6a66-4229-9e1c-31cb42809041'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C4A19',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f8d81ad9-d907-4a9a-8226-d169619197a5'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C4A19',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'f20396f7-0d57-49b0-b806-66c7fdf593a6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C5A18',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'81693f84-ccbc-4ff5-83f5-04b624c5dccd'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C5A18',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9c18fb90-77f9-4cd3-9ec3-e0826026d206'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C5A18',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'12be9f46-0a36-4193-aa09-7560186e3e40'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C5A18',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'fbb7e02a-badb-4afa-9550-427ae72380ae'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C5A18',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7827c9f5-d521-422a-9b00-e5e700dea53b'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C5A18',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'09d7e419-b46e-4505-b111-cb9fefdb39a4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C5A18',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'47d6d27a-9ce9-4e24-970a-9906ea5d1098'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C5A18',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9d6e5c54-5b75-406c-ac89-4d549c1df944'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C5A19',
    1,
    1,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8eb7a3d9-79d1-425b-ac13-3d4f3c1f3902'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C5A19',
    2,
    3,
    1,
    18,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'5b9e05af-8ce2-4b7f-a510-02f4a2509ebe'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C5A19',
    3,
    1,
    1,
    64,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'b3c8d6a7-c18e-43c7-a9b4-197e8addd193'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C5A19',
    4,
    1,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'bd371355-c3eb-4fb5-bb65-e45a546693cc'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C5A19',
    5,
    3,
    1,
    153,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'9f97f1c9-d89c-4840-a468-2290f01f97e6'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C5A19',
    6,
    1,
    1,
    306,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'be51f073-8c2e-46e9-bb61-f8fad143b5b1'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C5A19',
    7,
    1,
    1,
    816,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'7fa1fe6e-8ec2-4925-9f01-228bddc581a4'
  )
INSERT INTO dbo.ConfigBetCount
  (ConfigTypeId,
   ClassId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'T3C5A19',
    8,
    1,
    1,
    4896,
    CAST(N'2022-12-22T19:11:16.367' AS DATETIME),
    N'8762adc4-1632-4840-b88f-35f549950dfe'
  )
GO
INSERT INTO dbo.ConfigBetCountWinFive
  (ConfigTypeId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    9,
    1,
    1,
    1889568,
    CAST(N'2022-12-22T19:16:16.507' AS DATETIME),
    N'63192fa9-e8ef-4b83-8b5d-e94f86f006a9'
  )
INSERT INTO dbo.ConfigBetCountWinFive
  (ConfigTypeId,
   BetTypeId,
   BetCount,
   DefaultBetCount,
   LimitBetCount,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    9,
    1,
    1,
    1889568,
    CAST(N'2022-12-22T19:16:16.507' AS DATETIME),
    N'ca0c6de4-8077-4881-9552-bc4186bf1499'
  )
GO
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A11',
    1,
    100,
    1,
    10000,
    178,
    44,
    0.24719101123595505,
    17800,
    10840,
    -6960,
    0.60898876404494384,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'a2e8b089-50e9-498c-ad41-df495660fa80'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A11',
    2,
    100,
    1,
    10000,
    534,
    271,
    0.50749063670411987,
    53400,
    41650,
    -11750,
    0.77996254681647936,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'70f34c08-2398-4263-a5cd-9ac60e63b55d'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A11',
    4,
    100,
    2,
    10000,
    178,
    34,
    0.19101123595505617,
    17800,
    19090,
    1290,
    1.0724719101123597,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'd2184b02-9cdb-4343-a174-bb560a1ea6d3'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A11',
    5,
    100,
    1,
    10000,
    534,
    135,
    0.25280898876404495,
    53400,
    42780,
    -10620,
    0.801123595505618,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'6c9ebfaa-7ff8-4fa9-abd9-f2a689e61fa5'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A11',
    6,
    100,
    1,
    10000,
    178,
    16,
    0.0898876404494382,
    17800,
    9180,
    -8620,
    0.51573033707865168,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'c2da30a0-657b-49ca-b935-6e0a73af7314'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A11',
    7,
    100,
    3,
    10000,
    178,
    18,
    0.10112359550561798,
    17800,
    23150,
    5350,
    1.300561797752809,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'2a92671c-0f41-4315-8cfd-594e20bdf939'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A11',
    8,
    100,
    1,
    10000,
    178,
    4,
    0.02247191011235955,
    17800,
    3170,
    -14630,
    0.17808988764044945,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'42b2d937-4bfb-4f91-b94f-960681b61463'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A12',
    1,
    100,
    1,
    10000,
    308,
    66,
    0.21428571428571427,
    30800,
    23170,
    -7630,
    0.75227272727272732,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'7addf89e-ecbd-44b6-a013-8fad00e2a453'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A12',
    2,
    100,
    1,
    10000,
    924,
    391,
    0.42316017316017318,
    92400,
    73700,
    -18700,
    0.79761904761904767,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'5992ebe3-e184-4bb0-a891-2632603afa59'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A12',
    4,
    100,
    1,
    10000,
    308,
    25,
    0.081168831168831168,
    30800,
    17940,
    -12860,
    0.58246753246753247,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'7239d5ab-76a4-4d4d-aa1f-cf48c50e5ef5'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A12',
    5,
    100,
    1,
    10000,
    924,
    155,
    0.16774891774891776,
    92400,
    80320,
    -12080,
    0.86926406926406929,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'526b950a-9da9-4cdb-ad7f-4783e1af7285'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A12',
    6,
    100,
    1,
    10000,
    308,
    13,
    0.042207792207792208,
    30800,
    18730,
    -12070,
    0.60811688311688317,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'3d670735-576f-4ec4-bbf7-87abd9b6c714'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A12',
    7,
    100,
    1,
    10000,
    308,
    11,
    0.035714285714285712,
    30800,
    23600,
    -7200,
    0.76623376623376627,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'9bb23cfe-6450-4b2a-82f0-ba3adf8e3086'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A12',
    8,
    100,
    1,
    10000,
    308,
    5,
    0.016233766233766232,
    30800,
    24720,
    -6080,
    0.80259740259740264,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'75d1224f-d804-4732-b793-b35de6633ac9'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A13',
    1,
    100,
    1,
    10000,
    392,
    77,
    0.19642857142857143,
    39200,
    31190,
    -8010,
    0.79566326530612241,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'21622d16-a2fe-4751-bafe-09f93c94aab6'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A13',
    2,
    100,
    1,
    10000,
    1176,
    473,
    0.40221088435374147,
    117600,
    99160,
    -18440,
    0.8431972789115646,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'a6892bef-a273-43f9-a01d-16b6fa5cc866'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A13',
    4,
    100,
    2,
    10000,
    392,
    44,
    0.11224489795918367,
    39200,
    45620,
    6420,
    1.1637755102040817,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'44a2f450-eea7-4cc8-9e24-bc4fdb60014d'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A13',
    5,
    100,
    1,
    10000,
    1176,
    173,
    0.14710884353741496,
    117600,
    98390,
    -19210,
    0.83664965986394557,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'36921525-4dac-49b8-ae80-88c3afc16203'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A13',
    6,
    100,
    1,
    10000,
    392,
    23,
    0.058673469387755105,
    39200,
    37870,
    -1330,
    0.96607142857142858,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'5ee1908c-ce9f-46a1-b12b-0e4170c697dc'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A13',
    7,
    100,
    2,
    10000,
    392,
    21,
    0.053571428571428568,
    39200,
    42170,
    2970,
    1.075765306122449,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'379736c1-f1d9-4da7-855b-5710afcca079'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A13',
    8,
    100,
    3,
    10000,
    392,
    8,
    0.020408163265306121,
    39200,
    62730,
    23530,
    1.6002551020408162,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'3bde85c2-a7e5-4e09-9690-2e153642dbdb'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A14',
    1,
    100,
    1,
    10000,
    337,
    63,
    0.18694362017804153,
    33700,
    24080,
    -9620,
    0.714540059347181,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'0a62ec45-513f-4aac-a17a-2400ec1bebb5'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A14',
    2,
    100,
    1,
    10000,
    1011,
    391,
    0.3867457962413452,
    101100,
    82310,
    -18790,
    0.81414441147378835,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'925481c9-fee4-4aa3-b6a7-fba26a3d1ab8'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A14',
    4,
    100,
    1,
    10000,
    337,
    15,
    0.044510385756676561,
    33700,
    15010,
    -18690,
    0.4454005934718101,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'b40c404a-fbd7-4371-a48f-5a467c0b02b1'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A14',
    5,
    100,
    1,
    10000,
    1011,
    131,
    0.12957467853610286,
    101100,
    85530,
    -15570,
    0.84599406528189913,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'088106c4-2a57-42d8-8d93-4b4adf20671b'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A14',
    6,
    100,
    1,
    10000,
    337,
    9,
    0.026706231454005934,
    33700,
    16180,
    -17520,
    0.48011869436201782,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'161dfac7-8b19-40fa-b8ef-05fd55bef0a3'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A14',
    7,
    100,
    3,
    10000,
    337,
    14,
    0.041543026706231452,
    33700,
    55230,
    21530,
    1.6388724035608309,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'32ee45ad-69c2-4189-a537-221ab93f4b55'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C1A14',
    8,
    100,
    3,
    10000,
    337,
    4,
    0.011869436201780416,
    33700,
    104410,
    70710,
    3.0982195845697329,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'0e46a8ed-7bad-473d-a4b7-656ff91de91f'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C2A13',
    1,
    100,
    1,
    10000,
    366,
    80,
    0.21857923497267759,
    36600,
    29370,
    -7230,
    0.80245901639344264,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'902146b7-6ded-45d9-b2ff-865f54f91527'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C2A13',
    2,
    100,
    1,
    10000,
    1098,
    438,
    0.39890710382513661,
    109800,
    83760,
    -26040,
    0.76284153005464483,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'62f0c68f-d9bf-4765-9ac4-8e2dbf05d65d'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C2A13',
    4,
    100,
    1,
    10000,
    366,
    29,
    0.079234972677595633,
    36600,
    28060,
    -8540,
    0.76666666666666672,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'600817b1-e0fc-4434-847e-6ad00c5bd2aa'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C2A13',
    5,
    100,
    1,
    10000,
    1098,
    158,
    0.14389799635701275,
    109800,
    74470,
    -35330,
    0.67823315118397087,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'c6e654ba-bc5e-4cc3-b3f9-02b391ba03f4'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C2A13',
    6,
    100,
    1,
    10000,
    366,
    15,
    0.040983606557377046,
    36600,
    29430,
    -7170,
    0.8040983606557377,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'5ca68d64-39e9-4582-8129-9086fd6c3e85'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C2A13',
    7,
    100,
    1,
    10000,
    366,
    16,
    0.043715846994535519,
    36600,
    24530,
    -12070,
    0.67021857923497263,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'62339031-593d-4070-8cf8-2de834186712'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C2A13',
    8,
    100,
    2,
    10000,
    366,
    4,
    0.01092896174863388,
    36600,
    40540,
    3940,
    1.1076502732240436,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'e340b781-b2d4-4912-bec4-504b8bed47ef'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C2A14',
    1,
    100,
    1,
    10000,
    336,
    72,
    0.21428571428571427,
    33600,
    25000,
    -8600,
    0.74404761904761907,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'a7637995-c164-47d5-8e55-16a410299083'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C2A14',
    2,
    100,
    1,
    10000,
    1008,
    406,
    0.40277777777777779,
    100800,
    76520,
    -24280,
    0.75912698412698409,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'3b5d418b-e3ec-4fd7-8e31-32db5589a937'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C2A14',
    4,
    100,
    1,
    10000,
    336,
    24,
    0.071428571428571425,
    33600,
    26660,
    -6940,
    0.79345238095238091,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'2f4ba1bd-32d8-4f9c-b032-e85d5738406c'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C2A14',
    5,
    100,
    1,
    10000,
    1008,
    147,
    0.14583333333333334,
    100800,
    78810,
    -21990,
    0.78184523809523809,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'fc06a3fc-52f5-4567-9b22-5884faed57a8'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C2A14',
    6,
    100,
    1,
    10000,
    336,
    11,
    0.03273809523809524,
    33600,
    20180,
    -13420,
    0.60059523809523807,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'3a9fdf02-33ae-43fd-9766-874c24db4658'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C2A14',
    7,
    100,
    1,
    10000,
    336,
    12,
    0.035714285714285712,
    33600,
    24590,
    -9010,
    0.731845238095238,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'31ed89eb-8d39-4e87-b650-55f431b00300'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C2A14',
    8,
    100,
    1,
    10000,
    336,
    3,
    0.0089285714285714281,
    33600,
    7280,
    -26320,
    0.21666666666666667,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'b11c91f4-97fa-481c-86b4-d25a302c3cf8'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C3A13',
    1,
    100,
    1,
    10000,
    850,
    209,
    0.24588235294117647,
    85000,
    64590,
    -20410,
    0.75988235294117645,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'80c5bc25-6c47-4f2a-ab0d-59c22e3ae61a'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C3A13',
    2,
    100,
    1,
    10000,
    2550,
    1118,
    0.43843137254901959,
    255000,
    202940,
    -52060,
    0.795843137254902,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'da2f5d37-5e86-4e74-ab4f-f64a4a58a0ff'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C3A13',
    4,
    100,
    1,
    10000,
    850,
    91,
    0.10705882352941176,
    85000,
    58770,
    -26230,
    0.69141176470588239,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'aa91048f-9d54-4ff0-a3ce-1df2dd1aa936'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C3A13',
    5,
    100,
    1,
    10000,
    2550,
    457,
    0.17921568627450982,
    255000,
    191240,
    -63760,
    0.74996078431372548,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'5eaf2577-bf37-47a1-a438-d828b9e31c58'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C3A13',
    6,
    100,
    1,
    10000,
    850,
    50,
    0.058823529411764705,
    85000,
    53050,
    -31950,
    0.62411764705882355,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'5b56897b-f917-4216-9c25-da03e532ac90'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C3A13',
    7,
    100,
    1,
    10000,
    850,
    47,
    0.055294117647058827,
    85000,
    55210,
    -29790,
    0.64952941176470591,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'79c93f2f-6d41-4c86-b193-52069f5b0da1'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C3A13',
    8,
    100,
    1,
    10000,
    850,
    12,
    0.01411764705882353,
    85000,
    54560,
    -30440,
    0.64188235294117646,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'7cec1171-548c-44d7-883b-01f4c5856eec'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C3A14',
    1,
    100,
    1,
    10000,
    697,
    153,
    0.21951219512195122,
    69700,
    51500,
    -18200,
    0.73888091822094693,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'f0da4b3f-045b-4361-885b-fb978f084f81'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C3A14',
    2,
    100,
    1,
    10000,
    2091,
    969,
    0.46341463414634149,
    209100,
    176560,
    -32540,
    0.84438067910090864,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'e72c7a12-6720-4611-a28c-70873b815187'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C3A14',
    4,
    100,
    1,
    10000,
    697,
    60,
    0.08608321377331421,
    69700,
    49550,
    -20150,
    0.71090387374461983,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'13089664-ca47-4857-aa09-221c748c33bf'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C3A14',
    5,
    100,
    1,
    10000,
    2091,
    412,
    0.19703491152558583,
    209100,
    177490,
    -31610,
    0.84882831181252993,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'b8b5969b-71ac-4837-aef6-7a8c53e92e76'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C3A14',
    6,
    100,
    1,
    10000,
    697,
    33,
    0.047345767575322814,
    69700,
    49110,
    -20590,
    0.70459110473457676,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'a9187a86-0613-440d-9e2b-de551b8279c1'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C3A14',
    7,
    100,
    1,
    10000,
    697,
    46,
    0.065997130559540887,
    69700,
    63070,
    -6630,
    0.90487804878048783,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'3a447527-2d5c-4795-aa19-9720d4c00f5f'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C3A14',
    8,
    100,
    1,
    10000,
    697,
    10,
    0.014347202295552367,
    69700,
    59350,
    -10350,
    0.851506456241033,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'528aa6af-83b1-4f4b-a82f-03c5d039c8e6'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A11',
    1,
    100,
    1,
    10000,
    137,
    37,
    0.27007299270072993,
    13700,
    10390,
    -3310,
    0.7583941605839416,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'60d1b840-3e06-4d2b-8a2f-a6367a1d6f60'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A11',
    2,
    100,
    1,
    10000,
    411,
    203,
    0.49391727493917276,
    41100,
    34730,
    -6370,
    0.8450121654501217,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'4ae86b94-1d2f-4b9a-b2f6-9075a3846c10'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A11',
    4,
    100,
    1,
    10000,
    137,
    20,
    0.145985401459854,
    13700,
    10020,
    -3680,
    0.73138686131386865,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'acbb0d7a-738e-426f-a3b3-2a3ec3fb25cb'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A11',
    5,
    100,
    1,
    10000,
    411,
    100,
    0.24330900243309003,
    41100,
    31790,
    -9310,
    0.77347931873479314,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'f77bac7c-2fa0-40e4-98fa-13f76e719276'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A11',
    6,
    100,
    1,
    10000,
    137,
    11,
    0.080291970802919707,
    13700,
    8880,
    -4820,
    0.64817518248175188,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'e4e968fd-ce38-42bc-9d0b-af0d5b7b3e86'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A11',
    7,
    100,
    3,
    10000,
    137,
    9,
    0.06569343065693431,
    13700,
    17130,
    3430,
    1.2503649635036496,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'247d241e-8f5f-4fd2-8175-74037db95923'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A11',
    8,
    100,
    1,
    10000,
    137,
    2,
    0.014598540145985401,
    13700,
    4790,
    -8910,
    0.34963503649635036,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'228210dc-e149-4319-8d62-d2c45577450e'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A12',
    1,
    100,
    1,
    10000,
    516,
    120,
    0.23255813953488372,
    51600,
    35540,
    -16060,
    0.6887596899224806,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'12ba1dac-0be2-4aa1-b448-5784385b7e5f'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A12',
    2,
    100,
    1,
    10000,
    1548,
    745,
    0.481266149870801,
    154800,
    130040,
    -24760,
    0.84005167958656335,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'eda4b655-de5a-4405-8636-02ceb901ebb3'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A12',
    4,
    100,
    1,
    10000,
    516,
    46,
    0.089147286821705432,
    51600,
    34320,
    -17280,
    0.66511627906976745,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'edf93905-5cfc-49ee-adca-eb56a7146246'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A12',
    5,
    100,
    1,
    10000,
    1548,
    353,
    0.22803617571059431,
    154800,
    134300,
    -20500,
    0.86757105943152457,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'29db8e95-f72f-4886-b172-59038da87a0c'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A12',
    6,
    100,
    1,
    10000,
    516,
    28,
    0.054263565891472867,
    51600,
    32500,
    -19100,
    0.62984496124031009,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'1f95c98b-9286-446f-817c-40a127c68a96'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A12',
    7,
    100,
    1,
    10000,
    516,
    36,
    0.069767441860465115,
    51600,
    31630,
    -19970,
    0.612984496124031,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'caf43016-b8fc-43db-ba63-86ad1e20ca0a'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A12',
    8,
    100,
    1,
    10000,
    516,
    6,
    0.011627906976744186,
    51600,
    12810,
    -38790,
    0.24825581395348836,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'1ae8d153-f238-4836-9f86-2f5282b5a9f6'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A13',
    1,
    100,
    1,
    10000,
    1418,
    344,
    0.24259520451339917,
    141800,
    123420,
    -18380,
    0.87038081805359657,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'ecacee32-37d8-4fe0-90fb-9406c91ef41e'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A13',
    2,
    100,
    1,
    10000,
    4254,
    1820,
    0.42783262811471556,
    425400,
    350590,
    -74810,
    0.82414198401504468,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'f1c8cd2c-b0d4-4295-84b1-1e18b9148ba8'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A13',
    4,
    100,
    1,
    10000,
    1418,
    115,
    0.081100141043723553,
    141800,
    118220,
    -23580,
    0.83370944992947815,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'4ff03381-00a6-4e15-8251-9303164bb53b'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A13',
    5,
    100,
    1,
    10000,
    4254,
    693,
    0.16290550070521861,
    425400,
    351870,
    -73530,
    0.827150916784203,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'5db089a4-5da2-44ff-9935-1088692180c6'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A13',
    6,
    100,
    1,
    10000,
    1418,
    68,
    0.047954866008462625,
    141800,
    135080,
    -6720,
    0.95260930888575457,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'ed5eec89-eed6-4e36-a47c-dbf912eb2c6f'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A13',
    7,
    100,
    1,
    10000,
    1418,
    55,
    0.038787023977433006,
    141800,
    107800,
    -34000,
    0.76022566995768692,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'95a9d939-5a49-47d3-afa7-5fd987ec9ee4'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A13',
    8,
    100,
    1,
    10000,
    1418,
    9,
    0.0063469675599435822,
    141800,
    48860,
    -92940,
    0.34456981664315939,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'3371ad0d-b89b-4786-87a4-f3972b5fbd44'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A14',
    1,
    100,
    1,
    10000,
    790,
    166,
    0.21012658227848102,
    79000,
    61850,
    -17150,
    0.78291139240506324,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'e7414744-295a-4fd1-aa96-91c6af0db8dd'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A14',
    2,
    100,
    1,
    10000,
    2370,
    928,
    0.39156118143459917,
    237000,
    186990,
    -50010,
    0.78898734177215191,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'f7233c8e-84aa-4dcd-9b6c-801d1e047c2a'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A14',
    4,
    100,
    1,
    10000,
    790,
    63,
    0.079746835443037969,
    79000,
    64580,
    -14420,
    0.8174683544303798,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'3a4f7ae9-20e1-472f-85c4-c397be5352f8'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A14',
    5,
    100,
    1,
    10000,
    2370,
    323,
    0.13628691983122362,
    237000,
    155080,
    -81920,
    0.65434599156118145,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'6833c74b-1dc8-475c-aed5-8acfd84a0803'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A14',
    6,
    100,
    1,
    10000,
    790,
    31,
    0.039240506329113925,
    79000,
    46790,
    -32210,
    0.59227848101265823,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'74955981-b863-4d65-b663-5fcfe79fff85'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A14',
    7,
    100,
    1,
    10000,
    790,
    32,
    0.040506329113924051,
    79000,
    48680,
    -30320,
    0.6162025316455696,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'5b184242-1bc4-4a60-b59b-3ba6efc58343'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C4A14',
    8,
    100,
    3,
    10000,
    790,
    9,
    0.011392405063291139,
    79000,
    96810,
    17810,
    1.2254430379746835,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'6a543e14-89fb-435e-9dda-864ac6068474'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C5A11',
    1,
    100,
    1,
    10000,
    1105,
    352,
    0.318552036199095,
    110500,
    92800,
    -17700,
    0.83981900452488689,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'53d7b8c1-cac7-4b13-a8bf-8ef7717371ed'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C5A11',
    2,
    100,
    1,
    10000,
    3315,
    1697,
    0.51191553544494717,
    331500,
    266470,
    -65030,
    0.80383107088989447,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'86669a61-18ec-4964-864f-af2722d22256'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C5A11',
    4,
    100,
    1,
    10000,
    1105,
    154,
    0.13936651583710408,
    110500,
    79660,
    -30840,
    0.72090497737556558,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'dccacb4d-77a4-4bf9-a685-ba97f25f3fc9'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C5A11',
    5,
    100,
    1,
    10000,
    3315,
    807,
    0.24343891402714932,
    331500,
    244480,
    -87020,
    0.73749622926093517,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'b1bee833-b660-4efa-b62a-22e345365b21'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C5A11',
    6,
    100,
    1,
    10000,
    1105,
    91,
    0.082352941176470587,
    110500,
    87410,
    -23090,
    0.79104072398190051,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'66a6bf9c-75d7-4814-ae33-5a8951d078ee'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C5A11',
    7,
    100,
    1,
    10000,
    1105,
    93,
    0.084162895927601816,
    110500,
    61930,
    -48570,
    0.56045248868778286,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'9993e861-0811-434c-a8d2-8e5258968812'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C5A11',
    8,
    100,
    1,
    10000,
    1105,
    23,
    0.020814479638009049,
    110500,
    50470,
    -60030,
    0.4567420814479638,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'2103b285-6ae8-4c6a-a542-074a94d4050e'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C5A12',
    1,
    100,
    1,
    10000,
    2074,
    520,
    0.25072324011571839,
    207400,
    154470,
    -52930,
    0.74479267116682735,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'6051df23-9cea-40b4-9128-43174bf498f0'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C5A12',
    2,
    100,
    1,
    10000,
    6222,
    2880,
    0.46287367405978785,
    622200,
    515480,
    -106720,
    0.8284795885567342,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'197c230c-2d82-438f-b349-19d40c8b6a80'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C5A12',
    4,
    100,
    1,
    10000,
    2074,
    228,
    0.10993249758919961,
    207400,
    165160,
    -42240,
    0.79633558341369337,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'2b189ef2-3946-47fe-863b-829677b8091a'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C5A12',
    5,
    100,
    1,
    10000,
    6222,
    1132,
    0.18193506910961105,
    622200,
    474730,
    -147470,
    0.76298617807778846,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'90471ed0-066c-461b-9b10-4d0b92cb8ecd'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C5A12',
    6,
    100,
    1,
    10000,
    2074,
    118,
    0.056894889103182258,
    207400,
    135650,
    -71750,
    0.65405014464802314,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'da107f6e-54f3-4ac0-8b98-7797283742a6'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C5A12',
    7,
    100,
    1,
    10000,
    2074,
    101,
    0.048698167791706846,
    207400,
    165050,
    -42350,
    0.7958052073288332,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'14e9fd11-98d2-4cbf-b3bb-5ccbd6aff22b'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C5A12',
    8,
    100,
    1,
    10000,
    2074,
    22,
    0.010607521697203472,
    207400,
    171980,
    -35420,
    0.82921890067502413,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'a7bc6bf3-a76a-4afc-bec0-094bd5c75271'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C6A11',
    1,
    100,
    1,
    10000,
    1089,
    297,
    0.27272727272727271,
    108900,
    85930,
    -22970,
    0.78907254361799817,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'4abeee5e-bd3e-4431-be97-c390b7bc02f9'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C6A11',
    2,
    100,
    1,
    10000,
    3267,
    1468,
    0.44934190388735845,
    326700,
    248970,
    -77730,
    0.76207529843893484,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'943872be-5ab5-49af-9d5b-fc7a6452ebc1'
  )
GO
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C6A11',
    4,
    100,
    1,
    10000,
    1089,
    121,
    0.11111111111111111,
    108900,
    88080,
    -20820,
    0.80881542699724518,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'ae033684-e2cb-406d-a8c4-4d2cd41d14d0'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C6A11',
    5,
    100,
    1,
    10000,
    3267,
    593,
    0.18151209060299969,
    326700,
    220900,
    -105800,
    0.67615549433731248,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'23271cc1-7d27-4479-914f-793c214bc87a'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C6A11',
    6,
    100,
    1,
    10000,
    1089,
    67,
    0.061524334251606978,
    108900,
    81930,
    -26970,
    0.75234159779614329,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'2a6727b4-90f3-4675-9383-9504e5b6611d'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C6A11',
    7,
    100,
    1,
    10000,
    1089,
    56,
    0.051423324150596875,
    108900,
    69400,
    -39500,
    0.63728191000918277,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'9f5cd6aa-98a6-4791-9382-f231c57f406f'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C6A11',
    8,
    100,
    3,
    10000,
    1089,
    16,
    0.014692378328741965,
    108900,
    167290,
    58390,
    1.5361799816345272,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'ee70610e-2c56-4592-a2fd-689081306e7f'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C6A12',
    1,
    100,
    1,
    10000,
    141,
    29,
    0.20567375886524822,
    14100,
    8700,
    -5400,
    0.61702127659574468,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'96083f07-d2cc-414f-98b3-f0f90c60433a'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C6A12',
    2,
    100,
    1,
    10000,
    423,
    173,
    0.408983451536643,
    42300,
    33750,
    -8550,
    0.7978723404255319,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'314c95b6-2fa9-405b-b6b4-845b7813b702'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C6A12',
    4,
    100,
    1,
    10000,
    141,
    4,
    0.028368794326241134,
    14100,
    2170,
    -11930,
    0.15390070921985816,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'ccb9ab53-4237-45e7-b708-42b569ea790a'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C6A12',
    5,
    100,
    1,
    10000,
    423,
    61,
    0.14420803782505912,
    42300,
    27890,
    -14410,
    0.659338061465721,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'a3c9cd40-3f11-4c38-bca9-6d4dbf40072c'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C6A12',
    6,
    100,
    1,
    10000,
    141,
    2,
    0.014184397163120567,
    14100,
    1210,
    -12890,
    0.085815602836879432,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'31df3ec3-f27f-4b99-895a-36c67bed1360'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C6A12',
    7,
    100,
    3,
    10000,
    141,
    8,
    0.056737588652482268,
    14100,
    26430,
    12330,
    1.8744680851063831,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'7fbd6944-d82f-48aa-b316-9c78fe820024'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T1C6A12',
    8,
    100,
    1,
    10000,
    141,
    2,
    0.014184397163120567,
    14100,
    4020,
    -10080,
    0.28510638297872343,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'ee4f3498-6d64-4225-9cb7-81e7c765898a'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A11',
    1,
    100,
    1,
    10000,
    2,
    1,
    0.5,
    200,
    170,
    -30,
    0.85,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'1e5983ef-9dd0-4a6d-b9af-dcf38709e592'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A11',
    2,
    100,
    1,
    10000,
    6,
    2,
    0.33333333333333331,
    600,
    230,
    -370,
    0.38333333333333336,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'6b7a956b-bc77-4f12-a954-01dc74aec59e'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A11',
    4,
    100,
    1,
    10000,
    2,
    0,
    0,
    200,
    0,
    -200,
    0,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'bf4d29f7-f5c3-46e8-921a-3fa97f4e0366'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A11',
    5,
    100,
    1,
    10000,
    6,
    0,
    0,
    600,
    0,
    -600,
    0,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'660324cc-03d4-4f40-9550-2b77ce59b5af'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A11',
    6,
    100,
    1,
    10000,
    2,
    0,
    0,
    200,
    0,
    -200,
    0,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'fe097d78-1b0a-4972-9b2c-6cb028faa0aa'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A11',
    7,
    100,
    1,
    10000,
    2,
    0,
    0,
    200,
    0,
    -200,
    0,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'6e342eb8-58bf-43fa-889d-5c883822e9c8'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A11',
    8,
    100,
    1,
    10000,
    2,
    0,
    0,
    200,
    0,
    -200,
    0,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'b9b672e1-cabb-4214-bdb4-d39813e249d3'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A12',
    1,
    100,
    1,
    10000,
    55,
    11,
    0.2,
    5500,
    4410,
    -1090,
    0.80181818181818176,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'8e3122f4-60fa-42c6-9b45-82844f0f3c66'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A12',
    2,
    100,
    1,
    10000,
    165,
    69,
    0.41818181818181815,
    16500,
    14700,
    -1800,
    0.89090909090909087,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'249fac2c-ae13-4226-a9ea-f2a06eff8abf'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A12',
    4,
    100,
    1,
    10000,
    55,
    4,
    0.072727272727272724,
    5500,
    2710,
    -2790,
    0.49272727272727274,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'7b69f287-8001-46a5-afd6-9d404e3a52b1'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A12',
    5,
    100,
    1,
    10000,
    165,
    28,
    0.16969696969696971,
    16500,
    10460,
    -6040,
    0.63393939393939391,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'7bcd530b-4451-40a1-9e34-8e73e4d9ed9d'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A12',
    6,
    100,
    1,
    10000,
    55,
    2,
    0.036363636363636362,
    5500,
    2880,
    -2620,
    0.52363636363636368,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'21cd847f-8977-430e-8ffe-b62bbe3bfe98'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A12',
    7,
    100,
    1,
    10000,
    55,
    5,
    0.090909090909090912,
    5500,
    2330,
    -3170,
    0.42363636363636364,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'82e12715-44da-4be5-b5d4-f2e0d80acafb'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A12',
    8,
    100,
    1,
    10000,
    55,
    1,
    0.018181818181818181,
    5500,
    3650,
    -1850,
    0.66363636363636369,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'0fa36435-2803-4468-9345-a7ff5d34f0bd'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A13',
    1,
    100,
    1,
    10000,
    180,
    34,
    0.18888888888888888,
    18000,
    13860,
    -4140,
    0.77,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'1369cd11-49d9-4128-8dbf-8ccecaa9b93c'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A13',
    2,
    100,
    1,
    10000,
    540,
    207,
    0.38333333333333336,
    54000,
    45180,
    -8820,
    0.83666666666666667,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'6948acc3-8063-4292-8100-49fec0ed5be0'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A13',
    4,
    100,
    1,
    10000,
    180,
    7,
    0.03888888888888889,
    18000,
    7310,
    -10690,
    0.40611111111111109,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'fe2e0818-f89d-41b6-b55a-61e8c71a4b0c'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A13',
    5,
    100,
    1,
    10000,
    540,
    69,
    0.12777777777777777,
    54000,
    49510,
    -4490,
    0.91685185185185181,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'2aa05e13-a986-4dd5-bdcb-53656049362c'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A13',
    6,
    100,
    1,
    10000,
    180,
    2,
    0.011111111111111112,
    18000,
    3290,
    -14710,
    0.18277777777777779,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'778c0a30-ca93-4699-b1cd-aa47ca10d72f'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A13',
    7,
    100,
    1,
    10000,
    180,
    3,
    0.016666666666666666,
    18000,
    5260,
    -12740,
    0.29222222222222222,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'76e85dfd-8b49-4860-8e33-2d53f772d400'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A13',
    8,
    100,
    1,
    10000,
    180,
    0,
    0,
    18000,
    0,
    -18000,
    0,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'539f8b00-67c6-491f-bc0c-ee8475c41d61'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A14',
    1,
    100,
    1,
    10000,
    174,
    33,
    0.18965517241379309,
    17400,
    12940,
    -4460,
    0.7436781609195402,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'04811d52-b5f2-4d8a-9748-39193d0e2e46'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A14',
    2,
    100,
    1,
    10000,
    522,
    214,
    0.40996168582375481,
    52200,
    48060,
    -4140,
    0.92068965517241375,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'96aaf05c-df08-4cc6-a329-76355cbf8d10'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A14',
    4,
    100,
    3,
    10000,
    174,
    12,
    0.068965517241379309,
    17400,
    25510,
    8110,
    1.4660919540229884,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'337082c7-ecac-427a-a8db-fcda2c198307'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A14',
    5,
    100,
    2,
    10000,
    522,
    81,
    0.15517241379310345,
    52200,
    58250,
    6050,
    1.1159003831417624,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'1abfe38f-cf58-43f5-b338-049757ea4c8b'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A14',
    6,
    100,
    3,
    10000,
    174,
    7,
    0.040229885057471264,
    17400,
    32300,
    14900,
    1.8563218390804597,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'2832bdf7-6c0e-4fcd-8162-04ad5d7cef80'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A14',
    7,
    100,
    3,
    10000,
    174,
    6,
    0.034482758620689655,
    17400,
    21640,
    4240,
    1.2436781609195402,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'90971206-ba7e-4b7e-a73c-bc46b80cdda1'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C1A14',
    8,
    100,
    3,
    10000,
    174,
    1,
    0.0057471264367816091,
    17400,
    35070,
    17670,
    2.0155172413793103,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'f22082e5-0a75-415b-ba7e-8e05be93c169'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C2A13',
    1,
    100,
    1,
    10000,
    269,
    66,
    0.24535315985130113,
    26900,
    24210,
    -2690,
    0.9,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'b16ba7e5-9124-40cc-b1b6-09148fe9db82'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C2A13',
    2,
    100,
    1,
    10000,
    807,
    327,
    0.40520446096654272,
    80700,
    67210,
    -13490,
    0.83283767038413881,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'b756a3d7-a571-4a43-8c4a-af2946db2075'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C2A13',
    4,
    100,
    1,
    10000,
    269,
    16,
    0.059479553903345722,
    26900,
    15550,
    -11350,
    0.57806691449814129,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'156c29cf-42d9-4420-aff4-0254c0a6e6a5'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C2A13',
    5,
    100,
    1,
    10000,
    807,
    117,
    0.1449814126394052,
    80700,
    69020,
    -11680,
    0.855266418835192,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'132b9e22-22ee-4ffb-833e-fcf84b75c8fd'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C2A13',
    6,
    100,
    1,
    10000,
    269,
    10,
    0.03717472118959108,
    26900,
    14760,
    -12140,
    0.54869888475836426,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'2805093e-144f-48ab-a856-2000ce7badf3'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C2A13',
    7,
    100,
    1,
    10000,
    269,
    5,
    0.01858736059479554,
    26900,
    4940,
    -21960,
    0.18364312267657992,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'293c0933-3ea9-4ca9-84b1-7186199277c2'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C2A13',
    8,
    100,
    1,
    10000,
    269,
    0,
    0,
    26900,
    0,
    -26900,
    0,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'31b2eb00-3e07-4dd4-97dd-6ad0f22fae31'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C2A14',
    1,
    100,
    1,
    10000,
    279,
    49,
    0.17562724014336917,
    27900,
    16060,
    -11840,
    0.57562724014336919,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'74faef0e-5c80-4455-b058-d251aac1b966'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C2A14',
    2,
    100,
    1,
    10000,
    837,
    329,
    0.3930704898446834,
    83700,
    68140,
    -15560,
    0.81409796893667863,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'5053f022-091e-48ad-8b2b-b1d2d16c1669'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C2A14',
    4,
    100,
    1,
    10000,
    279,
    14,
    0.050179211469534052,
    27900,
    15150,
    -12750,
    0.543010752688172,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'abb35209-e664-4dde-a523-0e9e27c35697'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C2A14',
    5,
    100,
    1,
    10000,
    837,
    103,
    0.12305854241338113,
    83700,
    55680,
    -28020,
    0.66523297491039424,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'e5bacfa4-8851-4b5d-850d-e437dc2e2123'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C2A14',
    6,
    100,
    1,
    10000,
    279,
    7,
    0.025089605734767026,
    27900,
    16680,
    -11220,
    0.59784946236559144,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'b7d5cb11-6f40-4a79-b77d-e63ea539692f'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C2A14',
    7,
    100,
    2,
    10000,
    279,
    11,
    0.039426523297491037,
    27900,
    31620,
    3720,
    1.1333333333333333,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'5225508b-6f20-456f-b77f-fc9615987746'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C2A14',
    8,
    100,
    3,
    10000,
    279,
    2,
    0.0071684587813620072,
    27900,
    81760,
    53860,
    2.9304659498207886,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'aebba5ed-6f35-4267-b2c9-20f6335fc8d4'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C3A13',
    1,
    100,
    1,
    10000,
    696,
    145,
    0.20833333333333334,
    69600,
    45690,
    -23910,
    0.65646551724137936,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'16ce826a-26d6-44e9-832e-c5d2f5156029'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C3A13',
    2,
    100,
    1,
    10000,
    2088,
    812,
    0.3888888888888889,
    208800,
    159550,
    -49250,
    0.76412835249042144,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'ff905064-40c7-439f-b17d-4a093086166c'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C3A13',
    4,
    100,
    1,
    10000,
    696,
    34,
    0.048850574712643681,
    69600,
    30860,
    -38740,
    0.44339080459770114,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'1b456895-b271-4345-8e9f-601006ab5d47'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C3A13',
    5,
    100,
    1,
    10000,
    2088,
    262,
    0.12547892720306514,
    208800,
    140680,
    -68120,
    0.6737547892720307,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'beb78381-16cb-4875-bce2-12c452728d8b'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C3A13',
    6,
    100,
    1,
    10000,
    696,
    19,
    0.027298850574712645,
    69600,
    23080,
    -46520,
    0.33160919540229883,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'59b75691-b273-4716-a3e7-a5929c448f4f'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C3A13',
    7,
    100,
    1,
    10000,
    696,
    13,
    0.018678160919540231,
    69600,
    43530,
    -26070,
    0.62543103448275861,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'a31bb8db-5cd0-47b2-9aa0-228f8ac39fa8'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C3A13',
    8,
    100,
    1,
    10000,
    696,
    3,
    0.0043103448275862068,
    69600,
    12250,
    -57350,
    0.17600574712643677,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'eadb848c-2ef5-49c9-9f2d-ab1e96d36293'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C3A14',
    1,
    100,
    1,
    10000,
    675,
    125,
    0.18518518518518518,
    67500,
    50270,
    -17230,
    0.7447407407407407,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'cc7385ff-499e-479d-924d-453a95fdf10f'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C3A14',
    2,
    100,
    1,
    10000,
    2025,
    792,
    0.39111111111111113,
    202500,
    172020,
    -30480,
    0.8494814814814815,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'67040b17-5ecb-4f43-b96d-7117d99600ac'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C3A14',
    4,
    100,
    1,
    10000,
    675,
    45,
    0.066666666666666666,
    67500,
    61870,
    -5630,
    0.91659259259259263,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'ab997d2e-436f-41d6-8d7b-131d60c6c06f'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C3A14',
    5,
    100,
    1,
    10000,
    2025,
    262,
    0.12938271604938273,
    202500,
    173360,
    -29140,
    0.85609876543209873,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'c0e0fe45-9a94-4860-84b2-e3ec83273edf'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C3A14',
    6,
    100,
    1,
    10000,
    675,
    27,
    0.04,
    67500,
    61830,
    -5670,
    0.916,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'37cb7e10-604f-45c6-91a3-f5ef76422444'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C3A14',
    7,
    100,
    1,
    10000,
    675,
    13,
    0.019259259259259261,
    67500,
    43880,
    -23620,
    0.650074074074074,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'2b69671a-815d-442a-bd74-a9a0c5f78fb5'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C3A14',
    8,
    100,
    3,
    10000,
    675,
    7,
    0.01037037037037037,
    67500,
    144270,
    76770,
    2.1373333333333333,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'db282ebb-ded0-48f0-95ce-f78f9546add2'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A11',
    1,
    100,
    1,
    10000,
    70,
    17,
    0.24285714285714286,
    7000,
    6250,
    -750,
    0.8928571428571429,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'2849df86-33e1-4695-a9a8-2f20f2c1e986'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A11',
    2,
    100,
    1,
    10000,
    210,
    87,
    0.41428571428571431,
    21000,
    17650,
    -3350,
    0.84047619047619049,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'a21e1754-0426-493c-a211-f7022ce61b77'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A11',
    4,
    100,
    1,
    10000,
    70,
    6,
    0.085714285714285715,
    7000,
    4100,
    -2900,
    0.58571428571428574,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'2e35e7c6-bf7c-4b23-98fc-9dda7cff9a6c'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A11',
    5,
    100,
    2,
    10000,
    210,
    31,
    0.14761904761904762,
    21000,
    22530,
    1530,
    1.072857142857143,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'7bb6ac21-769f-4d6c-82ef-5c303d201335'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A11',
    6,
    100,
    1,
    10000,
    70,
    4,
    0.057142857142857141,
    7000,
    4070,
    -2930,
    0.58142857142857141,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'cd198452-66f9-4338-914d-a84a352e34b3'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A11',
    7,
    100,
    1,
    10000,
    70,
    1,
    0.014285714285714285,
    7000,
    3950,
    -3050,
    0.56428571428571428,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'83f8b2b2-5a7e-4a6b-b21c-7d29a013508e'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A11',
    8,
    100,
    1,
    10000,
    70,
    0,
    0,
    7000,
    0,
    -7000,
    0,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'a0e1080b-8ffb-4b53-82c1-496b974f2743'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A12',
    1,
    100,
    1,
    10000,
    413,
    81,
    0.19612590799031476,
    41300,
    31690,
    -9610,
    0.76731234866828091,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'33ab91f5-ff65-48be-92fc-00d7f3d18c99'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A12',
    2,
    100,
    1,
    10000,
    1239,
    483,
    0.38983050847457629,
    123900,
    91820,
    -32080,
    0.74108151735270378,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'19f27a0b-2191-4acd-bebf-aca5b68c60d1'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A12',
    4,
    100,
    1,
    10000,
    413,
    25,
    0.060532687651331719,
    41300,
    34740,
    -6560,
    0.8411622276029056,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'0e2fa0fc-a513-406c-8165-a24f11b6aa9a'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A12',
    5,
    100,
    1,
    10000,
    1239,
    150,
    0.12106537530266344,
    123900,
    86430,
    -37470,
    0.69757869249394677,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'33420dd0-3e88-4297-831e-08af06fee1ad'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A12',
    6,
    100,
    2,
    10000,
    413,
    12,
    0.029055690072639227,
    41300,
    43030,
    1730,
    1.0418886198547215,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'50ba7dd1-e4b6-428a-bef7-dff183126eab'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A12',
    7,
    100,
    1,
    10000,
    413,
    9,
    0.021791767554479417,
    41300,
    13280,
    -28020,
    0.32154963680387411,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'bcebca44-f84f-42de-86a0-ea970cf56884'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A12',
    8,
    100,
    1,
    10000,
    413,
    2,
    0.0048426150121065378,
    41300,
    13870,
    -27430,
    0.3358353510895884,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'290e0e8e-8585-494b-ba81-b551b6f631f5'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A13',
    1,
    100,
    1,
    10000,
    1774,
    378,
    0.21307779030439683,
    177400,
    144580,
    -32820,
    0.81499436302142048,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'67c275d3-a1f1-4932-95d0-b0849e3c7395'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A13',
    2,
    100,
    1,
    10000,
    5322,
    2140,
    0.40210447200300636,
    532200,
    426120,
    -106080,
    0.80067643742953776,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'7fdc7683-7f6d-462d-b02f-5d10f7015d60'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A13',
    4,
    100,
    1,
    10000,
    1774,
    118,
    0.0665163472378805,
    177400,
    146540,
    -30860,
    0.826042841037204,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'ed974adf-8ec7-4e03-b451-0939ececb5c2'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A13',
    5,
    100,
    1,
    10000,
    5322,
    726,
    0.13641488162344984,
    532200,
    390320,
    -141880,
    0.73340849304772637,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'505fe8c2-7b96-448e-be4b-7b4c697f6eda'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A13',
    6,
    100,
    1,
    10000,
    1774,
    63,
    0.035512965050732807,
    177400,
    127670,
    -49730,
    0.71967305524239011,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'd93745af-c335-495d-825d-d3020d9e95ae'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A13',
    7,
    100,
    1,
    10000,
    1774,
    46,
    0.025930101465614429,
    177400,
    115590,
    -61810,
    0.65157835400225483,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'2fdb5754-fc45-4130-a28a-d902f3a3f90f'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A13',
    8,
    100,
    2,
    10000,
    1774,
    11,
    0.0062006764374295375,
    177400,
    180330,
    2930,
    1.0165163472378804,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'3798b8fe-94f8-43a4-81a3-f9d4ab01798b'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A14',
    1,
    100,
    1,
    10000,
    1365,
    280,
    0.20512820512820512,
    136500,
    102670,
    -33830,
    0.75216117216117218,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'3aa9da8f-e35e-480a-85d3-aa7e32faa0ac'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A14',
    2,
    100,
    1,
    10000,
    4095,
    1739,
    0.42466422466422465,
    409500,
    328700,
    -80800,
    0.80268620268620272,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'0e451c74-a2a7-489d-b90d-d963955ca5b7'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A14',
    4,
    100,
    1,
    10000,
    1365,
    114,
    0.083516483516483511,
    136500,
    110600,
    -25900,
    0.81025641025641026,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'6b3cfb76-38ff-4d41-8aab-4debaeab6752'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A14',
    5,
    100,
    1,
    10000,
    4095,
    639,
    0.15604395604395605,
    409500,
    314070,
    -95430,
    0.76695970695970694,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'69a3a4e4-9b4c-4d59-a658-b570c1540424'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A14',
    6,
    100,
    1,
    10000,
    1365,
    62,
    0.045421245421245419,
    136500,
    113690,
    -22810,
    0.83289377289377287,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'223f1ab5-80c9-450e-9e77-8efd2df975fb'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A14',
    7,
    100,
    1,
    10000,
    1365,
    59,
    0.043223443223443223,
    136500,
    107890,
    -28610,
    0.79040293040293041,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'454edac6-f34e-4dab-ae62-4ceda52c98a6'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C4A14',
    8,
    100,
    1,
    10000,
    1365,
    12,
    0.0087912087912087912,
    136500,
    114320,
    -22180,
    0.83750915750915755,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'466a901d-2b52-4032-beda-edc148e9b3ea'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C5A11',
    1,
    100,
    1,
    10000,
    898,
    258,
    0.28730512249443207,
    89800,
    68110,
    -21690,
    0.75846325167037865,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'7b989f71-89dd-4d72-8638-783a9a01d01c'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C5A11',
    2,
    100,
    1,
    10000,
    2694,
    1352,
    0.50185597624350409,
    269400,
    224280,
    -45120,
    0.83251670378619158,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'2f76a50e-8c0e-4014-8b55-c351d7549b13'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C5A11',
    4,
    100,
    1,
    10000,
    898,
    110,
    0.12249443207126949,
    89800,
    59690,
    -30110,
    0.66469933184855234,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'61339c29-8adf-4fa5-8fb9-354d5903266b'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C5A11',
    5,
    100,
    1,
    10000,
    2694,
    591,
    0.21937639198218262,
    269400,
    211840,
    -57560,
    0.78634001484780991,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'a514f7b0-1331-4c27-a02c-7eca4ed9827b'
  )
GO
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C5A11',
    6,
    100,
    1,
    10000,
    898,
    66,
    0.073496659242761692,
    89800,
    65960,
    -23840,
    0.734521158129176,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'd13f0133-36dc-45ff-bb7a-797a1f3ab9a7'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C5A11',
    7,
    100,
    1,
    10000,
    898,
    65,
    0.072383073496659248,
    89800,
    81920,
    -7880,
    0.912249443207127,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'98add5a9-ad1a-4002-8419-5eeae9725b6a'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C5A11',
    8,
    100,
    2,
    10000,
    898,
    19,
    0.021158129175946547,
    89800,
    104320,
    14520,
    1.1616926503340757,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'45ad22ed-6df6-47d2-ad43-e45609ea1cb5'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C5A12',
    1,
    100,
    1,
    10000,
    3453,
    901,
    0.26093252244425136,
    345300,
    270670,
    -74630,
    0.78386909933391258,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'25694d57-7bde-42ef-9658-c4d76b4f5991'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C5A12',
    2,
    100,
    1,
    10000,
    10359,
    4840,
    0.46722656627087555,
    1035900,
    843030,
    -192870,
    0.81381407471763689,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'2b69f990-21cb-4160-b244-f7ccca2a6bc4'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C5A12',
    4,
    100,
    1,
    10000,
    3453,
    349,
    0.10107153200115841,
    345300,
    269460,
    -75840,
    0.780364900086881,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'84e81872-54c7-4c7c-89ca-f942b2a93bea'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C5A12',
    5,
    100,
    1,
    10000,
    10359,
    2025,
    0.19548218940052128,
    1035900,
    809300,
    -226600,
    0.78125301670045366,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'c20848c0-b96c-44d7-87be-ef8bdc18423c'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C5A12',
    6,
    100,
    1,
    10000,
    3453,
    199,
    0.057631045467709238,
    345300,
    253510,
    -91790,
    0.73417318273964671,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'9a85c5b2-31b1-424a-acd0-ae45cba327d2'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C5A12',
    7,
    100,
    1,
    10000,
    3453,
    190,
    0.055024616275702286,
    345300,
    237380,
    -107920,
    0.687460179554011,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'9f3967de-98de-43e5-b063-46b2aa57d129'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C5A12',
    8,
    100,
    1,
    10000,
    3453,
    40,
    0.011584129742253113,
    345300,
    162380,
    -182920,
    0.47025774688676514,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'463c6bbe-177a-435d-8af3-62959f622b05'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C6A11',
    1,
    100,
    1,
    10000,
    375,
    87,
    0.232,
    37500,
    27460,
    -10040,
    0.73226666666666662,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'a064ab8a-51e9-4b0e-b619-7890743392b7'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C6A11',
    2,
    100,
    1,
    10000,
    1125,
    458,
    0.40711111111111109,
    112500,
    88360,
    -24140,
    0.78542222222222224,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'8edb9f41-ca73-4e00-a397-bc2e7d2c2386'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C6A11',
    4,
    100,
    1,
    10000,
    375,
    32,
    0.08533333333333333,
    37500,
    28110,
    -9390,
    0.7496,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'5c919d3c-a4fe-48fb-8f33-8f4ef7a027d4'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C6A11',
    5,
    100,
    1,
    10000,
    1125,
    154,
    0.13688888888888889,
    112500,
    71860,
    -40640,
    0.63875555555555552,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'e3b90729-1d49-4f3c-ae06-b36ecf930927'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C6A11',
    6,
    100,
    1,
    10000,
    375,
    20,
    0.053333333333333337,
    37500,
    31650,
    -5850,
    0.844,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'c50c73f9-9a0e-4a74-837b-f8aeb0ad938f'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C6A11',
    7,
    100,
    1,
    10000,
    375,
    12,
    0.032,
    37500,
    26860,
    -10640,
    0.71626666666666672,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'5a87717a-f516-4474-ac36-730f3fb62c4c'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C6A11',
    8,
    100,
    2,
    10000,
    375,
    3,
    0.008,
    37500,
    42820,
    5320,
    1.1418666666666666,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'80f1436a-0118-4de4-a360-4d6523bf1191'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C6A12',
    1,
    100,
    1,
    10000,
    221,
    48,
    0.21719457013574661,
    22100,
    17780,
    -4320,
    0.80452488687782808,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'dea22a44-9c08-4f1b-81f6-b726c95a3adc'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C6A12',
    2,
    100,
    1,
    10000,
    663,
    251,
    0.37858220211161386,
    66300,
    49690,
    -16610,
    0.74947209653092006,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'8069d5a6-25d7-4bab-8acc-e20e9c491eed'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C6A12',
    4,
    100,
    1,
    10000,
    221,
    16,
    0.072398190045248875,
    22100,
    16170,
    -5930,
    0.73167420814479633,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'aab96ace-255e-47e6-86d0-013ada7db8df'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C6A12',
    5,
    100,
    1,
    10000,
    663,
    83,
    0.12518853695324284,
    66300,
    44950,
    -21350,
    0.67797888386123684,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'f89e3cd6-3667-404d-9f35-c0af85b5886c'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C6A12',
    6,
    100,
    1,
    10000,
    221,
    10,
    0.045248868778280542,
    22100,
    19060,
    -3040,
    0.86244343891402719,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'5aab31fc-5f10-494d-87df-bcc6c3d82a91'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C6A12',
    7,
    100,
    2,
    10000,
    221,
    5,
    0.022624434389140271,
    22100,
    26320,
    4220,
    1.1909502262443439,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'2a717d83-a9b4-40e4-a388-9f3a308b65d6'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T2C6A12',
    8,
    100,
    1,
    10000,
    221,
    1,
    0.0045248868778280547,
    22100,
    4360,
    -17740,
    0.19728506787330316,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'7a48ec44-3d6a-48e4-b207-60204e3f23b4'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C1A18',
    1,
    100,
    1,
    10000,
    151,
    38,
    0.25165562913907286,
    15100,
    12030,
    -3070,
    0.79668874172185433,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'65b2691b-96df-4c69-86f4-44fc3f53fcd4'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C1A18',
    2,
    100,
    1,
    10000,
    453,
    191,
    0.4216335540838852,
    45300,
    38800,
    -6500,
    0.85651214128035325,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'32983350-52c8-41bf-afce-ef49b1394ad2'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C1A18',
    4,
    100,
    3,
    10000,
    151,
    18,
    0.11920529801324503,
    15100,
    20630,
    5530,
    1.3662251655629139,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'9c390a5c-9ce2-491a-aeca-51cc22a5bf23'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C1A18',
    5,
    100,
    1,
    10000,
    453,
    75,
    0.16556291390728478,
    45300,
    33450,
    -11850,
    0.73841059602649006,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'4c7eca21-c7b3-462b-b17b-ef3340412693'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C1A18',
    6,
    100,
    3,
    10000,
    151,
    9,
    0.059602649006622516,
    15100,
    23970,
    8870,
    1.5874172185430464,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'0ea80639-eb37-443f-a110-56a39e0df089'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C1A18',
    7,
    100,
    1,
    10000,
    151,
    9,
    0.059602649006622516,
    15100,
    14390,
    -710,
    0.95298013245033109,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'3f3e98f3-da81-4590-ad2a-8c23be592d66'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C1A18',
    8,
    100,
    2,
    10000,
    151,
    2,
    0.013245033112582781,
    15100,
    16590,
    1490,
    1.0986754966887418,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'f3feb0e4-ba22-46ca-9be5-4dfc02714aa1'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C1A19',
    1,
    100,
    2,
    10000,
    124,
    40,
    0.32258064516129031,
    12400,
    13760,
    1360,
    1.1096774193548387,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'8af3e954-8b47-4bbe-b1b1-c7f880cce01a'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C1A19',
    2,
    100,
    1,
    10000,
    372,
    161,
    0.43279569892473119,
    37200,
    31510,
    -5690,
    0.84704301075268817,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'2ba382e1-4932-4609-8585-d85577557c15'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C1A19',
    4,
    100,
    2,
    10000,
    124,
    18,
    0.14516129032258066,
    12400,
    13690,
    1290,
    1.1040322580645161,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'a61db56e-af3e-43af-87d4-5022ea284be0'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C1A19',
    5,
    100,
    1,
    10000,
    372,
    67,
    0.18010752688172044,
    37200,
    28850,
    -8350,
    0.77553763440860213,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'5570e889-a556-4fa9-a3ec-48280db1e3ab'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C1A19',
    6,
    100,
    1,
    10000,
    124,
    10,
    0.080645161290322578,
    12400,
    8680,
    -3720,
    0.7,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'51ed0221-bd95-4a62-8f13-bda683eafb91'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C1A19',
    7,
    100,
    1,
    10000,
    124,
    6,
    0.048387096774193547,
    12400,
    9710,
    -2690,
    0.78306451612903227,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'2e0b75f9-1043-4385-8cc1-c4a5ea6ce720'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C1A19',
    8,
    100,
    1,
    10000,
    124,
    1,
    0.0080645161290322578,
    12400,
    640,
    -11760,
    0.051612903225806452,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'3aaaaea7-dcbf-49c5-ac61-bce50ef6be86'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C5A18',
    1,
    100,
    1,
    10000,
    290,
    66,
    0.22758620689655174,
    29000,
    27200,
    -1800,
    0.93793103448275861,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'70e9349f-8524-44f7-8239-da2e30aeece2'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C5A18',
    2,
    100,
    1,
    10000,
    870,
    375,
    0.43103448275862066,
    87000,
    69800,
    -17200,
    0.80229885057471262,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'8b08ddd7-863f-450d-80e7-01e545e04a9e'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C5A18',
    4,
    100,
    2,
    10000,
    290,
    29,
    0.1,
    29000,
    31200,
    2200,
    1.0758620689655172,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'69fc0680-5eba-480b-925c-10176417a141'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C5A18',
    5,
    100,
    1,
    10000,
    870,
    150,
    0.17241379310344829,
    87000,
    68160,
    -18840,
    0.783448275862069,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'61e3d9a4-69f9-4676-9764-8e88e1aa4d04'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C5A18',
    6,
    100,
    1,
    10000,
    290,
    13,
    0.044827586206896551,
    29000,
    20510,
    -8490,
    0.70724137931034481,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'45489db0-3246-420e-8a9a-fe8260d68967'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C5A18',
    7,
    100,
    1,
    10000,
    290,
    11,
    0.03793103448275862,
    29000,
    13940,
    -15060,
    0.4806896551724138,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'40e29283-dc97-4ea9-8716-c58e75582341'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C5A18',
    8,
    100,
    1,
    10000,
    290,
    1,
    0.0034482758620689655,
    29000,
    5490,
    -23510,
    0.18931034482758621,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'bcfeb229-9370-4320-8814-4f6ee4180eec'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C5A19',
    1,
    100,
    1,
    10000,
    257,
    54,
    0.21011673151750973,
    25700,
    18290,
    -7410,
    0.71167315175097279,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'196d311e-808c-442e-9b1c-fa86afe855dd'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C5A19',
    2,
    100,
    1,
    10000,
    771,
    334,
    0.43320363164721143,
    77100,
    64710,
    -12390,
    0.83929961089494165,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'6772f8d6-40e7-4ede-b0b5-88d0f06a193f'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C5A19',
    4,
    100,
    2,
    10000,
    257,
    19,
    0.073929961089494164,
    25700,
    28250,
    2550,
    1.0992217898832686,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'4a2ef383-c13a-44f6-96e3-77e913cb86c8'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C5A19',
    5,
    100,
    1,
    10000,
    771,
    118,
    0.15304798962386512,
    77100,
    57420,
    -19680,
    0.74474708171206228,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'4802a0ad-f760-4879-8d63-463db0471728'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C5A19',
    6,
    100,
    1,
    10000,
    257,
    9,
    0.035019455252918288,
    25700,
    11350,
    -14350,
    0.44163424124513617,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'f75e53cf-284d-48cf-8120-5f07b8fda7c3'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C5A19',
    7,
    100,
    1,
    10000,
    257,
    5,
    0.019455252918287938,
    25700,
    4660,
    -21040,
    0.18132295719844357,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'c086a49a-5994-4748-a1ff-8d7423be743f'
  )
INSERT INTO dbo.ConfigBetMoney
  (RaceClassId,
   BetTypeId,
   InitialBetMoney,
   InitialBetRate,
   LimitBetMoney,
   RoiBetCount,
   RoiHitCount,
   RoiHitRate,
   RoiBetMoney,
   RoiHitMoney,
   RoiReturnMoney,
   RoiReturnRate,
   Description,
   Timestamp01,
   Guid
  )
VALUES
  (
    N'T3C5A19',
    8,
    100,
    1,
    10000,
    257,
    0,
    0,
    25700,
    0,
    -25700,
    0,
    NULL,
    CAST(N'2023-06-05T20:43:05.620' AS DATETIME),
    N'3608e34b-917d-4061-a89e-f29e186f9c5f'
  )
GO
INSERT INTO dbo.ConfigDataSpec
  (Id,
   Difn,
   Race,
   Bldn,
   Ming,
   Snpn,
   Slop,
   Ysch,
   Hosn,
   Hoyu,
   Comm,
   Toku,
   Wood,
   Tcvn,
   Rcvn,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    1,
    1,
    0,
    0,
    0,
    1,
    1,
    1,
    1,
    1,
    0,
    0,
    0,
    CAST(N'2023-06-05T15:36:27.887' AS DATETIME),
    N'd035a71a-7e47-43cb-901b-34b7cceea06f'
  )
GO
INSERT INTO dbo.ConfigEventAction
  (Id,
   IsPredictByCourseChange,
   IsPredictByExclusion,
   IsPredictByHorseWeight,
   IsPredictByJockeyChange,
   IsPredictByPayoff,
   IsPredictByPostTimeChange,
   IsPredictByWeather,
   IsPredictByOdds,
   IsBetByCourseChange,
   IsBetByExclusion,
   IsBetByHorseWeight,
   IsBetByJockeyChange,
   IsBetByPayoff,
   IsBetByPostTimeChange,
   IsBetByWeather,
   IsBetByOdds,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    0,
    1,
    1,
    0,
    1,
    0,
    0,
    1,
    0,
    CAST(N'2023-05-28T09:52:15.073' AS DATETIME),
    N'705b43e5-bbfb-49b2-af0f-0f7e5c35ffe6'
  )
GO
INSERT INTO dbo.ConfigIpatAccount
  (Id,
   Description,
   InetId,
   UserNo,
   PassNo,
   ParsNo,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'Default             ',
    N'8XG6UPKD',
    N'60140117',
    N'4473',
    N'5769',
    NULL,
    N'b2637bcc-3a29-4956-b547-00a23f8e4b75'
  )
INSERT INTO dbo.ConfigIpatAccount
  (Id,
   Description,
   InetId,
   UserNo,
   PassNo,
   ParsNo,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'Test1               ',
    N'ABCDEFGH',
    N'12345678',
    N'1234',
    N'4321',
    NULL,
    N'edd35797-114c-4893-b7ce-be4fed31fd56'
  )
GO
INSERT INTO dbo.ConfigIpatBalance
  (Id,
   Balance,
   Deposit,
   ProfitLoss,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    0,
    0,
    0,
    CAST(N'2000-01-01T00:00:00.000' AS DATETIME),
    N'3eb7cf3a-8902-4d7d-8f6d-e1498ff4c131'
  )
GO
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    0,
    N'****',
    N'**',
    N'19860101000000',
    NULL,
    NULL,
    N'4c02f009-9fad-4cc4-9e12-4be82818cc51'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'BLDN',
    N'BT',
    N'20230601194539',
    NULL,
    CAST(N'2023-06-05T10:56:53.600' AS DATETIME),
    N'b63a453c-1755-4963-94d9-56acf4123739'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'BLDN',
    N'HN',
    N'20230601194539',
    NULL,
    CAST(N'2023-06-05T10:57:11.607' AS DATETIME),
    N'79f6afb2-3d54-4c3d-a3d8-8c1e859edd90'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'BLDN',
    N'SK',
    N'20230601194539',
    NULL,
    CAST(N'2023-06-05T10:57:03.570' AS DATETIME),
    N'e6432a87-d8b4-4e40-885d-d4904a9d3561'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'COMM',
    N'CS',
    N'19860101000000',
    NULL,
    NULL,
    N'07a6d8a3-dc2c-4ab8-85a5-10847b79e694'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'DIFN',
    N'BN',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T10:57:50.683' AS DATETIME),
    N'cc412073-fe04-4a59-88bf-56e4b62cf607'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'DIFN',
    N'BR',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T10:57:58.760' AS DATETIME),
    N'd8e214ce-820f-448f-b9be-14784ffaa1c2'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'DIFN',
    N'CH',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T10:58:04.630' AS DATETIME),
    N'9d4a2ccf-19bb-49a9-a2cc-b5df709ec224'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'DIFN',
    N'KS',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T10:58:11.060' AS DATETIME),
    N'8f22b5af-0f91-4b4c-85e2-70abbe79e584'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'DIFN',
    N'RA',
    N'19860101000000',
    NULL,
    CAST(N'2023-06-05T10:57:37.360' AS DATETIME),
    N'e4a1ba72-c971-4a9b-bdea-469d05600814'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'DIFN',
    N'RC',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T10:58:23.320' AS DATETIME),
    N'458739c7-6565-4fc3-828f-5794b76ce6c3'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'DIFN',
    N'SE',
    N'19860101000000',
    NULL,
    CAST(N'2023-06-05T10:57:42.303' AS DATETIME),
    N'8340a879-16d4-44c8-9f8d-fbd9ea05f75d'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'DIFN',
    N'UM',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T10:58:17.340' AS DATETIME),
    N'2da03264-100f-4609-be27-358d1406e0ff'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'HOSN',
    N'HS',
    N'20230526131315',
    NULL,
    CAST(N'2023-06-05T10:58:58.373' AS DATETIME),
    N'e41aa51d-a8b2-438a-9941-d59264c4a6e2'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'HOYU',
    N'HY',
    N'20230530110100',
    NULL,
    CAST(N'2023-06-02T14:24:00.503' AS DATETIME),
    N'781be970-55b3-4270-9642-4b7c098eae6d'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'MING',
    N'DM',
    N'19860101000000',
    NULL,
    NULL,
    N'e1070239-243a-4734-a0c3-a17066ceee4d'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'MING',
    N'TM',
    N'19860101000000',
    NULL,
    NULL,
    N'dcb0b768-bebb-4e10-8617-edc7e9eb6764'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RACE',
    N'H1',
    N'19860101000000',
    NULL,
    NULL,
    N'53917af8-695f-4543-9b83-5d2db9d0c38a'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RACE',
    N'H6',
    N'19860101000000',
    NULL,
    NULL,
    N'7603e3bd-f8b5-46a1-9af9-0e22b3afcf58'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RACE',
    N'HR',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T17:49:23.940' AS DATETIME),
    N'ee2146c5-1ef1-41e5-a520-8f7ee6cddc90'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RACE',
    N'JG',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T17:49:23.950' AS DATETIME),
    N'225b6cf1-3ded-40ef-b1b3-645167dd6608'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RACE',
    N'O1',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T17:49:23.940' AS DATETIME),
    N'a9200021-9461-4db5-8464-b28dc143cb3c'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RACE',
    N'O2',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T17:49:23.943' AS DATETIME),
    N'c467768c-92d7-44c9-beb0-868ff790c93e'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RACE',
    N'O3',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T17:49:23.943' AS DATETIME),
    N'c983e2b2-56d9-4db1-9c39-10748f4393b7'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RACE',
    N'O4',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T17:49:23.943' AS DATETIME),
    N'a81c5dbf-9fcd-4dae-b0a4-bef5c4201577'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RACE',
    N'O5',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T17:49:23.947' AS DATETIME),
    N'fdc2f6dc-52be-4bf1-bc5f-8f88895e26d8'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RACE',
    N'O6',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T17:49:23.947' AS DATETIME),
    N'bf7b88bd-8b04-4c12-a1a6-d4160f3d172c'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RACE',
    N'RA',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T17:49:23.937' AS DATETIME),
    N'4be8c7e6-ff05-42d1-8b29-f0fc44868b49'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RACE',
    N'SE',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T17:49:23.940' AS DATETIME),
    N'35dee204-dafd-449b-b1ea-19346b65f2bc'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RACE',
    N'WF',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T17:49:23.947' AS DATETIME),
    N'987fb1fd-8189-42b2-a520-9420673ecdf6'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RCVN',
    N'BN',
    N'19860101000000',
    NULL,
    CAST(N'2023-06-05T11:01:29.810' AS DATETIME),
    N'b3849108-6d3c-4f21-8ba0-7d62052cf21f'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RCVN',
    N'BR',
    N'19860101000000',
    NULL,
    CAST(N'2023-06-05T11:01:34.523' AS DATETIME),
    N'e719a7e0-a29d-4ed2-b45d-b34f018946e8'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RCVN',
    N'CH',
    N'19860101000000',
    NULL,
    CAST(N'2023-06-05T11:01:42.573' AS DATETIME),
    N'c9828d45-f99f-47b4-be6a-df024cd3822d'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RCVN',
    N'KS',
    N'19860101000000',
    NULL,
    CAST(N'2023-06-05T11:01:50.460' AS DATETIME),
    N'62b647e9-6ddb-4a9c-893d-05da012f68f6'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RCVN',
    N'RA',
    N'19860101000000',
    NULL,
    CAST(N'2023-06-05T11:01:16.557' AS DATETIME),
    N'ad240a37-821e-48ea-93fd-49c598c73f3a'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RCVN',
    N'RC',
    N'19860101000000',
    NULL,
    CAST(N'2023-06-05T11:02:04.260' AS DATETIME),
    N'df3ae332-fe6d-4fa3-981a-0981e0f20a58'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RCVN',
    N'SE',
    N'19860101000000',
    NULL,
    CAST(N'2023-06-05T11:01:22.993' AS DATETIME),
    N'9e2bd180-8b60-4c29-93cf-c4fbe5aea96e'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'RCVN',
    N'UM',
    N'19860101000000',
    NULL,
    CAST(N'2023-06-05T11:01:58.607' AS DATETIME),
    N'700fefd7-2974-41fe-b04a-fe0c27d1dc9e'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'SLOP',
    N'HC',
    N'19860101000000',
    NULL,
    NULL,
    N'1f614dae-84bf-4a1e-9d33-fe65cb21c581'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'SNPN',
    N'CK',
    N'19860101000000',
    NULL,
    CAST(N'2023-06-05T10:59:40.180' AS DATETIME),
    N'ba9b06ab-b587-42d4-bd48-463b22a29af9'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'TCVN',
    N'BN',
    N'19860101000000',
    NULL,
    CAST(N'2023-06-05T11:00:29.247' AS DATETIME),
    N'5eba4996-64f5-4bec-a84d-1721c8dcf1a2'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'TCVN',
    N'BR',
    N'19860101000000',
    NULL,
    CAST(N'2023-06-05T11:00:37.430' AS DATETIME),
    N'f7faaba7-e643-40d3-ac53-dd2d62e83255'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'TCVN',
    N'CH',
    N'19860101000000',
    NULL,
    CAST(N'2023-06-05T11:00:47.780' AS DATETIME),
    N'9b879f06-911d-4f59-bfff-86b6a73a09bc'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'TCVN',
    N'KS',
    N'19860101000000',
    NULL,
    CAST(N'2023-06-05T11:00:59.000' AS DATETIME),
    N'5cac5eb0-6dfd-492d-ab52-56ff974d0a47'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'TCVN',
    N'RA',
    N'19860101000000',
    NULL,
    CAST(N'2023-06-05T11:00:07.727' AS DATETIME),
    N'793dd74d-2986-49c1-b9d8-af1e4c257de5'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'TCVN',
    N'RC',
    N'19860101000000',
    NULL,
    CAST(N'2023-06-05T11:01:09.580' AS DATETIME),
    N'352e1939-c07a-4e3b-89ad-8f8a79f31e9e'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'TCVN',
    N'SE',
    N'19860101000000',
    NULL,
    CAST(N'2023-06-05T11:00:19.420' AS DATETIME),
    N'3deb6392-af7a-42ed-8c67-90960983a3f9'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'TCVN',
    N'UM',
    N'19860101000000',
    NULL,
    CAST(N'2023-06-05T11:01:05.100' AS DATETIME),
    N'464479d4-723d-4bfc-8f73-b51d12266f71'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'TOKU',
    N'TK',
    N'20230605154612',
    NULL,
    CAST(N'2023-06-05T17:49:28.447' AS DATETIME),
    N'c1b5674b-2faf-4fef-a3e8-90a07802dfc5'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'WOOD',
    N'WC',
    N'19860101000000',
    NULL,
    NULL,
    N'445c1a9c-6ae5-4f0a-a1e0-1b394aafac2b'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    N'YSCH',
    N'YS',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T17:49:27.623' AS DATETIME),
    N'c5b531b5-4f69-4479-9e42-993e2550958c'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B11',
    N'WH',
    N'19860101000000',
    NULL,
    NULL,
    N'ad4c3f93-b71f-4c4a-b269-91f6c57d89c7'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B12',
    N'HR',
    N'19860101000000',
    NULL,
    NULL,
    N'904875d6-3a8b-40b9-8375-9415d0ee0f9c'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B12',
    N'RA',
    N'19860101000000',
    NULL,
    NULL,
    N'9117c29b-45b2-4c07-9fdd-998cbffd2a68'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B12',
    N'SE',
    N'19860101000000',
    NULL,
    NULL,
    N'aebcdc5e-3336-460c-a9fc-9f48eecd0633'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B13',
    N'DM',
    N'19860101000000',
    NULL,
    NULL,
    N'fc60b356-4187-437b-ba59-95a5d2c3e8f8'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B14',
    N'AV',
    N'19860101000000',
    NULL,
    NULL,
    N'c6bc3c65-6ed7-4cfe-95d1-f81b41e334a7'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B14',
    N'CC',
    N'19860101000000',
    NULL,
    NULL,
    N'a9af3c85-f04e-4ec1-830e-44abebc82807'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B14',
    N'JC',
    N'19860101000000',
    NULL,
    NULL,
    N'c51163d4-9986-4e4e-876a-9174b9dab2ed'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B14',
    N'TC',
    N'19860101000000',
    NULL,
    NULL,
    N'7bd75100-82df-4516-bc8b-4d691c21950e'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B14',
    N'WE',
    N'19860101000000',
    NULL,
    NULL,
    N'4d435deb-c20c-433b-bbf5-1f2f9dc369ee'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B15',
    N'HR',
    N'19860101000000',
    NULL,
    NULL,
    N'615dd41a-62dc-4e0f-9e94-fe9769891496'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B15',
    N'RA',
    N'19860101000000',
    NULL,
    NULL,
    N'1173f4b1-50c0-44fa-a71d-1689d77f883f'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B15',
    N'SE',
    N'19860101000000',
    NULL,
    NULL,
    N'561117cc-398b-4ed9-8725-b919306e1d78'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B16',
    N'AV',
    N'19860101000000',
    NULL,
    NULL,
    N'a6b6dcba-ad8d-4bda-822f-66982d54b46d'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B16',
    N'CC',
    N'19860101000000',
    NULL,
    NULL,
    N'3ec9a329-4079-45b9-819d-f410e10438e4'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B16',
    N'JC',
    N'19860101000000',
    NULL,
    NULL,
    N'0c246ba9-291a-4e23-a2e4-5df5976b71bf'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B16',
    N'TC',
    N'19860101000000',
    NULL,
    NULL,
    N'bf192462-d0b8-49df-b9c0-ab2b237ca152'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B16',
    N'WE',
    N'19860101000000',
    NULL,
    NULL,
    N'c01c1e44-2189-4ef9-8cc8-ca8671e2558a'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B16',
    N'WH',
    N'19860101000000',
    NULL,
    NULL,
    N'9372e380-08ec-454f-a6fd-4d8594ef1790'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B17',
    N'TM',
    N'19860101000000',
    NULL,
    NULL,
    N'11c30bb5-feca-447a-a611-693af06acd8a'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B20',
    N'H1',
    N'19860101000000',
    NULL,
    NULL,
    N'3a42d266-16a9-4e32-ac04-44fbe0053285'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B20',
    N'H6',
    N'19860101000000',
    NULL,
    NULL,
    N'5904ac74-c872-4d9e-a7df-cc8f4fe773a9'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B30',
    N'O1',
    N'19860101000000',
    NULL,
    NULL,
    N'f4f70432-598c-40ac-80a0-27a74dc9db75'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B30',
    N'O2',
    N'19860101000000',
    NULL,
    NULL,
    N'722d1984-9efa-4bd3-915f-64b530da246d'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B30',
    N'O3',
    N'19860101000000',
    NULL,
    NULL,
    N'c1a1ae18-7b9b-4954-b254-c2b5eb48958f'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B30',
    N'O4',
    N'19860101000000',
    NULL,
    NULL,
    N'f10c764a-b050-4b9c-b330-c173e7f7f527'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B30',
    N'O5',
    N'19860101000000',
    NULL,
    NULL,
    N'a005160e-f0f7-4d06-af4b-c294b3da266b'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B30',
    N'O6',
    N'19860101000000',
    NULL,
    NULL,
    N'28c05844-106e-429a-86d0-f62d29814c57'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B31',
    N'O1',
    N'19860101000000',
    NULL,
    NULL,
    N'830bad48-36cf-48a2-8788-2c9fc5bb6094'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B32',
    N'O2',
    N'19860101000000',
    NULL,
    NULL,
    N'5e1305a3-ac8c-46ae-924d-ef9ac5de7f81'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B33',
    N'O3',
    N'19860101000000',
    NULL,
    NULL,
    N'7d61447d-866e-4c50-9507-5f462d488eeb'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B34',
    N'O4',
    N'19860101000000',
    NULL,
    NULL,
    N'76500c7d-9567-43c3-a9b8-d1dc9008d355'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B35',
    N'O5',
    N'19860101000000',
    NULL,
    NULL,
    N'27604785-4e57-44fd-953e-eb761e85a56a'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B36',
    N'O6',
    N'19860101000000',
    NULL,
    NULL,
    N'59227b15-e275-4279-b85f-f38ed9f6504a'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B41',
    N'O1',
    N'19860101000000',
    NULL,
    NULL,
    N'07bca3fa-cdc8-471a-915d-b848f65ad474'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B42',
    N'O2',
    N'19860101000000',
    NULL,
    NULL,
    N'b37effa2-9e75-4533-934f-00ff69550783'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    2,
    N'0B51',
    N'WF',
    N'19860101000000',
    NULL,
    NULL,
    N'a3055ae4-94fb-4467-8011-fe6c80ff2751'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'BLOD',
    N'BT',
    N'20230601194539',
    NULL,
    CAST(N'2023-06-02T14:23:57.023' AS DATETIME),
    N'5e89a2aa-f1c5-45e8-b3f7-2e5e5f13be97'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'BLOD',
    N'HN',
    N'20230601194539',
    NULL,
    CAST(N'2023-06-02T14:23:57.013' AS DATETIME),
    N'6e3777d3-dfa4-4273-bd30-a336d5fae4a3'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'BLOD',
    N'SK',
    N'20230601194539',
    NULL,
    CAST(N'2023-06-02T14:23:57.017' AS DATETIME),
    N'23f6237a-f4ea-4318-9a25-531acdf82676'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'DIFF',
    N'BN',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T17:48:28.520' AS DATETIME),
    N'1d2c9f20-dc09-4be0-9b47-5fe22245c05b'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'DIFF',
    N'BR',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T17:48:28.517' AS DATETIME),
    N'd75fa1ed-86f0-47af-877f-3f670578facc'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'DIFF',
    N'CH',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T17:48:28.517' AS DATETIME),
    N'87825dac-ed5c-493f-8472-d3d9801f6d33'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'DIFF',
    N'KS',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T17:48:28.513' AS DATETIME),
    N'd8745194-1e64-48fe-ae68-d45503395354'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'DIFF',
    N'RA',
    N'19860101000000',
    NULL,
    NULL,
    N'734b5256-6996-4a0b-8ab8-b3a1786e79e8'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'DIFF',
    N'RC',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T17:48:28.523' AS DATETIME),
    N'6bc5bd4f-ff64-4fab-975d-663070389163'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'DIFF',
    N'SE',
    N'19860101000000',
    NULL,
    NULL,
    N'88075fca-386c-481e-93b8-1d4cdfbfda9f'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'DIFF',
    N'UM',
    N'20230605132638',
    NULL,
    CAST(N'2023-06-05T17:48:28.503' AS DATETIME),
    N'cc7ce535-35a6-4d2a-bebf-d11536dc280d'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'HOSE',
    N'HS',
    N'20230526131315',
    NULL,
    CAST(N'2023-05-28T09:53:38.740' AS DATETIME),
    N'37089b2a-47e6-4f91-a972-6987d62c597d'
  )
GO
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'RCOV',
    N'BN',
    N'19860101000000',
    NULL,
    NULL,
    N'8906bc09-fbff-4553-bb22-7cb5fcec3868'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'RCOV',
    N'BR',
    N'19860101000000',
    NULL,
    NULL,
    N'561f637f-0f08-44a2-8ed9-0fbdb560c5a7'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'RCOV',
    N'CH',
    N'19860101000000',
    NULL,
    NULL,
    N'9f39a59c-5d42-45b6-94c0-59827d4650a2'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'RCOV',
    N'RA',
    N'19860101000000',
    NULL,
    NULL,
    N'72764209-f30a-4c9e-9027-3f98035b482c'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'RCOV',
    N'RC',
    N'19860101000000',
    NULL,
    NULL,
    N'c602ed62-dce3-4494-b91f-bab8123e8c6a'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'RCOV',
    N'SE',
    N'19860101000000',
    NULL,
    NULL,
    N'a586d64e-86bf-48f9-a0b9-7ee3b27f6c83'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'RCOV',
    N'UM',
    N'19860101000000',
    NULL,
    NULL,
    N'acbafc5e-9d1d-4e3c-b653-8acb101e55ba'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'SNAP',
    N'CK',
    N'19860101000000',
    NULL,
    NULL,
    N'e4b8e241-3da3-4589-bfae-0af62f25f157'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'TCOV',
    N'BN',
    N'19860101000000',
    NULL,
    NULL,
    N'9d82aa2f-1316-4132-b2f1-2ce8588c42e9'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'TCOV',
    N'BR',
    N'19860101000000',
    NULL,
    NULL,
    N'6d8ce293-a057-4145-85b2-d9171cd21275'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'TCOV',
    N'CH',
    N'19860101000000',
    NULL,
    NULL,
    N'48944a59-e4c5-4892-b8c7-5f2538619a9a'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'TCOV',
    N'RA',
    N'19860101000000',
    NULL,
    NULL,
    N'0658b46e-ca25-4326-858f-23552dbd4070'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'TCOV',
    N'RC',
    N'19860101000000',
    NULL,
    NULL,
    N'14262026-ae27-4636-9a4b-9f0745afecf8'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'TCOV',
    N'SE',
    N'19860101000000',
    NULL,
    NULL,
    N'3d77b790-7c45-46b9-a25b-b80e3d539fc4'
  )
INSERT INTO dbo.ConfigLastTimestamp
  (OpenMode,
   DataSpecId,
   RecType,
   LastFileTimestamp,
   LastFileName,
   Timestamp01,
   Guid
  )
VALUES
  (
    11,
    N'TCOV',
    N'UM',
    N'19860101000000',
    NULL,
    NULL,
    N'bfe9a955-3179-4b1b-a9c6-e79f45723c66'
  )
GO
INSERT INTO dbo.ConfigOperation
  (Id,
   IsReceiveEventMode,
   IsDispatchEventMode,
   IsUpdateOddsByCrawlMode,
   IsPredictMode,
   IsBetMode,
   IsHoldExtraBet,
   IsBetOverwrite,
   IsNotifyResult,
   IsNotifyLine,
   IsEntityQueueModeLinkedList,
   IsPredictByTrackTypeAndRaceCondition,
   IsNeymanPearsonStep,
   IsBayesianStep,
   IsSoundReceiveEvent,
   IsSoundDispatch,
   IsSoundCrawlOdds,
   IsSoundUpdateDbCommon,
   Timestamp01,
   IsVer490,
   Timestamp02,
   Guid
  )
VALUES
  (
    1,
    0,
    0,
    0,
    1,
    1,
    0,
    1,
    1,
    0,
    1,
    1,
    1,
    0,
    0,
    0,
    0,
    0,
    CAST(N'2023-06-05T19:03:07.773' AS DATETIME),
    0,
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'7b5b1764-e551-4d8e-9ab8-c98a518577b6'
  )
GO
INSERT INTO dbo.ConfigPredict
  (Id,
   BasicT1C6A00,
   BasicT2C6A00,
   BasicT1C0A00,
   BasicT2C0A00,
   BasicT3C0A00,
   PrevT1C0A00,
   PrevT2C0A00,
   PrevT3C0A00,
   BayesianBlinker,
   BayesianCoatColor,
   BayesianGen01,
   BayesianGen02,
   BayesianGen05,
   BayesianHandicap,
   BayesianHorse,
   BayesianHorseGenre,
   BayesianHorseNum,
   BayesianJockey,
   BayesianJockeyApprentice,
   BayesianOwner,
   BayesianRegion,
   BayesianSex,
   BayesianTrainer,
   Win5,
   Timestamp01,
   Guid
  )
VALUES
  (
    0,
    1,
    1,
    0,
    0,
    0,
    1,
    1,
    1,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    CAST(N'1900-01-01T00:00:00.000' AS DATETIME),
    N'10d4a8ce-ef0c-4909-a234-652cd66c8e7a'
  )
INSERT INTO dbo.ConfigPredict
  (Id,
   BasicT1C6A00,
   BasicT2C6A00,
   BasicT1C0A00,
   BasicT2C0A00,
   BasicT3C0A00,
   PrevT1C0A00,
   PrevT2C0A00,
   PrevT3C0A00,
   BayesianBlinker,
   BayesianCoatColor,
   BayesianGen01,
   BayesianGen02,
   BayesianGen05,
   BayesianHandicap,
   BayesianHorse,
   BayesianHorseGenre,
   BayesianHorseNum,
   BayesianJockey,
   BayesianJockeyApprentice,
   BayesianOwner,
   BayesianRegion,
   BayesianSex,
   BayesianTrainer,
   Win5,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    1,
    1,
    0,
    0,
    0,
    1,
    1,
    1,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    CAST(N'2023-06-05T17:47:38.277' AS DATETIME),
    N'79bd855d-4a7e-42ac-8f5a-74f14c69f761'
  )
GO
INSERT INTO dbo.ConfigRecType
  (Id,
   DifnRa,
   DifnSe,
   DifnBn,
   DifnBr,
   DifnCh,
   DifnKs,
   DifnUm,
   DifnRc,
   RaceRa,
   RaceSe,
   RaceHr,
   RaceH1,
   RaceH6,
   RaceO1,
   RaceO2,
   RaceO3,
   RaceO4,
   RaceO5,
   RaceO6,
   RaceWf,
   RaceJg,
   BldnHn,
   BldnSk,
   BldnBt,
   MingDm,
   MingTm,
   SnpnCk,
   SlopHc,
   YschYs,
   HosnHs,
   HoyuHy,
   CommCs,
   TokuTk,
   WoodWc,
   Timestamp01,
   Guid
  )
VALUES
  (
    1,
    0,
    0,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    0,
    0,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    1,
    0,
    0,
    0,
    0,
    1,
    1,
    1,
    1,
    1,
    0,
    CAST(N'2023-06-05T15:36:56.573' AS DATETIME),
    N'8d58923d-e962-45c9-844e-0e354eefb9ff'
  )
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType
ADD CONSTRAINT DF_ConfigAccessOrderDataSpecRecType_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType
ADD CONSTRAINT DF_ConfigAccessOrderDataSpecRecType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType_202307
ADD CONSTRAINT DF_ConfigAccessOrderDataSpecRecType_202307_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType_202307
ADD CONSTRAINT DF_ConfigAccessOrderDataSpecRecType_202307_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType_202308
ADD CONSTRAINT DF_ConfigAccessOrderDataSpecRecType_202308_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType_202308
ADD CONSTRAINT DF_ConfigAccessOrderDataSpecRecType_202308_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigBetCount
ADD CONSTRAINT DF_ConfigBetCount_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigBetCountWinFive
ADD CONSTRAINT DF_ConfigBetCountWinFive_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigBetMoney
ADD CONSTRAINT DF_ConfigBetMoney_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.ConfigBetMoney
ADD CONSTRAINT DF_ConfigBetMoney_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigDataSpec
ADD CONSTRAINT DF_ConfigDataSpec_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigEventAction
ADD CONSTRAINT DF_ConfigEventAction_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigIpatAccount
ADD CONSTRAINT DF_Account_Id DEFAULT NEWID() FOR Description
GO
ALTER TABLE dbo.ConfigIpatAccount
ADD CONSTRAINT DF_Account_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigIpatBalance
ADD CONSTRAINT DF_ConfigIpatBalance_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigIpatHistory
ADD CONSTRAINT DF_ConfigIpatHistory_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigLastTimestamp
ADD CONSTRAINT DF_ConfigLastTimestamp_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.ConfigLastTimestamp
ADD CONSTRAINT DF_ConfigLastTimestamp_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigOperation
ADD CONSTRAINT DF_ConfigOperation_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigPredict
ADD CONSTRAINT DF_ConfigPredict_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigRecType
ADD CONSTRAINT DF_ConfigRecType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType
WITH NOCHECK
ADD CONSTRAINT FK_ConfigAccessOrderDataSpecRecType_MasterDataSpec FOREIGN KEY(DataSpecId) REFERENCES dbo.MasterDataSpec(DataSpecId)
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType NOCHECK CONSTRAINT FK_ConfigAccessOrderDataSpecRecType_MasterDataSpec
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType_202307
WITH NOCHECK
ADD CONSTRAINT FK_ConfigAccessOrderDataSpecRecType_202307_MasterDataSpec FOREIGN KEY(DataSpecId) REFERENCES dbo.MasterDataSpec(DataSpecId)
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType_202307 NOCHECK CONSTRAINT FK_ConfigAccessOrderDataSpecRecType_202307_MasterDataSpec
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType_202308
WITH NOCHECK
ADD CONSTRAINT FK_ConfigAccessOrderDataSpecRecType_202308_MasterDataSpec FOREIGN KEY(DataSpecId) REFERENCES dbo.MasterDataSpec(DataSpecId)
GO
ALTER TABLE dbo.ConfigAccessOrderDataSpecRecType_202308 NOCHECK CONSTRAINT FK_ConfigAccessOrderDataSpecRecType_202308_MasterDataSpec
GO
ALTER TABLE dbo.ConfigBetCount
WITH NOCHECK
ADD CONSTRAINT FK_ConfigBetCount_Master2Class FOREIGN KEY(ClassId) REFERENCES dbo.Master2RaceClass(RaceClassId)
GO
ALTER TABLE dbo.ConfigBetCount NOCHECK CONSTRAINT FK_ConfigBetCount_Master2Class
GO
ALTER TABLE dbo.ConfigBetCount
WITH NOCHECK
ADD CONSTRAINT FK_ConfigBetCount_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(BetTypeId)
GO
ALTER TABLE dbo.ConfigBetCount NOCHECK CONSTRAINT FK_ConfigBetCount_MasterBetType
GO
ALTER TABLE dbo.ConfigBetCount
WITH NOCHECK
ADD CONSTRAINT FK_ConfigBetCount_MasterConfigType FOREIGN KEY(ConfigTypeId) REFERENCES dbo.MasterConfigType(ConfigTypeId)
GO
ALTER TABLE dbo.ConfigBetCount NOCHECK CONSTRAINT FK_ConfigBetCount_MasterConfigType
GO
ALTER TABLE dbo.ConfigBetCountWinFive
WITH NOCHECK
ADD CONSTRAINT FK_ConfigBetCountWinFive_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(BetTypeId)
GO
ALTER TABLE dbo.ConfigBetCountWinFive NOCHECK CONSTRAINT FK_ConfigBetCountWinFive_MasterBetType
GO
ALTER TABLE dbo.ConfigBetCountWinFive
WITH NOCHECK
ADD CONSTRAINT FK_ConfigBetCountWinFive_MasterConfigType FOREIGN KEY(ConfigTypeId) REFERENCES dbo.MasterConfigType(ConfigTypeId)
GO
ALTER TABLE dbo.ConfigBetCountWinFive NOCHECK CONSTRAINT FK_ConfigBetCountWinFive_MasterConfigType
GO
ALTER TABLE dbo.ConfigBetMoney
WITH NOCHECK
ADD CONSTRAINT FK_ConfigBetMoney_Master2RaceClass FOREIGN KEY(RaceClassId) REFERENCES dbo.Master2RaceClass(RaceClassId)
GO
ALTER TABLE dbo.ConfigBetMoney NOCHECK CONSTRAINT FK_ConfigBetMoney_Master2RaceClass
GO
ALTER TABLE dbo.ConfigBetMoney
WITH NOCHECK
ADD CONSTRAINT FK_ConfigBetMoney_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(BetTypeId)
GO
ALTER TABLE dbo.ConfigBetMoney NOCHECK CONSTRAINT FK_ConfigBetMoney_MasterBetType
GO
ALTER TABLE dbo.ConfigLastTimestamp
WITH NOCHECK
ADD CONSTRAINT FK_ConfigLastTimestamp_MasterDataSpec FOREIGN KEY(DataSpecId) REFERENCES dbo.MasterDataSpec(DataSpecId)
GO
ALTER TABLE dbo.ConfigLastTimestamp NOCHECK CONSTRAINT FK_ConfigLastTimestamp_MasterDataSpec
GO
ALTER TABLE dbo.ConfigLastTimestamp
WITH NOCHECK
ADD CONSTRAINT FK_ConfigLastTimestamp_MasterOpenModeDataSpec FOREIGN KEY(OpenMode,DataSpecId) REFERENCES dbo.MasterOpenModeDataSpec(OpenMode,
                                                                                                                                    OpenDataSpecId)
GO
ALTER TABLE dbo.ConfigLastTimestamp NOCHECK CONSTRAINT FK_ConfigLastTimestamp_MasterOpenModeDataSpec
GO
EXEC sys.sp_addextendedproperty 
    @Name = N'MS_Description',
    @Value = N'加入者番号',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'Id'
GO
EXEC sys.sp_addextendedproperty 
    @Name = N'MS_Description',
    @Value = N'加入者番号',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'Description'
GO
EXEC sys.sp_addextendedproperty 
    @Name = N'MS_Description',
    @Value = N'ユーザー番号',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'InetId'
GO
EXEC sys.sp_addextendedproperty 
    @Name = N'MS_Description',
    @Value = N'ユーザー番号',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'UserNo'
GO
EXEC sys.sp_addextendedproperty 
    @Name = N'MS_Description',
    @Value = N'暗証番号',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'PassNo'
GO
EXEC sys.sp_addextendedproperty 
    @Name = N'MS_Description',
    @Value = N'PARS番号',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'ParsNo'
GO