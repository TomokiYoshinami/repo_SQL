SELECT
    session_id,
    CASE transaction_isolation_level 
        WHEN 0 Then 'Unspecified'
        WHEN 1 Then 'ReadUncommitted'
        WHEN 2 Then 'ReadCommitted'
        WHEN 3 Then 'RepeatableRead'
        WHEN 4 Then 'Serializable'
        WHEN 5 Then 'Snapshot'
    END AS transaction_isolation_level
FROM sys.dm_exec_sessions 
WHERE session_id = @@SPID
 
SET TRANSACTION ISOLATION LEVEL SNAPSHOT
SELECT
    session_id,
    CASE transaction_isolation_level 
        WHEN 0 Then 'Unspecified'
        WHEN 1 Then 'ReadUncommitted'
        WHEN 2 Then 'ReadCommitted'
        WHEN 3 Then 'RepeatableRead'
        WHEN 4 Then 'Serializable'
        WHEN 5 Then 'Snapshot'
    END AS transaction_isolation_level
FROM sys.dm_exec_sessions 
WHERE session_id = @@SPID