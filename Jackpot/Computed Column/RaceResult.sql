/* データ損失の問題を防ぐため、データベース デザイナーのコンテキスト外でこのスクリプトを実行する前に、スクリプトの詳細を確認してください。*/
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
ALTER TABLE dbo.RaceResult
ADD 
            RuikeiHonsyoHeitiLog AS LOG(RuikeiHonsyoHeiti
                                        + 1) PERSISTED
ALTER TABLE dbo.RaceResult
ADD 
            RuikeiHonsyoSyogaiLog AS LOG(RuikeiHonsyoSyogai
                                         + 1) PERSISTED
ALTER TABLE dbo.RaceResult
ADD 
            RuikeiFukaHeichiLog AS LOG(RuikeiFukaHeichi
                                       + 1) PERSISTED
ALTER TABLE dbo.RaceResult
ADD 
            RuikeiFukaSyogaiLog AS LOG(RuikeiFukaSyogai
                                       + 1) PERSISTED
ALTER TABLE dbo.RaceResult
ADD 
            RuikeiSyutokuHeichiLog AS LOG(RuikeiSyutokuHeichi
                                          + 1) PERSISTED
ALTER TABLE dbo.RaceResult
ADD 
            RuikeiSyutokuSyogaiLog AS LOG(RuikeiSyutokuSyogai
                                          + 1) PERSISTED
ALTER TABLE dbo.RaceResult
ADD 
            RaceCountLog AS LOG(RaceCount + 1) PERSISTED
GO
ALTER TABLE dbo.RaceResult SET(LOCK_ESCALATION = TABLE)
GO
COMMIT