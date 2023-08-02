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
�C���f�b�N�X�� ID�B index_id�́A�I�u�W�F�N�g���ł݈̂�ӂł��B
0 = �q�[�v
1 = �N���X�^�[���C���f�b�N�X
> 1 = ��N���X�^�[���C���f�b�N�X
*/
/*
AND s.auto_created = 1
0 = ���v�� SQL Server �ɂ���Ď����I�ɍ쐬����܂���ł����B
1 = ���v�� SQL Server �ɂ���Ď����I�ɍ쐬����܂����B
*/
/*
AND s.user_created = 0
0 = ���v�̓��[�U�[�ɂ���č쐬����܂���ł����B
1 = ���v�̓��[�U�[�ɂ���č쐬����܂����B
*/
/*
--WHERE s.name LIKE '_WA%'
--WHERE s.name LIKE '_WA%'
*/
ORDER BY 
         1