USE [Jackpot]
GO
BEGIN TRANSACTION




ALTER TABLE [dbo].[RaceResultByTrainerByTrackType] DROP CONSTRAINT [PK_RaceResultByTrainerByTrackType]


ALTER TABLE [dbo].[RaceResultByTrainerByTrackType] ADD  CONSTRAINT [PK_RaceResultByTrainerByTrackType] PRIMARY KEY NONCLUSTERED 
(
	[RaceID] DESC,
	[KettoNum] ASC,
	[SummaryType] ASC,
	[TrackTypeCD] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]


CREATE CLUSTERED INDEX [ClusteredIndex_on_PS_Date_636027163070243935] ON [dbo].[RaceResultByTrainerByTrackType]
(
	[RaceDate]
)WITH (SORT_IN_TEMPDB = ON, DROP_EXISTING = OFF, ONLINE = OFF) ON [PS_Date]([RaceDate])


DROP INDEX [ClusteredIndex_on_PS_Date_636027163070243935] ON [dbo].[RaceResultByTrainerByTrackType]








CREATE UNIQUE NONCLUSTERED INDEX [IX_RaceResultByTrainerByTrackType] ON [dbo].[RaceResultByTrainerByTrackType]
(
	[RaceDate] DESC,
	[JyoCD] ASC,
	[Kaiji] ASC,
	[Nichiji] ASC,
	[RaceNum] ASC,
	[KettoNum] ASC,
	[SummaryType] ASC,
	[TrackTypeCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, IGNORE_DUP_KEY = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])






COMMIT TRANSACTION



