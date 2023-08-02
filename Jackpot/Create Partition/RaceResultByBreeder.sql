USE [Jackpot]
GO
BEGIN TRANSACTION
ALTER TABLE [dbo].[RaceResultByBreederByTotal] DROP CONSTRAINT [FK_RaceResultByBreederByTotal_RaceResultByBreeder]






ALTER TABLE [dbo].[RaceResultByBreeder] DROP CONSTRAINT [PK_RaceResultByBreeder]


ALTER TABLE [dbo].[RaceResultByBreeder] ADD  CONSTRAINT [PK_RaceResultByBreeder] PRIMARY KEY NONCLUSTERED 
(
	[RaceID] DESC,
	[KettoNum] ASC,
	[SummaryType] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]


CREATE CLUSTERED INDEX [ClusteredIndex_on_PS_Date_636027105907140313] ON [dbo].[RaceResultByBreeder]
(
	[RaceDate]
)WITH (SORT_IN_TEMPDB = ON, DROP_EXISTING = OFF, ONLINE = OFF) ON [PS_Date]([RaceDate])


DROP INDEX [ClusteredIndex_on_PS_Date_636027105907140313] ON [dbo].[RaceResultByBreeder]




ALTER TABLE [dbo].[RaceResultByBreederByTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceResultByBreederByTotal_RaceResultByBreeder] FOREIGN KEY([RaceID], [KettoNum], [SummaryType])
REFERENCES [dbo].[RaceResultByBreeder] ([RaceID], [KettoNum], [SummaryType])
ALTER TABLE [dbo].[RaceResultByBreederByTotal] NOCHECK CONSTRAINT [FK_RaceResultByBreederByTotal_RaceResultByBreeder]






CREATE UNIQUE NONCLUSTERED INDEX [IX_RaceResultByBreeder] ON [dbo].[RaceResultByBreeder]
(
	[RaceDate] DESC,
	[JyoCD] ASC,
	[Kaiji] ASC,
	[Nichiji] ASC,
	[RaceNum] ASC,
	[KettoNum] ASC,
	[SummaryType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, IGNORE_DUP_KEY = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Date]([RaceDate])






COMMIT TRANSACTION



