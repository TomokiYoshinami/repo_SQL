USE tempdb
GO
DBCC SHRINKFILE(tempdev,10240)
DBCC SHRINKFILE(temp2,10240)
DBCC SHRINKFILE(temp3,10240)
DBCC SHRINKFILE(temp4,10240)
DBCC SHRINKFILE(temp5,10240)
DBCC SHRINKFILE(temp6,10240)
DBCC SHRINKFILE(temp7,10240)
DBCC SHRINKFILE(temp8,10240)
--DBCC SHRINKFILE(temp9,10240)
--DBCC SHRINKFILE(temp10,10240)
--DBCC SHRINKFILE(temp11,10240)
--DBCC SHRINKFILE(temp12,10240)
--
DBCC SHRINKFILE(templog,10240)
--
