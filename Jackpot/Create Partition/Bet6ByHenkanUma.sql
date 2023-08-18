USE [Jackpot]
GO
BEGIN TRANSACTION




ALTER TABLE [dbo].[Bet6ByHenkanUma] DROP CONSTRAINT [PK_Bet6ByHenkanUma]


ALTER TABLE [dbo].[Bet6ByHenkanUma] ADD  CONSTRAINT [PK_Bet6ByHenkanUma] PRIMARY KEY NONCLUSTERED 
(
	[RaceID] DESC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]


CREATE CLUSTERED INDEX [ClusteredIndex_on_PS_Date_636027279571729356] ON [dbo].[Bet6ByHenkanUma]
(
	[RaceDate]
)WITH (SORT_IN_TEMPDB = ON, DROP_EXISTING = OFF, ONLINE = OFF) ON [PS_Date]([RaceDate])


DROP INDEX [ClusteredIndex_on_PS_Date_636027279571729356] ON [dbo].[Bet6ByHenkanUma]








CREATE UNIQUE NONCLUSTERED INDEX [IX_Bet6ByHenkanUma] ON [dbo].[Bet6ByHenkanUma]
(
	[RaceDate] ASC,
	[JyoCD] ASC,
	[Kaiji] ASC,
	[Nichiji] ASC,
	[RaceNum] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, IGNORE_DUP_KEY = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])






COMMIT TRANSACTION


