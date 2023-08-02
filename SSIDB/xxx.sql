SELECT WorkerAgentId, MachineName FROM [catalog].[worker_agents]
GO
-- Result: --
-- WorkerAgentId                           MachineName  --
-- 9307F8FC-FC68-4F35-B158-53588854DC49    computerA    --

EXEC [catalog].[enable_worker_agent] '9307F8FC-FC68-4F35-B158-53588854DC49'
GO 