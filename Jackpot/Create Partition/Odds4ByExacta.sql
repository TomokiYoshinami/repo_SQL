USE [Jackpot]
GO
BEGIN TRANSACTION




ALTER TABLE [dbo].[Odds4ByExacta] DROP CONSTRAINT [PK_Odds4ByExacta]


ALTER TABLE [dbo].[Odds4ByExacta] ADD  CONSTRAINT [PK_Odds4ByExacta] PRIMARY KEY NONCLUSTERED 
(
	[RaceID] DESC,
	[BetTypeCD] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]


CREATE CLUSTERED INDEX [ClusteredIndex_on_PS_Date_636027177626732577] ON [dbo].[Odds4ByExacta]
(
	[RaceDate]
)WITH (SORT_IN_TEMPDB = ON, DROP_EXISTING = OFF, ONLINE = OFF) ON [PS_Date]([RaceDate])


DROP INDEX [ClusteredIndex_on_PS_Date_636027177626732577] ON [dbo].[Odds4ByExacta]








CREATE UNIQUE NONCLUSTERED INDEX [IX_Odds4ByExacta] ON [dbo].[Odds4ByExacta]
(
	[RaceDate] DESC,
	[JyoCD] ASC,
	[Kaiji] ASC,
	[Nichiji] ASC,
	[RaceNum] ASC,
	[BetTypeCD] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, IGNORE_DUP_KEY = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])






COMMIT TRANSACTION


