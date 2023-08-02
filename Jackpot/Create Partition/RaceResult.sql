USE [Jackpot]
GO
BEGIN TRANSACTION
ALTER TABLE [dbo].[RaceResultByBanusi] DROP CONSTRAINT [FK_RaceResultByBanusi_RaceResult]


ALTER TABLE [dbo].[RaceResultByBanusiByTotal] DROP CONSTRAINT [FK_RaceResultByBanusiByTotal_RaceResult]






ALTER TABLE [dbo].[RaceResult] DROP CONSTRAINT [PK_RaceResult]


ALTER TABLE [dbo].[RaceResult] ADD  CONSTRAINT [PK_RaceResult] PRIMARY KEY NONCLUSTERED 
(
	[RaceID] DESC,
	[KettoNum] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]


CREATE CLUSTERED INDEX [ClusteredIndex_on_PS_Date_636027102928272770] ON [dbo].[RaceResult]
(
	[RaceDate]
)WITH (SORT_IN_TEMPDB = ON, DROP_EXISTING = OFF, ONLINE = OFF) ON [PS_Date]([RaceDate])


DROP INDEX [ClusteredIndex_on_PS_Date_636027102928272770] ON [dbo].[RaceResult]




ALTER TABLE [dbo].[RaceResultByBanusi]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByBanusi_RaceResult] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceResult] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByBanusi] NOCHECK CONSTRAINT [FK_RaceResultByBanusi_RaceResult]


ALTER TABLE [dbo].[RaceResultByBanusiByTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByBanusiByTotal_RaceResult] FOREIGN KEY([RaceID], [KettoNum])
REFERENCES [dbo].[RaceResult] ([RaceID], [KettoNum])
ALTER TABLE [dbo].[RaceResultByBanusiByTotal] NOCHECK CONSTRAINT [FK_RaceResultByBanusiByTotal_RaceResult]






CREATE UNIQUE NONCLUSTERED INDEX [IX_RaceResult] ON [dbo].[RaceResult]
(
	[RaceDate] DESC,
	[JyoCD] ASC,
	[Kaiji] ASC,
	[Nichiji] ASC,
	[RaceNum] ASC,
	[KettoNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, IGNORE_DUP_KEY = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])






COMMIT TRANSACTION



