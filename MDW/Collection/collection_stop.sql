USE msdb
GO  
EXEC sp_syscollector_stop_collection_set 
        @Collection_set_id = 1