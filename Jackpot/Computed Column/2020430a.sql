/* �f�[�^�����̃C�V���[��h�����߁A�f�[�^�x�[�X �f�U�C�i�[�̃R���e�L�X�g�O�ł��̃X�N���v�g�����s����O�ɁA�X�N���v�g�̏ڍׂ��m�F���Ă��������B*/
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
ALTER TABLE dbo.RaceResultByHorseByJyo
ADD 
            HitCountA AS HitCount1 PERSISTED 
GO
ALTER TABLE dbo.RaceResultByHorseByJyo
ADD 
            HitRateA AS HitCount1
                        / NULLIF(RunCount,0) PERSISTED 
GO
ALTER TABLE dbo.RaceResultByHorseByJyo
ADD 
            HitCountB AS HitCount1
                         + HitCount2 PERSISTED 
GO
ALTER TABLE dbo.RaceResultByHorseByJyo
ADD 
            HitRateB AS (HitCount1
                         + HitCount2)
                        / NULLIF(RunCount,0) PERSISTED 
GO
ALTER TABLE dbo.RaceResultByHorseByJyo
ADD 
            HitCountC AS HitCount1
                         + HitCount2
                         + HitCount3 PERSISTED 
GO
ALTER TABLE dbo.RaceResultByHorseByJyo
ADD 
            HitRateC AS (HitCount1
                         + HitCount2
                         + HitCount3)
                        / NULLIF(RunCount,0) PERSISTED 
GO
ALTER TABLE dbo.RaceResultByHorseByJyo
ADD 
            HitCountD AS HitCount1
                         + HitCount2
                         + HitCount3
                         + HitCount4 PERSISTED 
GO
ALTER TABLE dbo.RaceResultByHorseByJyo
ADD 
            HitRateD AS (HitCount1
                         + HitCount2
                         + HitCount3
                         + HitCount4)
                        / NULLIF(RunCount,0) PERSISTED 
GO
ALTER TABLE dbo.RaceResultByHorseByJyo
ADD 
            HitCountE AS HitCount1
                         + HitCount2
                         + HitCount3
                         + HitCount4
                         + HitCount5 PERSISTED 
GO
ALTER TABLE dbo.RaceResultByHorseByJyo
ADD 
            HitRateE AS (HitCount1
                         + HitCount2
                         + HitCount3
                         + HitCount4
                         + HitCount5)
                        / NULLIF(RunCount,0) PERSISTED 
GO
ALTER TABLE dbo.RaceResultByHorseByJyo SET(LOCK_ESCALATION = TABLE)
GO
COMMIT