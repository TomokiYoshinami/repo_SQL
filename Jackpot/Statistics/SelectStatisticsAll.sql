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
							 0 = ���v�� SQL Server �ɂ���Ď����I�ɍ쐬����܂���ł����B
							 1 = ���v�� SQL Server �ɂ���Ď����I�ɍ쐬����܂����B
							 */
						 AND s.user_created = 0
/*
							 0 = ���v�̓��[�U�[�ɂ���č쐬����܂���ł����B
							 1 = ���v�̓��[�U�[�ɂ���č쐬����܂����B
							 */
--WHERE s.name LIKE '_WA%'
--WHERE s.name LIKE '_WA%'
