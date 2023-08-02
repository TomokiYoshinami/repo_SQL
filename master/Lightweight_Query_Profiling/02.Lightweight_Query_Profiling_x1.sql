USE WideWorldImportersDW
GO
--
インデックスの作成
CREATE NONCLUSTERED INDEX IX_Lineage_Key
ON Fact.OrderHistory ([Lineage Key])
INCLUDE ([Order Key], [Stock Item [
GO
231
--
-- 疑似的に疑似的に実際と乖離した行数でメタデータを更新実際と乖離した行数でメタデータを更新
UPDATE STATISTICS Fact.OrderHistory WIT
UPDATE STATISTICS Fact.OrderHistory WITH ROWCOUNT = 1H ROWCOUNT = 1
GO
GO
--
--データとクエリの実行プランのキャッシュをクリアデータとクエリの実行プランのキャッシュをクリア ((クリーンな状態での検証のためクリーンな状態での検証のため))
DBCC DROPCLEANBUFFERS
DBCC DROPCLEANBUFFERS
GO
GO
DBCC FREEPROCCACHE
DBCC FREEPROCCACHE
GO
GO