USE master
GO
-
拡張イベントの定義 database_name N'WideWorldImportersDW' で収集対象をフィルタ
CREATE EVENT SESSION QueryPlanLWP ON SERVER
ADD EVENT
sqlserver.query_post_execution_plan_profile (
SET collect_database_name (
ACTION (
sqlos.task_time, sqlserver.database_id, sqlserver.database_name,
sqlserver.query_hash_signed, sqlserver.query_plan_hash_signed, sqlserver.sql_text
) WHERE (database_name N'WideWorldImportersDW')
) ADD TARGET package0.event_file
(SET FILENAME N'C: work QueryPlanLWP.xel')
WITH (
MAX_MEMORY = 4096 KB, EVENT_RETENTION_MODE = ALLOW_SINGLE_EVENT_LOSS,
MAX_DISPATCH_LATENCY = 30 SECONDS, MAX_EVENT_SIZE = 0 KB,
MEMORY_PARTITION_MODE = NONE, TRACK_CAUSALITY = OFF, STARTUP_STATE = OFF
)
GO
235
--
-- 定義した拡張イベントの開始定義した拡張イベントの開始
ALTER EVENT SESSION QueryPlanLWP ON SERVER STATE = START
ALTER EVENT SESSION QueryPlanLWP ON SERVER STATE = START
G
GOO