USE [Jackpot]
GO
BEGIN TRANSACTION




ALTER TABLE [dbo].[MgmtSim] DROP CONSTRAINT [PK_MgmtSim]


ALTER TABLE [dbo].[MgmtSim] ADD  CONSTRAINT [PK_MgmtSim] PRIMARY KEY NONCLUSTERED 
(
	[RaceID] DESC,
	[BetTypeCD] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC,
	[BetNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]


CREATE CLUSTERED INDEX [ClusteredIndex_on_PS_Date_636028179698383820] ON [dbo].[MgmtSim]
(
	[RaceDate]
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PS_Date]([RaceDate])


DROP INDEX [ClusteredIndex_on_PS_Date_636028179698383820] ON [dbo].[MgmtSim]








CREATE UNIQUE NONCLUSTERED INDEX [IX_MgmtSim] ON [dbo].[MgmtSim]
(
	[RaceDate] DESC,
	[JyoCD] ASC,
	[Kaiji] ASC,
	[Nichiji] ASC,
	[RaceNum] ASC,
	[BetTypeCD] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC,
	[BetNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])






COMMIT TRANSACTION



