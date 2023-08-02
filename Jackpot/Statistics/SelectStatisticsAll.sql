SELECT s.*,
			 sc.*
/*
SELECT s.*,sc.*
*/
			 FROM sys.stats AS s
			 JOIN sys.stats_columns AS sc
						ON s.stats_id = sc.stats_id
							 AND s.object_id = sc.object_id
			 WHERE s.auto_created = 1
/*
							 0 = 統計は SQL Server によって自動的に作成されませんでした。
							 1 = 統計は SQL Server によって自動的に作成されました。
							 */
						 AND s.user_created = 0
/*
							 0 = 統計はユーザーによって作成されませんでした。
							 1 = 統計はユーザーによって作成されました。
							 */
--WHERE s.name LIKE '_WA%'
--WHERE s.name LIKE '_WA%'
