USE [Jackpot]
GO
BEGIN TRANSACTION
ALTER TABLE [dbo].[RaceHorseBet] DROP CONSTRAINT [FK_RaceHorseBet_RaceHorse]


ALTER TABLE [dbo].[RaceResult] DROP CONSTRAINT [FK_RaceResult_RaceHorse]


ALTER TABLE [dbo].[RaceResultByBanusi] DROP CONSTRAINT [FK_RaceResultByBanusi_RaceHorse]


ALTER TABLE [dbo].[RaceResultByBanusiByTotal] DROP CONSTRAINT [FK_RaceResultByBanusiByTotal_RaceHorse]


ALTER TABLE [dbo].[RaceResultByBreeder] DROP CONSTRAINT [FK_RaceResultByBreeder_RaceHorse]


ALTER TABLE [dbo].[RaceResultByBreederByTotal] DROP CONSTRAINT [FK_RaceResultByBreederByTotal_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenCourseType01] DROP CONSTRAINT [FK_RaceResultByChildrenCourseType01_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenCourseType01Temp] DROP CONSTRAINT [FK_RaceResultByChildrenCourseType01Temp_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenCourseType02] DROP CONSTRAINT [FK_RaceResultByChildrenCourseType02_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenCourseType02Temp] DROP CONSTRAINT [FK_RaceResultByChildrenCourseType02Temp_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenJyoken01] DROP CONSTRAINT [FK_RaceResultByChildrenJyoken01_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenJyoken02] DROP CONSTRAINT [FK_RaceResultByChildrenJyoken02_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenSmile01] DROP CONSTRAINT [FK_RaceResultByChildrenSmile01_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenSmile02] DROP CONSTRAINT [FK_RaceResultByChildrenSmile02_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenTrackCondition01] DROP CONSTRAINT [FK_RaceResultByChildrenTrackCondition01_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenTrackCondition02] DROP CONSTRAINT [FK_RaceResultByChildrenTrackCondition02_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenTrackType01] DROP CONSTRAINT [FK_RaceResultByChildrenTrackType01_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenTrackType02] DROP CONSTRAINT [FK_RaceResultByChildrenTrackType02_RaceHorse]


ALTER TABLE [dbo].[RaceResultByHorseByJyo] DROP CONSTRAINT [FK_RaceResultByHorseByJyo_RaceHorse]


ALTER TABLE [dbo].[RaceResultByHorseByRunningStyle] DROP CONSTRAINT [FK_RaceResultByHorseByRunningStyle_RaceHorse]


ALTER TABLE [dbo].[RaceResultByHorseByTotal] DROP CONSTRAINT [FK_RaceResultByHorseByTotal_RaceHorse]


ALTER TABLE [dbo].[RaceResultByHorseByTrackCondition] DROP CONSTRAINT [FK_RaceResultByHorseByTrackCondition_RaceHorse]


ALTER TABLE [dbo].[RaceResultByHorseByTrackType] DROP CONSTRAINT [FK_RaceResultByHorseByTrackType_RaceHorse]


ALTER TABLE [dbo].[SpecialRaceByHorse] DROP CONSTRAINT [FK_SpecialRaceByHorse_RaceHorse]






ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [PK_RaceHorse]


ALTER TABLE [dbo].[RaceHorse] ADD  CONSTRAINT [PK_RaceHorse] PRIMARY KEY NONCLUSTERED 
(
	[RaceID] DESC,
	[KettoNum] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]


CREATE CLUSTERED INDEX [ClusteredIndex_on_PS_Date_636027089697248407] ON [dbo].[RaceHorse]
(
	[RaceDate]
)WITH (SORT_IN_TEMPDB = ON, DROP_EXISTING = OFF, ONLINE = OFF) ON [PS_Date]([RaceDate])


DROP INDEX [ClusteredIndex_on_PS_Date_636027089697248407] ON [dbo].[RaceHorse]




ALTER TABLE [dbo].[RaceHorseBet]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseBet_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceHorseBet] NOCHECK CONSTRAINT [FK_RaceHorseBet_RaceHorse]


