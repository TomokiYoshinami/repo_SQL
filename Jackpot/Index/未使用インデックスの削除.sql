USE Jackpot
GO
SELECT o.name AS table_name,
			 i.name AS index_name,
			 *
			 FROM sys.objects o
			 INNER JOIN sys.indexes i
						ON o.object_id = i.object_id
			 WHERE o.type = 'U'
						 AND i.index_id NOT IN
																	(
																	 SELECT s.index_id
																					FROM sys.dm_db_index_usage_stats s
																					WHERE s.object_id = i.object_id
																								AND i.index_id = s.index_id
																								AND database_id = DB_ID()
																																				 )