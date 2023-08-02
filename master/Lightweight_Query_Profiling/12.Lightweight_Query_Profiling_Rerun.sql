USE WideWorldImportersDW
GO
--
インデックスの作成
IF NOT EXISTS (
SELECT * FROM sys.indexes WHERE name = N'IX_Lineage_Key'
BEGIN
CREATE NONCLUSTERED INDEX IX_Lineage_Key ON Fact.OrderHistory ([Lineage Key])
INCLUDE ([Order Key], [Stock Item [
END
GO
--
疑似的に 実際と乖離した行数でメタデータを更新
UPDATE STATISTICS Fact.OrderHistory WITH
ROWCOUNT = 1
GO
--
データとクエリの実行プランのキャッシュをクリア クリーンな状態での検証のため
D
BCC DROPCLEANBUFFERS
GO
DBCC FREEPROCCACHE
GO
-
性能問題となるクエリを実行
SELECT fo.[Order Key], fo.Description, si.[Lead Time Days]
FROM Fact.OrderHistory AS fo
INNER HASH JOIN Dimension.[Stock Item] AS si
ON fo.[Stock Item Key] = si.[Stock Item Key]
WHERE fo.[Lineage Key] = 9 AND si.[Lead Time Days] > 19
GO
-
「実際のクエリ実行プラン」を確認
USE master
GO
SELECT cp.cacheobjtype,cp.objtype, st.dbid, st.text, qps.query_plan
FROM sys.dm_exec_cached_plans AS cp
CROSS APPLY sys.dm_exec_sql_text(plan_handle) AS st
CROSS APPLY sys.dm_exec_query_plan_stats(plan_handle) AS qps
WHERE st.text LIKE '
SELECT%' AND st.dbid = DB_ID('WideWorldImportersDW')
GO
--
性能チューニング メタデータが最新の状態となるよう更新
USE WideWorldImportersDW
236
GO
GO
DBCC UPDATEUSAGE (WideWorldImportersDW,'Fact.OrderHisto
DBCC UPDATEUSAGE (WideWorldImportersDW,'Fact.OrderHistory') WITH COUNT_ROWSry') WITH COUNT_ROWS
GO
GO
-
---クエリをクエリをあらためてあらためて実行実行
SELECT fo.[Order Key], fo.Description, si.[Lead Time Days]
SELECT fo.[Order Key], fo.Description, si.[Lead Time Days]
FROM Fact.OrderHistory AS fo
FROM Fact.OrderHistory AS fo
INNER HASH JOIN Dimension.[Stock Item] AS siINNER HASH JOIN Dimension.[Stock Item] AS si
ON fo.[Stock Item Key] = si.[Stock Item Key]ON fo.[Stock Item Key] = si.[Stock Item Key]
WHERE fo
WHERE fo.[Lineage Key] = 9 AND si.[Lead Time Days] > 19.[Lineage Key] = 9 AND si.[Lead Time Days] > 19
GO
GO
-
--- 「実際のクエリ実行プラン」を確認「実際のクエリ実行プラン」を確認
USE master
USE master
GO
GO
SELECT cp.cacheobjtype,cp.objtype, st.dbid, st.text, qps.query_plan
SELECT cp.cacheobjtype,cp.objtype, st.dbid, st.text, qps.query_plan
FROM sys.dm_exec_cached_plans AS cp
FROM sys.dm_exec_cached_plans AS cp
CROSS APPLY sys.dm_exec_sql_text(plan_handle) AS stCROSS APPLY sys.dm_exec_sql_text(plan_handle) AS st
CROSS APCROSS APPLY sys.dm_exec_query_plan_stats(plan_handle) AS qpsPLY sys.dm_exec_query_plan_stats(plan_handle) AS qps
WHERE st.text LIKE '
WHERE st.text LIKE '%%SELECT%' AND st.dbid = DB_ID('WideWorldImportersDW')SELECT%' AND st.dbid = DB_ID('WideWorldImportersDW')
GO
GO