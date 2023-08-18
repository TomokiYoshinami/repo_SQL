USE [Jackpot]
GO
BEGIN TRANSACTION




ALTER TABLE [dbo].[Bet1ByWide] DROP CONSTRAINT [PK_Bet1ByWide]


ALTER TABLE [dbo].[Bet1ByWide] ADD  CONSTRAINT [PK_Bet1ByWide] PRIMARY KEY NONCLUSTERED 
(
	[RaceID] DESC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]


CREATE CLUSTERED INDEX [ClusteredIndex_on_PS_Date_636027277006376675] ON [dbo].[Bet1ByWide]
(
	[RaceDate]
)WITH (SORT_IN_TEMPDB = ON, DROP_EXISTING = OFF, ONLINE = OFF) ON [PS_Date]([RaceDate])


DROP INDEX [ClusteredIndex_on_PS_Date_636027277006376675] ON [dbo].[Bet1ByWide]








CREATE UNIQUE NONCLUSTERED INDEX [IX_Bet1ByWide] ON [dbo].[Bet1ByWide]
(
	[RaceDate] DESC,
	[JyoCD] ASC,
	[Kaiji] ASC,
	[Nichiji] ASC,
	[RaceNum] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, IGNORE_DUP_KEY = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])






COMMIT TRANSACTION


