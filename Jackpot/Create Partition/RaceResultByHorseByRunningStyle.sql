USE [Jackpot]
GO
BEGIN TRANSACTION
ALTER TABLE [dbo].[RaceResultByHorseByCourseType] DROP CONSTRAINT [FK_RaceResultByHorseByCourseType_RaceResultByHorseByRunningStyle]


ALTER TABLE [dbo].[RaceResultByHorseByDistanceType] DROP CONSTRAINT [FK_RaceResultByHorseByDistanceType_RaceResultByHorseByRunningStyle]






ALTER TABLE [dbo].[RaceResultByHorseByRunningStyle] DROP CONSTRAINT [PK_RaceResultByHorseByRunningStyle]


ALTER TABLE [dbo].[RaceResultByHorseByRunningStyle] ADD  CONSTRAINT [PK_RaceResultByHorseByRunningStyle] PRIMARY KEY NONCLUSTERED 
(
	[RaceID] DESC,
	[KettoNum] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]


CREATE CLUSTERED INDEX [ClusteredIndex_on_PS_Date_636027150747931108] ON [dbo].[RaceResultByHorseByRunningStyle]
(
	[RaceDate]
)WITH (SORT_IN_TEMPDB = ON, DROP_EXISTING = OFF, ONLINE = OFF) ON [PS_Date]([RaceDate])


DROP INDEX [ClusteredIndex_on_PS_Date_636027150747931108] ON [dbo].[RaceResultByHorseByRunningStyle]




ALTER TABLE [dbo].[RaceResultByHorseByCourseType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByHorseByCourseType_RaceResultByHorseByRunningStyle] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceResultByHorseByRunningStyle] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByHorseByCourseType] NOCHECK CONSTRAINT [FK_RaceResultByHorseByCourseType_RaceResultByHorseByRunningStyle]


ALTER TABLE [dbo].[RaceResultByHorseByDistanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByHorseByDistanceType_RaceResultByHorseByRunningStyle] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceResultByHorseByRunningStyle] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByHorseByDistanceType] NOCHECK CONSTRAINT [FK_RaceResultByHorseByDistanceType_RaceResultByHorseByRunningStyle]






CREATE UNIQUE NONCLUSTERED INDEX [IX_RaceResultByHorseByRunningStyle] ON [dbo].[RaceResultByHorseByRunningStyle]
(
	[RaceDate] DESC,
	[JyoCD] ASC,
	[Kaiji] ASC,
	[Nichiji] ASC,
	[RaceNum] ASC,
	[KettoNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, IGNORE_DUP_KEY = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])






COMMIT TRANSACTION



