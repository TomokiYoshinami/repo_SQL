USE [Jackpot]
GO

EXEC dbo.sp_rename @objname = N'[dbo].[RaceHorse]', @newname = N'RaceHorse_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

EXEC [Jackpot].dbo.sp_rename @objname = N'[dbo].[DF_RaceHorse_GUIDOnRaceHorse_old]', @newname = N'DF_RaceHorse_GUIDOnRaceHorse_oldOnRaceHorse_old', @objtype = N'OBJECT'
GO

USE [Jackpot]
GO

SET ANSI_NULLS ON
GO

CREATE TABLE [dbo].[RaceHorse]
(
	[RecordSpec] [nchar](2) COLLATE Japanese_CI_AS NULL,
	[DataKubun] [nchar](1) COLLATE Japanese_CI_AS NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[JyoCD] [nchar](2) COLLATE Japanese_CI_AS NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceID] [nchar](20) COLLATE Japanese_CI_AS NOT NULL,
	[KettoNum] [nchar](10) COLLATE Japanese_CI_AS NOT NULL,
	[Wakuban] [int] NULL,
	[Umaban] [int] NULL,
	[Bamei] [nvarchar](36) COLLATE Japanese_CI_AS NULL,
	[UmaKigoCD] [nchar](2) COLLATE Japanese_CI_AS NULL,
	[SexCD] [nchar](1) COLLATE Japanese_CI_AS NULL,
	[HinsyuCD] [nchar](1) COLLATE Japanese_CI_AS NULL,
	[KeiroCD] [nchar](2) COLLATE Japanese_CI_AS NULL,
	[Barei] [float](53) NULL,
	[TozaiCD] [nchar](1) COLLATE Japanese_CI_AS NULL,
	[ChokyosiCode] [nchar](5) COLLATE Japanese_CI_AS NULL,
	[ChokyosiRyakusyo] [nvarchar](8) COLLATE Japanese_CI_AS NULL,
	[BanusiCode] [nchar](6) COLLATE Japanese_CI_AS NULL,
	[BanusiName] [nvarchar](64) COLLATE Japanese_CI_AS NULL,
	[Fukusyoku] [nvarchar](60) COLLATE Japanese_CI_AS NULL,
	[reserved1] [nvarchar](60) COLLATE Japanese_CI_AS NULL,
	[Futan] [float](53) NULL,
	[FutanBefore] [float](53) NULL,
	[FutanPercent] [float](53) NULL,
	[Blinker] [nchar](1) COLLATE Japanese_CI_AS NULL,
	[IsBlinker] [bit] NULL,
	[reserved2] [nchar](1) COLLATE Japanese_CI_AS NULL,
	[KisyuCode] [nchar](5) COLLATE Japanese_CI_AS NULL,
	[KisyuCodeBefore] [nchar](5) COLLATE Japanese_CI_AS NULL,
	[KisyuRyakusyo] [nvarchar](8) COLLATE Japanese_CI_AS NULL,
	[KisyuRyakusyoBefore] [nvarchar](8) COLLATE Japanese_CI_AS NULL,
	[MinaraiCD] [nchar](1) COLLATE Japanese_CI_AS NULL,
	[MinaraiCDBefore] [nchar](1) COLLATE Japanese_CI_AS NULL,
	[BaTaijyu] [float](53) NULL,
	[ZogenFugo] [nchar](1) COLLATE Japanese_CI_AS NULL,
	[ZogenSa] [float](53) NULL,
	[IJyoCD] [nchar](1) COLLATE Japanese_CI_AS NULL,
	[NyusenJyuni] [float](53) NULL,
	[KakuteiJyuni] [float](53) NULL,
	[DochakuKubun] [nchar](1) COLLATE Japanese_CI_AS NULL,
	[DochakuTosu] [float](53) NULL,
	[Time] [float](53) NULL,
	[ChakusaCD] [nchar](3) COLLATE Japanese_CI_AS NULL,
	[ChakusaCDP] [nchar](3) COLLATE Japanese_CI_AS NULL,
	[ChakusaCDPP] [nchar](3) COLLATE Japanese_CI_AS NULL,
	[Jyuni1c] [float](53) NULL,
	[Jyuni2c] [float](53) NULL,
	[Jyuni3c] [float](53) NULL,
	[Jyuni4c] [float](53) NULL,
	[Odds] [float](53) NULL,
	[Ninki] [float](53) NULL,
	[Honsyokin] [float](53) NULL,
	[Fukasyokin] [float](53) NULL,
	[reserved3] [nchar](3) COLLATE Japanese_CI_AS NULL,
	[reserved4] [nchar](3) COLLATE Japanese_CI_AS NULL,
	[HaronTimeL4] [float](53) NULL,
	[HaronTimeL3] [float](53) NULL,
	[KettoNum1] [nchar](10) COLLATE Japanese_CI_AS NULL,
	[Bamei1] [nvarchar](36) COLLATE Japanese_CI_AS NULL,
	[KettoNum2] [nchar](10) COLLATE Japanese_CI_AS NULL,
	[Bamei2] [nvarchar](36) COLLATE Japanese_CI_AS NULL,
	[KettoNum3] [nchar](10) COLLATE Japanese_CI_AS NULL,
	[Bamei3] [nvarchar](36) COLLATE Japanese_CI_AS NULL,
	[TimeDiff] [float](53) NULL,
	[RecordUpKubun] [nchar](1) COLLATE Japanese_CI_AS NULL,
	[DMKubun] [nchar](1) COLLATE Japanese_CI_AS NULL,
	[DMTime] [float](53) NULL,
	[DMGosaP] [float](53) NULL,
	[DMGosaM] [float](53) NULL,
	[DMJyuni] [float](53) NULL,
	[Kyakusitu] [nchar](1) COLLATE Japanese_CI_AS NULL,
	[TS] [datetime2](7) NULL,
	[IsNormal] [bit] NULL,
	[RaceTimeDev] [float](53) NULL,
	[ClassTimeDev] [float](53) NULL,
	[StdTime] [float](53) NULL,
	[StdTimeDev] [float](53) NULL,
	[StdTimeDevPercent] [float](53) NULL,
	[ZogenPercent] [float](53) NULL,
	[LifeTime] [float](53) NULL,
	[Prev1StdTime] [float](53) NULL,
	[Prev1StdTimeDev] [float](53) NULL,
	[Prev1RaceResult] [int] NULL,
	[Prev1TrackTypeCD] [int] NULL,
	[Prev1JyokenCD5] [nchar](3) COLLATE Japanese_CI_AS NULL,
	[Prev1GradeCD] [nchar](1) COLLATE Japanese_CI_AS NULL,
	[IsPrev1JyokenCD5_Up] [bit] NULL,
	[IsPrev1JyokenCD5_Down] [bit] NULL,
	[RunCount] [float](53) NULL,
	[HitCount1] [float](53) NULL,
	[HitCount2] [float](53) NULL,
	[HitCount3] [float](53) NULL,
	[HitCount4] [float](53) NULL,
	[HitCount5] [float](53) NULL,
	[HitCount6] [float](53) NULL,
	[HitCount12] [float](53) NULL,
	[HitCount123] [float](53) NULL,
	[IsHit_1] [bit] NULL,
	[IsHit_2] [bit] NULL,
	[IsHit_3] [bit] NULL,
	[IsHit_12] [bit] NULL,
	[IsHit_123] [bit] NULL,
	[IsNinki_01] [bit] NULL,
	[IsNinki_02] [bit] NULL,
	[IsNinki_03] [bit] NULL,
	[IsNinki_04] [bit] NULL,
	[IsNinki_05] [bit] NULL,
	[IsNinki_06] [bit] NULL,
	[IsNinki_07] [bit] NULL,
	[IsNinki_08] [bit] NULL,
	[IsNinki_09] [bit] NULL,
	[IsNinki_10] [bit] NULL,
	[IsNinki_11] [bit] NULL,
	[IsNinki_12] [bit] NULL,
	[IsNinki_13] [bit] NULL,
	[IsNinki_14] [bit] NULL,
	[IsNinki_15] [bit] NULL,
	[IsNinki_16] [bit] NULL,
	[IsNinki_17] [bit] NULL,
	[IsNinki_18] [bit] NULL,
	[IsPrev1TrackTypeCD_1] [bit] NULL,
	[IsPrev1TrackTypeCD_2] [bit] NULL,
	[IsPrev1TrackTypeCD_3] [bit] NULL,
	[IsPrev1JyokenCD5_005] [bit] NULL,
	[IsPrev1JyokenCD5_010] [bit] NULL,
	[IsPrev1JyokenCD5_016] [bit] NULL,
	[IsPrev1JyokenCD5_701] [bit] NULL,
	[IsPrev1JyokenCD5_703] [bit] NULL,
	[IsPrev1JyokenCD5_999] [bit] NULL,
	[IsPrev1RaceResult_01] [bit] NULL,
	[IsPrev1RaceResult_02] [bit] NULL,
	[IsPrev1RaceResult_03] [bit] NULL,
	[IsPrev1RaceResult_04] [bit] NULL,
	[IsPrev1RaceResult_05] [bit] NULL,
	[IsPrev1RaceResult_06] [bit] NULL,
	[IsPrev1RaceResult_07] [bit] NULL,
	[IsPrev1RaceResult_08] [bit] NULL,
	[IsPrev1RaceResult_09] [bit] NULL,
	[IsPrev1RaceResult_10] [bit] NULL,
	[IsPrev1RaceResult_11] [bit] NULL,
	[IsPrev1RaceResult_12] [bit] NULL,
	[IsPrev1RaceResult_13] [bit] NULL,
	[IsPrev1RaceResult_14] [bit] NULL,
	[IsPrev1RaceResult_15] [bit] NULL,
	[IsPrev1RaceResult_16] [bit] NULL,
	[IsPrev1RaceResult_17] [bit] NULL,
	[IsPrev1RaceResult_18] [bit] NULL,
	[TS2] [datetime2](7) NULL,
	[GUID] [uniqueidentifier] NULL,

