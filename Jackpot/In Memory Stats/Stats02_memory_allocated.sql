SELECT SUM(memory_allocated_for_indexes_kb + memory_allocated_for_table_kb) AS memoryallocated_objects_in_kb
FROM sys.dm_db_xtp_table_memory_stats;