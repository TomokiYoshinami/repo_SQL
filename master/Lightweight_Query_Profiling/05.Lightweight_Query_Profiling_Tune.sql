USE
W ideWorldImportersDW
GO
DBCC UPDATEUSAGE (WideWorldImportersDW,'Fact.OrderHistory') WITH COUNT_ROWS
GO