ALTER TABLE [dbo].[RaceResult]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResult_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResult] NOCHECK CONSTRAINT [FK_RaceResult_RaceHorse]


ALTER TABLE [dbo].[RaceResultByBanusi]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByBanusi_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByBanusi] NOCHECK CONSTRAINT [FK_RaceResultByBanusi_RaceHorse]


ALTER TABLE [dbo].[RaceResultByBanusiByTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByBanusiByTotal_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByBanusiByTotal] NOCHECK CONSTRAINT [FK_RaceResultByBanusiByTotal_RaceHorse]


ALTER TABLE [dbo].[RaceResultByBreeder]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByBreeder_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByBreeder] NOCHECK CONSTRAINT [FK_RaceResultByBreeder_RaceHorse]


ALTER TABLE [dbo].[RaceResultByBreederByTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByBreederByTotal_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByBreederByTotal] NOCHECK CONSTRAINT [FK_RaceResultByBreederByTotal_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenCourseType01]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByChildrenCourseType01_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByChildrenCourseType01] NOCHECK CONSTRAINT [FK_RaceResultByChildrenCourseType01_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenCourseType01Temp]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByChildrenCourseType01Temp_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByChildrenCourseType01Temp] NOCHECK CONSTRAINT [FK_RaceResultByChildrenCourseType01Temp_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenCourseType02]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByChildrenCourseType02_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByChildrenCourseType02] NOCHECK CONSTRAINT [FK_RaceResultByChildrenCourseType02_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenCourseType02Temp]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByChildrenCourseType02Temp_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByChildrenCourseType02Temp] NOCHECK CONSTRAINT [FK_RaceResultByChildrenCourseType02Temp_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenJyoken01]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByChildrenJyoken01_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByChildrenJyoken01] NOCHECK CONSTRAINT [FK_RaceResultByChildrenJyoken01_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenJyoken02]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByChildrenJyoken02_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByChildrenJyoken02] NOCHECK CONSTRAINT [FK_RaceResultByChildrenJyoken02_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenSmile01]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByChildrenSmile01_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByChildrenSmile01] NOCHECK CONSTRAINT [FK_RaceResultByChildrenSmile01_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenSmile02]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByChildrenSmile02_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByChildrenSmile02] NOCHECK CONSTRAINT [FK_RaceResultByChildrenSmile02_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenTrackCondition01]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByChildrenTrackCondition01_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByChildrenTrackCondition01] NOCHECK CONSTRAINT [FK_RaceResultByChildrenTrackCondition01_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenTrackCondition02]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByChildrenTrackCondition02_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByChildrenTrackCondition02] NOCHECK CONSTRAINT [FK_RaceResultByChildrenTrackCondition02_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenTrackType01]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByChildrenTrackType01_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByChildrenTrackType01] NOCHECK CONSTRAINT [FK_RaceResultByChildrenTrackType01_RaceHorse]


ALTER TABLE [dbo].[RaceResultByChildrenTrackType02]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByChildrenTrackType02_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByChildrenTrackType02] NOCHECK CONSTRAINT [FK_RaceResultByChildrenTrackType02_RaceHorse]


ALTER TABLE [dbo].[RaceResultByHorseByJyo]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByHorseByJyo_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByHorseByJyo] NOCHECK CONSTRAINT [FK_RaceResultByHorseByJyo_RaceHorse]


ALTER TABLE [dbo].[RaceResultByHorseByRunningStyle]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByHorseByRunningStyle_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByHorseByRunningStyle] NOCHECK CONSTRAINT [FK_RaceResultByHorseByRunningStyle_RaceHorse]


ALTER TABLE [dbo].[RaceResultByHorseByTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByHorseByTotal_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByHorseByTotal] NOCHECK CONSTRAINT [FK_RaceResultByHorseByTotal_RaceHorse]


