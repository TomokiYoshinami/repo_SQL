USE [Jackpot]
GO
BEGIN TRANSACTION




ALTER TABLE [dbo].[RaceResultByChildrenTrackCondition02] DROP CONSTRAINT [PK_RaceResultByChildrenTrackCondition02]


ALTER TABLE [dbo].[RaceResultByChildrenTrackCondition02] ADD  CONSTRAINT [PK_RaceResultByChildrenTrackCondition02] PRIMARY KEY NONCLUSTERED 
(
	[RaceID] DESC,
	[KettoNum] ASC,
	[TrackConditionCD] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]


CREATE CLUSTERED INDEX [ClusteredIndex_on_PS_Date2_636027998799652781] ON [dbo].[RaceResultByChildrenTrackCondition02]
(
	[RaceDate]
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PS_Date2]([RaceDate])


DROP INDEX [ClusteredIndex_on_PS_Date2_636027998799652781] ON [dbo].[RaceResultByChildrenTrackCondition02]










COMMIT TRANSACTION



