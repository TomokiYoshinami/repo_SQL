/* データ損失のイシューを防ぐため、データベース デザイナーのコンテキスト外でこのスクリプトを実行する前に、スクリプトの詳細を確認してください。*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Race
ADD 
            DefaultHitRateA AS 1
                               / NULLIF(TorokuTosu,0) PERSISTED 
GO
ALTER TABLE dbo.Race
ADD 
            DefaultHitRateB AS 3
                               / NULLIF(TorokuTosu,0) PERSISTED 
GO
ALTER TABLE dbo.Race
ADD 
            DefaultHitRateC AS 3
                               / NULLIF(TorokuTosu,0) PERSISTED 
GO
ALTER TABLE dbo.Race SET(LOCK_ESCALATION = TABLE)
GO
COMMIT