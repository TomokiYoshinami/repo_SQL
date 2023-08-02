SELECT
CONVERT(text, SUBSTRING(dest.text, (deqs.statement_start_offset/2) + 1,
((CASE WHEN deqs.statement_end_offset = 1
THEN LEN(CONVERT(nvarchar(MAX), dest.text)) * 2
ELSE deqs.statement_end_offset end deqs.statement_start_offset)/2) + 1)
) AS query_text, deqs.plan_handle
FROM sys.dm_exec_query_stats AS deqs
CROSS APPLY sys.dm_exec_sql_text (deqs.sql_handle) AS dest
WHERE dest.dbid = DB_ID(N'DB01') or dest.dbid = DB_ID(N'DB02')
OPTION (RECOMPILE)
GO