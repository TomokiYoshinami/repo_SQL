USE master
GO

--ADD

ALTER DATABASE tempdb ADD LOG FILE(NAME = templog1, FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\tempdblog1.ldf', SIZE = 8 MB, MAXSIZE = UNLIMITED, FILEGROWTH = 1 GB);	
GO