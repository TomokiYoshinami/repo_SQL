USE [Jackpot];
GO
BEGIN TRANSACTION;
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [PK_Schedule];
ALTER TABLE [dbo].[Schedule]
ADD CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED([RaceDate] DESC, [JyoCD] ASC, [Kaiji] ASC, [Nichiji] ASC)
    WITH(PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = ON, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PS_Date]([RaceDate]);
COMMIT TRANSACTION;