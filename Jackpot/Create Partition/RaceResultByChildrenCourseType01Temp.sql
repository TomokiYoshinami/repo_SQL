USE [Jackpot]
GO
BEGIN TRANSACTION




ALTER TABLE [dbo].[RaceResultByChildrenCourseType01Temp] DROP CONSTRAINT [PK_RaceResultByChildrenCourseType01Temp]


ALTER TABLE [dbo].[RaceResultByChildrenCourseType01Temp] ADD  CONSTRAINT [PK_RaceResultByChildrenCourseType01Temp] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]


CREATE CLUSTERED INDEX [ClusteredIndex_on_PS_Date2_636027995835885615] ON [dbo].[RaceResultByChildrenCourseType01Temp]
(
	[RaceDate]
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PS_Date2]([RaceDate])


DROP INDEX [ClusteredIndex_on_PS_Date2_636027995835885615] ON [dbo].[RaceResultByChildrenCourseType01Temp]










COMMIT TRANSACTION



