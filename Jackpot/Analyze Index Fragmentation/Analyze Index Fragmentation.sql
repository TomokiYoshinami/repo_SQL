USE Jackpot
GO
SELECT 'ALTER INDEX '+'['+C.name+']'+' ON ['+D.name+'].['+B.name+'] REBUILD' cmd,
			 D.name AS schemaname,
			 B.name AS table_name,
			 C.name AS index_name,
			 C.index_id,
			 A.partition_number,
			 A.avg_fragmentation_in_percent,
			 A.page_count
			 FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, NULL) AS A
			 JOIN sys.objects AS B
						ON A.object_id = B.object_id
			 JOIN sys.indexes AS C
						ON A.object_id = C.object_id
							 AND A.index_id = C.index_id
			 JOIN sys.schemas D
						ON B.schema_id = D.schema_id
			 WHERE B.type = 'U'
						 AND C.index_id > 0
						 AND A.page_count > 1000
						 AND A.avg_fragmentation_in_percent > 30
			 ORDER BY A.avg_fragmentation_in_percent DESC;
GO