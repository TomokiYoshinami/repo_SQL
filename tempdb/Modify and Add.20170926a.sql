USE master
GO
--MODIFY

ALTER DATABASE tempdb MODIFY FILE(NAME = tempdev, FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\tempdb.mdf', SIZE = 20 GB, MAXSIZE = UNLIMITED, FILEGROWTH = 1 GB);
GO

ALTER DATABASE tempdb MODIFY FILE(NAME = temp2, FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\tempdb_mssql_2.ndf', SIZE = 20 GB, MAXSIZE = UNLIMITED, FILEGROWTH = 1 GB);
GO

ALTER DATABASE tempdb MODIFY FILE(NAME = temp3, FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\tempdb_mssql_3.ndf', SIZE = 20 GB, MAXSIZE = UNLIMITED, FILEGROWTH = 1 GB);
GO

ALTER DATABASE tempdb MODIFY FILE(NAME = temp4, FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\tempdb_mssql_4.ndf', SIZE = 20 GB, MAXSIZE = UNLIMITED, FILEGROWTH = 1 GB);
GO

ALTER DATABASE tempdb MODIFY FILE(NAME = temp5, FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\tempdb_mssql_5.ndf', SIZE = 20 GB, MAXSIZE = UNLIMITED, FILEGROWTH = 1 GB);
GO

ALTER DATABASE tempdb MODIFY FILE(NAME = temp6, FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\tempdb_mssql_6.ndf', SIZE = 20 GB, MAXSIZE = UNLIMITED, FILEGROWTH = 1 GB);
GO

ALTER DATABASE tempdb MODIFY FILE(NAME = temp7, FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\tempdb_mssql_7.ndf', SIZE = 20 GB, MAXSIZE = UNLIMITED, FILEGROWTH = 1 GB);
GO

ALTER DATABASE tempdb MODIFY FILE(NAME = temp8, FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\tempdb_mssql_8.ndf', SIZE = 20 GB, MAXSIZE = UNLIMITED, FILEGROWTH = 1 GB);
GO

--ADD

ALTER DATABASE tempdb ADD FILE(NAME = temp9, FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\tempdb_mssql_9.ndf', SIZE = 10 GB, MAXSIZE = 30 GB, FILEGROWTH = 1 GB);
GO