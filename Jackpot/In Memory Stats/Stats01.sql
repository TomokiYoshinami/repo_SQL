-- finding memory for objects
SELECT OBJECT_NAME(object_id),
       *
FROM sys.dm_db_xtp_table_memory_stats;