INDEX [IX_RaceHorse] UNIQUE NONCLUSTERED HASH 
(
	[RaceDate],
	[JyoCD],
	[Kaiji],
	[Nichiji],
	[RaceNum],
	[KettoNum]
)WITH ( BUCKET_COUNT = 4194304),
INDEX [IX_RaceHorse_IsNormal] NONCLUSTERED HASH 
(
	[IsNormal]
)WITH ( BUCKET_COUNT = 4),
 CONSTRAINT [RaceHorse_éÂÉLÅ[]  PRIMARY KEY NONCLUSTERED HASH 
(
	[RaceID],
	[KettoNum]
)WITH ( BUCKET_COUNT = 4194304)
)WITH ( MEMORY_OPTIMIZED = ON , DURABILITY = SCHEMA_AND_DATA )

GO

ALTER TABLE [dbo].[RaceHorse] ADD  CONSTRAINT [DF_RaceHorse_GUIDOnRaceHorse_old]  DEFAULT (newid()) FOR [GUID]
GO

INSERT INTO [Jackpot].[dbo].[RaceHorse] ([RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [KettoNum], [Wakuban], [Umaban], [Bamei], [UmaKigoCD], [SexCD], [HinsyuCD], [KeiroCD], [Barei], [TozaiCD], [ChokyosiCode], [ChokyosiRyakusyo], [BanusiCode], [BanusiName], [Fukusyoku], [reserved1], [Futan], [FutanBefore], [FutanPercent], [Blinker], [IsBlinker], [reserved2], [KisyuCode], [KisyuCodeBefore], [KisyuRyakusyo], [KisyuRyakusyoBefore], [MinaraiCD], [MinaraiCDBefore], [BaTaijyu], [ZogenFugo], [ZogenSa], [IJyoCD], [NyusenJyuni], [KakuteiJyuni], [DochakuKubun], [DochakuTosu], [Time], [ChakusaCD], [ChakusaCDP], [ChakusaCDPP], [Jyuni1c], [Jyuni2c], [Jyuni3c], [Jyuni4c], [Odds], [Ninki], [Honsyokin], [Fukasyokin], [reserved3], [reserved4], [HaronTimeL4], [HaronTimeL3], [KettoNum1], [Bamei1], [KettoNum2], [Bamei2], [KettoNum3], [Bamei3], [TimeDiff], [RecordUpKubun], [DMKubun], [DMTime], [DMGosaP], [DMGosaM], [DMJyuni], [Kyakusitu], [TS], [IsNormal], [RaceTimeDev], [ClassTimeDev], [StdTime], [StdTimeDev], [StdTimeDevPercent], [ZogenPercent], [LifeTime], [Prev1StdTime], [Prev1StdTimeDev], [Prev1RaceResult], [Prev1TrackTypeCD], [Prev1JyokenCD5], [Prev1GradeCD], [IsPrev1JyokenCD5_Up], [IsPrev1JyokenCD5_Down], [RunCount], [HitCount1], [HitCount2], [HitCount3], [HitCount4], [HitCount5], [HitCount6], [HitCount12], [HitCount123], [IsHit_1], [IsHit_2], [IsHit_3], [IsHit_12], [IsHit_123], [IsNinki_01], [IsNinki_02], [IsNinki_03], [IsNinki_04], [IsNinki_05], [IsNinki_06], [IsNinki_07], [IsNinki_08], [IsNinki_09], [IsNinki_10], [IsNinki_11], [IsNinki_12], [IsNinki_13], [IsNinki_14], [IsNinki_15], [IsNinki_16], [IsNinki_17], [IsNinki_18], [IsPrev1TrackTypeCD_1], [IsPrev1TrackTypeCD_2], [IsPrev1TrackTypeCD_3], [IsPrev1JyokenCD5_005], [IsPrev1JyokenCD5_010], [IsPrev1JyokenCD5_016], [IsPrev1JyokenCD5_701], [IsPrev1JyokenCD5_703], [IsPrev1JyokenCD5_999], [IsPrev1RaceResult_01], [IsPrev1RaceResult_02], [IsPrev1RaceResult_03], [IsPrev1RaceResult_04], [IsPrev1RaceResult_05], [IsPrev1RaceResult_06], [IsPrev1RaceResult_07], [IsPrev1RaceResult_08], [IsPrev1RaceResult_09], [IsPrev1RaceResult_10], [IsPrev1RaceResult_11], [IsPrev1RaceResult_12], [IsPrev1RaceResult_13], [IsPrev1RaceResult_14], [IsPrev1RaceResult_15], [IsPrev1RaceResult_16], [IsPrev1RaceResult_17], [IsPrev1RaceResult_18], [TS2], [GUID]) SELECT [RecordSpec], [DataKubun], [MakeDate], [RaceDate], [JyoCD], [Kaiji], [Nichiji], [RaceNum], [RaceID], [KettoNum], [Wakuban], [Umaban], [Bamei], [UmaKigoCD], [SexCD], [HinsyuCD], [KeiroCD], [Barei], [TozaiCD], [ChokyosiCode], [ChokyosiRyakusyo], [BanusiCode], [BanusiName], [Fukusyoku], [reserved1], [Futan], [FutanBefore], [FutanPercent], [Blinker], [IsBlinker], [reserved2], [KisyuCode], [KisyuCodeBefore], [KisyuRyakusyo], [KisyuRyakusyoBefore], [MinaraiCD], [MinaraiCDBefore], [BaTaijyu], [ZogenFugo], [ZogenSa], [IJyoCD], [NyusenJyuni], [KakuteiJyuni], [DochakuKubun], [DochakuTosu], [Time], [ChakusaCD], [ChakusaCDP], [ChakusaCDPP], [Jyuni1c], [Jyuni2c], [Jyuni3c], [Jyuni4c], [Odds], [Ninki], [Honsyokin], [Fukasyokin], [reserved3], [reserved4], [HaronTimeL4], [HaronTimeL3], [KettoNum1], [Bamei1], [KettoNum2], [Bamei2], [KettoNum3], [Bamei3], [TimeDiff], [RecordUpKubun], [DMKubun], [DMTime], [DMGosaP], [DMGosaM], [DMJyuni], [Kyakusitu], [TS], [IsNormal], [RaceTimeDev], [ClassTimeDev], [StdTime], [StdTimeDev], [StdTimeDevPercent], [ZogenPercent], [LifeTime], [Prev1StdTime], [Prev1StdTimeDev], [Prev1RaceResult], [Prev1TrackTypeCD], [Prev1JyokenCD5], [Prev1GradeCD], [IsPrev1JyokenCD5_Up], [IsPrev1JyokenCD5_Down], [RunCount], [HitCount1], [HitCount2], [HitCount3], [HitCount4], [HitCount5], [HitCount6], [HitCount12], [HitCount123], [IsHit_1], [IsHit_2], [IsHit_3], [IsHit_12], [IsHit_123], [IsNinki_01], [IsNinki_02], [IsNinki_03], [IsNinki_04], [IsNinki_05], [IsNinki_06], [IsNinki_07], [IsNinki_08], [IsNinki_09], [IsNinki_10], [IsNinki_11], [IsNinki_12], [IsNinki_13], [IsNinki_14], [IsNinki_15], [IsNinki_16], [IsNinki_17], [IsNinki_18], [IsPrev1TrackTypeCD_1], [IsPrev1TrackTypeCD_2], [IsPrev1TrackTypeCD_3], [IsPrev1JyokenCD5_005], [IsPrev1JyokenCD5_010], [IsPrev1JyokenCD5_016], [IsPrev1JyokenCD5_701], [IsPrev1JyokenCD5_703], [IsPrev1JyokenCD5_999], [IsPrev1RaceResult_01], [IsPrev1RaceResult_02], [IsPrev1RaceResult_03], [IsPrev1RaceResult_04], [IsPrev1RaceResult_05], [IsPrev1RaceResult_06], [IsPrev1RaceResult_07], [IsPrev1RaceResult_08], [IsPrev1RaceResult_09], [IsPrev1RaceResult_10], [IsPrev1RaceResult_11], [IsPrev1RaceResult_12], [IsPrev1RaceResult_13], [IsPrev1RaceResult_14], [IsPrev1RaceResult_15], [IsPrev1RaceResult_16], [IsPrev1RaceResult_17], [IsPrev1RaceResult_18], [TS2], [GUID] FROM [Jackpot].[dbo].[RaceHorse_old] 

GO


