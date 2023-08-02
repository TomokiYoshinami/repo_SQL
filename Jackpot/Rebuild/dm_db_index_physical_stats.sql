DECLARE @DB_ID     INT,
        @OBJECT_ID INT
SET @DB_ID = DB_ID('Jackpot')
SET @OBJECT_ID = OBJECT_ID('RaceHorse')
SELECT 
       *
  FROM sys.dm_db_index_physical_stats(@DB_ID,@Object_ID,NULL,NULL,'DETAILED') AS A
  JOIN sys.objects AS B ON A.object_id = B.object_id