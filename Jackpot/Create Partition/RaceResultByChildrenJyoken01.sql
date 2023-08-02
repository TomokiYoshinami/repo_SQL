USE [Jackpot]
GO
BEGIN TRANSACTION




ALTER TABLE [dbo].[RaceResultByChildrenJyoken01] DROP CONSTRAINT [PK_RaceResultByChildrenJyoken01]


ALTER TABLE [dbo].[RaceResultByChildrenJyoken01] ADD  CONSTRAINT [PK_RaceResultByChildrenJyoken01] PRIMARY KEY NONCLUSTERED 
(
	[RaceID] DESC,
	[KettoNum] ASC,
	[JyokenCD5] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]


CREATE CLUSTERED INDEX [ClusteredIndex_on_PS_Date2_636027996583414659] ON [dbo].[RaceResultByChildrenJyoken01]
(
	[RaceDate]
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PS_Date2]([RaceDate])


DROP INDEX [ClusteredIndex_on_PS_Date2_636027996583414659] ON [dbo].[RaceResultByChildrenJyoken01]










COMMIT TRANSACTION



