--
--このハンズオンは WideWorldImportersDW を利用
USE WideWorldImportersDW
GO
--
--LAST_QUERY_PLAN_STATS を有効化
ALTER DATABASE SCOPED CONFIGURATION SET LAST_QUERY_PLAN_STATS = ON
GO
--
--設定の確認
SELECT 
    *
    FROM 
    sys.database_scoped_configurations
    WHERE name IN
    (
    N'LAST_QUERY_PLAN_STATS',
    N'LIGHTWEIGHT_QUERY_PROFILING'
    )