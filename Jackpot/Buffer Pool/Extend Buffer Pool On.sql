USE master
GO
--
SELECT *
FROM sys.dm_os_buffer_pool_extension_configuration;
--
SELECT COUNT(*) AS cached_pages_count
FROM sys.dm_os_buffer_descriptors
WHERE is_in_bpool_extension <> 0
--
ALTER SERVER CONFIGURATION  
SET BUFFER POOL EXTENSION ON  
    (FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BufferPoolExtension.BPE', SIZE = 64GB)
GO  
--
  SELECT *
FROM sys.dm_os_buffer_pool_extension_configuration;
--
SELECT COUNT(*) AS cached_pages_count
FROM sys.dm_os_buffer_descriptors
WHERE is_in_bpool_extension <> 0
