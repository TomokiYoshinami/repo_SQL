USE master
GO
ALTER DATABASE tempdb
ADD FILE
(NAME = tempdb_mssql_9, FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\tempdb_mssql_9.ndf', SIZE = 1GB , MAXSIZE = UNLIMITED, FILEGROWTH = 1GB);
GO
