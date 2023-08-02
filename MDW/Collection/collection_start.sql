USE msdb
GO  
EXEC sp_syscollector_start_collection_set 
        @Collection_set_id = 1
GO