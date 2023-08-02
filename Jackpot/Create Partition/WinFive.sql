USE [Jackpot]
GO
BEGIN TRANSACTION
ALTER TABLE [dbo].[WinFiveByPay] DROP CONSTRAINT [FK_WinFiveByPay_WinFive]


ALTER TABLE [dbo].[WinFiveByRace] DROP CONSTRAINT [FK_WinFiveByRace_WinFive]


ALTER TABLE [dbo].[WinFiveByYuko] DROP CONSTRAINT [FK_WinFiveByYuko_WinFive]






ALTER TABLE [dbo].[WinFive] DROP CONSTRAINT [PK_WinFive]


ALTER TABLE [dbo].[WinFive] ADD  CONSTRAINT [PK_WinFive] PRIMARY KEY CLUSTERED 
(
	[KaisaiDate] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PS_Date]([KaisaiDate])


ALTER TABLE [dbo].[WinFiveByPay]  WITH NOCHECK ADD  CONSTRAINT [FK_WinFiveByPay_WinFive] FOREIGN KEY([KaisaiDate])
REFERENCES [dbo].[WinFive] ([KaisaiDate])
ALTER TABLE [dbo].[WinFiveByPay] NOCHECK CONSTRAINT [FK_WinFiveByPay_WinFive]


ALTER TABLE [dbo].[WinFiveByRace]  WITH NOCHECK ADD  CONSTRAINT [FK_WinFiveByRace_WinFive] FOREIGN KEY([KaisaiDate])
REFERENCES [dbo].[WinFive] ([KaisaiDate])
ALTER TABLE [dbo].[WinFiveByRace] NOCHECK CONSTRAINT [FK_WinFiveByRace_WinFive]


ALTER TABLE [dbo].[WinFiveByYuko]  WITH NOCHECK ADD  CONSTRAINT [FK_WinFiveByYuko_WinFive] FOREIGN KEY([KaisaiDate])
REFERENCES [dbo].[WinFive] ([KaisaiDate])
ALTER TABLE [dbo].[WinFiveByYuko] NOCHECK CONSTRAINT [FK_WinFiveByYuko_WinFive]










COMMIT TRANSACTION



