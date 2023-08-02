USE master
GO
SELECT cp.cacheobjtype,cp.objtype,
st.dbid, st.text, qps.query_plan
FROM sys.dm_exec_cached_plans AS cp
CROSS APPLY sys.dm_exec_sql_text(plan_handle) AS st
CROSS APPLY sys.dm_exec_query_plan_stats(plan_handle) AS qps
WHERE st.text LIKE 'SELECT%' AND st.dbid = DB_ID('WideWorldImportersDW')
GO