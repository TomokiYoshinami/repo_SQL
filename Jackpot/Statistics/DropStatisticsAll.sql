SELECT 
       'DROP STATISTICS ' + OBJECT_NAME(s.object_id) + '.' +
/*
--COL_NAME(sc.object_id, sc.column_id) AS column_name,
*/
       s.name AS statistics_name
/*
SELECT s.*,sc.*
*/
FROM sys.stats AS s
     JOIN sys.stats_columns AS sc ON s.stats_id = sc.stats_id
                                     AND s.object_id = sc.object_id
WHERE s.stats_id > 1
      AND (s.auto_created = 1
           OR s.user_created = 1)
/*
WHERE( s.object_id NOT LIKE 'filestream%'
      AND s.object_id NOT LIKE 'filetable%'
      AND s.object_id NOT LIKE 'plan%'
      AND s.object_id NOT LIKE 'queue%'
      AND s.object_id NOT LIKE 'sqlagent%'
      AND s.object_id NOT LIKE 'sys%')
      --OR s.name NOT LIKE 'PK_%'
*/
/*
WHERE s.stats_id >1 
インデックスの ID。 index_idは、オブジェクト内でのみ一意です。
0 = ヒープ
1 = クラスター化インデックス
> 1 = 非クラスター化インデックス
*/
/*
AND s.auto_created = 1
0 = 統計は SQL Server によって自動的に作成されませんでした。
1 = 統計は SQL Server によって自動的に作成されました。
*/
/*
AND s.user_created = 0
0 = 統計はユーザーによって作成されませんでした。
1 = 統計はユーザーによって作成されました。
*/
/*
--WHERE s.name LIKE '_WA%'
--WHERE s.name LIKE '_WA%'
*/
ORDER BY 
         1