ALTER TABLE [dbo].[RaceResultByHorseByTrackCondition]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByHorseByTrackCondition_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByHorseByTrackCondition] NOCHECK CONSTRAINT [FK_RaceResultByHorseByTrackCondition_RaceHorse]


ALTER TABLE [dbo].[RaceResultByHorseByTrackType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByHorseByTrackType_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByHorseByTrackType] NOCHECK CONSTRAINT [FK_RaceResultByHorseByTrackType_RaceHorse]


ALTER TABLE [dbo].[SpecialRaceByHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_SpecialRaceByHorse_RaceHorse] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceHorse] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[SpecialRaceByHorse] NOCHECK CONSTRAINT [FK_SpecialRaceByHorse_RaceHorse]






CREATE UNIQUE NONCLUSTERED INDEX [IX_RaceHorse] ON [dbo].[RaceHorse]
(
	[RaceDate] DESC,
	[JyoCD] ASC,
	[Kaiji] ASC,
	[Nichiji] ASC,
	[RaceNum] ASC,
	[KettoNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, IGNORE_DUP_KEY = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])




CREATE NONCLUSTERED INDEX [IX_RaceHorse_BanusiCode] ON [dbo].[RaceHorse]
(
	[BanusiCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])




CREATE NONCLUSTERED INDEX [IX_RaceHorse_ChokyosiCode] ON [dbo].[RaceHorse]
(
	[ChokyosiCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])




CREATE NONCLUSTERED INDEX [IX_RaceHorse_HinsyuCD] ON [dbo].[RaceHorse]
(
	[HinsyuCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])




CREATE NONCLUSTERED INDEX [IX_RaceHorse_Include01] ON [dbo].[RaceHorse]
(
	[IsNormal] ASC
)
INCLUDE ( 	[RaceDate],
	[RaceID],
	[KettoNum],
	[RunCount],
	[HitCount1],
	[HitCount12],
	[HitCount123]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])




CREATE NONCLUSTERED INDEX [IX_RaceHorse_Include02] ON [dbo].[RaceHorse]
(
	[KettoNum] ASC,
	[IsNormal] ASC
)
INCLUDE ( 	[RaceDate],
	[RaceID],
	[RunCount],
	[HitCount1],
	[HitCount12],
	[HitCount123]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])




CREATE NONCLUSTERED INDEX [IX_RaceHorse_IsNormal] ON [dbo].[RaceHorse]
(
	[IsNormal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])




CREATE NONCLUSTERED INDEX [IX_RaceHorse_KakuteiJyuni] ON [dbo].[RaceHorse]
(
	[KakuteiJyuni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])




CREATE NONCLUSTERED INDEX [IX_RaceHorse_KeiroCD] ON [dbo].[RaceHorse]
(
	[KeiroCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])




CREATE NONCLUSTERED INDEX [IX_RaceHorse_KisyuCode] ON [dbo].[RaceHorse]
(
	[KisyuCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])




CREATE NONCLUSTERED INDEX [IX_RaceHorse_MinaraiCD] ON [dbo].[RaceHorse]
(
	[MinaraiCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])




CREATE NONCLUSTERED INDEX [IX_RaceHorse_RaceDate] ON [dbo].[RaceHorse]
(
	[RaceDate] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PS_Date]([RaceDate])




CREATE NONCLUSTERED INDEX [IX_RaceHorse_RaceID_Umaban] ON [dbo].[RaceHorse]
(
	[RaceID] DESC,
	[Umaban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])




CREATE NONCLUSTERED INDEX [IX_RaceHorse_SexCD] ON [dbo].[RaceHorse]
(
	[SexCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])




CREATE NONCLUSTERED INDEX [IX_RaceHorse_TozaiCD] ON [dbo].[RaceHorse]
(
	[TozaiCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])




CREATE NONCLUSTERED INDEX [IX_RaceHorse_UmaKigoCD] ON [dbo].[RaceHorse]
(
	[UmaKigoCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])




CREATE NONCLUSTERED INDEX [IX_RaceHorse_Wakuban] ON [dbo].[RaceHorse]
(
	[Wakuban] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])






COMMIT TRANSACTION



