SELECT 'ALTER TABLE '+name+' REBUILD PARTITION = ALL WITH ( DATA_COMPRESSION = NONE )'
FROM sys.tables
WHERE type = 'U'
ORDER BY name
--SELECT 'ALTER TABLE ' + name +' REBUILD PARTITION = ALL WITH ( DATA_COMPRESSION = NONE )' + CHAR(13) + CHAR(10) + 'GO' FROM sys.tables WHERE type ='U' ORDER BY name

/*
・テーブルをリビルドするサンプルSQL
ALTER TABLE （スキーマ名）.（テーブル名） REBUILD PARTITION = ALL

・テーブルをPage圧縮でリビルドするサンプルSQL
ALTER TABLE （スキーマ名）.（テーブル名） REBUILD PARTITION = ALL WITH ( DATA_COMPRESSION = PAGE )

・インデックスをリビルドするサンプルSQL
ALTER INDEX all ON （スキーマ名）.（テーブル名） REBUILD PARTITION = ALL WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, ONLINE = OFF, SORT_IN_TEMPDB = OFF)

・インデックスをPage圧縮でリビルドするサンプルSQL
ALTER INDEX all ON （スキーマ名）.（テーブル名） REBUILD PARTITION = ALL WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, ALLOW_PAGE_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, ONLINE = OFF, SORT_IN_TEMPDB = OFF, DATA_COMPRESSION  = PAGE )
*/