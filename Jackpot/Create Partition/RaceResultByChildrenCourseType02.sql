USE [Jackpot]
GO
BEGIN TRANSACTION




ALTER TABLE [dbo].[RaceResultByChildrenCourseType02] DROP CONSTRAINT [PK_RaceResultByChildrenCourseType02]


ALTER TABLE [dbo].[RaceResultByChildrenCourseType02] ADD  CONSTRAINT [PK_RaceResultByChildrenCourseType02] PRIMARY KEY NONCLUSTERED 
(
	[RaceID] DESC,
	[KettoNum] ASC,
	[CourseTypeCD] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]


CREATE CLUSTERED INDEX [ClusteredIndex_on_PS_Date2_636027996187240731] ON [dbo].[RaceResultByChildrenCourseType02]
(
	[RaceDate]
)WITH (SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF) ON [PS_Date2]([RaceDate])


DROP INDEX [ClusteredIndex_on_PS_Date2_636027996187240731] ON [dbo].[RaceResultByChildrenCourseType02]










COMMIT TRANSACTION



