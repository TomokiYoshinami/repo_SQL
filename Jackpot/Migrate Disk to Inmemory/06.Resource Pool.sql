USE Jackpot;
GO

-- ���\�[�X �v�[����
-- 70% �ɐ�������ꍇ
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