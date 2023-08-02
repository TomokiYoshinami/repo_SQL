USE Jackpot;
GO

-- リソース プール名
-- 70% に制限する場合
CREATE RESOURCE POOL ResourcePoolJackpot
WITH
(
MAX_MEMORY_PERCENT = 70
);
ALTER RESOURCE GOVERNOR RECONFIGURE;
GO
EXEC sp_xtp_bind_db_resource_pool
     'Jackpot',
     'ResourcePoolJackpot';

--
--Reboot
--

EXEC sp_xtp_unbind_db_resource_pool
     'Jackpot';