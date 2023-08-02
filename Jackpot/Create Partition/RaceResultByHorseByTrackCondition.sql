USE [Jackpot]
GO
BEGIN TRANSACTION




ALTER TABLE [dbo].[RaceResultByHorseByTrackCondition] DROP CONSTRAINT [PK_RaceResultByHorseByTrackCondition]


ALTER TABLE [dbo].[RaceResultByHorseByTrackCondition] ADD  CONSTRAINT [PK_RaceResultByHorseByTrackCondition] PRIMARY KEY NONCLUSTERED 
(
	[RaceID] DESC,
	[KettoNum] ASC,
	[TrackTypeCD] ASC,
	[TrackConditionCD] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]


CREATE CLUSTERED INDEX [ClusteredIndex_on_PS_Date_636027152589436672] ON [dbo].[RaceResultByHorseByTrackCondition]
(
	[RaceDate]
)WITH (SORT_IN_TEMPDB = ON, DROP_EXISTING = OFF, ONLINE = OFF) ON [PS_Date]([RaceDate])


DROP INDEX [ClusteredIndex_on_PS_Date_636027152589436672] ON [dbo].[RaceResultByHorseByTrackCondition]








CREATE UNIQUE NONCLUSTERED INDEX [IX_RaceResultByHorseByTrackCondition] ON [dbo].[RaceResultByHorseByTrackCondition]
(
	[RaceDate] DESC,
	[JyoCD] ASC,
	[Kaiji] ASC,
	[Nichiji] ASC,
	[RaceNum] ASC,
	[KettoNum] ASC,
	[TrackTypeCD] ASC,
	[TrackConditionCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, IGNORE_DUP_KEY = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])






COMMIT TRANSACTION



