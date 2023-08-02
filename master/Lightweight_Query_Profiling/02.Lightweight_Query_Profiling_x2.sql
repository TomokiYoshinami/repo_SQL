231
--
疑似的に 実際と乖離した行数でメタデータを更新
UPDATE STATISTICS Fact.OrderHistory WIT
H ROWCOUNT = 1
GO
--
データとクエリの実行プランのキャッシュをクリア クリーンな状態での検証のため
DBCC DROPCLEANBUFFERS
GO
DBCC FREEPROCCACHE
GO
性能問題となるクエリを実行する
性能劣化を疑似的に発生させます。
Lightwei ght_Query_Profiling.sql
USE WideWorldImportersDW
GO
--
クエリ実行のパフォーマンス情報の表示を有効化
SET STATISTICS TIME ON
GO
-
性能問題となるクエリを実行
SELECT fo.[Order Key], fo.Description,
si.[Lead Time Days]
FROM Fact.OrderHistory AS fo
INNER HASH JOIN Dimension.[Stock Item] AS si
ON fo.[Stock Item Key] = si.[Stock Item Key]
WHERE fo.[Lineage Key] = 9
AND si.[Lead Time Days] > 19
GO