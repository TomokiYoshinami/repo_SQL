USE tempdb
GO
DBCC SHRINKFILE(tempdev, 4096)
DBCC SHRINKFILE(temp2, 4096)
DBCC SHRINKFILE(temp3, 4096)
DBCC SHRINKFILE(temp4, 4096)
DBCC SHRINKFILE(temp5, 4096)
DBCC SHRINKFILE(temp6, 4096)
DBCC SHRINKFILE(temp7, 4096)
DBCC SHRINKFILE(temp8, 4096)

DBCC SHRINKFILE(templog, 4096)