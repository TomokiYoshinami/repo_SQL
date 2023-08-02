SELECT *
--o.name 'テーブル名',
--i.name 'インデックス名'
			 FROM sys.indexes i
			 INNER JOIN sys.objects o
						ON o.object_id = i.object_id
			 WHERE i.index_id > 1
/*
				0 = ヒープ
				1 = クラスター化
				2 = 非クラスター化
				3 = XML
				4 = 空間
				5 = クラスター化列ストア インデックスです。 適用対象: SQL Server 2014 から SQL Server 2017
				6 = 非クラスター化列ストア インデックスです。 適用対象: SQL Server 2012 から SQL Server 2017
				7 = 非クラスター化ハッシュ インデックスです。 適用対象: SQL Server 2014 から SQL Server 2017
*/
--AND i.auto_created = 1
/*
				1 = 自動チューニングすることによってインデックスが作成されました。
				0 = インデックスは、ユーザーによって作成されています。
*/
						 AND o.type = 'U'
--WHERE i.name like 'INDEX_%'