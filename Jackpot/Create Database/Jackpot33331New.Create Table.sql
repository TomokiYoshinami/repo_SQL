USE [Jackpot33331New]
GO
EXEC sys.sp_dropextendedproperty 
    @Name = N'MS_Description',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'ParsNo'
GO
EXEC sys.sp_dropextendedproperty 
    @Name = N'MS_Description',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'PassNo'
GO
EXEC sys.sp_dropextendedproperty 
    @Name = N'MS_Description',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'UserNo'
GO
EXEC sys.sp_dropextendedproperty 
    @Name = N'MS_Description',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'InetId'
GO
EXEC sys.sp_dropextendedproperty 
    @Name = N'MS_Description',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'Id'
GO
DROP TRIGGER 
        dbo.Ut_RaceHorseHistory_Delete_Manual
GO
DROP TRIGGER 
        dbo.Ut_OddsByWin_Insert
GO
DROP TRIGGER 
        dbo.Ut_OddsByWin_Delete
GO
DROP TRIGGER 
        dbo.Ut_OddsByWide_Insert
GO
DROP TRIGGER 
        dbo.Ut_OddsByWide_Delete
GO
DROP TRIGGER 
        dbo.Ut_OddsByTrio_Insert
GO
DROP TRIGGER 
        dbo.Ut_OddsByTrio_Delete
GO
DROP TRIGGER 
        dbo.Ut_OddsByTrifecta_Insert
GO
DROP TRIGGER 
        dbo.Ut_OddsByTrifecta_Delete
GO
DROP TRIGGER 
        dbo.Ut_OddsByQuinella_Insert
GO
DROP TRIGGER 
        dbo.Ut_OddsByQuinella_Delete
GO
DROP TRIGGER 
        dbo.Ut_OddsByPlace_Insert
GO
DROP TRIGGER 
        dbo.Ut_OddsByPlace_Delete
GO
DROP TRIGGER 
        dbo.Ut_OddsByExacta_Insert
GO
DROP TRIGGER 
        dbo.Ut_OddsByExacta_Delete
GO
DROP TRIGGER 
        dbo.Ut_OddsByBracket_Insert
GO
DROP TRIGGER 
        dbo.Ut_OddsByBracket_Delete
GO
DROP TRIGGER 
        dbo.Ut_Hansyoku_Insert
GO
DROP TRIGGER 
        dbo.Ut_Hansyoku_Delete
GO
DROP TRIGGER 
        dbo.Ut_EventWeather_InsertUpdate
GO
DROP TRIGGER 
        dbo.Ut_EventTimeChange_InsertUpdate
GO
DROP TRIGGER 
        dbo.Ut_EventJockeyChange_InsertUpdate
GO
DROP TRIGGER 
        dbo.Ut_EventHorseWeight_InsertUpdate
GO
DROP TRIGGER 
        dbo.Ut_EventCourseChange_InsertUpdate
GO
DROP TRIGGER 
        dbo.Ut_EventAvoid_InsertUpdate
GO
ALTER TABLE dbo.WinFiveByYuko DROP CONSTRAINT FK_WinFiveByYuko_WinFive
GO
ALTER TABLE dbo.WinFiveByRace DROP CONSTRAINT FK_WinFiveByRace_WinFive
GO
ALTER TABLE dbo.WinFiveByRace DROP CONSTRAINT FK_WinFiveByRace_Race
GO
ALTER TABLE dbo.WinFiveByRace DROP CONSTRAINT FK_WinFiveByRace_MasterPlace
GO
ALTER TABLE dbo.WinFiveByPay DROP CONSTRAINT FK_WinFiveByPay_WinFive
GO
ALTER TABLE dbo.WinFiveByPay DROP CONSTRAINT FK_WinFiveByPay_MasterUmaban_5
GO
ALTER TABLE dbo.WinFiveByPay DROP CONSTRAINT FK_WinFiveByPay_MasterUmaban_4
GO
ALTER TABLE dbo.WinFiveByPay DROP CONSTRAINT FK_WinFiveByPay_MasterUmaban_3
GO
ALTER TABLE dbo.WinFiveByPay DROP CONSTRAINT FK_WinFiveByPay_MasterUmaban_2
GO
ALTER TABLE dbo.WinFiveByPay DROP CONSTRAINT FK_WinFiveByPay_MasterUmaban_1
GO
ALTER TABLE dbo.TrainingWoodChip DROP CONSTRAINT FK_TrainingWoodChip_Horse
GO
ALTER TABLE dbo.TrainingSlope DROP CONSTRAINT FK_TrainingSlope_Horse
GO
ALTER TABLE dbo.TrainerByTrackType DROP CONSTRAINT FK_TrainerByTrackType_Trainer
GO
ALTER TABLE dbo.TrainerByTrackType DROP CONSTRAINT FK_TrainerByTrackType_MasterTrackType3
GO
ALTER TABLE dbo.TrainerByTrackType DROP CONSTRAINT FK_TrainerByTrackType_MasterJyo
GO
ALTER TABLE dbo.TrainerByTotal DROP CONSTRAINT FK_TrainerByTotal_Trainer
GO
ALTER TABLE dbo.TrainerByTotal DROP CONSTRAINT FK_TrainerByTotal_MasterTrackType3
GO
ALTER TABLE dbo.TrainerByDistanceType DROP CONSTRAINT FK_TrainerByDistanceType_Trainer
GO
ALTER TABLE dbo.TrainerByDistanceType DROP CONSTRAINT FK_TrainerByDistanceType_MasterTrackType2
GO
ALTER TABLE dbo.TrainerByDistanceType DROP CONSTRAINT FK_TrainerByDistanceType_MasterDistanceType2
GO
ALTER TABLE dbo.Trainer DROP CONSTRAINT FK_Trainer_MasterTozai
GO
ALTER TABLE dbo.Trainer DROP CONSTRAINT FK_Trainer_MasterSex
GO
ALTER TABLE dbo.StatsPrepBeforeRaceHorseByRaceType1 DROP CONSTRAINT FK_StatsPrepBeforeRaceHorseByRaceType1_Master2RaceType1
GO
ALTER TABLE dbo.StatsPrepAfterRaceHorseByPrepRaceType1 DROP CONSTRAINT FK_StatsPrepAfterRaceHorseByPrepRaceType1_Master2RaceType1
GO
ALTER TABLE dbo.StatsBasicBeforeRaceHorseByRaceType1 DROP CONSTRAINT FK_StatsBasicBeforeRaceHorseByRaceType1_Master2RaceType1
GO
ALTER TABLE dbo.StatsBasicBeforeRaceByRaceType1 DROP CONSTRAINT FK_StatsBasicBeforeRaceByRaceType1_Master2RaceType1
GO
ALTER TABLE dbo.StatsBasicBeforeOddsByRaceType1 DROP CONSTRAINT FK_StatsBasicBeforeOddsByRaceType1_Master2RaceType1
GO
ALTER TABLE dbo.StatsBasicBeforeDmByRaceType1 DROP CONSTRAINT FK_StatsBasicBeforeDmByRaceType1_Master2RaceType1
GO
ALTER TABLE dbo.StatsBasicAfterRaceHorseByRaceType1 DROP CONSTRAINT FK_StatsBasicAfterRaceHorseByRaceType1_Master2RaceType1
GO
ALTER TABLE dbo.StatsBasicAfterRaceByRaceType1 DROP CONSTRAINT FK_StatsBasicAfterRaceByRaceType1_Master2RaceType1
GO
ALTER TABLE dbo.SpecialRaceByHorse DROP CONSTRAINT FK_SpecialRaceByHorse_Trainer
GO
ALTER TABLE dbo.SpecialRaceByHorse DROP CONSTRAINT FK_SpecialRaceByHorse_SpecialRace
GO
ALTER TABLE dbo.SpecialRaceByHorse DROP CONSTRAINT FK_SpecialRaceByHorse_MasterUmaKigo
GO
ALTER TABLE dbo.SpecialRaceByHorse DROP CONSTRAINT FK_SpecialRaceByHorse_MasterTozai
GO
ALTER TABLE dbo.SpecialRaceByHorse DROP CONSTRAINT FK_SpecialRaceByHorse_MasterSex
GO
ALTER TABLE dbo.SpecialRace DROP CONSTRAINT FK_SpecialRace_Race
GO
ALTER TABLE dbo.SpecialRace DROP CONSTRAINT FK_SpecialRace_MasterYoubi
GO
ALTER TABLE dbo.SpecialRace DROP CONSTRAINT FK_SpecialRace_MasterTrack
GO
ALTER TABLE dbo.SpecialRace DROP CONSTRAINT FK_SpecialRace_MasterSyubetu
GO
ALTER TABLE dbo.SpecialRace DROP CONSTRAINT FK_SpecialRace_MasterPlace
GO
ALTER TABLE dbo.SpecialRace DROP CONSTRAINT FK_SpecialRace_MasterKigo
GO
ALTER TABLE dbo.SpecialRace DROP CONSTRAINT FK_SpecialRace_MasterJyuryo
GO
ALTER TABLE dbo.SpecialRace DROP CONSTRAINT FK_SpecialRace_MasterJyoken5
GO
ALTER TABLE dbo.SpecialRace DROP CONSTRAINT FK_SpecialRace_MasterGrade
GO
ALTER TABLE dbo.SpecialRace DROP CONSTRAINT FK_SpecialRace_MasterCourseKubun
GO
ALTER TABLE dbo.Schedule DROP CONSTRAINT FK_Schedule_MasterTrack_Jyusyo3
GO
ALTER TABLE dbo.Schedule DROP CONSTRAINT FK_Schedule_MasterTrack_Jyusyo2
GO
ALTER TABLE dbo.Schedule DROP CONSTRAINT FK_Schedule_MasterTrack_Jyusyo1
GO
ALTER TABLE dbo.Schedule DROP CONSTRAINT FK_Schedule_MasterSyubetu_Jyusyo3
GO
ALTER TABLE dbo.Schedule DROP CONSTRAINT FK_Schedule_MasterSyubetu_Jyusyo2
GO
ALTER TABLE dbo.Schedule DROP CONSTRAINT FK_Schedule_MasterSyubetu_Jyusyo1
GO
ALTER TABLE dbo.Schedule DROP CONSTRAINT FK_Schedule_MasterPlace
GO
ALTER TABLE dbo.Schedule DROP CONSTRAINT FK_Schedule_MasterKigo_Jyusyo3
GO
ALTER TABLE dbo.Schedule DROP CONSTRAINT FK_Schedule_MasterKigo_Jyusyo2
GO
ALTER TABLE dbo.Schedule DROP CONSTRAINT FK_Schedule_MasterKigo_Jyusyo1
GO
ALTER TABLE dbo.Schedule DROP CONSTRAINT FK_Schedule_MasterJyuryo_Jyusyo3
GO
ALTER TABLE dbo.Schedule DROP CONSTRAINT FK_Schedule_MasterJyuryo_Jyusyo2
GO
ALTER TABLE dbo.Schedule DROP CONSTRAINT FK_Schedule_MasterJyuryo_Jyusyo1
GO
ALTER TABLE dbo.Schedule DROP CONSTRAINT FK_Schedule_MasterGrade_Jyusyo3
GO
ALTER TABLE dbo.Schedule DROP CONSTRAINT FK_Schedule_MasterGrade_Jyusyo2
GO
ALTER TABLE dbo.Schedule DROP CONSTRAINT FK_Schedule_MasterGrade_Jyusyo1
GO
ALTER TABLE dbo.Sanku DROP CONSTRAINT FK_Sanku_MasterKeiro
GO
ALTER TABLE dbo.Sanku DROP CONSTRAINT FK_Sanku_MasterHinsyu
GO
ALTER TABLE dbo.Sanku DROP CONSTRAINT FK_Sanku_Horse
GO
ALTER TABLE dbo.Sanku DROP CONSTRAINT FK_Sanku_Breeder
GO
ALTER TABLE dbo.Sale DROP CONSTRAINT FK_Sale_Horse
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_Trainer
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_Silk
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_Race
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_MasterWakuban
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_MasterUmakigo
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_MasterUmaban
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_MasterTozai
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_MasterSex
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_MasterRunType
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_MasterPlace
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_MasterMinarai
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_MasterKeiro
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_MasterIjyo
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_MasterHinsyu
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_MasterChakusa
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_Master2Weight
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_Master2Ninki
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_Master2Handicap
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_Jocky
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_Horse_KettoNum3
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_Horse_KettoNum2
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_Horse_KettoNum1
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_Horse
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT FK_ReplRaceHorse_Banusi
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_MasterYoubi
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_MasterTrackType3
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_MasterTrackType2
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_MasterTrackType
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_MasterTrackCondition
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_MasterTrack
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_MasterTenko
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_MasterSyubetu
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_MasterSmile
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_MasterPlace
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_MasterKigo
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_MasterJyuryo
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_MasterJyoken5
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_MasterJyoken
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_MasterGrade
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_MasterDistanceType2
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_MasterDistanceType
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_MasterCourseType
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_MasterCourseKubun
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_Master2RaceType9
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_Master2RaceType8
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_Master2RaceType7
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_Master2RaceType6
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_Master2RaceType5
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_Master2RaceType4
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_Master2RaceType3
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_Master2RaceType2
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_Master2RaceType1
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_Master2Distance
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT FK_ReplRace_Master2Class
GO
ALTER TABLE dbo.RaceRecord DROP CONSTRAINT FK_RaceRecord_Race
GO
ALTER TABLE dbo.RaceRecord DROP CONSTRAINT FK_RaceRecord_MasterJyo
GO
ALTER TABLE dbo.RaceInfo DROP CONSTRAINT FK_RaceInfo_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByTrackType DROP CONSTRAINT FK_RaceHorseHistoryByTrainerByTrackType_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByTrackType DROP CONSTRAINT FK_RaceHorseHistoryByTrainerByTrackType_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByTrackType DROP CONSTRAINT FK_RaceHorseHistoryByTrainerByTrackType_MasterTrackType
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByTrackType DROP CONSTRAINT FK_RaceHorseHistoryByTrainerByTrackType_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByJyo DROP CONSTRAINT FK_RaceHorseHistoryByTrainerByJyo_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByJyo DROP CONSTRAINT FK_RaceHorseHistoryByTrainerByJyo_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByJyo DROP CONSTRAINT FK_RaceHorseHistoryByTrainerByJyo_MasterTrackType
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByJyo DROP CONSTRAINT FK_RaceHorseHistoryByTrainerByJyo_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByDistanceType DROP CONSTRAINT FK_RaceHorseHistoryByTrainerByDistanceType_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByDistanceType DROP CONSTRAINT FK_RaceHorseHistoryByTrainerByDistanceType_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByDistanceType DROP CONSTRAINT FK_RaceHorseHistoryByTrainerByDistanceType_MasterTrackType2
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByDistanceType DROP CONSTRAINT FK_RaceHorseHistoryByTrainerByDistanceType_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainer DROP CONSTRAINT FK_RaceHorseHistoryByTrainerRace
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainer DROP CONSTRAINT FK_RaceHorseHistoryByTrainer_Trainer
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainer DROP CONSTRAINT FK_RaceHorseHistoryByTrainer_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainer DROP CONSTRAINT FK_RaceHorseHistoryByTrainer_MasterJyo
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainer DROP CONSTRAINT FK_RaceHorseHistoryByTrainer_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByTrackType DROP CONSTRAINT FK_RaceHorseHistoryByJockeyByTrackType_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByTrackType DROP CONSTRAINT FK_RaceHorseHistoryByJockeyByTrackType_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByTrackType DROP CONSTRAINT FK_RaceHorseHistoryByJockeyByTrackType_MasterTrackType
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByTrackType DROP CONSTRAINT FK_RaceHorseHistoryByJockeyByTrackType_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByJyo DROP CONSTRAINT FK_RaceHorseHistoryByJockeyByJyo_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByJyo DROP CONSTRAINT FK_RaceHorseHistoryByJockeyByJyo_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByJyo DROP CONSTRAINT FK_RaceHorseHistoryByJockeyByJyo_MasterTrackType
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByJyo DROP CONSTRAINT FK_RaceHorseHistoryByJockeyByJyo_MasterJyo
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByJyo DROP CONSTRAINT FK_RaceHorseHistoryByJockeyByJyo_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByDistanceType DROP CONSTRAINT FK_RaceHorseHistoryByJockeyByDistanceType_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByDistanceType DROP CONSTRAINT FK_RaceHorseHistoryByJockeyByDistanceType_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByDistanceType DROP CONSTRAINT FK_RaceHorseHistoryByJockeyByDistanceType_MasterTrackType2
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByDistanceType DROP CONSTRAINT FK_RaceHorseHistoryByJockeyByDistanceType_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByJockey DROP CONSTRAINT FK_RaceHorseHistoryByJocky_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByJockey DROP CONSTRAINT FK_RaceHorseHistoryByJocky_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByJockey DROP CONSTRAINT FK_RaceHorseHistoryByJocky_Jocky
GO
ALTER TABLE dbo.RaceHorseHistoryByJockey DROP CONSTRAINT FK_RaceHorseHistoryByJocky_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackType DROP CONSTRAINT FK_RaceHorseHistoryByHorseByTrackType_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackType DROP CONSTRAINT FK_RaceHorseHistoryByHorseByTrackType_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackType DROP CONSTRAINT FK_RaceHorseHistoryByHorseByTrackType_MasterTrackType
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackType DROP CONSTRAINT FK_RaceHorseHistoryByHorseByTrackType_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackCondition DROP CONSTRAINT FK_RaceHorseHistoryByHorseByTrackCondition_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackCondition DROP CONSTRAINT FK_RaceHorseHistoryByHorseByTrackCondition_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackCondition DROP CONSTRAINT FK_RaceHorseHistoryByHorseByTrackCondition_MasterTrackType
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackCondition DROP CONSTRAINT FK_RaceHorseHistoryByHorseByTrackCondition_MasterTrackCondition
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackCondition DROP CONSTRAINT FK_RaceHorseHistoryByHorseByTrackCondition_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTotal DROP CONSTRAINT FK_RaceHorseHistoryByHorseByTotal_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTotal DROP CONSTRAINT FK_RaceHorseHistoryByHorseByTotal_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTotal DROP CONSTRAINT FK_RaceHorseHistoryByHorseByTotal_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByRunType DROP CONSTRAINT FK_RaceHorseHistoryByHorseByRunType_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByRunType DROP CONSTRAINT FK_RaceHorseHistoryByHorseByRunType_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByRunType DROP CONSTRAINT FK_RaceHorseHistoryByHorseByRunType_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByJyo DROP CONSTRAINT FK_RaceHorseHistoryByHorseByJyo_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByJyo DROP CONSTRAINT FK_RaceHorseHistoryByHorseByJyo_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByJyo DROP CONSTRAINT FK_RaceHorseHistoryByHorseByJyo_MasterTrackType
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByJyo DROP CONSTRAINT FK_RaceHorseHistoryByHorseByJyo_MasterJyo
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByJyo DROP CONSTRAINT FK_RaceHorseHistoryByHorseByJyo_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByDistanceType DROP CONSTRAINT FK_RaceHorseHistoryByHorseByDistanceType_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByDistanceType DROP CONSTRAINT FK_RaceHorseHistoryByHorseByDistanceType_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByDistanceType DROP CONSTRAINT FK_RaceHorseHistoryByHorseByDistanceType_MasterTrackType
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByDistanceType DROP CONSTRAINT FK_RaceHorseHistoryByHorseByDistanceType_MasterDistanceType
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByDistanceType DROP CONSTRAINT FK_RaceHorseHistoryByHorseByDistanceType_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByCourseType DROP CONSTRAINT FK_RaceHorseHistoryByHorseByCourseType_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByCourseType DROP CONSTRAINT FK_RaceHorseHistoryByHorseByCourseType_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByCourseType DROP CONSTRAINT FK_RaceHorseHistoryByHorseByCourseType_MasterTrackType
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByCourseType DROP CONSTRAINT FK_RaceHorseHistoryByHorseByCourseType_MasterCourseType
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByCourseType DROP CONSTRAINT FK_RaceHorseHistoryByHorseByCourseType_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByHorse DROP CONSTRAINT FK_RaceHorseHistoryByHorse_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByHorse DROP CONSTRAINT FK_RaceHorseHistoryByHorse_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByHorse DROP CONSTRAINT FK_RaceHorseHistoryByHorse_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByBreederByTotal DROP CONSTRAINT FK_RaceHorseHistoryByBreederByTotal_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByBreederByTotal DROP CONSTRAINT FK_RaceHorseHistoryByBreederByTotal_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByBreederByTotal DROP CONSTRAINT FK_RaceHorseHistoryByBreederByTotal_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByBreederByTotal DROP CONSTRAINT FK_RaceHorseHistoryByBreederByTotal_Breeder
GO
ALTER TABLE dbo.RaceHorseHistoryByBreeder DROP CONSTRAINT FK_RaceHorseHistoryByBreeder_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByBreeder DROP CONSTRAINT FK_RaceHorseHistoryByBreeder_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByBreeder DROP CONSTRAINT FK_RaceHorseHistoryByBreeder_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByBreeder DROP CONSTRAINT FK_RaceHorseHistoryByBreeder_Breeder
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusiByTotal DROP CONSTRAINT FK_RaceHorseHistoryByBanusiByTotal_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusiByTotal DROP CONSTRAINT FK_RaceHorseHistoryByBanusiByTotal_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusiByTotal DROP CONSTRAINT FK_RaceHorseHistoryByBanusiByTotal_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusiByTotal DROP CONSTRAINT FK_RaceHorseHistoryByBanusiByTotal_Banusi
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusi DROP CONSTRAINT FK_RaceHorseHistoryByBanusi_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusi DROP CONSTRAINT FK_RaceHorseHistoryByBanusi_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusi DROP CONSTRAINT FK_RaceHorseHistoryByBanusi_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusi DROP CONSTRAINT FK_RaceHorseHistoryByBanusi_Banusi
GO
ALTER TABLE dbo.RaceHorseHistory DROP CONSTRAINT FK_RaceHorseHistory_Race
GO
ALTER TABLE dbo.RaceHorseHistory DROP CONSTRAINT FK_RaceHorseHistory_MasterPlace
GO
ALTER TABLE dbo.RaceHorseHistory DROP CONSTRAINT FK_RaceHorseHistory_Horse
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_Trainer
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_Silk
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_Race
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_MasterWakuban
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_MasterUmakigo
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_MasterUmaban
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_MasterTozai
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_MasterSex
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_MasterRunType
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_MasterPlace
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_MasterMinarai
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_MasterKeiro
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_MasterIjyo
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_MasterHinsyu
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_MasterChakusa
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_Master2Weight
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_Master2Ninki
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_Master2Handicap
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_Jocky
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_Horse_KettoNum3
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_Horse_KettoNum2
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_Horse_KettoNum1
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_Horse
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT FK_RaceHorse_Banusi
GO
ALTER TABLE dbo.RaceExclusion DROP CONSTRAINT FK_RaceExclusion_MasterJyo
GO
ALTER TABLE dbo.RaceByLapTime DROP CONSTRAINT FK_RaceByLapTime_Race
GO
ALTER TABLE dbo.RaceByCornerPosition DROP CONSTRAINT FK_RaceByCornerPosition_Race
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_MasterYoubi
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_MasterTrackType3
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_MasterTrackType2
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_MasterTrackType
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_MasterTrackCondition
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_MasterTrack
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_MasterTenko
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_MasterSyubetu
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_MasterSmile
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_MasterPlace
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_MasterKigo
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_MasterJyuryo
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_MasterJyoken5
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_MasterJyoken
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_MasterGrade
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_MasterDistanceType2
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_MasterDistanceType
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_MasterCourseType
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_MasterCourseKubun
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_Master2RaceType9
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_Master2RaceType8
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_Master2RaceType7
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_Master2RaceType6
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_Master2RaceType5
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_Master2RaceType4
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_Master2RaceType3
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_Master2RaceType2
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_Master2RaceType1
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_Master2Distance
GO
ALTER TABLE dbo.Race DROP CONSTRAINT FK_Race_Master2Class
GO
ALTER TABLE dbo.PredictByWinFive DROP CONSTRAINT FK_PredictByWinFive_Race5
GO
ALTER TABLE dbo.PredictByWinFive DROP CONSTRAINT FK_PredictByWinFive_Race4
GO
ALTER TABLE dbo.PredictByWinFive DROP CONSTRAINT FK_PredictByWinFive_Race3
GO
ALTER TABLE dbo.PredictByWinFive DROP CONSTRAINT FK_PredictByWinFive_Race2
GO
ALTER TABLE dbo.PredictByWinFive DROP CONSTRAINT FK_PredictByWinFive_Race1
GO
ALTER TABLE dbo.PredictByWinFive DROP CONSTRAINT FK_PredictByWinFive_MasterBetType
GO
ALTER TABLE dbo.PredictByWinFive DROP CONSTRAINT FK_PredictByWinFive_Horse5
GO
ALTER TABLE dbo.PredictByWinFive DROP CONSTRAINT FK_PredictByWinFive_Horse4
GO
ALTER TABLE dbo.PredictByWinFive DROP CONSTRAINT FK_PredictByWinFive_Horse3
GO
ALTER TABLE dbo.PredictByWinFive DROP CONSTRAINT FK_PredictByWinFive_Horse2
GO
ALTER TABLE dbo.PredictByWinFive DROP CONSTRAINT FK_PredictByWinFive_Horse1
GO
ALTER TABLE dbo.PredictByWin_001 DROP CONSTRAINT FK_PredictByWin_Race
GO
ALTER TABLE dbo.PredictByWin_001 DROP CONSTRAINT FK_PredictByWin_MasterBetType
GO
ALTER TABLE dbo.PredictByWin_001 DROP CONSTRAINT FK_PredictByWin_Horse3
GO
ALTER TABLE dbo.PredictByWin_001 DROP CONSTRAINT FK_PredictByWin_Horse2
GO
ALTER TABLE dbo.PredictByWin_001 DROP CONSTRAINT FK_PredictByWin_Horse1
GO
ALTER TABLE dbo.PredictByWide_001 DROP CONSTRAINT FK_PredictByWide_Race
GO
ALTER TABLE dbo.PredictByWide_001 DROP CONSTRAINT FK_PredictByWide_MasterBetType
GO
ALTER TABLE dbo.PredictByWide_001 DROP CONSTRAINT FK_PredictByWide_Horse3
GO
ALTER TABLE dbo.PredictByWide_001 DROP CONSTRAINT FK_PredictByWide_Horse2
GO
ALTER TABLE dbo.PredictByWide_001 DROP CONSTRAINT FK_PredictByWide_Horse1
GO
ALTER TABLE dbo.PredictByTrio_001 DROP CONSTRAINT FK_PredictByTrio_Race
GO
ALTER TABLE dbo.PredictByTrio_001 DROP CONSTRAINT FK_PredictByTrio_MasterBetType
GO
ALTER TABLE dbo.PredictByTrio_001 DROP CONSTRAINT FK_PredictByTrio_Horse3
GO
ALTER TABLE dbo.PredictByTrio_001 DROP CONSTRAINT FK_PredictByTrio_Horse2
GO
ALTER TABLE dbo.PredictByTrio_001 DROP CONSTRAINT FK_PredictByTrio_Horse1
GO
ALTER TABLE dbo.PredictByTrifecta_001 DROP CONSTRAINT FK_PredictByTrifecta_Race
GO
ALTER TABLE dbo.PredictByTrifecta_001 DROP CONSTRAINT FK_PredictByTrifecta_MasterBetType
GO
ALTER TABLE dbo.PredictByTrifecta_001 DROP CONSTRAINT FK_PredictByTrifecta_Horse3
GO
ALTER TABLE dbo.PredictByTrifecta_001 DROP CONSTRAINT FK_PredictByTrifecta_Horse2
GO
ALTER TABLE dbo.PredictByTrifecta_001 DROP CONSTRAINT FK_PredictByTrifecta_Horse1
GO
ALTER TABLE dbo.PredictByQuinella_001 DROP CONSTRAINT FK_PredictByQuinella_Race
GO
ALTER TABLE dbo.PredictByQuinella_001 DROP CONSTRAINT FK_PredictByQuinella_MasterBetType
GO
ALTER TABLE dbo.PredictByQuinella_001 DROP CONSTRAINT FK_PredictByQuinella_Horse3
GO
ALTER TABLE dbo.PredictByQuinella_001 DROP CONSTRAINT FK_PredictByQuinella_Horse2
GO
ALTER TABLE dbo.PredictByQuinella_001 DROP CONSTRAINT FK_PredictByQuinella_Horse1
GO
ALTER TABLE dbo.PredictByPlace_001 DROP CONSTRAINT FK_PredictByPlace_Race
GO
ALTER TABLE dbo.PredictByPlace_001 DROP CONSTRAINT FK_PredictByPlace_MasterBetType
GO
ALTER TABLE dbo.PredictByPlace_001 DROP CONSTRAINT FK_PredictByPlace_Horse3
GO
ALTER TABLE dbo.PredictByPlace_001 DROP CONSTRAINT FK_PredictByPlace_Horse2
GO
ALTER TABLE dbo.PredictByPlace_001 DROP CONSTRAINT FK_PredictByPlace_Horse1
GO
ALTER TABLE dbo.PredictByExacta_001 DROP CONSTRAINT FK_PredictByExacta_Race
GO
ALTER TABLE dbo.PredictByExacta_001 DROP CONSTRAINT FK_PredictByExacta_MasterBetType
GO
ALTER TABLE dbo.PredictByExacta_001 DROP CONSTRAINT FK_PredictByExacta_Horse3
GO
ALTER TABLE dbo.PredictByExacta_001 DROP CONSTRAINT FK_PredictByExacta_Horse2
GO
ALTER TABLE dbo.PredictByExacta_001 DROP CONSTRAINT FK_PredictByExacta_Horse1
GO
ALTER TABLE dbo.PredictByBracket_001 DROP CONSTRAINT FK_PredictByBracket_MasterBetType
GO
ALTER TABLE dbo.PredictByBracket_001 DROP CONSTRAINT FK_PredictByBracket_Horse3
GO
ALTER TABLE dbo.PredictByBracket_001 DROP CONSTRAINT FK_PredictByBracket_Horse2
GO
ALTER TABLE dbo.PredictByBracket_001 DROP CONSTRAINT FK_PredictByBracket_Horse1
GO
ALTER TABLE dbo.PayoffByPayAll DROP CONSTRAINT FK_PayoffByPayAll_Race
GO
ALTER TABLE dbo.PayoffByPayAll DROP CONSTRAINT FK_PayoffByPayAll_Payoff
GO
ALTER TABLE dbo.PayoffByPayAll DROP CONSTRAINT FK_PayoffByPayAll_MasterBetType
GO
ALTER TABLE dbo.PayoffByHenkanWaku DROP CONSTRAINT FK_PayoffByHenkanWaku_Race
GO
ALTER TABLE dbo.PayoffByHenkanWaku DROP CONSTRAINT FK_PayoffByHenkanWaku_Payoff
GO
ALTER TABLE dbo.PayoffByHenkanUma DROP CONSTRAINT FK_PayoffByHenkanUma_Race
GO
ALTER TABLE dbo.PayoffByHenkanUma DROP CONSTRAINT FK_PayoffByHenkanUma_Payoff
GO
ALTER TABLE dbo.PayoffByHenkanDoWaku DROP CONSTRAINT FK_PayoffByHenkanDoWaku_Race
GO
ALTER TABLE dbo.PayoffByHenkanDoWaku DROP CONSTRAINT FK_PayoffByHenkanDoWaku_Payoff
GO
ALTER TABLE dbo.PayoffByFlag DROP CONSTRAINT FK_PayoffByFlag_Race
GO
ALTER TABLE dbo.PayoffByFlag DROP CONSTRAINT FK_PayoffByFlag_Payoff
GO
ALTER TABLE dbo.Payoff DROP CONSTRAINT FK_Payoff_Race
GO
ALTER TABLE dbo.Payoff DROP CONSTRAINT FK_Payoff_MasterPlace
GO
ALTER TABLE dbo.OddsByWin DROP CONSTRAINT FK_OddsByWin_Race
GO
ALTER TABLE dbo.OddsByWin DROP CONSTRAINT FK_OddsByWin_Odds1
GO
ALTER TABLE dbo.OddsByWin DROP CONSTRAINT FK_OddsByWin_MasterPlace
GO
ALTER TABLE dbo.OddsByWin DROP CONSTRAINT FK_OddsByWin_MasterBetType
GO
ALTER TABLE dbo.OddsByWin DROP CONSTRAINT FK_OddsByWin_Horse3
GO
ALTER TABLE dbo.OddsByWin DROP CONSTRAINT FK_OddsByWin_Horse2
GO
ALTER TABLE dbo.OddsByWin DROP CONSTRAINT FK_OddsByWin_Horse1
GO
ALTER TABLE dbo.OddsByWide DROP CONSTRAINT FK_OddsByWide_Race
GO
ALTER TABLE dbo.OddsByWide DROP CONSTRAINT FK_OddsByWide_Odds3
GO
ALTER TABLE dbo.OddsByWide DROP CONSTRAINT FK_OddsByWide_MasterPlace
GO
ALTER TABLE dbo.OddsByWide DROP CONSTRAINT FK_OddsByWide_MasterBetType
GO
ALTER TABLE dbo.OddsByWide DROP CONSTRAINT FK_OddsByWide_Horse3
GO
ALTER TABLE dbo.OddsByWide DROP CONSTRAINT FK_OddsByWide_Horse2
GO
ALTER TABLE dbo.OddsByWide DROP CONSTRAINT FK_OddsByWide_Horse1
GO
ALTER TABLE dbo.OddsByTrio DROP CONSTRAINT FK_OddsByTrio_Race
GO
ALTER TABLE dbo.OddsByTrio DROP CONSTRAINT FK_OddsByTrio_Odds5
GO
ALTER TABLE dbo.OddsByTrio DROP CONSTRAINT FK_OddsByTrio_MasterPlace
GO
ALTER TABLE dbo.OddsByTrio DROP CONSTRAINT FK_OddsByTrio_MasterBetType
GO
ALTER TABLE dbo.OddsByTrio DROP CONSTRAINT FK_OddsByTrio_Horse3
GO
ALTER TABLE dbo.OddsByTrio DROP CONSTRAINT FK_OddsByTrio_Horse2
GO
ALTER TABLE dbo.OddsByTrio DROP CONSTRAINT FK_OddsByTrio_Horse1
GO
ALTER TABLE dbo.OddsByTrifecta DROP CONSTRAINT FK_OddsByTrifecta_Race
GO
ALTER TABLE dbo.OddsByTrifecta DROP CONSTRAINT FK_OddsByTrifecta_Odds6
GO
ALTER TABLE dbo.OddsByTrifecta DROP CONSTRAINT FK_OddsByTrifecta_MasterPlace
GO
ALTER TABLE dbo.OddsByTrifecta DROP CONSTRAINT FK_OddsByTrifecta_MasterBetType
GO
ALTER TABLE dbo.OddsByTrifecta DROP CONSTRAINT FK_OddsByTrifecta_Horse3
GO
ALTER TABLE dbo.OddsByTrifecta DROP CONSTRAINT FK_OddsByTrifecta_Horse2
GO
ALTER TABLE dbo.OddsByTrifecta DROP CONSTRAINT FK_OddsByTrifecta_Horse1
GO
ALTER TABLE dbo.OddsByQuinella DROP CONSTRAINT FK_OddsByQuinella_Race
GO
ALTER TABLE dbo.OddsByQuinella DROP CONSTRAINT FK_OddsByQuinella_Odds2
GO
ALTER TABLE dbo.OddsByQuinella DROP CONSTRAINT FK_OddsByQuinella_MasterPlace
GO
ALTER TABLE dbo.OddsByQuinella DROP CONSTRAINT FK_OddsByQuinella_MasterBetType
GO
ALTER TABLE dbo.OddsByQuinella DROP CONSTRAINT FK_OddsByQuinella_Horse3
GO
ALTER TABLE dbo.OddsByQuinella DROP CONSTRAINT FK_OddsByQuinella_Horse2
GO
ALTER TABLE dbo.OddsByQuinella DROP CONSTRAINT FK_OddsByQuinella_Horse1
GO
ALTER TABLE dbo.OddsByPlace DROP CONSTRAINT FK_OddsByPlace_Race
GO
ALTER TABLE dbo.OddsByPlace DROP CONSTRAINT FK_OddsByPlace_Odds1
GO
ALTER TABLE dbo.OddsByPlace DROP CONSTRAINT FK_OddsByPlace_MasterPlace
GO
ALTER TABLE dbo.OddsByPlace DROP CONSTRAINT FK_OddsByPlace_MasterBetType
GO
ALTER TABLE dbo.OddsByPlace DROP CONSTRAINT FK_OddsByPlace_Horse3
GO
ALTER TABLE dbo.OddsByPlace DROP CONSTRAINT FK_OddsByPlace_Horse2
GO
ALTER TABLE dbo.OddsByPlace DROP CONSTRAINT FK_OddsByPlace_Horse1
GO
ALTER TABLE dbo.OddsByExacta DROP CONSTRAINT FK_OddsByExacta_Race
GO
ALTER TABLE dbo.OddsByExacta DROP CONSTRAINT FK_OddsByExacta_Odds4
GO
ALTER TABLE dbo.OddsByExacta DROP CONSTRAINT FK_OddsByExacta_MasterPlace
GO
ALTER TABLE dbo.OddsByExacta DROP CONSTRAINT FK_OddsByExacta_MasterBetType
GO
ALTER TABLE dbo.OddsByExacta DROP CONSTRAINT FK_OddsByExacta_Horse3
GO
ALTER TABLE dbo.OddsByExacta DROP CONSTRAINT FK_OddsByExacta_Horse2
GO
ALTER TABLE dbo.OddsByExacta DROP CONSTRAINT FK_OddsByExacta_Horse1
GO
ALTER TABLE dbo.OddsByBracket DROP CONSTRAINT FK_OddsByBracket_Race
GO
ALTER TABLE dbo.OddsByBracket DROP CONSTRAINT FK_OddsByBracket_Odds1
GO
ALTER TABLE dbo.OddsByBracket DROP CONSTRAINT FK_OddsByBracket_MasterPlace
GO
ALTER TABLE dbo.OddsByBracket DROP CONSTRAINT FK_OddsByBracket_MasterBetType
GO
ALTER TABLE dbo.OddsByBracket DROP CONSTRAINT FK_OddsByBracket_Horse3
GO
ALTER TABLE dbo.OddsByBracket DROP CONSTRAINT FK_OddsByBracket_Horse2
GO
ALTER TABLE dbo.OddsByBracket DROP CONSTRAINT FK_OddsByBracket_Horse1
GO
ALTER TABLE dbo.Odds6 DROP CONSTRAINT FK_Odds6_Race
GO
ALTER TABLE dbo.Odds6 DROP CONSTRAINT FK_Odds6_MasterPlace
GO
ALTER TABLE dbo.Odds5 DROP CONSTRAINT FK_Odds5_Race
GO
ALTER TABLE dbo.Odds5 DROP CONSTRAINT FK_Odds5_MasterPlace
GO
ALTER TABLE dbo.Odds4 DROP CONSTRAINT FK_Odds4_Race
GO
ALTER TABLE dbo.Odds4 DROP CONSTRAINT FK_Odds4_MasterPlace
GO
ALTER TABLE dbo.Odds3 DROP CONSTRAINT FK_Odds3_Race
GO
ALTER TABLE dbo.Odds3 DROP CONSTRAINT FK_Odds3_MasterPlace
GO
ALTER TABLE dbo.Odds2 DROP CONSTRAINT FK_Odds2_Race
GO
ALTER TABLE dbo.Odds2 DROP CONSTRAINT FK_Odds2_MasterPlace
GO
ALTER TABLE dbo.Odds1 DROP CONSTRAINT FK_Odds1_Race
GO
ALTER TABLE dbo.Odds1 DROP CONSTRAINT FK_Odds1_MasterPlace
GO
ALTER TABLE dbo.MasterOpenModeDataSpec DROP CONSTRAINT FK_MasterOpenModeDataSpec_MasterDataSpec
GO
ALTER TABLE dbo.MasterJyoken5 DROP CONSTRAINT FK_MasterJyoken5_MasterJyoken
GO
ALTER TABLE dbo.Keito DROP CONSTRAINT FK_Keito_Hansyoku
GO
ALTER TABLE dbo.JockeyByTrackType DROP CONSTRAINT FK_JockeyByTrackType_MasterTrackType3
GO
ALTER TABLE dbo.JockeyByTrackType DROP CONSTRAINT FK_JockeyByTrackType_Jocky
GO
ALTER TABLE dbo.JockeyByTotal DROP CONSTRAINT FK_JockeyByTotal_TrackType3
GO
ALTER TABLE dbo.JockeyByTotal DROP CONSTRAINT FK_JockeyByTotal_Jocky
GO
ALTER TABLE dbo.JockeyBySaikinJyusyo DROP CONSTRAINT FK_JockeyBySaikinJyusyo_Race
GO
ALTER TABLE dbo.JockeyBySaikinJyusyo DROP CONSTRAINT FK_JockeyBySaikinJyusyo_MasterGrade
GO
ALTER TABLE dbo.JockeyBySaikinJyusyo DROP CONSTRAINT FK_JockeyBySaikinJyusyo_Jocky
GO
ALTER TABLE dbo.JockeyBySaikinJyusyo DROP CONSTRAINT FK_JockeyBySaikinJyusyo_Horse
GO
ALTER TABLE dbo.JockeyByHatuSyori DROP CONSTRAINT FK_JockeyByHatusyori_Race
GO
ALTER TABLE dbo.JockeyByHatuSyori DROP CONSTRAINT FK_JockeyByHatusyori_MasterTrackType3
GO
ALTER TABLE dbo.JockeyByHatuSyori DROP CONSTRAINT FK_JockeyByHatusyori_Jocky
GO
ALTER TABLE dbo.JockeyByHatuSyori DROP CONSTRAINT FK_JockeyByHatusyori_Horse
GO
ALTER TABLE dbo.JockeyByHatsuKijyo DROP CONSTRAINT FK_JockeyByHatsuKijyo_Race
GO
ALTER TABLE dbo.JockeyByHatsuKijyo DROP CONSTRAINT FK_JockeyByHatsuKijyo_MasterTrackType3
GO
ALTER TABLE dbo.JockeyByHatsuKijyo DROP CONSTRAINT FK_JockeyByHatsuKijyo_MasterIjyo
GO
ALTER TABLE dbo.JockeyByHatsuKijyo DROP CONSTRAINT FK_JockeyByHatsuKijyo_Jocky
GO
ALTER TABLE dbo.JockeyByHatsuKijyo DROP CONSTRAINT FK_JockeyByHatsuKijyo_Horse
GO
ALTER TABLE dbo.JockeyByDistanceType DROP CONSTRAINT FK_JockeyByDistanceType_MasterTrackType2
GO
ALTER TABLE dbo.JockeyByDistanceType DROP CONSTRAINT FK_JockeyByDistanceType_Jocky
GO
ALTER TABLE dbo.Jockey DROP CONSTRAINT FK_Jockey_MasterTozai
GO
ALTER TABLE dbo.Jockey DROP CONSTRAINT FK_Jockey_MasterShikaku
GO
ALTER TABLE dbo.Jockey DROP CONSTRAINT FK_Jockey_MasterSex
GO
ALTER TABLE dbo.Jockey DROP CONSTRAINT FK_Jockey_MasterMinarai
GO
ALTER TABLE dbo.HorseByTrackCondition DROP CONSTRAINT FK_HorseByTrackCondition_MasterTrackType
GO
ALTER TABLE dbo.HorseByTrackCondition DROP CONSTRAINT FK_HorseByTrackCondition_MasterTrackCondition
GO
ALTER TABLE dbo.HorseByTrackCondition DROP CONSTRAINT FK_HorseByTrackCondition_Horse
GO
ALTER TABLE dbo.HorseByTotal DROP CONSTRAINT FK_HorseByTotal_Horse
GO
ALTER TABLE dbo.HorseBySmile DROP CONSTRAINT FK_HorseBySmile_MasterTrackType
GO
ALTER TABLE dbo.HorseBySmile DROP CONSTRAINT FK_HorseBySmile_MasterSmile
GO
ALTER TABLE dbo.HorseBySmile DROP CONSTRAINT FK_HorseBySmile_Horse
GO
ALTER TABLE dbo.HorseByRunType DROP CONSTRAINT FK_HorseByRunType_Horse
GO
ALTER TABLE dbo.HorseByDistanceType DROP CONSTRAINT FK_HorseByDistanceType_MasterTrackType2
GO
ALTER TABLE dbo.HorseByDistanceType DROP CONSTRAINT FK_HorseByDistanceType_MasterDistanceType2
GO
ALTER TABLE dbo.HorseByDistanceType DROP CONSTRAINT FK_HorseByDistanceType_Horse
GO
ALTER TABLE dbo.HorseByCourseType DROP CONSTRAINT FK_HorseByCourseType_MasterTrackType
GO
ALTER TABLE dbo.HorseByCourseType DROP CONSTRAINT FK_HorseByCourseType_MasterCourseType
GO
ALTER TABLE dbo.HorseByCourseType DROP CONSTRAINT FK_HorseByCourseType_Horse
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_Trainer
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_MasterUmaKigo
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_MasterTozai
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_MasterSex
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_MasterKeiro
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_MasterHinsyu
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_Hansyoku14
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_Hansyoku13
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_Hansyoku12
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_Hansyoku11
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_Hansyoku10
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_Hansyoku09
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_Hansyoku08
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_Hansyoku07
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_Hansyoku06
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_Hansyoku05
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_Hansyoku04
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_Hansyoku03
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_Hansyoku02
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_Hansyoku01
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_Breeder
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT FK_Horse_Banusi
GO
ALTER TABLE dbo.HansyokuParents DROP CONSTRAINT FK_HansyokuParents_MasterSex
GO
ALTER TABLE dbo.HansyokuParents DROP CONSTRAINT FK_HansyokuParents_HansyokuParents
GO
ALTER TABLE dbo.HansyokuParents DROP CONSTRAINT FK_HansyokuParents_Hansyoku
GO
ALTER TABLE dbo.Hansyoku DROP CONSTRAINT FK_Hansyoku_MasterSex
GO
ALTER TABLE dbo.Hansyoku DROP CONSTRAINT FK_Hansyoku_MasterKeiro
GO
ALTER TABLE dbo.Hansyoku DROP CONSTRAINT FK_Hansyoku_MasterHinsyu
GO
ALTER TABLE dbo.Hansyoku DROP CONSTRAINT FK_Hansyoku_Horse
GO
ALTER TABLE dbo.Hansyoku DROP CONSTRAINT FK_Hansyoku_HansyokuMaleID
GO
ALTER TABLE dbo.Hansyoku DROP CONSTRAINT FK_Hansyoku_HansyokuFemaleID
GO
ALTER TABLE dbo.EventWeather DROP CONSTRAINT FK_EventWeather_MasterTenko_Mae
GO
ALTER TABLE dbo.EventWeather DROP CONSTRAINT FK_EventWeather_MasterTenko_Ato
GO
ALTER TABLE dbo.EventWeather DROP CONSTRAINT FK_EventWeather_MasterPlace
GO
ALTER TABLE dbo.EventTimeChange DROP CONSTRAINT FK_EventTimeChange_Race
GO
ALTER TABLE dbo.EventTimeChange DROP CONSTRAINT FK_EventTimeChange_MasterPlace
GO
ALTER TABLE dbo.EventQueue DROP CONSTRAINT FK_EventQueue_Race
GO
ALTER TABLE dbo.EventQueue DROP CONSTRAINT FK_EventQueue_MasterOpenModeDataSpec
GO
ALTER TABLE dbo.EventJockeyChange DROP CONSTRAINT FK_EventJockeyChange_Race
GO
ALTER TABLE dbo.EventJockeyChange DROP CONSTRAINT FK_EventJockeyChange_MasterPlace
GO
ALTER TABLE dbo.EventJockeyChange DROP CONSTRAINT FK_EventJockeyChange_MasterMinaraiBefore
GO
ALTER TABLE dbo.EventJockeyChange DROP CONSTRAINT FK_EventJockeyChange_MasterMinarai
GO
ALTER TABLE dbo.EventJockeyChange DROP CONSTRAINT FK_EventJockeyChange_Jockey_Mae
GO
ALTER TABLE dbo.EventJockeyChange DROP CONSTRAINT FK_EventJockeyChange_Jockey_Ato
GO
ALTER TABLE dbo.EventHorseWeight DROP CONSTRAINT FK_EventHorseWeight_Race
GO
ALTER TABLE dbo.EventHorseWeight DROP CONSTRAINT FK_EventHorseWeight_MasterPlace
GO
ALTER TABLE dbo.EventCourseChange DROP CONSTRAINT FK_EventCourseChange_MasterTrack_Mae
GO
ALTER TABLE dbo.EventCourseChange DROP CONSTRAINT FK_EventCourseChange_MasterTrack_Ato
GO
ALTER TABLE dbo.EventCourseChange DROP CONSTRAINT FK_EventCourseChange_MasterPlace
GO
ALTER TABLE dbo.EventAvoid DROP CONSTRAINT FK_EventAvoid_Race
GO
ALTER TABLE dbo.EventAvoid DROP CONSTRAINT FK_EventAvoid_MasterPlace
GO
ALTER TABLE dbo.DataMiningTaisen DROP CONSTRAINT FK_DataMiningTaisen_Race
GO
ALTER TABLE dbo.DataMiningTaisen DROP CONSTRAINT FK_DataMiningTaisen_MasterPlace
GO
ALTER TABLE dbo.DataMiningTaisen DROP CONSTRAINT FK_DataMiningTaisen_HorseNum
GO
ALTER TABLE dbo.DataMining DROP CONSTRAINT FK_DataMining_Race
GO
ALTER TABLE dbo.DataMining DROP CONSTRAINT FK_DataMining_MasterPlace
GO
ALTER TABLE dbo.DataMining DROP CONSTRAINT FK_DataMining_HorseNum
GO
ALTER TABLE dbo.CourseInfo DROP CONSTRAINT FK_CourseInfo_MasterTrack
GO
ALTER TABLE dbo.CourseInfo DROP CONSTRAINT FK_CourseInfo_MasterJyo
GO
ALTER TABLE dbo.ConfigLastTimestamp DROP CONSTRAINT FK_ConfigLastTimestamp_MasterDataSpec
GO
ALTER TABLE dbo.ConfigDataSpecRecKubun DROP CONSTRAINT FK_ConfigDataSpecRecKubun_MasterDataSpec
GO
ALTER TABLE dbo.ConfigBetMoney DROP CONSTRAINT FK_ConfigBetMoney_MasterBetType
GO
ALTER TABLE dbo.ConfigBetMoney DROP CONSTRAINT FK_ConfigBetMoney_Master2Class
GO
ALTER TABLE dbo.ConfigBetCountWinFive DROP CONSTRAINT FK_ConfigBetCountWinFive_MasterBetType
GO
ALTER TABLE dbo.ConfigBetCount DROP CONSTRAINT FK_ConfigBetCount_MasterBetType
GO
ALTER TABLE dbo.ConfigBetCount DROP CONSTRAINT FK_ConfigBetCount_Master2Class
GO
ALTER TABLE dbo.BetMgmtHistory DROP CONSTRAINT FK_BetMgmtHistory_Race
GO
ALTER TABLE dbo.BetMgmtHistory DROP CONSTRAINT FK_BetMgmtHistory_MasterPlace
GO
ALTER TABLE dbo.BetMgmtHistory DROP CONSTRAINT FK_BetMgmtHistory_MasterBetType
GO
ALTER TABLE dbo.BetMgmtByTemp DROP CONSTRAINT FK_BetMgmtByTemp_Race
GO
ALTER TABLE dbo.BetMgmtByTemp DROP CONSTRAINT FK_BetMgmtByTemp_MasterPlace
GO
ALTER TABLE dbo.BetMgmtByTemp DROP CONSTRAINT FK_BetMgmtByTemp_MasterBetType
GO
ALTER TABLE dbo.BetMgmtBySim DROP CONSTRAINT FK_BetMgmtBySim_Race
GO
ALTER TABLE dbo.BetMgmtBySim DROP CONSTRAINT FK_BetMgmtBySim_MasterPlace
GO
ALTER TABLE dbo.BetMgmtBySim DROP CONSTRAINT FK_BetMgmtBySim_MasterBetType
GO
ALTER TABLE dbo.BetMgmtByBet DROP CONSTRAINT FK_BetMgmtByBet_Race
GO
ALTER TABLE dbo.BetMgmtByBet DROP CONSTRAINT FK_BetMgmtByBet_MasterPlace
GO
ALTER TABLE dbo.BetMgmtByBet DROP CONSTRAINT FK_BetMgmtByBet_MasterBetType
GO
ALTER TABLE dbo.BetHistoryMaster DROP CONSTRAINT FK_BetHistoryMaster_Race
GO
ALTER TABLE dbo.BetHistoryMaster DROP CONSTRAINT FK_BetHistoryMaster_MasterPlace
GO
ALTER TABLE dbo.BetHistoryDetail DROP CONSTRAINT FK_BetHistoryDetail_Race
GO
ALTER TABLE dbo.BetHistoryDetail DROP CONSTRAINT FK_BetHistoryDetail_MasterPlace
GO
ALTER TABLE dbo.BetHistoryDetail DROP CONSTRAINT FK_BetHistoryDetail_MasterBetType
GO
ALTER TABLE dbo.Bet6ByTrifecta DROP CONSTRAINT FK_Bet6ByTrifecta_Race
GO
ALTER TABLE dbo.Bet6ByTrifecta DROP CONSTRAINT FK_Bet6ByTrifecta_Bet6
GO
ALTER TABLE dbo.Bet6ByHenkanUma DROP CONSTRAINT FK_Bet6ByHenkanUma_Race
GO
ALTER TABLE dbo.Bet6ByHenkanUma DROP CONSTRAINT FK_Bet6ByHenkanUma_Bet6
GO
ALTER TABLE dbo.Bet6 DROP CONSTRAINT FK_Bet6_Race
GO
ALTER TABLE dbo.Bet6 DROP CONSTRAINT FK_Bet6_MasterPlace
GO
ALTER TABLE dbo.Bet1ByWin DROP CONSTRAINT FK_Bet1ByWin_Race
GO
ALTER TABLE dbo.Bet1ByWin DROP CONSTRAINT FK_Bet1ByWin_Bet1
GO
ALTER TABLE dbo.Bet1ByWide DROP CONSTRAINT FK_Bet1ByWide_Race
GO
ALTER TABLE dbo.Bet1ByWide DROP CONSTRAINT FK_Bet1ByWide_Bet1
GO
ALTER TABLE dbo.Bet1ByTrio DROP CONSTRAINT FK_Bet1ByTrio_Race
GO
ALTER TABLE dbo.Bet1ByTrio DROP CONSTRAINT FK_Bet1ByTrio_Bet1
GO
ALTER TABLE dbo.Bet1ByQuinella DROP CONSTRAINT FK_Bet1ByQuinella_Race
GO
ALTER TABLE dbo.Bet1ByQuinella DROP CONSTRAINT FK_Bet1ByQuinella_Bet1
GO
ALTER TABLE dbo.Bet1ByPlace DROP CONSTRAINT FK_Bet1ByPlace_Race
GO
ALTER TABLE dbo.Bet1ByPlace DROP CONSTRAINT FK_Bet1ByPlace_Bet1
GO
ALTER TABLE dbo.Bet1ByExacta DROP CONSTRAINT FK_Bet1ByExacta_Race
GO
ALTER TABLE dbo.Bet1ByExacta DROP CONSTRAINT FK_Bet1ByExacta_Bet1
GO
ALTER TABLE dbo.Bet1ByBracket DROP CONSTRAINT FK_Bet1ByBracket_Race
GO
ALTER TABLE dbo.Bet1ByBracket DROP CONSTRAINT FK_Bet1ByBracket_Bet1
GO
ALTER TABLE dbo.Bet1 DROP CONSTRAINT FK_Bet1_Race
GO
ALTER TABLE dbo.Bet1 DROP CONSTRAINT FK_Bet1_MasterPlace
GO
ALTER TABLE dbo.BayesianTrial01 DROP CONSTRAINT FK_AnalyzeBayesian01Trial_Race
GO
ALTER TABLE dbo.BayesianTrial01 DROP CONSTRAINT FK_AnalyzeBayesian01Trial_Horse
GO
ALTER TABLE dbo.BaseStatsTrainerByRaceHorse DROP CONSTRAINT FK_BaseStatsTrainerByRaceHorse_Race
GO
ALTER TABLE dbo.BaseStatsTrainerByRaceHorse DROP CONSTRAINT FK_BaseStatsTrainerByRaceHorse_Horse
GO
ALTER TABLE dbo.BaseStatsJockeyByRaceHorse DROP CONSTRAINT FK_BaseStatsJockeyByRaceHorse_Race
GO
ALTER TABLE dbo.BaseStatsJockeyByRaceHorse DROP CONSTRAINT FK_BaseStatsJockeyByRaceHorse_Horse
GO
ALTER TABLE dbo.BaseStatsGen05HansyokuByRaceHorse DROP CONSTRAINT FK_BaseStatsGen05HansyokuByRaceHorse_Race
GO
ALTER TABLE dbo.BaseStatsGen05HansyokuByRaceHorse DROP CONSTRAINT FK_BaseStatsGen05HansyokuByRaceHorse_Horse
GO
ALTER TABLE dbo.BaseStatsGen02HansyokuByRaceHorse DROP CONSTRAINT FK_BaseStatsGen02HansyokuByRaceHorse_Race
GO
ALTER TABLE dbo.BaseStatsGen02HansyokuByRaceHorse DROP CONSTRAINT FK_BaseStatsGen02HansyokuByRaceHorse_Horse
GO
ALTER TABLE dbo.BaseStatsGen01HansyokuByRaceHorse DROP CONSTRAINT FK_BaseStatsGen01HansyokuByRaceHorse_Race
GO
ALTER TABLE dbo.BaseStatsGen01HansyokuByRaceHorse DROP CONSTRAINT FK_BaseStatsGen01HansyokuByRaceHorse_Horse
GO
ALTER TABLE dbo.BaseStatsBanusiByRaceHorse DROP CONSTRAINT FK_BaseStatsBanusiByRaceHorse_Race
GO
ALTER TABLE dbo.BaseStatsBanusiByRaceHorse DROP CONSTRAINT FK_BaseStatsBanusiByRaceHorse_Horse
GO
ALTER TABLE dbo.Banusi DROP CONSTRAINT FK_Banusi_Silk
GO
ALTER TABLE dbo.AnalysisStep03PrevRaceHorse DROP CONSTRAINT FK_AnalysisStep03PrevRaceHorse_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep03PrevRaceHorse DROP CONSTRAINT FK_AnalysisStep03PrevRaceHorse_Race
GO
ALTER TABLE dbo.AnalysisStep03Jockey DROP CONSTRAINT FK_AnalysisStep03Jockey_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep03Jockey DROP CONSTRAINT FK_AnalysisStep03Jockey_Race
GO
ALTER TABLE dbo.AnalysisStep03Gen02 DROP CONSTRAINT FK_AnalysisStep03Gen02_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep03Gen02 DROP CONSTRAINT FK_AnalysisStep03Gen02_Race
GO
ALTER TABLE dbo.AnalysisStep03Gen01 DROP CONSTRAINT FK_AnalysisStep03Gen01_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep03Gen01 DROP CONSTRAINT FK_AnalysisStep03Gen01_Race
GO
ALTER TABLE dbo.AnalysisStep03Basic DROP CONSTRAINT FK_AnalysisStep03Basic_Race
GO
ALTER TABLE dbo.AnalysisStep03Basic DROP CONSTRAINT FK_AnalysisStep03Basic_Horse
GO
ALTER TABLE dbo.AnalysisStep02PrevRaceHorse DROP CONSTRAINT FK_AnalysisStep02PrevRaceHorse_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep02PrevRaceHorse DROP CONSTRAINT FK_AnalysisStep02PrevRaceHorse_Race
GO
ALTER TABLE dbo.AnalysisStep02Jockey DROP CONSTRAINT FK_AnalysisStep02Jockey_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep02Jockey DROP CONSTRAINT FK_AnalysisStep02Jockey_Race
GO
ALTER TABLE dbo.AnalysisStep02Gen02 DROP CONSTRAINT FK_AnalysisStep02Gen02_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep02Gen02 DROP CONSTRAINT FK_AnalysisStep02Gen02_Race
GO
ALTER TABLE dbo.AnalysisStep02Gen01 DROP CONSTRAINT FK_AnalysisStep02Gen01_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep02Gen01 DROP CONSTRAINT FK_AnalysisStep02Gen01_Race
GO
ALTER TABLE dbo.AnalysisStep02Basic DROP CONSTRAINT FK_AnalysisStep02Basic_Race
GO
ALTER TABLE dbo.AnalysisStep02Basic DROP CONSTRAINT FK_AnalysisStep02Basic_Horse
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType35 DROP CONSTRAINT FK_AnalysisStep01PrevRaceHorseType35_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType31 DROP CONSTRAINT FK_AnalysisStep01PrevRaceHorseType31_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType26 DROP CONSTRAINT FK_AnalysisStep01PrevRaceHorseType26_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType25 DROP CONSTRAINT FK_AnalysisStep01PrevRaceHorseType25_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType24 DROP CONSTRAINT FK_AnalysisStep01PrevRaceHorseType24_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType23 DROP CONSTRAINT FK_AnalysisStep01PrevRaceHorseType23_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType22 DROP CONSTRAINT FK_AnalysisStep01PrevRaceHorseType22_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType21 DROP CONSTRAINT FK_AnalysisStep01PrevRaceHorseType21_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType16 DROP CONSTRAINT FK_AnalysisStep01PrevRaceHorseType16_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType15 DROP CONSTRAINT FK_AnalysisStep01PrevRaceHorseType15_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType14 DROP CONSTRAINT FK_AnalysisStep01PrevRaceHorseType14_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType13 DROP CONSTRAINT FK_AnalysisStep01PrevRaceHorseType13_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType12 DROP CONSTRAINT FK_AnalysisStep01PrevRaceHorseType12_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType11 DROP CONSTRAINT FK_AnalysisStep01PrevRaceHorseType11_Race
GO
ALTER TABLE dbo.AnalysisStep01PrepType0000 DROP CONSTRAINT FK_AnalysisStep01PrepType0000_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType35 DROP CONSTRAINT FK_AnalysisStep01JockeyType35_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType35 DROP CONSTRAINT FK_AnalysisStep01JockeyType35_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType31 DROP CONSTRAINT FK_AnalysisStep01JockeyType31_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType31 DROP CONSTRAINT FK_AnalysisStep01JockeyType31_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType26 DROP CONSTRAINT FK_AnalysisStep01JockeyType26_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType26 DROP CONSTRAINT FK_AnalysisStep01JockeyType26_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType2512 DROP CONSTRAINT FK_AnalysisStep01JockeyType2512_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType25 DROP CONSTRAINT FK_AnalysisStep01JockeyType25_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType25 DROP CONSTRAINT FK_AnalysisStep01JockeyType25_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType24 DROP CONSTRAINT FK_AnalysisStep01JockeyType24_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType24 DROP CONSTRAINT FK_AnalysisStep01JockeyType24_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType23 DROP CONSTRAINT FK_AnalysisStep01JockeyType23_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType23 DROP CONSTRAINT FK_AnalysisStep01JockeyType23_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType22 DROP CONSTRAINT FK_AnalysisStep01JockeyType22_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType22 DROP CONSTRAINT FK_AnalysisStep01JockeyType22_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType21 DROP CONSTRAINT FK_AnalysisStep01JockeyType21_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType21 DROP CONSTRAINT FK_AnalysisStep01JockeyType21_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType16 DROP CONSTRAINT FK_AnalysisStep01JockeyType16_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType16 DROP CONSTRAINT FK_AnalysisStep01JockeyType16_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType15 DROP CONSTRAINT FK_AnalysisStep01JockeyType15_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType15 DROP CONSTRAINT FK_AnalysisStep01JockeyType15_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType14 DROP CONSTRAINT FK_AnalysisStep01JockeyType14_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType14 DROP CONSTRAINT FK_AnalysisStep01JockeyType14_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType13 DROP CONSTRAINT FK_AnalysisStep01JockeyType13_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType13 DROP CONSTRAINT FK_AnalysisStep01JockeyType13_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType12 DROP CONSTRAINT FK_AnalysisStep01JockeyType12_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType12 DROP CONSTRAINT FK_AnalysisStep01JockeyType12_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType11 DROP CONSTRAINT FK_AnalysisStep01JockeyType11_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType11 DROP CONSTRAINT FK_AnalysisStep01JockeyType11_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type35 DROP CONSTRAINT FK_AnalysisStep01Gen02Type35_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type35 DROP CONSTRAINT FK_AnalysisStep01Gen02Type35_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type31 DROP CONSTRAINT FK_AnalysisStep01Gen02Type31_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type31 DROP CONSTRAINT FK_AnalysisStep01Gen02Type31_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type26 DROP CONSTRAINT FK_AnalysisStep01Gen02Type26_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type26 DROP CONSTRAINT FK_AnalysisStep01Gen02Type26_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type2512 DROP CONSTRAINT FK_AnalysisStep01Gen02Type2512_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type25 DROP CONSTRAINT FK_AnalysisStep01Gen02Type25_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type25 DROP CONSTRAINT FK_AnalysisStep01Gen02Type25_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type24 DROP CONSTRAINT FK_AnalysisStep01Gen02Type24_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type24 DROP CONSTRAINT FK_AnalysisStep01Gen02Type24_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type23 DROP CONSTRAINT FK_AnalysisStep01Gen02Type23_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type23 DROP CONSTRAINT FK_AnalysisStep01Gen02Type23_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type22 DROP CONSTRAINT FK_AnalysisStep01Gen02Type22_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type22 DROP CONSTRAINT FK_AnalysisStep01Gen02Type22_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type21 DROP CONSTRAINT FK_AnalysisStep01Gen02Type21_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type21 DROP CONSTRAINT FK_AnalysisStep01Gen02Type21_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type16 DROP CONSTRAINT FK_AnalysisStep01Gen02Type16_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type16 DROP CONSTRAINT FK_AnalysisStep01Gen02Type16_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type15 DROP CONSTRAINT FK_AnalysisStep01Gen02Type15_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type15 DROP CONSTRAINT FK_AnalysisStep01Gen02Type15_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type14 DROP CONSTRAINT FK_AnalysisStep01Gen02Type14_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type14 DROP CONSTRAINT FK_AnalysisStep01Gen02Type14_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type13 DROP CONSTRAINT FK_AnalysisStep01Gen02Type13_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type13 DROP CONSTRAINT FK_AnalysisStep01Gen02Type13_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type12 DROP CONSTRAINT FK_AnalysisStep01Gen02Type12_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type12 DROP CONSTRAINT FK_AnalysisStep01Gen02Type12_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type11 DROP CONSTRAINT FK_AnalysisStep01Gen02Type11_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type11 DROP CONSTRAINT FK_AnalysisStep01Gen02Type11_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type35 DROP CONSTRAINT FK_AnalysisStep01Gen01Type35_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type35 DROP CONSTRAINT FK_AnalysisStep01Gen01Type35_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type31 DROP CONSTRAINT FK_AnalysisStep01Gen01Type31_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type31 DROP CONSTRAINT FK_AnalysisStep01Gen01Type31_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type26 DROP CONSTRAINT FK_AnalysisStep01Gen01Type26_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type26 DROP CONSTRAINT FK_AnalysisStep01Gen01Type26_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type2512 DROP CONSTRAINT FK_AnalysisStep01Gen01Type2512_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type25 DROP CONSTRAINT FK_AnalysisStep01Gen01Type25_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type25 DROP CONSTRAINT FK_AnalysisStep01Gen01Type25_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type24 DROP CONSTRAINT FK_AnalysisStep01Gen01Type24_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type24 DROP CONSTRAINT FK_AnalysisStep01Gen01Type24_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type23 DROP CONSTRAINT FK_AnalysisStep01Gen01Type23_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type23 DROP CONSTRAINT FK_AnalysisStep01Gen01Type23_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type22 DROP CONSTRAINT FK_AnalysisStep01Gen01Type22_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type22 DROP CONSTRAINT FK_AnalysisStep01Gen01Type22_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type21 DROP CONSTRAINT FK_AnalysisStep01Gen01Type21_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type21 DROP CONSTRAINT FK_AnalysisStep01Gen01Type21_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type16 DROP CONSTRAINT FK_AnalysisStep01Gen01Type16_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type16 DROP CONSTRAINT FK_AnalysisStep01Gen01Type16_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type15 DROP CONSTRAINT FK_AnalysisStep01Gen01Type15_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type15 DROP CONSTRAINT FK_AnalysisStep01Gen01Type15_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type14 DROP CONSTRAINT FK_AnalysisStep01Gen01Type14_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type14 DROP CONSTRAINT FK_AnalysisStep01Gen01Type14_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type13 DROP CONSTRAINT FK_AnalysisStep01Gen01Type13_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type13 DROP CONSTRAINT FK_AnalysisStep01Gen01Type13_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type12 DROP CONSTRAINT FK_AnalysisStep01Gen01Type12_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type12 DROP CONSTRAINT FK_AnalysisStep01Gen01Type12_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type11 DROP CONSTRAINT FK_AnalysisStep01Gen01Type11_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type11 DROP CONSTRAINT FK_AnalysisStep01Gen01Type11_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType3519 DROP CONSTRAINT FK_AnalysisStep01BasicType3519_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType3519 DROP CONSTRAINT FK_AnalysisStep01BasicType3519_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType3518 DROP CONSTRAINT FK_AnalysisStep01BasicType3518_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType3518 DROP CONSTRAINT FK_AnalysisStep01BasicType3518_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType3119 DROP CONSTRAINT FK_AnalysisStep01BasicType3119_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType3119 DROP CONSTRAINT FK_AnalysisStep01BasicType3119_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType3118 DROP CONSTRAINT FK_AnalysisStep01BasicType3118_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType3118 DROP CONSTRAINT FK_AnalysisStep01BasicType3118_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType3000 DROP CONSTRAINT FK_AnalysisStep01BasicType3000_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType3000 DROP CONSTRAINT FK_AnalysisStep01BasicType3000_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2612 DROP CONSTRAINT FK_AnalysisStep01BasicType2612_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2612 DROP CONSTRAINT FK_AnalysisStep01BasicType2612_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2611 DROP CONSTRAINT FK_AnalysisStep01BasicType2611_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2611 DROP CONSTRAINT FK_AnalysisStep01BasicType2611_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2512 DROP CONSTRAINT FK_AnalysisStep01BasicType2512_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2512 DROP CONSTRAINT FK_AnalysisStep01BasicType2512_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2511 DROP CONSTRAINT FK_AnalysisStep01BasicType2511_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2511 DROP CONSTRAINT FK_AnalysisStep01BasicType2511_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2414 DROP CONSTRAINT FK_AnalysisStep01BasicType2414_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2414 DROP CONSTRAINT FK_AnalysisStep01BasicType2414_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2413 DROP CONSTRAINT FK_AnalysisStep01BasicType2413_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2413 DROP CONSTRAINT FK_AnalysisStep01BasicType2413_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2412 DROP CONSTRAINT FK_AnalysisStep01BasicType2412_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2412 DROP CONSTRAINT FK_AnalysisStep01BasicType2412_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2411 DROP CONSTRAINT FK_AnalysisStep01BasicType2411_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2411 DROP CONSTRAINT FK_AnalysisStep01BasicType2411_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2314 DROP CONSTRAINT FK_AnalysisStep01BasicType2314_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2314 DROP CONSTRAINT FK_AnalysisStep01BasicType2314_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2313 DROP CONSTRAINT FK_AnalysisStep01BasicType2313_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2313 DROP CONSTRAINT FK_AnalysisStep01BasicType2313_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2214 DROP CONSTRAINT FK_AnalysisStep01BasicType2214_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2214 DROP CONSTRAINT FK_AnalysisStep01BasicType2214_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2213 DROP CONSTRAINT FK_AnalysisStep01BasicType2213_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2213 DROP CONSTRAINT FK_AnalysisStep01BasicType2213_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2114 DROP CONSTRAINT FK_AnalysisStep01BasicType2114_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2114 DROP CONSTRAINT FK_AnalysisStep01BasicType2114_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2113 DROP CONSTRAINT FK_AnalysisStep01BasicType2113_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2113 DROP CONSTRAINT FK_AnalysisStep01BasicType2113_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2112 DROP CONSTRAINT FK_AnalysisStep01BasicType2112_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2112 DROP CONSTRAINT FK_AnalysisStep01BasicType2112_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2111 DROP CONSTRAINT FK_AnalysisStep01BasicType2111_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2111 DROP CONSTRAINT FK_AnalysisStep01BasicType2111_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2000 DROP CONSTRAINT FK_AnalysisStep01BasicType2000_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2000 DROP CONSTRAINT FK_AnalysisStep01BasicType2000_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1612 DROP CONSTRAINT FK_AnalysisStep01BasicType1612_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1612 DROP CONSTRAINT FK_AnalysisStep01BasicType1612_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1611 DROP CONSTRAINT FK_AnalysisStep01BasicType1611_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1611 DROP CONSTRAINT FK_AnalysisStep01BasicType1611_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1512 DROP CONSTRAINT FK_AnalysisStep01BasicType1512_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1512 DROP CONSTRAINT FK_AnalysisStep01BasicType1512_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1511 DROP CONSTRAINT FK_AnalysisStep01BasicType1511_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1511 DROP CONSTRAINT FK_AnalysisStep01BasicType1511_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1414 DROP CONSTRAINT FK_AnalysisStep01BasicType1414_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1414 DROP CONSTRAINT FK_AnalysisStep01BasicType1414_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1413 DROP CONSTRAINT FK_AnalysisStep01BasicType1413_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1413 DROP CONSTRAINT FK_AnalysisStep01BasicType1413_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1412 DROP CONSTRAINT FK_AnalysisStep01BasicType1412_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1412 DROP CONSTRAINT FK_AnalysisStep01BasicType1412_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1411 DROP CONSTRAINT FK_AnalysisStep01BasicType1411_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1411 DROP CONSTRAINT FK_AnalysisStep01BasicType1411_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1314 DROP CONSTRAINT FK_AnalysisStep01BasicType1314_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1314 DROP CONSTRAINT FK_AnalysisStep01BasicType1314_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1313 DROP CONSTRAINT FK_AnalysisStep01BasicType1313_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1313 DROP CONSTRAINT FK_AnalysisStep01BasicType1313_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1214 DROP CONSTRAINT FK_AnalysisStep01BasicType1214_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1214 DROP CONSTRAINT FK_AnalysisStep01BasicType1214_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1213 DROP CONSTRAINT FK_AnalysisStep01BasicType1213_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1213 DROP CONSTRAINT FK_AnalysisStep01BasicType1213_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1114 DROP CONSTRAINT FK_AnalysisStep01BasicType1114_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1114 DROP CONSTRAINT FK_AnalysisStep01BasicType1114_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1113 DROP CONSTRAINT FK_AnalysisStep01BasicType1113_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1113 DROP CONSTRAINT FK_AnalysisStep01BasicType1113_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1112 DROP CONSTRAINT FK_AnalysisStep01BasicType1112_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1112 DROP CONSTRAINT FK_AnalysisStep01BasicType1112_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1111 DROP CONSTRAINT FK_AnalysisStep01BasicType1111_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1111 DROP CONSTRAINT FK_AnalysisStep01BasicType1111_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1000 DROP CONSTRAINT FK_AnalysisStep01BasicType1000_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1000 DROP CONSTRAINT FK_AnalysisStep01BasicType1000_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType0600 DROP CONSTRAINT FK_AnalysisStep01BasicType0600_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType0600 DROP CONSTRAINT FK_AnalysisStep01BasicType0600_Horse
GO
ALTER TABLE dbo.WinFiveByYuko DROP CONSTRAINT DF_WinFiveByYuko_Guid
GO
ALTER TABLE dbo.WinFiveByRace DROP CONSTRAINT DF_WinFiveByRace_Guid
GO
ALTER TABLE dbo.WinFiveByPay DROP CONSTRAINT DF_WinFiveByPay_Guid
GO
ALTER TABLE dbo.WinFive DROP CONSTRAINT DF_WinFive_Guid
GO
ALTER TABLE dbo.WinFive DROP CONSTRAINT DF_WinFive_IsJraRace
GO
ALTER TABLE dbo.TrainingWoodChip DROP CONSTRAINT DF_TrainingWoodChip_Guid
GO
ALTER TABLE dbo.TrainingSlope DROP CONSTRAINT DF_TrainingSlope_Guid
GO
ALTER TABLE dbo.TrainerByTrackType DROP CONSTRAINT DF_TrainerByTrackType_Guid
GO
ALTER TABLE dbo.TrainerByTotal DROP CONSTRAINT DF_TrainerByTotal_Guid
GO
ALTER TABLE dbo.TrainerByDistanceType DROP CONSTRAINT DF_TrainerByDistance_Guid
GO
ALTER TABLE dbo.Trainer DROP CONSTRAINT DF_Trainer_Guid
GO
ALTER TABLE dbo.StatsPrepBeforeRaceHorseByRaceType1 DROP CONSTRAINT DF_StatsPrepBeforeRaceHorseByRaceType1_Guid
GO
ALTER TABLE dbo.StatsPrepBeforeRaceHorseByAll DROP CONSTRAINT DF_StatsPrepBeforeRaceHorseByAll_Guid
GO
ALTER TABLE dbo.StatsPrepAfterRaceHorseByPrepRaceType1 DROP CONSTRAINT DF_StatsPrepAfterRaceHorseByPrepRaceType1_Guid
GO
ALTER TABLE dbo.StatsPrepAfterRaceHorseByAll DROP CONSTRAINT DF_StatsPrepAfterRaceHorseByAll_Guid
GO
ALTER TABLE dbo.StatsBasicBeforeRaceHorseByRaceType1 DROP CONSTRAINT DF_StatsBasicBeforeRaceHorseByRaceType1_Guid
GO
ALTER TABLE dbo.StatsBasicBeforeRaceHorseByAll DROP CONSTRAINT DF_StatsBasicBeforeRaceHorseByAll_Guid
GO
ALTER TABLE dbo.StatsBasicBeforeRaceByRaceType1 DROP CONSTRAINT DF_StatsBasicBeforeRaceByRaceType1_Guid
GO
ALTER TABLE dbo.StatsBasicBeforeRaceByAll DROP CONSTRAINT DF_StatsBasicBeforeRaceByAll_Guid
GO
ALTER TABLE dbo.StatsBasicBeforeOddsByRaceType1 DROP CONSTRAINT DF_StatsBasicBeforeOddsByRaceType1_Guid
GO
ALTER TABLE dbo.StatsBasicBeforeOddsByAll DROP CONSTRAINT DF_StatsBasicBeforeOddsByAll_Guid
GO
ALTER TABLE dbo.StatsBasicBeforeDmByRaceType1 DROP CONSTRAINT DF_StatsBasicBeforeDmByRaceType1_Guid
GO
ALTER TABLE dbo.StatsBasicBeforeDmByAll DROP CONSTRAINT DF_StatsBasicBeforeDmByAll_Guid
GO
ALTER TABLE dbo.StatsBasicAfterRaceHorseByRaceType1 DROP CONSTRAINT DF_StatsBasicAfterRaceHorseByRaceType1_Guid
GO
ALTER TABLE dbo.StatsBasicAfterRaceHorseByAll DROP CONSTRAINT DF_StatsBasicAfterRaceHorseByAll_Guid
GO
ALTER TABLE dbo.StatsBasicAfterRaceByRaceType1 DROP CONSTRAINT DF_StatsBasicAfterRaceByRaceType1_Guid
GO
ALTER TABLE dbo.StatsBasicAfterRaceByAll DROP CONSTRAINT DF_StatsBasicAfterRaceByAll_Guid
GO
ALTER TABLE dbo.SpecialRaceByHorse DROP CONSTRAINT DF_SpecialRaceByHorse_Guid
GO
ALTER TABLE dbo.SpecialRace DROP CONSTRAINT DF_SpecialRace_Guid
GO
ALTER TABLE dbo.Silk DROP CONSTRAINT DF_Silk_Guid
GO
ALTER TABLE dbo.Schedule DROP CONSTRAINT DF_Schedule_Guid
GO
ALTER TABLE dbo.Sanku DROP CONSTRAINT DF_Sanku_Guid
GO
ALTER TABLE dbo.Sale DROP CONSTRAINT DF_Sale_Guid
GO
ALTER TABLE dbo.ReplRaceHorse DROP CONSTRAINT DF_ReplRaceHorse_Guid
GO
ALTER TABLE dbo.ReplRace DROP CONSTRAINT DF_ReplRace_Guid
GO
ALTER TABLE dbo.RaceRecord DROP CONSTRAINT DF_RaceRecord_Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByTrackType DROP CONSTRAINT DF_RaceHorseHistoryByTrainerByTrackType_Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByJyo DROP CONSTRAINT DF_RaceHorseHistoryByTrainerByJyo_Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByDistanceType DROP CONSTRAINT DF_RaceHorseHistoryByTrainerByDistanceType_Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainer DROP CONSTRAINT DF_RaceHorseHistoryByTrainer_Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByTrackType DROP CONSTRAINT DF_RaceHorseHistoryByJockeyByTrackType_Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByJyo DROP CONSTRAINT DF_RaceHorseHistoryByJockeyByJyo_Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByDistanceType DROP CONSTRAINT DF_RaceHorseHistoryByJockeyByDistanceType_Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByJockey DROP CONSTRAINT DF_RaceHorseHistoryByJocky_Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackType DROP CONSTRAINT DF_RaceHorseHistoryByHorseByTrackType_Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackCondition DROP CONSTRAINT DF_RaceHorseHistoryByHorseByTrackCondition_Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTotal DROP CONSTRAINT DF_RaceHorseHistoryByHorseByTotal_Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByRunType DROP CONSTRAINT DF_RaceHorseHistoryByHorseByRunTypeGuid
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByJyo DROP CONSTRAINT DF_RaceHorseHistoryByHorseByJyo_Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByDistanceType DROP CONSTRAINT DF_RaceHorseHistoryByHorseByDistanceType_Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByCourseType DROP CONSTRAINT DF_RaceHorseHistoryByHorseByCourseType_Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByHorse DROP CONSTRAINT DF_RaceHorseHistoryByHorse_Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByBreederByTotal DROP CONSTRAINT DF_RaceHorseHistoryByBreederByTotal_Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByBreeder DROP CONSTRAINT DF_RaceHorseHistoryByBreeder_Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusiByTotal DROP CONSTRAINT DF_RaceHorseHistoryByBanusiByTotal_Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusi DROP CONSTRAINT DF_RaceHorseHistoryByBanusi_Guid
GO
ALTER TABLE dbo.RaceHorseHistory DROP CONSTRAINT DF_RaceHorseHistory_Guid
GO
ALTER TABLE dbo.RaceHorseHistory DROP CONSTRAINT DF_RaceHorseHistory_Timestamp02
GO
ALTER TABLE dbo.RaceHorse DROP CONSTRAINT DF_RaceHorse_Guid
GO
ALTER TABLE dbo.RaceExclusion DROP CONSTRAINT DF_RaceExclusion_Guid
GO
ALTER TABLE dbo.RaceByLapTime DROP CONSTRAINT DF_RaceByLapTime_Guid
GO
ALTER TABLE dbo.RaceByCornerPosition DROP CONSTRAINT DF_RaceByCornerPosition_Guid
GO
ALTER TABLE dbo.Race DROP CONSTRAINT DF_Race_Guid
GO
ALTER TABLE dbo.PredictModels DROP CONSTRAINT DF_PredictModels_Guid
GO
ALTER TABLE dbo.PredictModels DROP CONSTRAINT DF_PredictModels_Timestamp011
GO
ALTER TABLE dbo.PredictModels DROP CONSTRAINT DF_PredictModels_Timestamp01
GO
ALTER TABLE dbo.PredictByWinFive DROP CONSTRAINT DF_PredictByWinFive_Guid
GO
ALTER TABLE dbo.PredictByWin_001 DROP CONSTRAINT DF_PredictByWin_Guid
GO
ALTER TABLE dbo.PredictByWide_001 DROP CONSTRAINT DF_PredictByWide_Guid
GO
ALTER TABLE dbo.PredictByTrio_001 DROP CONSTRAINT DF_PredictByTrio_Guid
GO
ALTER TABLE dbo.PredictByTrifecta_001 DROP CONSTRAINT DF_PredictByTrifecta_Guid
GO
ALTER TABLE dbo.PredictByQuinella_001 DROP CONSTRAINT DF_PredictByQuinella_Guid
GO
ALTER TABLE dbo.PredictByPlace_001 DROP CONSTRAINT DF_PredictByPlace_Guid
GO
ALTER TABLE dbo.PredictByExacta_001 DROP CONSTRAINT DF_PredictByExacta_Guid
GO
ALTER TABLE dbo.PredictByBracket_001 DROP CONSTRAINT DF_PredictByBracket_Guid
GO
ALTER TABLE dbo.PayoffByPayAll DROP CONSTRAINT DF_PayoffByPayAll_Guid
GO
ALTER TABLE dbo.PayoffByHenkanWaku DROP CONSTRAINT DF_PayoffByHenkanWaku_Guid
GO
ALTER TABLE dbo.PayoffByHenkanUma DROP CONSTRAINT DF_PayoffByHenkanUma_Guid
GO
ALTER TABLE dbo.PayoffByHenkanDoWaku DROP CONSTRAINT DF_PayoffByHenkanDoWaku_Guid
GO
ALTER TABLE dbo.PayoffByFlag DROP CONSTRAINT DF_PayoffByFlag_Guid
GO
ALTER TABLE dbo.Payoff DROP CONSTRAINT DF_Payoff_Guid
GO
ALTER TABLE dbo.OddsByWin DROP CONSTRAINT DF_OddsByWin_Guid
GO
ALTER TABLE dbo.OddsByWide DROP CONSTRAINT DF_OddsByWide_Guid
GO
ALTER TABLE dbo.OddsByTrio DROP CONSTRAINT DF_OddsByTrio_Guid
GO
ALTER TABLE dbo.OddsByTrifecta DROP CONSTRAINT DF_OddsByTrifecta_Guid
GO
ALTER TABLE dbo.OddsByQuinella DROP CONSTRAINT DF_OddsByQuinella_Guid
GO
ALTER TABLE dbo.OddsByPlace DROP CONSTRAINT DF_OddsByPlace_Guid
GO
ALTER TABLE dbo.OddsByExacta DROP CONSTRAINT DF_OddsByExacta_Guid
GO
ALTER TABLE dbo.OddsByBracket DROP CONSTRAINT DF_OddsByBracket_Guid
GO
ALTER TABLE dbo.Odds6 DROP CONSTRAINT DF_Odds6_Guid
GO
ALTER TABLE dbo.Odds5 DROP CONSTRAINT DF_Odds5_Guid
GO
ALTER TABLE dbo.Odds4 DROP CONSTRAINT DF_Odds4_Guid
GO
ALTER TABLE dbo.Odds3 DROP CONSTRAINT DF_Odds3_Guid
GO
ALTER TABLE dbo.Odds2 DROP CONSTRAINT DF_Odds2_Guid
GO
ALTER TABLE dbo.Odds1 DROP CONSTRAINT DF_Odds1_Guid
GO
ALTER TABLE dbo.NameOrigin DROP CONSTRAINT DF_NameOrigin_Guid
GO
ALTER TABLE dbo.MasterYoubi DROP CONSTRAINT DF_MasterYoubi_Guid
GO
ALTER TABLE dbo.MasterUmaKigo DROP CONSTRAINT DF_MasterUmaKigo_Guid
GO
ALTER TABLE dbo.MasterTrackType3 DROP CONSTRAINT DF_MasterTrackType3_Guid
GO
ALTER TABLE dbo.MasterTrackType2 DROP CONSTRAINT DF_MasterTrackType2_Guid
GO
ALTER TABLE dbo.MasterTrackType DROP CONSTRAINT DF_MasterTrackType_Guid
GO
ALTER TABLE dbo.MasterTrackCondition DROP CONSTRAINT DF_MasterTrackCondition_Guid
GO
ALTER TABLE dbo.MasterTrack DROP CONSTRAINT DF_MasterTrack_Guid
GO
ALTER TABLE dbo.MasterTozai DROP CONSTRAINT DF_MasterTozai_Guid
GO
ALTER TABLE dbo.MasterTenko DROP CONSTRAINT DF_MasterTenko_Guid
GO
ALTER TABLE dbo.MasterSyubetu DROP CONSTRAINT DF_MasterSyubetsu_Guid
GO
ALTER TABLE dbo.MasterStats DROP CONSTRAINT DF_MasterStats_Guid
GO
ALTER TABLE dbo.MasterSmile DROP CONSTRAINT DF_MasterSmile_Guid
GO
ALTER TABLE dbo.MasterSex DROP CONSTRAINT DF_MasterSex_Guid
GO
ALTER TABLE dbo.MasterRunType DROP CONSTRAINT DF_MasterRunType_Guid
GO
ALTER TABLE dbo.MasterPlace2 DROP CONSTRAINT DF_MasterPlace2_Guid
GO
ALTER TABLE dbo.MasterPlace DROP CONSTRAINT DF_MasterPlace_Guid
GO
ALTER TABLE dbo.MasterOpenModeDataSpec DROP CONSTRAINT DF_MasterOpenModeDataSpec_Guid
GO
ALTER TABLE dbo.MasterMinarai DROP CONSTRAINT DF_MasterMinarai_Guid
GO
ALTER TABLE dbo.MasterLicense DROP CONSTRAINT DF_MasterLicense_Guid
GO
ALTER TABLE dbo.MasterKigo DROP CONSTRAINT DF_MasterKigo_Guid
GO
ALTER TABLE dbo.MasterKeiro DROP CONSTRAINT DF_MasterKeiro_Guid
GO
ALTER TABLE dbo.MasterJyuryo DROP CONSTRAINT DF_MasterJyuryo_Guid
GO
ALTER TABLE dbo.MasterJyoken5 DROP CONSTRAINT DF_MasterJyoken5_Guid
GO
ALTER TABLE dbo.MasterJyoken DROP CONSTRAINT DF_Master2Jyoken_Guid
GO
ALTER TABLE dbo.MasterHorseNum DROP CONSTRAINT DF_MasterHorseNum_Guid
GO
ALTER TABLE dbo.MasterHinsyu DROP CONSTRAINT DF_MasterHinsyu_Guid
GO
ALTER TABLE dbo.MasterGrade DROP CONSTRAINT DF_MasterGrade_Guid
GO
ALTER TABLE dbo.MasterDistanceType2 DROP CONSTRAINT DF_MasterDistanceType2_Guid
GO
ALTER TABLE dbo.MasterDistanceType DROP CONSTRAINT DF_MasterDistanceType_Guid
GO
ALTER TABLE dbo.MasterDataSpec DROP CONSTRAINT DF_MasterDataSpec_Guid
GO
ALTER TABLE dbo.MasterCourseType DROP CONSTRAINT DF_MasterCourseType_Guid
GO
ALTER TABLE dbo.MasterCourseKubun DROP CONSTRAINT DF_MasterCourseKubun_Guid
GO
ALTER TABLE dbo.MasterChakusa DROP CONSTRAINT DF_MasterChakusa_Guid
GO
ALTER TABLE dbo.MasterBracketNum DROP CONSTRAINT DF_MasterBracketNum_Guid
GO
ALTER TABLE dbo.MasterBlinker DROP CONSTRAINT DF_MasterBlinker_Guid
GO
ALTER TABLE dbo.MasterBetType DROP CONSTRAINT DF_MasterBetType_Guid
GO
ALTER TABLE dbo.Master2Weight DROP CONSTRAINT DF_Master2Weight_Guid
GO
ALTER TABLE dbo.Master2Weight DROP CONSTRAINT DF_Master2Weight_Timestamp01
GO
ALTER TABLE dbo.Master2RaceType9 DROP CONSTRAINT DF_Master2RaceType9_Guid
GO
ALTER TABLE dbo.Master2RaceType9 DROP CONSTRAINT DF_Master2RaceType9_Timestamp01
GO
ALTER TABLE dbo.Master2RaceType8 DROP CONSTRAINT DF_Master2RaceType8_Guid
GO
ALTER TABLE dbo.Master2RaceType8 DROP CONSTRAINT DF_Master2RaceType8_Timestamp01
GO
ALTER TABLE dbo.Master2RaceType7 DROP CONSTRAINT DF_Master2RaceType7_Guid
GO
ALTER TABLE dbo.Master2RaceType7 DROP CONSTRAINT DF_Master2RaceType7_Timestamp01
GO
ALTER TABLE dbo.Master2RaceType6 DROP CONSTRAINT DF_Master2RaceType6_Guid
GO
ALTER TABLE dbo.Master2RaceType6 DROP CONSTRAINT DF_Master2RaceType6_Timestamp01
GO
ALTER TABLE dbo.Master2RaceType5 DROP CONSTRAINT DF_Master2RaceType5_Guid
GO
ALTER TABLE dbo.Master2RaceType5 DROP CONSTRAINT DF_Master2RaceType5_Timestamp01
GO
ALTER TABLE dbo.Master2RaceType4 DROP CONSTRAINT DF_Master2RaceType4_Guid
GO
ALTER TABLE dbo.Master2RaceType4 DROP CONSTRAINT DF_Master2RaceType4_Timestamp01
GO
ALTER TABLE dbo.Master2RaceType3 DROP CONSTRAINT DF_Master2RaceType3_Guid
GO
ALTER TABLE dbo.Master2RaceType3 DROP CONSTRAINT DF_Master2RaceType3_Timestamp01
GO
ALTER TABLE dbo.Master2RaceType2 DROP CONSTRAINT DF_Master2RaceType2_Guid
GO
ALTER TABLE dbo.Master2RaceType2 DROP CONSTRAINT DF_Master2RaceType2_Timestamp01
GO
ALTER TABLE dbo.Master2RaceType1 DROP CONSTRAINT DF_Master2RaceType1_Guid
GO
ALTER TABLE dbo.Master2RaceType1 DROP CONSTRAINT DF_Master2RaceType1_Timestamp01
GO
ALTER TABLE dbo.Master2Ninki DROP CONSTRAINT DF_Master2Ninki_Guid
GO
ALTER TABLE dbo.Master2Ninki DROP CONSTRAINT DF_Master2Ninki_Timestamp01
GO
ALTER TABLE dbo.Master2Handicap DROP CONSTRAINT DF_Master2Futan_Guid
GO
ALTER TABLE dbo.Master2Handicap DROP CONSTRAINT DF_Master2Futan_Timestamp01
GO
ALTER TABLE dbo.Master2Distance DROP CONSTRAINT DF_Master2Distance_Guid
GO
ALTER TABLE dbo.Master2Distance DROP CONSTRAINT DF_Master2Distance_Timestamp01
GO
ALTER TABLE dbo.Master2Class DROP CONSTRAINT DF_Master2Class_Guid
GO
ALTER TABLE dbo.Master2Class DROP CONSTRAINT DF_Master2Class_Timestamp01
GO
ALTER TABLE dbo.Keito DROP CONSTRAINT DF_Keito_Guid
GO
ALTER TABLE dbo.JockeyByTrackType DROP CONSTRAINT DF_JockeyByTrackType_Guid
GO
ALTER TABLE dbo.JockeyByTotal DROP CONSTRAINT DF_JockeyByTotal_Guid
GO
ALTER TABLE dbo.JockeyBySaikinJyusyo DROP CONSTRAINT DF_JockeyBySaikinJyusyo_Guid
GO
ALTER TABLE dbo.JockeyByHatuSyori DROP CONSTRAINT DF_JockeyByHatuSyori_Guid
GO
ALTER TABLE dbo.JockeyByHatsuKijyo DROP CONSTRAINT DF_JockeyByHatsuKijyo_Guid
GO
ALTER TABLE dbo.JockeyByDistanceType DROP CONSTRAINT DF_JockeyByDistanceType_Guid
GO
ALTER TABLE dbo.Jockey DROP CONSTRAINT DF_Jockey_Guid
GO
ALTER TABLE dbo.HorseByTrackCondition DROP CONSTRAINT DF_HorseByTrackCondition_Guid
GO
ALTER TABLE dbo.HorseByTotal DROP CONSTRAINT DF_HorseByTotal_Guid
GO
ALTER TABLE dbo.HorseBySmile DROP CONSTRAINT DF_HorseBySmile_Guid
GO
ALTER TABLE dbo.HorseByRunType DROP CONSTRAINT DF_HorseByRunType_Guid
GO
ALTER TABLE dbo.HorseByDistanceType DROP CONSTRAINT DF_HorseByDistanceType_Guid
GO
ALTER TABLE dbo.HorseByCourseType DROP CONSTRAINT DF_HorseByCourseType_Guid
GO
ALTER TABLE dbo.Horse DROP CONSTRAINT DF_Horse_Guid
GO
ALTER TABLE dbo.HansyokuParents DROP CONSTRAINT DF_HansyokuParents_Guid
GO
ALTER TABLE dbo.Hansyoku DROP CONSTRAINT DF_Hansyoku_Guid
GO
ALTER TABLE dbo.EventWeather DROP CONSTRAINT DF_EventWeather_Guid
GO
ALTER TABLE dbo.EventTimeChange DROP CONSTRAINT DF_EventTimeChange_Guid
GO
ALTER TABLE dbo.EventJockeyChange DROP CONSTRAINT DF_EventJockeyChange_Guid
GO
ALTER TABLE dbo.EventHorseWeight DROP CONSTRAINT DF_EventHorseWeight_Guid
GO
ALTER TABLE dbo.EventCourseChange DROP CONSTRAINT DF_EventCourseChange_Guid
GO
ALTER TABLE dbo.EventAvoid DROP CONSTRAINT DF_EventAvoid_Guid
GO
ALTER TABLE dbo.DataMiningTaisen DROP CONSTRAINT DF_DataMiningTaisen_Guid
GO
ALTER TABLE dbo.DataMining DROP CONSTRAINT DF_DataMining_Guid
GO
ALTER TABLE dbo.CourseInfo DROP CONSTRAINT DF_CourseInfo_Guid
GO
ALTER TABLE dbo.ConfigLastTimestamp DROP CONSTRAINT DF_ConfigLastTimestamp_Guid
GO
ALTER TABLE dbo.ConfigLastTimestamp DROP CONSTRAINT DF_ConfigLastTimestamp_Timestamp01
GO
ALTER TABLE dbo.ConfigIpatBalance DROP CONSTRAINT DF_ConfigIpatBalance_Guid
GO
ALTER TABLE dbo.ConfigIpatAccount DROP CONSTRAINT DF_Account_Guid
GO
ALTER TABLE dbo.ConfigIpatAccount DROP CONSTRAINT DF_Account_Id
GO
ALTER TABLE dbo.ConfigDataSpecRecKubun DROP CONSTRAINT DF_ConfigDataSpecRecKubun_Guid
GO
ALTER TABLE dbo.ConfigDataSpecRecKubun DROP CONSTRAINT DF_ConfigDataSpecRecKubun_Timestamp01
GO
ALTER TABLE dbo.ConfigBetMoney DROP CONSTRAINT DF_ConfigBetMoney_Guid
GO
ALTER TABLE dbo.ConfigBetMoney DROP CONSTRAINT DF_ConfigBetMoney_Timestamp01
GO
ALTER TABLE dbo.ConfigBetCountWinFive DROP CONSTRAINT DF_ConfigBetCountWinFive_Guid
GO
ALTER TABLE dbo.ConfigBetCount DROP CONSTRAINT DF_ConfigBetCount_Guid
GO
ALTER TABLE dbo.Breeder DROP CONSTRAINT DF_Breeder_Guid
GO
ALTER TABLE dbo.BetMgmtHistory DROP CONSTRAINT DF_BetMgmtHistory_Guid
GO
ALTER TABLE dbo.BetMgmtHistory DROP CONSTRAINT DF_BetMgmtHistory_RegDatetime
GO
ALTER TABLE dbo.BetMgmtByTemp DROP CONSTRAINT DF_BetMgmtByTemp_Guid
GO
ALTER TABLE dbo.BetMgmtBySim DROP CONSTRAINT DF_BetMgmtBySim_Guid
GO
ALTER TABLE dbo.BetMgmtByBet DROP CONSTRAINT DF_BetMgmtByBet_Guid
GO
ALTER TABLE dbo.BetHistoryMaster DROP CONSTRAINT DF_BetHistoryMaster_Guid
GO
ALTER TABLE dbo.BetHistoryDetail DROP CONSTRAINT DF_BetHistoryDetail_Guid
GO
ALTER TABLE dbo.Bet6ByTrifecta DROP CONSTRAINT DF_Bet6ByTrifecta_Guid
GO
ALTER TABLE dbo.Bet6ByHenkanUma DROP CONSTRAINT DF_Bet6ByHenkanUma_Guid
GO
ALTER TABLE dbo.Bet6 DROP CONSTRAINT DF_Bet6_Guid
GO
ALTER TABLE dbo.Bet1ByWin DROP CONSTRAINT DF_Bet1ByWin_Guid
GO
ALTER TABLE dbo.Bet1ByWide DROP CONSTRAINT DF_Bet1ByWide_Guid
GO
ALTER TABLE dbo.Bet1ByTrio DROP CONSTRAINT DF_Bet1ByTrio_Guid
GO
ALTER TABLE dbo.Bet1ByQuinella DROP CONSTRAINT DF_Bet1ByQuinella_Guid
GO
ALTER TABLE dbo.Bet1ByPlace DROP CONSTRAINT DF_Bet1ByPlace_Guid
GO
ALTER TABLE dbo.Bet1ByExacta DROP CONSTRAINT DF_Bet1ByExacta_Guid
GO
ALTER TABLE dbo.Bet1ByBracket DROP CONSTRAINT DF_Bet1ByBracket_Guid
GO
ALTER TABLE dbo.Bet1 DROP CONSTRAINT DF_Bet1_Guid
GO
ALTER TABLE dbo.BayesianTrial01 DROP CONSTRAINT DF_AnalyzeBayesian01Trial_Guid
GO
ALTER TABLE dbo.BaseStatsTrainerByRaceHorse DROP CONSTRAINT DF_BaseStatsTrainerByRaceHorse_Guid
GO
ALTER TABLE dbo.BaseStatsJockeyByRaceHorse DROP CONSTRAINT DF_BaseStatsJockeyByRaceHorse_Guid
GO
ALTER TABLE dbo.BaseStatsGen05HansyokuByRaceHorse DROP CONSTRAINT DF_BaseStatsGen05HansyokuByRaceHorse_Guid
GO
ALTER TABLE dbo.BaseStatsGen02HansyokuByRaceHorse DROP CONSTRAINT DF_BaseStatsGen02HansyokuByRaceHorse_Guid
GO
ALTER TABLE dbo.BaseStatsGen01HansyokuByRaceHorse DROP CONSTRAINT DF_BaseStatsGen01HansyokuByRaceHorse_Guid
GO
ALTER TABLE dbo.BaseStatsBanusiByRaceHorse DROP CONSTRAINT DF_BaseStatsBanusiByRaceHorse_Guid
GO
ALTER TABLE dbo.Banusi DROP CONSTRAINT DF_Banusi_Guid
GO
ALTER TABLE dbo.AnalysisStep03PrevRaceHorse DROP CONSTRAINT DF_AnalysisStep03PrevRaceHorse_Guid
GO
ALTER TABLE dbo.AnalysisStep03Jockey DROP CONSTRAINT DF_AnalysisStep03Jockey_Guid
GO
ALTER TABLE dbo.AnalysisStep03Gen02 DROP CONSTRAINT DF_AnalysisStep03Gen02_Guid
GO
ALTER TABLE dbo.AnalysisStep03Gen01 DROP CONSTRAINT DF_AnalysisStep03Gen01_Guid
GO
ALTER TABLE dbo.AnalysisStep03Basic DROP CONSTRAINT DF_AnalysisStep03Basic_Guid
GO
ALTER TABLE dbo.AnalysisStep02PrevRaceHorse DROP CONSTRAINT DF_AnalysisStep02PrevRaceHorse_Guid
GO
ALTER TABLE dbo.AnalysisStep02Jockey DROP CONSTRAINT DF_AnalysisStep02Jockey_Guid
GO
ALTER TABLE dbo.AnalysisStep02Gen02 DROP CONSTRAINT DF_AnalysisStep02Gen02_Guid
GO
ALTER TABLE dbo.AnalysisStep02Gen01 DROP CONSTRAINT DF_AnalysisStep02Gen01_Guid
GO
ALTER TABLE dbo.AnalysisStep02Basic DROP CONSTRAINT DF_AnalysisStep02Basic_Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType35 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType35_Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType35 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType35_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType31 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType31_Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType31 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType31_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType26 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType26_Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType26 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType26_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType25 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType25_Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType25 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType25_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType24 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType24_Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType24 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType24_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType23 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType23_Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType23 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType23_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType22 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType22_Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType22 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType22_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType21 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType21_Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType21 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType21_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType16 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType16_Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType16 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType16_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType15 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType15_Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType15 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType15_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType14 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType14_Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType14 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType14_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType13 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType13_Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType13 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType13_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType12 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType12_Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType12 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType12_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType11 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType11_Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType11 DROP CONSTRAINT DF_AnalysisStep01PrevRaceHorseType11_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrepType0000 DROP CONSTRAINT DF_AnalysisStep01PrepType0000_Guid
GO
ALTER TABLE dbo.AnalysisStep01PrepType0000 DROP CONSTRAINT DF_AnalysisStep01PrepType0000_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType35 DROP CONSTRAINT DF_AnalysisStep01JockeyType35_Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType35 DROP CONSTRAINT DF_AnalysisStep01JockeyType35_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType31 DROP CONSTRAINT DF_AnalysisStep01JockeyType31_Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType31 DROP CONSTRAINT DF_AnalysisStep01JockeyType31_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType26 DROP CONSTRAINT DF_AnalysisStep01JockeyType26_Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType26 DROP CONSTRAINT DF_AnalysisStep01JockeyType26_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType2512 DROP CONSTRAINT DF_AnalysisStep01JockeyType2512_Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType2512 DROP CONSTRAINT DF_AnalysisStep01JockeyType2512_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType25 DROP CONSTRAINT DF_AnalysisStep01JockeyType25_Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType25 DROP CONSTRAINT DF_AnalysisStep01JockeyType25_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType24 DROP CONSTRAINT DF_AnalysisStep01JockeyType24_Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType24 DROP CONSTRAINT DF_AnalysisStep01JockeyType24_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType23 DROP CONSTRAINT DF_AnalysisStep01JockeyType23_Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType23 DROP CONSTRAINT DF_AnalysisStep01JockeyType23_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType22 DROP CONSTRAINT DF_AnalysisStep01JockeyType22_Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType22 DROP CONSTRAINT DF_AnalysisStep01JockeyType22_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType21 DROP CONSTRAINT DF_AnalysisStep01JockeyType21_Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType21 DROP CONSTRAINT DF_AnalysisStep01JockeyType21_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType16 DROP CONSTRAINT DF_AnalysisStep01JockeyType16_Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType16 DROP CONSTRAINT DF_AnalysisStep01JockeyType16_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType15 DROP CONSTRAINT DF_AnalysisStep01JockeyType15_Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType15 DROP CONSTRAINT DF_AnalysisStep01JockeyType15_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType14 DROP CONSTRAINT DF_AnalysisStep01JockeyType14_Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType14 DROP CONSTRAINT DF_AnalysisStep01JockeyType14_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType13 DROP CONSTRAINT DF_AnalysisStep01JockeyType13_Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType13 DROP CONSTRAINT DF_AnalysisStep01JockeyType13_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType12 DROP CONSTRAINT DF_AnalysisStep01JockeyType12_Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType12 DROP CONSTRAINT DF_AnalysisStep01JockeyType12_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType11 DROP CONSTRAINT DF_AnalysisStep01JockeyType11_Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType11 DROP CONSTRAINT DF_AnalysisStep01JockeyType11_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type35 DROP CONSTRAINT DF_AnalysisStep01Gen02Type35_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type35 DROP CONSTRAINT DF_AnalysisStep01Gen02Type35_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type31 DROP CONSTRAINT DF_AnalysisStep01Gen02Type31_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type31 DROP CONSTRAINT DF_AnalysisStep01Gen02Type31_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type26 DROP CONSTRAINT DF_AnalysisStep01Gen02Type26_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type26 DROP CONSTRAINT DF_AnalysisStep01Gen02Type26_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type2512 DROP CONSTRAINT DF_AnalysisStep01Gen02Type2512_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type2512 DROP CONSTRAINT DF_AnalysisStep01Gen02Type2512_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type25 DROP CONSTRAINT DF_AnalysisStep01Gen02Type25_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type25 DROP CONSTRAINT DF_AnalysisStep01Gen02Type25_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type24 DROP CONSTRAINT DF_AnalysisStep01Gen02Type24_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type24 DROP CONSTRAINT DF_AnalysisStep01Gen02Type24_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type23 DROP CONSTRAINT DF_AnalysisStep01Gen02Type23_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type23 DROP CONSTRAINT DF_AnalysisStep01Gen02Type23_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type22 DROP CONSTRAINT DF_AnalysisStep01Gen02Type22_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type22 DROP CONSTRAINT DF_AnalysisStep01Gen02Type22_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type21 DROP CONSTRAINT DF_AnalysisStep01Gen02Type21_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type21 DROP CONSTRAINT DF_AnalysisStep01Gen02Type21_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type16 DROP CONSTRAINT DF_AnalysisStep01Gen02Type16_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type16 DROP CONSTRAINT DF_AnalysisStep01Gen02Type16_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type15 DROP CONSTRAINT DF_AnalysisStep01Gen02Type15_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type15 DROP CONSTRAINT DF_AnalysisStep01Gen02Type15_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type14 DROP CONSTRAINT DF_AnalysisStep01Gen02Type14_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type14 DROP CONSTRAINT DF_AnalysisStep01Gen02Type14_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type13 DROP CONSTRAINT DF_AnalysisStep01Gen02Type13_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type13 DROP CONSTRAINT DF_AnalysisStep01Gen02Type13_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type12 DROP CONSTRAINT DF_AnalysisStep01Gen02Type12_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type12 DROP CONSTRAINT DF_AnalysisStep01Gen02Type12_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type11 DROP CONSTRAINT DF_AnalysisStep01Gen02Type11_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type11 DROP CONSTRAINT DF_AnalysisStep01Gen02Type11_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type35 DROP CONSTRAINT DF_AnalysisStep01Gen01Type35_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type35 DROP CONSTRAINT DF_AnalysisStep01Gen01Type35_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type31 DROP CONSTRAINT DF_AnalysisStep01Gen01Type31_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type31 DROP CONSTRAINT DF_AnalysisStep01Gen01Type31_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type26 DROP CONSTRAINT DF_AnalysisStep01Gen01Type26_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type26 DROP CONSTRAINT DF_AnalysisStep01Gen01Type26_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type2512 DROP CONSTRAINT DF_AnalysisStep01Gen01Type2512_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type2512 DROP CONSTRAINT DF_AnalysisStep01Gen01Type2512_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type25 DROP CONSTRAINT DF_AnalysisStep01Gen01Type25_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type25 DROP CONSTRAINT DF_AnalysisStep01Gen01Type25_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type24 DROP CONSTRAINT DF_AnalysisStep01Gen01Type24_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type24 DROP CONSTRAINT DF_AnalysisStep01Gen01Type24_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type23 DROP CONSTRAINT DF_AnalysisStep01Gen01Type23_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type23 DROP CONSTRAINT DF_AnalysisStep01Gen01Type23_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type22 DROP CONSTRAINT DF_AnalysisStep01Gen01Type22_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type22 DROP CONSTRAINT DF_AnalysisStep01Gen01Type22_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type21 DROP CONSTRAINT DF_AnalysisStep01Gen01Type21_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type21 DROP CONSTRAINT DF_AnalysisStep01Gen01Type21_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type16 DROP CONSTRAINT DF_AnalysisStep01Gen01Type16_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type16 DROP CONSTRAINT DF_AnalysisStep01Gen01Type16_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type15 DROP CONSTRAINT DF_AnalysisStep01Gen01Type15_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type15 DROP CONSTRAINT DF_AnalysisStep01Gen01Type15_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type14 DROP CONSTRAINT DF_AnalysisStep01Gen01Type14_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type14 DROP CONSTRAINT DF_AnalysisStep01Gen01Type14_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type13 DROP CONSTRAINT DF_AnalysisStep01Gen01Type13_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type13 DROP CONSTRAINT DF_AnalysisStep01Gen01Type13_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type12 DROP CONSTRAINT DF_AnalysisStep01Gen01Type12_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type12 DROP CONSTRAINT DF_AnalysisStep01Gen01Type12_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type11 DROP CONSTRAINT DF_AnalysisStep01Gen01Type11_Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type11 DROP CONSTRAINT DF_AnalysisStep01Gen01Type11_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType3519 DROP CONSTRAINT DF_AnalysisStep01BasicType3519_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType3519 DROP CONSTRAINT DF_AnalysisStep01BasicType3519_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType3518 DROP CONSTRAINT DF_AnalysisStep01BasicType3518_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType3518 DROP CONSTRAINT DF_AnalysisStep01BasicType3518_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType3119 DROP CONSTRAINT DF_AnalysisStep01BasicType3119_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType3119 DROP CONSTRAINT DF_AnalysisStep01BasicType3119_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType3118 DROP CONSTRAINT DF_AnalysisStep01BasicType3118_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType3118 DROP CONSTRAINT DF_AnalysisStep01BasicType3118_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType3000 DROP CONSTRAINT DF_AnalysisStep01BasicType3000_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType3000 DROP CONSTRAINT DF_AnalysisStep01BasicType3000_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2612 DROP CONSTRAINT DF_AnalysisStep01BasicType2612_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2612 DROP CONSTRAINT DF_AnalysisStep01BasicType2612_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2611 DROP CONSTRAINT DF_AnalysisStep01BasicType2611_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2611 DROP CONSTRAINT DF_AnalysisStep01BasicType2611_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2512 DROP CONSTRAINT DF_AnalysisStep01BasicType2512_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2512 DROP CONSTRAINT DF_AnalysisStep01BasicType2512_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2511 DROP CONSTRAINT DF_AnalysisStep01BasicType2511_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2511 DROP CONSTRAINT DF_AnalysisStep01BasicType2511_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2414 DROP CONSTRAINT DF_AnalysisStep01BasicType2414_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2414 DROP CONSTRAINT DF_AnalysisStep01BasicType2414_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2413 DROP CONSTRAINT DF_AnalysisStep01BasicType2413_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2413 DROP CONSTRAINT DF_AnalysisStep01BasicType2413_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2412 DROP CONSTRAINT DF_AnalysisStep01BasicType2412_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2412 DROP CONSTRAINT DF_AnalysisStep01BasicType2412_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2411 DROP CONSTRAINT DF_AnalysisStep01BasicType2411_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2411 DROP CONSTRAINT DF_AnalysisStep01BasicType2411_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2314 DROP CONSTRAINT DF_AnalysisStep01BasicType2314_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2314 DROP CONSTRAINT DF_AnalysisStep01BasicType2314_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2313 DROP CONSTRAINT DF_AnalysisStep01BasicType2313_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2313 DROP CONSTRAINT DF_AnalysisStep01BasicType2313_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2214 DROP CONSTRAINT DF_AnalysisStep01BasicType2214_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2214 DROP CONSTRAINT DF_AnalysisStep01BasicType2214_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2213 DROP CONSTRAINT DF_AnalysisStep01BasicType2213_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2213 DROP CONSTRAINT DF_AnalysisStep01BasicType2213_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2114 DROP CONSTRAINT DF_AnalysisStep01BasicType2114_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2114 DROP CONSTRAINT DF_AnalysisStep01BasicType2114_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2113 DROP CONSTRAINT DF_AnalysisStep01BasicType2113_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2113 DROP CONSTRAINT DF_AnalysisStep01BasicType2113_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2112 DROP CONSTRAINT DF_AnalysisStep01BasicType2112_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2112 DROP CONSTRAINT DF_AnalysisStep01BasicType2112_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2111 DROP CONSTRAINT DF_AnalysisStep01BasicType2111_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2111 DROP CONSTRAINT DF_AnalysisStep01BasicType2111_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2000 DROP CONSTRAINT DF_AnalysisStep01BasicType2000_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2000 DROP CONSTRAINT DF_AnalysisStep01BasicType2000_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1612 DROP CONSTRAINT DF_AnalysisStep01BasicType1612_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1612 DROP CONSTRAINT DF_AnalysisStep01BasicType1612_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1611 DROP CONSTRAINT DF_AnalysisStep01BasicType1611_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1611 DROP CONSTRAINT DF_AnalysisStep01BasicType1611_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1512 DROP CONSTRAINT DF_AnalysisStep01BasicType1512_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1512 DROP CONSTRAINT DF_AnalysisStep01BasicType1512_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1511 DROP CONSTRAINT DF_AnalysisStep01BasicType1511_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1511 DROP CONSTRAINT DF_AnalysisStep01BasicType1511_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1414 DROP CONSTRAINT DF_AnalysisStep01BasicType1414_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1414 DROP CONSTRAINT DF_AnalysisStep01BasicType1414_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1413 DROP CONSTRAINT DF_AnalysisStep01BasicType1413_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1413 DROP CONSTRAINT DF_AnalysisStep01BasicType1413_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1412 DROP CONSTRAINT DF_AnalysisStep01BasicType1412_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1412 DROP CONSTRAINT DF_AnalysisStep01BasicType1412_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1411 DROP CONSTRAINT DF_AnalysisStep01BasicType1411_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1411 DROP CONSTRAINT DF_AnalysisStep01BasicType1411_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1314 DROP CONSTRAINT DF_AnalysisStep01BasicType1314_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1314 DROP CONSTRAINT DF_AnalysisStep01BasicType1314_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1313 DROP CONSTRAINT DF_AnalysisStep01BasicType1313_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1313 DROP CONSTRAINT DF_AnalysisStep01BasicType1313_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1214 DROP CONSTRAINT DF_AnalysisStep01BasicType1214_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1214 DROP CONSTRAINT DF_AnalysisStep01BasicType1214_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1213 DROP CONSTRAINT DF_AnalysisStep01BasicType1213_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1213 DROP CONSTRAINT DF_AnalysisStep01BasicType1213_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1114 DROP CONSTRAINT DF_AnalysisStep01BasicType1114_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1114 DROP CONSTRAINT DF_AnalysisStep01BasicType1114_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1113 DROP CONSTRAINT DF_AnalysisStep01BasicType1113_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1113 DROP CONSTRAINT DF_AnalysisStep01BasicType1113_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1112 DROP CONSTRAINT DF_AnalysisStep01BasicType1112_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1112 DROP CONSTRAINT DF_AnalysisStep01BasicType1112_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1111 DROP CONSTRAINT DF_AnalysisStep01BasicType1111_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1111 DROP CONSTRAINT DF_AnalysisStep01BasicType1111_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1000 DROP CONSTRAINT DF_AnalysisStep01BasicType1000_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1000 DROP CONSTRAINT DF_AnalysisStep01BasicType1000_Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType0600 DROP CONSTRAINT DF_AnalysisStep01BasicType0600_Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType0600 DROP CONSTRAINT DF_AnalysisStep01BasicType0600_Timestamp01
GO
DROP INDEX IX_ReplRaceHorse_007
    ON dbo.ReplRaceHorse
GO
DROP INDEX IX_ReplRaceHorse_006
    ON dbo.ReplRaceHorse
GO
DROP INDEX IX_ReplRaceHorse_005
    ON dbo.ReplRaceHorse
GO
DROP INDEX IX_ReplRaceHorse_004
    ON dbo.ReplRaceHorse
GO
DROP INDEX IX_ReplRaceHorse_003
    ON dbo.ReplRaceHorse
GO
DROP INDEX IX_ReplRaceHorse_002
    ON dbo.ReplRaceHorse
GO
DROP INDEX IX_ReplRaceHorse_001
    ON dbo.ReplRaceHorse
GO
DROP INDEX IX_ReplRace_002
    ON dbo.ReplRace
GO
DROP INDEX IX_ReplRace_001
    ON dbo.ReplRace
GO
DROP INDEX IX_RaceHorse_007
    ON dbo.RaceHorse
GO
DROP INDEX IX_RaceHorse_006
    ON dbo.RaceHorse
GO
DROP INDEX IX_RaceHorse_005
    ON dbo.RaceHorse
GO
DROP INDEX IX_RaceHorse_004
    ON dbo.RaceHorse
GO
DROP INDEX IX_RaceHorse_003
    ON dbo.RaceHorse
GO
DROP INDEX IX_RaceHorse_002
    ON dbo.RaceHorse
GO
DROP INDEX IX_RaceHorse_001
    ON dbo.RaceHorse
GO
DROP INDEX IX_Race_002
    ON dbo.Race
GO
DROP INDEX IX_Race_001
    ON dbo.Race
GO
DROP INDEX IX_Horse_003
    ON dbo.Horse
GO
DROP INDEX IX_Horse_002
    ON dbo.Horse
GO
DROP INDEX IX_Horse_001
    ON dbo.Horse
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[WinFiveByYuko]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.WinFiveByYuko
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[WinFiveByRace]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.WinFiveByRace
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[WinFiveByPay]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.WinFiveByPay
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[WinFive]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.WinFive
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[TrainingWoodChip]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.TrainingWoodChip
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[TrainingSlope]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.TrainingSlope
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[TrainerByTrackType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.TrainerByTrackType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[TrainerByTotal]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.TrainerByTotal
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[TrainerByDistanceType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.TrainerByDistanceType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Trainer]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Trainer
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[StatsPrepBeforeRaceHorseByRaceType1]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.StatsPrepBeforeRaceHorseByRaceType1
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[StatsPrepBeforeRaceHorseByAll]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.StatsPrepBeforeRaceHorseByAll
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[StatsPrepAfterRaceHorseByPrepRaceType1]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.StatsPrepAfterRaceHorseByPrepRaceType1
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[StatsPrepAfterRaceHorseByAll]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.StatsPrepAfterRaceHorseByAll
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicBeforeRaceHorseByRaceType1]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.StatsBasicBeforeRaceHorseByRaceType1
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicBeforeRaceHorseByAll]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.StatsBasicBeforeRaceHorseByAll
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicBeforeRaceByRaceType1]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.StatsBasicBeforeRaceByRaceType1
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicBeforeRaceByAll]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.StatsBasicBeforeRaceByAll
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicBeforeOddsByRaceType1]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.StatsBasicBeforeOddsByRaceType1
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicBeforeOddsByAll]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.StatsBasicBeforeOddsByAll
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicBeforeDmByRaceType1]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.StatsBasicBeforeDmByRaceType1
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicBeforeDmByAll]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.StatsBasicBeforeDmByAll
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicAfterRaceHorseByRaceType1]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.StatsBasicAfterRaceHorseByRaceType1
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicAfterRaceHorseByAll]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.StatsBasicAfterRaceHorseByAll
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicAfterRaceByRaceType1]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.StatsBasicAfterRaceByRaceType1
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicAfterRaceByAll]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.StatsBasicAfterRaceByAll
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[SpecialRaceByHorse]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.SpecialRaceByHorse
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[SpecialRace]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.SpecialRace
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Silk]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Silk
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Schedule]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Schedule
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Sanku]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Sanku
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Sale]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Sale
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[ReplRaceHorse]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.ReplRaceHorse
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[ReplRace]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.ReplRace
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceRecord]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceRecord
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceInfo]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceInfo
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByTrainerByTrackType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByTrainerByTrackType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByTrainerByJyo]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByTrainerByJyo
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByTrainerByDistanceType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByTrainerByDistanceType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByTrainer]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByTrainer
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByJockeyByTrackType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByJockeyByTrackType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByJockeyByJyo]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByJockeyByJyo
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByJockeyByDistanceType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByJockeyByDistanceType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByJockey]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByJockey
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByHorseByTrackType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByHorseByTrackType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByHorseByTrackCondition]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByHorseByTrackCondition
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByHorseByTotal]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByHorseByTotal
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByHorseByRunType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByHorseByRunType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByHorseByJyo]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByHorseByJyo
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByHorseByDistanceType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByHorseByDistanceType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByHorseByCourseType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByHorseByCourseType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByHorse]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByHorse
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByBreederByTotal]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByBreederByTotal
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByBreeder]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByBreeder
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByBanusiByTotal]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByBanusiByTotal
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByBanusi]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistoryByBanusi
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistory]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorseHistory
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorse]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceHorse
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceExclusion]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceExclusion
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceByLapTime]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceByLapTime
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[RaceByCornerPosition]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.RaceByCornerPosition
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Race]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Race
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PredictModels3000]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PredictModels3000
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PredictModels2000]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PredictModels2000
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PredictModels1000]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PredictModels1000
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PredictModels0600]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PredictModels0600
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PredictModels]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PredictModels
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PredictByWinFive]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PredictByWinFive
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PredictByWin_001]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PredictByWin_001
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PredictByWide_001]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PredictByWide_001
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PredictByTrio_001]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PredictByTrio_001
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PredictByTrifecta_001]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PredictByTrifecta_001
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PredictByQuinella_001]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PredictByQuinella_001
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PredictByPlace_001]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PredictByPlace_001
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PredictByExacta_001]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PredictByExacta_001
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PredictByBracket_001]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PredictByBracket_001
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PayoffByPayAll]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PayoffByPayAll
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PayoffByHenkanWaku]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PayoffByHenkanWaku
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PayoffByHenkanUma]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PayoffByHenkanUma
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PayoffByHenkanDoWaku]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PayoffByHenkanDoWaku
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[PayoffByFlag]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.PayoffByFlag
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Payoff]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Payoff
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[OddsByWin]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.OddsByWin
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[OddsByWide]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.OddsByWide
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[OddsByTrio]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.OddsByTrio
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[OddsByTrifecta]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.OddsByTrifecta
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[OddsByQuinella]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.OddsByQuinella
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[OddsByPlace]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.OddsByPlace
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[OddsByExacta]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.OddsByExacta
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[OddsByBracket]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.OddsByBracket
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Odds6]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Odds6
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Odds5]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Odds5
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Odds4]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Odds4
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Odds3]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Odds3
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Odds2]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Odds2
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Odds1]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Odds1
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[NameOrigin]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.NameOrigin
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterYoubi]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterYoubi
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterUmaKigo]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterUmaKigo
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterTrackType3]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterTrackType3
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterTrackType2]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterTrackType2
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterTrackType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterTrackType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterTrackCondition]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterTrackCondition
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterTrack]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterTrack
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterTozai]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterTozai
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterTenko]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterTenko
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterSyubetu]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterSyubetu
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterStats]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterStats
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterSmile]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterSmile
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterSex]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterSex
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterRunType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterRunType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterPlace2]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterPlace2
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterPlace]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterPlace
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterOpenModeDataSpec]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterOpenModeDataSpec
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterMinarai]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterMinarai
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterLicense]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterLicense
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterKigo]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterKigo
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterKeiro]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterKeiro
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterJyuryo]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterJyuryo
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterJyoken5]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterJyoken5
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterJyoken]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterJyoken
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterHorseNum]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterHorseNum
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterHinsyu]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterHinsyu
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterGrade]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterGrade
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterDistanceType2]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterDistanceType2
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterDistanceType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterDistanceType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterDataSpec]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterDataSpec
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterCourseType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterCourseType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterCourseKubun]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterCourseKubun
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterChakusa]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterChakusa
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterBracketNum]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterBracketNum
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterBlinker]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterBlinker
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[MasterBetType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.MasterBetType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Master2Weight]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Master2Weight
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Master2RaceType9]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Master2RaceType9
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Master2RaceType8]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Master2RaceType8
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Master2RaceType7]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Master2RaceType7
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Master2RaceType6]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Master2RaceType6
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Master2RaceType5]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Master2RaceType5
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Master2RaceType4]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Master2RaceType4
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Master2RaceType3]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Master2RaceType3
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Master2RaceType2]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Master2RaceType2
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Master2RaceType1]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Master2RaceType1
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Master2Ninki]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Master2Ninki
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Master2Handicap]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Master2Handicap
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Master2Distance]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Master2Distance
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Master2Class]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Master2Class
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Keito]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Keito
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[JockeyByTrackType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.JockeyByTrackType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[JockeyByTotal]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.JockeyByTotal
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[JockeyBySaikinJyusyo]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.JockeyBySaikinJyusyo
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[JockeyByHatuSyori]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.JockeyByHatuSyori
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[JockeyByHatsuKijyo]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.JockeyByHatsuKijyo
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[JockeyByDistanceType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.JockeyByDistanceType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Jockey]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Jockey
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[HorseByTrackCondition]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.HorseByTrackCondition
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[HorseByTotal]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.HorseByTotal
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[HorseBySmile]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.HorseBySmile
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[HorseByRunType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.HorseByRunType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[HorseByDistanceType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.HorseByDistanceType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[HorseByCourseType]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.HorseByCourseType
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Horse]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Horse
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[HansyokuParents]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.HansyokuParents
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Hansyoku]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Hansyoku
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[EventWeather]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.EventWeather
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[EventTimeChange]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.EventTimeChange
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[EventQueue]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.EventQueue
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[EventJockeyChange]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.EventJockeyChange
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[EventHorseWeight]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.EventHorseWeight
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[EventCourseChange]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.EventCourseChange
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[EventAvoid]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.EventAvoid
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[DataMiningTaisen]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.DataMiningTaisen
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[DataMining]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.DataMining
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[CourseInfo]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.CourseInfo
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[ConfigLastTimestamp]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.ConfigLastTimestamp
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[ConfigIpatBalance]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.ConfigIpatBalance
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[ConfigIpatAccount]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.ConfigIpatAccount
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[ConfigDataSpecRecKubun]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.ConfigDataSpecRecKubun
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[ConfigBetMoney]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.ConfigBetMoney
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[ConfigBetCountWinFive]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.ConfigBetCountWinFive
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[ConfigBetCount]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.ConfigBetCount
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Breeder]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Breeder
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[BetWinFiveMgmtByTemp]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.BetWinFiveMgmtByTemp
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[BetWinFiveMgmtBySim]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.BetWinFiveMgmtBySim
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[BetWinFiveMgmtByBet]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.BetWinFiveMgmtByBet
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[BetMgmtHistory]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.BetMgmtHistory
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[BetMgmtByTemp]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.BetMgmtByTemp
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[BetMgmtBySim]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.BetMgmtBySim
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[BetMgmtByBet]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.BetMgmtByBet
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[BetHistoryMaster]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.BetHistoryMaster
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[BetHistoryDetail]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.BetHistoryDetail
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Bet6ByTrifecta]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Bet6ByTrifecta
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Bet6ByHenkanUma]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Bet6ByHenkanUma
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Bet6]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Bet6
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Bet1ByWin]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Bet1ByWin
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Bet1ByWide]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Bet1ByWide
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Bet1ByTrio]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Bet1ByTrio
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Bet1ByQuinella]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Bet1ByQuinella
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Bet1ByPlace]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Bet1ByPlace
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Bet1ByExacta]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Bet1ByExacta
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Bet1ByBracket]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Bet1ByBracket
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Bet1]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Bet1
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[BayesianTrial01]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.BayesianTrial01
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[BaseStatsTrainerByRaceHorse]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.BaseStatsTrainerByRaceHorse
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[BaseStatsJockeyByRaceHorse]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.BaseStatsJockeyByRaceHorse
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[BaseStatsGen05HansyokuByRaceHorse]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.BaseStatsGen05HansyokuByRaceHorse
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[BaseStatsGen02HansyokuByRaceHorse]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.BaseStatsGen02HansyokuByRaceHorse
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[BaseStatsGen01HansyokuByRaceHorse]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.BaseStatsGen01HansyokuByRaceHorse
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[BaseStatsBanusiByRaceHorse]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.BaseStatsBanusiByRaceHorse
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[Banusi]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.Banusi
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep03PrevRaceHorse]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep03PrevRaceHorse
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep03Jockey]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep03Jockey
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep03Gen02]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep03Gen02
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep03Gen01]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep03Gen01
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep03Basic]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep03Basic
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep02PrevRaceHorse]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep02PrevRaceHorse
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep02Jockey]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep02Jockey
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep02Gen02]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep02Gen02
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep02Gen01]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep02Gen01
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep02Basic]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep02Basic
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType35]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01PrevRaceHorseType35
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType31]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01PrevRaceHorseType31
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType26]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01PrevRaceHorseType26
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType25]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01PrevRaceHorseType25
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType24]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01PrevRaceHorseType24
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType23]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01PrevRaceHorseType23
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType22]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01PrevRaceHorseType22
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType21]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01PrevRaceHorseType21
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType16]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01PrevRaceHorseType16
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType15]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01PrevRaceHorseType15
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType14]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01PrevRaceHorseType14
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType13]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01PrevRaceHorseType13
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType12]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01PrevRaceHorseType12
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType11]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01PrevRaceHorseType11
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrepType0000]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01PrepType0000
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType35]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01JockeyType35
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType31]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01JockeyType31
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType26]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01JockeyType26
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType2512]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01JockeyType2512
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType25]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01JockeyType25
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType24]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01JockeyType24
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType23]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01JockeyType23
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType22]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01JockeyType22
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType21]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01JockeyType21
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType16]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01JockeyType16
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType15]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01JockeyType15
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType14]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01JockeyType14
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType13]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01JockeyType13
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType12]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01JockeyType12
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType11]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01JockeyType11
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type35]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen02Type35
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type31]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen02Type31
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type26]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen02Type26
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type2512]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen02Type2512
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type25]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen02Type25
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type24]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen02Type24
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type23]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen02Type23
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type22]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen02Type22
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type21]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen02Type21
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type16]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen02Type16
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type15]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen02Type15
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type14]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen02Type14
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type13]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen02Type13
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type12]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen02Type12
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type11]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen02Type11
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type35]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen01Type35
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type31]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen01Type31
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type26]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen01Type26
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type2512]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen01Type2512
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type25]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen01Type25
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type24]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen01Type24
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type23]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen01Type23
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type22]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen01Type22
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type21]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen01Type21
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type16]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen01Type16
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type15]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen01Type15
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type14]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen01Type14
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type13]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen01Type13
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type12]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen01Type12
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type11]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01Gen01Type11
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType3519]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType3519
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType3518]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType3518
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType3119]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType3119
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType3118]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType3118
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType3000]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType3000
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2612]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType2612
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2611]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType2611
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2512]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType2512
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2511]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType2511
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2414]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType2414
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2413]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType2413
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2412]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType2412
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2411]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType2411
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2314]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType2314
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2313]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType2313
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2214]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType2214
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2213]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType2213
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2114]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType2114
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2113]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType2113
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2112]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType2112
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2111]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType2111
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2000]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType2000
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1612]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType1612
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1611]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType1611
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1512]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType1512
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1511]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType1511
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1414]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType1414
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1413]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType1413
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1412]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType1412
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1411]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType1411
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1314]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType1314
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1313]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType1313
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1214]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType1214
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1213]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType1213
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1114]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType1114
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1113]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType1113
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1112]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType1112
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1111]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType1111
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1000]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType1000
    END
GO
IF EXISTS
          (
          SELECT   
                  *
              FROM  sys.objects
              WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType0600]')
                    AND type IN
             (N'U'
             )
          )
    BEGIN
        DROP TABLE dbo.AnalysisStep01BasicType0600
    END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType0600
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType0600 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType1000
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType1000 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType1111
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType1111 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType1112
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType1112 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType1113
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType1113 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType1114
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType1114 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType1213
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType1213 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType1214
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType1214 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType1313
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType1313 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType1314
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType1314 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType1411
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType1411 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType1412
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType1412 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType1413
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType1413 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType1414
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType1414 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType1511
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType1511 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType1512
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType1512 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType1611
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType1611 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType1612
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType1612 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType2000
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType2000 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType2111
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType2111 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType2112
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType2112 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType2113
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType2113 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType2114
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType2114 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType2213
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType2213 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType2214
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType2214 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType2313
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType2313 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType2314
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType2314 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType2411
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType2411 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType2412
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType2412 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType2413
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType2413 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType2414
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType2414 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType2511
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType2511 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType2512
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType2512 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType2611
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType2611 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType2612
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType2612 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType3000
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType3000 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType3118
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType3118 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType3119
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType3119 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType3518
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType3518 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01BasicType3519
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01BasicType3519 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen01Type11
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen01Type11 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen01Type12
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen01Type12 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen01Type13
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen01Type13 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen01Type14
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen01Type14 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen01Type15
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen01Type15 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen01Type16
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen01Type16 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen01Type21
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen01Type21 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen01Type22
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen01Type22 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen01Type23
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen01Type23 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen01Type24
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen01Type24 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen01Type25
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen01Type25 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen01Type2512
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen01Type2512 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen01Type26
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen01Type26 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen01Type31
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen01Type31 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen01Type35
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen01Type35 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen02Type11
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen02Type11 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen02Type12
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen02Type12 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen02Type13
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen02Type13 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen02Type14
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen02Type14 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen02Type15
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen02Type15 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen02Type16
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen02Type16 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen02Type21
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen02Type21 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen02Type22
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen02Type22 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen02Type23
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen02Type23 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen02Type24
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen02Type24 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen02Type25
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen02Type25 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen02Type2512
                                            (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen02Type2512 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                            )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen02Type26
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen02Type26 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen02Type31
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen02Type31 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01Gen02Type35
                                          (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01Gen02Type35 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                          )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01JockeyType11
                                           (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01JockeyType11 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                           )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01JockeyType12
                                           (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01JockeyType12 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                           )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01JockeyType13
                                           (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01JockeyType13 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                           )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01JockeyType14
                                           (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01JockeyType14 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                           )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01JockeyType15
                                           (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01JockeyType15 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                           )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01JockeyType16
                                           (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01JockeyType16 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                           )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01JockeyType21
                                           (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01JockeyType21 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                           )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01JockeyType22
                                           (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01JockeyType22 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                           )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01JockeyType23
                                           (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01JockeyType23 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                           )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01JockeyType24
                                           (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01JockeyType24 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                           )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01JockeyType25
                                           (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01JockeyType25 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                           )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01JockeyType2512
                                             (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01JockeyType2512 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                             )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01JockeyType26
                                           (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01JockeyType26 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                           )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01JockeyType31
                                           (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01JockeyType31 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                           )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01JockeyType35
                                           (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01JockeyType35 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                           )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01PrepType0000
                                           (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    PayWin           FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01PrepType0000 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                           )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01PrevRaceHorseType11
                                                  (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01PrevRaceHorseType11 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                                  )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01PrevRaceHorseType12
                                                  (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01PrevRaceHorseType12 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                                  )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01PrevRaceHorseType13
                                                  (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01PrevRaceHorseType13 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                                  )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01PrevRaceHorseType14
                                                  (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01PrevRaceHorseType14 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                                  )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01PrevRaceHorseType15
                                                  (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01PrevRaceHorseType15 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                                  )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01PrevRaceHorseType16
                                                  (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01PrevRaceHorseType16 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                                  )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01PrevRaceHorseType21
                                                  (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01PrevRaceHorseType21 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                                  )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01PrevRaceHorseType22
                                                  (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01PrevRaceHorseType22 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                                  )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01PrevRaceHorseType23
                                                  (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01PrevRaceHorseType23 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                                  )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01PrevRaceHorseType24
                                                  (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01PrevRaceHorseType24 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                                  )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01PrevRaceHorseType25
                                                  (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01PrevRaceHorseType25 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                                  )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01PrevRaceHorseType26
                                                  (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01PrevRaceHorseType26 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                                  )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01PrevRaceHorseType31
                                                  (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01PrevRaceHorseType31 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                                  )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep01PrevRaceHorseType35
                                                  (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    RowNum           INT IDENTITY(1,1) NOT NULL,
    PredictValue     FLOAT NULL,
    PredictValueNorm FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_AnalysisStep01PrevRaceHorseType35 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                                  )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep02Basic
                                    (
    RaceId            NCHAR(12) NOT NULL,
    HorseId           NCHAR(10) NOT NULL,
    PredictValueA     FLOAT NULL,
    PredictValueB     FLOAT NULL,
    PredictValueC     FLOAT NULL,
    PredictValueNormA FLOAT NULL,
    PredictValueNormB FLOAT NULL,
    PredictValueNormC FLOAT NULL,
    PayWinCount       FLOAT NULL,
    PayWinAvg         FLOAT NULL,
    PayWinStDev       FLOAT NULL,
    PayWinSum         FLOAT NULL,
    PayWinMin         FLOAT NULL,
    PayWinMax         FLOAT NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_AnalysisStep02Basic PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                    )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep02Gen01
                                    (
    RaceId            NCHAR(12) NOT NULL,
    HorseId           NCHAR(10) NOT NULL,
    PredictValueA     FLOAT NULL,
    PredictValueB     FLOAT NULL,
    PredictValueC     FLOAT NULL,
    PredictValueNormA FLOAT NULL,
    PredictValueNormB FLOAT NULL,
    PredictValueNormC FLOAT NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_AnalysisStep02Gen01 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                    )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep02Gen02
                                    (
    RaceId            NCHAR(12) NOT NULL,
    HorseId           NCHAR(10) NOT NULL,
    PredictValueA     FLOAT NULL,
    PredictValueB     FLOAT NULL,
    PredictValueC     FLOAT NULL,
    PredictValueNormA FLOAT NULL,
    PredictValueNormB FLOAT NULL,
    PredictValueNormC FLOAT NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_AnalysisStep02Gen02 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                    )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep02Jockey
                                     (
    RaceId            NCHAR(12) NOT NULL,
    HorseId           NCHAR(10) NOT NULL,
    PredictValueA     FLOAT NULL,
    PredictValueB     FLOAT NULL,
    PredictValueC     FLOAT NULL,
    PredictValueNormA FLOAT NULL,
    PredictValueNormB FLOAT NULL,
    PredictValueNormC FLOAT NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_AnalysisStep02Jockey PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                     )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep02PrevRaceHorse
                                            (
    RaceId            NCHAR(12) NOT NULL,
    HorseId           NCHAR(10) NOT NULL,
    PredictValueA     FLOAT NULL,
    PredictValueB     FLOAT NULL,
    PredictValueC     FLOAT NULL,
    PredictValueNormA FLOAT NULL,
    PredictValueNormB FLOAT NULL,
    PredictValueNormC FLOAT NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_AnalysisStep02PrevRaceHorse PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                            )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep03Basic
                                    (
    RaceId            NCHAR(12) NOT NULL,
    HorseId           NCHAR(10) NOT NULL,
    RowNum            INT IDENTITY(1,1) NOT NULL,
    PredictValueA     FLOAT NULL,
    PredictValueB     FLOAT NULL,
    PredictValueC     FLOAT NULL,
    PredictValueNormA FLOAT NULL,
    PredictValueNormB FLOAT NULL,
    PredictValueNormC FLOAT NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_AnalysisStep03Basic PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                    )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep03Gen01
                                    (
    RaceId            NCHAR(12) NOT NULL,
    HorseId           NCHAR(10) NOT NULL,
    RowNum            INT IDENTITY(1,1) NOT NULL,
    PredictValueA     FLOAT NULL,
    PredictValueB     FLOAT NULL,
    PredictValueC     FLOAT NULL,
    PredictValueNormA FLOAT NULL,
    PredictValueNormB FLOAT NULL,
    PredictValueNormC FLOAT NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_AnalysisStep03Gen01 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                    )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep03Gen02
                                    (
    RaceId            NCHAR(12) NOT NULL,
    HorseId           NCHAR(10) NOT NULL,
    RowNum            INT IDENTITY(1,1) NOT NULL,
    PredictValueA     FLOAT NULL,
    PredictValueB     FLOAT NULL,
    PredictValueC     FLOAT NULL,
    PredictValueNormA FLOAT NULL,
    PredictValueNormB FLOAT NULL,
    PredictValueNormC FLOAT NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_AnalysisStep03Gen02 PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                    )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep03Jockey
                                     (
    RaceId            NCHAR(12) NOT NULL,
    HorseId           NCHAR(10) NOT NULL,
    RowNum            INT IDENTITY(1,1) NOT NULL,
    PredictValueA     FLOAT NULL,
    PredictValueB     FLOAT NULL,
    PredictValueC     FLOAT NULL,
    PredictValueNormA FLOAT NULL,
    PredictValueNormB FLOAT NULL,
    PredictValueNormC FLOAT NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_AnalysisStep03Jockey PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                     )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.AnalysisStep03PrevRaceHorse
                                            (
    RaceId            NCHAR(12) NOT NULL,
    HorseId           NCHAR(10) NOT NULL,
    RowNum            INT IDENTITY(1,1) NOT NULL,
    PredictValueA     FLOAT NULL,
    PredictValueB     FLOAT NULL,
    PredictValueC     FLOAT NULL,
    PredictValueNormA FLOAT NULL,
    PredictValueNormB FLOAT NULL,
    PredictValueNormC FLOAT NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_AnalysisStep03PrevRaceHorse PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,RowNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                            )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Banusi
                       (
    RecKubun           NCHAR(2) NULL,
    DataKubun          NCHAR(1) NULL,
    MakeDate           [DATE] NULL,
    BanusiId           NCHAR(6) NOT NULL,
    BanusiName         NVARCHAR(64) NULL,
    BanusiNameCo       NVARCHAR(64) NULL,
    BanusiNameKana     NVARCHAR(50) NULL,
    BanusiNameEng      NVARCHAR(100) NULL,
    SilkId             NCHAR(60) NULL,
    YearendSetYear     INT NULL,
    YearendHonsyokin   FLOAT NULL,
    YearendFukasyokin  FLOAT NULL,
    YearendChakuKaisu1 FLOAT NULL,
    YearendChakuKaisu2 FLOAT NULL,
    YearendChakuKaisu3 FLOAT NULL,
    YearendChakuKaisu4 FLOAT NULL,
    YearendChakuKaisu5 FLOAT NULL,
    YearendChakuKaisu6 FLOAT NULL,
    TotalSetYear       INT NULL,
    TotalHonsyokin     FLOAT NULL,
    TotalFukasyokin    FLOAT NULL,
    TotalChakuKaisu1   FLOAT NULL,
    TotalChakuKaisu2   FLOAT NULL,
    TotalChakuKaisu3   FLOAT NULL,
    TotalChakuKaisu4   FLOAT NULL,
    TotalChakuKaisu5   FLOAT NULL,
    TotalChakuKaisu6   FLOAT NULL,
    Timestamp01        DATETIME NULL,
    Guid               UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Banusi PRIMARY KEY CLUSTERED(BanusiId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                       )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.BaseStatsBanusiByRaceHorse
                                           (
    RaceId         NCHAR(12) NOT NULL,
    HorseId        NCHAR(10) NOT NULL,
    RunCount       FLOAT NULL,
    HitCountA      FLOAT NULL,
    HitCountB      FLOAT NULL,
    HitCountC      FLOAT NULL,
    HitRateA       FLOAT NULL,
    HitRateB       FLOAT NULL,
    HitRateC       FLOAT NULL,
    HitRateLogA    FLOAT NULL,
    HitRateLogB    FLOAT NULL,
    HitRateLogC    FLOAT NULL,
    HitRateLogSdvA FLOAT NULL,
    HitRateLogSdvB FLOAT NULL,
    HitRateLogSdvC FLOAT NULL,
    HitCount1      FLOAT NULL,
    HitCount2      FLOAT NULL,
    HitCount3      FLOAT NULL,
    HitRate1       FLOAT NULL,
    HitRate2       FLOAT NULL,
    HitRate3       FLOAT NULL,
    HitRateLog1    FLOAT NULL,
    HitRateLog2    FLOAT NULL,
    HitRateLog3    FLOAT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_BaseStatsBanusiByRaceHorse PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                           )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.BaseStatsGen01HansyokuByRaceHorse
                                                  (
    RaceId         NCHAR(12) NOT NULL,
    HorseId        NCHAR(10) NOT NULL,
    RunCount       FLOAT NULL,
    HitCountA      FLOAT NULL,
    HitCountB      FLOAT NULL,
    HitCountC      FLOAT NULL,
    HitRateA       FLOAT NULL,
    HitRateB       FLOAT NULL,
    HitRateC       FLOAT NULL,
    HitRateLogA    FLOAT NULL,
    HitRateLogB    FLOAT NULL,
    HitRateLogC    FLOAT NULL,
    HitRateLogSdvA FLOAT NULL,
    HitRateLogSdvB FLOAT NULL,
    HitRateLogSdvC FLOAT NULL,
    HitCount1      FLOAT NULL,
    HitCount2      FLOAT NULL,
    HitCount3      FLOAT NULL,
    HitRate1       FLOAT NULL,
    HitRate2       FLOAT NULL,
    HitRate3       FLOAT NULL,
    HitRateLog1    FLOAT NULL,
    HitRateLog2    FLOAT NULL,
    HitRateLog3    FLOAT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_BaseStatsGen01HansyokuByRaceHorse PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.BaseStatsGen02HansyokuByRaceHorse
                                                  (
    RaceId         NCHAR(12) NOT NULL,
    HorseId        NCHAR(10) NOT NULL,
    RunCount       FLOAT NULL,
    HitCountA      FLOAT NULL,
    HitCountB      FLOAT NULL,
    HitCountC      FLOAT NULL,
    HitRateA       FLOAT NULL,
    HitRateB       FLOAT NULL,
    HitRateC       FLOAT NULL,
    HitRateLogA    FLOAT NULL,
    HitRateLogB    FLOAT NULL,
    HitRateLogC    FLOAT NULL,
    HitRateLogSdvA FLOAT NULL,
    HitRateLogSdvB FLOAT NULL,
    HitRateLogSdvC FLOAT NULL,
    HitCount1      FLOAT NULL,
    HitCount2      FLOAT NULL,
    HitCount3      FLOAT NULL,
    HitRate1       FLOAT NULL,
    HitRate2       FLOAT NULL,
    HitRate3       FLOAT NULL,
    HitRateLog1    FLOAT NULL,
    HitRateLog2    FLOAT NULL,
    HitRateLog3    FLOAT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_BaseStatsGen02HansyokuByRaceHorse PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.BaseStatsGen05HansyokuByRaceHorse
                                                  (
    RaceId         NCHAR(12) NOT NULL,
    HorseId        NCHAR(10) NOT NULL,
    RunCount       FLOAT NULL,
    HitCountA      FLOAT NULL,
    HitCountB      FLOAT NULL,
    HitCountC      FLOAT NULL,
    HitRateA       FLOAT NULL,
    HitRateB       FLOAT NULL,
    HitRateC       FLOAT NULL,
    HitRateLogA    FLOAT NULL,
    HitRateLogB    FLOAT NULL,
    HitRateLogC    FLOAT NULL,
    HitRateLogSdvA FLOAT NULL,
    HitRateLogSdvB FLOAT NULL,
    HitRateLogSdvC FLOAT NULL,
    HitCount1      FLOAT NULL,
    HitCount2      FLOAT NULL,
    HitCount3      FLOAT NULL,
    HitRate1       FLOAT NULL,
    HitRate2       FLOAT NULL,
    HitRate3       FLOAT NULL,
    HitRateLog1    FLOAT NULL,
    HitRateLog2    FLOAT NULL,
    HitRateLog3    FLOAT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_BaseStatsGen05HansyokuByRaceHorse PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.BaseStatsJockeyByRaceHorse
                                           (
    RaceId         NCHAR(12) NOT NULL,
    HorseId        NCHAR(10) NOT NULL,
    RunCount       FLOAT NULL,
    HitCountA      FLOAT NULL,
    HitCountB      FLOAT NULL,
    HitCountC      FLOAT NULL,
    HitRateA       FLOAT NULL,
    HitRateB       FLOAT NULL,
    HitRateC       FLOAT NULL,
    HitRateLogA    FLOAT NULL,
    HitRateLogB    FLOAT NULL,
    HitRateLogC    FLOAT NULL,
    HitRateLogSdvA FLOAT NULL,
    HitRateLogSdvB FLOAT NULL,
    HitRateLogSdvC FLOAT NULL,
    HitCount1      FLOAT NULL,
    HitCount2      FLOAT NULL,
    HitCount3      FLOAT NULL,
    HitRate1       FLOAT NULL,
    HitRate2       FLOAT NULL,
    HitRate3       FLOAT NULL,
    HitRateLog1    FLOAT NULL,
    HitRateLog2    FLOAT NULL,
    HitRateLog3    FLOAT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_BaseStatsJockeyByRaceHorse PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                           )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.BaseStatsTrainerByRaceHorse
                                            (
    RaceId         NCHAR(12) NOT NULL,
    HorseId        NCHAR(10) NOT NULL,
    RunCount       FLOAT NULL,
    HitCountA      FLOAT NULL,
    HitCountB      FLOAT NULL,
    HitCountC      FLOAT NULL,
    HitRateA       FLOAT NULL,
    HitRateB       FLOAT NULL,
    HitRateC       FLOAT NULL,
    HitRateLogA    FLOAT NULL,
    HitRateLogB    FLOAT NULL,
    HitRateLogC    FLOAT NULL,
    HitRateLogSdvA FLOAT NULL,
    HitRateLogSdvB FLOAT NULL,
    HitRateLogSdvC FLOAT NULL,
    HitCount1      FLOAT NULL,
    HitCount2      FLOAT NULL,
    HitCount3      FLOAT NULL,
    HitRate1       FLOAT NULL,
    HitRate2       FLOAT NULL,
    HitRate3       FLOAT NULL,
    HitRateLog1    FLOAT NULL,
    HitRateLog2    FLOAT NULL,
    HitRateLog3    FLOAT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_BaseStatsTrainerByRaceHorse PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                            )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.BayesianTrial01
                                (
    RaceId                 NCHAR(12) NOT NULL,
    HorseId                NCHAR(10) NOT NULL,
    TryNum                 INT NOT NULL,
    TryNumOrderAsc         INT NULL,
    TryNumOrderDesc        INT NULL,
    LhName                 NVARCHAR(255) NULL,
    IsValidPriorProbValueA BIT NULL,
    PriorProbValueSdvA     FLOAT NULL,
    PriorProbValueNormA    FLOAT NULL,
    IsValidLhProbValueA    BIT NULL,
    LhProbValueA           FLOAT NULL,
    LhProbValueSdvA        FLOAT NULL,
    LhProbValueNormA       FLOAT NULL,
    IsValidPostProbValueA  BIT NULL,
    PostProbValueA         FLOAT NULL,
    PostProbValueSdvA      FLOAT NULL,
    PostProbValueNormA     FLOAT NULL,
    IsValidPriorProbValueB BIT NULL,
    PriorProbValueSdvB     FLOAT NULL,
    PriorProbValueNormB    FLOAT NULL,
    IsValidLhProbValueB    BIT NULL,
    LhProbValueB           FLOAT NULL,
    LhProbValueSdvB        FLOAT NULL,
    LhProbValueNormB       FLOAT NULL,
    IsValidPostProbValueB  BIT NULL,
    PostProbValueB         FLOAT NULL,
    PostProbValueSdvB      FLOAT NULL,
    PostProbValueNormB     FLOAT NULL,
    IsValidPriorProbValueC BIT NULL,
    PriorProbValueSdvC     FLOAT NULL,
    PriorProbValueNormC    FLOAT NULL,
    IsValidLhProbValueC    BIT NULL,
    LhProbValueC           FLOAT NULL,
    LhProbValueSdvC        FLOAT NULL,
    LhProbValueNormC       FLOAT NULL,
    IsValidPostProbValueC  BIT NULL,
    PostProbValueC         FLOAT NULL,
    PostProbValueSdvC      FLOAT NULL,
    PostProbValueNormC     FLOAT NULL,
    Timestamp01            DATETIME NULL,
    Guid                   UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_AnalyzeBayesian01Trial PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,TryNum ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Bet1
                     (
    RecKubun               NCHAR(2) NULL,
    DataKubun              NCHAR(1) NULL,
    MakeDate               [DATE] NULL,
    RaceId                 NCHAR(12) NOT NULL,
    RaceDate               [DATE] NULL,
    PlaceId                NCHAR(2) NULL,
    Kaiji                  INT NULL,
    Nichiji                INT NULL,
    RaceNum                INT NULL,
    TorokuTosu             FLOAT NULL,
    SyussoTosu             FLOAT NULL,
    HatubaiFlag1           NCHAR(1) NULL,
    HatubaiFlag2           NCHAR(1) NULL,
    HatubaiFlag3           NCHAR(1) NULL,
    HatubaiFlag4           NCHAR(1) NULL,
    HatubaiFlag5           NCHAR(1) NULL,
    HatubaiFlag6           NCHAR(1) NULL,
    HatubaiFlag7           NCHAR(1) NULL,
    FukuChakuBaraiKey      NCHAR(1) NULL,
    HenkanUma1             NCHAR(1) NULL,
    HenkanUma2             NCHAR(1) NULL,
    HenkanUma3             NCHAR(1) NULL,
    HenkanUma4             NCHAR(1) NULL,
    HenkanUma5             NCHAR(1) NULL,
    HenkanUma6             NCHAR(1) NULL,
    HenkanUma7             NCHAR(1) NULL,
    HenkanUma8             NCHAR(1) NULL,
    HenkanUma9             NCHAR(1) NULL,
    HenkanUma10            NCHAR(1) NULL,
    HenkanUma11            NCHAR(1) NULL,
    HenkanUma12            NCHAR(1) NULL,
    HenkanUma13            NCHAR(1) NULL,
    HenkanUma14            NCHAR(1) NULL,
    HenkanUma15            NCHAR(1) NULL,
    HenkanUma16            NCHAR(1) NULL,
    HenkanUma17            NCHAR(1) NULL,
    HenkanUma18            NCHAR(1) NULL,
    HenkanUma19            NCHAR(1) NULL,
    HenkanUma20            NCHAR(1) NULL,
    HenkanUma21            NCHAR(1) NULL,
    HenkanUma22            NCHAR(1) NULL,
    HenkanUma23            NCHAR(1) NULL,
    HenkanUma24            NCHAR(1) NULL,
    HenkanUma25            NCHAR(1) NULL,
    HenkanUma26            NCHAR(1) NULL,
    HenkanUma27            NCHAR(1) NULL,
    HenkanUma28            NCHAR(1) NULL,
    HenkanWaku1            NCHAR(1) NULL,
    HenkanWaku2            NCHAR(1) NULL,
    HenkanWaku3            NCHAR(1) NULL,
    HenkanWaku4            NCHAR(1) NULL,
    HenkanWaku5            NCHAR(1) NULL,
    HenkanWaku6            NCHAR(1) NULL,
    HenkanWaku7            NCHAR(1) NULL,
    HenkanWaku8            NCHAR(1) NULL,
    HenkanDoWaku1          NCHAR(1) NULL,
    HenkanDoWaku2          NCHAR(1) NULL,
    HenkanDoWaku3          NCHAR(1) NULL,
    HenkanDoWaku4          NCHAR(1) NULL,
    HenkanDoWaku5          NCHAR(1) NULL,
    HenkanDoWaku6          NCHAR(1) NULL,
    HenkanDoWaku7          NCHAR(1) NULL,
    HenkanDoWaku8          NCHAR(1) NULL,
    HyoRealTotalWin        FLOAT NULL,
    HyoRealTotalPlace      FLOAT NULL,
    HyoRealTotalBracket    FLOAT NULL,
    HyoRealTotalQuinella   FLOAT NULL,
    HyoRealTotalWide       FLOAT NULL,
    HyoRealTotalExacta     FLOAT NULL,
    HyoRealTotalTrio       FLOAT NULL,
    HyoTotalWin            FLOAT NULL,
    HyoTotalPlace          FLOAT NULL,
    HyoTotalBracket        FLOAT NULL,
    HyoTotalQuinella       FLOAT NULL,
    HyoTotalWide           FLOAT NULL,
    HyoTotalExacta         FLOAT NULL,
    HyoTotalTrio           FLOAT NULL,
    HyoHenkanTotalWin      FLOAT NULL,
    HyoHenkanTotalPlace    FLOAT NULL,
    HyoHenkanTotalBracket  FLOAT NULL,
    HyoHenkanTotalQuinella FLOAT NULL,
    HyoHenkanTotalWide     FLOAT NULL,
    HyoHenkanTotalExacta   FLOAT NULL,
    HyoHenkanTotalTrio     FLOAT NULL,
    Timestamp01            DATETIME NULL,
    Guid                   UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT PK_Bet1 PRIMARY KEY CLUSTERED(RaceId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                     )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Bet1ByBracket
                              (
    RaceId         NCHAR(12) NOT NULL,
    Kumi1          INT NOT NULL,
    Kumi2          INT NOT NULL,
    Kumi3          INT NOT NULL,
    Hyo1           FLOAT NULL,
    Hyo2           FLOAT NULL,
    Ninki          FLOAT NULL,
    HyoRealTotal   FLOAT NULL,
    HyoTotal       FLOAT NULL,
    HyoHenkanTotal FLOAT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Bet1ByBracket PRIMARY KEY CLUSTERED(RaceId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Bet1ByExacta
                             (
    RaceId         NCHAR(12) NOT NULL,
    Kumi1          INT NOT NULL,
    Kumi2          INT NOT NULL,
    Kumi3          INT NOT NULL,
    Hyo1           FLOAT NULL,
    Hyo2           FLOAT NULL,
    Ninki          FLOAT NULL,
    HyoRealTotal   FLOAT NULL,
    HyoTotal       FLOAT NULL,
    HyoHenkanTotal FLOAT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Bet1ByExacta PRIMARY KEY CLUSTERED(RaceId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                             )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Bet1ByPlace
                            (
    RaceId         NCHAR(12) NOT NULL,
    Kumi1          INT NOT NULL,
    Kumi2          INT NOT NULL,
    Kumi3          INT NOT NULL,
    Hyo1           FLOAT NULL,
    Hyo2           FLOAT NULL,
    Ninki          FLOAT NULL,
    HyoRealTotal   FLOAT NULL,
    HyoTotal       FLOAT NULL,
    HyoHenkanTotal FLOAT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Bet1ByPlace PRIMARY KEY CLUSTERED(RaceId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                            )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Bet1ByQuinella
                               (
    RaceId         NCHAR(12) NOT NULL,
    Kumi1          INT NOT NULL,
    Kumi2          INT NOT NULL,
    Kumi3          INT NOT NULL,
    Hyo1           FLOAT NULL,
    Hyo2           FLOAT NULL,
    Ninki          FLOAT NULL,
    HyoRealTotal   FLOAT NULL,
    HyoTotal       FLOAT NULL,
    HyoHenkanTotal FLOAT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Bet1ByQuinella PRIMARY KEY CLUSTERED(RaceId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                               )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Bet1ByTrio
                           (
    RaceId         NCHAR(12) NOT NULL,
    Kumi1          INT NOT NULL,
    Kumi2          INT NOT NULL,
    Kumi3          INT NOT NULL,
    Hyo1           FLOAT NULL,
    Hyo2           FLOAT NULL,
    Ninki          FLOAT NULL,
    HyoRealTotal   FLOAT NULL,
    HyoTotal       FLOAT NULL,
    HyoHenkanTotal FLOAT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Bet1ByTrio PRIMARY KEY CLUSTERED(RaceId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                           )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Bet1ByWide
                           (
    RaceId         NCHAR(12) NOT NULL,
    Kumi1          INT NOT NULL,
    Kumi2          INT NOT NULL,
    Kumi3          INT NOT NULL,
    Hyo1           FLOAT NULL,
    Hyo2           FLOAT NULL,
    Ninki          FLOAT NULL,
    HyoRealTotal   FLOAT NULL,
    HyoTotal       FLOAT NULL,
    HyoHenkanTotal FLOAT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Bet1ByWide PRIMARY KEY CLUSTERED(RaceId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                           )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Bet1ByWin
                          (
    RaceId         NCHAR(12) NOT NULL,
    Kumi1          INT NOT NULL,
    Kumi2          INT NOT NULL,
    Kumi3          INT NOT NULL,
    Hyo1           FLOAT NULL,
    Hyo2           FLOAT NULL,
    Ninki          FLOAT NULL,
    HyoRealTotal   FLOAT NULL,
    HyoTotal       FLOAT NULL,
    HyoHenkanTotal FLOAT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Bet1ByWin PRIMARY KEY CLUSTERED(RaceId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                          )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Bet6
                     (
    RecKubun               NCHAR(2) NULL,
    DataKubun              NCHAR(1) NULL,
    MakeDate               [DATE] NULL,
    RaceDate               [DATE] NULL,
    PlaceId                NCHAR(2) NULL,
    Kaiji                  INT NULL,
    Nichiji                INT NULL,
    RaceNum                INT NULL,
    RaceId                 NCHAR(12) NOT NULL,
    TorokuTosu             FLOAT NULL,
    SyussoTosu             FLOAT NULL,
    HatubaiFlag            NCHAR(1) NULL,
    HyoRealTotalTrifecta   FLOAT NULL,
    HyoTotalTrifecta       FLOAT NULL,
    HyoHenkanTotalTrifecta FLOAT NULL,
    Timestamp01            DATETIME NULL,
    Guid                   UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_Bet6 PRIMARY KEY CLUSTERED(RaceId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                     )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Bet6ByHenkanUma
                                (
    RaceId      NCHAR(12) NOT NULL,
    Kumi1       INT NOT NULL,
    Kumi2       INT NOT NULL,
    Kumi3       INT NOT NULL,
    HenkanUma   NCHAR(1) NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Bet6ByHenkanUma PRIMARY KEY CLUSTERED(RaceId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Bet6ByTrifecta
                               (
    RaceId         NCHAR(12) NOT NULL,
    Kumi1          INT NOT NULL,
    Kumi2          INT NOT NULL,
    Kumi3          INT NOT NULL,
    Hyo1           FLOAT NULL,
    Hyo2           FLOAT NULL,
    Ninki          FLOAT NULL,
    HyoRealTotal   FLOAT NULL,
    HyoTotal       FLOAT NULL,
    HyoHenkanTotal FLOAT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Bet6ByTrifecta PRIMARY KEY CLUSTERED(RaceId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                               )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.BetHistoryDetail
                                 (
    BetId                UNIQUEIDENTIFIER NOT NULL,
    BetDatetime          DATETIME NULL,
    ReceptId             INT NULL,
    RaceId               NCHAR(12) NULL,
    BetTypeId            INT NULL,
    BetNum               INT NULL,
    RaceDate             [DATE] NULL,
    PlaceId              NCHAR(2) NULL,
    Kaiji                INT NULL,
    Nichiji              INT NULL,
    RaceNum              INT NULL,
    TextData             NVARCHAR(255) NULL,
    Hoshiki              NCHAR(1) NULL,
    Shikibetsu           NCHAR(1) NULL,
    Kumi1                INT NULL,
    Kumi2                INT NULL,
    Kumi3                INT NULL,
    BetCount             FLOAT NULL,
    HitCount             FLOAT NULL,
    BetMoney             FLOAT NULL,
    HitMoney             FLOAT NULL,
    ReturnMoney          FLOAT NULL,
    IsBet                BIT NULL,
    IsHit                BIT NULL,
    IsFixed              BIT NULL,
    IsBetCompleted       BIT NULL,
    BetCompletedDatetime DATETIME NULL,
    CheckDatetime        DATETIME NULL,
    BetOdds1             FLOAT NULL,
    BetOdds2             FLOAT NULL,
    WinMoney1            FLOAT NULL,
    WinMoney2            FLOAT NULL,
    PayMoney             FLOAT NULL,
    PayRank              FLOAT NULL,
    BracketNum1          INT NULL,
    BracketNum2          INT NULL,
    BracketNum3          INT NULL,
    Timestamp01          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_BetHistoryDetail PRIMARY KEY CLUSTERED(BetId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.BetHistoryMaster
                                 (
    BetId                UNIQUEIDENTIFIER NOT NULL,
    BetDatetime          DATETIME NULL,
    ReceptId             INT NULL,
    RaceId               NCHAR(12) NULL,
    RaceDate             [DATE] NULL,
    PlaceId              NCHAR(2) NULL,
    Kaiji                INT NULL,
    Nichiji              INT NULL,
    RaceNum              INT NULL,
    InetId               NCHAR(12) NULL,
    ReceptDatetime       DATETIME NULL,
    BettableMoney        INT NULL,
    BettableCount        INT NULL,
    BetCount             FLOAT NULL,
    HitCount             FLOAT NULL,
    BetMoney             FLOAT NULL,
    HitMoney             FLOAT NULL,
    ReturnMoney          FLOAT NULL,
    IsBet                BIT NULL,
    IsHit                BIT NULL,
    IsFixed              BIT NULL,
    IsBetCompleted       BIT NULL,
    BetCompletedDatetime DATETIME NULL,
    CheckDatetime        DATETIME NULL,
    Timestamp01          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_BetHistoryMaster PRIMARY KEY CLUSTERED(BetId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.BetMgmtByBet
                             (
    RaceId                     NCHAR(12) NOT NULL,
    BetTypeId                  INT NOT NULL,
    Kumi1                      INT NOT NULL,
    Kumi2                      INT NOT NULL,
    Kumi3                      INT NOT NULL,
    BetDatetime                DATETIME NOT NULL,
    BetNum                     INT NULL,
    RaceDate                   [DATE] NULL,
    PlaceId                    NCHAR(2) NULL,
    Kaiji                      INT NULL,
    Nichiji                    INT NULL,
    RaceNum                    INT NULL,
    IsValidPredictValue        BIT NULL,
    PredictValue               FLOAT NULL,
    PredictValueSdv            FLOAT NULL,
    PredictValueDv             FLOAT NULL,
    PredictValueRank           FLOAT NULL,
    ExpectedOdds               FLOAT NULL,
    ExpectedOddsRatio          FLOAT NULL,
    PredictScore               FLOAT NULL,
    PredictScoreRank           FLOAT NULL,
    Odds1                      FLOAT NULL,
    Odds2                      FLOAT NULL,
    IsBet                      BIT NULL,
    IsHit                      BIT NULL,
    BetCount                   FLOAT NULL,
    HitCount                   FLOAT NULL,
    InitialBetMoney            FLOAT NULL,
    RoiBetRate                 FLOAT NULL,
    ExtraBetMoney              FLOAT NULL,
    ExtraBetRate               FLOAT NULL,
    BetMoney                   FLOAT NULL,
    HitMoney                   FLOAT NULL,
    ReturnMoney                FLOAT NULL,
    BracketNum1                INT NULL,
    BracketNum2                INT NULL,
    BracketNum3                INT NULL,
    Timestamp01                DATETIME NULL,
    IsSentJra                  BIT NULL,
    IsSentOk                   BIT NULL,
    SendJraDatetime            DATETIME NULL,
    Timestamp02                DATETIME NULL,
    IsChecked                  BIT NULL,
    CheckDatetime              DATETIME NULL,
    Timestamp03                DATETIME NULL,
    IsCelebratedBet            BIT NULL,
    IsCelebratedBetDatetime    DATETIME NULL,
    IsCelebratedHit            BIT NULL,
    IsCelebratedHitDatetime    DATETIME NULL,
    IsCelebratedFinish         BIT NULL,
    IsCelebratedFinishDatetime DATETIME NULL,
    Timestamp04                DATETIME NULL,
    Guid                       UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_BetMgmtByBet PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                             )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.BetMgmtBySim
                             (
    RaceId                     NCHAR(12) NOT NULL,
    BetTypeId                  INT NOT NULL,
    Kumi1                      INT NOT NULL,
    Kumi2                      INT NOT NULL,
    Kumi3                      INT NOT NULL,
    BetDatetime                DATETIME NOT NULL,
    BetNum                     INT NULL,
    RaceDate                   [DATE] NULL,
    PlaceId                    NCHAR(2) NULL,
    Kaiji                      INT NULL,
    Nichiji                    INT NULL,
    RaceNum                    INT NULL,
    IsValidPredictValue        BIT NULL,
    PredictValue               FLOAT NULL,
    PredictValueSdv            FLOAT NULL,
    PredictValueDv             FLOAT NULL,
    PredictValueRank           FLOAT NULL,
    ExpectedOdds               FLOAT NULL,
    ExpectedOddsRatio          FLOAT NULL,
    PredictScore               FLOAT NULL,
    PredictScoreRank           FLOAT NULL,
    Odds1                      FLOAT NULL,
    Odds2                      FLOAT NULL,
    IsBet                      BIT NULL,
    IsHit                      BIT NULL,
    BetCount                   FLOAT NULL,
    HitCount                   FLOAT NULL,
    InitialBetMoney            FLOAT NULL,
    RoiBetRate                 FLOAT NULL,
    ExtraBetMoney              FLOAT NULL,
    ExtraBetRate               FLOAT NULL,
    BetMoney                   FLOAT NULL,
    HitMoney                   FLOAT NULL,
    ReturnMoney                FLOAT NULL,
    BracketNum1                INT NULL,
    BracketNum2                INT NULL,
    BracketNum3                INT NULL,
    Timestamp01                DATETIME NULL,
    IsSentJra                  BIT NULL,
    IsSentOk                   BIT NULL,
    SendJraDatetime            DATETIME NULL,
    Timestamp02                DATETIME NULL,
    IsChecked                  BIT NULL,
    CheckDatetime              DATETIME NULL,
    Timestamp03                DATETIME NULL,
    IsCelebratedBet            BIT NULL,
    IsCelebratedBetDatetime    DATETIME NULL,
    IsCelebratedHit            BIT NULL,
    IsCelebratedHitDatetime    DATETIME NULL,
    IsCelebratedFinish         BIT NULL,
    IsCelebratedFinishDatetime DATETIME NULL,
    Timestamp04                DATETIME NULL,
    Guid                       UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_BetMgmtBySim PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                             )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.BetMgmtByTemp
                              (
    RaceId                     NCHAR(12) NOT NULL,
    BetTypeId                  INT NOT NULL,
    Kumi1                      INT NOT NULL,
    Kumi2                      INT NOT NULL,
    Kumi3                      INT NOT NULL,
    BetDatetime                DATETIME NOT NULL,
    BetNum                     INT NULL,
    RaceDate                   [DATE] NULL,
    PlaceId                    NCHAR(2) NULL,
    Kaiji                      INT NULL,
    Nichiji                    INT NULL,
    RaceNum                    INT NULL,
    IsValidPredictValue        BIT NULL,
    PredictValue               FLOAT NULL,
    PredictValueSdv            FLOAT NULL,
    PredictValueDv             FLOAT NULL,
    PredictValueRank           FLOAT NULL,
    ExpectedOdds               FLOAT NULL,
    ExpectedOddsRatio          FLOAT NULL,
    PredictScore               FLOAT NULL,
    PredictScoreRank           FLOAT NULL,
    Odds1                      FLOAT NULL,
    Odds2                      FLOAT NULL,
    IsBet                      BIT NULL,
    IsHit                      BIT NULL,
    BetCount                   FLOAT NULL,
    HitCount                   FLOAT NULL,
    InitialBetMoney            FLOAT NULL,
    RoiBetRate                 FLOAT NULL,
    ExtraBetMoney              FLOAT NULL,
    ExtraBetRate               FLOAT NULL,
    BetMoney                   FLOAT NULL,
    HitMoney                   FLOAT NULL,
    ReturnMoney                FLOAT NULL,
    BracketNum1                INT NULL,
    BracketNum2                INT NULL,
    BracketNum3                INT NULL,
    Timestamp01                DATETIME NULL,
    IsSentJra                  BIT NULL,
    IsSentOk                   BIT NULL,
    SendJraDatetime            DATETIME NULL,
    Timestamp02                DATETIME NULL,
    IsChecked                  BIT NULL,
    CheckDatetime              DATETIME NULL,
    Timestamp03                DATETIME NULL,
    IsCelebratedBet            BIT NULL,
    IsCelebratedBetDatetime    DATETIME NULL,
    IsCelebratedHit            BIT NULL,
    IsCelebratedHitDatetime    DATETIME NULL,
    IsCelebratedFinish         BIT NULL,
    IsCelebratedFinishDatetime DATETIME NULL,
    Timestamp04                DATETIME NULL,
    Guid                       UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_BetMgmtByTemp PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.BetMgmtHistory
                               (
    HistoryId            INT IDENTITY(1,1) NOT NULL,
    RegDatetime          DATETIME NULL,
    BetId                UNIQUEIDENTIFIER NULL,
    RaceId               NCHAR(12) NULL,
    BetTypeId            INT NULL,
    Kumi1                INT NULL,
    Kumi2                INT NULL,
    Kumi3                INT NULL,
    BetDatetime          DATETIME NULL,
    BetNum               INT NULL,
    RaceDate             [DATE] NULL,
    PlaceId              NCHAR(2) NULL,
    Kaiji                INT NULL,
    Nichiji              INT NULL,
    RaceNum              INT NULL,
    IsValidPredictValue  BIT NULL,
    PredictValue         FLOAT NULL,
    PredictValueSdv      FLOAT NULL,
    PredictValueDv       FLOAT NULL,
    PredictValueRank     FLOAT NULL,
    ExpectedOdds         FLOAT NULL,
    ExpectedOddsRatio    FLOAT NULL,
    PredictScore         FLOAT NULL,
    PredictScoreRank     FLOAT NULL,
    Odds1                FLOAT NULL,
    Odds2                FLOAT NULL,
    IsBet                BIT NULL,
    IsHit                BIT NULL,
    BetCount             FLOAT NULL,
    HitCount             FLOAT NULL,
    BetMoney             FLOAT NULL,
    HitMoney             FLOAT NULL,
    ReturnMoney          FLOAT NULL,
    BracketNum1          INT NULL,
    BracketNum2          INT NULL,
    BracketNum3          INT NULL,
    Timestamp01          DATETIME NULL,
    IsSentJra            BIT NULL,
    IsSentOk             BIT NULL,
    SendJraDatetime      DATETIME NULL,
    Timestamp02          DATETIME NULL,
    IsChecked            BIT NULL,
    CheckDatetime        DATETIME NULL,
    Timestamp03          DATETIME NULL,
    IsCelebratedBet      BIT NULL,
    CelebrateBetDatetime DATETIME NULL,
    IsCelebratedHit      BIT NULL,
    CelebrateHitDatetime DATETIME NULL,
    Timestamp04          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_BetMgmtHistory PRIMARY KEY CLUSTERED(HistoryId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                               )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.BetWinFiveMgmtByBet
                                    (
    RaceDate                   [DATE] NOT NULL,
    BetTypeId                  INT NOT NULL,
    Kumi1                      INT NOT NULL,
    Kumi2                      INT NOT NULL,
    Kumi3                      INT NOT NULL,
    Kumi4                      INT NOT NULL,
    Kumi5                      INT NOT NULL,
    BetDatetime                DATETIME NOT NULL,
    BetNum                     INT NULL,
    IsValidPredictValue        BIT NULL,
    PredictValue               FLOAT NULL,
    PredictValueSdv            FLOAT NULL,
    PredictValueDv             FLOAT NULL,
    PredictValueRank           FLOAT NULL,
    PredictScore               FLOAT NULL,
    PredictScoreRank           FLOAT NULL,
    IsBet                      BIT NULL,
    IsHit                      BIT NULL,
    BetCount                   FLOAT NULL,
    HitCount                   FLOAT NULL,
    DefaultBetMoney            FLOAT NULL,
    DefaultBetRate             FLOAT NULL,
    BetRate                    FLOAT NULL,
    BetMoney                   FLOAT NULL,
    HitMoney                   FLOAT NULL,
    ReturnMoney                FLOAT NULL,
    BracketNum1                INT NULL,
    BracketNum2                INT NULL,
    BracketNum3                INT NULL,
    BracketNum4                INT NULL,
    BracketNum5                INT NULL,
    Timestamp01                DATETIME NULL,
    IsSentJra                  BIT NULL,
    IsSentOk                   BIT NULL,
    SendJraDatetime            DATETIME NULL,
    Timestamp02                DATETIME NULL,
    IsChecked                  BIT NULL,
    CheckDatetime              DATETIME NULL,
    Timestamp03                DATETIME NULL,
    IsCelebratedBet            BIT NULL,
    IsCelebratedBetDatetime    DATETIME NULL,
    IsCelebratedHit            BIT NULL,
    IsCelebratedHitDatetime    DATETIME NULL,
    IsCelebratedFinish         BIT NULL,
    IsCelebratedFinishDatetime DATETIME NULL,
    Timestamp04                DATETIME NULL,
    Guid                       UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_BetWinFiveMgmtByBet PRIMARY KEY CLUSTERED(RaceDate ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC,Kumi4 ASC,Kumi5 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                    )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.BetWinFiveMgmtBySim
                                    (
    RaceDate                   [DATE] NOT NULL,
    BetTypeId                  INT NOT NULL,
    Kumi1                      INT NOT NULL,
    Kumi2                      INT NOT NULL,
    Kumi3                      INT NOT NULL,
    Kumi4                      INT NOT NULL,
    Kumi5                      INT NOT NULL,
    BetDatetime                DATETIME NOT NULL,
    BetNum                     INT NULL,
    IsValidPredictValue        BIT NULL,
    PredictValue               FLOAT NULL,
    PredictValueSdv            FLOAT NULL,
    PredictValueDv             FLOAT NULL,
    PredictValueRank           FLOAT NULL,
    PredictScore               FLOAT NULL,
    PredictScoreRank           FLOAT NULL,
    IsBet                      BIT NULL,
    IsHit                      BIT NULL,
    BetCount                   FLOAT NULL,
    HitCount                   FLOAT NULL,
    DefaultBetMoney            FLOAT NULL,
    DefaultBetRate             FLOAT NULL,
    BetRate                    FLOAT NULL,
    BetMoney                   FLOAT NULL,
    HitMoney                   FLOAT NULL,
    ReturnMoney                FLOAT NULL,
    BracketNum1                INT NULL,
    BracketNum2                INT NULL,
    BracketNum3                INT NULL,
    BracketNum4                INT NULL,
    BracketNum5                INT NULL,
    Timestamp01                DATETIME NULL,
    IsSentJra                  BIT NULL,
    IsSentOk                   BIT NULL,
    SendJraDatetime            DATETIME NULL,
    Timestamp02                DATETIME NULL,
    IsChecked                  BIT NULL,
    CheckDatetime              DATETIME NULL,
    Timestamp03                DATETIME NULL,
    IsCelebratedBet            BIT NULL,
    IsCelebratedBetDatetime    DATETIME NULL,
    IsCelebratedHit            BIT NULL,
    IsCelebratedHitDatetime    DATETIME NULL,
    IsCelebratedFinish         BIT NULL,
    IsCelebratedFinishDatetime DATETIME NULL,
    Timestamp04                DATETIME NULL,
    Guid                       UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_BetWinFiveMgmtBySim PRIMARY KEY CLUSTERED(RaceDate ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC,Kumi4 ASC,Kumi5 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                    )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.BetWinFiveMgmtByTemp
                                     (
    RaceDate                   [DATE] NOT NULL,
    BetTypeId                  INT NOT NULL,
    Kumi1                      INT NOT NULL,
    Kumi2                      INT NOT NULL,
    Kumi3                      INT NOT NULL,
    Kumi4                      INT NOT NULL,
    Kumi5                      INT NOT NULL,
    BetDatetime                DATETIME NOT NULL,
    BetNum                     INT NULL,
    IsValidPredictValue        BIT NULL,
    PredictValue               FLOAT NULL,
    PredictValueSdv            FLOAT NULL,
    PredictValueDv             FLOAT NULL,
    PredictValueRank           FLOAT NULL,
    PredictScore               FLOAT NULL,
    PredictScoreRank           FLOAT NULL,
    IsBet                      BIT NULL,
    IsHit                      BIT NULL,
    BetCount                   FLOAT NULL,
    HitCount                   FLOAT NULL,
    DefaultBetMoney            FLOAT NULL,
    DefaultBetRate             FLOAT NULL,
    BetRate                    FLOAT NULL,
    BetMoney                   FLOAT NULL,
    HitMoney                   FLOAT NULL,
    ReturnMoney                FLOAT NULL,
    BracketNum1                INT NULL,
    BracketNum2                INT NULL,
    BracketNum3                INT NULL,
    BracketNum4                INT NULL,
    BracketNum5                INT NULL,
    Timestamp01                DATETIME NULL,
    IsSentJra                  BIT NULL,
    IsSentOk                   BIT NULL,
    SendJraDatetime            DATETIME NULL,
    Timestamp02                DATETIME NULL,
    IsChecked                  BIT NULL,
    CheckDatetime              DATETIME NULL,
    Timestamp03                DATETIME NULL,
    IsCelebratedBet            BIT NULL,
    IsCelebratedBetDatetime    DATETIME NULL,
    IsCelebratedHit            BIT NULL,
    IsCelebratedHitDatetime    DATETIME NULL,
    IsCelebratedFinish         BIT NULL,
    IsCelebratedFinishDatetime DATETIME NULL,
    Timestamp04                DATETIME NULL,
    Guid                       UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_BetWinFiveMgmtByTemp PRIMARY KEY CLUSTERED(RaceDate ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC,Kumi4 ASC,Kumi5 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                     )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Breeder
                        (
    RecKubun           NCHAR(2) NULL,
    DataKubun          NCHAR(1) NULL,
    MakeDate           [DATE] NULL,
    BreederId          NCHAR(6) NOT NULL,
    BreederNameCo      NVARCHAR(70) NULL,
    BreederName        NVARCHAR(70) NULL,
    BreederNameKana    NVARCHAR(70) NULL,
    BreederNameEng     NVARCHAR(168) NULL,
    Address            NVARCHAR(20) NULL,
    YearendSetYear     INT NULL,
    YearendHonsyokin   FLOAT NULL,
    YearendFukasyokin  FLOAT NULL,
    YearendChakuKaisu1 FLOAT NULL,
    YearendChakuKaisu2 FLOAT NULL,
    YearendChakuKaisu3 FLOAT NULL,
    YearendChakuKaisu4 FLOAT NULL,
    YearendChakuKaisu5 FLOAT NULL,
    YearendChakuKaisu6 FLOAT NULL,
    TotalSetYear       INT NULL,
    TotalHonsyokin     FLOAT NULL,
    TotalFukasyokin    FLOAT NULL,
    TotalChakuKaisu1   FLOAT NULL,
    TotalChakuKaisu2   FLOAT NULL,
    TotalChakuKaisu3   FLOAT NULL,
    TotalChakuKaisu4   FLOAT NULL,
    TotalChakuKaisu5   FLOAT NULL,
    TotalChakuKaisu6   FLOAT NULL,
    Timestamp01        DATETIME NULL,
    Guid               UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Breeder PRIMARY KEY CLUSTERED(BreederId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                        )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigBetCount
                               (
    ConfigTypeId    INT NOT NULL,
    ClassId         NCHAR(4) NOT NULL,
    BetTypeId       INT NOT NULL,
    BetCount        FLOAT NULL,
    DefaultBetCount FLOAT NULL,
    LimitBetCount   FLOAT NULL,
    Description     NVARCHAR(255) NULL,
    Timestamp01     DATETIME NULL,
    Guid            UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_ConfigBetCount PRIMARY KEY CLUSTERED(ConfigTypeId ASC,ClassId ASC,BetTypeId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                               )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigBetCountWinFive
                                      (
    ConfigTypeId    INT NOT NULL,
    BetTypeId       INT NOT NULL,
    BetCount        FLOAT NULL,
    DefaultBetCount FLOAT NULL,
    LimitBetCount   FLOAT NULL,
    Description     NVARCHAR(255) NULL,
    Timestamp01     DATETIME NULL,
    Guid            UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_ConfigBetCountWinFive PRIMARY KEY CLUSTERED(ConfigTypeId ASC,BetTypeId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                      )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigBetMoney
                               (
    ClassId         NCHAR(4) NOT NULL,
    BetTypeId       INT NOT NULL,
    InitialBetMoney FLOAT NULL,
    InitialBetRate  FLOAT NULL,
    LimitBetMoney   FLOAT NULL,
    RoiBetCount     FLOAT NULL,
    RoiHitCount     FLOAT NULL,
    RoiHitRate      FLOAT NULL,
    RoiBetMoney     FLOAT NULL,
    RoiHitMoney     FLOAT NULL,
    RoiReturnMoney  FLOAT NULL,
    RoiReturnRate   FLOAT NULL,
    Description     NVARCHAR(255) NULL,
    Timestamp01     DATETIME NULL,
    Guid            UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_ConfigBetMoney PRIMARY KEY CLUSTERED(ClassId ASC,BetTypeId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                               )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigDataSpecRecKubun
                                       (
    OpenMode          INT NOT NULL,
    DataSpecSortOrder INT NOT NULL,
    RecKubunSortOrder INT NOT NULL,
    DataSpecId        CHAR(4) NOT NULL,
    RecKubun          NCHAR(2) NOT NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_ConfigDataSpecRecKubun PRIMARY KEY CLUSTERED(OpenMode ASC,DataSpecSortOrder ASC,RecKubunSortOrder ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                       )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigIpatAccount
                                  (
    Id          NCHAR(20) NOT NULL,
    InetId      NCHAR(8) NULL,
    UserNo      NCHAR(8) NULL,
    PassNo      NCHAR(4) NULL,
    ParsNo      NCHAR(4) NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_Account PRIMARY KEY CLUSTERED(Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigIpatBalance
                                  (
    RaceDate      [DATE] NOT NULL,
    IsFirstCheck  BIT NULL,
    CheckDate     DATETIME NULL,
    Deposit       FLOAT NULL,
    WithDraw      FLOAT NULL,
    Balance       FLOAT NULL,
    BettableMoney FLOAT NULL,
    BettableCount FLOAT NULL,
    Timestamp01   DATETIME NULL,
    Guid          UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_ConfigIpatBalance PRIMARY KEY CLUSTERED(RaceDate ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ConfigLastTimestamp
                                    (
    DataSpec          CHAR(4) NOT NULL,
    RecKubun          NCHAR(2) NOT NULL,
    RecKubunType      INT NOT NULL,
    LastFileTimestamp NCHAR(14) NULL,
    LastFileName      NVARCHAR(255) NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_ConfigLastTimestamp PRIMARY KEY CLUSTERED(DataSpec ASC,RecKubun ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                    )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.CourseInfo
                           (
    RecKubun    NCHAR(2) NULL,
    DataKubun   NCHAR(1) NULL,
    MakeDate    [DATE] NULL,
    PlaceId     NCHAR(2) NOT NULL,
    Distance    INT NOT NULL,
    TrackId     NCHAR(2) NOT NULL,
    KaishuDate  [DATE] NOT NULL,
    CourseEx    NVARCHAR(MAX) NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_CourseInfo PRIMARY KEY CLUSTERED(PlaceId ASC,Distance ASC,TrackId ASC,KaishuDate ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                           )
ON [PRIMARY] TEXTIMAGE_ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.DataMining
                           (
    RecKubun                NCHAR(2) NULL,
    DataKubun               NCHAR(1) NULL,
    MakeDate                [DATE] NULL,
    RaceDate                [DATE] NULL,
    PlaceId                 NCHAR(2) NULL,
    Kaiji                   INT NULL,
    Nichiji                 INT NULL,
    RaceNum                 INT NULL,
    RaceId                  NCHAR(12) NOT NULL,
    HorseNum                INT NOT NULL,
    MakeHm                  NCHAR(4) NULL,
    DmTime                  FLOAT NULL,
    DmTimeP                 FLOAT NULL,
    DmTimeM                 FLOAT NULL,
    DmGosaP                 FLOAT NULL,
    DmGosaM                 FLOAT NULL,
    IsUpdatedEntity         BIT NULL,
    Timestamp01             DATETIME NULL,
    IsValidDmTimeSdv        BIT NULL,
    DmTimeSdv               FLOAT NULL,
    DmTimeDv                FLOAT NULL,
    DmTimeRank              FLOAT NULL,
    DmSpeed                 FLOAT NULL,
    IsValidDmSpeedSdv       BIT NULL,
    DmSpeedSdv              FLOAT NULL,
    DmSpeedDv               FLOAT NULL,
    DmSpeedRank             FLOAT NULL,
    Timestamp02             DATETIME NULL,
    IsValidDmTimeSdvByRace  BIT NULL,
    DmTimeSdvByRace         FLOAT NULL,
    DmTimeDvByRace          FLOAT NULL,
    DmTimeRankByRace        FLOAT NULL,
    IsValidDmSpeedSdvByRace BIT NULL,
    DmSpeedSdvByRace        FLOAT NULL,
    DmSpeedDvByRace         FLOAT NULL,
    DmSpeedRankByRace       FLOAT NULL,
    Timestamp03             DATETIME NULL,
    Guid                    UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_DataMining PRIMARY KEY CLUSTERED(RaceId ASC,HorseNum ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                           )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.DataMiningTaisen
                                 (
    RecKubun                NCHAR(2) NULL,
    DataKubun               NCHAR(1) NULL,
    MakeDate                [DATE] NULL,
    RaceDate                [DATE] NULL,
    PlaceId                 NCHAR(2) NULL,
    Kaiji                   INT NULL,
    Nichiji                 INT NULL,
    RaceNum                 INT NULL,
    RaceId                  NCHAR(12) NOT NULL,
    HorseNum                INT NOT NULL,
    MakeHm                  NCHAR(4) NULL,
    TmScore                 FLOAT NULL,
    IsUpdatedEntity         BIT NULL,
    Timestamp01             DATETIME NULL,
    IsValidTmScoreSdv       BIT NULL,
    TmScoreSdv              FLOAT NULL,
    TmScoreDv               FLOAT NULL,
    TmScoreRank             FLOAT NULL,
    Timestamp02             DATETIME NULL,
    IsValidTmScoreSdvByRace BIT NULL,
    TmScoreSdvByRace        FLOAT NULL,
    TmScoreDvByRace         FLOAT NULL,
    TmScoreRankByRace       FLOAT NULL,
    Timestamp03             DATETIME NULL,
    Guid                    UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_DataMiningTaisen PRIMARY KEY CLUSTERED(RaceId ASC,HorseNum ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.EventAvoid
                           (
    RecKubun         NCHAR(2) NULL,
    DataKubun        NCHAR(1) NULL,
    MakeDate         [DATE] NULL,
    RaceId           NCHAR(12) NOT NULL,
    RaceDate         [DATE] NOT NULL,
    PlaceId          NCHAR(2) NOT NULL,
    Kaiji            INT NOT NULL,
    Nichiji          INT NOT NULL,
    RaceNum          INT NOT NULL,
    AnnounceDatetime DATETIME NULL,
    HorseNum         INT NOT NULL,
    Bamei            NVARCHAR(18) NULL,
    JiyuKubun        NCHAR(3) NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_EventAvoid PRIMARY KEY CLUSTERED(RaceId ASC,HorseNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                           )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.EventCourseChange
                                  (
    RecKubun         NCHAR(2) NULL,
    DataKubun        NCHAR(1) NULL,
    MakeDate         [DATE] NULL,
    RaceId           NCHAR(20) NOT NULL,
    RaceDate         [DATE] NULL,
    PlaceId          NCHAR(2) NULL,
    Kaiji            INT NULL,
    Nichiji          INT NULL,
    RaceNum          INT NULL,
    AnnounceDatetime DATETIME NOT NULL,
    Distance         INT NULL,
    TrackId          NCHAR(2) NULL,
    DistanceBefore   INT NULL,
    TrackIdBefore    NCHAR(2) NULL,
    ReasonId         NCHAR(1) NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_EventCourseChange PRIMARY KEY CLUSTERED(RaceId ASC,AnnounceDatetime ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.EventHorseWeight
                                 (
    RecKubun         NCHAR(2) NULL,
    DataKubun        NCHAR(1) NULL,
    MakeDate         [DATE] NULL,
    RaceId           NCHAR(12) NOT NULL,
    RaceDate         [DATE] NULL,
    PlaceId          NCHAR(2) NULL,
    Kaiji            INT NULL,
    Nichiji          INT NULL,
    RaceNum          INT NULL,
    AnnounceDatetime DATETIME NULL,
    HorseNum         INT NOT NULL,
    Bamei            NVARCHAR(18) NULL,
    Weight           FLOAT NULL,
    WeightDelta      FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_EventHorseWeight PRIMARY KEY CLUSTERED(RaceId ASC,HorseNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.EventJockeyChange
                                  (
    RecKubun         NCHAR(2) NULL,
    DataKubun        NCHAR(1) NULL,
    MakeDate         [DATE] NULL,
    RaceId           NCHAR(12) NOT NULL,
    RaceDate         [DATE] NULL,
    PlaceId          NCHAR(2) NULL,
    Kaiji            INT NULL,
    Nichiji          INT NULL,
    RaceNum          INT NULL,
    AnnounceDatetime DATETIME NOT NULL,
    HorseNum         INT NOT NULL,
    Bamei            NVARCHAR(18) NULL,
    Handicap         FLOAT NULL,
    JockeyId         NCHAR(5) NULL,
    JockeyName       NVARCHAR(17) NULL,
    MinaraiId        NCHAR(1) NULL,
    HandicapBefore   FLOAT NULL,
    JockeyIdBefore   NCHAR(5) NULL,
    JockeyNameBefore NVARCHAR(17) NULL,
    MinaraiIdBefore  NCHAR(1) NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_EventJockeyChange PRIMARY KEY CLUSTERED(RaceId ASC,AnnounceDatetime ASC,HorseNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.EventQueue
                           (
    EventId          UNIQUEIDENTIFIER NOT NULL,
    EventDatetime    DATETIME NOT NULL,
    AnnounceDatetime DATETIME NULL,
    EventType        NVARCHAR(255) NULL,
    IsProceeded      BIT NULL,
    Priority         INT NULL,
    OpenMode         INT NULL,
    OpenDataSpecId   CHAR(4) NULL,
    OpenKey          NVARCHAR(255) NULL,
    ReturnCode       INT NULL,
    RaceDate         [DATE] NULL,
    RaceId           NCHAR(12) NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_EventQueue PRIMARY KEY CLUSTERED(EventId ASC,EventDatetime ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                           )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.EventTimeChange
                                (
    RecKubun         NCHAR(2) NULL,
    DataKubun        NCHAR(1) NULL,
    MakeDate         [DATE] NULL,
    RaceId           NCHAR(12) NOT NULL,
    RaceDate         [DATE] NULL,
    PlaceId          NCHAR(2) NULL,
    Kaiji            INT NULL,
    Nichiji          INT NULL,
    RaceNum          INT NULL,
    AnnounceDatetime DATETIME NOT NULL,
    StartTime        DATETIME NULL,
    StartTimeBefore  DATETIME NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_EventTimeChange PRIMARY KEY CLUSTERED(RaceId ASC,AnnounceDatetime ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.EventWeather
                             (
    RecKubun         NCHAR(2) NULL,
    DataKubun        NCHAR(1) NULL,
    MakeDate         [DATE] NULL,
    RaceDayId        NCHAR(17) NOT NULL,
    RaceDate         [DATE] NULL,
    PlaceId          NCHAR(2) NULL,
    Kaiji            INT NULL,
    Nichiji          INT NULL,
    AnnounceDatetime DATETIME NOT NULL,
    HenkoId          NCHAR(1) NOT NULL,
    TenkoId          NCHAR(1) NULL,
    SibaBabaId       NCHAR(1) NULL,
    DirtBabaId       NCHAR(1) NULL,
    TenkoIdBefore    NCHAR(1) NULL,
    SibaBabaIdBefore NCHAR(1) NULL,
    DirtBabaIdBefore NCHAR(1) NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_EventWeather PRIMARY KEY CLUSTERED(RaceDayId ASC,AnnounceDatetime ASC,HenkoId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                             )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Hansyoku
                         (
    RecKubun           NCHAR(2) NULL,
    DataKubun          NCHAR(1) NULL,
    MakeDate           [DATE] NULL,
    HansyokuId         NCHAR(8) NOT NULL,
    Reserved1          NCHAR(8) NULL,
    HorseId            NCHAR(10) NULL,
    Reserved2          NCHAR(1) NULL,
    Bamei              NVARCHAR(36) NULL,
    BameiKana          NVARCHAR(40) NULL,
    BameiEng           NVARCHAR(80) NULL,
    BirthYear          INT NULL,
    SexId              NCHAR(1) NULL,
    HinsyuId           NCHAR(1) NULL,
    KeiroId            NCHAR(2) NULL,
    HansyokuMochiKubun NCHAR(1) NULL,
    ImportYear         INT NULL,
    SanchiName         NVARCHAR(20) NULL,
    FemaleHansyokuId   NCHAR(8) NULL,
    MaleHansyokuId     NCHAR(8) NULL,
    Timestamp01        DATETIME NULL,
    Guid               UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Hansyoku PRIMARY KEY CLUSTERED(HansyokuId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                         )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.HansyokuParents
                                (
    HansyokuId        NCHAR(8) NOT NULL,
    ParentsHansyokuId NCHAR(8) NOT NULL,
    SexId             NCHAR(1) NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_HansyokuParents PRIMARY KEY CLUSTERED(HansyokuId ASC,ParentsHansyokuId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Horse
                      (
    RecKubun            NCHAR(2) NULL,
    DataKubun           NCHAR(1) NULL,
    MakeDate            [DATE] NULL,
    HorseId             NCHAR(10) NOT NULL,
    DelKubun            NCHAR(1) NULL,
    RegDate             [DATE] NULL,
    DelDate             [DATE] NULL,
    BirthDate           [DATE] NULL,
    Bamei               NVARCHAR(36) NULL,
    BameiKana           NVARCHAR(36) NULL,
    BameiEng            NVARCHAR(60) NULL,
    ZaikyuFlag          NCHAR(1) NULL,
    Reserved            NVARCHAR(19) NULL,
    UmaKigoId           NCHAR(2) NULL,
    SexId               NCHAR(1) NULL,
    HinsyuId            NCHAR(1) NULL,
    KeiroId             NCHAR(2) NULL,
    Gen01HansyokuId     NCHAR(8) NULL,
    Gen01Bamei          NVARCHAR(36) NULL,
    Gen02HansyokuId     NCHAR(8) NULL,
    Gen02Bamei          NVARCHAR(36) NULL,
    Gen03HansyokuId     NCHAR(8) NULL,
    Gen03Bamei          NVARCHAR(36) NULL,
    Gen04HansyokuId     NCHAR(8) NULL,
    Gen04Bamei          NVARCHAR(36) NULL,
    Gen05HansyokuId     NCHAR(8) NULL,
    Gen05Bamei          NVARCHAR(36) NULL,
    Gen06HansyokuId     NCHAR(8) NULL,
    Gen06Bamei          NVARCHAR(36) NULL,
    Gen07HansyokuId     NCHAR(8) NULL,
    Gen07Bamei          NVARCHAR(36) NULL,
    Gen08HansyokuId     NCHAR(8) NULL,
    Gen08Bamei          NVARCHAR(36) NULL,
    Gen09HansyokuId     NCHAR(8) NULL,
    Gen09Bamei          NVARCHAR(36) NULL,
    Gen10HansyokuId     NCHAR(8) NULL,
    Gen10Bamei          NVARCHAR(36) NULL,
    Gen11HansyokuId     NCHAR(8) NULL,
    Gen11Bamei          NVARCHAR(36) NULL,
    Gen12HansyokuId     NCHAR(8) NULL,
    Gen12Bamei          NVARCHAR(36) NULL,
    Gen13HansyokuId     NCHAR(8) NULL,
    Gen13Bamei          NVARCHAR(36) NULL,
    Gen14HansyokuId     NCHAR(8) NULL,
    Gen14Bamei          NVARCHAR(36) NULL,
    TozaiId             NCHAR(1) NULL,
    TrainerId           NCHAR(5) NULL,
    TrainerRyakusyo     NVARCHAR(8) NULL,
    Syotai              NVARCHAR(20) NULL,
    BreederId           NCHAR(6) NULL,
    BreederName         NVARCHAR(70) NULL,
    SanchiName          NVARCHAR(20) NULL,
    BanusiId            NCHAR(6) NULL,
    BanusiName          NVARCHAR(64) NULL,
    RuikeiHonsyoHeiti   FLOAT NULL,
    RuikeiHonsyoSyogai  FLOAT NULL,
    RuikeiFukaHeichi    FLOAT NULL,
    RuikeiFukaSyogai    FLOAT NULL,
    RuikeiSyutokuHeichi FLOAT NULL,
    RuikeiSyutokuSyogai FLOAT NULL,
    SogoChakuKaisu1     FLOAT NULL,
    SogoChakuKaisu2     FLOAT NULL,
    SogoChakuKaisu3     FLOAT NULL,
    SogoChakuKaisu4     FLOAT NULL,
    SogoChakuKaisu5     FLOAT NULL,
    SogoChakuKaisu6     FLOAT NULL,
    ChuoChakuKaisu1     FLOAT NULL,
    ChuoChakuKaisu2     FLOAT NULL,
    ChuoChakuKaisu3     FLOAT NULL,
    ChuoChakuKaisu4     FLOAT NULL,
    ChuoChakuKaisu5     FLOAT NULL,
    ChuoChakuKaisu6     FLOAT NULL,
    Ba1HitCount11       FLOAT NULL,
    Ba1HitCount12       FLOAT NULL,
    Ba1HitCount13       FLOAT NULL,
    Ba1HitCount14       FLOAT NULL,
    Ba1HitCount15       FLOAT NULL,
    Ba1HitCount16       FLOAT NULL,
    Ba2HitCount11       FLOAT NULL,
    Ba2HitCount12       FLOAT NULL,
    Ba2HitCount13       FLOAT NULL,
    Ba2HitCount14       FLOAT NULL,
    Ba2HitCount15       FLOAT NULL,
    Ba2HitCount16       FLOAT NULL,
    Ba3HitCount11       FLOAT NULL,
    Ba3HitCount12       FLOAT NULL,
    Ba3HitCount13       FLOAT NULL,
    Ba3HitCount14       FLOAT NULL,
    Ba3HitCount15       FLOAT NULL,
    Ba3HitCount16       FLOAT NULL,
    Ba4HitCount11       FLOAT NULL,
    Ba4HitCount12       FLOAT NULL,
    Ba4HitCount13       FLOAT NULL,
    Ba4HitCount14       FLOAT NULL,
    Ba4HitCount15       FLOAT NULL,
    Ba4HitCount16       FLOAT NULL,
    Ba5HitCount11       FLOAT NULL,
    Ba5HitCount12       FLOAT NULL,
    Ba5HitCount13       FLOAT NULL,
    Ba5HitCount14       FLOAT NULL,
    Ba5HitCount15       FLOAT NULL,
    Ba5HitCount16       FLOAT NULL,
    Ba6HitCount11       FLOAT NULL,
    Ba6HitCount12       FLOAT NULL,
    Ba6HitCount13       FLOAT NULL,
    Ba6HitCount14       FLOAT NULL,
    Ba6HitCount15       FLOAT NULL,
    Ba6HitCount16       FLOAT NULL,
    Ba7HitCount11       FLOAT NULL,
    Ba7HitCount12       FLOAT NULL,
    Ba7HitCount13       FLOAT NULL,
    Ba7HitCount14       FLOAT NULL,
    Ba7HitCount15       FLOAT NULL,
    Ba7HitCount16       FLOAT NULL,
    Jyotai1HitCount11   FLOAT NULL,
    Jyotai1HitCount12   FLOAT NULL,
    Jyotai1HitCount13   FLOAT NULL,
    Jyotai1HitCount14   FLOAT NULL,
    Jyotai1HitCount15   FLOAT NULL,
    Jyotai1HitCount16   FLOAT NULL,
    Jyotai2HitCount11   FLOAT NULL,
    Jyotai2HitCount12   FLOAT NULL,
    Jyotai2HitCount13   FLOAT NULL,
    Jyotai2HitCount14   FLOAT NULL,
    Jyotai2HitCount15   FLOAT NULL,
    Jyotai2HitCount16   FLOAT NULL,
    Jyotai3HitCount11   FLOAT NULL,
    Jyotai3HitCount12   FLOAT NULL,
    Jyotai3HitCount13   FLOAT NULL,
    Jyotai3HitCount14   FLOAT NULL,
    Jyotai3HitCount15   FLOAT NULL,
    Jyotai3HitCount16   FLOAT NULL,
    Jyotai4HitCount11   FLOAT NULL,
    Jyotai4HitCount12   FLOAT NULL,
    Jyotai4HitCount13   FLOAT NULL,
    Jyotai4HitCount14   FLOAT NULL,
    Jyotai4HitCount15   FLOAT NULL,
    Jyotai4HitCount16   FLOAT NULL,
    Jyotai5HitCount11   FLOAT NULL,
    Jyotai5HitCount12   FLOAT NULL,
    Jyotai5HitCount13   FLOAT NULL,
    Jyotai5HitCount14   FLOAT NULL,
    Jyotai5HitCount15   FLOAT NULL,
    Jyotai5HitCount16   FLOAT NULL,
    Jyotai6HitCount11   FLOAT NULL,
    Jyotai6HitCount12   FLOAT NULL,
    Jyotai6HitCount13   FLOAT NULL,
    Jyotai6HitCount14   FLOAT NULL,
    Jyotai6HitCount15   FLOAT NULL,
    Jyotai6HitCount16   FLOAT NULL,
    Jyotai7HitCount11   FLOAT NULL,
    Jyotai7HitCount12   FLOAT NULL,
    Jyotai7HitCount13   FLOAT NULL,
    Jyotai7HitCount14   FLOAT NULL,
    Jyotai7HitCount15   FLOAT NULL,
    Jyotai7HitCount16   FLOAT NULL,
    Jyotai8HitCount11   FLOAT NULL,
    Jyotai8HitCount12   FLOAT NULL,
    Jyotai8HitCount13   FLOAT NULL,
    Jyotai8HitCount14   FLOAT NULL,
    Jyotai8HitCount15   FLOAT NULL,
    Jyotai8HitCount16   FLOAT NULL,
    Jyotai9HitCount11   FLOAT NULL,
    Jyotai9HitCount12   FLOAT NULL,
    Jyotai9HitCount13   FLOAT NULL,
    Jyotai9HitCount14   FLOAT NULL,
    Jyotai9HitCount15   FLOAT NULL,
    Jyotai9HitCount16   FLOAT NULL,
    Jyotai10HitCount11  FLOAT NULL,
    Jyotai10HitCount12  FLOAT NULL,
    Jyotai10HitCount13  FLOAT NULL,
    Jyotai10HitCount14  FLOAT NULL,
    Jyotai10HitCount15  FLOAT NULL,
    Jyotai10HitCount16  FLOAT NULL,
    Jyotai11HitCount11  FLOAT NULL,
    Jyotai11HitCount12  FLOAT NULL,
    Jyotai11HitCount13  FLOAT NULL,
    Jyotai11HitCount14  FLOAT NULL,
    Jyotai11HitCount15  FLOAT NULL,
    Jyotai11HitCount16  FLOAT NULL,
    Jyotai12HitCount11  FLOAT NULL,
    Jyotai12HitCount12  FLOAT NULL,
    Jyotai12HitCount13  FLOAT NULL,
    Jyotai12HitCount14  FLOAT NULL,
    Jyotai12HitCount15  FLOAT NULL,
    Jyotai12HitCount16  FLOAT NULL,
    Kyori1HitCount11    FLOAT NULL,
    Kyori1HitCount12    FLOAT NULL,
    Kyori1HitCount13    FLOAT NULL,
    Kyori1HitCount14    FLOAT NULL,
    Kyori1HitCount15    FLOAT NULL,
    Kyori1HitCount16    FLOAT NULL,
    Kyori2HitCount11    FLOAT NULL,
    Kyori2HitCount12    FLOAT NULL,
    Kyori2HitCount13    FLOAT NULL,
    Kyori2HitCount14    FLOAT NULL,
    Kyori2HitCount15    FLOAT NULL,
    Kyori2HitCount16    FLOAT NULL,
    Kyori3HitCount11    FLOAT NULL,
    Kyori3HitCount12    FLOAT NULL,
    Kyori3HitCount13    FLOAT NULL,
    Kyori3HitCount14    FLOAT NULL,
    Kyori3HitCount15    FLOAT NULL,
    Kyori3HitCount16    FLOAT NULL,
    Kyori4HitCount11    FLOAT NULL,
    Kyori4HitCount12    FLOAT NULL,
    Kyori4HitCount13    FLOAT NULL,
    Kyori4HitCount14    FLOAT NULL,
    Kyori4HitCount15    FLOAT NULL,
    Kyori4HitCount16    FLOAT NULL,
    Kyori5HitCount11    FLOAT NULL,
    Kyori5HitCount12    FLOAT NULL,
    Kyori5HitCount13    FLOAT NULL,
    Kyori5HitCount14    FLOAT NULL,
    Kyori5HitCount15    FLOAT NULL,
    Kyori5HitCount16    FLOAT NULL,
    Kyori6HitCount11    FLOAT NULL,
    Kyori6HitCount12    FLOAT NULL,
    Kyori6HitCount13    FLOAT NULL,
    Kyori6HitCount14    FLOAT NULL,
    Kyori6HitCount15    FLOAT NULL,
    Kyori6HitCount16    FLOAT NULL,
    RunType1            FLOAT NULL,
    RunType2            FLOAT NULL,
    RunType3            FLOAT NULL,
    RunType4            FLOAT NULL,
    RaceCount           FLOAT NULL,
    Timestamp01         DATETIME NULL,
    Guid                UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Horse PRIMARY KEY CLUSTERED(HorseId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                      )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.HorseByCourseType
                                  (
    HorseId      NCHAR(10) NOT NULL,
    TrackTypeId  NCHAR(1) NOT NULL,
    CourseTypeId NCHAR(1) NOT NULL,
    RunCount     FLOAT NULL,
    HitCount1    FLOAT NULL,
    HitRate1     FLOAT NULL,
    HitCount2    FLOAT NULL,
    HitRate2     FLOAT NULL,
    HitCount3    FLOAT NULL,
    HitRate3     FLOAT NULL,
    HitCount4    FLOAT NULL,
    HitRate4     FLOAT NULL,
    HitCount5    FLOAT NULL,
    HitRate5     FLOAT NULL,
    HitCount6    FLOAT NULL,
    HitRate6     FLOAT NULL,
    Timestamp01  DATETIME NULL,
    Guid         UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_HorseByCourseType PRIMARY KEY CLUSTERED(HorseId ASC,TrackTypeId ASC,CourseTypeId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.HorseByDistanceType
                                    (
    HorseId         NCHAR(10) NOT NULL,
    TrackType2Id    NCHAR(1) NOT NULL,
    DistanceType2Id NCHAR(1) NOT NULL,
    RunCount        FLOAT NULL,
    HitCount1       FLOAT NULL,
    HitRate1        FLOAT NULL,
    HitCount2       FLOAT NULL,
    HitRate2        FLOAT NULL,
    HitCount3       FLOAT NULL,
    HitRate3        FLOAT NULL,
    HitCount4       FLOAT NULL,
    HitRate4        FLOAT NULL,
    HitCount5       FLOAT NULL,
    HitRate5        FLOAT NULL,
    HitCount6       FLOAT NULL,
    HitRate6        FLOAT NULL,
    Timestamp01     DATETIME NULL,
    Timestamp02     DATETIME NULL,
    Guid            UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_HorseByDistanceType PRIMARY KEY CLUSTERED(HorseId ASC,TrackType2Id ASC,DistanceType2Id ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                    )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.HorseByRunType
                               (
    HorseId     NCHAR(10) NOT NULL,
    RunCount    FLOAT NULL,
    Pos1Count   FLOAT NULL,
    Pos1Rate    FLOAT NULL,
    Pos2Count   FLOAT NULL,
    Pos2Rate    FLOAT NULL,
    Pos3Count   FLOAT NULL,
    Pos3Rate    FLOAT NULL,
    Pos4Count   FLOAT NULL,
    Pos4Rate    FLOAT NULL,
    Timestamp01 DATETIME NULL,
    Timestamp02 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_HorseByRunType PRIMARY KEY CLUSTERED(HorseId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                               )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.HorseBySmile
                             (
    HorseId     NCHAR(10) NOT NULL,
    TrackTypeId NCHAR(1) NOT NULL,
    SmileId     NCHAR(1) NOT NULL,
    RunCount    FLOAT NULL,
    HitCount1   FLOAT NULL,
    HitRate1    FLOAT NULL,
    HitCount2   FLOAT NULL,
    HitRate2    FLOAT NULL,
    HitCount3   FLOAT NULL,
    HitRate3    FLOAT NULL,
    HitCount4   FLOAT NULL,
    HitRate4    FLOAT NULL,
    HitCount5   FLOAT NULL,
    HitRate5    FLOAT NULL,
    HitCount6   FLOAT NULL,
    HitRate6    FLOAT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_HorseBySmile PRIMARY KEY CLUSTERED(HorseId ASC,TrackTypeId ASC,SmileId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                             )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.HorseByTotal
                             (
    HorseId     NCHAR(10) NOT NULL,
    RunCount    FLOAT NULL,
    HitCount1   FLOAT NULL,
    HitRate1    FLOAT NULL,
    HitCount2   FLOAT NULL,
    HitRate2    FLOAT NULL,
    HitCount3   FLOAT NULL,
    HitRate3    FLOAT NULL,
    HitCount4   FLOAT NULL,
    HitRate4    FLOAT NULL,
    HitCount5   FLOAT NULL,
    HitRate5    FLOAT NULL,
    HitCount6   FLOAT NULL,
    HitRate6    FLOAT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_HorseByTotal PRIMARY KEY CLUSTERED(HorseId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                             )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.HorseByTrackCondition
                                      (
    HorseId          NCHAR(10) NOT NULL,
    TrackTypeId      NCHAR(1) NOT NULL,
    TrackConditionId NCHAR(1) NOT NULL,
    RunCount         FLOAT NULL,
    HitCount1        FLOAT NULL,
    HitRate1         FLOAT NULL,
    HitCount2        FLOAT NULL,
    HitRate2         FLOAT NULL,
    HitCount3        FLOAT NULL,
    HitRate3         FLOAT NULL,
    HitCount4        FLOAT NULL,
    HitRate4         FLOAT NULL,
    HitCount5        FLOAT NULL,
    HitRate5         FLOAT NULL,
    HitCount6        FLOAT NULL,
    HitRate6         FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_HorseByTrackCondition PRIMARY KEY CLUSTERED(HorseId ASC,TrackTypeId ASC,TrackConditionId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                      )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Jockey
                       (
    RecKubun                           NCHAR(2) NULL,
    DataKubun                          NCHAR(1) NULL,
    MakeDate                           [DATE] NULL,
    JockeyId                           NCHAR(5) NOT NULL,
    DelKubun                           NCHAR(1) NULL,
    IssueDate                          [DATE] NULL,
    DelDate                            [DATE] NULL,
    BirthDate                          [DATE] NULL,
    JockeyName                         NVARCHAR(34) NULL,
    Reserved                           NVARCHAR(34) NULL,
    JockeyNameKana                     NVARCHAR(30) NULL,
    JockeyRyakusyo                     NVARCHAR(8) NULL,
    JockeyNameEng                      NVARCHAR(80) NULL,
    SexId                              NCHAR(1) NULL,
    LicenseId                          NCHAR(1) NULL,
    MinaraiId                          NCHAR(1) NULL,
    TozaiId                            NCHAR(1) NULL,
    Syotai                             NVARCHAR(20) NULL,
    TrainerId                          NCHAR(5) NULL,
    TrainerRyakusyo                    NVARCHAR(8) NULL,
    HatuKiJyo01HatukijyoRaceDate       [DATE] NULL,
    HatuKiJyo01HatukijyoPlaceId        NCHAR(2) NULL,
    HatuKiJyo01HatukijyoKaiji          INT NULL,
    HatuKiJyo01HatukijyoNichiji        INT NULL,
    HatuKiJyo01HatukijyoRaceNum        INT NULL,
    HatuKiJyo01SyussoTosu              FLOAT NULL,
    HatuKiJyo01HorseId                 NCHAR(10) NULL,
    HatuKiJyo01Bamei                   NVARCHAR(36) NULL,
    HatuKiJyo01KakuteiJyuni            FLOAT NULL,
    HatuKiJyo01StatsId                 NCHAR(1) NULL,
    HatuKiJyo02HatukijyoRaceDate       [DATE] NULL,
    HatuKiJyo02HatukijyoPlaceId        NCHAR(2) NULL,
    HatuKiJyo02HatukijyoKaiji          INT NULL,
    HatuKiJyo02HatukijyoNichiji        INT NULL,
    HatuKiJyo02HatukijyoRaceNum        INT NULL,
    HatuKiJyo02SyussoTosu              FLOAT NULL,
    HatuKiJyo02HorseId                 NCHAR(10) NULL,
    HatuKiJyo02Bamei                   NVARCHAR(36) NULL,
    HatuKiJyo02KakuteiJyuni            FLOAT NULL,
    HatuKiJyo02StatsId                 NCHAR(1) NULL,
    HatuSyori01HatusyoriRaceDate       [DATE] NULL,
    HatuSyori01HatusyoriPlaceId        NCHAR(2) NULL,
    HatuSyori01HatusyoriKaiji          INT NULL,
    HatuSyori01HatusyoriNichiji        INT NULL,
    HatuSyori01HatusyoriRaceNum        INT NULL,
    HatuSyori01SyussoTosu              FLOAT NULL,
    HatuSyori01HorseId                 NCHAR(10) NULL,
    HatuSyori01Bamei                   NVARCHAR(36) NULL,
    HatuSyori02HatusyoriRaceDate       [DATE] NULL,
    HatuSyori02HatusyoriPlaceId        NCHAR(2) NULL,
    HatuSyori02HatusyoriKaiji          INT NULL,
    HatuSyori02HatusyoriNichiji        INT NULL,
    HatuSyori02HatusyoriRaceNum        INT NULL,
    HatuSyori02SyussoTosu              FLOAT NULL,
    HatuSyori02HorseId                 NCHAR(10) NULL,
    HatuSyori02Bamei                   NVARCHAR(36) NULL,
    SaikinJyusyo01SaikinJyusyoRaceDate [DATE] NULL,
    SaikinJyusyo01SaikinJyusyoPlaceId  NCHAR(2) NULL,
    SaikinJyusyo01SaikinJyusyoKaiji    INT NULL,
    SaikinJyusyo01SaikinJyusyoNichiji  INT NULL,
    SaikinJyusyo01SaikinJyusyoRaceNum  INT NULL,
    SaikinJyusyo01Hondai               NVARCHAR(60) NULL,
    SaikinJyusyo01Ryakusyo10           NVARCHAR(20) NULL,
    SaikinJyusyo01Ryakusyo6            NVARCHAR(12) NULL,
    SaikinJyusyo01Ryakusyo3            NVARCHAR(6) NULL,
    SaikinJyusyo01GradeId              NCHAR(1) NULL,
    SaikinJyusyo01SyussoTosu           FLOAT NULL,
    SaikinJyusyo01HorseId              NCHAR(10) NULL,
    SaikinJyusyo01Bamei                NVARCHAR(36) NULL,
    SaikinJyusyo02SaikinJyusyoRaceDate [DATE] NULL,
    SaikinJyusyo02SaikinJyusyoPlaceId  NCHAR(2) NULL,
    SaikinJyusyo02SaikinJyusyoKaiji    INT NULL,
    SaikinJyusyo02SaikinJyusyoNichiji  INT NULL,
    SaikinJyusyo02SaikinJyusyoRaceNum  INT NULL,
    SaikinJyusyo02Hondai               NVARCHAR(60) NULL,
    SaikinJyusyo02Ryakusyo10           NVARCHAR(20) NULL,
    SaikinJyusyo02Ryakusyo6            NVARCHAR(12) NULL,
    SaikinJyusyo02Ryakusyo3            NVARCHAR(6) NULL,
    SaikinJyusyo02GradeId              NCHAR(1) NULL,
    SaikinJyusyo02SyussoTosu           FLOAT NULL,
    SaikinJyusyo02HorseId              NCHAR(10) NULL,
    SaikinJyusyo02Bamei                NVARCHAR(36) NULL,
    SaikinJyusyo03SaikinJyusyoRaceDate [DATE] NULL,
    SaikinJyusyo03SaikinJyusyoPlaceId  NCHAR(2) NULL,
    SaikinJyusyo03SaikinJyusyoKaiji    INT NULL,
    SaikinJyusyo03SaikinJyusyoNichiji  INT NULL,
    SaikinJyusyo03SaikinJyusyoRaceNum  INT NULL,
    SaikinJyusyo03Hondai               NVARCHAR(60) NULL,
    SaikinJyusyo03Ryakusyo10           NVARCHAR(20) NULL,
    SaikinJyusyo03Ryakusyo6            NVARCHAR(12) NULL,
    SaikinJyusyo03Ryakusyo3            NVARCHAR(6) NULL,
    SaikinJyusyo03GradeId              NCHAR(1) NULL,
    SaikinJyusyo03SyussoTosu           FLOAT NULL,
    SaikinJyusyo03HorseId              NCHAR(10) NULL,
    SaikinJyusyo03Bamei                NVARCHAR(36) NULL,
    Timestamp01                        DATETIME NULL,
    Guid                               UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Jockey PRIMARY KEY CLUSTERED(JockeyId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                       )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.JockeyByDistanceType
                                     (
    JockeyId        NCHAR(5) NOT NULL,
    TrackType2Id    NCHAR(1) NOT NULL,
    DistanceType2Id INT NOT NULL,
    SummaryType     INT NOT NULL,
    RunCount        FLOAT NULL,
    HitCount1       FLOAT NULL,
    HitRate1        FLOAT NULL,
    HitCount2       FLOAT NULL,
    HitRate2        FLOAT NULL,
    HitCount3       FLOAT NULL,
    HitRate3        FLOAT NULL,
    HitCount4       FLOAT NULL,
    HitRate4        FLOAT NULL,
    HitCount5       FLOAT NULL,
    HitRate5        FLOAT NULL,
    HitCount6       FLOAT NULL,
    HitRate6        FLOAT NULL,
    Timestamp01     DATETIME NULL,
    Guid            UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_JockeyByDistanceType PRIMARY KEY CLUSTERED(JockeyId ASC,TrackType2Id ASC,DistanceType2Id ASC,SummaryType ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                     )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.JockeyByHatsuKijyo
                                   (
    JockeyId     NCHAR(5) NOT NULL,
    TrackType3Id NCHAR(1) NOT NULL,
    RaceID       NCHAR(12) NULL,
    SyussoTosu   FLOAT NULL,
    HorseId      NCHAR(10) NULL,
    Bamei        NVARCHAR(18) NULL,
    KakuteiJyuni FLOAT NULL,
    StatsId      NCHAR(1) NULL,
    Timestamp01  DATETIME NULL,
    Guid         UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_JockeyByHatsuKijyo PRIMARY KEY CLUSTERED(JockeyId ASC,TrackType3Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                   )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.JockeyByHatuSyori
                                  (
    JockeyId     NCHAR(5) NOT NULL,
    TrackType3Id NCHAR(1) NOT NULL,
    RaceId       NCHAR(12) NULL,
    SyussoTosu   FLOAT NULL,
    HorseId      NCHAR(10) NULL,
    Bamei        NVARCHAR(18) NULL,
    Timestamp01  DATETIME NULL,
    Guid         UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_JockeyByHatuSyori PRIMARY KEY CLUSTERED(JockeyId ASC,TrackType3Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                  )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.JockeyBySaikinJyusyo
                                     (
    JockeyId    NCHAR(5) NOT NULL,
    Num         INT NOT NULL,
    RaceId      NCHAR(12) NULL,
    Hondai      NCHAR(30) NULL,
    Ryakusyo10  NCHAR(10) NULL,
    Ryakusyo6   NCHAR(6) NULL,
    Ryakusyo3   NCHAR(3) NULL,
    GradeId     NCHAR(1) NULL,
    SyussoTosu  FLOAT NULL,
    HorseId     NCHAR(10) NULL,
    Bamei       NVARCHAR(18) NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_JockeyBySaikinJyusyo PRIMARY KEY CLUSTERED(JockeyId ASC,Num ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
                                     )
ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.JockeyByTotal
                              (
    JockeyId     NCHAR(5) NOT NULL,
    TrackType3Id NCHAR(1) NOT NULL,
    SummaryType  INT NOT NULL,
    SetYear      INT NULL,
    Honsyokin    FLOAT NULL,
    Fukasyokin   FLOAT NULL,
    RunCount     FLOAT NULL,
    HitCount1    FLOAT NULL,
    HitRate1     FLOAT NULL,
    HitCount2    FLOAT NULL,
    HitRate2     FLOAT NULL,
    HitCount3    FLOAT NULL,
    HitRate3     FLOAT NULL,
    HitCount4    FLOAT NULL,
    HitRate4     FLOAT NULL,
    HitCount5    FLOAT NULL,
    HitRate5     FLOAT NULL,
    HitCount6    FLOAT NULL,
    HitRate6     FLOAT NULL,
    Timestamp01  DATETIME NULL,
    Guid         UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_JockeyByTotal PRIMARY KEY CLUSTERED(JockeyId ASC,TrackType3Id ASC,SummaryType ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.JockeyByTrackType
                                  (
    JockeyId     NCHAR(5) NOT NULL,
    PlaceId      NCHAR(2) NOT NULL,
    TrackType3Id NCHAR(1) NOT NULL,
    SummaryType  INT NOT NULL,
    RunCount     FLOAT NULL,
    HitCount1    FLOAT NULL,
    HitRate1     FLOAT NULL,
    HitCount2    FLOAT NULL,
    HitRate2     FLOAT NULL,
    HitCount3    FLOAT NULL,
    HitRate3     FLOAT NULL,
    HitCount4    FLOAT NULL,
    HitRate4     FLOAT NULL,
    HitCount5    FLOAT NULL,
    HitRate5     FLOAT NULL,
    HitCount6    FLOAT NULL,
    HitRate6     FLOAT NULL,
    Timestamp01  DATETIME NULL,
    Guid         UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_JockeyByTrackType PRIMARY KEY CLUSTERED(JockeyId ASC,SummaryType ASC,PlaceId ASC,TrackType3Id ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Keito
                      (
    RecKubun    NCHAR(2) NULL,
    DataKubun   NCHAR(1) NULL,
    MakeDate    [DATE] NULL,
    HansyokuId  NCHAR(8) NOT NULL,
    keitoId     NVARCHAR(30) NULL,
    KeitoName   NVARCHAR(36) NULL,
    KeitoEx     NVARCHAR(MAX) NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Keito PRIMARY KEY CLUSTERED(HansyokuId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                      )
ON [PRIMARY] TEXTIMAGE_ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Master2Class
                             (
    ClassId     NCHAR(4) NOT NULL,
    RaceCount   INT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_Master2Class PRIMARY KEY CLUSTERED(ClassId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                             )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Master2Distance
                                (
    DistanceId  NCHAR(4) NOT NULL,
    RaceCount   INT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Master2Distance PRIMARY KEY CLUSTERED(DistanceId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Master2Handicap
                                (
    Handicap       FLOAT NOT NULL,
    RaceHorseCount INT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Master2Futan PRIMARY KEY CLUSTERED(Handicap ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Master2Ninki
                             (
    Ninki          FLOAT NOT NULL,
    RaceHorseCount INT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Master2Ninki PRIMARY KEY CLUSTERED(Ninki ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                             )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Master2RaceType1
                                 (
    RaceType1Id NVARCHAR(255) NOT NULL,
    RaceCount   INT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_Master2RaceType1 PRIMARY KEY CLUSTERED(RaceType1Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Master2RaceType2
                                 (
    RaceType2Id NVARCHAR(255) NOT NULL,
    RaceCount   INT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_Master2RaceType2 PRIMARY KEY CLUSTERED(RaceType2Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Master2RaceType3
                                 (
    RaceType3Id NVARCHAR(255) NOT NULL,
    RaceCount   INT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_Master2RaceType3 PRIMARY KEY CLUSTERED(RaceType3Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Master2RaceType4
                                 (
    RaceType4Id NVARCHAR(255) NOT NULL,
    RaceCount   INT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_Master2RaceType4 PRIMARY KEY CLUSTERED(RaceType4Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Master2RaceType5
                                 (
    RaceType5Id NVARCHAR(255) NOT NULL,
    RaceCount   INT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_Master2RaceType5 PRIMARY KEY CLUSTERED(RaceType5Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Master2RaceType6
                                 (
    RaceType6Id NVARCHAR(255) NOT NULL,
    RaceCount   INT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_Master2RaceType6 PRIMARY KEY CLUSTERED(RaceType6Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Master2RaceType7
                                 (
    RaceType7Id NVARCHAR(255) NOT NULL,
    RaceCount   INT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_Master2RaceType7 PRIMARY KEY CLUSTERED(RaceType7Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Master2RaceType8
                                 (
    RaceType8Id NVARCHAR(255) NOT NULL,
    RaceCount   INT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_Master2RaceType8 PRIMARY KEY CLUSTERED(RaceType8Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Master2RaceType9
                                 (
    RaceType9Id NVARCHAR(255) NOT NULL,
    RaceCount   INT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_Master2RaceType9 PRIMARY KEY CLUSTERED(RaceType9Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Master2Weight
                              (
    Weight         FLOAT NOT NULL,
    RaceHorseCount INT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Master2Weight PRIMARY KEY CLUSTERED(Weight ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterBetType
                              (
    BetTypeId          INT NOT NULL,
    RaceCount          INT NULL,
    BetTypeDisplayName NVARCHAR(255) NULL,
    BetTypeContent     NVARCHAR(10) NULL,
    BetTypeContentEng  NVARCHAR(10) NULL,
    Timestamp01        DATETIME NULL,
    IpatGoBetTypeId    NVARCHAR(255) NULL,
    Timestamp02        DATETIME NULL,
    Guid               UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterBetType PRIMARY KEY CLUSTERED(BetTypeId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterBlinker
                              (
    BlinkerId      NCHAR(1) NOT NULL,
    RaceHorseCount INT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterBlinker PRIMARY KEY CLUSTERED(BlinkerId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterBracketNum
                                 (
    BracketNum     INT NOT NULL,
    RaceHorseCount INT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterBracketNum PRIMARY KEY CLUSTERED(BracketNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterChakusa
                              (
    ChakusaId        NCHAR(3) NOT NULL,
    RaceHorseCount   INT NULL,
    Chakusa          NVARCHAR(50) NULL,
    ChakusaRyakusyo3 NVARCHAR(3) NULL,
    ChakusaEng       NVARCHAR(50) NULL,
    Slit             FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterChakusa PRIMARY KEY CLUSTERED(ChakusaId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterCourseKubun
                                  (
    CourseKubunId          NCHAR(2) NOT NULL,
    RaceCount              INT NULL,
    CourseKubunDisplayName NVARCHAR(255) NULL,
    CourseKubunName        NVARCHAR(10) NULL,
    Timestamp01            DATETIME NULL,
    Guid                   UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterCourseKubun PRIMARY KEY CLUSTERED(CourseKubunId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterCourseType
                                 (
    CourseTypeId          NCHAR(1) NOT NULL,
    RaceCount             INT NULL,
    CourseTypeDisplayName NVARCHAR(255) NULL,
    CourseTypeName        NVARCHAR(10) NULL,
    Timestamp01           DATETIME NULL,
    Guid                  UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterCourseType PRIMARY KEY CLUSTERED(CourseTypeId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterDataSpec
                               (
    DataSpecId           CHAR(4) NOT NULL,
    Count                INT NULL,
    DataSpecDescription1 NVARCHAR(255) NULL,
    DataSpecDescription2 NVARCHAR(255) NULL,
    Timestamp01          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterDataSpec PRIMARY KEY CLUSTERED(DataSpecId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                               )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterDistanceType
                                   (
    DistanceTypeId NCHAR(1) NOT NULL,
    RaceCount      INT NULL,
    DistanceFrom   INT NULL,
    DistanceTo     INT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterDistanceType PRIMARY KEY CLUSTERED(DistanceTypeId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                   )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterDistanceType2
                                    (
    DistanceType2Id NCHAR(1) NOT NULL,
    RaceCount       INT NULL,
    DistanceFrom    INT NULL,
    DistanceTo      INT NULL,
    Timestamp01     DATETIME NULL,
    Guid            UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterDistanceType2 PRIMARY KEY CLUSTERED(DistanceType2Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                    )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterGrade
                            (
    GradeId          NCHAR(1) NOT NULL,
    RaceCount        INT NULL,
    GradeDisplayName NVARCHAR(255) NULL,
    Grade            NVARCHAR(20) NULL,
    GradeFull        NVARCHAR(20) NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterGrade PRIMARY KEY CLUSTERED(GradeId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                            )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterHinsyu
                             (
    HinsyuId          NCHAR(1) NOT NULL,
    RaceHorseCount    INT NULL,
    HinsyuDisplayName NVARCHAR(255) NULL,
    Hinsyu            NVARCHAR(20) NULL,
    HinsyuRyakusyo    NVARCHAR(3) NULL,
    HinsyuDescription NVARCHAR(255) NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterHinsyu PRIMARY KEY CLUSTERED(HinsyuId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                             )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterHorseNum
                               (
    HorseNum       INT NOT NULL,
    RaceHorseCount INT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterHorseNum PRIMARY KEY CLUSTERED(HorseNum ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                               )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterJyoken
                             (
    JyokenId          NCHAR(1) NOT NULL,
    RaceCount         INT NULL,
    JyokenDisplayName NVARCHAR(255) NULL,
    JyokenName        NVARCHAR(20) NULL,
    JyokenEng         NVARCHAR(20) NULL,
    JyokenDescription NVARCHAR(255) NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Master2Jyoken PRIMARY KEY CLUSTERED(JyokenId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                             )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterJyoken5
                              (
    Jyoken5Id          NCHAR(3) NOT NULL,
    RaceCount          INT NULL,
    Jyoken5DisplayName NVARCHAR(255) NULL,
    Jyoken5Name        NVARCHAR(20) NULL,
    Jyoken5Eng         NVARCHAR(20) NULL,
    Jyoken5Description NVARCHAR(255) NULL,
    JyokenId           NCHAR(1) NULL,
    Timestamp01        DATETIME NULL,
    Guid               UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterJyoken5 PRIMARY KEY CLUSTERED(Jyoken5Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterJyuryo
                             (
    JyuryoId          NCHAR(1) NOT NULL,
    RaceCount         INT NULL,
    JyuryoDisplayName NVARCHAR(255) NULL,
    Jyuryo            NVARCHAR(3) NULL,
    JyuryoEng         NVARCHAR(20) NULL,
    JyuryoDescription NVARCHAR(255) NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterJyuryo PRIMARY KEY CLUSTERED(JyuryoId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                             )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterKeiro
                            (
    KeiroId          NCHAR(2) NOT NULL,
    RaceHorseCount   INT NULL,
    KeiroDisplayName NVARCHAR(255) NULL,
    Keiro            NVARCHAR(3) NULL,
    KeiroEng         NVARCHAR(20) NULL,
    KeiroEng5        NVARCHAR(5) NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterKeiro PRIMARY KEY CLUSTERED(KeiroId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                            )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterKigo
                           (
    KigoId          NCHAR(3) NOT NULL,
    RaceCount       INT NULL,
    KigoDisplayName NVARCHAR(255) NULL,
    Kigo            NVARCHAR(50) NULL,
    KigoEng         NVARCHAR(50) NULL,
    Timestamp01     DATETIME NULL,
    Guid            UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterKigo PRIMARY KEY CLUSTERED(KigoId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                           )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterLicense
                              (
    LicenseId          NCHAR(1) NOT NULL,
    RaceHorseCount     INT NULL,
    LicenseDisplayName NVARCHAR(255) NULL,
    LicenseName        NCHAR(10) NULL,
    [Value]            NVARCHAR(10) NULL,
    Timestamp01        DATETIME NULL,
    Guid               UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterLicense PRIMARY KEY CLUSTERED(LicenseId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterMinarai
                              (
    MinaraiId          NCHAR(1) NOT NULL,
    RaceHorseCount     INT NULL,
    MinaraiDisplayName NVARCHAR(255) NULL,
    MinaraiRyakusyo    NVARCHAR(10) NULL,
    MinaraiGenryo      NVARCHAR(50) NULL,
    MinaraiDescription NVARCHAR(255) NULL,
    Timestamp01        DATETIME NULL,
    Guid               UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterMinarai PRIMARY KEY CLUSTERED(MinaraiId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterOpenModeDataSpec
                                       (
    OpenMode             INT NOT NULL,
    OpenDataSpecId       CHAR(4) NOT NULL,
    Count                INT NULL,
    DataSpecDescription1 NVARCHAR(255) NULL,
    DataSpecDescription2 NVARCHAR(255) NULL,
    Timestamp01          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterOpenModeDataSpec PRIMARY KEY CLUSTERED(OpenMode ASC,OpenDataSpecId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                       )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterPlace
                            (
    PlaceId            NCHAR(2) NOT NULL,
    RaceCount          INT NULL,
    IsJra              BIT NULL,
    PlaceDisplayName   NVARCHAR(255) NULL,
    PlaceName          NVARCHAR(20) NULL,
    PlaceNameRyakusyo1 NVARCHAR(1) NULL,
    PlaceNameRyakusyo2 NVARCHAR(2) NULL,
    PlaceNameRyakusyo3 NVARCHAR(3) NULL,
    PlaceNameEng1      NVARCHAR(30) NULL,
    PlaceNameEng2      NVARCHAR(3) NULL,
    IpatGoJyoId        NVARCHAR(255) NULL,
    Timestamp01        DATETIME NULL,
    Guid               UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterPlace PRIMARY KEY CLUSTERED(PlaceId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                            )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterPlace2
                             (
    Place2Id      NCHAR(3) NOT NULL,
    RaceCount     INT NULL,
    ValidThruFrom [DATE] NULL,
    ValidThruTo   [DATE] NULL,
    PlaceId       NCHAR(2) NULL,
    Timestamp01   DATETIME NULL,
    Guid          UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterPlace2 PRIMARY KEY CLUSTERED(Place2Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                             )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterRunType
                              (
    RunTypeId           FLOAT NOT NULL,
    RaceHorseCount      INT NULL,
    RunTypeDisplayName  NVARCHAR(255) NULL,
    RunTypeDescription1 NVARCHAR(10) NULL,
    RunTypeDescription2 NVARCHAR(10) NULL,
    Timestamp01         DATETIME NULL,
    Guid                UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterRunType PRIMARY KEY CLUSTERED(RunTypeId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterSex
                          (
    SexId           NCHAR(1) NOT NULL,
    RaceHorseCount  INT NULL,
    SexDisplayName  NVARCHAR(255) NULL,
    Sex             NVARCHAR(6) NULL,
    SexEng          NVARCHAR(6) NULL,
    SexDescription1 NVARCHAR(50) NULL,
    SexDescription2 NVARCHAR(255) NULL,
    Timestamp01     DATETIME NULL,
    Guid            UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterSex PRIMARY KEY CLUSTERED(SexId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                          )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterSmile
                            (
    SmileId           NCHAR(1) NOT NULL,
    RaceCount         INT NULL,
    SmileDisplayName  NVARCHAR(255) NULL,
    SmileDescription1 NVARCHAR(50) NULL,
    SmileDescription2 NVARCHAR(255) NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterSmile PRIMARY KEY CLUSTERED(SmileId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                            )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterStats
                            (
    StatsId          NCHAR(1) NOT NULL,
    RaceHorseCount   INT NULL,
    StatsDisplayName NVARCHAR(255) NULL,
    StatsName        NVARCHAR(50) NULL,
    StatsRyakusyo2   NCHAR(2) NULL,
    StatsEng         NVARCHAR(20) NULL,
    StatsRyakusyoEng NVARCHAR(20) NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterStats PRIMARY KEY CLUSTERED(StatsId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                            )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterSyubetu
                              (
    SyubetuId          NCHAR(2) NOT NULL,
    RaceCount          INT NULL,
    SyubetuDisplayName NVARCHAR(255) NULL,
    Syubetu            NVARCHAR(50) NULL,
    SyubetuRyakusyo4   NVARCHAR(4) NULL,
    SyubetuRyakusyo6   NVARCHAR(6) NULL,
    SyubetuRyakusyo8   NVARCHAR(8) NULL,
    SyubetuEng         NVARCHAR(50) NULL,
    Timestamp01        DATETIME NULL,
    Guid               UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterSyubetsu PRIMARY KEY CLUSTERED(SyubetuId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterTenko
                            (
    TenkoId          NCHAR(1) NOT NULL,
    RaceCount        INT NULL,
    TenkoDisplayName NVARCHAR(255) NULL,
    Tenko            NVARCHAR(10) NULL,
    TenkoEng         NVARCHAR(10) NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterTenko PRIMARY KEY CLUSTERED(TenkoId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                            )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterTozai
                            (
    TozaiId          NCHAR(1) NOT NULL,
    RaceHorseCount   INT NULL,
    TozaiDisplayName NVARCHAR(255) NULL,
    Tozai            NVARCHAR(10) NULL,
    Tozai2           NVARCHAR(2) NULL,
    TozaiDescription NVARCHAR(50) NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterTozai PRIMARY KEY CLUSTERED(TozaiId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                            )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterTrack
                            (
    TrackId           NCHAR(2) NOT NULL,
    RaceCount         INT NULL,
    TrackDisplayName  NVARCHAR(255) NULL,
    Track             NVARCHAR(50) NULL,
    Track6            NVARCHAR(6) NULL,
    IsTrackIdStraight BIT NULL,
    IsTrackIdLeft     BIT NULL,
    IsTrackIdRight    BIT NULL,
    TrackEng          NVARCHAR(50) NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterTrack PRIMARY KEY CLUSTERED(TrackId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                            )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterTrackCondition
                                     (
    TrackConditionId          NCHAR(1) NOT NULL,
    RaceCount                 INT NULL,
    TrackConditionDisplayName NVARCHAR(255) NULL,
    TrackCondition            NVARCHAR(3) NULL,
    TrackConditionEngTurf     NVARCHAR(10) NULL,
    TrackConditionEngDirt     NVARCHAR(10) NULL,
    Timestamp01               DATETIME NULL,
    Guid                      UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterTrackCondition PRIMARY KEY CLUSTERED(TrackConditionId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                     )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterTrackType
                                (
    TrackTypeId          NCHAR(1) NOT NULL,
    RaceCount            INT NULL,
    TrackTypeDisplayName NVARCHAR(255) NULL,
    TrackType            NVARCHAR(10) NULL,
    TrackTypeEng         NVARCHAR(10) NULL,
    Timestamp01          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterTrackType PRIMARY KEY CLUSTERED(TrackTypeId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterTrackType2
                                 (
    TrackType2Id          NCHAR(1) NOT NULL,
    RaceCount             INT NULL,
    TrackType2DisplayName NVARCHAR(255) NULL,
    TrackType             NVARCHAR(10) NULL,
    TrackTypeEng          NVARCHAR(10) NULL,
    Timestamp01           DATETIME NULL,
    Guid                  UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterTrackType2 PRIMARY KEY CLUSTERED(TrackType2Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterTrackType3
                                 (
    TrackType3Id          NCHAR(1) NOT NULL,
    RaceCount             INT NULL,
    TrackType3DisplayName NVARCHAR(255) NULL,
    TrackType             NVARCHAR(10) NULL,
    TrackTypeEng          NVARCHAR(10) NULL,
    Timestamp01           DATETIME NULL,
    Guid                  UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterTrackType3 PRIMARY KEY CLUSTERED(TrackType3Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterUmaKigo
                              (
    UmaKigoId          NCHAR(2) NOT NULL,
    RaceHorseCount     INT NULL,
    UmaKigoDisplayName NVARCHAR(255) NULL,
    UmaKigo            NVARCHAR(20) NULL,
    UmaKigoEnglish     NVARCHAR(50) NULL,
    UmaKigoDescription NVARCHAR(255) NULL,
    Timestamp01        DATETIME NULL,
    Guid               UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterUmaKigo PRIMARY KEY CLUSTERED(UmaKigoId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.MasterYoubi
                            (
    YoubiId           NCHAR(1) NOT NULL,
    RaceCount         INT NULL,
    YoubiDisplayName  NVARCHAR(255) NULL,
    Youbi             NVARCHAR(30) NULL,
    YoubiRyakusyo1    NVARCHAR(1) NULL,
    YoubiRyakusyo2    NVARCHAR(2) NULL,
    YoubiRyakusyo3    NVARCHAR(3) NULL,
    YoubiRyakusyoEng  NVARCHAR(30) NULL,
    YoubiRyakusyoEng3 NVARCHAR(3) NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_MasterYoubi PRIMARY KEY CLUSTERED(YoubiId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                            )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.NameOrigin
                           (
    RecKubun    NCHAR(2) NULL,
    DataKubun   NCHAR(1) NULL,
    MakeDate    [DATE] NULL,
    HorseId     NCHAR(10) NOT NULL,
    Bamei       NVARCHAR(36) NULL,
    Origin      NVARCHAR(64) NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_NameOrigin PRIMARY KEY CLUSTERED(HorseId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                           )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Odds1
                      (
    RecKubun              NCHAR(2) NULL,
    DataKubun             NCHAR(1) NULL,
    MakeDate              [DATE] NULL,
    RaceDate              [DATE] NULL,
    PlaceId               NCHAR(2) NULL,
    Kaiji                 INT NULL,
    Nichiji               INT NULL,
    RaceNum               INT NULL,
    RaceId                NCHAR(12) NOT NULL,
    HappyoDatetime        DATETIME NULL,
    TorokuTosu            FLOAT NULL,
    SyussoTosu            FLOAT NULL,
    TansyoFlag            NCHAR(1) NULL,
    FukusyoFlag           NCHAR(1) NULL,
    WakurenFlag           NCHAR(1) NULL,
    FukuChakuBaraiKey     NCHAR(1) NULL,
    TotalHyosuTansyo      FLOAT NULL,
    TotalHyosuFukusyo     FLOAT NULL,
    TotalHyosuWakuren     FLOAT NULL,
    IsUpdatedEntity       BIT NULL,
    Timestamp01           DATETIME NULL,
    PredictValueRateCount FLOAT NULL,
    PredictValueRateAvg   FLOAT NULL,
    PredictValueRateStDev FLOAT NULL,
    PredictValueRateSum   FLOAT NULL,
    PredictValueRateMax   FLOAT NULL,
    PredictValueRateMin   FLOAT NULL,
    Timestamp02           DATETIME NULL,
    Guid                  UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Odds1 PRIMARY KEY CLUSTERED(RaceId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                      )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Odds2
                      (
    RecKubun              NCHAR(2) NULL,
    DataKubun             NCHAR(1) NULL,
    MakeDate              [DATE] NULL,
    RaceDate              [DATE] NULL,
    PlaceId               NCHAR(2) NULL,
    Kaiji                 INT NULL,
    Nichiji               INT NULL,
    RaceNum               INT NULL,
    RaceId                NCHAR(12) NOT NULL,
    HappyoDatetime        DATETIME NULL,
    TorokuTosu            FLOAT NULL,
    SyussoTosu            FLOAT NULL,
    UmarenFlag            NCHAR(1) NULL,
    TotalHyosuUmaren      FLOAT NULL,
    IsUpdatedEntity       BIT NULL,
    Timestamp01           DATETIME NULL,
    PredictValueRateCount FLOAT NULL,
    PredictValueRateAvg   FLOAT NULL,
    PredictValueRateStDev FLOAT NULL,
    PredictValueRateSum   FLOAT NULL,
    PredictValueRateMax   FLOAT NULL,
    PredictValueRateMin   FLOAT NULL,
    Timestamp02           DATETIME NULL,
    Guid                  UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Odds2 PRIMARY KEY CLUSTERED(RaceId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                      )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Odds3
                      (
    RecKubun              NCHAR(2) NULL,
    DataKubun             NCHAR(1) NULL,
    MakeDate              [DATE] NULL,
    RaceDate              [DATE] NULL,
    PlaceId               NCHAR(2) NULL,
    Kaiji                 INT NULL,
    Nichiji               INT NULL,
    RaceNum               INT NULL,
    RaceId                NCHAR(12) NOT NULL,
    HappyoDatetime        DATETIME NULL,
    TorokuTosu            FLOAT NULL,
    SyussoTosu            FLOAT NULL,
    WideFlag              NCHAR(1) NULL,
    TotalHyosuWide        FLOAT NULL,
    IsUpdatedEntity       BIT NULL,
    Timestamp01           DATETIME NULL,
    PredictValueRateCount FLOAT NULL,
    PredictValueRateAvg   FLOAT NULL,
    PredictValueRateStDev FLOAT NULL,
    PredictValueRateSum   FLOAT NULL,
    PredictValueRateMax   FLOAT NULL,
    PredictValueRateMin   FLOAT NULL,
    Timestamp02           DATETIME NULL,
    Guid                  UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Odds3 PRIMARY KEY CLUSTERED(RaceId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                      )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Odds4
                      (
    RecKubun              NCHAR(2) NULL,
    DataKubun             NCHAR(1) NULL,
    MakeDate              [DATE] NULL,
    RaceDate              [DATE] NULL,
    PlaceId               NCHAR(2) NULL,
    Kaiji                 INT NULL,
    Nichiji               INT NULL,
    RaceNum               INT NULL,
    RaceId                NCHAR(12) NOT NULL,
    HappyoDatetime        DATETIME NULL,
    TorokuTosu            FLOAT NULL,
    SyussoTosu            FLOAT NULL,
    UmatanFlag            NCHAR(1) NULL,
    TotalHyosuUmatan      FLOAT NULL,
    IsUpdatedEntity       BIT NULL,
    Timestamp01           DATETIME NULL,
    PredictValueRateCount FLOAT NULL,
    PredictValueRateAvg   FLOAT NULL,
    PredictValueRateStDev FLOAT NULL,
    PredictValueRateSum   FLOAT NULL,
    PredictValueRateMax   FLOAT NULL,
    PredictValueRateMin   FLOAT NULL,
    Timestamp02           DATETIME NULL,
    Guid                  UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Odds4 PRIMARY KEY CLUSTERED(RaceId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                      )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Odds5
                      (
    RecKubun              NCHAR(2) NULL,
    DataKubun             NCHAR(1) NULL,
    MakeDate              [DATE] NULL,
    RaceDate              [DATE] NULL,
    PlaceId               NCHAR(2) NULL,
    Kaiji                 INT NULL,
    Nichiji               INT NULL,
    RaceNum               INT NULL,
    RaceId                NCHAR(12) NOT NULL,
    HappyoDatetime        DATETIME NULL,
    TorokuTosu            FLOAT NULL,
    SyussoTosu            FLOAT NULL,
    SanrenpukuFlag        NCHAR(1) NULL,
    TotalHyosuSanrenpuku  FLOAT NULL,
    IsUpdatedEntity       BIT NULL,
    Timestamp01           DATETIME NULL,
    PredictValueRateCount FLOAT NULL,
    PredictValueRateAvg   FLOAT NULL,
    PredictValueRateStDev FLOAT NULL,
    PredictValueRateSum   FLOAT NULL,
    PredictValueRateMax   FLOAT NULL,
    PredictValueRateMin   FLOAT NULL,
    Timestamp02           DATETIME NULL,
    Guid                  UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Odds5 PRIMARY KEY CLUSTERED(RaceId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                      )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Odds6
                      (
    RecKubun              NCHAR(2) NULL,
    DataKubun             NCHAR(1) NULL,
    MakeDate              [DATE] NULL,
    RaceDate              [DATE] NULL,
    PlaceId               NCHAR(2) NULL,
    Kaiji                 INT NULL,
    Nichiji               INT NULL,
    RaceNum               INT NULL,
    RaceId                NCHAR(12) NOT NULL,
    HappyoDatetime        DATETIME NULL,
    TorokuTosu            FLOAT NULL,
    SyussoTosu            FLOAT NULL,
    SanrentanFlag         NCHAR(1) NULL,
    TotalHyosuSanrentan   FLOAT NULL,
    IsUpdatedEntity       BIT NULL,
    Timestamp01           DATETIME NULL,
    PredictValueRateCount FLOAT NULL,
    PredictValueRateAvg   FLOAT NULL,
    PredictValueRateStDev FLOAT NULL,
    PredictValueRateSum   FLOAT NULL,
    PredictValueRateMax   FLOAT NULL,
    PredictValueRateMin   FLOAT NULL,
    Timestamp02           DATETIME NULL,
    Guid                  UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Odds6 PRIMARY KEY CLUSTERED(RaceId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                      )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.OddsByBracket
                              (
    RecKubun             NCHAR(2) NULL,
    DataKubun            NCHAR(1) NULL,
    MakeDate             [DATE] NULL,
    RaceDate             [DATE] NULL,
    PlaceId              NCHAR(2) NULL,
    Kaiji                INT NULL,
    Nichiji              INT NULL,
    RaceNum              INT NULL,
    RaceId               NCHAR(12) NOT NULL,
    BetTypeId            INT NOT NULL,
    Kumi1                INT NOT NULL,
    Kumi2                INT NOT NULL,
    Kumi3                INT NOT NULL,
    Odds1                FLOAT NULL,
    Odds2                FLOAT NULL,
    Ninki                FLOAT NULL,
    IsUpdateEntity       BIT NULL,
    Timestamp01          DATETIME NULL,
    Num                  INT NULL,
    HorseId1             NCHAR(10) NULL,
    HorseId2             NCHAR(10) NULL,
    HorseId3             NCHAR(10) NULL,
    IsValidPredictValue  BIT NULL,
    PredictValue         FLOAT NULL,
    PredictValueSdv      FLOAT NULL,
    PredictValueDv       FLOAT NULL,
    PredictValueRank     FLOAT NULL,
    ExpectedOdds         FLOAT NULL,
    ExpectedOddsRatio    FLOAT NULL,
    PredictScore         FLOAT NULL,
    PredictScoreRank     FLOAT NULL,
    IsValidPredictValue1 BIT NULL,
    PredictValue1        FLOAT NULL,
    PredictValueSdv1     FLOAT NULL,
    PredictValueDv1      FLOAT NULL,
    PredictValueNorm1    FLOAT NULL,
    PredictValueRank1    FLOAT NULL,
    PredictError1        FLOAT NULL,
    IsValidPredictValue2 BIT NULL,
    PredictValue2        FLOAT NULL,
    PredictValueSdv2     FLOAT NULL,
    PredictValueDv2      FLOAT NULL,
    PredictValueNorm2    FLOAT NULL,
    PredictValueRank2    FLOAT NULL,
    PredictError2        FLOAT NULL,
    Timestamp03          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_OddsByBracket PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.OddsByExacta
                             (
    RecKubun             NCHAR(2) NULL,
    DataKubun            NCHAR(1) NULL,
    MakeDate             [DATE] NULL,
    RaceDate             [DATE] NULL,
    PlaceId              NCHAR(2) NULL,
    Kaiji                INT NULL,
    Nichiji              INT NULL,
    RaceNum              INT NULL,
    RaceId               NCHAR(12) NOT NULL,
    BetTypeId            INT NOT NULL,
    Kumi1                INT NOT NULL,
    Kumi2                INT NOT NULL,
    Kumi3                INT NOT NULL,
    Odds1                FLOAT NULL,
    Odds2                FLOAT NULL,
    Ninki                FLOAT NULL,
    IsUpdateEntity       BIT NULL,
    Timestamp01          DATETIME NULL,
    Num                  INT NULL,
    HorseId1             NCHAR(10) NULL,
    HorseId2             NCHAR(10) NULL,
    HorseId3             NCHAR(10) NULL,
    IsValidPredictValue  BIT NULL,
    PredictValue         FLOAT NULL,
    PredictValueSdv      FLOAT NULL,
    PredictValueDv       FLOAT NULL,
    PredictValueRank     FLOAT NULL,
    ExpectedOdds         FLOAT NULL,
    ExpectedOddsRatio    FLOAT NULL,
    PredictScore         FLOAT NULL,
    PredictScoreRank     FLOAT NULL,
    IsValidPredictValue1 BIT NULL,
    PredictValue1        FLOAT NULL,
    PredictValueSdv1     FLOAT NULL,
    PredictValueDv1      FLOAT NULL,
    PredictValueNorm1    FLOAT NULL,
    PredictValueRank1    FLOAT NULL,
    PredictError1        FLOAT NULL,
    IsValidPredictValue2 BIT NULL,
    PredictValue2        FLOAT NULL,
    PredictValueSdv2     FLOAT NULL,
    PredictValueDv2      FLOAT NULL,
    PredictValueNorm2    FLOAT NULL,
    PredictValueRank2    FLOAT NULL,
    PredictError2        FLOAT NULL,
    Timestamp03          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_OddsByExacta PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                             )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.OddsByPlace
                            (
    RecKubun             NCHAR(2) NULL,
    DataKubun            NCHAR(1) NULL,
    MakeDate             [DATE] NULL,
    RaceDate             [DATE] NULL,
    PlaceId              NCHAR(2) NULL,
    Kaiji                INT NULL,
    Nichiji              INT NULL,
    RaceNum              INT NULL,
    RaceId               NCHAR(12) NOT NULL,
    BetTypeId            INT NOT NULL,
    Kumi1                INT NOT NULL,
    Kumi2                INT NOT NULL,
    Kumi3                INT NOT NULL,
    Odds1                FLOAT NULL,
    Odds2                FLOAT NULL,
    Ninki                FLOAT NULL,
    IsUpdateEntity       BIT NULL,
    Timestamp01          DATETIME NULL,
    Num                  INT NULL,
    HorseId1             NCHAR(10) NULL,
    HorseId2             NCHAR(10) NULL,
    HorseId3             NCHAR(10) NULL,
    IsValidPredictValue  BIT NULL,
    PredictValue         FLOAT NULL,
    PredictValueSdv      FLOAT NULL,
    PredictValueDv       FLOAT NULL,
    PredictValueRank     FLOAT NULL,
    ExpectedOdds         FLOAT NULL,
    ExpectedOddsRatio    FLOAT NULL,
    PredictScore         FLOAT NULL,
    PredictScoreRank     FLOAT NULL,
    IsValidPredictValue1 BIT NULL,
    PredictValue1        FLOAT NULL,
    PredictValueSdv1     FLOAT NULL,
    PredictValueDv1      FLOAT NULL,
    PredictValueNorm1    FLOAT NULL,
    PredictValueRank1    FLOAT NULL,
    PredictError1        FLOAT NULL,
    Timestamp03          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_OddsByPlace PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                            )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.OddsByQuinella
                               (
    RecKubun             NCHAR(2) NULL,
    DataKubun            NCHAR(1) NULL,
    MakeDate             [DATE] NULL,
    RaceDate             [DATE] NULL,
    PlaceId              NCHAR(2) NULL,
    Kaiji                INT NULL,
    Nichiji              INT NULL,
    RaceNum              INT NULL,
    RaceId               NCHAR(12) NOT NULL,
    BetTypeId            INT NOT NULL,
    Kumi1                INT NOT NULL,
    Kumi2                INT NOT NULL,
    Kumi3                INT NOT NULL,
    Odds1                FLOAT NULL,
    Odds2                FLOAT NULL,
    Ninki                FLOAT NULL,
    IsUpdateEntity       BIT NULL,
    Timestamp01          DATETIME NULL,
    Num                  INT NULL,
    HorseId1             NCHAR(10) NULL,
    HorseId2             NCHAR(10) NULL,
    HorseId3             NCHAR(10) NULL,
    IsValidPredictValue  BIT NULL,
    PredictValue         FLOAT NULL,
    PredictValueSdv      FLOAT NULL,
    PredictValueDv       FLOAT NULL,
    PredictValueRank     FLOAT NULL,
    ExpectedOdds         FLOAT NULL,
    ExpectedOddsRatio    FLOAT NULL,
    PredictScore         FLOAT NULL,
    PredictScoreRank     FLOAT NULL,
    IsValidPredictValue1 BIT NULL,
    PredictValue1        FLOAT NULL,
    PredictValueSdv1     FLOAT NULL,
    PredictValueDv1      FLOAT NULL,
    PredictValueNorm1    FLOAT NULL,
    PredictValueRank1    FLOAT NULL,
    PredictError1        FLOAT NULL,
    IsValidPredictValue2 BIT NULL,
    PredictValue2        FLOAT NULL,
    PredictValueSdv2     FLOAT NULL,
    PredictValueDv2      FLOAT NULL,
    PredictValueNorm2    FLOAT NULL,
    PredictValueRank2    FLOAT NULL,
    PredictError2        FLOAT NULL,
    Timestamp03          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_OddsByQuinella PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                               )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.OddsByTrifecta
                               (
    RecKubun             NCHAR(2) NULL,
    DataKubun            NCHAR(1) NULL,
    MakeDate             [DATE] NULL,
    RaceDate             [DATE] NULL,
    PlaceId              NCHAR(2) NULL,
    Kaiji                INT NULL,
    Nichiji              INT NULL,
    RaceNum              INT NULL,
    RaceId               NCHAR(12) NOT NULL,
    BetTypeId            INT NOT NULL,
    Kumi1                INT NOT NULL,
    Kumi2                INT NOT NULL,
    Kumi3                INT NOT NULL,
    Odds1                FLOAT NULL,
    Odds2                FLOAT NULL,
    Ninki                FLOAT NULL,
    IsUpdateEntity       BIT NULL,
    Timestamp01          DATETIME NULL,
    Num                  INT NULL,
    HorseId1             NCHAR(10) NULL,
    HorseId2             NCHAR(10) NULL,
    HorseId3             NCHAR(10) NULL,
    IsValidPredictValue  BIT NULL,
    PredictValue         FLOAT NULL,
    PredictValueSdv      FLOAT NULL,
    PredictValueDv       FLOAT NULL,
    PredictValueRank     FLOAT NULL,
    ExpectedOdds         FLOAT NULL,
    ExpectedOddsRatio    FLOAT NULL,
    PredictScore         FLOAT NULL,
    PredictScoreRank     FLOAT NULL,
    IsValidPredictValue1 BIT NULL,
    PredictValue1        FLOAT NULL,
    PredictValueSdv1     FLOAT NULL,
    PredictValueDv1      FLOAT NULL,
    PredictValueNorm1    FLOAT NULL,
    PredictValueRank1    FLOAT NULL,
    PredictError1        FLOAT NULL,
    IsValidPredictValue2 BIT NULL,
    PredictValue2        FLOAT NULL,
    PredictValueSdv2     FLOAT NULL,
    PredictValueDv2      FLOAT NULL,
    PredictValueNorm2    FLOAT NULL,
    PredictValueRank2    FLOAT NULL,
    PredictError2        FLOAT NULL,
    IsValidPredictValue3 BIT NULL,
    PredictValue3        FLOAT NULL,
    PredictValueSdv3     FLOAT NULL,
    PredictValueDv3      FLOAT NULL,
    PredictValueNorm3    FLOAT NULL,
    PredictValueRank3    FLOAT NULL,
    PredictError3        FLOAT NULL,
    Timestamp03          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_OddsByTrifecta PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                               )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.OddsByTrio
                           (
    RecKubun             NCHAR(2) NULL,
    DataKubun            NCHAR(1) NULL,
    MakeDate             [DATE] NULL,
    RaceDate             [DATE] NULL,
    PlaceId              NCHAR(2) NULL,
    Kaiji                INT NULL,
    Nichiji              INT NULL,
    RaceNum              INT NULL,
    RaceId               NCHAR(12) NOT NULL,
    BetTypeId            INT NOT NULL,
    Kumi1                INT NOT NULL,
    Kumi2                INT NOT NULL,
    Kumi3                INT NOT NULL,
    Odds1                FLOAT NULL,
    Odds2                FLOAT NULL,
    Ninki                FLOAT NULL,
    IsUpdateEntity       BIT NULL,
    Timestamp01          DATETIME NULL,
    Num                  INT NULL,
    HorseId1             NCHAR(10) NULL,
    HorseId2             NCHAR(10) NULL,
    HorseId3             NCHAR(10) NULL,
    IsValidPredictValue  BIT NULL,
    PredictValue         FLOAT NULL,
    PredictValueSdv      FLOAT NULL,
    PredictValueDv       FLOAT NULL,
    PredictValueRank     FLOAT NULL,
    ExpectedOdds         FLOAT NULL,
    ExpectedOddsRatio    FLOAT NULL,
    PredictScore         FLOAT NULL,
    PredictScoreRank     FLOAT NULL,
    IsValidPredictValue1 BIT NULL,
    PredictValue1        FLOAT NULL,
    PredictValueSdv1     FLOAT NULL,
    PredictValueDv1      FLOAT NULL,
    PredictValueNorm1    FLOAT NULL,
    PredictValueRank1    FLOAT NULL,
    PredictError1        FLOAT NULL,
    IsValidPredictValue2 BIT NULL,
    PredictValue2        FLOAT NULL,
    PredictValueSdv2     FLOAT NULL,
    PredictValueDv2      FLOAT NULL,
    PredictValueNorm2    FLOAT NULL,
    PredictValueRank2    FLOAT NULL,
    PredictError2        FLOAT NULL,
    IsValidPredictValue3 BIT NULL,
    PredictValue3        FLOAT NULL,
    PredictValueSdv3     FLOAT NULL,
    PredictValueDv3      FLOAT NULL,
    PredictValueNorm3    FLOAT NULL,
    PredictValueRank3    FLOAT NULL,
    PredictError3        FLOAT NULL,
    Timestamp03          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_OddsByTrio PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                           )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.OddsByWide
                           (
    RecKubun             NCHAR(2) NULL,
    DataKubun            NCHAR(1) NULL,
    MakeDate             [DATE] NULL,
    RaceDate             [DATE] NULL,
    PlaceId              NCHAR(2) NULL,
    Kaiji                INT NULL,
    Nichiji              INT NULL,
    RaceNum              INT NULL,
    RaceId               NCHAR(12) NOT NULL,
    BetTypeId            INT NOT NULL,
    Kumi1                INT NOT NULL,
    Kumi2                INT NOT NULL,
    Kumi3                INT NOT NULL,
    Odds1                FLOAT NULL,
    Odds2                FLOAT NULL,
    Ninki                FLOAT NULL,
    IsUpdateEntity       BIT NULL,
    Timestamp01          DATETIME NULL,
    Num                  INT NULL,
    HorseId1             NCHAR(10) NULL,
    HorseId2             NCHAR(10) NULL,
    HorseId3             NCHAR(10) NULL,
    IsValidPredictValue  BIT NULL,
    PredictValue         FLOAT NULL,
    PredictValueSdv      FLOAT NULL,
    PredictValueDv       FLOAT NULL,
    PredictValueRank     FLOAT NULL,
    ExpectedOdds         FLOAT NULL,
    ExpectedOddsRatio    FLOAT NULL,
    PredictScore         FLOAT NULL,
    PredictScoreRank     FLOAT NULL,
    IsValidPredictValue1 BIT NULL,
    PredictValue1        FLOAT NULL,
    PredictValueSdv1     FLOAT NULL,
    PredictValueDv1      FLOAT NULL,
    PredictValueNorm1    FLOAT NULL,
    PredictValueRank1    FLOAT NULL,
    PredictError1        FLOAT NULL,
    IsValidPredictValue2 BIT NULL,
    PredictValue2        FLOAT NULL,
    PredictValueSdv2     FLOAT NULL,
    PredictValueDv2      FLOAT NULL,
    PredictValueNorm2    FLOAT NULL,
    PredictValueRank2    FLOAT NULL,
    PredictError2        FLOAT NULL,
    Timestamp03          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_OddsByWide PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                           )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.OddsByWin
                          (
    RecKubun             NCHAR(2) NULL,
    DataKubun            NCHAR(1) NULL,
    MakeDate             [DATE] NULL,
    RaceDate             [DATE] NULL,
    PlaceId              NCHAR(2) NULL,
    Kaiji                INT NULL,
    Nichiji              INT NULL,
    RaceNum              INT NULL,
    RaceId               NCHAR(12) NOT NULL,
    BetTypeId            INT NOT NULL,
    Kumi1                INT NOT NULL,
    Kumi2                INT NOT NULL,
    Kumi3                INT NOT NULL,
    Odds1                FLOAT NULL,
    Odds2                FLOAT NULL,
    Ninki                FLOAT NULL,
    IsUpdateEntity       BIT NULL,
    Timestamp01          DATETIME NULL,
    IsValidOddsLog1Sdv   BIT NULL,
    OddsLog1Sdv          FLOAT NULL,
    OddsLog1Dv           FLOAT NULL,
    Timestamp02          DATETIME NULL,
    Num                  INT NULL,
    HorseId1             NCHAR(10) NULL,
    HorseId2             NCHAR(10) NULL,
    HorseId3             NCHAR(10) NULL,
    IsValidPredictValue  BIT NULL,
    PredictValue         FLOAT NULL,
    PredictValueSdv      FLOAT NULL,
    PredictValueDv       FLOAT NULL,
    PredictValueRank     FLOAT NULL,
    ExpectedOdds         FLOAT NULL,
    ExpectedOddsRatio    FLOAT NULL,
    PredictScore         FLOAT NULL,
    PredictScoreRank     FLOAT NULL,
    IsValidPredictValue1 BIT NULL,
    PredictValue1        FLOAT NULL,
    PredictValueSdv1     FLOAT NULL,
    PredictValueDv1      FLOAT NULL,
    PredictValueNorm1    FLOAT NULL,
    PredictValueRank1    FLOAT NULL,
    PredictError1        FLOAT NULL,
    Timestamp03          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_OddsByWin PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                          )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Payoff
                       (
    RecKubun    NCHAR(2) NULL,
    DataKubun   NCHAR(1) NULL,
    MakeDate    [DATE] NULL,
    RaceDate    [DATE] NULL,
    PlaceId     NCHAR(2) NULL,
    Kaiji       INT NULL,
    Nichiji     INT NULL,
    RaceNum     INT NULL,
    RaceId      NCHAR(12) NOT NULL,
    TorokuTosu  FLOAT NULL,
    SyussoTosu  FLOAT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Payoff PRIMARY KEY CLUSTERED(RaceId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                       )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PayoffByFlag
                             (
    RaceId        NCHAR(12) NOT NULL,
    Type          INT NOT NULL,
    FuseirituFlag NCHAR(1) NULL,
    TokubaraiFlag NCHAR(1) NULL,
    HenkanFlag    NCHAR(1) NULL,
    Timestamp01   DATETIME NULL,
    Guid          UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_PayoffByFlag PRIMARY KEY CLUSTERED(RaceId ASC,Type ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                             )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PayoffByHenkanDoWaku
                                     (
    RaceId       NCHAR(12) NOT NULL,
    BracketNum   INT NOT NULL,
    HenkanDoWaku NCHAR(1) NULL,
    Timestamp01  DATETIME NULL,
    Guid         UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_PayoffByHenkanDoWaku PRIMARY KEY CLUSTERED(RaceId ASC,BracketNum ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                     )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PayoffByHenkanUma
                                  (
    RaceId      NCHAR(12) NOT NULL,
    HorseNum    INT NOT NULL,
    HenkanUma   NCHAR(1) NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_PayoffByHenkanUma PRIMARY KEY CLUSTERED(RaceId ASC,HorseNum ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PayoffByHenkanWaku
                                   (
    RaceId      NCHAR(12) NOT NULL,
    BracketNum  INT NOT NULL,
    HenkanWaku  NCHAR(1) NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_PayoffByHenkanWaku PRIMARY KEY CLUSTERED(RaceId ASC,BracketNum ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                   )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PayoffByPayAll
                               (
    RaceId        NCHAR(12) NOT NULL,
    BetTypeId     INT NOT NULL,
    Kumi1         INT NOT NULL,
    Kumi2         INT NOT NULL,
    Kumi3         INT NOT NULL,
    Num           INT NOT NULL,
    Ninki         FLOAT NULL,
    Pay           FLOAT NULL,
    Timestamp01   DATETIME NULL,
    IsHit         BIT NULL,
    IsChecked     BIT NULL,
    CheckDatetime DATETIME NULL,
    Timestamp02   DATETIME NULL,
    Guid          UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_PayoffByPayAll PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                               )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PredictByBracket_001
                                     (
    RaceId               NCHAR(20) NOT NULL,
    BetTypeId            INT NOT NULL,
    Kumi1                INT NOT NULL,
    Kumi2                INT NOT NULL,
    Kumi3                INT NOT NULL,
    Num                  INT NULL,
    HorseId1             NCHAR(10) NULL,
    HorseId2             NCHAR(10) NULL,
    HorseId3             NCHAR(10) NULL,
    IsValidPredictValue  BIT NULL,
    PredictValue         FLOAT NULL,
    PredictValueSdv      FLOAT NULL,
    PredictValueDv       FLOAT NULL,
    PredictValueRank     FLOAT NULL,
    ExpectedOdds         FLOAT NULL,
    ExpectedOddsRatio    FLOAT NULL,
    PredictScore         FLOAT NULL,
    PredictScoreRank     FLOAT NULL,
    IsValidPredictValue1 BIT NULL,
    PredictValue1        FLOAT NULL,
    PredictValueSdv1     FLOAT NULL,
    PredictValueDv1      FLOAT NULL,
    PredictValueNorm1    FLOAT NULL,
    PredictValueRank1    FLOAT NULL,
    PredictError1        FLOAT NULL,
    IsValidPredictValue2 BIT NULL,
    PredictValue2        FLOAT NULL,
    PredictValueSdv2     FLOAT NULL,
    PredictValueDv2      FLOAT NULL,
    PredictValueNorm2    FLOAT NULL,
    PredictValueRank2    FLOAT NULL,
    PredictError2        FLOAT NULL,
    Timestamp01          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_PredictByBracket PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                     )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PredictByExacta_001
                                    (
    RaceId               NCHAR(12) NOT NULL,
    BetTypeId            INT NOT NULL,
    Kumi1                INT NOT NULL,
    Kumi2                INT NOT NULL,
    Kumi3                INT NOT NULL,
    Num                  INT NULL,
    HorseId1             NCHAR(10) NULL,
    HorseId2             NCHAR(10) NULL,
    HorseId3             NCHAR(10) NULL,
    IsValidPredictValue  BIT NULL,
    PredictValue         FLOAT NULL,
    PredictValueSdv      FLOAT NULL,
    PredictValueDv       FLOAT NULL,
    PredictValueRank     FLOAT NULL,
    ExpectedOdds         FLOAT NULL,
    ExpectedOddsRatio    FLOAT NULL,
    PredictScore         FLOAT NULL,
    PredictScoreRank     FLOAT NULL,
    IsValidPredictValue1 BIT NULL,
    PredictValue1        FLOAT NULL,
    PredictValueSdv1     FLOAT NULL,
    PredictValueDv1      FLOAT NULL,
    PredictValueNorm1    FLOAT NULL,
    PredictValueRank1    FLOAT NULL,
    PredictError1        FLOAT NULL,
    IsValidPredictValue2 BIT NULL,
    PredictValue2        FLOAT NULL,
    PredictValueSdv2     FLOAT NULL,
    PredictValueDv2      FLOAT NULL,
    PredictValueNorm2    FLOAT NULL,
    PredictValueRank2    FLOAT NULL,
    PredictError2        FLOAT NULL,
    Timestamp01          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_PredictByExacta PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                    )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PredictByPlace_001
                                   (
    RaceId               NCHAR(12) NOT NULL,
    BetTypeId            INT NOT NULL,
    Kumi1                INT NOT NULL,
    Kumi2                INT NOT NULL,
    Kumi3                INT NOT NULL,
    Num                  INT NULL,
    HorseId1             NCHAR(10) NULL,
    HorseId2             NCHAR(10) NULL,
    HorseId3             NCHAR(10) NULL,
    IsValidPredictValue  BIT NULL,
    PredictValue         FLOAT NULL,
    PredictValueSdv      FLOAT NULL,
    PredictValueDv       FLOAT NULL,
    PredictValueRank     FLOAT NULL,
    ExpectedOdds         FLOAT NULL,
    ExpectedOddsRatio    FLOAT NULL,
    PredictScore         FLOAT NULL,
    PredictScoreRank     FLOAT NULL,
    IsValidPredictValue1 BIT NULL,
    PredictValue1        FLOAT NULL,
    PredictValueSdv1     FLOAT NULL,
    PredictValueDv1      FLOAT NULL,
    PredictValueNorm1    FLOAT NULL,
    PredictValueRank1    FLOAT NULL,
    PredictError1        FLOAT NULL,
    Timestamp01          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_PredictByPlace PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                   )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PredictByQuinella_001
                                      (
    RaceId               NCHAR(12) NOT NULL,
    BetTypeId            INT NOT NULL,
    Kumi1                INT NOT NULL,
    Kumi2                INT NOT NULL,
    Kumi3                INT NOT NULL,
    Num                  INT NULL,
    HorseId1             NCHAR(10) NULL,
    HorseId2             NCHAR(10) NULL,
    HorseId3             NCHAR(10) NULL,
    IsValidPredictValue  BIT NULL,
    PredictValue         FLOAT NULL,
    PredictValueSdv      FLOAT NULL,
    PredictValueDv       FLOAT NULL,
    PredictValueRank     FLOAT NULL,
    ExpectedOdds         FLOAT NULL,
    ExpectedOddsRatio    FLOAT NULL,
    PredictScore         FLOAT NULL,
    PredictScoreRank     FLOAT NULL,
    IsValidPredictValue1 BIT NULL,
    PredictValue1        FLOAT NULL,
    PredictValueSdv1     FLOAT NULL,
    PredictValueDv1      FLOAT NULL,
    PredictValueNorm1    FLOAT NULL,
    PredictValueRank1    FLOAT NULL,
    PredictError1        FLOAT NULL,
    IsValidPredictValue2 BIT NULL,
    PredictValue2        FLOAT NULL,
    PredictValueSdv2     FLOAT NULL,
    PredictValueDv2      FLOAT NULL,
    PredictValueNorm2    FLOAT NULL,
    PredictValueRank2    FLOAT NULL,
    PredictError2        FLOAT NULL,
    Timestamp01          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_PredictByQuinella PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                      )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PredictByTrifecta_001
                                      (
    RaceId               NCHAR(12) NOT NULL,
    BetTypeId            INT NOT NULL,
    Kumi1                INT NOT NULL,
    Kumi2                INT NOT NULL,
    Kumi3                INT NOT NULL,
    Num                  INT NULL,
    HorseId1             NCHAR(10) NULL,
    HorseId2             NCHAR(10) NULL,
    HorseId3             NCHAR(10) NULL,
    IsValidPredictValue  BIT NULL,
    PredictValue         FLOAT NULL,
    PredictValueSdv      FLOAT NULL,
    PredictValueDv       FLOAT NULL,
    PredictValueRank     FLOAT NULL,
    ExpectedOdds         FLOAT NULL,
    ExpectedOddsRatio    FLOAT NULL,
    PredictScore         FLOAT NULL,
    PredictScoreRank     FLOAT NULL,
    IsValidPredictValue1 BIT NULL,
    PredictValue1        FLOAT NULL,
    PredictValueSdv1     FLOAT NULL,
    PredictValueDv1      FLOAT NULL,
    PredictValueNorm1    FLOAT NULL,
    PredictValueRank1    FLOAT NULL,
    PredictError1        FLOAT NULL,
    IsValidPredictValue2 BIT NULL,
    PredictValue2        FLOAT NULL,
    PredictValueSdv2     FLOAT NULL,
    PredictValueDv2      FLOAT NULL,
    PredictValueNorm2    FLOAT NULL,
    PredictValueRank2    FLOAT NULL,
    PredictError2        FLOAT NULL,
    IsValidPredictValue3 BIT NULL,
    PredictValue3        FLOAT NULL,
    PredictValueSdv3     FLOAT NULL,
    PredictValueDv3      FLOAT NULL,
    PredictValueNorm3    FLOAT NULL,
    PredictValueRank3    FLOAT NULL,
    PredictError3        FLOAT NULL,
    Timestamp01          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_PredictByTrifecta PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                      )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PredictByTrio_001
                                  (
    RaceId               NCHAR(12) NOT NULL,
    BetTypeId            INT NOT NULL,
    Kumi1                INT NOT NULL,
    Kumi2                INT NOT NULL,
    Kumi3                INT NOT NULL,
    Num                  INT NULL,
    HorseId1             NCHAR(10) NULL,
    HorseId2             NCHAR(10) NULL,
    HorseId3             NCHAR(10) NULL,
    IsValidPredictValue  BIT NULL,
    PredictValue         FLOAT NULL,
    PredictValueSdv      FLOAT NULL,
    PredictValueDv       FLOAT NULL,
    PredictValueRank     FLOAT NULL,
    ExpectedOdds         FLOAT NULL,
    ExpectedOddsRatio    FLOAT NULL,
    PredictScore         FLOAT NULL,
    PredictScoreRank     FLOAT NULL,
    IsValidPredictValue1 BIT NULL,
    PredictValue1        FLOAT NULL,
    PredictValueSdv1     FLOAT NULL,
    PredictValueDv1      FLOAT NULL,
    PredictValueNorm1    FLOAT NULL,
    PredictValueRank1    FLOAT NULL,
    PredictError1        FLOAT NULL,
    IsValidPredictValue2 BIT NULL,
    PredictValue2        FLOAT NULL,
    PredictValueSdv2     FLOAT NULL,
    PredictValueDv2      FLOAT NULL,
    PredictValueNorm2    FLOAT NULL,
    PredictValueRank2    FLOAT NULL,
    PredictError2        FLOAT NULL,
    IsValidPredictValue3 BIT NULL,
    PredictValue3        FLOAT NULL,
    PredictValueSdv3     FLOAT NULL,
    PredictValueDv3      FLOAT NULL,
    PredictValueNorm3    FLOAT NULL,
    PredictValueRank3    FLOAT NULL,
    PredictError3        FLOAT NULL,
    Timestamp01          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_PredictByTrio PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PredictByWide_001
                                  (
    RaceId               NCHAR(12) NOT NULL,
    BetTypeId            INT NOT NULL,
    Kumi1                INT NOT NULL,
    Kumi2                INT NOT NULL,
    Kumi3                INT NOT NULL,
    Num                  INT NULL,
    HorseId1             NCHAR(10) NULL,
    HorseId2             NCHAR(10) NULL,
    HorseId3             NCHAR(10) NULL,
    IsValidPredictValue  BIT NULL,
    PredictValue         FLOAT NULL,
    PredictValueSdv      FLOAT NULL,
    PredictValueDv       FLOAT NULL,
    PredictValueRank     FLOAT NULL,
    ExpectedOdds         FLOAT NULL,
    ExpectedOddsRatio    FLOAT NULL,
    PredictScore         FLOAT NULL,
    PredictScoreRank     FLOAT NULL,
    IsValidPredictValue1 BIT NULL,
    PredictValue1        FLOAT NULL,
    PredictValueSdv1     FLOAT NULL,
    PredictValueDv1      FLOAT NULL,
    PredictValueNorm1    FLOAT NULL,
    PredictValueRank1    FLOAT NULL,
    PredictError1        FLOAT NULL,
    IsValidPredictValue2 BIT NULL,
    PredictValue2        FLOAT NULL,
    PredictValueSdv2     FLOAT NULL,
    PredictValueDv2      FLOAT NULL,
    PredictValueNorm2    FLOAT NULL,
    PredictValueRank2    FLOAT NULL,
    PredictError2        FLOAT NULL,
    Timestamp01          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_PredictByWide PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                  )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PredictByWin_001
                                 (
    RaceId               NCHAR(12) NOT NULL,
    BetTypeId            INT NOT NULL,
    Kumi1                INT NOT NULL,
    Kumi2                INT NOT NULL,
    Kumi3                INT NOT NULL,
    Num                  INT NULL,
    HorseId1             NCHAR(10) NULL,
    HorseId2             NCHAR(10) NULL,
    HorseId3             NCHAR(10) NULL,
    IsValidPredictValue  BIT NULL,
    PredictValue         FLOAT NULL,
    PredictValueSdv      FLOAT NULL,
    PredictValueDv       FLOAT NULL,
    PredictValueRank     FLOAT NULL,
    ExpectedOdds         FLOAT NULL,
    ExpectedOddsRatio    FLOAT NULL,
    PredictScore         FLOAT NULL,
    PredictScoreRank     FLOAT NULL,
    IsValidPredictValue1 BIT NULL,
    PredictValue1        FLOAT NULL,
    PredictValueSdv1     FLOAT NULL,
    PredictValueDv1      FLOAT NULL,
    PredictValueNorm1    FLOAT NULL,
    PredictValueRank1    FLOAT NULL,
    PredictError1        FLOAT NULL,
    Timestamp01          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_PredictByWin PRIMARY KEY CLUSTERED(RaceId ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PredictByWinFive
                                 (
    RaceDate             [DATE] NOT NULL,
    BetTypeId            INT NOT NULL,
    Kumi1                INT NOT NULL,
    Kumi2                INT NOT NULL,
    Kumi3                INT NOT NULL,
    Kumi4                INT NOT NULL,
    Kumi5                INT NOT NULL,
    Num                  INT NULL,
    RaceId1              NCHAR(12) NULL,
    RaceId2              NCHAR(12) NULL,
    RaceId3              NCHAR(12) NULL,
    RaceId4              NCHAR(12) NULL,
    RaceId5              NCHAR(12) NULL,
    HorseId1             NCHAR(10) NULL,
    HorseId2             NCHAR(10) NULL,
    HorseId3             NCHAR(10) NULL,
    HorseId4             NCHAR(10) NULL,
    HorseId5             NCHAR(10) NULL,
    BracketNum1          INT NULL,
    BracketNum2          INT NULL,
    BracketNum3          INT NULL,
    BracketNum4          INT NULL,
    BracketNum5          INT NULL,
    IsValidPredictValue  BIT NULL,
    PredictValue         FLOAT NULL,
    PredictValueSdv      FLOAT NULL,
    PredictValueDv       FLOAT NULL,
    PredictValueRank     FLOAT NULL,
    ExpectedOdds         FLOAT NULL,
    ExpectedOddsRatio    FLOAT NULL,
    PredictScore         FLOAT NULL,
    PredictScoreRank     FLOAT NULL,
    IsValidPredictValue1 BIT NULL,
    PredictValue1        FLOAT NULL,
    PredictValueSdv1     FLOAT NULL,
    PredictValueDv1      FLOAT NULL,
    PredictValueNorm1    FLOAT NULL,
    PredictValueRank1    FLOAT NULL,
    PredictError1        FLOAT NULL,
    IsValidPredictValue2 BIT NULL,
    PredictValue2        FLOAT NULL,
    PredictValueSdv2     FLOAT NULL,
    PredictValueDv2      FLOAT NULL,
    PredictValueNorm2    FLOAT NULL,
    PredictValueRank2    FLOAT NULL,
    PredictError2        FLOAT NULL,
    IsValidPredictValue3 BIT NULL,
    PredictValue3        FLOAT NULL,
    PredictValueSdv3     FLOAT NULL,
    PredictValueDv3      FLOAT NULL,
    PredictValueNorm3    FLOAT NULL,
    PredictValueRank3    FLOAT NULL,
    PredictError3        FLOAT NULL,
    IsValidPredictValue4 BIT NULL,
    PredictValue4        FLOAT NULL,
    PredictValueSdv4     FLOAT NULL,
    PredictValueDv4      FLOAT NULL,
    PredictValueNorm4    FLOAT NULL,
    PredictValueRank4    FLOAT NULL,
    PredictError4        FLOAT NULL,
    IsValidPredictValue5 BIT NULL,
    PredictValue5        FLOAT NULL,
    PredictValueSdv5     FLOAT NULL,
    PredictValueDv5      FLOAT NULL,
    PredictValueNorm5    FLOAT NULL,
    PredictValueRank5    FLOAT NULL,
    PredictError5        FLOAT NULL,
    Timestamp01          DATETIME NULL,
    Guid                 UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_PredictByWinFive PRIMARY KEY CLUSTERED(RaceDate ASC,BetTypeId ASC,Kumi1 ASC,Kumi2 ASC,Kumi3 ASC,Kumi4 ASC,Kumi5 ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PredictModels
                              (
    PredictModelId   NVARCHAR(255) NULL,
    PredictModel     VARBINARY(MAX) NULL,
    AnalyzeLog       NVARCHAR(MAX) NULL,
    ExecDatetime     DATETIME NULL,
    Timestamp01      DATETIME NULL,
    PredictModelTemp VARBINARY(MAX) NULL,
    Timestamp02      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL
                              )
ON [INDEX] TEXTIMAGE_ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PredictModels0600
                                  (
    PredictModel VARBINARY(MAX) NULL
                                  )
ON [INDEX] TEXTIMAGE_ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PredictModels1000
                                  (
    PredictModel VARBINARY(MAX) NULL
                                  )
ON [INDEX] TEXTIMAGE_ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PredictModels2000
                                  (
    PredictModel VARBINARY(MAX) NULL
                                  )
ON [INDEX] TEXTIMAGE_ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.PredictModels3000
                                  (
    PredictModel VARBINARY(MAX) NULL
                                  )
ON [INDEX] TEXTIMAGE_ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Race
                     (
    RecKubun                         NCHAR(2) NULL,
    DataKubun                        NCHAR(1) NULL,
    MakeDate                         [DATE] NULL,
    RaceDate                         [DATE] NULL,
    PlaceId                          NCHAR(2) NULL,
    Kaiji                            INT NULL,
    Nichiji                          INT NULL,
    RaceNum                          INT NULL,
    RaceId                           NCHAR(12) NOT NULL,
    RaceDayId                        NCHAR(10) NULL,
    YoubiId                          NCHAR(1) NULL,
    TokuNum                          NCHAR(4) NULL,
    Hondai                           NVARCHAR(60) NULL,
    Fukudai                          NVARCHAR(60) NULL,
    Kakko                            NVARCHAR(60) NULL,
    HondaiEng                        NVARCHAR(120) NULL,
    FukudaiEng                       NVARCHAR(120) NULL,
    KakkoEng                         NVARCHAR(120) NULL,
    Ryakusyo10                       NVARCHAR(20) NULL,
    Ryakusyo6                        NVARCHAR(12) NULL,
    Ryakusyo3                        NVARCHAR(6) NULL,
    Kubun                            NCHAR(1) NULL,
    Nkai                             INT NULL,
    GradeId                          NCHAR(1) NULL,
    GradeIdBefore                    NCHAR(1) NULL,
    SyubetuId                        NCHAR(2) NULL,
    KigoId                           NCHAR(3) NULL,
    JyuryoId                         NCHAR(1) NULL,
    Jyoken1Id                        NCHAR(3) NULL,
    Jyoken2Id                        NCHAR(3) NULL,
    Jyoken3Id                        NCHAR(3) NULL,
    Jyoken4Id                        NCHAR(3) NULL,
    Jyoken5Id                        NCHAR(3) NULL,
    JyokenName                       NVARCHAR(60) NULL,
    Distance                         FLOAT NULL,
    DistanceId                       NCHAR(4) NULL,
    DistanceBefore                   FLOAT NULL,
    DistanceTypeId                   NCHAR(1) NULL,
    DistanceType2Id                  NCHAR(1) NULL,
    TrackId                          NCHAR(2) NULL,
    TrackIdBefore                    NCHAR(2) NULL,
    CourseKubunId                    NCHAR(2) NULL,
    CourseKubunIdBefore              NCHAR(2) NULL,
    Honsyokin1                       FLOAT NULL,
    Honsyokin2                       FLOAT NULL,
    Honsyokin3                       FLOAT NULL,
    Honsyokin4                       FLOAT NULL,
    Honsyokin5                       FLOAT NULL,
    Honsyokin6                       FLOAT NULL,
    Honsyokin7                       FLOAT NULL,
    HonsyokinBefore1                 FLOAT NULL,
    HonsyokinBefore2                 FLOAT NULL,
    HonsyokinBefore3                 FLOAT NULL,
    HonsyokinBefore4                 FLOAT NULL,
    HonsyokinBefore5                 FLOAT NULL,
    Fukasyokin1                      FLOAT NULL,
    Fukasyokin2                      FLOAT NULL,
    Fukasyokin3                      FLOAT NULL,
    Fukasyokin4                      FLOAT NULL,
    Fukasyokin5                      FLOAT NULL,
    FukasyokinBefore1                FLOAT NULL,
    FukasyokinBefore2                FLOAT NULL,
    FukasyokinBefore3                FLOAT NULL,
    StartTime                        DATETIME NULL,
    StartTimeBefore                  DATETIME NULL,
    TorokuTosu                       FLOAT NULL,
    SyussoTosu                       FLOAT NULL,
    NyusenTosu                       FLOAT NULL,
    TenkoId                          NCHAR(1) NULL,
    TrackTypeId                      NCHAR(1) NULL,
    TrackType2Id                     NCHAR(1) NULL,
    TrackType3Id                     NCHAR(1) NULL,
    CourseTypeId                     NCHAR(1) NULL,
    TrackConditionId                 NCHAR(1) NULL,
    SibaBabaId                       NCHAR(1) NULL,
    DirtBabaId                       NCHAR(1) NULL,
    FastestStart3Time                FLOAT NULL,
    FastestStart8Time                FLOAT NULL,
    FastestStart4Time                FLOAT NULL,
    FastestLast3Time                 FLOAT NULL,
    FastestLast4Time                 FLOAT NULL,
    RecordUpKubun                    NCHAR(1) NULL,
    IsJraRace                        BIT NULL,
    SmileId                          NCHAR(1) NULL,
    IsUpdatedEntity                  BIT NULL,
    Timestamp01                      DATETIME NULL,
    IsPredictedRace                  BIT NULL,
    Timestamp02                      DATETIME NULL,
    IsConfirmedRace                  BIT NULL,
    IsAnalyzeNormalPastAndFuture     BIT NULL,
    IsAnalyzeNormalPast              BIT NULL,
    IsAnalyzeNormalFuture            BIT NULL,
    IsAnalyzeFullPastAndFuture       BIT NULL,
    IsAnalyzeFullPast                BIT NULL,
    IsAnalyzeFullFuture              BIT NULL,
    DefaultHitRateA                  FLOAT NULL,
    DefaultHitRateB                  FLOAT NULL,
    DefaultHitRateC                  FLOAT NULL,
    ClassId                          NCHAR(4) NULL,
    JyokenId                         NCHAR(1) NULL,
    PrepRaceType1Id                  NVARCHAR(255) NULL,
    RaceType1Id                      NVARCHAR(255) NULL,
    RaceType2Id                      NVARCHAR(255) NULL,
    RaceType3Id                      NVARCHAR(255) NULL,
    RaceType4Id                      NVARCHAR(255) NULL,
    RaceType5Id                      NVARCHAR(255) NULL,
    RaceType6Id                      NVARCHAR(255) NULL,
    RaceType7Id                      NVARCHAR(255) NULL,
    RaceType8Id                      NVARCHAR(255) NULL,
    RaceType9Id                      NVARCHAR(255) NULL,
    ThisRaceYear                     INT NULL,
    PrevRaceYear                     INT NULL,
    RaceMonthId                      NCHAR(2) NULL,
    RaceMonth                        FLOAT NULL,
    RaceWeekId                       NCHAR(2) NULL,
    RaceWeek                         FLOAT NULL,
    KaijiId                          NCHAR(4) NULL,
    AnalyzeBasicRaceDateFrom         [DATE] NULL,
    AnalyzeBasicRaceDateTo           [DATE] NULL,
    AnalyzeGen01RaceDateFrom         [DATE] NULL,
    AnalyzeGen01RaceDateTo           [DATE] NULL,
    AnalyzeGen02RaceDateFrom         [DATE] NULL,
    AnalyzeGen02RaceDateTo           [DATE] NULL,
    AnalyzeGen05RaceDateFrom         [DATE] NULL,
    AnalyzeGen05RaceDateTo           [DATE] NULL,
    AnalyzeJockeyRaceDateFrom        [DATE] NULL,
    AnalyzeJockeyRaceDateTo          [DATE] NULL,
    AnalyzeTrainerRaceDateFrom       [DATE] NULL,
    AnalyzeTrainerRaceDateTo         [DATE] NULL,
    AnalyzeBanusiRaceDateFrom        [DATE] NULL,
    AnalyzeBanusiRaceDateTo          [DATE] NULL,
    AnalyzePrevRaceHorseRaceDateFrom [DATE] NULL,
    AnalyzePrevRaceHorseRaceDateTo   [DATE] NULL,
    DistanceRemainder                FLOAT NULL,
    FastestStart38Speed              FLOAT NULL,
    Timestamp03                      DATETIME NULL,
    IsValidDistanceSdv               BIT NULL,
    DistanceSdv                      FLOAT NULL,
    DistanceDv                       FLOAT NULL,
    IsValidFastestStart38SpeedSdv    BIT NULL,
    FastestStart38SpeedSdv           FLOAT NULL,
    FastestStart38SpeedDv            FLOAT NULL,
    Timestamp04                      DATETIME NULL,
    Guid                             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_Race PRIMARY KEY CLUSTERED(RaceId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                     )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceByCornerPosition
                                     (
    RaceId      NCHAR(12) NOT NULL,
    Num         INT NOT NULL,
    Corner      FLOAT NULL,
    Syukaisu    FLOAT NULL,
    Jyuni       NVARCHAR(70) NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceByCornerPosition PRIMARY KEY CLUSTERED(RaceId ASC,Num ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                     )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceByLapTime
                              (
    RaceId      NCHAR(12) NOT NULL,
    Num         INT NOT NULL,
    LapTime     FLOAT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceByLapTime PRIMARY KEY CLUSTERED(RaceId ASC,Num ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceExclusion
                              (
    RecKubun         NCHAR(2) NULL,
    DataKubun        NCHAR(1) NULL,
    MakeDate         [DATE] NULL,
    RaceDate         [DATE] NULL,
    PlaceId          NCHAR(2) NULL,
    Kaiji            INT NULL,
    Nichiji          INT NULL,
    RaceNum          INT NULL,
    RaceId           NCHAR(20) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    Bamei            NCHAR(36) NULL,
    ShutsubaTohyoJun INT NOT NULL,
    ShussoKubun      NCHAR(1) NULL,
    JogaiJotaiKubun  NCHAR(1) NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceExclusion PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,ShutsubaTohyoJun ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorse
                          (
    RecKubun                              NCHAR(2) NULL,
    DataKubun                             NCHAR(1) NULL,
    MakeDate                              [DATE] NULL,
    RaceDate                              [DATE] NULL,
    PlaceId                               NCHAR(2) NULL,
    Kaiji                                 INT NULL,
    Nichiji                               INT NULL,
    RaceNum                               INT NULL,
    RaceId                                NCHAR(12) NOT NULL,
    HorseId                               NCHAR(10) NOT NULL,
    BracketNum                            INT NULL,
    HorseNum                              INT NULL,
    Bamei                                 NVARCHAR(36) NULL,
    UmaKigoId                             NCHAR(2) NULL,
    SexId                                 NCHAR(1) NULL,
    HinsyuId                              NCHAR(1) NULL,
    KeiroId                               NCHAR(2) NULL,
    Barei                                 FLOAT NULL,
    TozaiId                               NCHAR(1) NULL,
    TrainerId                             NCHAR(5) NULL,
    TrainerRyakusyo                       NVARCHAR(8) NULL,
    BanusiId                              NCHAR(6) NULL,
    BanusiName                            NVARCHAR(64) NULL,
    SilkId                                NCHAR(60) NULL,
    Reserved1                             NVARCHAR(60) NULL,
    Handicap                              FLOAT NULL,
    HandicapBefore                        FLOAT NULL,
    BlinkerId                             CHAR(1) NULL,
    Reserved2                             NCHAR(1) NULL,
    JockeyId                              NCHAR(5) NULL,
    JockeyIdBefore                        NCHAR(5) NULL,
    JockeyRyakusyo                        NVARCHAR(8) NULL,
    JockeyRyakusyoBefore                  NVARCHAR(8) NULL,
    MinaraiId                             NCHAR(1) NULL,
    MinaraiIdBefore                       NCHAR(1) NULL,
    Weight                                FLOAT NULL,
    WeightDelta                           FLOAT NULL,
    StatsId                               NCHAR(1) NULL,
    NyusenJyuni                           FLOAT NULL,
    KakuteiJyuni                          FLOAT NULL,
    DochakuKubun                          NCHAR(1) NULL,
    DochakuTosu                           FLOAT NULL,
    [Time]                                FLOAT NULL,
    ChakusaId                             NCHAR(3) NULL,
    ChakusaIdP                            NCHAR(3) NULL,
    ChakusaIdPp                           NCHAR(3) NULL,
    Position1                             FLOAT NULL,
    Position2                             FLOAT NULL,
    Position3                             FLOAT NULL,
    Position4                             FLOAT NULL,
    Odds                                  FLOAT NULL,
    Ninki                                 FLOAT NULL,
    Honsyokin                             FLOAT NULL,
    Fukasyokin                            FLOAT NULL,
    Reserved3                             NCHAR(3) NULL,
    Reserved4                             NCHAR(3) NULL,
    Last4Time                             FLOAT NULL,
    Last3Time                             FLOAT NULL,
    Finish01HorseId                       NCHAR(10) NULL,
    Finish01Bamei                         NVARCHAR(36) NULL,
    Finish02HorseId                       NCHAR(10) NULL,
    Finish02Bamei                         NVARCHAR(36) NULL,
    Finish03HorseId                       NCHAR(10) NULL,
    Finish03Bamei                         NVARCHAR(36) NULL,
    TimeDiff                              FLOAT NULL,
    RecordUpKubun                         NCHAR(1) NULL,
    DmKubun                               NCHAR(1) NULL,
    DmTime                                FLOAT NULL,
    DmGosaP                               FLOAT NULL,
    DmGosaM                               FLOAT NULL,
    DmJyuni                               INT NULL,
    RunType                               FLOAT NULL,
    RunTypeId                             NCHAR(1) NULL,
    IsRun                                 FLOAT NULL,
    IsHit1                                FLOAT NULL,
    IsHit2                                FLOAT NULL,
    IsHit3                                FLOAT NULL,
    IsHit4                                FLOAT NULL,
    IsHit5                                FLOAT NULL,
    IsHit6                                FLOAT NULL,
    IsHitA                                FLOAT NULL,
    IsHitB                                FLOAT NULL,
    IsHitC                                FLOAT NULL,
    IsHitD                                FLOAT NULL,
    IsHitE                                FLOAT NULL,
    IsUpdatedEntity                       BIT NULL,
    Timestamp01                           DATETIME NULL,
    IsConfirmedRaceHorse                  BIT NULL,
    Timestamp02                           DATETIME NULL,
    IsValidRaceHorse                      BIT NULL,
    Timestamp03                           DATETIME NULL,
    IsValidTargetRaceHorse                BIT NULL,
    Timestamp04                           DATETIME NULL,
    HorseNumRatio                         FLOAT NULL,
    HandicapRatio                         FLOAT NULL,
    Lifetime                              FLOAT NULL,
    LifetimeLog                           FLOAT NULL,
    PayWin                                FLOAT NULL,
    Timestamp11                           DATETIME NULL,
    IsValidHorseNumRatioSdvByRace         BIT NULL,
    HorseNumRatioSdvByRace                FLOAT NULL,
    IsValidWeightSdvByRace                BIT NULL,
    WeightSdvByRace                       FLOAT NULL,
    IsValidHandicapSdvByRace              BIT NULL,
    HandicapSdvByRace                     FLOAT NULL,
    IsValidHandicapRatioSdvByRace         BIT NULL,
    HandicapRatioSdvByRace                FLOAT NULL,
    IsValidLifetimeSdvByRace              BIT NULL,
    LifetimeSdvByRace                     FLOAT NULL,
    Timestamp12                           DATETIME NULL,
    IsValidHorseNumRatioSdv               BIT NULL,
    HorseNumRatioSdv                      FLOAT NULL,
    IsValidWeightSdv                      BIT NULL,
    WeightSdv                             FLOAT NULL,
    IsValidHandicapSdv                    BIT NULL,
    HandicapSdv                           FLOAT NULL,
    IsValidHandicapRatioSdv               BIT NULL,
    HandicapRatioSdv                      FLOAT NULL,
    IsValidLifetimeSdv                    BIT NULL,
    LifetimeSdv                           FLOAT NULL,
    Timestamp13                           DATETIME NULL,
    FinishTime                            FLOAT NULL,
    FirstTime                             FLOAT NULL,
    LastTime                              FLOAT NULL,
    FinishSpeed                           FLOAT NULL,
    FirstSpeed                            FLOAT NULL,
    LastSpeed                             FLOAT NULL,
    FinishAccel                           FLOAT NULL,
    FirstAccel                            FLOAT NULL,
    LastAccel                             FLOAT NULL,
    FinishStartSpeedRatio                 FLOAT NULL,
    Timestamp21                           DATETIME NULL,
    IsValidFinishTimeSdvByRace            BIT NULL,
    FinishTimeSdvByRace                   FLOAT NULL,
    FinishTimeDvByRace                    FLOAT NULL,
    IsValidFirstTimeSdvByRace             BIT NULL,
    FirstTimeSdvByRace                    FLOAT NULL,
    FirstTimeDvByRace                     FLOAT NULL,
    IsValidLastTimeSdvByRace              BIT NULL,
    LastTimeSdvByRace                     FLOAT NULL,
    LastTimeDvByRace                      FLOAT NULL,
    IsValidFinishSpeedSdvByRace           BIT NULL,
    FinishSpeedSdvByRace                  FLOAT NULL,
    FinishSpeedDvByRace                   FLOAT NULL,
    IsValidFirstSpeedSdvByRace            BIT NULL,
    FirstSpeedSdvByRace                   FLOAT NULL,
    FirstSpeedDvByRace                    FLOAT NULL,
    IsValidLastSpeedSdvByRace             BIT NULL,
    LastSpeedSdvByRace                    FLOAT NULL,
    LastSpeedDvByRace                     FLOAT NULL,
    IsValidFinishAccelSdvByRace           BIT NULL,
    FinishAccelSdvByRace                  FLOAT NULL,
    FinishAccelDvByRace                   FLOAT NULL,
    IsValidFirstAccelSdvByRace            BIT NULL,
    FirstAccelSdvByRace                   FLOAT NULL,
    FirstAccelDvByRace                    FLOAT NULL,
    IsValidLastAccelSdvByRace             BIT NULL,
    LastAccelSdvByRace                    FLOAT NULL,
    LastAccelDvByRace                     FLOAT NULL,
    IsValidFinishStartSpeedRatioSdvByRace BIT NULL,
    FinishStartSpeedRatioSdvByRace        FLOAT NULL,
    FinishStartSpeedRatioDvByRace         FLOAT NULL,
    IsValidPosition1SdvByRace             BIT NULL,
    Position1SdvByRace                    FLOAT NULL,
    IsValidPosition2SdvByRace             BIT NULL,
    Position2SdvByRace                    FLOAT NULL,
    IsValidPosition3SdvByRace             BIT NULL,
    Position3SdvByRace                    FLOAT NULL,
    IsValidPosition4SdvByRace             BIT NULL,
    Position4SdvByRace                    FLOAT NULL,
    Timestamp22                           DATETIME NULL,
    IsValidFinishTimeSdv                  BIT NULL,
    FinishTimeSdv                         FLOAT NULL,
    FinishTimeDv                          FLOAT NULL,
    IsValidFirstTimeSdv                   BIT NULL,
    FirstTimeSdv                          FLOAT NULL,
    FirstTimeDv                           FLOAT NULL,
    IsValidLastTimeSdv                    BIT NULL,
    LastTimeSdv                           FLOAT NULL,
    LastTimeDv                            FLOAT NULL,
    IsValidFinishSpeedSdv                 BIT NULL,
    FinishSpeedSdv                        FLOAT NULL,
    FinishSpeedDv                         FLOAT NULL,
    IsValidFirstSpeedSdv                  BIT NULL,
    FirstSpeedSdv                         FLOAT NULL,
    FirstSpeedDv                          FLOAT NULL,
    IsValidLastSpeedSdv                   BIT NULL,
    LastSpeedSdv                          FLOAT NULL,
    LastSpeedDv                           FLOAT NULL,
    IsValidFinishAccelSdv                 BIT NULL,
    FinishAccelSdv                        FLOAT NULL,
    FinishAccelDv                         FLOAT NULL,
    IsValidFirstAccelSdv                  BIT NULL,
    FirstAccelSdv                         FLOAT NULL,
    FirstAccelDv                          FLOAT NULL,
    IsValidLastAccelSdv                   BIT NULL,
    LastAccelSdv                          FLOAT NULL,
    LastAccelDv                           FLOAT NULL,
    IsValidFinishStartSpeedRatioSdv       BIT NULL,
    FinishStartSpeedRatioSdv              FLOAT NULL,
    FinishStartSpeedRatioDv               FLOAT NULL,
    IsValidRunTypeSdv                     BIT NULL,
    RunTypeSdv                            FLOAT NULL,
    RunTypeDv                             FLOAT NULL,
    Timestamp23                           DATETIME NULL,
    IsValidPredictValueA                  BIT NULL,
    PredictValueA                         FLOAT NULL,
    PredictValueSdvA                      FLOAT NULL,
    PredictValueDvA                       FLOAT NULL,
    PredictValueNormA                     FLOAT NULL,
    PredictValueRankA                     INT NULL,
    PredictErrorA                         INT NULL,
    IsValidPredictValueB                  BIT NULL,
    PredictValueB                         FLOAT NULL,
    PredictValueSdvB                      FLOAT NULL,
    PredictValueDvB                       FLOAT NULL,
    PredictValueNormB                     FLOAT NULL,
    PredictValueRankB                     INT NULL,
    PredictErrorB                         INT NULL,
    IsValidPredictValueC                  BIT NULL,
    PredictValueC                         FLOAT NULL,
    PredictValueSdvC                      FLOAT NULL,
    PredictValueDvC                       FLOAT NULL,
    PredictValueNormC                     FLOAT NULL,
    PredictValueRankC                     INT NULL,
    PredictErrorC                         INT NULL,
    PredictDatetime                       DATETIME NULL,
    Timestamp32                           DATETIME NULL,
    PrepHorseNumRatio                     FLOAT NULL,
    PrepWeight                            FLOAT NULL,
    PrepHandicap                          FLOAT NULL,
    PrepHandicapRatio                     FLOAT NULL,
    PrepLifetime                          FLOAT NULL,
    Timestamp81                           DATETIME NULL,
    IsValidPrepHorseNumRatioSdv           BIT NULL,
    PrepHorseNumRatioSdv                  FLOAT NULL,
    IsValidPrepWeightSdv                  BIT NULL,
    PrepWeightSdv                         FLOAT NULL,
    IsValidPrepHandicapSdv                BIT NULL,
    PrepHandicapSdv                       FLOAT NULL,
    IsValidPrepHandicapRatioSdv           BIT NULL,
    PrepHandicapRatioSdv                  FLOAT NULL,
    IsValidPrepLifetimeSdv                BIT NULL,
    PrepLifetimeSdv                       FLOAT NULL,
    Timestamp82                           DATETIME NULL,
    PrepFinishTime                        FLOAT NULL,
    PrepFirstTime                         FLOAT NULL,
    PrepLastTime                          FLOAT NULL,
    PrepFinishSpeed                       FLOAT NULL,
    PrepFirstSpeed                        FLOAT NULL,
    PrepLastSpeed                         FLOAT NULL,
    Timestamp91                           DATETIME NULL,
    IsValidPrepFinishTimeSdv              BIT NULL,
    PrepFinishTimeSdv                     FLOAT NULL,
    IsValidPrepFirstTimeSdv               BIT NULL,
    PrepFirstTimeSdv                      FLOAT NULL,
    IsValidPrepLastTimeSdv                BIT NULL,
    PrepLastTimeSdv                       FLOAT NULL,
    IsValidPrepFinishSpeedSdv             BIT NULL,
    PrepFinishSpeedSdv                    FLOAT NULL,
    IsValidPrepFirstSpeedSdv              BIT NULL,
    PrepFirstSpeedSdv                     FLOAT NULL,
    IsValidPrepLastSpeedSdv               BIT NULL,
    PrepLastSpeedSdv                      FLOAT NULL,
    Timestamp92                           DATETIME NULL,
    Guid                                  UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_RaceHorse PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                          )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistory
                                 (
    RecKubun            NCHAR(2) NULL,
    DataKubun           NCHAR(1) NULL,
    MakeDate            [DATE] NULL,
    RaceDate            [DATE] NULL,
    PlaceId             NCHAR(2) NULL,
    Kaiji               INT NULL,
    Nichiji             INT NULL,
    RaceNum             INT NULL,
    RaceId              NCHAR(12) NOT NULL,
    HorseId             NCHAR(10) NOT NULL,
    Bamei               NVARCHAR(18) NULL,
    RuikeiHonsyoHeiti   FLOAT NULL,
    RuikeiHonsyoSyogai  FLOAT NULL,
    RuikeiFukaHeichi    FLOAT NULL,
    RuikeiFukaSyogai    FLOAT NULL,
    RuikeiSyutokuHeichi FLOAT NULL,
    RuikeiSyutokuSyogai FLOAT NULL,
    RaceCount           FLOAT NULL,
    Timestamp01         DATETIME NULL,
    Timestamp02         DATETIME NULL,
    Guid                UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistory PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByBanusi
                                         (
    RaceId      NCHAR(12) NOT NULL,
    HorseId     NCHAR(10) NOT NULL,
    SummaryType INT NOT NULL,
    BanusiId    NCHAR(6) NULL,
    SetYear     INT NULL,
    Honsyokin   FLOAT NULL,
    Fukasyokin  FLOAT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByBanusi PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,SummaryType ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                         )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByBanusiByTotal
                                                (
    RaceId      NCHAR(12) NOT NULL,
    HorseId     NCHAR(10) NOT NULL,
    SummaryType INT NOT NULL,
    BanusiId    NCHAR(6) NULL,
    RunCount    FLOAT NULL,
    HitCount1   FLOAT NULL,
    HitRate1    FLOAT NULL,
    HitCount2   FLOAT NULL,
    HitRate2    FLOAT NULL,
    HitCount3   FLOAT NULL,
    HitRate3    FLOAT NULL,
    HitCount4   FLOAT NULL,
    HitRate4    FLOAT NULL,
    HitCount5   FLOAT NULL,
    HitRate5    FLOAT NULL,
    HitCount6   FLOAT NULL,
    HitRate6    FLOAT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByBanusiByTotal PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,SummaryType ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByBreeder
                                          (
    RaceId      NCHAR(12) NOT NULL,
    HorseId     NCHAR(10) NOT NULL,
    SummaryType INT NOT NULL,
    BreederId   NCHAR(6) NULL,
    SetYear     INT NULL,
    Honsyokin   FLOAT NULL,
    Fukasyokin  FLOAT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByBreeder PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,SummaryType ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                          )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByBreederByTotal
                                                 (
    RaceId      NCHAR(12) NOT NULL,
    HorseId     NCHAR(10) NOT NULL,
    SummaryType INT NOT NULL,
    BreederId   NCHAR(6) NULL,
    RunCount    FLOAT NULL,
    HitCount1   FLOAT NULL,
    HitRate1    FLOAT NULL,
    HitCount2   FLOAT NULL,
    HitRate2    FLOAT NULL,
    HitCount3   FLOAT NULL,
    HitRate3    FLOAT NULL,
    HitCount4   FLOAT NULL,
    HitRate4    FLOAT NULL,
    HitCount5   FLOAT NULL,
    HitRate5    FLOAT NULL,
    HitCount6   FLOAT NULL,
    HitRate6    FLOAT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByBreederByTotal PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,SummaryType ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByHorse
                                        (
    RaceId              NCHAR(12) NOT NULL,
    HorseId             NCHAR(10) NOT NULL,
    Bamei               NCHAR(36) NULL,
    RuikeiHonsyoHeiti   FLOAT NULL,
    RuikeiHonsyoSyogai  FLOAT NULL,
    RuikeiFukaHeichi    FLOAT NULL,
    RuikeiFukaSyogai    FLOAT NULL,
    RuikeiSyutokuHeichi FLOAT NULL,
    RuikeiSyutokuSyogai FLOAT NULL,
    Timestamp01         DATETIME NULL,
    Guid                UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByHorse PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                        )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByHorseByCourseType
                                                    (
    RaceId       NCHAR(12) NOT NULL,
    HorseId      NCHAR(10) NOT NULL,
    TrackTypeId  NCHAR(1) NOT NULL,
    CourseTypeId NCHAR(1) NOT NULL,
    RunCount     FLOAT NULL,
    HitCount1    FLOAT NULL,
    HitRate1     FLOAT NULL,
    HitCount2    FLOAT NULL,
    HitRate2     FLOAT NULL,
    HitCount3    FLOAT NULL,
    HitRate3     FLOAT NULL,
    HitCount4    FLOAT NULL,
    HitRate4     FLOAT NULL,
    HitCount5    FLOAT NULL,
    HitRate5     FLOAT NULL,
    HitCount6    FLOAT NULL,
    HitRate6     FLOAT NULL,
    Timestamp01  DATETIME NULL,
    Guid         UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByHorseByCourseType PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,TrackTypeId ASC,CourseTypeId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                    )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByHorseByDistanceType
                                                      (
    RaceId         NCHAR(12) NOT NULL,
    HorseId        NCHAR(10) NOT NULL,
    TrackTypeId    NCHAR(1) NOT NULL,
    DistanceTypeId NCHAR(1) NOT NULL,
    RunCount       FLOAT NULL,
    HitCount1      FLOAT NULL,
    HitRate1       FLOAT NULL,
    HitCount2      FLOAT NULL,
    HitRate2       FLOAT NULL,
    HitCount3      FLOAT NULL,
    HitRate3       FLOAT NULL,
    HitCount4      FLOAT NULL,
    HitRate4       FLOAT NULL,
    HitCount5      FLOAT NULL,
    HitRate5       FLOAT NULL,
    HitCount6      FLOAT NULL,
    HitRate6       FLOAT NULL,
    Timestamp01    DATETIME NULL,
    Timestamp02    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByHorseByDistanceType PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,TrackTypeId ASC,DistanceTypeId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                      )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByHorseByJyo
                                             (
    RaceId      NCHAR(12) NOT NULL,
    HorseId     NCHAR(10) NOT NULL,
    TrackTypeId NCHAR(1) NOT NULL,
    PlaceId     NCHAR(2) NOT NULL,
    RunCount    FLOAT NULL,
    HitCount1   FLOAT NULL,
    HitRate1    FLOAT NULL,
    HitCount2   FLOAT NULL,
    HitRate2    FLOAT NULL,
    HitCount3   FLOAT NULL,
    HitRate3    FLOAT NULL,
    HitCount4   FLOAT NULL,
    HitRate4    FLOAT NULL,
    HitCount5   FLOAT NULL,
    HitRate5    FLOAT NULL,
    HitCount6   FLOAT NULL,
    HitRate6    FLOAT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByHorseByJyo PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,TrackTypeId ASC,PlaceId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                             )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByHorseByRunType
                                                 (
    RaceId         NCHAR(12) NOT NULL,
    HorseId        NCHAR(10) NOT NULL,
    RunCount       FLOAT NULL,
    Pos1Count      FLOAT NULL,
    Pos1Rate       FLOAT NULL,
    Pos2Count      FLOAT NULL,
    Pos2Rate       FLOAT NULL,
    Pos3Count      FLOAT NULL,
    Pos3Rate       FLOAT NULL,
    Pos4Count      FLOAT NULL,
    Pos4Rate       FLOAT NULL,
    Timestamp01    DATETIME NULL,
    IsValidRunType BIT NULL,
    RunTypeSdv     FLOAT NULL,
    RunTypeDv      FLOAT NULL,
    RunTypeRank    FLOAT NULL,
    Timestamp02    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByHorseByRunType PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByHorseByTotal
                                               (
    RaceId         NCHAR(12) NOT NULL,
    HorseId        NCHAR(10) NOT NULL,
    RunCount       FLOAT NULL,
    HitCount1      FLOAT NULL,
    HitRate1       FLOAT NULL,
    HitCount2      FLOAT NULL,
    HitRate2       FLOAT NULL,
    HitCount3      FLOAT NULL,
    HitRate3       FLOAT NULL,
    HitCount4      FLOAT NULL,
    HitRate4       FLOAT NULL,
    HitCount5      FLOAT NULL,
    HitRate5       FLOAT NULL,
    HitCount6      FLOAT NULL,
    HitRate6       FLOAT NULL,
    RunCountTotal  FLOAT NULL,
    HitCountTotal1 FLOAT NULL,
    HitRateTotal1  FLOAT NULL,
    HitCountTotal2 FLOAT NULL,
    HitRateTotal2  FLOAT NULL,
    HitCountTotal3 FLOAT NULL,
    HitRateTotal3  FLOAT NULL,
    HitCountTotal4 FLOAT NULL,
    HitRateTotal4  FLOAT NULL,
    HitCountTotal5 FLOAT NULL,
    HitRateTotal5  FLOAT NULL,
    HitCountTotal6 FLOAT NULL,
    HitRateTotal6  FLOAT NULL,
    Timestamp01    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByHorseByTotal PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                               )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByHorseByTrackCondition
                                                        (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    TrackTypeId      NCHAR(1) NOT NULL,
    TrackConditionId NCHAR(1) NOT NULL,
    RunCount         FLOAT NULL,
    HitCount1        FLOAT NULL,
    HitRate1         FLOAT NULL,
    HitCount2        FLOAT NULL,
    HitRate2         FLOAT NULL,
    HitCount3        FLOAT NULL,
    HitRate3         FLOAT NULL,
    HitCount4        FLOAT NULL,
    HitRate4         FLOAT NULL,
    HitCount5        FLOAT NULL,
    HitRate5         FLOAT NULL,
    HitCount6        FLOAT NULL,
    HitRate6         FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByHorseByTrackCondition PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,TrackTypeId ASC,TrackConditionId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                        )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByHorseByTrackType
                                                   (
    RaceId      NCHAR(12) NOT NULL,
    HorseId     NCHAR(10) NOT NULL,
    TrackTypeId NCHAR(1) NOT NULL,
    RunCount    FLOAT NULL,
    HitCount1   FLOAT NULL,
    HitRate1    FLOAT NULL,
    HitCount2   FLOAT NULL,
    HitRate2    FLOAT NULL,
    HitCount3   FLOAT NULL,
    HitRate3    FLOAT NULL,
    HitCount4   FLOAT NULL,
    HitRate4    FLOAT NULL,
    HitCount5   FLOAT NULL,
    HitRate5    FLOAT NULL,
    HitCount6   FLOAT NULL,
    HitRate6    FLOAT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByHorseByTrackType PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,TrackTypeId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                   )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByJockey
                                         (
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    SummaryType      INT NOT NULL,
    JockeyId         NCHAR(5) NULL,
    JockeyName       NVARCHAR(34) NULL,
    SetYear          INT NULL,
    HonsyokinHeichi  FLOAT NULL,
    HonsyokinSyogai  FLOAT NULL,
    FukasyokinHeichi FLOAT NULL,
    FukasyokinSyogai FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByJocky PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,SummaryType ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                         )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByJockeyByDistanceType
                                                       (
    RaceId         NCHAR(12) NOT NULL,
    HorseId        NCHAR(10) NOT NULL,
    SummaryType    INT NOT NULL,
    TrackType2Id   NCHAR(1) NOT NULL,
    DistanceTypeId INT NOT NULL,
    RunCount       FLOAT NULL,
    HitCount1      FLOAT NULL,
    HitRate1       FLOAT NULL,
    HitCount2      FLOAT NULL,
    HitRate2       FLOAT NULL,
    HitCount3      FLOAT NULL,
    HitRate3       FLOAT NULL,
    HitCount4      FLOAT NULL,
    HitRate4       FLOAT NULL,
    HitCount5      FLOAT NULL,
    HitRate5       FLOAT NULL,
    HitCount6      FLOAT NULL,
    HitRate6       FLOAT NULL,
    Timestamp01    DATETIME NULL,
    Timestamp02    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByJockeyByDistanceType PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,SummaryType ASC,TrackType2Id ASC,DistanceTypeId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                       )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByJockeyByJyo
                                              (
    RaceId      NCHAR(12) NOT NULL,
    HorseId     NCHAR(10) NOT NULL,
    SummaryType INT NOT NULL,
    TrackTypeId NCHAR(1) NOT NULL,
    PlaceId     NCHAR(2) NOT NULL,
    RunCount    FLOAT NULL,
    HitCount1   FLOAT NULL,
    HitRate1    FLOAT NULL,
    HitCount2   FLOAT NULL,
    HitRate2    FLOAT NULL,
    HitCount3   FLOAT NULL,
    HitRate3    FLOAT NULL,
    HitCount4   FLOAT NULL,
    HitRate4    FLOAT NULL,
    HitCount5   FLOAT NULL,
    HitRate5    FLOAT NULL,
    HitCount6   FLOAT NULL,
    HitRate6    FLOAT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByJockeyByJyo PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,SummaryType ASC,TrackTypeId ASC,PlaceId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByJockeyByTrackType
                                                    (
    RaceId      NCHAR(12) NOT NULL,
    HorseId     NCHAR(10) NOT NULL,
    SummaryType INT NOT NULL,
    TrackTypeId NCHAR(1) NOT NULL,
    RunCount    FLOAT NULL,
    HitCount1   FLOAT NULL,
    HitRate1    FLOAT NULL,
    HitCount2   FLOAT NULL,
    HitRate2    FLOAT NULL,
    HitCount3   FLOAT NULL,
    HitRate3    FLOAT NULL,
    HitCount4   FLOAT NULL,
    HitRate4    FLOAT NULL,
    HitCount5   FLOAT NULL,
    HitRate5    FLOAT NULL,
    HitCount6   FLOAT NULL,
    HitRate6    FLOAT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByJockeyByTrackType PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,SummaryType ASC,TrackTypeId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                    )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByTrainer
                                          (
    RecKubun         NCHAR(2) NULL,
    DataKubun        NCHAR(1) NULL,
    MakeDate         [DATE] NULL,
    RaceDate         [DATE] NULL,
    PlaceId          NCHAR(2) NULL,
    Kaiji            INT NULL,
    Nichiji          INT NULL,
    RaceNum          INT NULL,
    RaceId           NCHAR(12) NOT NULL,
    HorseId          NCHAR(10) NOT NULL,
    SummaryType      INT NOT NULL,
    TrainerId        NCHAR(5) NULL,
    TrainerName      NCHAR(34) NULL,
    SetYear          INT NULL,
    HonsyokinHeichi  FLOAT NULL,
    HonsyokinSyogai  FLOAT NULL,
    FukasyokinHeichi FLOAT NULL,
    FukasyokinSyogai FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByTrainer PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,SummaryType ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                          )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByTrainerByDistanceType
                                                        (
    RaceId         NCHAR(12) NOT NULL,
    HorseId        NCHAR(10) NOT NULL,
    SummaryType    INT NOT NULL,
    TrackType2Id   NCHAR(1) NOT NULL,
    DistanceTypeId INT NOT NULL,
    RunCount       FLOAT NULL,
    HitCount1      FLOAT NULL,
    HitRate1       FLOAT NULL,
    HitCount2      FLOAT NULL,
    HitRate2       FLOAT NULL,
    HitCount3      FLOAT NULL,
    HitRate3       FLOAT NULL,
    HitCount4      FLOAT NULL,
    HitRate4       FLOAT NULL,
    HitCount5      FLOAT NULL,
    HitRate5       FLOAT NULL,
    HitCount6      FLOAT NULL,
    HitRate6       FLOAT NULL,
    Timestamp01    DATETIME NULL,
    Timestamp02    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByTrainerByDistanceType PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,SummaryType ASC,TrackType2Id ASC,DistanceTypeId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                        )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByTrainerByJyo
                                               (
    RaceId      NCHAR(12) NOT NULL,
    HorseId     NCHAR(10) NOT NULL,
    SummaryType INT NOT NULL,
    TrackTypeId NCHAR(1) NOT NULL,
    Place2Id    NCHAR(2) NOT NULL,
    RunCount    FLOAT NULL,
    HitCount1   FLOAT NULL,
    HitRate1    FLOAT NULL,
    HitCount2   FLOAT NULL,
    HitRate2    FLOAT NULL,
    HitCount3   FLOAT NULL,
    HitRate3    FLOAT NULL,
    HitCount4   FLOAT NULL,
    HitRate4    FLOAT NULL,
    HitCount5   FLOAT NULL,
    HitRate5    FLOAT NULL,
    HitCount6   FLOAT NULL,
    HitRate6    FLOAT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByTrainerByJyo PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,SummaryType ASC,TrackTypeId ASC,Place2Id ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                               )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceHorseHistoryByTrainerByTrackType
                                                     (
    RaceId      NCHAR(12) NOT NULL,
    HorseId     NCHAR(10) NOT NULL,
    SummaryType INT NOT NULL,
    TrackTypeId NCHAR(1) NOT NULL,
    RunCount    FLOAT NULL,
    HitCount1   FLOAT NULL,
    HitRate1    FLOAT NULL,
    HitCount2   FLOAT NULL,
    HitRate2    FLOAT NULL,
    HitCount3   FLOAT NULL,
    HitRate3    FLOAT NULL,
    HitCount4   FLOAT NULL,
    HitRate4    FLOAT NULL,
    HitCount5   FLOAT NULL,
    HitRate5    FLOAT NULL,
    HitCount6   FLOAT NULL,
    HitRate6    FLOAT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceHorseHistoryByTrainerByTrackType PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC,SummaryType ASC,TrackTypeId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                     )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceInfo
                         (
    RaceId           NCHAR(12) NOT NULL,
    PredictDatetime  DATETIME NULL,
    Timestamp01      DATETIME NULL,
    CrawlDatetime    DATETIME NULL,
    Timestamp02      DATETIME NULL,
    IsBet            BIT NULL,
    BetCount         FLOAT NULL,
    BetMoney         FLOAT NULL,
    BetDatetime      DATETIME NULL,
    IsAutoBet        BIT NULL,
    AutoBetDatetime  DATETIME NULL,
    Timestamp03      DATETIME NULL,
    IsHit            BIT NULL,
    HitCount         FLOAT NULL,
    IsHitWin         BIT NULL,
    HitCountWin      FLOAT NULL,
    IsHitPlace       BIT NULL,
    HitCountPlace    FLOAT NULL,
    IsHitBracket     BIT NULL,
    HitCountBracket  FLOAT NULL,
    IsHitQuinella    BIT NULL,
    HitCountQuinella FLOAT NULL,
    IsHitWide        BIT NULL,
    HitCountWide     FLOAT NULL,
    IsHitExacta      BIT NULL,
    HitCountExacta   FLOAT NULL,
    IsHitTrio        BIT NULL,
    HitCountTrio     FLOAT NULL,
    IsHitTrifecta    BIT NULL,
    HitCountTrifecta FLOAT NULL,
    HitMoney         FLOAT NULL,
    ReturnMoney      FLOAT NULL,
    HitRate          FLOAT NULL,
    ReturnRate       FLOAT NULL,
    Timestamp04      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_RaceInfo PRIMARY KEY CLUSTERED(RaceId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                         )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.RaceRecord
                           (
    RecKubun           NCHAR(2) NULL,
    DataKubun          NCHAR(1) NULL,
    MakeDate           [DATE] NULL,
    RecInfoKubun       NCHAR(1) NOT NULL,
    RaceDate           [DATE] NULL,
    PlaceId            NCHAR(2) NULL,
    Kaiji              INT NULL,
    Nichiji            INT NULL,
    RaceNum            INT NULL,
    RaceId             NCHAR(12) NOT NULL,
    TokuNum            NCHAR(4) NOT NULL,
    Hondai             NVARCHAR(30) NULL,
    GradeId            NCHAR(1) NOT NULL,
    SyubetuId          NCHAR(2) NOT NULL,
    Distance           INT NOT NULL,
    TrackId            NCHAR(2) NOT NULL,
    RecordKubun        NCHAR(10) NULL,
    RecTime            FLOAT NULL,
    TenkoId            NCHAR(1) NULL,
    SibaBabaId         NCHAR(1) NULL,
    DirtBabaId         NCHAR(1) NULL,
    RecUma1HorseId     NCHAR(10) NULL,
    RecUma1Bamei       NVARCHAR(18) NULL,
    RecUma1UmaKigoId   NCHAR(2) NULL,
    RecUma1SexId       NCHAR(1) NULL,
    RecUma1TrainerId   NCHAR(5) NULL,
    RecUma1TrainerName NVARCHAR(17) NULL,
    RecUma1Handicap    FLOAT NULL,
    RecUma1JockeyId    NCHAR(5) NULL,
    RecUma1JockeyName  NVARCHAR(17) NULL,
    RecUma2HorseId     NCHAR(10) NULL,
    RecUma2Bamei       NVARCHAR(18) NULL,
    RecUma2UmaKigoId   NCHAR(2) NULL,
    RecUma2SexId       NCHAR(1) NULL,
    RecUma2TrainerId   NCHAR(5) NULL,
    RecUma2TrainerName NVARCHAR(17) NULL,
    RecUma2Handicap    FLOAT NULL,
    RecUma2JockeyId    NCHAR(5) NULL,
    RecUma2JockeyName  NVARCHAR(17) NULL,
    RecUma3HorseId     NCHAR(10) NULL,
    RecUma3Bamei       NVARCHAR(18) NULL,
    RecUma3UmaKigoId   NCHAR(2) NULL,
    RecUma3SexId       NCHAR(1) NULL,
    RecUma3TrainerId   NCHAR(5) NULL,
    RecUma3TrainerName NVARCHAR(17) NULL,
    RecUma3Handicap    FLOAT NULL,
    RecUma3JockeyId    NCHAR(5) NULL,
    RecUma3JockeyName  NVARCHAR(17) NULL,
    Timestamp01        DATETIME NULL,
    Guid               UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_RaceRecord PRIMARY KEY CLUSTERED(RecInfoKubun ASC,RaceId ASC,TokuNum ASC,SyubetuId ASC,Distance ASC,TrackId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                           )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ReplRace
                         (
    RecKubun                         NCHAR(2) NULL,
    DataKubun                        NCHAR(1) NULL,
    MakeDate                         [DATE] NULL,
    RaceDate                         [DATE] NULL,
    PlaceId                          NCHAR(2) NULL,
    Kaiji                            INT NULL,
    Nichiji                          INT NULL,
    RaceNum                          INT NULL,
    RaceId                           NCHAR(12) NOT NULL,
    RaceDayId                        NCHAR(10) NULL,
    YoubiId                          NCHAR(1) NULL,
    TokuNum                          NCHAR(4) NULL,
    Hondai                           NVARCHAR(60) NULL,
    Fukudai                          NVARCHAR(60) NULL,
    Kakko                            NVARCHAR(60) NULL,
    HondaiEng                        NVARCHAR(120) NULL,
    FukudaiEng                       NVARCHAR(120) NULL,
    KakkoEng                         NVARCHAR(120) NULL,
    Ryakusyo10                       NVARCHAR(20) NULL,
    Ryakusyo6                        NVARCHAR(12) NULL,
    Ryakusyo3                        NVARCHAR(6) NULL,
    Kubun                            NCHAR(1) NULL,
    Nkai                             INT NULL,
    GradeId                          NCHAR(1) NULL,
    GradeIdBefore                    NCHAR(1) NULL,
    SyubetuId                        NCHAR(2) NULL,
    KigoId                           NCHAR(3) NULL,
    JyuryoId                         NCHAR(1) NULL,
    Jyoken1Id                        NCHAR(3) NULL,
    Jyoken2Id                        NCHAR(3) NULL,
    Jyoken3Id                        NCHAR(3) NULL,
    Jyoken4Id                        NCHAR(3) NULL,
    Jyoken5Id                        NCHAR(3) NULL,
    JyokenName                       NVARCHAR(60) NULL,
    Distance                         FLOAT NULL,
    DistanceId                       NCHAR(4) NULL,
    DistanceBefore                   FLOAT NULL,
    DistanceTypeId                   NCHAR(1) NULL,
    DistanceType2Id                  NCHAR(1) NULL,
    TrackId                          NCHAR(2) NULL,
    TrackIdBefore                    NCHAR(2) NULL,
    CourseKubunId                    NCHAR(2) NULL,
    CourseKubunIdBefore              NCHAR(2) NULL,
    Honsyokin1                       FLOAT NULL,
    Honsyokin2                       FLOAT NULL,
    Honsyokin3                       FLOAT NULL,
    Honsyokin4                       FLOAT NULL,
    Honsyokin5                       FLOAT NULL,
    Honsyokin6                       FLOAT NULL,
    Honsyokin7                       FLOAT NULL,
    HonsyokinBefore1                 FLOAT NULL,
    HonsyokinBefore2                 FLOAT NULL,
    HonsyokinBefore3                 FLOAT NULL,
    HonsyokinBefore4                 FLOAT NULL,
    HonsyokinBefore5                 FLOAT NULL,
    Fukasyokin1                      FLOAT NULL,
    Fukasyokin2                      FLOAT NULL,
    Fukasyokin3                      FLOAT NULL,
    Fukasyokin4                      FLOAT NULL,
    Fukasyokin5                      FLOAT NULL,
    FukasyokinBefore1                FLOAT NULL,
    FukasyokinBefore2                FLOAT NULL,
    FukasyokinBefore3                FLOAT NULL,
    StartTime                        DATETIME NULL,
    StartTimeBefore                  DATETIME NULL,
    TorokuTosu                       FLOAT NULL,
    SyussoTosu                       FLOAT NULL,
    NyusenTosu                       FLOAT NULL,
    TenkoId                          NCHAR(1) NULL,
    TrackTypeId                      NCHAR(1) NULL,
    TrackType2Id                     NCHAR(1) NULL,
    TrackType3Id                     NCHAR(1) NULL,
    CourseTypeId                     NCHAR(1) NULL,
    TrackConditionId                 NCHAR(1) NULL,
    SibaBabaId                       NCHAR(1) NULL,
    DirtBabaId                       NCHAR(1) NULL,
    FastestStart3Time                FLOAT NULL,
    FastestStart8Time                FLOAT NULL,
    FastestStart4Time                FLOAT NULL,
    FastestLast3Time                 FLOAT NULL,
    FastestLast4Time                 FLOAT NULL,
    RecordUpKubun                    NCHAR(1) NULL,
    IsJraRace                        BIT NULL,
    SmileId                          NCHAR(1) NULL,
    IsUpdatedEntity                  BIT NULL,
    Timestamp01                      DATETIME NULL,
    IsPredictedRace                  BIT NULL,
    Timestamp02                      DATETIME NULL,
    IsConfirmedRace                  BIT NULL,
    IsAnalyzeNormalPastAndFuture     BIT NULL,
    IsAnalyzeNormalPast              BIT NULL,
    IsAnalyzeNormalFuture            BIT NULL,
    IsAnalyzeFullPastAndFuture       BIT NULL,
    IsAnalyzeFullPast                BIT NULL,
    IsAnalyzeFullFuture              BIT NULL,
    DefaultHitRateA                  FLOAT NULL,
    DefaultHitRateB                  FLOAT NULL,
    DefaultHitRateC                  FLOAT NULL,
    ClassId                          NCHAR(4) NULL,
    JyokenId                         NCHAR(1) NULL,
    PrepRaceType1Id                  NVARCHAR(255) NULL,
    RaceType1Id                      NVARCHAR(255) NULL,
    RaceType2Id                      NVARCHAR(255) NULL,
    RaceType3Id                      NVARCHAR(255) NULL,
    RaceType4Id                      NVARCHAR(255) NULL,
    RaceType5Id                      NVARCHAR(255) NULL,
    RaceType6Id                      NVARCHAR(255) NULL,
    RaceType7Id                      NVARCHAR(255) NULL,
    RaceType8Id                      NVARCHAR(255) NULL,
    RaceType9Id                      NVARCHAR(255) NULL,
    ThisRaceYear                     INT NULL,
    PrevRaceYear                     INT NULL,
    RaceMonthId                      NCHAR(2) NULL,
    RaceMonth                        FLOAT NULL,
    RaceWeekId                       NCHAR(2) NULL,
    RaceWeek                         FLOAT NULL,
    KaijiId                          NCHAR(4) NULL,
    AnalyzeBasicRaceDateFrom         [DATE] NULL,
    AnalyzeBasicRaceDateTo           [DATE] NULL,
    AnalyzeGen01RaceDateFrom         [DATE] NULL,
    AnalyzeGen01RaceDateTo           [DATE] NULL,
    AnalyzeGen02RaceDateFrom         [DATE] NULL,
    AnalyzeGen02RaceDateTo           [DATE] NULL,
    AnalyzeGen05RaceDateFrom         [DATE] NULL,
    AnalyzeGen05RaceDateTo           [DATE] NULL,
    AnalyzeJockeyRaceDateFrom        [DATE] NULL,
    AnalyzeJockeyRaceDateTo          [DATE] NULL,
    AnalyzeTrainerRaceDateFrom       [DATE] NULL,
    AnalyzeTrainerRaceDateTo         [DATE] NULL,
    AnalyzeBanusiRaceDateFrom        [DATE] NULL,
    AnalyzeBanusiRaceDateTo          [DATE] NULL,
    AnalyzePrevRaceHorseRaceDateFrom [DATE] NULL,
    AnalyzePrevRaceHorseRaceDateTo   [DATE] NULL,
    DistanceRemainder                FLOAT NULL,
    FastestStart38Speed              FLOAT NULL,
    Timestamp03                      DATETIME NULL,
    IsValidDistanceSdv               BIT NULL,
    DistanceSdv                      FLOAT NULL,
    DistanceDv                       FLOAT NULL,
    IsValidFastestStart38SpeedSdv    BIT NULL,
    FastestStart38SpeedSdv           FLOAT NULL,
    FastestStart38SpeedDv            FLOAT NULL,
    Timestamp04                      DATETIME NULL,
    Guid                             UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_ReplRace PRIMARY KEY CLUSTERED(RaceId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                         )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.ReplRaceHorse
                              (
    RecKubun                              NCHAR(2) NULL,
    DataKubun                             NCHAR(1) NULL,
    MakeDate                              [DATE] NULL,
    RaceDate                              [DATE] NULL,
    PlaceId                               NCHAR(2) NULL,
    Kaiji                                 INT NULL,
    Nichiji                               INT NULL,
    RaceNum                               INT NULL,
    RaceId                                NCHAR(12) NOT NULL,
    HorseId                               NCHAR(10) NOT NULL,
    BracketNum                            INT NULL,
    HorseNum                              INT NULL,
    Bamei                                 NVARCHAR(36) NULL,
    UmaKigoId                             NCHAR(2) NULL,
    SexId                                 NCHAR(1) NULL,
    HinsyuId                              NCHAR(1) NULL,
    KeiroId                               NCHAR(2) NULL,
    Barei                                 FLOAT NULL,
    TozaiId                               NCHAR(1) NULL,
    TrainerId                             NCHAR(5) NULL,
    TrainerRyakusyo                       NVARCHAR(8) NULL,
    BanusiId                              NCHAR(6) NULL,
    BanusiName                            NVARCHAR(64) NULL,
    SilkId                                NCHAR(60) NULL,
    Reserved1                             NVARCHAR(60) NULL,
    Handicap                              FLOAT NULL,
    HandicapBefore                        FLOAT NULL,
    BlinkerId                             CHAR(1) NULL,
    Reserved2                             NCHAR(1) NULL,
    JockeyId                              NCHAR(5) NULL,
    JockeyIdBefore                        NCHAR(5) NULL,
    JockeyRyakusyo                        NVARCHAR(8) NULL,
    JockeyRyakusyoBefore                  NVARCHAR(8) NULL,
    MinaraiId                             NCHAR(1) NULL,
    MinaraiIdBefore                       NCHAR(1) NULL,
    Weight                                FLOAT NULL,
    WeightDelta                           FLOAT NULL,
    StatsId                               NCHAR(1) NULL,
    NyusenJyuni                           FLOAT NULL,
    KakuteiJyuni                          FLOAT NULL,
    DochakuKubun                          NCHAR(1) NULL,
    DochakuTosu                           FLOAT NULL,
    [Time]                                FLOAT NULL,
    ChakusaId                             NCHAR(3) NULL,
    ChakusaIdP                            NCHAR(3) NULL,
    ChakusaIdPp                           NCHAR(3) NULL,
    Position1                             FLOAT NULL,
    Position2                             FLOAT NULL,
    Position3                             FLOAT NULL,
    Position4                             FLOAT NULL,
    Odds                                  FLOAT NULL,
    Ninki                                 FLOAT NULL,
    Honsyokin                             FLOAT NULL,
    Fukasyokin                            FLOAT NULL,
    Reserved3                             NCHAR(3) NULL,
    Reserved4                             NCHAR(3) NULL,
    Last4Time                             FLOAT NULL,
    Last3Time                             FLOAT NULL,
    Finish01HorseId                       NCHAR(10) NULL,
    Finish01Bamei                         NVARCHAR(36) NULL,
    Finish02HorseId                       NCHAR(10) NULL,
    Finish02Bamei                         NVARCHAR(36) NULL,
    Finish03HorseId                       NCHAR(10) NULL,
    Finish03Bamei                         NVARCHAR(36) NULL,
    TimeDiff                              FLOAT NULL,
    RecordUpKubun                         NCHAR(1) NULL,
    DmKubun                               NCHAR(1) NULL,
    DmTime                                FLOAT NULL,
    DmGosaP                               FLOAT NULL,
    DmGosaM                               FLOAT NULL,
    DmJyuni                               INT NULL,
    RunType                               FLOAT NULL,
    RunTypeId                             NCHAR(1) NULL,
    IsRun                                 FLOAT NULL,
    IsHit1                                FLOAT NULL,
    IsHit2                                FLOAT NULL,
    IsHit3                                FLOAT NULL,
    IsHit4                                FLOAT NULL,
    IsHit5                                FLOAT NULL,
    IsHit6                                FLOAT NULL,
    IsHitA                                FLOAT NULL,
    IsHitB                                FLOAT NULL,
    IsHitC                                FLOAT NULL,
    IsHitD                                FLOAT NULL,
    IsHitE                                FLOAT NULL,
    IsUpdatedEntity                       BIT NULL,
    Timestamp01                           DATETIME NULL,
    IsConfirmedRaceHorse                  BIT NULL,
    Timestamp02                           DATETIME NULL,
    IsValidRaceHorse                      BIT NULL,
    Timestamp03                           DATETIME NULL,
    IsValidTargetRaceHorse                BIT NULL,
    Timestamp04                           DATETIME NULL,
    HorseNumRatio                         FLOAT NULL,
    HandicapRatio                         FLOAT NULL,
    Lifetime                              FLOAT NULL,
    LifetimeLog                           FLOAT NULL,
    PayWin                                FLOAT NULL,
    Timestamp11                           DATETIME NULL,
    IsValidHorseNumRatioSdvByRace         BIT NULL,
    HorseNumRatioSdvByRace                FLOAT NULL,
    IsValidWeightSdvByRace                BIT NULL,
    WeightSdvByRace                       FLOAT NULL,
    IsValidHandicapSdvByRace              BIT NULL,
    HandicapSdvByRace                     FLOAT NULL,
    IsValidHandicapRatioSdvByRace         BIT NULL,
    HandicapRatioSdvByRace                FLOAT NULL,
    IsValidLifetimeSdvByRace              BIT NULL,
    LifetimeSdvByRace                     FLOAT NULL,
    Timestamp12                           DATETIME NULL,
    IsValidHorseNumRatioSdv               BIT NULL,
    HorseNumRatioSdv                      FLOAT NULL,
    IsValidWeightSdv                      BIT NULL,
    WeightSdv                             FLOAT NULL,
    IsValidHandicapSdv                    BIT NULL,
    HandicapSdv                           FLOAT NULL,
    IsValidHandicapRatioSdv               BIT NULL,
    HandicapRatioSdv                      FLOAT NULL,
    IsValidLifetimeSdv                    BIT NULL,
    LifetimeSdv                           FLOAT NULL,
    Timestamp13                           DATETIME NULL,
    FinishTime                            FLOAT NULL,
    FirstTime                             FLOAT NULL,
    LastTime                              FLOAT NULL,
    FinishSpeed                           FLOAT NULL,
    FirstSpeed                            FLOAT NULL,
    LastSpeed                             FLOAT NULL,
    FinishAccel                           FLOAT NULL,
    FirstAccel                            FLOAT NULL,
    LastAccel                             FLOAT NULL,
    FinishStartSpeedRatio                 FLOAT NULL,
    Timestamp21                           DATETIME NULL,
    IsValidFinishTimeSdvByRace            BIT NULL,
    FinishTimeSdvByRace                   FLOAT NULL,
    FinishTimeDvByRace                    FLOAT NULL,
    IsValidFirstTimeSdvByRace             BIT NULL,
    FirstTimeSdvByRace                    FLOAT NULL,
    FirstTimeDvByRace                     FLOAT NULL,
    IsValidLastTimeSdvByRace              BIT NULL,
    LastTimeSdvByRace                     FLOAT NULL,
    LastTimeDvByRace                      FLOAT NULL,
    IsValidFinishSpeedSdvByRace           BIT NULL,
    FinishSpeedSdvByRace                  FLOAT NULL,
    FinishSpeedDvByRace                   FLOAT NULL,
    IsValidFirstSpeedSdvByRace            BIT NULL,
    FirstSpeedSdvByRace                   FLOAT NULL,
    FirstSpeedDvByRace                    FLOAT NULL,
    IsValidLastSpeedSdvByRace             BIT NULL,
    LastSpeedSdvByRace                    FLOAT NULL,
    LastSpeedDvByRace                     FLOAT NULL,
    IsValidFinishAccelSdvByRace           BIT NULL,
    FinishAccelSdvByRace                  FLOAT NULL,
    FinishAccelDvByRace                   FLOAT NULL,
    IsValidFirstAccelSdvByRace            BIT NULL,
    FirstAccelSdvByRace                   FLOAT NULL,
    FirstAccelDvByRace                    FLOAT NULL,
    IsValidLastAccelSdvByRace             BIT NULL,
    LastAccelSdvByRace                    FLOAT NULL,
    LastAccelDvByRace                     FLOAT NULL,
    IsValidFinishStartSpeedRatioSdvByRace BIT NULL,
    FinishStartSpeedRatioSdvByRace        FLOAT NULL,
    FinishStartSpeedRatioDvByRace         FLOAT NULL,
    IsValidPosition1SdvByRace             BIT NULL,
    Position1SdvByRace                    FLOAT NULL,
    IsValidPosition2SdvByRace             BIT NULL,
    Position2SdvByRace                    FLOAT NULL,
    IsValidPosition3SdvByRace             BIT NULL,
    Position3SdvByRace                    FLOAT NULL,
    IsValidPosition4SdvByRace             BIT NULL,
    Position4SdvByRace                    FLOAT NULL,
    Timestamp22                           DATETIME NULL,
    IsValidFinishTimeSdv                  BIT NULL,
    FinishTimeSdv                         FLOAT NULL,
    FinishTimeDv                          FLOAT NULL,
    IsValidFirstTimeSdv                   BIT NULL,
    FirstTimeSdv                          FLOAT NULL,
    FirstTimeDv                           FLOAT NULL,
    IsValidLastTimeSdv                    BIT NULL,
    LastTimeSdv                           FLOAT NULL,
    LastTimeDv                            FLOAT NULL,
    IsValidFinishSpeedSdv                 BIT NULL,
    FinishSpeedSdv                        FLOAT NULL,
    FinishSpeedDv                         FLOAT NULL,
    IsValidFirstSpeedSdv                  BIT NULL,
    FirstSpeedSdv                         FLOAT NULL,
    FirstSpeedDv                          FLOAT NULL,
    IsValidLastSpeedSdv                   BIT NULL,
    LastSpeedSdv                          FLOAT NULL,
    LastSpeedDv                           FLOAT NULL,
    IsValidFinishAccelSdv                 BIT NULL,
    FinishAccelSdv                        FLOAT NULL,
    FinishAccelDv                         FLOAT NULL,
    IsValidFirstAccelSdv                  BIT NULL,
    FirstAccelSdv                         FLOAT NULL,
    FirstAccelDv                          FLOAT NULL,
    IsValidLastAccelSdv                   BIT NULL,
    LastAccelSdv                          FLOAT NULL,
    LastAccelDv                           FLOAT NULL,
    IsValidFinishStartSpeedRatioSdv       BIT NULL,
    FinishStartSpeedRatioSdv              FLOAT NULL,
    FinishStartSpeedRatioDv               FLOAT NULL,
    IsValidRunTypeSdv                     BIT NULL,
    RunTypeSdv                            FLOAT NULL,
    RunTypeDv                             FLOAT NULL,
    Timestamp23                           DATETIME NULL,
    IsValidPredictValueA                  BIT NULL,
    PredictValueA                         FLOAT NULL,
    PredictValueSdvA                      FLOAT NULL,
    PredictValueDvA                       FLOAT NULL,
    PredictValueNormA                     FLOAT NULL,
    PredictValueRankA                     INT NULL,
    PredictErrorA                         INT NULL,
    IsValidPredictValueB                  BIT NULL,
    PredictValueB                         FLOAT NULL,
    PredictValueSdvB                      FLOAT NULL,
    PredictValueDvB                       FLOAT NULL,
    PredictValueNormB                     FLOAT NULL,
    PredictValueRankB                     INT NULL,
    PredictErrorB                         INT NULL,
    IsValidPredictValueC                  BIT NULL,
    PredictValueC                         FLOAT NULL,
    PredictValueSdvC                      FLOAT NULL,
    PredictValueDvC                       FLOAT NULL,
    PredictValueNormC                     FLOAT NULL,
    PredictValueRankC                     INT NULL,
    PredictErrorC                         INT NULL,
    PredictDatetime                       DATETIME NULL,
    Timestamp32                           DATETIME NULL,
    PrepHorseNumRatio                     FLOAT NULL,
    PrepWeight                            FLOAT NULL,
    PrepHandicap                          FLOAT NULL,
    PrepHandicapRatio                     FLOAT NULL,
    PrepLifetime                          FLOAT NULL,
    Timestamp81                           DATETIME NULL,
    IsValidPrepHorseNumRatioSdv           BIT NULL,
    PrepHorseNumRatioSdv                  FLOAT NULL,
    IsValidPrepWeightSdv                  BIT NULL,
    PrepWeightSdv                         FLOAT NULL,
    IsValidPrepHandicapSdv                BIT NULL,
    PrepHandicapSdv                       FLOAT NULL,
    IsValidPrepHandicapRatioSdv           BIT NULL,
    PrepHandicapRatioSdv                  FLOAT NULL,
    IsValidPrepLifetimeSdv                BIT NULL,
    PrepLifetimeSdv                       FLOAT NULL,
    Timestamp82                           DATETIME NULL,
    PrepFinishTime                        FLOAT NULL,
    PrepFirstTime                         FLOAT NULL,
    PrepLastTime                          FLOAT NULL,
    PrepFinishSpeed                       FLOAT NULL,
    PrepFirstSpeed                        FLOAT NULL,
    PrepLastSpeed                         FLOAT NULL,
    Timestamp91                           DATETIME NULL,
    IsValidPrepFinishTimeSdv              BIT NULL,
    PrepFinishTimeSdv                     FLOAT NULL,
    IsValidPrepFirstTimeSdv               BIT NULL,
    PrepFirstTimeSdv                      FLOAT NULL,
    IsValidPrepLastTimeSdv                BIT NULL,
    PrepLastTimeSdv                       FLOAT NULL,
    IsValidPrepFinishSpeedSdv             BIT NULL,
    PrepFinishSpeedSdv                    FLOAT NULL,
    IsValidPrepFirstSpeedSdv              BIT NULL,
    PrepFirstSpeedSdv                     FLOAT NULL,
    IsValidPrepLastSpeedSdv               BIT NULL,
    PrepLastSpeedSdv                      FLOAT NULL,
    Timestamp92                           DATETIME NULL,
    Guid                                  UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_ReplRaceHorse PRIMARY KEY CLUSTERED(RaceId ASC,HorseId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Sale
                     (
    RecKubun         NCHAR(2) NULL,
    DataKubun        NCHAR(1) NULL,
    MakeDate         [DATE] NULL,
    HorseId          NCHAR(10) NOT NULL,
    FemaleHansyokuId NCHAR(8) NULL,
    MaleHansyokuId   NCHAR(8) NULL,
    BirthYear        INT NULL,
    SaleId           NCHAR(6) NOT NULL,
    SaleHostName     NVARCHAR(40) NULL,
    SaleName         NVARCHAR(80) NULL,
    FromDate         [DATE] NOT NULL,
    ToDate           [DATE] NULL,
    Barei            FLOAT NULL,
    Price            FLOAT NULL,
    Timestamp01      DATETIME NULL,
    Guid             UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Sale PRIMARY KEY CLUSTERED(HorseId ASC,SaleId ASC,FromDate ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                     )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Sanku
                      (
    RecKubun        NCHAR(2) NULL,
    DataKubun       NCHAR(1) NULL,
    MakeDate        [DATE] NULL,
    HorseId         NCHAR(10) NOT NULL,
    BirthDate       [DATE] NULL,
    SexId           NCHAR(1) NULL,
    HinsyuId        NCHAR(1) NULL,
    KeiroId         NCHAR(2) NULL,
    SankuMochiKubun NCHAR(1) NULL,
    ImportYear      INT NULL,
    BreederId       NCHAR(6) NULL,
    SanchiName      NVARCHAR(20) NULL,
    F1Num           NCHAR(8) NULL,
    M1Num           NCHAR(8) NULL,
    F1F2Num         NCHAR(8) NULL,
    F1M2Num         NCHAR(8) NULL,
    M1F2Num         NCHAR(8) NULL,
    M1M2Num         NCHAR(8) NULL,
    F1F2F3Num       NCHAR(8) NULL,
    F1F2M3Num       NCHAR(8) NULL,
    F1M2F3Num       NCHAR(8) NULL,
    F1M2M3Num       NCHAR(8) NULL,
    M1F2F3Num       NCHAR(8) NULL,
    M1F2M3Num       NCHAR(8) NULL,
    M1M2F3Num       NCHAR(8) NULL,
    M1M2M3Num       NCHAR(8) NULL,
    Timestamp01     DATETIME NULL,
    Guid            UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Sanku PRIMARY KEY CLUSTERED(HorseId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                      )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Schedule
                         (
    RecKubun          NCHAR(2) NULL,
    DataKubun         NCHAR(1) NULL,
    MakeDate          [DATE] NULL,
    RaceDayId         NCHAR(10) NOT NULL,
    RaceDate          [DATE] NULL,
    PlaceId           NCHAR(2) NULL,
    Kaiji             INT NULL,
    Nichiji           INT NULL,
    YoubiId           NCHAR(1) NULL,
    Jyusyo1TokuNum    NCHAR(4) NULL,
    Jyusyo1Hondai     NVARCHAR(30) NULL,
    Jyusyo1Ryakusyo10 NVARCHAR(10) NULL,
    Jyusyo1Ryakusyo6  NVARCHAR(6) NULL,
    Jyusyo1Ryakusyo3  NVARCHAR(3) NULL,
    Jyusyo1Nkai       INT NULL,
    Jyusyo1GradeId    NCHAR(1) NULL,
    Jyusyo1SyubetuId  NCHAR(2) NULL,
    Jyusyo1KigoId     NCHAR(3) NULL,
    Jyusyo1JyuryoId   NCHAR(1) NULL,
    Jyusyo1Distance   FLOAT NULL,
    Jyusyo1TrackId    NCHAR(2) NULL,
    Jyusyo2TokuNum    NCHAR(4) NULL,
    Jyusyo2Hondai     NVARCHAR(30) NULL,
    Jyusyo2Ryakusyo10 NVARCHAR(10) NULL,
    Jyusyo2Ryakusyo6  NVARCHAR(6) NULL,
    Jyusyo2Ryakusyo3  NVARCHAR(3) NULL,
    Jyusyo2Nkai       INT NULL,
    Jyusyo2GradeId    NCHAR(1) NULL,
    Jyusyo2SyubetuId  NCHAR(2) NULL,
    Jyusyo2KigoId     NCHAR(3) NULL,
    Jyusyo2JyuryoId   NCHAR(1) NULL,
    Jyusyo2Distance   FLOAT NULL,
    Jyusyo2TrackId    NCHAR(2) NULL,
    Jyusyo3TokuNum    NCHAR(4) NULL,
    Jyusyo3Hondai     NVARCHAR(30) NULL,
    Jyusyo3Ryakusyo10 NVARCHAR(10) NULL,
    Jyusyo3Ryakusyo6  NVARCHAR(6) NULL,
    Jyusyo3Ryakusyo3  NVARCHAR(3) NULL,
    Jyusyo3Nkai       INT NULL,
    Jyusyo3GradeId    NCHAR(1) NULL,
    Jyusyo3SyubetuId  NCHAR(2) NULL,
    Jyusyo3KigoId     NCHAR(3) NULL,
    Jyusyo3JyuryoId   NCHAR(1) NULL,
    Jyusyo3Distance   FLOAT NULL,
    Jyusyo3TrackId    NCHAR(2) NULL,
    Timestamp01       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Schedule PRIMARY KEY CLUSTERED(RaceDayId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                         )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Silk
                     (
    SilkId      NCHAR(60) NOT NULL,
    SilkImage   VARBINARY(MAX) NULL,
    IsNotFound  BIT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Silk PRIMARY KEY CLUSTERED(SilkId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                     )
ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.SpecialRace
                            (
    RecKubun      NCHAR(2) NULL,
    DataKubun     NCHAR(1) NULL,
    MakeDate      [DATE] NULL,
    RaceDate      [DATE] NULL,
    PlaceId       NCHAR(2) NULL,
    Kaiji         INT NULL,
    Nichiji       INT NULL,
    RaceNum       INT NULL,
    RaceId        NCHAR(12) NOT NULL,
    YoubiId       NCHAR(1) NULL,
    TokuNum       NCHAR(4) NULL,
    Hondai        NVARCHAR(30) NULL,
    Fukudai       NVARCHAR(30) NULL,
    Kakko         NVARCHAR(30) NULL,
    HondaiEng     NVARCHAR(120) NULL,
    FukudaiEng    NVARCHAR(120) NULL,
    KakkoEng      NVARCHAR(120) NULL,
    Ryakusyo10    NVARCHAR(10) NULL,
    Ryakusyo6     NVARCHAR(6) NULL,
    Ryakusyo3     NVARCHAR(3) NULL,
    Kubun         NCHAR(1) NULL,
    Nkai          INT NULL,
    GradeId       NCHAR(1) NULL,
    SyubetuId     NCHAR(2) NULL,
    KigoId        NCHAR(3) NULL,
    JyuryoId      NCHAR(1) NULL,
    Jyoken1Id     NCHAR(3) NULL,
    Jyoken2Id     NCHAR(3) NULL,
    Jyoken3Id     NCHAR(3) NULL,
    Jyoken4Id     NCHAR(3) NULL,
    Jyoken5Id     NCHAR(3) NULL,
    Distance      FLOAT NULL,
    TrackId       NCHAR(2) NULL,
    CourseKubunId NCHAR(2) NULL,
    HandiDate     [DATE] NULL,
    TorokuTosu    FLOAT NULL,
    Timestamp01   DATETIME NULL,
    Guid          UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_SpecialRace PRIMARY KEY CLUSTERED(RaceId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                            )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.SpecialRaceByHorse
                                   (
    RaceId          NCHAR(12) NOT NULL,
    Num             INT NOT NULL,
    HorseId         NCHAR(10) NOT NULL,
    Bamei           NVARCHAR(36) NULL,
    UmaKigoId       NCHAR(2) NULL,
    SexId           NCHAR(1) NULL,
    TozaiId         NCHAR(1) NULL,
    TrainerId       NCHAR(5) NULL,
    TrainerRyakusyo NVARCHAR(8) NULL,
    Handicap        FLOAT NULL,
    Koryu           NCHAR(1) NULL,
    Timestamp01     DATETIME NULL,
    Guid            UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_SpecialRaceByHorse PRIMARY KEY CLUSTERED(RaceId ASC,Num ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                   )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.StatsBasicAfterRaceByAll
                                         (
    FastestStart38SpeedCount  INT NULL,
    FastestStart38SpeedAvg    FLOAT NULL,
    FastestStart38SpeedStDev  FLOAT NULL,
    FastestStart38SpeedSum    FLOAT NULL,
    FastestStart38SpeedMin    FLOAT NULL,
    FastestStart38SpeedMax    FLOAT NULL,
    Timestamp01               DATETIME NULL,
    FastestStart38SpeedSem    FLOAT NULL,
    FastestStart38SpeedSemMin FLOAT NULL,
    FastestStart38SpeedSemMax FLOAT NULL,
    FastestStart38SpeedSdMin3 FLOAT NULL,
    FastestStart38SpeedSdMin2 FLOAT NULL,
    FastestStart38SpeedSdMin1 FLOAT NULL,
    FastestStart38SpeedSdMax1 FLOAT NULL,
    FastestStart38SpeedSdMax2 FLOAT NULL,
    FastestStart38SpeedSdMax3 FLOAT NULL,
    Timestamp02               DATETIME NULL,
    Guid                      UNIQUEIDENTIFIER NULL
                                         )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.StatsBasicAfterRaceByRaceType1
                                               (
    RaceType1Id               NVARCHAR(255) NOT NULL,
    FastestStart38SpeedCount  INT NULL,
    FastestStart38SpeedAvg    FLOAT NULL,
    FastestStart38SpeedStDev  FLOAT NULL,
    FastestStart38SpeedSum    FLOAT NULL,
    FastestStart38SpeedMin    FLOAT NULL,
    FastestStart38SpeedMax    FLOAT NULL,
    Timestamp01               DATETIME NULL,
    FastestStart38SpeedSem    FLOAT NULL,
    FastestStart38SpeedSemMin FLOAT NULL,
    FastestStart38SpeedSemMax FLOAT NULL,
    FastestStart38SpeedSdMin3 FLOAT NULL,
    FastestStart38SpeedSdMin2 FLOAT NULL,
    FastestStart38SpeedSdMin1 FLOAT NULL,
    FastestStart38SpeedSdMax1 FLOAT NULL,
    FastestStart38SpeedSdMax2 FLOAT NULL,
    FastestStart38SpeedSdMax3 FLOAT NULL,
    Timestamp02               DATETIME NULL,
    Guid                      UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_StatsBasicAfterRaceByRaceType1 PRIMARY KEY CLUSTERED(RaceType1Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                               )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.StatsBasicAfterRaceHorseByAll
                                              (
    FinishStartSpeedRatioCount  INT NULL,
    FinishStartSpeedRatioAvg    FLOAT NULL,
    FinishStartSpeedRatioStDev  FLOAT NULL,
    FinishStartSpeedRatioSum    FLOAT NULL,
    FinishStartSpeedRatioMin    FLOAT NULL,
    FinishStartSpeedRatioMax    FLOAT NULL,
    FinishSpeedCount            INT NULL,
    FinishSpeedAvg              FLOAT NULL,
    FinishSpeedStDev            FLOAT NULL,
    FinishSpeedSum              FLOAT NULL,
    FinishSpeedMin              FLOAT NULL,
    FinishSpeedMax              FLOAT NULL,
    FirstSpeedCount             FLOAT NULL,
    FirstSpeedAvg               FLOAT NULL,
    FirstSpeedStDev             FLOAT NULL,
    FirstSpeedSum               FLOAT NULL,
    FirstSpeedMin               FLOAT NULL,
    FirstSpeedMax               FLOAT NULL,
    LastSpeedCount              INT NULL,
    LastSpeedAvg                FLOAT NULL,
    LastSpeedStDev              FLOAT NULL,
    LastSpeedSum                FLOAT NULL,
    LastSpeedMin                FLOAT NULL,
    LastSpeedMax                FLOAT NULL,
    FinishAccelCount            FLOAT NULL,
    FinishAccelAvg              FLOAT NULL,
    FinishAccelStDev            FLOAT NULL,
    FinishAccelSum              FLOAT NULL,
    FinishAccelMin              FLOAT NULL,
    FinishAccelMax              FLOAT NULL,
    FirstAccelCount             FLOAT NULL,
    FirstAccelAvg               FLOAT NULL,
    FirstAccelStDev             FLOAT NULL,
    FirstAccelSum               FLOAT NULL,
    FirstAccelMin               FLOAT NULL,
    FirstAccelMax               FLOAT NULL,
    LastAccelCount              INT NULL,
    LastAccelAvg                FLOAT NULL,
    LastAccelStDev              FLOAT NULL,
    LastAccelSum                FLOAT NULL,
    LastAccelMin                FLOAT NULL,
    LastAccelMax                FLOAT NULL,
    FinishTimeCount             INT NULL,
    FinishTimeAvg               FLOAT NULL,
    FinishTimeStDev             FLOAT NULL,
    FinishTimeSum               FLOAT NULL,
    FinishTimeMin               FLOAT NULL,
    FinishTimeMax               FLOAT NULL,
    FirstTimeCount              FLOAT NULL,
    FirstTimeAvg                FLOAT NULL,
    FirstTimeStDev              FLOAT NULL,
    FirstTimeSum                FLOAT NULL,
    FirstTimeMin                FLOAT NULL,
    FirstTimeMax                FLOAT NULL,
    LastTimeCount               INT NULL,
    LastTimeAvg                 FLOAT NULL,
    LastTimeStDev               FLOAT NULL,
    LastTimeSum                 FLOAT NULL,
    LastTimeMin                 FLOAT NULL,
    LastTimeMax                 FLOAT NULL,
    RunTypeCount                INT NULL,
    RunTypeAvg                  FLOAT NULL,
    RunTypeStDev                FLOAT NULL,
    RunTypeSum                  FLOAT NULL,
    RunTypeMin                  FLOAT NULL,
    RunTypeMax                  FLOAT NULL,
    Timestamp01                 DATETIME NULL,
    FinishStartSpeedRatioSem    FLOAT NULL,
    FinishStartSpeedRatioSemMin FLOAT NULL,
    FinishStartSpeedRatioSemMax FLOAT NULL,
    FinishStartSpeedRatioSdMin3 FLOAT NULL,
    FinishStartSpeedRatioSdMin2 FLOAT NULL,
    FinishStartSpeedRatioSdMin1 FLOAT NULL,
    FinishStartSpeedRatioSdMax1 FLOAT NULL,
    FinishStartSpeedRatioSdMax2 FLOAT NULL,
    FinishStartSpeedRatioSdMax3 FLOAT NULL,
    FinishSpeedSem              FLOAT NULL,
    FinishSpeedSemMin           FLOAT NULL,
    FinishSpeedSemMax           FLOAT NULL,
    FinishSpeedSdMin3           FLOAT NULL,
    FinishSpeedSdMin2           FLOAT NULL,
    FinishSpeedSdMin1           FLOAT NULL,
    FinishSpeedSdMax1           FLOAT NULL,
    FinishSpeedSdMax2           FLOAT NULL,
    FinishSpeedSdMax3           FLOAT NULL,
    Timestamp02                 DATETIME NULL,
    Guid                        UNIQUEIDENTIFIER NULL
                                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.StatsBasicAfterRaceHorseByRaceType1
                                                    (
    RaceType1Id                 NVARCHAR(255) NOT NULL,
    FinishStartSpeedRatioCount  INT NULL,
    FinishStartSpeedRatioAvg    FLOAT NULL,
    FinishStartSpeedRatioStDev  FLOAT NULL,
    FinishStartSpeedRatioSum    FLOAT NULL,
    FinishStartSpeedRatioMin    FLOAT NULL,
    FinishStartSpeedRatioMax    FLOAT NULL,
    FinishSpeedCount            INT NULL,
    FinishSpeedAvg              FLOAT NULL,
    FinishSpeedStDev            FLOAT NULL,
    FinishSpeedSum              FLOAT NULL,
    FinishSpeedMin              FLOAT NULL,
    FinishSpeedMax              FLOAT NULL,
    FirstSpeedCount             FLOAT NULL,
    FirstSpeedAvg               FLOAT NULL,
    FirstSpeedStDev             FLOAT NULL,
    FirstSpeedSum               FLOAT NULL,
    FirstSpeedMin               FLOAT NULL,
    FirstSpeedMax               FLOAT NULL,
    LastSpeedCount              INT NULL,
    LastSpeedAvg                FLOAT NULL,
    LastSpeedStDev              FLOAT NULL,
    LastSpeedSum                FLOAT NULL,
    LastSpeedMin                FLOAT NULL,
    LastSpeedMax                FLOAT NULL,
    FinishAccelCount            FLOAT NULL,
    FinishAccelAvg              FLOAT NULL,
    FinishAccelStDev            FLOAT NULL,
    FinishAccelSum              FLOAT NULL,
    FinishAccelMin              FLOAT NULL,
    FinishAccelMax              FLOAT NULL,
    FirstAccelCount             FLOAT NULL,
    FirstAccelAvg               FLOAT NULL,
    FirstAccelStDev             FLOAT NULL,
    FirstAccelSum               FLOAT NULL,
    FirstAccelMin               FLOAT NULL,
    FirstAccelMax               FLOAT NULL,
    LastAccelCount              INT NULL,
    LastAccelAvg                FLOAT NULL,
    LastAccelStDev              FLOAT NULL,
    LastAccelSum                FLOAT NULL,
    LastAccelMin                FLOAT NULL,
    LastAccelMax                FLOAT NULL,
    FinishTimeCount             INT NULL,
    FinishTimeAvg               FLOAT NULL,
    FinishTimeStDev             FLOAT NULL,
    FinishTimeSum               FLOAT NULL,
    FinishTimeMin               FLOAT NULL,
    FinishTimeMax               FLOAT NULL,
    FirstTimeCount              FLOAT NULL,
    FirstTimeAvg                FLOAT NULL,
    FirstTimeStDev              FLOAT NULL,
    FirstTimeSum                FLOAT NULL,
    FirstTimeMin                FLOAT NULL,
    FirstTimeMax                FLOAT NULL,
    LastTimeCount               INT NULL,
    LastTimeAvg                 FLOAT NULL,
    LastTimeStDev               FLOAT NULL,
    LastTimeSum                 FLOAT NULL,
    LastTimeMin                 FLOAT NULL,
    LastTimeMax                 FLOAT NULL,
    RunTypeCount                INT NULL,
    RunTypeAvg                  FLOAT NULL,
    RunTypeStDev                FLOAT NULL,
    RunTypeSum                  FLOAT NULL,
    RunTypeMin                  FLOAT NULL,
    RunTypeMax                  FLOAT NULL,
    Timestamp01                 DATETIME NULL,
    FinishStartSpeedRatioSem    FLOAT NULL,
    FinishStartSpeedRatioSemMin FLOAT NULL,
    FinishStartSpeedRatioSemMax FLOAT NULL,
    FinishStartSpeedRatioSdMin3 FLOAT NULL,
    FinishStartSpeedRatioSdMin2 FLOAT NULL,
    FinishStartSpeedRatioSdMin1 FLOAT NULL,
    FinishStartSpeedRatioSdMax1 FLOAT NULL,
    FinishStartSpeedRatioSdMax2 FLOAT NULL,
    FinishStartSpeedRatioSdMax3 FLOAT NULL,
    FinishSpeedSem              FLOAT NULL,
    FinishSpeedSemMin           FLOAT NULL,
    FinishSpeedSemMax           FLOAT NULL,
    FinishSpeedSdMin3           FLOAT NULL,
    FinishSpeedSdMin2           FLOAT NULL,
    FinishSpeedSdMin1           FLOAT NULL,
    FinishSpeedSdMax1           FLOAT NULL,
    FinishSpeedSdMax2           FLOAT NULL,
    FinishSpeedSdMax3           FLOAT NULL,
    Timestamp02                 DATETIME NULL,
    Guid                        UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_StatsBasicAfterRaceHorseByRaceType1 PRIMARY KEY CLUSTERED(RaceType1Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                    )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.StatsBasicBeforeDmByAll
                                        (
    DmTimeCount  INT NULL,
    DmTimeAvg    FLOAT NULL,
    DmTimeStDev  FLOAT NULL,
    DmTimeSum    FLOAT NULL,
    DmTimeMin    FLOAT NULL,
    DmTimeMax    FLOAT NULL,
    DmSpeedCount FLOAT NULL,
    DmSpeedAvg   FLOAT NULL,
    DmSpeedStDev FLOAT NULL,
    DmSpeedSum   FLOAT NULL,
    DmSpeedMin   FLOAT NULL,
    DmSpeedMax   FLOAT NULL,
    Timestamp01  DATETIME NULL,
    Guid         UNIQUEIDENTIFIER NULL
                                        )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.StatsBasicBeforeDmByRaceType1
                                              (
    RaceType1Id  NVARCHAR(255) NOT NULL,
    DmTimeCount  INT NULL,
    DmTimeAvg    FLOAT NULL,
    DmTimeStDev  FLOAT NULL,
    DmTimeSum    FLOAT NULL,
    DmTimeMin    FLOAT NULL,
    DmTimeMax    FLOAT NULL,
    DmSpeedCount FLOAT NULL,
    DmSpeedAvg   FLOAT NULL,
    DmSpeedStDev FLOAT NULL,
    DmSpeedSum   FLOAT NULL,
    DmSpeedMin   FLOAT NULL,
    DmSpeedMax   FLOAT NULL,
    Timestamp01  DATETIME NULL,
    Guid         UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_StatsBasicBeforeDmByRaceType1 PRIMARY KEY CLUSTERED(RaceType1Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.StatsBasicBeforeOddsByAll
                                          (
    OddsLog1Count FLOAT NULL,
    OddsLog1Avg   FLOAT NULL,
    OddsLog1StDev FLOAT NULL,
    OddsLog1Sum   FLOAT NULL,
    OddsLog1Min   FLOAT NULL,
    OddsLog1Max   FLOAT NULL,
    Timestamp01   DATETIME NULL,
    Guid          UNIQUEIDENTIFIER NULL
                                          )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.StatsBasicBeforeOddsByRaceType1
                                                (
    RaceType1Id   NVARCHAR(255) NOT NULL,
    OddsLog1Count FLOAT NULL,
    OddsLog1Avg   FLOAT NULL,
    OddsLog1StDev FLOAT NULL,
    OddsLog1Sum   FLOAT NULL,
    OddsLog1Min   FLOAT NULL,
    OddsLog1Max   FLOAT NULL,
    Timestamp01   DATETIME NULL,
    Guid          UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_StatsBasicBeforeOddsByRaceType1 PRIMARY KEY CLUSTERED(RaceType1Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.StatsBasicBeforeRaceByAll
                                          (
    DistanceCount  INT NULL,
    DistanceAvg    FLOAT NULL,
    DistanceStDev  FLOAT NULL,
    DistanceSum    FLOAT NULL,
    DistanceMin    FLOAT NULL,
    DistanceMax    FLOAT NULL,
    Timestamp01    DATETIME NULL,
    DistanceSem    FLOAT NULL,
    DistanceSemMin FLOAT NULL,
    DistanceSemMax FLOAT NULL,
    DistanceSdMin3 FLOAT NULL,
    DistanceSdMin2 FLOAT NULL,
    DistanceSdMin1 FLOAT NULL,
    DistanceSdMax1 FLOAT NULL,
    DistanceSdMax2 FLOAT NULL,
    DistanceSdMax3 FLOAT NULL,
    Timestamp02    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER NULL
                                          )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.StatsBasicBeforeRaceByRaceType1
                                                (
    RaceType1Id    NVARCHAR(255) NOT NULL,
    DistanceCount  INT NULL,
    DistanceAvg    FLOAT NULL,
    DistanceStDev  FLOAT NULL,
    DistanceSum    FLOAT NULL,
    DistanceMin    FLOAT NULL,
    DistanceMax    FLOAT NULL,
    Timestamp01    DATETIME NULL,
    DistanceSem    FLOAT NULL,
    DistanceSemMin FLOAT NULL,
    DistanceSemMax FLOAT NULL,
    DistanceSdMin3 FLOAT NULL,
    DistanceSdMin2 FLOAT NULL,
    DistanceSdMin1 FLOAT NULL,
    DistanceSdMax1 FLOAT NULL,
    DistanceSdMax2 FLOAT NULL,
    DistanceSdMax3 FLOAT NULL,
    Timestamp02    DATETIME NULL,
    Guid           UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_StatsBasicBeforeRaceByRaceType1 PRIMARY KEY CLUSTERED(RaceType1Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.StatsBasicBeforeRaceHorseByAll
                                               (
    HorseNumRatioCount FLOAT NULL,
    HorseNumRatioAvg   FLOAT NULL,
    HorseNumRatioStDev FLOAT NULL,
    HorseNumRatioSum   FLOAT NULL,
    HorseNumRatioMin   FLOAT NULL,
    HorseNumRatioMax   FLOAT NULL,
    WeightCount        FLOAT NULL,
    WeightAvg          FLOAT NULL,
    WeightStDev        FLOAT NULL,
    WeightSum          FLOAT NULL,
    WeightMin          FLOAT NULL,
    WeightMax          FLOAT NULL,
    HandicapCount      FLOAT NULL,
    HandicapSum        FLOAT NULL,
    HandicapAvg        FLOAT NULL,
    HandicapStDev      FLOAT NULL,
    HandicapMin        FLOAT NULL,
    HandicapMax        FLOAT NULL,
    HandicapRatioCount FLOAT NULL,
    HandicapRatioAvg   FLOAT NULL,
    HandicapRatioStDev FLOAT NULL,
    HandicapRatioSum   FLOAT NULL,
    HandicapRatioMin   FLOAT NULL,
    HandicapRatioMax   FLOAT NULL,
    LifetimeCount      FLOAT NULL,
    LifetimeAvg        FLOAT NULL,
    LifetimeStDev      FLOAT NULL,
    LifetimeSum        FLOAT NULL,
    LifetimeMin        FLOAT NULL,
    LifetimeMax        FLOAT NULL,
    Timestamp01        DATETIME NULL,
    Guid               UNIQUEIDENTIFIER NULL
                                               )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.StatsBasicBeforeRaceHorseByRaceType1
                                                     (
    RaceType1Id        NVARCHAR(255) NOT NULL,
    HorseNumRatioCount FLOAT NULL,
    HorseNumRatioAvg   FLOAT NULL,
    HorseNumRatioStDev FLOAT NULL,
    HorseNumRatioSum   FLOAT NULL,
    HorseNumRatioMin   FLOAT NULL,
    HorseNumRatioMax   FLOAT NULL,
    WeightCount        FLOAT NULL,
    WeightAvg          FLOAT NULL,
    WeightStDev        FLOAT NULL,
    WeightSum          FLOAT NULL,
    WeightMin          FLOAT NULL,
    WeightMax          FLOAT NULL,
    HandicapCount      FLOAT NULL,
    HandicapSum        FLOAT NULL,
    HandicapAvg        FLOAT NULL,
    HandicapStDev      FLOAT NULL,
    HandicapMin        FLOAT NULL,
    HandicapMax        FLOAT NULL,
    HandicapRatioCount FLOAT NULL,
    HandicapRatioAvg   FLOAT NULL,
    HandicapRatioStDev FLOAT NULL,
    HandicapRatioSum   FLOAT NULL,
    HandicapRatioMin   FLOAT NULL,
    HandicapRatioMax   FLOAT NULL,
    LifetimeCount      FLOAT NULL,
    LifetimeAvg        FLOAT NULL,
    LifetimeStDev      FLOAT NULL,
    LifetimeSum        FLOAT NULL,
    LifetimeMin        FLOAT NULL,
    LifetimeMax        FLOAT NULL,
    Timestamp01        DATETIME NULL,
    Guid               UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_StatsBasicBeforeRaceHorseByRaceType1 PRIMARY KEY CLUSTERED(RaceType1Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                     )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.StatsPrepAfterRaceHorseByAll
                                             (
    FinishTimeCount   INT NULL,
    FinishTimeAvg     FLOAT NULL,
    FinishTimeStDev   FLOAT NULL,
    FinishTimeSum     FLOAT NULL,
    FinishTimeMin     FLOAT NULL,
    FinishTimeMax     FLOAT NULL,
    FirstTimeCount    FLOAT NULL,
    FirstTimeAvg      FLOAT NULL,
    FirstTimeStDev    FLOAT NULL,
    FirstTimeSum      FLOAT NULL,
    FirstTimeMin      FLOAT NULL,
    FirstTimeMax      FLOAT NULL,
    LastTimeCount     INT NULL,
    LastTimeAvg       FLOAT NULL,
    LastTimeStDev     FLOAT NULL,
    LastTimeSum       FLOAT NULL,
    LastTimeMin       FLOAT NULL,
    LastTimeMax       FLOAT NULL,
    FinishSpeedCount  INT NULL,
    FinishSpeedAvg    FLOAT NULL,
    FinishSpeedStDev  FLOAT NULL,
    FinishSpeedSum    FLOAT NULL,
    FinishSpeedMin    FLOAT NULL,
    FinishSpeedMax    FLOAT NULL,
    FirstSpeedCount   FLOAT NULL,
    FirstSpeedAvg     FLOAT NULL,
    FirstSpeedStDev   FLOAT NULL,
    FirstSpeedSum     FLOAT NULL,
    FirstSpeedMin     FLOAT NULL,
    FirstSpeedMax     FLOAT NULL,
    LastSpeedCount    INT NULL,
    LastSpeedAvg      FLOAT NULL,
    LastSpeedStDev    FLOAT NULL,
    LastSpeedSum      FLOAT NULL,
    LastSpeedMin      FLOAT NULL,
    LastSpeedMax      FLOAT NULL,
    TimeStamp01       DATETIME NULL,
    FinishTimeSem     FLOAT NULL,
    FinishTimeSemMin  FLOAT NULL,
    FinishTimeSemMax  FLOAT NULL,
    FinishTimeSdMin3  FLOAT NULL,
    FinishTimeSdMin2  FLOAT NULL,
    FinishTimeSdMin1  FLOAT NULL,
    FinishTimeSdMax1  FLOAT NULL,
    FinishTimeSdMax2  FLOAT NULL,
    FinishTimeSdMax3  FLOAT NULL,
    FirstTimeSem      FLOAT NULL,
    FirstTimeSemMin   FLOAT NULL,
    FirstTimeSemMax   FLOAT NULL,
    FirstTimeSdMin3   FLOAT NULL,
    FirstTimeSdMin2   FLOAT NULL,
    FirstTimeSdMin1   FLOAT NULL,
    FirstTimeSdMax1   FLOAT NULL,
    FirstTimeSdMax2   FLOAT NULL,
    FirstTimeSdMax3   FLOAT NULL,
    LastTimeSem       FLOAT NULL,
    LastTimeSemMin    FLOAT NULL,
    LastTimeSemMax    FLOAT NULL,
    LastTimeSdMin3    FLOAT NULL,
    LastTimeSdMin2    FLOAT NULL,
    LastTimeSdMin1    FLOAT NULL,
    LastTimeSdMax1    FLOAT NULL,
    LastTimeSdMax2    FLOAT NULL,
    LastTimeSdMax3    FLOAT NULL,
    FinishSpeedSem    FLOAT NULL,
    FinishSpeedSemMin FLOAT NULL,
    FinishSpeedSemMax FLOAT NULL,
    FinishSpeedSdMin3 FLOAT NULL,
    FinishSpeedSdMin2 FLOAT NULL,
    FinishSpeedSdMin1 FLOAT NULL,
    FinishSpeedSdMax1 FLOAT NULL,
    FinishSpeedSdMax2 FLOAT NULL,
    FinishSpeedSdMax3 FLOAT NULL,
    FirstSpeedSem     FLOAT NULL,
    FirstSpeedSemMin  FLOAT NULL,
    FirstSpeedSemMax  FLOAT NULL,
    FirstSpeedSdMin3  FLOAT NULL,
    FirstSpeedSdMin2  FLOAT NULL,
    FirstSpeedSdMin1  FLOAT NULL,
    FirstSpeedSdMax1  FLOAT NULL,
    FirstSpeedSdMax2  FLOAT NULL,
    FirstSpeedSdMax3  FLOAT NULL,
    LastSpeedSem      FLOAT NULL,
    LastSpeedSemMin   FLOAT NULL,
    LastSpeedSemMax   FLOAT NULL,
    LastSpeedSdMin3   FLOAT NULL,
    LastSpeedSdMin2   FLOAT NULL,
    LastSpeedSdMin1   FLOAT NULL,
    LastSpeedSdMax1   FLOAT NULL,
    LastSpeedSdMax2   FLOAT NULL,
    LastSpeedSdMax3   FLOAT NULL,
    Timestamp02       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER NULL
                                             )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.StatsPrepAfterRaceHorseByPrepRaceType1
                                                       (
    PrepRaceType1Id   NVARCHAR(255) NOT NULL,
    FinishTimeCount   INT NULL,
    FinishTimeAvg     FLOAT NULL,
    FinishTimeStDev   FLOAT NULL,
    FinishTimeSum     FLOAT NULL,
    FinishTimeMin     FLOAT NULL,
    FinishTimeMax     FLOAT NULL,
    FirstTimeCount    FLOAT NULL,
    FirstTimeAvg      FLOAT NULL,
    FirstTimeStDev    FLOAT NULL,
    FirstTimeSum      FLOAT NULL,
    FirstTimeMin      FLOAT NULL,
    FirstTimeMax      FLOAT NULL,
    LastTimeCount     INT NULL,
    LastTimeAvg       FLOAT NULL,
    LastTimeStDev     FLOAT NULL,
    LastTimeSum       FLOAT NULL,
    LastTimeMin       FLOAT NULL,
    LastTimeMax       FLOAT NULL,
    FinishSpeedCount  INT NULL,
    FinishSpeedAvg    FLOAT NULL,
    FinishSpeedStDev  FLOAT NULL,
    FinishSpeedSum    FLOAT NULL,
    FinishSpeedMin    FLOAT NULL,
    FinishSpeedMax    FLOAT NULL,
    FirstSpeedCount   FLOAT NULL,
    FirstSpeedAvg     FLOAT NULL,
    FirstSpeedStDev   FLOAT NULL,
    FirstSpeedSum     FLOAT NULL,
    FirstSpeedMin     FLOAT NULL,
    FirstSpeedMax     FLOAT NULL,
    LastSpeedCount    INT NULL,
    LastSpeedAvg      FLOAT NULL,
    LastSpeedStDev    FLOAT NULL,
    LastSpeedSum      FLOAT NULL,
    LastSpeedMin      FLOAT NULL,
    LastSpeedMax      FLOAT NULL,
    TimeStamp01       DATETIME NULL,
    FinishTimeSem     FLOAT NULL,
    FinishTimeSemMin  FLOAT NULL,
    FinishTimeSemMax  FLOAT NULL,
    FinishTimeSdMin3  FLOAT NULL,
    FinishTimeSdMin2  FLOAT NULL,
    FinishTimeSdMin1  FLOAT NULL,
    FinishTimeSdMax1  FLOAT NULL,
    FinishTimeSdMax2  FLOAT NULL,
    FinishTimeSdMax3  FLOAT NULL,
    FirstTimeSem      FLOAT NULL,
    FirstTimeSemMin   FLOAT NULL,
    FirstTimeSemMax   FLOAT NULL,
    FirstTimeSdMin3   FLOAT NULL,
    FirstTimeSdMin2   FLOAT NULL,
    FirstTimeSdMin1   FLOAT NULL,
    FirstTimeSdMax1   FLOAT NULL,
    FirstTimeSdMax2   FLOAT NULL,
    FirstTimeSdMax3   FLOAT NULL,
    LastTimeSem       FLOAT NULL,
    LastTimeSemMin    FLOAT NULL,
    LastTimeSemMax    FLOAT NULL,
    LastTimeSdMin3    FLOAT NULL,
    LastTimeSdMin2    FLOAT NULL,
    LastTimeSdMin1    FLOAT NULL,
    LastTimeSdMax1    FLOAT NULL,
    LastTimeSdMax2    FLOAT NULL,
    LastTimeSdMax3    FLOAT NULL,
    FinishSpeedSem    FLOAT NULL,
    FinishSpeedSemMin FLOAT NULL,
    FinishSpeedSemMax FLOAT NULL,
    FinishSpeedSdMin3 FLOAT NULL,
    FinishSpeedSdMin2 FLOAT NULL,
    FinishSpeedSdMin1 FLOAT NULL,
    FinishSpeedSdMax1 FLOAT NULL,
    FinishSpeedSdMax2 FLOAT NULL,
    FinishSpeedSdMax3 FLOAT NULL,
    FirstSpeedSem     FLOAT NULL,
    FirstSpeedSemMin  FLOAT NULL,
    FirstSpeedSemMax  FLOAT NULL,
    FirstSpeedSdMin3  FLOAT NULL,
    FirstSpeedSdMin2  FLOAT NULL,
    FirstSpeedSdMin1  FLOAT NULL,
    FirstSpeedSdMax1  FLOAT NULL,
    FirstSpeedSdMax2  FLOAT NULL,
    FirstSpeedSdMax3  FLOAT NULL,
    LastSpeedSem      FLOAT NULL,
    LastSpeedSemMin   FLOAT NULL,
    LastSpeedSemMax   FLOAT NULL,
    LastSpeedSdMin3   FLOAT NULL,
    LastSpeedSdMin2   FLOAT NULL,
    LastSpeedSdMin1   FLOAT NULL,
    LastSpeedSdMax1   FLOAT NULL,
    LastSpeedSdMax2   FLOAT NULL,
    LastSpeedSdMax3   FLOAT NULL,
    Timestamp02       DATETIME NULL,
    Guid              UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_StatsPrepAfterRaceHorseByPrepRaceType1 PRIMARY KEY CLUSTERED(PrepRaceType1Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                       )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.StatsPrepBeforeRaceHorseByAll
                                              (
    HorseNumRatioCount FLOAT NULL,
    HorseNumRatioAvg   FLOAT NULL,
    HorseNumRatioStDev FLOAT NULL,
    HorseNumRatioSum   FLOAT NULL,
    HorseNumRatioMin   FLOAT NULL,
    HorseNumRatioMax   FLOAT NULL,
    WeightCount        FLOAT NULL,
    WeightAvg          FLOAT NULL,
    WeightStDev        FLOAT NULL,
    WeightSum          FLOAT NULL,
    WeightMin          FLOAT NULL,
    WeightMax          FLOAT NULL,
    HandicapCount      FLOAT NULL,
    HandicapSum        FLOAT NULL,
    HandicapAvg        FLOAT NULL,
    HandicapStDev      FLOAT NULL,
    HandicapMin        FLOAT NULL,
    HandicapMax        FLOAT NULL,
    HandicapRatioCount FLOAT NULL,
    HandicapRatioAvg   FLOAT NULL,
    HandicapRatioStDev FLOAT NULL,
    HandicapRatioSum   FLOAT NULL,
    HandicapRatioMin   FLOAT NULL,
    HandicapRatioMax   FLOAT NULL,
    LifetimeCount      FLOAT NULL,
    LifetimeAvg        FLOAT NULL,
    LifetimeStDev      FLOAT NULL,
    LifetimeSum        FLOAT NULL,
    LifetimeMin        FLOAT NULL,
    LifetimeMax        FLOAT NULL,
    Timestamp01        DATETIME NULL,
    Guid               UNIQUEIDENTIFIER NULL
                                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.StatsPrepBeforeRaceHorseByRaceType1
                                                    (
    RaceType1Id        NVARCHAR(255) NOT NULL,
    HorseNumRatioCount FLOAT NULL,
    HorseNumRatioAvg   FLOAT NULL,
    HorseNumRatioStDev FLOAT NULL,
    HorseNumRatioSum   FLOAT NULL,
    HorseNumRatioMin   FLOAT NULL,
    HorseNumRatioMax   FLOAT NULL,
    WeightCount        FLOAT NULL,
    WeightAvg          FLOAT NULL,
    WeightStDev        FLOAT NULL,
    WeightSum          FLOAT NULL,
    WeightMin          FLOAT NULL,
    WeightMax          FLOAT NULL,
    HandicapCount      FLOAT NULL,
    HandicapSum        FLOAT NULL,
    HandicapAvg        FLOAT NULL,
    HandicapStDev      FLOAT NULL,
    HandicapMin        FLOAT NULL,
    HandicapMax        FLOAT NULL,
    HandicapRatioCount FLOAT NULL,
    HandicapRatioAvg   FLOAT NULL,
    HandicapRatioStDev FLOAT NULL,
    HandicapRatioSum   FLOAT NULL,
    HandicapRatioMin   FLOAT NULL,
    HandicapRatioMax   FLOAT NULL,
    LifetimeCount      FLOAT NULL,
    LifetimeAvg        FLOAT NULL,
    LifetimeStDev      FLOAT NULL,
    LifetimeSum        FLOAT NULL,
    LifetimeMin        FLOAT NULL,
    LifetimeMax        FLOAT NULL,
    Timestamp01        DATETIME NULL,
    Guid               UNIQUEIDENTIFIER NULL,
    CONSTRAINT PK_StatsPrepBeforeRaceHorseByRaceType1 PRIMARY KEY CLUSTERED(RaceType1Id ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                                    )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.Trainer
                        (
    RecKubun                          NCHAR(2) NULL,
    DataKubun                         NCHAR(1) NULL,
    MakeDate                          [DATE] NULL,
    TrainerId                         NCHAR(5) NOT NULL,
    DelKubun                          NCHAR(1) NULL,
    IssueDate                         [DATE] NULL,
    DelDate                           [DATE] NULL,
    BirthDate                         [DATE] NULL,
    TrainerName                       NVARCHAR(34) NULL,
    TrainerNameKana                   NVARCHAR(30) NULL,
    TrainerRyakusyo                   NVARCHAR(8) NULL,
    TrainerNameEng                    NVARCHAR(80) NULL,
    SexId                             NCHAR(1) NULL,
    TozaiId                           NCHAR(1) NULL,
    Syotai                            NVARCHAR(20) NULL,
    SaikinJyusyo1SaikinJyusyoRaceDate [DATE] NULL,
    SaikinJyusyo1SaikinJyusyoPlaceId  NCHAR(2) NULL,
    SaikinJyusyo1SaikinJyusyoKaiji    INT NULL,
    SaikinJyusyo1SaikinJyusyoNichiji  INT NULL,
    SaikinJyusyo1SaikinJyusyoRaceNum  INT NULL,
    SaikinJyusyo1Hondai               NVARCHAR(60) NULL,
    SaikinJyusyo1Ryakusyo10           NVARCHAR(20) NULL,
    SaikinJyusyo1Ryakusyo6            NVARCHAR(12) NULL,
    SaikinJyusyo1Ryakusyo3            NVARCHAR(6) NULL,
    SaikinJyusyo1GradeId              NCHAR(1) NULL,
    SaikinJyusyo1SyussoTosu           FLOAT NULL,
    SaikinJyusyo1HorseId              NCHAR(10) NULL,
    SaikinJyusyo1Bamei                NVARCHAR(36) NULL,
    SaikinJyusyo2SaikinJyusyoRaceDate [DATE] NULL,
    SaikinJyusyo2SaikinJyusyoPlaceId  NCHAR(2) NULL,
    SaikinJyusyo2SaikinJyusyoKaiji    INT NULL,
    SaikinJyusyo2SaikinJyusyoNichiji  INT NULL,
    SaikinJyusyo2SaikinJyusyoRaceNum  INT NULL,
    SaikinJyusyo2Hondai               NVARCHAR(60) NULL,
    SaikinJyusyo2Ryakusyo10           NVARCHAR(20) NULL,
    SaikinJyusyo2Ryakusyo6            NVARCHAR(12) NULL,
    SaikinJyusyo2Ryakusyo3            NVARCHAR(6) NULL,
    SaikinJyusyo2GradeId              NCHAR(1) NULL,
    SaikinJyusyo2SyussoTosu           FLOAT NULL,
    SaikinJyusyo2HorseId              NCHAR(10) NULL,
    SaikinJyusyo2Bamei                NVARCHAR(36) NULL,
    SaikinJyusyo3SaikinJyusyoRaceDate [DATE] NULL,
    SaikinJyusyo3SaikinJyusyoPlaceId  NCHAR(2) NULL,
    SaikinJyusyo3SaikinJyusyoKaiji    INT NULL,
    SaikinJyusyo3SaikinJyusyoNichiji  INT NULL,
    SaikinJyusyo3SaikinJyusyoRaceNum  INT NULL,
    SaikinJyusyo3Hondai               NVARCHAR(60) NULL,
    SaikinJyusyo3Ryakusyo10           NVARCHAR(20) NULL,
    SaikinJyusyo3Ryakusyo6            NVARCHAR(12) NULL,
    SaikinJyusyo3Ryakusyo3            NVARCHAR(6) NULL,
    SaikinJyusyo3GradeId              NCHAR(1) NULL,
    SaikinJyusyo3SyussoTosu           FLOAT NULL,
    SaikinJyusyo3HorseId              NCHAR(10) NULL,
    SaikinJyusyo3Bamei                NVARCHAR(36) NULL,
    Timestamp01                       DATETIME NULL,
    Guid                              UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_Trainer PRIMARY KEY CLUSTERED(TrainerId ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                        )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.TrainerByDistanceType
                                      (
    TrainerId       NCHAR(5) NOT NULL,
    TrackType2Id    NCHAR(1) NOT NULL,
    DistanceType2Id NCHAR(1) NOT NULL,
    SummaryType     INT NOT NULL,
    RunCount        FLOAT NULL,
    HitCount1       FLOAT NULL,
    HitRate1        FLOAT NULL,
    HitCount2       FLOAT NULL,
    HitRate2        FLOAT NULL,
    HitCount3       FLOAT NULL,
    HitRate3        FLOAT NULL,
    HitCount4       FLOAT NULL,
    HitRate4        FLOAT NULL,
    HitCount5       FLOAT NULL,
    HitRate5        FLOAT NULL,
    HitCount6       FLOAT NULL,
    HitRate6        FLOAT NULL,
    Timestamp01     DATETIME NULL,
    Guid            UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_TrainerByDistance PRIMARY KEY CLUSTERED(TrainerId ASC,TrackType2Id ASC,DistanceType2Id ASC,SummaryType ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                      )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.TrainerByTotal
                               (
    TrainerId    NCHAR(5) NOT NULL,
    TrackType3Id NCHAR(1) NOT NULL,
    SummaryType  INT NOT NULL,
    SetYear      INT NULL,
    Honsyokin    FLOAT NULL,
    Fukasyokin   FLOAT NULL,
    RunCount     FLOAT NULL,
    HitCount1    FLOAT NULL,
    HitRate1     FLOAT NULL,
    HitCount2    FLOAT NULL,
    HitRate2     FLOAT NULL,
    HitCount3    FLOAT NULL,
    HitRate3     FLOAT NULL,
    HitCount4    FLOAT NULL,
    HitRate4     FLOAT NULL,
    HitCount5    FLOAT NULL,
    HitRate5     FLOAT NULL,
    HitCount6    FLOAT NULL,
    HitRate6     FLOAT NULL,
    Timestamp01  DATETIME NULL,
    Guid         UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_TrainerByTotal PRIMARY KEY CLUSTERED(TrainerId ASC,TrackType3Id ASC,SummaryType ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                               )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.TrainerByTrackType
                                   (
    TrainerId    NCHAR(5) NOT NULL,
    PlaceId      NCHAR(2) NOT NULL,
    TrackType3Id NCHAR(1) NOT NULL,
    SummaryType  INT NOT NULL,
    RunCount     FLOAT NULL,
    HitCount1    FLOAT NULL,
    HitRate1     FLOAT NULL,
    HitCount2    FLOAT NULL,
    HitRate2     FLOAT NULL,
    HitCount3    FLOAT NULL,
    HitRate3     FLOAT NULL,
    HitCount4    FLOAT NULL,
    HitRate4     FLOAT NULL,
    HitCount5    FLOAT NULL,
    HitRate5     FLOAT NULL,
    HitCount6    FLOAT NULL,
    HitRate6     FLOAT NULL,
    Timestamp01  DATETIME NULL,
    Guid         UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_TrainerByTrackType PRIMARY KEY CLUSTERED(TrainerId ASC,PlaceId ASC,TrackType3Id ASC,SummaryType ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                   )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.TrainingSlope
                              (
    RecKubun        NCHAR(2) NULL,
    DataKubun       NCHAR(1) NULL,
    MakeDate        [DATE] NULL,
    ChokyoDate      [DATE] NOT NULL,
    ChokyoTime      INT NOT NULL,
    HorseId         NCHAR(10) NOT NULL,
    TresenKubun     NCHAR(1) NOT NULL,
    FurlongTime4    FLOAT NULL,
    FurlongTime3    FLOAT NULL,
    FurlongTime2    FLOAT NULL,
    LapTime4        FLOAT NULL,
    LapTime3        FLOAT NULL,
    LapTime2        FLOAT NULL,
    LapTime1        FLOAT NULL,
    Timestamp01     DATETIME NULL,
    IsValidTraining BIT NULL,
    StdFurlongTime4 FLOAT NULL,
    StdFurlongTime3 FLOAT NULL,
    StdFurlongTime2 FLOAT NULL,
    StdLapTime4     FLOAT NULL,
    StdLapTime3     FLOAT NULL,
    StdLapTime2     FLOAT NULL,
    StdLapTime1     FLOAT NULL,
    Timestamp02     DATETIME NULL,
    Guid            UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_TrainingSlope PRIMARY KEY CLUSTERED(ChokyoDate ASC,ChokyoTime ASC,HorseId ASC,TresenKubun ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.TrainingWoodChip
                                 (
    RecKubun                NCHAR(2) NULL,
    DataKubun               NCHAR(1) NULL,
    MakeDate                [DATE] NOT NULL,
    TresenKubun             NCHAR(1) NOT NULL,
    ChokyoDate              [DATE] NOT NULL,
    ChokyoTime              INT NOT NULL,
    HorseId                 NCHAR(10) NOT NULL,
    Course                  NCHAR(1) NULL,
    RightLeft               NCHAR(1) NULL,
    Reserved1               NCHAR(1) NULL,
    FurlongTime10           FLOAT NULL,
    FurlongTime09           FLOAT NULL,
    FurlongTime08           FLOAT NULL,
    FurlongTime07           FLOAT NULL,
    FurlongTime06           FLOAT NULL,
    FurlongTime05           FLOAT NULL,
    FurlongTime04           FLOAT NULL,
    FurlongTime03           FLOAT NULL,
    FurlongTime02           FLOAT NULL,
    LapTime10               FLOAT NULL,
    LapTime09               FLOAT NULL,
    LapTime08               FLOAT NULL,
    LapTime07               FLOAT NULL,
    LapTime06               FLOAT NULL,
    LapTime05               FLOAT NULL,
    LapTime04               FLOAT NULL,
    LapTime03               FLOAT NULL,
    LapTime02               FLOAT NULL,
    LapTime01               FLOAT NULL,
    Timestamp01             DATETIME NULL,
    IsValidTrainingWoodChip BIT NULL,
    StdFurlongTime10        FLOAT NULL,
    StdFurlongTime09        FLOAT NULL,
    StdFurlongTime08        FLOAT NULL,
    StdFurlongTime07        FLOAT NULL,
    StdFurlongTime06        FLOAT NULL,
    StdFurlongTime05        FLOAT NULL,
    StdFurlongTime04        FLOAT NULL,
    StdFurlongTime03        FLOAT NULL,
    StdFurlongTime02        FLOAT NULL,
    StdLapTime10            FLOAT NULL,
    StdLapTime09            FLOAT NULL,
    StdLapTime08            FLOAT NULL,
    StdLapTime07            FLOAT NULL,
    StdLapTime06            FLOAT NULL,
    StdLapTime05            FLOAT NULL,
    StdLapTime04            FLOAT NULL,
    StdLapTime03            FLOAT NULL,
    StdLapTime02            FLOAT NULL,
    StdLapTime01            FLOAT NULL,
    Timestamp02             DATETIME NULL,
    Guid                    UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_TrainingWoodChip PRIMARY KEY CLUSTERED(MakeDate ASC,TresenKubun ASC,ChokyoDate ASC,ChokyoTime ASC,HorseId ASC)
    WITH(PAD_INDEX = ON,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                                 )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.WinFive
                        (
    RecKubun                     NCHAR(2) NULL,
    DataKubun                    NCHAR(1) NULL,
    MakeDate                     [DATE] NULL,
    RaceDate                     [DATE] NOT NULL,
    Reserved1                    NCHAR(2) NULL,
    Reserved2                    NCHAR(6) NULL,
    HatsubaiHyo                  FLOAT NULL,
    HenkanFlag                   NCHAR(1) NULL,
    FuseiritsuFlag               NCHAR(1) NULL,
    TekichunashiFlag             NCHAR(1) NULL,
    CoShoki                      FLOAT NULL,
    CoZandaka                    FLOAT NULL,
    IsJraRace                    BIT NULL,
    IsUpdatedEntity              BIT NULL,
    Timestamp01                  DATETIME NULL,
    IsAnalyzeFullPastAndFuture   BIT NULL,
    IsAnalyzeFullPast            BIT NULL,
    IsAnalyzeFullFuture          BIT NULL,
    IsAnalyzeNormalPastAndFuture BIT NULL,
    IsAnalyzeNormalPast          BIT NULL,
    IsAnalyzeNormalFuture        BIT NULL,
    IsPredictedWinFive           BIT NULL,
    Timestamp02                  DATETIME NULL,
    Guid                         UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_WinFive PRIMARY KEY CLUSTERED(RaceDate ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                        )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.WinFiveByPay
                             (
    RaceDate      [DATE] NOT NULL,
    Num           INT NOT NULL,
    Kumiban1      INT NULL,
    Kumiban2      INT NULL,
    Kumiban3      INT NULL,
    Kumiban4      INT NULL,
    Kumiban5      INT NULL,
    Pay           FLOAT NULL,
    TekichuHyo    FLOAT NULL,
    Timestamp01   DATETIME NULL,
    IsHit         BIT NULL,
    IsChecked     BIT NULL,
    CheckDatetime DATETIME NULL,
    Timestamp02   DATETIME NULL,
    Guid          UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_WinFiveByPay PRIMARY KEY CLUSTERED(RaceDate ASC,Num ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                             )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.WinFiveByRace
                              (
    RaceDate    [DATE] NOT NULL,
    Num         INT NOT NULL,
    PlaceId     NCHAR(2) NULL,
    Kaiji       INT NULL,
    Nichiji     INT NULL,
    RaceNum     INT NULL,
    Timestamp01 DATETIME NULL,
    RaceId      NCHAR(12) NULL,
    Timestamp02 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_WinFiveByRace PRIMARY KEY CLUSTERED(RaceDate ASC,Num ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE dbo.WinFiveByYuko
                              (
    RaceDate    [DATE] NOT NULL,
    Num         INT NOT NULL,
    YukoHyo     FLOAT NULL,
    Timestamp01 DATETIME NULL,
    Guid        UNIQUEIDENTIFIER ROWGUIDCOL NULL,
    CONSTRAINT PK_WinFiveByYuko PRIMARY KEY CLUSTERED(RaceDate ASC,Num ASC)
    WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                              )
ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX IX_Horse_001
    ON dbo.Horse
                (Gen01HansyokuId ASC
                ) 
    WITH
        (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
        )
    ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX IX_Horse_002
    ON dbo.Horse
                (Gen02HansyokuId ASC
                ) 
    WITH
        (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
        )
    ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX IX_Horse_003
    ON dbo.Horse
                (Gen05HansyokuId ASC
                ) 
    WITH
        (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
        )
    ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_Race_001
    ON dbo.Race
               (IsJraRace ASC
               ) 
    INCLUDE
           (RaceDate,ClassId
           ) WITH
                 (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 )
    ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_Race_002
    ON dbo.Race
               (IsJraRace ASC,IsAnalyzeNormalPastAndFuture ASC
               ) 
    INCLUDE
           (RaceDate,ClassId
           ) WITH
                 (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 )
    ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_RaceHorse_001
    ON dbo.RaceHorse
                    (IsValidRaceHorse ASC
                    ) 
    INCLUDE
           (IsRun,IsHit1,IsHit2,IsHit3
           ) WITH
                 (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 )
    ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX IX_RaceHorse_002
    ON dbo.RaceHorse
                    (HorseId ASC
                    ) 
    WITH
        (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
        )
    ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_RaceHorse_003
    ON dbo.RaceHorse
                    (IsValidRaceHorse ASC
                    ) 
    INCLUDE
           (JockeyId,IsRun,IsHit1,IsHit2,IsHit3
           ) WITH
                 (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 )
    ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX IX_RaceHorse_004
    ON dbo.RaceHorse
                    (TrainerId ASC
                    ) 
    WITH
        (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
        )
    ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_RaceHorse_005
    ON dbo.RaceHorse
                    (IsValidRaceHorse ASC
                    ) 
    INCLUDE
           (TrainerId,IsRun,IsHit1,IsHit2,IsHit3
           ) WITH
                 (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 )
    ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX IX_RaceHorse_006
    ON dbo.RaceHorse
                    (BanusiId ASC
                    ) 
    WITH
        (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
        )
    ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_RaceHorse_007
    ON dbo.RaceHorse
                    (IsValidRaceHorse ASC
                    ) 
    INCLUDE
           (BanusiId,IsRun,IsHit1,IsHit2,IsHit3
           ) WITH
                 (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 )
    ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_ReplRace_001
    ON dbo.ReplRace
                   (IsJraRace ASC
                   ) 
    INCLUDE
           (RaceDate,ClassId
           ) WITH
                 (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 )
    ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_ReplRace_002
    ON dbo.ReplRace
                   (IsJraRace ASC,IsAnalyzeNormalPastAndFuture ASC
                   ) 
    INCLUDE
           (RaceDate,ClassId
           ) WITH
                 (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 )
    ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_ReplRaceHorse_001
    ON dbo.ReplRaceHorse
                        (IsValidRaceHorse ASC
                        ) 
    INCLUDE
           (IsRun,IsHit1,IsHit2,IsHit3
           ) WITH
                 (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 )
    ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX IX_ReplRaceHorse_002
    ON dbo.ReplRaceHorse
                        (HorseId ASC
                        ) 
    WITH
        (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
        )
    ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_ReplRaceHorse_003
    ON dbo.ReplRaceHorse
                        (IsValidRaceHorse ASC
                        ) 
    INCLUDE
           (JockeyId,IsRun,IsHit1,IsHit2,IsHit3
           ) WITH
                 (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 )
    ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX IX_ReplRaceHorse_004
    ON dbo.ReplRaceHorse
                        (TrainerId ASC
                        ) 
    WITH
        (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
        )
    ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_ReplRaceHorse_005
    ON dbo.ReplRaceHorse
                        (IsValidRaceHorse ASC
                        ) 
    INCLUDE
           (TrainerId,IsRun,IsHit1,IsHit2,IsHit3
           ) WITH
                 (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 )
    ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX IX_ReplRaceHorse_006
    ON dbo.ReplRaceHorse
                        (BanusiId ASC
                        ) 
    WITH
        (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
        )
    ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX IX_ReplRaceHorse_007
    ON dbo.ReplRaceHorse
                        (IsValidRaceHorse ASC
                        ) 
    INCLUDE
           (BanusiId,IsRun,IsHit1,IsHit2,IsHit3
           ) WITH
                 (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF,SORT_IN_TEMPDB = OFF,DROP_EXISTING = OFF,ONLINE = OFF,ALLOW_ROW_LOCKS = ON,ALLOW_PAGE_LOCKS = ON,FILLFACTOR = 70,OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF
                 )
    ON [PRIMARY]
GO
ALTER TABLE dbo.AnalysisStep01BasicType0600
ADD CONSTRAINT DF_AnalysisStep01BasicType0600_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType0600
ADD CONSTRAINT DF_AnalysisStep01BasicType0600_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1000
ADD CONSTRAINT DF_AnalysisStep01BasicType1000_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1000
ADD CONSTRAINT DF_AnalysisStep01BasicType1000_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1111
ADD CONSTRAINT DF_AnalysisStep01BasicType1111_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1111
ADD CONSTRAINT DF_AnalysisStep01BasicType1111_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1112
ADD CONSTRAINT DF_AnalysisStep01BasicType1112_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1112
ADD CONSTRAINT DF_AnalysisStep01BasicType1112_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1113
ADD CONSTRAINT DF_AnalysisStep01BasicType1113_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1113
ADD CONSTRAINT DF_AnalysisStep01BasicType1113_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1114
ADD CONSTRAINT DF_AnalysisStep01BasicType1114_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1114
ADD CONSTRAINT DF_AnalysisStep01BasicType1114_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1213
ADD CONSTRAINT DF_AnalysisStep01BasicType1213_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1213
ADD CONSTRAINT DF_AnalysisStep01BasicType1213_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1214
ADD CONSTRAINT DF_AnalysisStep01BasicType1214_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1214
ADD CONSTRAINT DF_AnalysisStep01BasicType1214_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1313
ADD CONSTRAINT DF_AnalysisStep01BasicType1313_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1313
ADD CONSTRAINT DF_AnalysisStep01BasicType1313_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1314
ADD CONSTRAINT DF_AnalysisStep01BasicType1314_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1314
ADD CONSTRAINT DF_AnalysisStep01BasicType1314_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1411
ADD CONSTRAINT DF_AnalysisStep01BasicType1411_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1411
ADD CONSTRAINT DF_AnalysisStep01BasicType1411_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1412
ADD CONSTRAINT DF_AnalysisStep01BasicType1412_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1412
ADD CONSTRAINT DF_AnalysisStep01BasicType1412_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1413
ADD CONSTRAINT DF_AnalysisStep01BasicType1413_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1413
ADD CONSTRAINT DF_AnalysisStep01BasicType1413_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1414
ADD CONSTRAINT DF_AnalysisStep01BasicType1414_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1414
ADD CONSTRAINT DF_AnalysisStep01BasicType1414_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1511
ADD CONSTRAINT DF_AnalysisStep01BasicType1511_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1511
ADD CONSTRAINT DF_AnalysisStep01BasicType1511_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1512
ADD CONSTRAINT DF_AnalysisStep01BasicType1512_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1512
ADD CONSTRAINT DF_AnalysisStep01BasicType1512_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1611
ADD CONSTRAINT DF_AnalysisStep01BasicType1611_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1611
ADD CONSTRAINT DF_AnalysisStep01BasicType1611_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType1612
ADD CONSTRAINT DF_AnalysisStep01BasicType1612_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType1612
ADD CONSTRAINT DF_AnalysisStep01BasicType1612_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2000
ADD CONSTRAINT DF_AnalysisStep01BasicType2000_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2000
ADD CONSTRAINT DF_AnalysisStep01BasicType2000_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2111
ADD CONSTRAINT DF_AnalysisStep01BasicType2111_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2111
ADD CONSTRAINT DF_AnalysisStep01BasicType2111_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2112
ADD CONSTRAINT DF_AnalysisStep01BasicType2112_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2112
ADD CONSTRAINT DF_AnalysisStep01BasicType2112_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2113
ADD CONSTRAINT DF_AnalysisStep01BasicType2113_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2113
ADD CONSTRAINT DF_AnalysisStep01BasicType2113_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2114
ADD CONSTRAINT DF_AnalysisStep01BasicType2114_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2114
ADD CONSTRAINT DF_AnalysisStep01BasicType2114_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2213
ADD CONSTRAINT DF_AnalysisStep01BasicType2213_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2213
ADD CONSTRAINT DF_AnalysisStep01BasicType2213_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2214
ADD CONSTRAINT DF_AnalysisStep01BasicType2214_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2214
ADD CONSTRAINT DF_AnalysisStep01BasicType2214_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2313
ADD CONSTRAINT DF_AnalysisStep01BasicType2313_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2313
ADD CONSTRAINT DF_AnalysisStep01BasicType2313_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2314
ADD CONSTRAINT DF_AnalysisStep01BasicType2314_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2314
ADD CONSTRAINT DF_AnalysisStep01BasicType2314_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2411
ADD CONSTRAINT DF_AnalysisStep01BasicType2411_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2411
ADD CONSTRAINT DF_AnalysisStep01BasicType2411_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2412
ADD CONSTRAINT DF_AnalysisStep01BasicType2412_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2412
ADD CONSTRAINT DF_AnalysisStep01BasicType2412_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2413
ADD CONSTRAINT DF_AnalysisStep01BasicType2413_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2413
ADD CONSTRAINT DF_AnalysisStep01BasicType2413_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2414
ADD CONSTRAINT DF_AnalysisStep01BasicType2414_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2414
ADD CONSTRAINT DF_AnalysisStep01BasicType2414_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2511
ADD CONSTRAINT DF_AnalysisStep01BasicType2511_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2511
ADD CONSTRAINT DF_AnalysisStep01BasicType2511_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2512
ADD CONSTRAINT DF_AnalysisStep01BasicType2512_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2512
ADD CONSTRAINT DF_AnalysisStep01BasicType2512_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2611
ADD CONSTRAINT DF_AnalysisStep01BasicType2611_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2611
ADD CONSTRAINT DF_AnalysisStep01BasicType2611_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType2612
ADD CONSTRAINT DF_AnalysisStep01BasicType2612_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType2612
ADD CONSTRAINT DF_AnalysisStep01BasicType2612_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType3000
ADD CONSTRAINT DF_AnalysisStep01BasicType3000_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType3000
ADD CONSTRAINT DF_AnalysisStep01BasicType3000_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType3118
ADD CONSTRAINT DF_AnalysisStep01BasicType3118_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType3118
ADD CONSTRAINT DF_AnalysisStep01BasicType3118_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType3119
ADD CONSTRAINT DF_AnalysisStep01BasicType3119_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType3119
ADD CONSTRAINT DF_AnalysisStep01BasicType3119_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType3518
ADD CONSTRAINT DF_AnalysisStep01BasicType3518_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType3518
ADD CONSTRAINT DF_AnalysisStep01BasicType3518_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType3519
ADD CONSTRAINT DF_AnalysisStep01BasicType3519_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01BasicType3519
ADD CONSTRAINT DF_AnalysisStep01BasicType3519_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type11
ADD CONSTRAINT DF_AnalysisStep01Gen01Type11_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type11
ADD CONSTRAINT DF_AnalysisStep01Gen01Type11_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type12
ADD CONSTRAINT DF_AnalysisStep01Gen01Type12_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type12
ADD CONSTRAINT DF_AnalysisStep01Gen01Type12_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type13
ADD CONSTRAINT DF_AnalysisStep01Gen01Type13_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type13
ADD CONSTRAINT DF_AnalysisStep01Gen01Type13_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type14
ADD CONSTRAINT DF_AnalysisStep01Gen01Type14_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type14
ADD CONSTRAINT DF_AnalysisStep01Gen01Type14_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type15
ADD CONSTRAINT DF_AnalysisStep01Gen01Type15_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type15
ADD CONSTRAINT DF_AnalysisStep01Gen01Type15_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type16
ADD CONSTRAINT DF_AnalysisStep01Gen01Type16_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type16
ADD CONSTRAINT DF_AnalysisStep01Gen01Type16_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type21
ADD CONSTRAINT DF_AnalysisStep01Gen01Type21_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type21
ADD CONSTRAINT DF_AnalysisStep01Gen01Type21_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type22
ADD CONSTRAINT DF_AnalysisStep01Gen01Type22_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type22
ADD CONSTRAINT DF_AnalysisStep01Gen01Type22_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type23
ADD CONSTRAINT DF_AnalysisStep01Gen01Type23_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type23
ADD CONSTRAINT DF_AnalysisStep01Gen01Type23_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type24
ADD CONSTRAINT DF_AnalysisStep01Gen01Type24_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type24
ADD CONSTRAINT DF_AnalysisStep01Gen01Type24_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type25
ADD CONSTRAINT DF_AnalysisStep01Gen01Type25_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type25
ADD CONSTRAINT DF_AnalysisStep01Gen01Type25_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type2512
ADD CONSTRAINT DF_AnalysisStep01Gen01Type2512_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type2512
ADD CONSTRAINT DF_AnalysisStep01Gen01Type2512_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type26
ADD CONSTRAINT DF_AnalysisStep01Gen01Type26_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type26
ADD CONSTRAINT DF_AnalysisStep01Gen01Type26_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type31
ADD CONSTRAINT DF_AnalysisStep01Gen01Type31_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type31
ADD CONSTRAINT DF_AnalysisStep01Gen01Type31_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type35
ADD CONSTRAINT DF_AnalysisStep01Gen01Type35_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type35
ADD CONSTRAINT DF_AnalysisStep01Gen01Type35_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type11
ADD CONSTRAINT DF_AnalysisStep01Gen02Type11_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type11
ADD CONSTRAINT DF_AnalysisStep01Gen02Type11_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type12
ADD CONSTRAINT DF_AnalysisStep01Gen02Type12_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type12
ADD CONSTRAINT DF_AnalysisStep01Gen02Type12_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type13
ADD CONSTRAINT DF_AnalysisStep01Gen02Type13_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type13
ADD CONSTRAINT DF_AnalysisStep01Gen02Type13_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type14
ADD CONSTRAINT DF_AnalysisStep01Gen02Type14_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type14
ADD CONSTRAINT DF_AnalysisStep01Gen02Type14_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type15
ADD CONSTRAINT DF_AnalysisStep01Gen02Type15_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type15
ADD CONSTRAINT DF_AnalysisStep01Gen02Type15_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type16
ADD CONSTRAINT DF_AnalysisStep01Gen02Type16_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type16
ADD CONSTRAINT DF_AnalysisStep01Gen02Type16_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type21
ADD CONSTRAINT DF_AnalysisStep01Gen02Type21_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type21
ADD CONSTRAINT DF_AnalysisStep01Gen02Type21_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type22
ADD CONSTRAINT DF_AnalysisStep01Gen02Type22_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type22
ADD CONSTRAINT DF_AnalysisStep01Gen02Type22_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type23
ADD CONSTRAINT DF_AnalysisStep01Gen02Type23_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type23
ADD CONSTRAINT DF_AnalysisStep01Gen02Type23_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type24
ADD CONSTRAINT DF_AnalysisStep01Gen02Type24_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type24
ADD CONSTRAINT DF_AnalysisStep01Gen02Type24_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type25
ADD CONSTRAINT DF_AnalysisStep01Gen02Type25_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type25
ADD CONSTRAINT DF_AnalysisStep01Gen02Type25_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type2512
ADD CONSTRAINT DF_AnalysisStep01Gen02Type2512_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type2512
ADD CONSTRAINT DF_AnalysisStep01Gen02Type2512_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type26
ADD CONSTRAINT DF_AnalysisStep01Gen02Type26_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type26
ADD CONSTRAINT DF_AnalysisStep01Gen02Type26_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type31
ADD CONSTRAINT DF_AnalysisStep01Gen02Type31_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type31
ADD CONSTRAINT DF_AnalysisStep01Gen02Type31_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type35
ADD CONSTRAINT DF_AnalysisStep01Gen02Type35_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type35
ADD CONSTRAINT DF_AnalysisStep01Gen02Type35_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType11
ADD CONSTRAINT DF_AnalysisStep01JockeyType11_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType11
ADD CONSTRAINT DF_AnalysisStep01JockeyType11_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType12
ADD CONSTRAINT DF_AnalysisStep01JockeyType12_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType12
ADD CONSTRAINT DF_AnalysisStep01JockeyType12_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType13
ADD CONSTRAINT DF_AnalysisStep01JockeyType13_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType13
ADD CONSTRAINT DF_AnalysisStep01JockeyType13_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType14
ADD CONSTRAINT DF_AnalysisStep01JockeyType14_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType14
ADD CONSTRAINT DF_AnalysisStep01JockeyType14_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType15
ADD CONSTRAINT DF_AnalysisStep01JockeyType15_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType15
ADD CONSTRAINT DF_AnalysisStep01JockeyType15_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType16
ADD CONSTRAINT DF_AnalysisStep01JockeyType16_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType16
ADD CONSTRAINT DF_AnalysisStep01JockeyType16_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType21
ADD CONSTRAINT DF_AnalysisStep01JockeyType21_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType21
ADD CONSTRAINT DF_AnalysisStep01JockeyType21_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType22
ADD CONSTRAINT DF_AnalysisStep01JockeyType22_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType22
ADD CONSTRAINT DF_AnalysisStep01JockeyType22_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType23
ADD CONSTRAINT DF_AnalysisStep01JockeyType23_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType23
ADD CONSTRAINT DF_AnalysisStep01JockeyType23_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType24
ADD CONSTRAINT DF_AnalysisStep01JockeyType24_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType24
ADD CONSTRAINT DF_AnalysisStep01JockeyType24_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType25
ADD CONSTRAINT DF_AnalysisStep01JockeyType25_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType25
ADD CONSTRAINT DF_AnalysisStep01JockeyType25_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType2512
ADD CONSTRAINT DF_AnalysisStep01JockeyType2512_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType2512
ADD CONSTRAINT DF_AnalysisStep01JockeyType2512_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType26
ADD CONSTRAINT DF_AnalysisStep01JockeyType26_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType26
ADD CONSTRAINT DF_AnalysisStep01JockeyType26_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType31
ADD CONSTRAINT DF_AnalysisStep01JockeyType31_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType31
ADD CONSTRAINT DF_AnalysisStep01JockeyType31_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01JockeyType35
ADD CONSTRAINT DF_AnalysisStep01JockeyType35_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01JockeyType35
ADD CONSTRAINT DF_AnalysisStep01JockeyType35_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01PrepType0000
ADD CONSTRAINT DF_AnalysisStep01PrepType0000_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrepType0000
ADD CONSTRAINT DF_AnalysisStep01PrepType0000_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType11
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType11_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType11
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType11_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType12
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType12_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType12
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType12_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType13
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType13_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType13
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType13_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType14
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType14_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType14
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType14_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType15
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType15_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType15
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType15_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType16
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType16_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType16
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType16_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType21
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType21_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType21
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType21_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType22
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType22_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType22
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType22_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType23
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType23_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType23
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType23_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType24
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType24_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType24
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType24_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType25
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType25_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType25
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType25_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType26
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType26_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType26
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType26_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType31
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType31_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType31
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType31_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType35
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType35_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType35
ADD CONSTRAINT DF_AnalysisStep01PrevRaceHorseType35_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep02Basic
ADD CONSTRAINT DF_AnalysisStep02Basic_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep02Gen01
ADD CONSTRAINT DF_AnalysisStep02Gen01_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep02Gen02
ADD CONSTRAINT DF_AnalysisStep02Gen02_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep02Jockey
ADD CONSTRAINT DF_AnalysisStep02Jockey_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep02PrevRaceHorse
ADD CONSTRAINT DF_AnalysisStep02PrevRaceHorse_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep03Basic
ADD CONSTRAINT DF_AnalysisStep03Basic_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep03Gen01
ADD CONSTRAINT DF_AnalysisStep03Gen01_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep03Gen02
ADD CONSTRAINT DF_AnalysisStep03Gen02_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep03Jockey
ADD CONSTRAINT DF_AnalysisStep03Jockey_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep03PrevRaceHorse
ADD CONSTRAINT DF_AnalysisStep03PrevRaceHorse_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Banusi
ADD CONSTRAINT DF_Banusi_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.BaseStatsBanusiByRaceHorse
ADD CONSTRAINT DF_BaseStatsBanusiByRaceHorse_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.BaseStatsGen01HansyokuByRaceHorse
ADD CONSTRAINT DF_BaseStatsGen01HansyokuByRaceHorse_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.BaseStatsGen02HansyokuByRaceHorse
ADD CONSTRAINT DF_BaseStatsGen02HansyokuByRaceHorse_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.BaseStatsGen05HansyokuByRaceHorse
ADD CONSTRAINT DF_BaseStatsGen05HansyokuByRaceHorse_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.BaseStatsJockeyByRaceHorse
ADD CONSTRAINT DF_BaseStatsJockeyByRaceHorse_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.BaseStatsTrainerByRaceHorse
ADD CONSTRAINT DF_BaseStatsTrainerByRaceHorse_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.BayesianTrial01
ADD CONSTRAINT DF_AnalyzeBayesian01Trial_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Bet1
ADD CONSTRAINT DF_Bet1_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Bet1ByBracket
ADD CONSTRAINT DF_Bet1ByBracket_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Bet1ByExacta
ADD CONSTRAINT DF_Bet1ByExacta_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Bet1ByPlace
ADD CONSTRAINT DF_Bet1ByPlace_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Bet1ByQuinella
ADD CONSTRAINT DF_Bet1ByQuinella_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Bet1ByTrio
ADD CONSTRAINT DF_Bet1ByTrio_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Bet1ByWide
ADD CONSTRAINT DF_Bet1ByWide_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Bet1ByWin
ADD CONSTRAINT DF_Bet1ByWin_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Bet6
ADD CONSTRAINT DF_Bet6_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Bet6ByHenkanUma
ADD CONSTRAINT DF_Bet6ByHenkanUma_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Bet6ByTrifecta
ADD CONSTRAINT DF_Bet6ByTrifecta_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.BetHistoryDetail
ADD CONSTRAINT DF_BetHistoryDetail_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.BetHistoryMaster
ADD CONSTRAINT DF_BetHistoryMaster_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.BetMgmtByBet
ADD CONSTRAINT DF_BetMgmtByBet_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.BetMgmtBySim
ADD CONSTRAINT DF_BetMgmtBySim_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.BetMgmtByTemp
ADD CONSTRAINT DF_BetMgmtByTemp_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.BetMgmtHistory
ADD CONSTRAINT DF_BetMgmtHistory_RegDatetime DEFAULT GETDATE() FOR RegDatetime
GO
ALTER TABLE dbo.BetMgmtHistory
ADD CONSTRAINT DF_BetMgmtHistory_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Breeder
ADD CONSTRAINT DF_Breeder_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigBetCount
ADD CONSTRAINT DF_ConfigBetCount_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigBetCountWinFive
ADD CONSTRAINT DF_ConfigBetCountWinFive_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigBetMoney
ADD CONSTRAINT DF_ConfigBetMoney_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.ConfigBetMoney
ADD CONSTRAINT DF_ConfigBetMoney_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigDataSpecRecKubun
ADD CONSTRAINT DF_ConfigDataSpecRecKubun_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.ConfigDataSpecRecKubun
ADD CONSTRAINT DF_ConfigDataSpecRecKubun_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigIpatAccount
ADD CONSTRAINT DF_Account_Id DEFAULT NEWID() FOR Id
GO
ALTER TABLE dbo.ConfigIpatAccount
ADD CONSTRAINT DF_Account_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigIpatBalance
ADD CONSTRAINT DF_ConfigIpatBalance_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ConfigLastTimestamp
ADD CONSTRAINT DF_ConfigLastTimestamp_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.ConfigLastTimestamp
ADD CONSTRAINT DF_ConfigLastTimestamp_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.CourseInfo
ADD CONSTRAINT DF_CourseInfo_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.DataMining
ADD CONSTRAINT DF_DataMining_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.DataMiningTaisen
ADD CONSTRAINT DF_DataMiningTaisen_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.EventAvoid
ADD CONSTRAINT DF_EventAvoid_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.EventCourseChange
ADD CONSTRAINT DF_EventCourseChange_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.EventHorseWeight
ADD CONSTRAINT DF_EventHorseWeight_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.EventJockeyChange
ADD CONSTRAINT DF_EventJockeyChange_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.EventTimeChange
ADD CONSTRAINT DF_EventTimeChange_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.EventWeather
ADD CONSTRAINT DF_EventWeather_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Hansyoku
ADD CONSTRAINT DF_Hansyoku_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.HansyokuParents
ADD CONSTRAINT DF_HansyokuParents_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Horse
ADD CONSTRAINT DF_Horse_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.HorseByCourseType
ADD CONSTRAINT DF_HorseByCourseType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.HorseByDistanceType
ADD CONSTRAINT DF_HorseByDistanceType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.HorseByRunType
ADD CONSTRAINT DF_HorseByRunType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.HorseBySmile
ADD CONSTRAINT DF_HorseBySmile_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.HorseByTotal
ADD CONSTRAINT DF_HorseByTotal_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.HorseByTrackCondition
ADD CONSTRAINT DF_HorseByTrackCondition_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Jockey
ADD CONSTRAINT DF_Jockey_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.JockeyByDistanceType
ADD CONSTRAINT DF_JockeyByDistanceType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.JockeyByHatsuKijyo
ADD CONSTRAINT DF_JockeyByHatsuKijyo_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.JockeyByHatuSyori
ADD CONSTRAINT DF_JockeyByHatuSyori_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.JockeyBySaikinJyusyo
ADD CONSTRAINT DF_JockeyBySaikinJyusyo_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.JockeyByTotal
ADD CONSTRAINT DF_JockeyByTotal_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.JockeyByTrackType
ADD CONSTRAINT DF_JockeyByTrackType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Keito
ADD CONSTRAINT DF_Keito_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Master2Class
ADD CONSTRAINT DF_Master2Class_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.Master2Class
ADD CONSTRAINT DF_Master2Class_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Master2Distance
ADD CONSTRAINT DF_Master2Distance_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.Master2Distance
ADD CONSTRAINT DF_Master2Distance_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Master2Handicap
ADD CONSTRAINT DF_Master2Futan_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.Master2Handicap
ADD CONSTRAINT DF_Master2Futan_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Master2Ninki
ADD CONSTRAINT DF_Master2Ninki_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.Master2Ninki
ADD CONSTRAINT DF_Master2Ninki_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Master2RaceType1
ADD CONSTRAINT DF_Master2RaceType1_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.Master2RaceType1
ADD CONSTRAINT DF_Master2RaceType1_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Master2RaceType2
ADD CONSTRAINT DF_Master2RaceType2_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.Master2RaceType2
ADD CONSTRAINT DF_Master2RaceType2_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Master2RaceType3
ADD CONSTRAINT DF_Master2RaceType3_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.Master2RaceType3
ADD CONSTRAINT DF_Master2RaceType3_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Master2RaceType4
ADD CONSTRAINT DF_Master2RaceType4_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.Master2RaceType4
ADD CONSTRAINT DF_Master2RaceType4_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Master2RaceType5
ADD CONSTRAINT DF_Master2RaceType5_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.Master2RaceType5
ADD CONSTRAINT DF_Master2RaceType5_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Master2RaceType6
ADD CONSTRAINT DF_Master2RaceType6_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.Master2RaceType6
ADD CONSTRAINT DF_Master2RaceType6_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Master2RaceType7
ADD CONSTRAINT DF_Master2RaceType7_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.Master2RaceType7
ADD CONSTRAINT DF_Master2RaceType7_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Master2RaceType8
ADD CONSTRAINT DF_Master2RaceType8_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.Master2RaceType8
ADD CONSTRAINT DF_Master2RaceType8_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Master2RaceType9
ADD CONSTRAINT DF_Master2RaceType9_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.Master2RaceType9
ADD CONSTRAINT DF_Master2RaceType9_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Master2Weight
ADD CONSTRAINT DF_Master2Weight_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.Master2Weight
ADD CONSTRAINT DF_Master2Weight_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterBetType
ADD CONSTRAINT DF_MasterBetType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterBlinker
ADD CONSTRAINT DF_MasterBlinker_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterBracketNum
ADD CONSTRAINT DF_MasterBracketNum_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterChakusa
ADD CONSTRAINT DF_MasterChakusa_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterCourseKubun
ADD CONSTRAINT DF_MasterCourseKubun_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterCourseType
ADD CONSTRAINT DF_MasterCourseType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterDataSpec
ADD CONSTRAINT DF_MasterDataSpec_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterDistanceType
ADD CONSTRAINT DF_MasterDistanceType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterDistanceType2
ADD CONSTRAINT DF_MasterDistanceType2_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterGrade
ADD CONSTRAINT DF_MasterGrade_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterHinsyu
ADD CONSTRAINT DF_MasterHinsyu_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterHorseNum
ADD CONSTRAINT DF_MasterHorseNum_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterJyoken
ADD CONSTRAINT DF_Master2Jyoken_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterJyoken5
ADD CONSTRAINT DF_MasterJyoken5_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterJyuryo
ADD CONSTRAINT DF_MasterJyuryo_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterKeiro
ADD CONSTRAINT DF_MasterKeiro_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterKigo
ADD CONSTRAINT DF_MasterKigo_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterLicense
ADD CONSTRAINT DF_MasterLicense_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterMinarai
ADD CONSTRAINT DF_MasterMinarai_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterOpenModeDataSpec
ADD CONSTRAINT DF_MasterOpenModeDataSpec_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterPlace
ADD CONSTRAINT DF_MasterPlace_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterPlace2
ADD CONSTRAINT DF_MasterPlace2_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterRunType
ADD CONSTRAINT DF_MasterRunType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterSex
ADD CONSTRAINT DF_MasterSex_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterSmile
ADD CONSTRAINT DF_MasterSmile_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterStats
ADD CONSTRAINT DF_MasterStats_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterSyubetu
ADD CONSTRAINT DF_MasterSyubetsu_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterTenko
ADD CONSTRAINT DF_MasterTenko_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterTozai
ADD CONSTRAINT DF_MasterTozai_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterTrack
ADD CONSTRAINT DF_MasterTrack_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterTrackCondition
ADD CONSTRAINT DF_MasterTrackCondition_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterTrackType
ADD CONSTRAINT DF_MasterTrackType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterTrackType2
ADD CONSTRAINT DF_MasterTrackType2_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterTrackType3
ADD CONSTRAINT DF_MasterTrackType3_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterUmaKigo
ADD CONSTRAINT DF_MasterUmaKigo_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.MasterYoubi
ADD CONSTRAINT DF_MasterYoubi_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.NameOrigin
ADD CONSTRAINT DF_NameOrigin_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Odds1
ADD CONSTRAINT DF_Odds1_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Odds2
ADD CONSTRAINT DF_Odds2_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Odds3
ADD CONSTRAINT DF_Odds3_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Odds4
ADD CONSTRAINT DF_Odds4_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Odds5
ADD CONSTRAINT DF_Odds5_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Odds6
ADD CONSTRAINT DF_Odds6_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.OddsByBracket
ADD CONSTRAINT DF_OddsByBracket_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.OddsByExacta
ADD CONSTRAINT DF_OddsByExacta_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.OddsByPlace
ADD CONSTRAINT DF_OddsByPlace_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.OddsByQuinella
ADD CONSTRAINT DF_OddsByQuinella_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.OddsByTrifecta
ADD CONSTRAINT DF_OddsByTrifecta_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.OddsByTrio
ADD CONSTRAINT DF_OddsByTrio_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.OddsByWide
ADD CONSTRAINT DF_OddsByWide_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.OddsByWin
ADD CONSTRAINT DF_OddsByWin_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Payoff
ADD CONSTRAINT DF_Payoff_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.PayoffByFlag
ADD CONSTRAINT DF_PayoffByFlag_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.PayoffByHenkanDoWaku
ADD CONSTRAINT DF_PayoffByHenkanDoWaku_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.PayoffByHenkanUma
ADD CONSTRAINT DF_PayoffByHenkanUma_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.PayoffByHenkanWaku
ADD CONSTRAINT DF_PayoffByHenkanWaku_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.PayoffByPayAll
ADD CONSTRAINT DF_PayoffByPayAll_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.PredictByBracket_001
ADD CONSTRAINT DF_PredictByBracket_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.PredictByExacta_001
ADD CONSTRAINT DF_PredictByExacta_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.PredictByPlace_001
ADD CONSTRAINT DF_PredictByPlace_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.PredictByQuinella_001
ADD CONSTRAINT DF_PredictByQuinella_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.PredictByTrifecta_001
ADD CONSTRAINT DF_PredictByTrifecta_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.PredictByTrio_001
ADD CONSTRAINT DF_PredictByTrio_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.PredictByWide_001
ADD CONSTRAINT DF_PredictByWide_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.PredictByWin_001
ADD CONSTRAINT DF_PredictByWin_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.PredictByWinFive
ADD CONSTRAINT DF_PredictByWinFive_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.PredictModels
ADD CONSTRAINT DF_PredictModels_Timestamp01 DEFAULT GETDATE() FOR Timestamp01
GO
ALTER TABLE dbo.PredictModels
ADD CONSTRAINT DF_PredictModels_Timestamp011 DEFAULT GETDATE() FOR Timestamp02
GO
ALTER TABLE dbo.PredictModels
ADD CONSTRAINT DF_PredictModels_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Race
ADD CONSTRAINT DF_Race_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceByCornerPosition
ADD CONSTRAINT DF_RaceByCornerPosition_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceByLapTime
ADD CONSTRAINT DF_RaceByLapTime_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceExclusion
ADD CONSTRAINT DF_RaceExclusion_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorse
ADD CONSTRAINT DF_RaceHorse_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistory
ADD CONSTRAINT DF_RaceHorseHistory_Timestamp02 DEFAULT GETDATE() FOR Timestamp02
GO
ALTER TABLE dbo.RaceHorseHistory
ADD CONSTRAINT DF_RaceHorseHistory_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusi
ADD CONSTRAINT DF_RaceHorseHistoryByBanusi_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusiByTotal
ADD CONSTRAINT DF_RaceHorseHistoryByBanusiByTotal_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByBreeder
ADD CONSTRAINT DF_RaceHorseHistoryByBreeder_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByBreederByTotal
ADD CONSTRAINT DF_RaceHorseHistoryByBreederByTotal_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByHorse
ADD CONSTRAINT DF_RaceHorseHistoryByHorse_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByCourseType
ADD CONSTRAINT DF_RaceHorseHistoryByHorseByCourseType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByDistanceType
ADD CONSTRAINT DF_RaceHorseHistoryByHorseByDistanceType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByJyo
ADD CONSTRAINT DF_RaceHorseHistoryByHorseByJyo_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByRunType
ADD CONSTRAINT DF_RaceHorseHistoryByHorseByRunTypeGuid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTotal
ADD CONSTRAINT DF_RaceHorseHistoryByHorseByTotal_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackCondition
ADD CONSTRAINT DF_RaceHorseHistoryByHorseByTrackCondition_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackType
ADD CONSTRAINT DF_RaceHorseHistoryByHorseByTrackType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByJockey
ADD CONSTRAINT DF_RaceHorseHistoryByJocky_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByDistanceType
ADD CONSTRAINT DF_RaceHorseHistoryByJockeyByDistanceType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByJyo
ADD CONSTRAINT DF_RaceHorseHistoryByJockeyByJyo_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByTrackType
ADD CONSTRAINT DF_RaceHorseHistoryByJockeyByTrackType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainer
ADD CONSTRAINT DF_RaceHorseHistoryByTrainer_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByDistanceType
ADD CONSTRAINT DF_RaceHorseHistoryByTrainerByDistanceType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByJyo
ADD CONSTRAINT DF_RaceHorseHistoryByTrainerByJyo_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByTrackType
ADD CONSTRAINT DF_RaceHorseHistoryByTrainerByTrackType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.RaceRecord
ADD CONSTRAINT DF_RaceRecord_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ReplRace
ADD CONSTRAINT DF_ReplRace_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.ReplRaceHorse
ADD CONSTRAINT DF_ReplRaceHorse_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Sale
ADD CONSTRAINT DF_Sale_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Sanku
ADD CONSTRAINT DF_Sanku_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Schedule
ADD CONSTRAINT DF_Schedule_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Silk
ADD CONSTRAINT DF_Silk_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.SpecialRace
ADD CONSTRAINT DF_SpecialRace_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.SpecialRaceByHorse
ADD CONSTRAINT DF_SpecialRaceByHorse_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.StatsBasicAfterRaceByAll
ADD CONSTRAINT DF_StatsBasicAfterRaceByAll_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.StatsBasicAfterRaceByRaceType1
ADD CONSTRAINT DF_StatsBasicAfterRaceByRaceType1_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.StatsBasicAfterRaceHorseByAll
ADD CONSTRAINT DF_StatsBasicAfterRaceHorseByAll_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.StatsBasicAfterRaceHorseByRaceType1
ADD CONSTRAINT DF_StatsBasicAfterRaceHorseByRaceType1_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.StatsBasicBeforeDmByAll
ADD CONSTRAINT DF_StatsBasicBeforeDmByAll_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.StatsBasicBeforeDmByRaceType1
ADD CONSTRAINT DF_StatsBasicBeforeDmByRaceType1_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.StatsBasicBeforeOddsByAll
ADD CONSTRAINT DF_StatsBasicBeforeOddsByAll_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.StatsBasicBeforeOddsByRaceType1
ADD CONSTRAINT DF_StatsBasicBeforeOddsByRaceType1_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.StatsBasicBeforeRaceByAll
ADD CONSTRAINT DF_StatsBasicBeforeRaceByAll_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.StatsBasicBeforeRaceByRaceType1
ADD CONSTRAINT DF_StatsBasicBeforeRaceByRaceType1_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.StatsBasicBeforeRaceHorseByAll
ADD CONSTRAINT DF_StatsBasicBeforeRaceHorseByAll_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.StatsBasicBeforeRaceHorseByRaceType1
ADD CONSTRAINT DF_StatsBasicBeforeRaceHorseByRaceType1_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.StatsPrepAfterRaceHorseByAll
ADD CONSTRAINT DF_StatsPrepAfterRaceHorseByAll_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.StatsPrepAfterRaceHorseByPrepRaceType1
ADD CONSTRAINT DF_StatsPrepAfterRaceHorseByPrepRaceType1_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.StatsPrepBeforeRaceHorseByAll
ADD CONSTRAINT DF_StatsPrepBeforeRaceHorseByAll_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.StatsPrepBeforeRaceHorseByRaceType1
ADD CONSTRAINT DF_StatsPrepBeforeRaceHorseByRaceType1_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.Trainer
ADD CONSTRAINT DF_Trainer_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.TrainerByDistanceType
ADD CONSTRAINT DF_TrainerByDistance_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.TrainerByTotal
ADD CONSTRAINT DF_TrainerByTotal_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.TrainerByTrackType
ADD CONSTRAINT DF_TrainerByTrackType_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.TrainingSlope
ADD CONSTRAINT DF_TrainingSlope_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.TrainingWoodChip
ADD CONSTRAINT DF_TrainingWoodChip_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.WinFive
ADD CONSTRAINT DF_WinFive_IsJraRace DEFAULT 1 FOR IsJraRace
GO
ALTER TABLE dbo.WinFive
ADD CONSTRAINT DF_WinFive_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.WinFiveByPay
ADD CONSTRAINT DF_WinFiveByPay_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.WinFiveByRace
ADD CONSTRAINT DF_WinFiveByRace_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.WinFiveByYuko
ADD CONSTRAINT DF_WinFiveByYuko_Guid DEFAULT NEWID() FOR Guid
GO
ALTER TABLE dbo.AnalysisStep01BasicType0600
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType0600_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType0600 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType0600_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType0600
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType0600_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType0600 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType0600_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1000
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1000_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1000 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1000_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1000
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1000_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1000 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1000_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1111
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1111_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1111 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1111_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1111
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1111_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1111 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1111_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1112
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1112_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1112 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1112_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1112
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1112_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1112 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1112_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1113
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1113_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1113 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1113_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1113
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1113_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1113 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1113_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1114
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1114_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1114 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1114_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1114
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1114_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1114 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1114_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1213
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1213_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1213 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1213_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1213
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1213_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1213 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1213_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1214
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1214_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1214 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1214_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1214
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1214_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1214 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1214_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1313
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1313_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1313 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1313_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1313
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1313_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1313 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1313_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1314
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1314_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1314 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1314_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1314
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1314_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1314 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1314_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1411
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1411_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1411 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1411_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1411
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1411_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1411 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1411_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1412
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1412_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1412 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1412_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1412
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1412_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1412 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1412_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1413
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1413_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1413 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1413_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1413
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1413_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1413 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1413_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1414
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1414_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1414 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1414_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1414
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1414_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1414 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1414_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1511
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1511_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1511 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1511_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1511
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1511_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1511 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1511_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1512
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1512_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1512 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1512_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1512
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1512_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1512 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1512_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1611
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1611_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1611 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1611_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1611
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1611_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1611 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1611_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType1612
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1612_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1612 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1612_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType1612
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType1612_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType1612 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType1612_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2000
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2000_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2000 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2000_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2000
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2000_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2000 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2000_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2111
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2111_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2111 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2111_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2111
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2111_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2111 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2111_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2112
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2112_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2112 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2112_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2112
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2112_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2112 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2112_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2113
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2113_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2113 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2113_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2113
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2113_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2113 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2113_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2114
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2114_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2114 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2114_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2114
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2114_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2114 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2114_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2213
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2213_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2213 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2213_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2213
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2213_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2213 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2213_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2214
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2214_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2214 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2214_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2214
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2214_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2214 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2214_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2313
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2313_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2313 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2313_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2313
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2313_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2313 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2313_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2314
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2314_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2314 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2314_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2314
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2314_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2314 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2314_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2411
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2411_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2411 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2411_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2411
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2411_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2411 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2411_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2412
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2412_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2412 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2412_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2412
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2412_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2412 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2412_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2413
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2413_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2413 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2413_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2413
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2413_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2413 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2413_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2414
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2414_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2414 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2414_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2414
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2414_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2414 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2414_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2511
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2511_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2511 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2511_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2511
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2511_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2511 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2511_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2512
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2512_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2512 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2512_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2512
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2512_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2512 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2512_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2611
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2611_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2611 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2611_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2611
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2611_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2611 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2611_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType2612
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2612_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2612 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2612_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType2612
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType2612_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType2612 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType2612_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType3000
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType3000_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType3000 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType3000_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType3000
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType3000_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType3000 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType3000_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType3118
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType3118_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType3118 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType3118_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType3118
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType3118_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType3118 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType3118_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType3119
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType3119_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType3119 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType3119_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType3119
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType3119_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType3119 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType3119_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType3518
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType3518_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType3518 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType3518_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType3518
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType3518_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType3518 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType3518_Race
GO
ALTER TABLE dbo.AnalysisStep01BasicType3519
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType3519_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType3519 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType3519_Horse
GO
ALTER TABLE dbo.AnalysisStep01BasicType3519
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01BasicType3519_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01BasicType3519 NOCHECK CONSTRAINT FK_AnalysisStep01BasicType3519_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type11
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type11_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type11 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type11_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type11
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type11_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type11 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type11_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type12
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type12_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type12 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type12_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type12
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type12_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type12 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type12_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type13
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type13_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type13 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type13_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type13
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type13_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type13 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type13_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type14
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type14_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type14 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type14_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type14
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type14_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type14 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type14_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type15
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type15_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type15 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type15_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type15
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type15_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type15 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type15_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type16
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type16_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type16 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type16_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type16
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type16_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type16 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type16_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type21
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type21_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type21 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type21_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type21
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type21_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type21 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type21_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type22
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type22_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type22 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type22_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type22
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type22_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type22 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type22_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type23
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type23_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type23 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type23_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type23
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type23_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type23 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type23_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type24
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type24_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type24 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type24_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type24
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type24_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type24 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type24_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type25
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type25_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type25 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type25_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type25
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type25_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type25 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type25_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type2512
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type2512_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type2512 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type2512_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type26
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type26_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type26 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type26_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type26
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type26_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type26 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type26_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type31
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type31_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type31 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type31_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type31
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type31_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type31 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type31_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type35
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type35_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type35 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type35_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type35
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen01Type35_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen01Type35 NOCHECK CONSTRAINT FK_AnalysisStep01Gen01Type35_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type11
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type11_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type11 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type11_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type11
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type11_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type11 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type11_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type12
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type12_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type12 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type12_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type12
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type12_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type12 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type12_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type13
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type13_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type13 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type13_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type13
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type13_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type13 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type13_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type14
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type14_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type14 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type14_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type14
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type14_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type14 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type14_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type15
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type15_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type15 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type15_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type15
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type15_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type15 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type15_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type16
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type16_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type16 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type16_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type16
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type16_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type16 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type16_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type21
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type21_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type21 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type21_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type21
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type21_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type21 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type21_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type22
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type22_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type22 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type22_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type22
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type22_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type22 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type22_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type23
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type23_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type23 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type23_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type23
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type23_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type23 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type23_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type24
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type24_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type24 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type24_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type24
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type24_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type24 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type24_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type25
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type25_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type25 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type25_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type25
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type25_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type25 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type25_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type2512
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type2512_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type2512 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type2512_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type26
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type26_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type26 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type26_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type26
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type26_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type26 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type26_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type31
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type31_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type31 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type31_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type31
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type31_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type31 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type31_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type35
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type35_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type35 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type35_Race
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type35
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01Gen02Type35_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01Gen02Type35 NOCHECK CONSTRAINT FK_AnalysisStep01Gen02Type35_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType11
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType11_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType11 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType11_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType11
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType11_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType11 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType11_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType12
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType12_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType12 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType12_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType12
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType12_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType12 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType12_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType13
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType13_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType13 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType13_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType13
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType13_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType13 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType13_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType14
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType14_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType14 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType14_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType14
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType14_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType14 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType14_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType15
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType15_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType15 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType15_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType15
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType15_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType15 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType15_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType16
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType16_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType16 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType16_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType16
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType16_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType16 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType16_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType21
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType21_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType21 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType21_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType21
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType21_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType21 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType21_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType22
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType22_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType22 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType22_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType22
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType22_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType22 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType22_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType23
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType23_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType23 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType23_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType23
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType23_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType23 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType23_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType24
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType24_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType24 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType24_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType24
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType24_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType24 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType24_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType25
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType25_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType25 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType25_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType25
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType25_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType25 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType25_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType2512
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType2512_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType2512 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType2512_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType26
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType26_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType26 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType26_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType26
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType26_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType26 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType26_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType31
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType31_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType31 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType31_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType31
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType31_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType31 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType31_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01JockeyType35
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType35_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType35 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType35_Race
GO
ALTER TABLE dbo.AnalysisStep01JockeyType35
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01JockeyType35_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep01JockeyType35 NOCHECK CONSTRAINT FK_AnalysisStep01JockeyType35_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep01PrepType0000
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01PrepType0000_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01PrepType0000 NOCHECK CONSTRAINT FK_AnalysisStep01PrepType0000_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType11
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01PrevRaceHorseType11_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType11 NOCHECK CONSTRAINT FK_AnalysisStep01PrevRaceHorseType11_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType12
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01PrevRaceHorseType12_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType12 NOCHECK CONSTRAINT FK_AnalysisStep01PrevRaceHorseType12_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType13
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01PrevRaceHorseType13_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType13 NOCHECK CONSTRAINT FK_AnalysisStep01PrevRaceHorseType13_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType14
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01PrevRaceHorseType14_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType14 NOCHECK CONSTRAINT FK_AnalysisStep01PrevRaceHorseType14_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType15
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01PrevRaceHorseType15_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType15 NOCHECK CONSTRAINT FK_AnalysisStep01PrevRaceHorseType15_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType16
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01PrevRaceHorseType16_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType16 NOCHECK CONSTRAINT FK_AnalysisStep01PrevRaceHorseType16_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType21
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01PrevRaceHorseType21_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType21 NOCHECK CONSTRAINT FK_AnalysisStep01PrevRaceHorseType21_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType22
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01PrevRaceHorseType22_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType22 NOCHECK CONSTRAINT FK_AnalysisStep01PrevRaceHorseType22_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType23
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01PrevRaceHorseType23_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType23 NOCHECK CONSTRAINT FK_AnalysisStep01PrevRaceHorseType23_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType24
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01PrevRaceHorseType24_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType24 NOCHECK CONSTRAINT FK_AnalysisStep01PrevRaceHorseType24_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType25
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01PrevRaceHorseType25_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType25 NOCHECK CONSTRAINT FK_AnalysisStep01PrevRaceHorseType25_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType26
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01PrevRaceHorseType26_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType26 NOCHECK CONSTRAINT FK_AnalysisStep01PrevRaceHorseType26_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType31
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01PrevRaceHorseType31_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType31 NOCHECK CONSTRAINT FK_AnalysisStep01PrevRaceHorseType31_Race
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType35
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep01PrevRaceHorseType35_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep01PrevRaceHorseType35 NOCHECK CONSTRAINT FK_AnalysisStep01PrevRaceHorseType35_Race
GO
ALTER TABLE dbo.AnalysisStep02Basic
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep02Basic_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep02Basic NOCHECK CONSTRAINT FK_AnalysisStep02Basic_Horse
GO
ALTER TABLE dbo.AnalysisStep02Basic
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep02Basic_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep02Basic NOCHECK CONSTRAINT FK_AnalysisStep02Basic_Race
GO
ALTER TABLE dbo.AnalysisStep02Gen01
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep02Gen01_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep02Gen01 NOCHECK CONSTRAINT FK_AnalysisStep02Gen01_Race
GO
ALTER TABLE dbo.AnalysisStep02Gen01
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep02Gen01_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep02Gen01 NOCHECK CONSTRAINT FK_AnalysisStep02Gen01_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep02Gen02
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep02Gen02_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep02Gen02 NOCHECK CONSTRAINT FK_AnalysisStep02Gen02_Race
GO
ALTER TABLE dbo.AnalysisStep02Gen02
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep02Gen02_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep02Gen02 NOCHECK CONSTRAINT FK_AnalysisStep02Gen02_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep02Jockey
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep02Jockey_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep02Jockey NOCHECK CONSTRAINT FK_AnalysisStep02Jockey_Race
GO
ALTER TABLE dbo.AnalysisStep02Jockey
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep02Jockey_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep02Jockey NOCHECK CONSTRAINT FK_AnalysisStep02Jockey_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep02PrevRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep02PrevRaceHorse_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep02PrevRaceHorse NOCHECK CONSTRAINT FK_AnalysisStep02PrevRaceHorse_Race
GO
ALTER TABLE dbo.AnalysisStep02PrevRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep02PrevRaceHorse_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep02PrevRaceHorse NOCHECK CONSTRAINT FK_AnalysisStep02PrevRaceHorse_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep03Basic
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep03Basic_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep03Basic NOCHECK CONSTRAINT FK_AnalysisStep03Basic_Horse
GO
ALTER TABLE dbo.AnalysisStep03Basic
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep03Basic_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep03Basic NOCHECK CONSTRAINT FK_AnalysisStep03Basic_Race
GO
ALTER TABLE dbo.AnalysisStep03Gen01
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep03Gen01_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep03Gen01 NOCHECK CONSTRAINT FK_AnalysisStep03Gen01_Race
GO
ALTER TABLE dbo.AnalysisStep03Gen01
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep03Gen01_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep03Gen01 NOCHECK CONSTRAINT FK_AnalysisStep03Gen01_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep03Gen02
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep03Gen02_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep03Gen02 NOCHECK CONSTRAINT FK_AnalysisStep03Gen02_Race
GO
ALTER TABLE dbo.AnalysisStep03Gen02
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep03Gen02_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep03Gen02 NOCHECK CONSTRAINT FK_AnalysisStep03Gen02_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep03Jockey
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep03Jockey_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep03Jockey NOCHECK CONSTRAINT FK_AnalysisStep03Jockey_Race
GO
ALTER TABLE dbo.AnalysisStep03Jockey
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep03Jockey_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep03Jockey NOCHECK CONSTRAINT FK_AnalysisStep03Jockey_RaceHorse
GO
ALTER TABLE dbo.AnalysisStep03PrevRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep03PrevRaceHorse_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.AnalysisStep03PrevRaceHorse NOCHECK CONSTRAINT FK_AnalysisStep03PrevRaceHorse_Race
GO
ALTER TABLE dbo.AnalysisStep03PrevRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_AnalysisStep03PrevRaceHorse_RaceHorse FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorse(
        RaceId,
        HorseId)
GO
ALTER TABLE dbo.AnalysisStep03PrevRaceHorse NOCHECK CONSTRAINT FK_AnalysisStep03PrevRaceHorse_RaceHorse
GO
ALTER TABLE dbo.Banusi
WITH NOCHECK
ADD CONSTRAINT FK_Banusi_Silk FOREIGN KEY(SilkId) REFERENCES dbo.Silk(
        SilkId)
GO
ALTER TABLE dbo.Banusi NOCHECK CONSTRAINT FK_Banusi_Silk
GO
ALTER TABLE dbo.BaseStatsBanusiByRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_BaseStatsBanusiByRaceHorse_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.BaseStatsBanusiByRaceHorse NOCHECK CONSTRAINT FK_BaseStatsBanusiByRaceHorse_Horse
GO
ALTER TABLE dbo.BaseStatsBanusiByRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_BaseStatsBanusiByRaceHorse_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.BaseStatsBanusiByRaceHorse NOCHECK CONSTRAINT FK_BaseStatsBanusiByRaceHorse_Race
GO
ALTER TABLE dbo.BaseStatsGen01HansyokuByRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_BaseStatsGen01HansyokuByRaceHorse_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.BaseStatsGen01HansyokuByRaceHorse NOCHECK CONSTRAINT FK_BaseStatsGen01HansyokuByRaceHorse_Horse
GO
ALTER TABLE dbo.BaseStatsGen01HansyokuByRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_BaseStatsGen01HansyokuByRaceHorse_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.BaseStatsGen01HansyokuByRaceHorse NOCHECK CONSTRAINT FK_BaseStatsGen01HansyokuByRaceHorse_Race
GO
ALTER TABLE dbo.BaseStatsGen02HansyokuByRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_BaseStatsGen02HansyokuByRaceHorse_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.BaseStatsGen02HansyokuByRaceHorse NOCHECK CONSTRAINT FK_BaseStatsGen02HansyokuByRaceHorse_Horse
GO
ALTER TABLE dbo.BaseStatsGen02HansyokuByRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_BaseStatsGen02HansyokuByRaceHorse_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.BaseStatsGen02HansyokuByRaceHorse NOCHECK CONSTRAINT FK_BaseStatsGen02HansyokuByRaceHorse_Race
GO
ALTER TABLE dbo.BaseStatsGen05HansyokuByRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_BaseStatsGen05HansyokuByRaceHorse_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.BaseStatsGen05HansyokuByRaceHorse NOCHECK CONSTRAINT FK_BaseStatsGen05HansyokuByRaceHorse_Horse
GO
ALTER TABLE dbo.BaseStatsGen05HansyokuByRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_BaseStatsGen05HansyokuByRaceHorse_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.BaseStatsGen05HansyokuByRaceHorse NOCHECK CONSTRAINT FK_BaseStatsGen05HansyokuByRaceHorse_Race
GO
ALTER TABLE dbo.BaseStatsJockeyByRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_BaseStatsJockeyByRaceHorse_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.BaseStatsJockeyByRaceHorse NOCHECK CONSTRAINT FK_BaseStatsJockeyByRaceHorse_Horse
GO
ALTER TABLE dbo.BaseStatsJockeyByRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_BaseStatsJockeyByRaceHorse_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.BaseStatsJockeyByRaceHorse NOCHECK CONSTRAINT FK_BaseStatsJockeyByRaceHorse_Race
GO
ALTER TABLE dbo.BaseStatsTrainerByRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_BaseStatsTrainerByRaceHorse_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.BaseStatsTrainerByRaceHorse NOCHECK CONSTRAINT FK_BaseStatsTrainerByRaceHorse_Horse
GO
ALTER TABLE dbo.BaseStatsTrainerByRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_BaseStatsTrainerByRaceHorse_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.BaseStatsTrainerByRaceHorse NOCHECK CONSTRAINT FK_BaseStatsTrainerByRaceHorse_Race
GO
ALTER TABLE dbo.BayesianTrial01
WITH NOCHECK
ADD CONSTRAINT FK_AnalyzeBayesian01Trial_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.BayesianTrial01 NOCHECK CONSTRAINT FK_AnalyzeBayesian01Trial_Horse
GO
ALTER TABLE dbo.BayesianTrial01
WITH NOCHECK
ADD CONSTRAINT FK_AnalyzeBayesian01Trial_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.BayesianTrial01 NOCHECK CONSTRAINT FK_AnalyzeBayesian01Trial_Race
GO
ALTER TABLE dbo.Bet1
WITH NOCHECK
ADD CONSTRAINT FK_Bet1_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.Bet1 NOCHECK CONSTRAINT FK_Bet1_MasterPlace
GO
ALTER TABLE dbo.Bet1
WITH NOCHECK
ADD CONSTRAINT FK_Bet1_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.Bet1 NOCHECK CONSTRAINT FK_Bet1_Race
GO
ALTER TABLE dbo.Bet1ByBracket
WITH CHECK
ADD CONSTRAINT FK_Bet1ByBracket_Bet1 FOREIGN KEY(RaceId) REFERENCES dbo.Bet1(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.Bet1ByBracket CHECK CONSTRAINT FK_Bet1ByBracket_Bet1
GO
ALTER TABLE dbo.Bet1ByBracket
WITH NOCHECK
ADD CONSTRAINT FK_Bet1ByBracket_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.Bet1ByBracket NOCHECK CONSTRAINT FK_Bet1ByBracket_Race
GO
ALTER TABLE dbo.Bet1ByExacta
WITH CHECK
ADD CONSTRAINT FK_Bet1ByExacta_Bet1 FOREIGN KEY(RaceId) REFERENCES dbo.Bet1(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.Bet1ByExacta CHECK CONSTRAINT FK_Bet1ByExacta_Bet1
GO
ALTER TABLE dbo.Bet1ByExacta
WITH NOCHECK
ADD CONSTRAINT FK_Bet1ByExacta_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.Bet1ByExacta NOCHECK CONSTRAINT FK_Bet1ByExacta_Race
GO
ALTER TABLE dbo.Bet1ByPlace
WITH CHECK
ADD CONSTRAINT FK_Bet1ByPlace_Bet1 FOREIGN KEY(RaceId) REFERENCES dbo.Bet1(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.Bet1ByPlace CHECK CONSTRAINT FK_Bet1ByPlace_Bet1
GO
ALTER TABLE dbo.Bet1ByPlace
WITH NOCHECK
ADD CONSTRAINT FK_Bet1ByPlace_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.Bet1ByPlace NOCHECK CONSTRAINT FK_Bet1ByPlace_Race
GO
ALTER TABLE dbo.Bet1ByQuinella
WITH CHECK
ADD CONSTRAINT FK_Bet1ByQuinella_Bet1 FOREIGN KEY(RaceId) REFERENCES dbo.Bet1(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.Bet1ByQuinella CHECK CONSTRAINT FK_Bet1ByQuinella_Bet1
GO
ALTER TABLE dbo.Bet1ByQuinella
WITH NOCHECK
ADD CONSTRAINT FK_Bet1ByQuinella_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.Bet1ByQuinella NOCHECK CONSTRAINT FK_Bet1ByQuinella_Race
GO
ALTER TABLE dbo.Bet1ByTrio
WITH CHECK
ADD CONSTRAINT FK_Bet1ByTrio_Bet1 FOREIGN KEY(RaceId) REFERENCES dbo.Bet1(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.Bet1ByTrio CHECK CONSTRAINT FK_Bet1ByTrio_Bet1
GO
ALTER TABLE dbo.Bet1ByTrio
WITH NOCHECK
ADD CONSTRAINT FK_Bet1ByTrio_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.Bet1ByTrio NOCHECK CONSTRAINT FK_Bet1ByTrio_Race
GO
ALTER TABLE dbo.Bet1ByWide
WITH CHECK
ADD CONSTRAINT FK_Bet1ByWide_Bet1 FOREIGN KEY(RaceId) REFERENCES dbo.Bet1(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.Bet1ByWide CHECK CONSTRAINT FK_Bet1ByWide_Bet1
GO
ALTER TABLE dbo.Bet1ByWide
WITH NOCHECK
ADD CONSTRAINT FK_Bet1ByWide_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.Bet1ByWide NOCHECK CONSTRAINT FK_Bet1ByWide_Race
GO
ALTER TABLE dbo.Bet1ByWin
WITH CHECK
ADD CONSTRAINT FK_Bet1ByWin_Bet1 FOREIGN KEY(RaceId) REFERENCES dbo.Bet1(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.Bet1ByWin CHECK CONSTRAINT FK_Bet1ByWin_Bet1
GO
ALTER TABLE dbo.Bet1ByWin
WITH NOCHECK
ADD CONSTRAINT FK_Bet1ByWin_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.Bet1ByWin NOCHECK CONSTRAINT FK_Bet1ByWin_Race
GO
ALTER TABLE dbo.Bet6
WITH NOCHECK
ADD CONSTRAINT FK_Bet6_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.Bet6 NOCHECK CONSTRAINT FK_Bet6_MasterPlace
GO
ALTER TABLE dbo.Bet6
WITH NOCHECK
ADD CONSTRAINT FK_Bet6_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.Bet6 NOCHECK CONSTRAINT FK_Bet6_Race
GO
ALTER TABLE dbo.Bet6ByHenkanUma
WITH CHECK
ADD CONSTRAINT FK_Bet6ByHenkanUma_Bet6 FOREIGN KEY(RaceId) REFERENCES dbo.Bet6(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.Bet6ByHenkanUma CHECK CONSTRAINT FK_Bet6ByHenkanUma_Bet6
GO
ALTER TABLE dbo.Bet6ByHenkanUma
WITH NOCHECK
ADD CONSTRAINT FK_Bet6ByHenkanUma_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.Bet6ByHenkanUma NOCHECK CONSTRAINT FK_Bet6ByHenkanUma_Race
GO
ALTER TABLE dbo.Bet6ByTrifecta
WITH CHECK
ADD CONSTRAINT FK_Bet6ByTrifecta_Bet6 FOREIGN KEY(RaceId) REFERENCES dbo.Bet6(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.Bet6ByTrifecta CHECK CONSTRAINT FK_Bet6ByTrifecta_Bet6
GO
ALTER TABLE dbo.Bet6ByTrifecta
WITH NOCHECK
ADD CONSTRAINT FK_Bet6ByTrifecta_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.Bet6ByTrifecta NOCHECK CONSTRAINT FK_Bet6ByTrifecta_Race
GO
ALTER TABLE dbo.BetHistoryDetail
WITH NOCHECK
ADD CONSTRAINT FK_BetHistoryDetail_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.BetHistoryDetail NOCHECK CONSTRAINT FK_BetHistoryDetail_MasterBetType
GO
ALTER TABLE dbo.BetHistoryDetail
WITH NOCHECK
ADD CONSTRAINT FK_BetHistoryDetail_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.BetHistoryDetail NOCHECK CONSTRAINT FK_BetHistoryDetail_MasterPlace
GO
ALTER TABLE dbo.BetHistoryDetail
WITH NOCHECK
ADD CONSTRAINT FK_BetHistoryDetail_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.BetHistoryDetail NOCHECK CONSTRAINT FK_BetHistoryDetail_Race
GO
ALTER TABLE dbo.BetHistoryMaster
WITH NOCHECK
ADD CONSTRAINT FK_BetHistoryMaster_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.BetHistoryMaster NOCHECK CONSTRAINT FK_BetHistoryMaster_MasterPlace
GO
ALTER TABLE dbo.BetHistoryMaster
WITH NOCHECK
ADD CONSTRAINT FK_BetHistoryMaster_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.BetHistoryMaster NOCHECK CONSTRAINT FK_BetHistoryMaster_Race
GO
ALTER TABLE dbo.BetMgmtByBet
WITH NOCHECK
ADD CONSTRAINT FK_BetMgmtByBet_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.BetMgmtByBet NOCHECK CONSTRAINT FK_BetMgmtByBet_MasterBetType
GO
ALTER TABLE dbo.BetMgmtByBet
WITH NOCHECK
ADD CONSTRAINT FK_BetMgmtByBet_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.BetMgmtByBet NOCHECK CONSTRAINT FK_BetMgmtByBet_MasterPlace
GO
ALTER TABLE dbo.BetMgmtByBet
WITH NOCHECK
ADD CONSTRAINT FK_BetMgmtByBet_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.BetMgmtByBet NOCHECK CONSTRAINT FK_BetMgmtByBet_Race
GO
ALTER TABLE dbo.BetMgmtBySim
WITH NOCHECK
ADD CONSTRAINT FK_BetMgmtBySim_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.BetMgmtBySim NOCHECK CONSTRAINT FK_BetMgmtBySim_MasterBetType
GO
ALTER TABLE dbo.BetMgmtBySim
WITH NOCHECK
ADD CONSTRAINT FK_BetMgmtBySim_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.BetMgmtBySim NOCHECK CONSTRAINT FK_BetMgmtBySim_MasterPlace
GO
ALTER TABLE dbo.BetMgmtBySim
WITH NOCHECK
ADD CONSTRAINT FK_BetMgmtBySim_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.BetMgmtBySim NOCHECK CONSTRAINT FK_BetMgmtBySim_Race
GO
ALTER TABLE dbo.BetMgmtByTemp
WITH NOCHECK
ADD CONSTRAINT FK_BetMgmtByTemp_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.BetMgmtByTemp NOCHECK CONSTRAINT FK_BetMgmtByTemp_MasterBetType
GO
ALTER TABLE dbo.BetMgmtByTemp
WITH NOCHECK
ADD CONSTRAINT FK_BetMgmtByTemp_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.BetMgmtByTemp NOCHECK CONSTRAINT FK_BetMgmtByTemp_MasterPlace
GO
ALTER TABLE dbo.BetMgmtByTemp
WITH NOCHECK
ADD CONSTRAINT FK_BetMgmtByTemp_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.BetMgmtByTemp NOCHECK CONSTRAINT FK_BetMgmtByTemp_Race
GO
ALTER TABLE dbo.BetMgmtHistory
WITH NOCHECK
ADD CONSTRAINT FK_BetMgmtHistory_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.BetMgmtHistory NOCHECK CONSTRAINT FK_BetMgmtHistory_MasterBetType
GO
ALTER TABLE dbo.BetMgmtHistory
WITH NOCHECK
ADD CONSTRAINT FK_BetMgmtHistory_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.BetMgmtHistory NOCHECK CONSTRAINT FK_BetMgmtHistory_MasterPlace
GO
ALTER TABLE dbo.BetMgmtHistory
WITH NOCHECK
ADD CONSTRAINT FK_BetMgmtHistory_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.BetMgmtHistory NOCHECK CONSTRAINT FK_BetMgmtHistory_Race
GO
ALTER TABLE dbo.ConfigBetCount
WITH NOCHECK
ADD CONSTRAINT FK_ConfigBetCount_Master2Class FOREIGN KEY(ClassId) REFERENCES dbo.Master2Class(
        ClassId)
GO
ALTER TABLE dbo.ConfigBetCount NOCHECK CONSTRAINT FK_ConfigBetCount_Master2Class
GO
ALTER TABLE dbo.ConfigBetCount
WITH NOCHECK
ADD CONSTRAINT FK_ConfigBetCount_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.ConfigBetCount NOCHECK CONSTRAINT FK_ConfigBetCount_MasterBetType
GO
ALTER TABLE dbo.ConfigBetCountWinFive
WITH NOCHECK
ADD CONSTRAINT FK_ConfigBetCountWinFive_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.ConfigBetCountWinFive NOCHECK CONSTRAINT FK_ConfigBetCountWinFive_MasterBetType
GO
ALTER TABLE dbo.ConfigBetMoney
WITH NOCHECK
ADD CONSTRAINT FK_ConfigBetMoney_Master2Class FOREIGN KEY(ClassId) REFERENCES dbo.Master2Class(
        ClassId)
GO
ALTER TABLE dbo.ConfigBetMoney NOCHECK CONSTRAINT FK_ConfigBetMoney_Master2Class
GO
ALTER TABLE dbo.ConfigBetMoney
WITH NOCHECK
ADD CONSTRAINT FK_ConfigBetMoney_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.ConfigBetMoney NOCHECK CONSTRAINT FK_ConfigBetMoney_MasterBetType
GO
ALTER TABLE dbo.ConfigDataSpecRecKubun
WITH NOCHECK
ADD CONSTRAINT FK_ConfigDataSpecRecKubun_MasterDataSpec FOREIGN KEY(DataSpecId) REFERENCES dbo.MasterDataSpec(
        DataSpecId)
GO
ALTER TABLE dbo.ConfigDataSpecRecKubun NOCHECK CONSTRAINT FK_ConfigDataSpecRecKubun_MasterDataSpec
GO
ALTER TABLE dbo.ConfigLastTimestamp
WITH NOCHECK
ADD CONSTRAINT FK_ConfigLastTimestamp_MasterDataSpec FOREIGN KEY(DataSpec) REFERENCES dbo.MasterDataSpec(
        DataSpecId)
GO
ALTER TABLE dbo.ConfigLastTimestamp NOCHECK CONSTRAINT FK_ConfigLastTimestamp_MasterDataSpec
GO
ALTER TABLE dbo.CourseInfo
WITH NOCHECK
ADD CONSTRAINT FK_CourseInfo_MasterJyo FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.CourseInfo NOCHECK CONSTRAINT FK_CourseInfo_MasterJyo
GO
ALTER TABLE dbo.CourseInfo
WITH NOCHECK
ADD CONSTRAINT FK_CourseInfo_MasterTrack FOREIGN KEY(TrackId) REFERENCES dbo.MasterTrack(
        TrackId)
GO
ALTER TABLE dbo.CourseInfo NOCHECK CONSTRAINT FK_CourseInfo_MasterTrack
GO
ALTER TABLE dbo.DataMining
WITH NOCHECK
ADD CONSTRAINT FK_DataMining_HorseNum FOREIGN KEY(HorseNum) REFERENCES dbo.MasterHorseNum(
        HorseNum)
GO
ALTER TABLE dbo.DataMining NOCHECK CONSTRAINT FK_DataMining_HorseNum
GO
ALTER TABLE dbo.DataMining
WITH NOCHECK
ADD CONSTRAINT FK_DataMining_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.DataMining NOCHECK CONSTRAINT FK_DataMining_MasterPlace
GO
ALTER TABLE dbo.DataMining
WITH NOCHECK
ADD CONSTRAINT FK_DataMining_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.DataMining NOCHECK CONSTRAINT FK_DataMining_Race
GO
ALTER TABLE dbo.DataMiningTaisen
WITH NOCHECK
ADD CONSTRAINT FK_DataMiningTaisen_HorseNum FOREIGN KEY(HorseNum) REFERENCES dbo.MasterHorseNum(
        HorseNum)
GO
ALTER TABLE dbo.DataMiningTaisen NOCHECK CONSTRAINT FK_DataMiningTaisen_HorseNum
GO
ALTER TABLE dbo.DataMiningTaisen
WITH NOCHECK
ADD CONSTRAINT FK_DataMiningTaisen_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.DataMiningTaisen NOCHECK CONSTRAINT FK_DataMiningTaisen_MasterPlace
GO
ALTER TABLE dbo.DataMiningTaisen
WITH NOCHECK
ADD CONSTRAINT FK_DataMiningTaisen_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.DataMiningTaisen NOCHECK CONSTRAINT FK_DataMiningTaisen_Race
GO
ALTER TABLE dbo.EventAvoid
WITH NOCHECK
ADD CONSTRAINT FK_EventAvoid_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.EventAvoid NOCHECK CONSTRAINT FK_EventAvoid_MasterPlace
GO
ALTER TABLE dbo.EventAvoid
WITH NOCHECK
ADD CONSTRAINT FK_EventAvoid_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.EventAvoid NOCHECK CONSTRAINT FK_EventAvoid_Race
GO
ALTER TABLE dbo.EventCourseChange
WITH NOCHECK
ADD CONSTRAINT FK_EventCourseChange_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.EventCourseChange NOCHECK CONSTRAINT FK_EventCourseChange_MasterPlace
GO
ALTER TABLE dbo.EventCourseChange
WITH NOCHECK
ADD CONSTRAINT FK_EventCourseChange_MasterTrack_Ato FOREIGN KEY(TrackId) REFERENCES dbo.MasterTrack(
        TrackId)
GO
ALTER TABLE dbo.EventCourseChange NOCHECK CONSTRAINT FK_EventCourseChange_MasterTrack_Ato
GO
ALTER TABLE dbo.EventCourseChange
WITH NOCHECK
ADD CONSTRAINT FK_EventCourseChange_MasterTrack_Mae FOREIGN KEY(TrackIdBefore) REFERENCES dbo.MasterTrack(
        TrackId)
GO
ALTER TABLE dbo.EventCourseChange NOCHECK CONSTRAINT FK_EventCourseChange_MasterTrack_Mae
GO
ALTER TABLE dbo.EventHorseWeight
WITH NOCHECK
ADD CONSTRAINT FK_EventHorseWeight_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.EventHorseWeight NOCHECK CONSTRAINT FK_EventHorseWeight_MasterPlace
GO
ALTER TABLE dbo.EventHorseWeight
WITH NOCHECK
ADD CONSTRAINT FK_EventHorseWeight_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.EventHorseWeight NOCHECK CONSTRAINT FK_EventHorseWeight_Race
GO
ALTER TABLE dbo.EventJockeyChange
WITH NOCHECK
ADD CONSTRAINT FK_EventJockeyChange_Jockey_Ato FOREIGN KEY(JockeyId) REFERENCES dbo.Jockey(
        JockeyId)
GO
ALTER TABLE dbo.EventJockeyChange NOCHECK CONSTRAINT FK_EventJockeyChange_Jockey_Ato
GO
ALTER TABLE dbo.EventJockeyChange
WITH NOCHECK
ADD CONSTRAINT FK_EventJockeyChange_Jockey_Mae FOREIGN KEY(JockeyIdBefore) REFERENCES dbo.Jockey(
        JockeyId)
GO
ALTER TABLE dbo.EventJockeyChange NOCHECK CONSTRAINT FK_EventJockeyChange_Jockey_Mae
GO
ALTER TABLE dbo.EventJockeyChange
WITH NOCHECK
ADD CONSTRAINT FK_EventJockeyChange_MasterMinarai FOREIGN KEY(MinaraiId) REFERENCES dbo.MasterMinarai(
        MinaraiId)
GO
ALTER TABLE dbo.EventJockeyChange NOCHECK CONSTRAINT FK_EventJockeyChange_MasterMinarai
GO
ALTER TABLE dbo.EventJockeyChange
WITH NOCHECK
ADD CONSTRAINT FK_EventJockeyChange_MasterMinaraiBefore FOREIGN KEY(MinaraiIdBefore) REFERENCES dbo.MasterMinarai(
        MinaraiId)
GO
ALTER TABLE dbo.EventJockeyChange NOCHECK CONSTRAINT FK_EventJockeyChange_MasterMinaraiBefore
GO
ALTER TABLE dbo.EventJockeyChange
WITH NOCHECK
ADD CONSTRAINT FK_EventJockeyChange_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.EventJockeyChange NOCHECK CONSTRAINT FK_EventJockeyChange_MasterPlace
GO
ALTER TABLE dbo.EventJockeyChange
WITH NOCHECK
ADD CONSTRAINT FK_EventJockeyChange_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.EventJockeyChange NOCHECK CONSTRAINT FK_EventJockeyChange_Race
GO
ALTER TABLE dbo.EventQueue
WITH NOCHECK
ADD CONSTRAINT FK_EventQueue_MasterOpenModeDataSpec FOREIGN KEY(OpenMode,OpenDataSpecId) REFERENCES dbo.MasterOpenModeDataSpec(
        OpenMode,
        OpenDataSpecId)
GO
ALTER TABLE dbo.EventQueue NOCHECK CONSTRAINT FK_EventQueue_MasterOpenModeDataSpec
GO
ALTER TABLE dbo.EventQueue
WITH NOCHECK
ADD CONSTRAINT FK_EventQueue_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.EventQueue NOCHECK CONSTRAINT FK_EventQueue_Race
GO
ALTER TABLE dbo.EventTimeChange
WITH NOCHECK
ADD CONSTRAINT FK_EventTimeChange_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.EventTimeChange NOCHECK CONSTRAINT FK_EventTimeChange_MasterPlace
GO
ALTER TABLE dbo.EventTimeChange
WITH NOCHECK
ADD CONSTRAINT FK_EventTimeChange_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.EventTimeChange NOCHECK CONSTRAINT FK_EventTimeChange_Race
GO
ALTER TABLE dbo.EventWeather
WITH NOCHECK
ADD CONSTRAINT FK_EventWeather_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.EventWeather NOCHECK CONSTRAINT FK_EventWeather_MasterPlace
GO
ALTER TABLE dbo.EventWeather
WITH NOCHECK
ADD CONSTRAINT FK_EventWeather_MasterTenko_Ato FOREIGN KEY(TenkoId) REFERENCES dbo.MasterTenko(
        TenkoId)
GO
ALTER TABLE dbo.EventWeather NOCHECK CONSTRAINT FK_EventWeather_MasterTenko_Ato
GO
ALTER TABLE dbo.EventWeather
WITH NOCHECK
ADD CONSTRAINT FK_EventWeather_MasterTenko_Mae FOREIGN KEY(TenkoIdBefore) REFERENCES dbo.MasterTenko(
        TenkoId)
GO
ALTER TABLE dbo.EventWeather NOCHECK CONSTRAINT FK_EventWeather_MasterTenko_Mae
GO
ALTER TABLE dbo.Hansyoku
WITH NOCHECK
ADD CONSTRAINT FK_Hansyoku_HansyokuFemaleID FOREIGN KEY(FemaleHansyokuId) REFERENCES dbo.Hansyoku(
        HansyokuId)
GO
ALTER TABLE dbo.Hansyoku NOCHECK CONSTRAINT FK_Hansyoku_HansyokuFemaleID
GO
ALTER TABLE dbo.Hansyoku
WITH NOCHECK
ADD CONSTRAINT FK_Hansyoku_HansyokuMaleID FOREIGN KEY(MaleHansyokuId) REFERENCES dbo.Hansyoku(
        HansyokuId)
GO
ALTER TABLE dbo.Hansyoku NOCHECK CONSTRAINT FK_Hansyoku_HansyokuMaleID
GO
ALTER TABLE dbo.Hansyoku
WITH NOCHECK
ADD CONSTRAINT FK_Hansyoku_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.Hansyoku NOCHECK CONSTRAINT FK_Hansyoku_Horse
GO
ALTER TABLE dbo.Hansyoku
WITH NOCHECK
ADD CONSTRAINT FK_Hansyoku_MasterHinsyu FOREIGN KEY(HinsyuId) REFERENCES dbo.MasterHinsyu(
        HinsyuId)
GO
ALTER TABLE dbo.Hansyoku NOCHECK CONSTRAINT FK_Hansyoku_MasterHinsyu
GO
ALTER TABLE dbo.Hansyoku
WITH NOCHECK
ADD CONSTRAINT FK_Hansyoku_MasterKeiro FOREIGN KEY(KeiroId) REFERENCES dbo.MasterKeiro(
        KeiroId)
GO
ALTER TABLE dbo.Hansyoku NOCHECK CONSTRAINT FK_Hansyoku_MasterKeiro
GO
ALTER TABLE dbo.Hansyoku
WITH NOCHECK
ADD CONSTRAINT FK_Hansyoku_MasterSex FOREIGN KEY(SexId) REFERENCES dbo.MasterSex(
        SexId)
GO
ALTER TABLE dbo.Hansyoku NOCHECK CONSTRAINT FK_Hansyoku_MasterSex
GO
ALTER TABLE dbo.HansyokuParents
WITH NOCHECK
ADD CONSTRAINT FK_HansyokuParents_Hansyoku FOREIGN KEY(HansyokuId) REFERENCES dbo.Hansyoku(
        HansyokuId)
GO
ALTER TABLE dbo.HansyokuParents NOCHECK CONSTRAINT FK_HansyokuParents_Hansyoku
GO
ALTER TABLE dbo.HansyokuParents
WITH NOCHECK
ADD CONSTRAINT FK_HansyokuParents_HansyokuParents FOREIGN KEY(ParentsHansyokuId) REFERENCES dbo.Hansyoku(
        HansyokuId)
GO
ALTER TABLE dbo.HansyokuParents NOCHECK CONSTRAINT FK_HansyokuParents_HansyokuParents
GO
ALTER TABLE dbo.HansyokuParents
WITH NOCHECK
ADD CONSTRAINT FK_HansyokuParents_MasterSex FOREIGN KEY(SexId) REFERENCES dbo.MasterSex(
        SexId)
GO
ALTER TABLE dbo.HansyokuParents NOCHECK CONSTRAINT FK_HansyokuParents_MasterSex
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_Banusi FOREIGN KEY(BanusiId) REFERENCES dbo.Banusi(
        BanusiId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_Banusi
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_Breeder FOREIGN KEY(BreederId) REFERENCES dbo.Breeder(
        BreederId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_Breeder
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_Hansyoku01 FOREIGN KEY(Gen01HansyokuId) REFERENCES dbo.Hansyoku(
        HansyokuId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_Hansyoku01
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_Hansyoku02 FOREIGN KEY(Gen02HansyokuId) REFERENCES dbo.Hansyoku(
        HansyokuId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_Hansyoku02
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_Hansyoku03 FOREIGN KEY(Gen03HansyokuId) REFERENCES dbo.Hansyoku(
        HansyokuId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_Hansyoku03
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_Hansyoku04 FOREIGN KEY(Gen04HansyokuId) REFERENCES dbo.Hansyoku(
        HansyokuId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_Hansyoku04
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_Hansyoku05 FOREIGN KEY(Gen05HansyokuId) REFERENCES dbo.Hansyoku(
        HansyokuId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_Hansyoku05
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_Hansyoku06 FOREIGN KEY(Gen06HansyokuId) REFERENCES dbo.Hansyoku(
        HansyokuId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_Hansyoku06
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_Hansyoku07 FOREIGN KEY(Gen07HansyokuId) REFERENCES dbo.Hansyoku(
        HansyokuId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_Hansyoku07
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_Hansyoku08 FOREIGN KEY(Gen08HansyokuId) REFERENCES dbo.Hansyoku(
        HansyokuId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_Hansyoku08
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_Hansyoku09 FOREIGN KEY(Gen09HansyokuId) REFERENCES dbo.Hansyoku(
        HansyokuId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_Hansyoku09
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_Hansyoku10 FOREIGN KEY(Gen10HansyokuId) REFERENCES dbo.Hansyoku(
        HansyokuId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_Hansyoku10
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_Hansyoku11 FOREIGN KEY(Gen11HansyokuId) REFERENCES dbo.Hansyoku(
        HansyokuId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_Hansyoku11
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_Hansyoku12 FOREIGN KEY(Gen12HansyokuId) REFERENCES dbo.Hansyoku(
        HansyokuId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_Hansyoku12
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_Hansyoku13 FOREIGN KEY(Gen13HansyokuId) REFERENCES dbo.Hansyoku(
        HansyokuId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_Hansyoku13
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_Hansyoku14 FOREIGN KEY(Gen14HansyokuId) REFERENCES dbo.Hansyoku(
        HansyokuId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_Hansyoku14
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_MasterHinsyu FOREIGN KEY(HinsyuId) REFERENCES dbo.MasterHinsyu(
        HinsyuId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_MasterHinsyu
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_MasterKeiro FOREIGN KEY(KeiroId) REFERENCES dbo.MasterKeiro(
        KeiroId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_MasterKeiro
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_MasterSex FOREIGN KEY(SexId) REFERENCES dbo.MasterSex(
        SexId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_MasterSex
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_MasterTozai FOREIGN KEY(TozaiId) REFERENCES dbo.MasterTozai(
        TozaiId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_MasterTozai
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_MasterUmaKigo FOREIGN KEY(UmaKigoId) REFERENCES dbo.MasterUmaKigo(
        UmaKigoId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_MasterUmaKigo
GO
ALTER TABLE dbo.Horse
WITH NOCHECK
ADD CONSTRAINT FK_Horse_Trainer FOREIGN KEY(TrainerId) REFERENCES dbo.Trainer(
        TrainerId)
GO
ALTER TABLE dbo.Horse NOCHECK CONSTRAINT FK_Horse_Trainer
GO
ALTER TABLE dbo.HorseByCourseType
WITH NOCHECK
ADD CONSTRAINT FK_HorseByCourseType_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.HorseByCourseType CHECK CONSTRAINT FK_HorseByCourseType_Horse
GO
ALTER TABLE dbo.HorseByCourseType
WITH NOCHECK
ADD CONSTRAINT FK_HorseByCourseType_MasterCourseType FOREIGN KEY(CourseTypeId) REFERENCES dbo.MasterCourseType(
        CourseTypeId)
GO
ALTER TABLE dbo.HorseByCourseType NOCHECK CONSTRAINT FK_HorseByCourseType_MasterCourseType
GO
ALTER TABLE dbo.HorseByCourseType
WITH NOCHECK
ADD CONSTRAINT FK_HorseByCourseType_MasterTrackType FOREIGN KEY(TrackTypeId) REFERENCES dbo.MasterTrackType(
        TrackTypeId)
GO
ALTER TABLE dbo.HorseByCourseType NOCHECK CONSTRAINT FK_HorseByCourseType_MasterTrackType
GO
ALTER TABLE dbo.HorseByDistanceType
WITH NOCHECK
ADD CONSTRAINT FK_HorseByDistanceType_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.HorseByDistanceType CHECK CONSTRAINT FK_HorseByDistanceType_Horse
GO
ALTER TABLE dbo.HorseByDistanceType
WITH NOCHECK
ADD CONSTRAINT FK_HorseByDistanceType_MasterDistanceType2 FOREIGN KEY(DistanceType2Id) REFERENCES dbo.MasterDistanceType2(
        DistanceType2Id)
GO
ALTER TABLE dbo.HorseByDistanceType NOCHECK CONSTRAINT FK_HorseByDistanceType_MasterDistanceType2
GO
ALTER TABLE dbo.HorseByDistanceType
WITH NOCHECK
ADD CONSTRAINT FK_HorseByDistanceType_MasterTrackType2 FOREIGN KEY(TrackType2Id) REFERENCES dbo.MasterTrackType2(
        TrackType2Id)
GO
ALTER TABLE dbo.HorseByDistanceType NOCHECK CONSTRAINT FK_HorseByDistanceType_MasterTrackType2
GO
ALTER TABLE dbo.HorseByRunType
WITH NOCHECK
ADD CONSTRAINT FK_HorseByRunType_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.HorseByRunType CHECK CONSTRAINT FK_HorseByRunType_Horse
GO
ALTER TABLE dbo.HorseBySmile
WITH NOCHECK
ADD CONSTRAINT FK_HorseBySmile_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.HorseBySmile CHECK CONSTRAINT FK_HorseBySmile_Horse
GO
ALTER TABLE dbo.HorseBySmile
WITH NOCHECK
ADD CONSTRAINT FK_HorseBySmile_MasterSmile FOREIGN KEY(SmileId) REFERENCES dbo.MasterSmile(
        SmileId)
GO
ALTER TABLE dbo.HorseBySmile NOCHECK CONSTRAINT FK_HorseBySmile_MasterSmile
GO
ALTER TABLE dbo.HorseBySmile
WITH NOCHECK
ADD CONSTRAINT FK_HorseBySmile_MasterTrackType FOREIGN KEY(TrackTypeId) REFERENCES dbo.MasterTrackType(
        TrackTypeId)
GO
ALTER TABLE dbo.HorseBySmile NOCHECK CONSTRAINT FK_HorseBySmile_MasterTrackType
GO
ALTER TABLE dbo.HorseByTotal
WITH NOCHECK
ADD CONSTRAINT FK_HorseByTotal_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.HorseByTotal CHECK CONSTRAINT FK_HorseByTotal_Horse
GO
ALTER TABLE dbo.HorseByTrackCondition
WITH NOCHECK
ADD CONSTRAINT FK_HorseByTrackCondition_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.HorseByTrackCondition CHECK CONSTRAINT FK_HorseByTrackCondition_Horse
GO
ALTER TABLE dbo.HorseByTrackCondition
WITH NOCHECK
ADD CONSTRAINT FK_HorseByTrackCondition_MasterTrackCondition FOREIGN KEY(TrackConditionId) REFERENCES dbo.MasterTrackCondition(
        TrackConditionId)
GO
ALTER TABLE dbo.HorseByTrackCondition NOCHECK CONSTRAINT FK_HorseByTrackCondition_MasterTrackCondition
GO
ALTER TABLE dbo.HorseByTrackCondition
WITH NOCHECK
ADD CONSTRAINT FK_HorseByTrackCondition_MasterTrackType FOREIGN KEY(TrackTypeId) REFERENCES dbo.MasterTrackType(
        TrackTypeId)
GO
ALTER TABLE dbo.HorseByTrackCondition NOCHECK CONSTRAINT FK_HorseByTrackCondition_MasterTrackType
GO
ALTER TABLE dbo.Jockey
WITH NOCHECK
ADD CONSTRAINT FK_Jockey_MasterMinarai FOREIGN KEY(MinaraiId) REFERENCES dbo.MasterMinarai(
        MinaraiId)
GO
ALTER TABLE dbo.Jockey NOCHECK CONSTRAINT FK_Jockey_MasterMinarai
GO
ALTER TABLE dbo.Jockey
WITH NOCHECK
ADD CONSTRAINT FK_Jockey_MasterSex FOREIGN KEY(SexId) REFERENCES dbo.MasterSex(
        SexId)
GO
ALTER TABLE dbo.Jockey NOCHECK CONSTRAINT FK_Jockey_MasterSex
GO
ALTER TABLE dbo.Jockey
WITH NOCHECK
ADD CONSTRAINT FK_Jockey_MasterShikaku FOREIGN KEY(LicenseId) REFERENCES dbo.MasterLicense(
        LicenseId)
GO
ALTER TABLE dbo.Jockey NOCHECK CONSTRAINT FK_Jockey_MasterShikaku
GO
ALTER TABLE dbo.Jockey
WITH NOCHECK
ADD CONSTRAINT FK_Jockey_MasterTozai FOREIGN KEY(TozaiId) REFERENCES dbo.MasterTozai(
        TozaiId)
GO
ALTER TABLE dbo.Jockey NOCHECK CONSTRAINT FK_Jockey_MasterTozai
GO
ALTER TABLE dbo.JockeyByDistanceType
WITH NOCHECK
ADD CONSTRAINT FK_JockeyByDistanceType_Jocky FOREIGN KEY(JockeyId) REFERENCES dbo.Jockey(
        JockeyId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.JockeyByDistanceType CHECK CONSTRAINT FK_JockeyByDistanceType_Jocky
GO
ALTER TABLE dbo.JockeyByDistanceType
WITH NOCHECK
ADD CONSTRAINT FK_JockeyByDistanceType_MasterTrackType2 FOREIGN KEY(TrackType2Id) REFERENCES dbo.MasterTrackType2(
        TrackType2Id)
GO
ALTER TABLE dbo.JockeyByDistanceType NOCHECK CONSTRAINT FK_JockeyByDistanceType_MasterTrackType2
GO
ALTER TABLE dbo.JockeyByHatsuKijyo
WITH NOCHECK
ADD CONSTRAINT FK_JockeyByHatsuKijyo_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.JockeyByHatsuKijyo NOCHECK CONSTRAINT FK_JockeyByHatsuKijyo_Horse
GO
ALTER TABLE dbo.JockeyByHatsuKijyo
WITH NOCHECK
ADD CONSTRAINT FK_JockeyByHatsuKijyo_Jocky FOREIGN KEY(JockeyId) REFERENCES dbo.Jockey(
        JockeyId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.JockeyByHatsuKijyo CHECK CONSTRAINT FK_JockeyByHatsuKijyo_Jocky
GO
ALTER TABLE dbo.JockeyByHatsuKijyo
WITH NOCHECK
ADD CONSTRAINT FK_JockeyByHatsuKijyo_MasterIjyo FOREIGN KEY(StatsId) REFERENCES dbo.MasterStats(
        StatsId)
GO
ALTER TABLE dbo.JockeyByHatsuKijyo NOCHECK CONSTRAINT FK_JockeyByHatsuKijyo_MasterIjyo
GO
ALTER TABLE dbo.JockeyByHatsuKijyo
WITH NOCHECK
ADD CONSTRAINT FK_JockeyByHatsuKijyo_MasterTrackType3 FOREIGN KEY(TrackType3Id) REFERENCES dbo.MasterTrackType3(
        TrackType3Id)
GO
ALTER TABLE dbo.JockeyByHatsuKijyo NOCHECK CONSTRAINT FK_JockeyByHatsuKijyo_MasterTrackType3
GO
ALTER TABLE dbo.JockeyByHatsuKijyo
WITH NOCHECK
ADD CONSTRAINT FK_JockeyByHatsuKijyo_Race FOREIGN KEY(RaceID) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.JockeyByHatsuKijyo NOCHECK CONSTRAINT FK_JockeyByHatsuKijyo_Race
GO
ALTER TABLE dbo.JockeyByHatuSyori
WITH NOCHECK
ADD CONSTRAINT FK_JockeyByHatusyori_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.JockeyByHatuSyori NOCHECK CONSTRAINT FK_JockeyByHatusyori_Horse
GO
ALTER TABLE dbo.JockeyByHatuSyori
WITH NOCHECK
ADD CONSTRAINT FK_JockeyByHatusyori_Jocky FOREIGN KEY(JockeyId) REFERENCES dbo.Jockey(
        JockeyId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.JockeyByHatuSyori CHECK CONSTRAINT FK_JockeyByHatusyori_Jocky
GO
ALTER TABLE dbo.JockeyByHatuSyori
WITH NOCHECK
ADD CONSTRAINT FK_JockeyByHatusyori_MasterTrackType3 FOREIGN KEY(TrackType3Id) REFERENCES dbo.MasterTrackType3(
        TrackType3Id)
GO
ALTER TABLE dbo.JockeyByHatuSyori NOCHECK CONSTRAINT FK_JockeyByHatusyori_MasterTrackType3
GO
ALTER TABLE dbo.JockeyByHatuSyori
WITH NOCHECK
ADD CONSTRAINT FK_JockeyByHatusyori_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.JockeyByHatuSyori NOCHECK CONSTRAINT FK_JockeyByHatusyori_Race
GO
ALTER TABLE dbo.JockeyBySaikinJyusyo
WITH NOCHECK
ADD CONSTRAINT FK_JockeyBySaikinJyusyo_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.JockeyBySaikinJyusyo NOCHECK CONSTRAINT FK_JockeyBySaikinJyusyo_Horse
GO
ALTER TABLE dbo.JockeyBySaikinJyusyo
WITH NOCHECK
ADD CONSTRAINT FK_JockeyBySaikinJyusyo_Jocky FOREIGN KEY(JockeyId) REFERENCES dbo.Jockey(
        JockeyId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.JockeyBySaikinJyusyo CHECK CONSTRAINT FK_JockeyBySaikinJyusyo_Jocky
GO
ALTER TABLE dbo.JockeyBySaikinJyusyo
WITH NOCHECK
ADD CONSTRAINT FK_JockeyBySaikinJyusyo_MasterGrade FOREIGN KEY(GradeId) REFERENCES dbo.MasterGrade(
        GradeId)
GO
ALTER TABLE dbo.JockeyBySaikinJyusyo NOCHECK CONSTRAINT FK_JockeyBySaikinJyusyo_MasterGrade
GO
ALTER TABLE dbo.JockeyBySaikinJyusyo
WITH NOCHECK
ADD CONSTRAINT FK_JockeyBySaikinJyusyo_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.JockeyBySaikinJyusyo NOCHECK CONSTRAINT FK_JockeyBySaikinJyusyo_Race
GO
ALTER TABLE dbo.JockeyByTotal
WITH NOCHECK
ADD CONSTRAINT FK_JockeyByTotal_Jocky FOREIGN KEY(JockeyId) REFERENCES dbo.Jockey(
        JockeyId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.JockeyByTotal CHECK CONSTRAINT FK_JockeyByTotal_Jocky
GO
ALTER TABLE dbo.JockeyByTotal
WITH NOCHECK
ADD CONSTRAINT FK_JockeyByTotal_TrackType3 FOREIGN KEY(TrackType3Id) REFERENCES dbo.MasterTrackType3(
        TrackType3Id)
GO
ALTER TABLE dbo.JockeyByTotal CHECK CONSTRAINT FK_JockeyByTotal_TrackType3
GO
ALTER TABLE dbo.JockeyByTrackType
WITH NOCHECK
ADD CONSTRAINT FK_JockeyByTrackType_Jocky FOREIGN KEY(JockeyId) REFERENCES dbo.Jockey(
        JockeyId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.JockeyByTrackType CHECK CONSTRAINT FK_JockeyByTrackType_Jocky
GO
ALTER TABLE dbo.JockeyByTrackType
WITH NOCHECK
ADD CONSTRAINT FK_JockeyByTrackType_MasterTrackType3 FOREIGN KEY(TrackType3Id) REFERENCES dbo.MasterTrackType3(
        TrackType3Id)
GO
ALTER TABLE dbo.JockeyByTrackType NOCHECK CONSTRAINT FK_JockeyByTrackType_MasterTrackType3
GO
ALTER TABLE dbo.Keito
WITH NOCHECK
ADD CONSTRAINT FK_Keito_Hansyoku FOREIGN KEY(HansyokuId) REFERENCES dbo.Hansyoku(
        HansyokuId)
GO
ALTER TABLE dbo.Keito NOCHECK CONSTRAINT FK_Keito_Hansyoku
GO
ALTER TABLE dbo.MasterJyoken5
WITH NOCHECK
ADD CONSTRAINT FK_MasterJyoken5_MasterJyoken FOREIGN KEY(JyokenId) REFERENCES dbo.MasterJyoken(
        JyokenId)
GO
ALTER TABLE dbo.MasterJyoken5 NOCHECK CONSTRAINT FK_MasterJyoken5_MasterJyoken
GO
ALTER TABLE dbo.MasterOpenModeDataSpec
WITH NOCHECK
ADD CONSTRAINT FK_MasterOpenModeDataSpec_MasterDataSpec FOREIGN KEY(OpenDataSpecId) REFERENCES dbo.MasterDataSpec(
        DataSpecId)
GO
ALTER TABLE dbo.MasterOpenModeDataSpec NOCHECK CONSTRAINT FK_MasterOpenModeDataSpec_MasterDataSpec
GO
ALTER TABLE dbo.Odds1
WITH NOCHECK
ADD CONSTRAINT FK_Odds1_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.Odds1 NOCHECK CONSTRAINT FK_Odds1_MasterPlace
GO
ALTER TABLE dbo.Odds1
WITH NOCHECK
ADD CONSTRAINT FK_Odds1_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.Odds1 NOCHECK CONSTRAINT FK_Odds1_Race
GO
ALTER TABLE dbo.Odds2
WITH NOCHECK
ADD CONSTRAINT FK_Odds2_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.Odds2 NOCHECK CONSTRAINT FK_Odds2_MasterPlace
GO
ALTER TABLE dbo.Odds2
WITH NOCHECK
ADD CONSTRAINT FK_Odds2_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.Odds2 NOCHECK CONSTRAINT FK_Odds2_Race
GO
ALTER TABLE dbo.Odds3
WITH NOCHECK
ADD CONSTRAINT FK_Odds3_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.Odds3 NOCHECK CONSTRAINT FK_Odds3_MasterPlace
GO
ALTER TABLE dbo.Odds3
WITH NOCHECK
ADD CONSTRAINT FK_Odds3_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.Odds3 NOCHECK CONSTRAINT FK_Odds3_Race
GO
ALTER TABLE dbo.Odds4
WITH NOCHECK
ADD CONSTRAINT FK_Odds4_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.Odds4 NOCHECK CONSTRAINT FK_Odds4_MasterPlace
GO
ALTER TABLE dbo.Odds4
WITH NOCHECK
ADD CONSTRAINT FK_Odds4_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.Odds4 NOCHECK CONSTRAINT FK_Odds4_Race
GO
ALTER TABLE dbo.Odds5
WITH NOCHECK
ADD CONSTRAINT FK_Odds5_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.Odds5 NOCHECK CONSTRAINT FK_Odds5_MasterPlace
GO
ALTER TABLE dbo.Odds5
WITH NOCHECK
ADD CONSTRAINT FK_Odds5_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.Odds5 NOCHECK CONSTRAINT FK_Odds5_Race
GO
ALTER TABLE dbo.Odds6
WITH NOCHECK
ADD CONSTRAINT FK_Odds6_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.Odds6 NOCHECK CONSTRAINT FK_Odds6_MasterPlace
GO
ALTER TABLE dbo.Odds6
WITH NOCHECK
ADD CONSTRAINT FK_Odds6_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.Odds6 NOCHECK CONSTRAINT FK_Odds6_Race
GO
ALTER TABLE dbo.OddsByBracket
WITH NOCHECK
ADD CONSTRAINT FK_OddsByBracket_Horse1 FOREIGN KEY(HorseId1) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByBracket NOCHECK CONSTRAINT FK_OddsByBracket_Horse1
GO
ALTER TABLE dbo.OddsByBracket
WITH NOCHECK
ADD CONSTRAINT FK_OddsByBracket_Horse2 FOREIGN KEY(HorseId2) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByBracket NOCHECK CONSTRAINT FK_OddsByBracket_Horse2
GO
ALTER TABLE dbo.OddsByBracket
WITH NOCHECK
ADD CONSTRAINT FK_OddsByBracket_Horse3 FOREIGN KEY(HorseId3) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByBracket NOCHECK CONSTRAINT FK_OddsByBracket_Horse3
GO
ALTER TABLE dbo.OddsByBracket
WITH NOCHECK
ADD CONSTRAINT FK_OddsByBracket_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.OddsByBracket NOCHECK CONSTRAINT FK_OddsByBracket_MasterBetType
GO
ALTER TABLE dbo.OddsByBracket
WITH NOCHECK
ADD CONSTRAINT FK_OddsByBracket_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.OddsByBracket NOCHECK CONSTRAINT FK_OddsByBracket_MasterPlace
GO
ALTER TABLE dbo.OddsByBracket
WITH CHECK
ADD CONSTRAINT FK_OddsByBracket_Odds1 FOREIGN KEY(RaceId) REFERENCES dbo.Odds1(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.OddsByBracket CHECK CONSTRAINT FK_OddsByBracket_Odds1
GO
ALTER TABLE dbo.OddsByBracket
WITH NOCHECK
ADD CONSTRAINT FK_OddsByBracket_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.OddsByBracket NOCHECK CONSTRAINT FK_OddsByBracket_Race
GO
ALTER TABLE dbo.OddsByExacta
WITH NOCHECK
ADD CONSTRAINT FK_OddsByExacta_Horse1 FOREIGN KEY(HorseId1) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByExacta NOCHECK CONSTRAINT FK_OddsByExacta_Horse1
GO
ALTER TABLE dbo.OddsByExacta
WITH NOCHECK
ADD CONSTRAINT FK_OddsByExacta_Horse2 FOREIGN KEY(HorseId2) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByExacta NOCHECK CONSTRAINT FK_OddsByExacta_Horse2
GO
ALTER TABLE dbo.OddsByExacta
WITH NOCHECK
ADD CONSTRAINT FK_OddsByExacta_Horse3 FOREIGN KEY(HorseId3) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByExacta NOCHECK CONSTRAINT FK_OddsByExacta_Horse3
GO
ALTER TABLE dbo.OddsByExacta
WITH NOCHECK
ADD CONSTRAINT FK_OddsByExacta_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.OddsByExacta NOCHECK CONSTRAINT FK_OddsByExacta_MasterBetType
GO
ALTER TABLE dbo.OddsByExacta
WITH NOCHECK
ADD CONSTRAINT FK_OddsByExacta_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.OddsByExacta NOCHECK CONSTRAINT FK_OddsByExacta_MasterPlace
GO
ALTER TABLE dbo.OddsByExacta
WITH CHECK
ADD CONSTRAINT FK_OddsByExacta_Odds4 FOREIGN KEY(RaceId) REFERENCES dbo.Odds4(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.OddsByExacta CHECK CONSTRAINT FK_OddsByExacta_Odds4
GO
ALTER TABLE dbo.OddsByExacta
WITH NOCHECK
ADD CONSTRAINT FK_OddsByExacta_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.OddsByExacta NOCHECK CONSTRAINT FK_OddsByExacta_Race
GO
ALTER TABLE dbo.OddsByPlace
WITH NOCHECK
ADD CONSTRAINT FK_OddsByPlace_Horse1 FOREIGN KEY(HorseId1) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByPlace NOCHECK CONSTRAINT FK_OddsByPlace_Horse1
GO
ALTER TABLE dbo.OddsByPlace
WITH NOCHECK
ADD CONSTRAINT FK_OddsByPlace_Horse2 FOREIGN KEY(HorseId2) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByPlace NOCHECK CONSTRAINT FK_OddsByPlace_Horse2
GO
ALTER TABLE dbo.OddsByPlace
WITH NOCHECK
ADD CONSTRAINT FK_OddsByPlace_Horse3 FOREIGN KEY(HorseId3) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByPlace NOCHECK CONSTRAINT FK_OddsByPlace_Horse3
GO
ALTER TABLE dbo.OddsByPlace
WITH NOCHECK
ADD CONSTRAINT FK_OddsByPlace_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.OddsByPlace NOCHECK CONSTRAINT FK_OddsByPlace_MasterBetType
GO
ALTER TABLE dbo.OddsByPlace
WITH NOCHECK
ADD CONSTRAINT FK_OddsByPlace_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.OddsByPlace NOCHECK CONSTRAINT FK_OddsByPlace_MasterPlace
GO
ALTER TABLE dbo.OddsByPlace
WITH CHECK
ADD CONSTRAINT FK_OddsByPlace_Odds1 FOREIGN KEY(RaceId) REFERENCES dbo.Odds1(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.OddsByPlace CHECK CONSTRAINT FK_OddsByPlace_Odds1
GO
ALTER TABLE dbo.OddsByPlace
WITH NOCHECK
ADD CONSTRAINT FK_OddsByPlace_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.OddsByPlace NOCHECK CONSTRAINT FK_OddsByPlace_Race
GO
ALTER TABLE dbo.OddsByQuinella
WITH NOCHECK
ADD CONSTRAINT FK_OddsByQuinella_Horse1 FOREIGN KEY(HorseId1) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByQuinella NOCHECK CONSTRAINT FK_OddsByQuinella_Horse1
GO
ALTER TABLE dbo.OddsByQuinella
WITH NOCHECK
ADD CONSTRAINT FK_OddsByQuinella_Horse2 FOREIGN KEY(HorseId2) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByQuinella NOCHECK CONSTRAINT FK_OddsByQuinella_Horse2
GO
ALTER TABLE dbo.OddsByQuinella
WITH NOCHECK
ADD CONSTRAINT FK_OddsByQuinella_Horse3 FOREIGN KEY(HorseId3) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByQuinella NOCHECK CONSTRAINT FK_OddsByQuinella_Horse3
GO
ALTER TABLE dbo.OddsByQuinella
WITH NOCHECK
ADD CONSTRAINT FK_OddsByQuinella_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.OddsByQuinella NOCHECK CONSTRAINT FK_OddsByQuinella_MasterBetType
GO
ALTER TABLE dbo.OddsByQuinella
WITH NOCHECK
ADD CONSTRAINT FK_OddsByQuinella_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.OddsByQuinella NOCHECK CONSTRAINT FK_OddsByQuinella_MasterPlace
GO
ALTER TABLE dbo.OddsByQuinella
WITH CHECK
ADD CONSTRAINT FK_OddsByQuinella_Odds2 FOREIGN KEY(RaceId) REFERENCES dbo.Odds2(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.OddsByQuinella CHECK CONSTRAINT FK_OddsByQuinella_Odds2
GO
ALTER TABLE dbo.OddsByQuinella
WITH NOCHECK
ADD CONSTRAINT FK_OddsByQuinella_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.OddsByQuinella NOCHECK CONSTRAINT FK_OddsByQuinella_Race
GO
ALTER TABLE dbo.OddsByTrifecta
WITH NOCHECK
ADD CONSTRAINT FK_OddsByTrifecta_Horse1 FOREIGN KEY(HorseId1) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByTrifecta NOCHECK CONSTRAINT FK_OddsByTrifecta_Horse1
GO
ALTER TABLE dbo.OddsByTrifecta
WITH NOCHECK
ADD CONSTRAINT FK_OddsByTrifecta_Horse2 FOREIGN KEY(HorseId2) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByTrifecta NOCHECK CONSTRAINT FK_OddsByTrifecta_Horse2
GO
ALTER TABLE dbo.OddsByTrifecta
WITH NOCHECK
ADD CONSTRAINT FK_OddsByTrifecta_Horse3 FOREIGN KEY(HorseId3) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByTrifecta NOCHECK CONSTRAINT FK_OddsByTrifecta_Horse3
GO
ALTER TABLE dbo.OddsByTrifecta
WITH NOCHECK
ADD CONSTRAINT FK_OddsByTrifecta_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.OddsByTrifecta NOCHECK CONSTRAINT FK_OddsByTrifecta_MasterBetType
GO
ALTER TABLE dbo.OddsByTrifecta
WITH NOCHECK
ADD CONSTRAINT FK_OddsByTrifecta_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.OddsByTrifecta NOCHECK CONSTRAINT FK_OddsByTrifecta_MasterPlace
GO
ALTER TABLE dbo.OddsByTrifecta
WITH CHECK
ADD CONSTRAINT FK_OddsByTrifecta_Odds6 FOREIGN KEY(RaceId) REFERENCES dbo.Odds6(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.OddsByTrifecta CHECK CONSTRAINT FK_OddsByTrifecta_Odds6
GO
ALTER TABLE dbo.OddsByTrifecta
WITH NOCHECK
ADD CONSTRAINT FK_OddsByTrifecta_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.OddsByTrifecta NOCHECK CONSTRAINT FK_OddsByTrifecta_Race
GO
ALTER TABLE dbo.OddsByTrio
WITH NOCHECK
ADD CONSTRAINT FK_OddsByTrio_Horse1 FOREIGN KEY(HorseId1) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByTrio NOCHECK CONSTRAINT FK_OddsByTrio_Horse1
GO
ALTER TABLE dbo.OddsByTrio
WITH NOCHECK
ADD CONSTRAINT FK_OddsByTrio_Horse2 FOREIGN KEY(HorseId2) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByTrio NOCHECK CONSTRAINT FK_OddsByTrio_Horse2
GO
ALTER TABLE dbo.OddsByTrio
WITH NOCHECK
ADD CONSTRAINT FK_OddsByTrio_Horse3 FOREIGN KEY(HorseId3) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByTrio NOCHECK CONSTRAINT FK_OddsByTrio_Horse3
GO
ALTER TABLE dbo.OddsByTrio
WITH NOCHECK
ADD CONSTRAINT FK_OddsByTrio_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.OddsByTrio NOCHECK CONSTRAINT FK_OddsByTrio_MasterBetType
GO
ALTER TABLE dbo.OddsByTrio
WITH NOCHECK
ADD CONSTRAINT FK_OddsByTrio_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.OddsByTrio NOCHECK CONSTRAINT FK_OddsByTrio_MasterPlace
GO
ALTER TABLE dbo.OddsByTrio
WITH CHECK
ADD CONSTRAINT FK_OddsByTrio_Odds5 FOREIGN KEY(RaceId) REFERENCES dbo.Odds5(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.OddsByTrio CHECK CONSTRAINT FK_OddsByTrio_Odds5
GO
ALTER TABLE dbo.OddsByTrio
WITH NOCHECK
ADD CONSTRAINT FK_OddsByTrio_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.OddsByTrio NOCHECK CONSTRAINT FK_OddsByTrio_Race
GO
ALTER TABLE dbo.OddsByWide
WITH NOCHECK
ADD CONSTRAINT FK_OddsByWide_Horse1 FOREIGN KEY(HorseId1) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByWide NOCHECK CONSTRAINT FK_OddsByWide_Horse1
GO
ALTER TABLE dbo.OddsByWide
WITH NOCHECK
ADD CONSTRAINT FK_OddsByWide_Horse2 FOREIGN KEY(HorseId2) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByWide NOCHECK CONSTRAINT FK_OddsByWide_Horse2
GO
ALTER TABLE dbo.OddsByWide
WITH NOCHECK
ADD CONSTRAINT FK_OddsByWide_Horse3 FOREIGN KEY(HorseId3) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByWide NOCHECK CONSTRAINT FK_OddsByWide_Horse3
GO
ALTER TABLE dbo.OddsByWide
WITH NOCHECK
ADD CONSTRAINT FK_OddsByWide_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.OddsByWide NOCHECK CONSTRAINT FK_OddsByWide_MasterBetType
GO
ALTER TABLE dbo.OddsByWide
WITH NOCHECK
ADD CONSTRAINT FK_OddsByWide_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.OddsByWide NOCHECK CONSTRAINT FK_OddsByWide_MasterPlace
GO
ALTER TABLE dbo.OddsByWide
WITH CHECK
ADD CONSTRAINT FK_OddsByWide_Odds3 FOREIGN KEY(RaceId) REFERENCES dbo.Odds3(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.OddsByWide CHECK CONSTRAINT FK_OddsByWide_Odds3
GO
ALTER TABLE dbo.OddsByWide
WITH NOCHECK
ADD CONSTRAINT FK_OddsByWide_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.OddsByWide NOCHECK CONSTRAINT FK_OddsByWide_Race
GO
ALTER TABLE dbo.OddsByWin
WITH NOCHECK
ADD CONSTRAINT FK_OddsByWin_Horse1 FOREIGN KEY(HorseId1) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByWin NOCHECK CONSTRAINT FK_OddsByWin_Horse1
GO
ALTER TABLE dbo.OddsByWin
WITH NOCHECK
ADD CONSTRAINT FK_OddsByWin_Horse2 FOREIGN KEY(HorseId2) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByWin NOCHECK CONSTRAINT FK_OddsByWin_Horse2
GO
ALTER TABLE dbo.OddsByWin
WITH NOCHECK
ADD CONSTRAINT FK_OddsByWin_Horse3 FOREIGN KEY(HorseId3) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.OddsByWin NOCHECK CONSTRAINT FK_OddsByWin_Horse3
GO
ALTER TABLE dbo.OddsByWin
WITH NOCHECK
ADD CONSTRAINT FK_OddsByWin_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.OddsByWin NOCHECK CONSTRAINT FK_OddsByWin_MasterBetType
GO
ALTER TABLE dbo.OddsByWin
WITH NOCHECK
ADD CONSTRAINT FK_OddsByWin_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.OddsByWin NOCHECK CONSTRAINT FK_OddsByWin_MasterPlace
GO
ALTER TABLE dbo.OddsByWin
WITH CHECK
ADD CONSTRAINT FK_OddsByWin_Odds1 FOREIGN KEY(RaceId) REFERENCES dbo.Odds1(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.OddsByWin CHECK CONSTRAINT FK_OddsByWin_Odds1
GO
ALTER TABLE dbo.OddsByWin
WITH NOCHECK
ADD CONSTRAINT FK_OddsByWin_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.OddsByWin NOCHECK CONSTRAINT FK_OddsByWin_Race
GO
ALTER TABLE dbo.Payoff
WITH NOCHECK
ADD CONSTRAINT FK_Payoff_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.Payoff NOCHECK CONSTRAINT FK_Payoff_MasterPlace
GO
ALTER TABLE dbo.Payoff
WITH NOCHECK
ADD CONSTRAINT FK_Payoff_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.Payoff NOCHECK CONSTRAINT FK_Payoff_Race
GO
ALTER TABLE dbo.PayoffByFlag
WITH CHECK
ADD CONSTRAINT FK_PayoffByFlag_Payoff FOREIGN KEY(RaceId) REFERENCES dbo.Payoff(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.PayoffByFlag CHECK CONSTRAINT FK_PayoffByFlag_Payoff
GO
ALTER TABLE dbo.PayoffByFlag
WITH NOCHECK
ADD CONSTRAINT FK_PayoffByFlag_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PayoffByFlag NOCHECK CONSTRAINT FK_PayoffByFlag_Race
GO
ALTER TABLE dbo.PayoffByHenkanDoWaku
WITH CHECK
ADD CONSTRAINT FK_PayoffByHenkanDoWaku_Payoff FOREIGN KEY(RaceId) REFERENCES dbo.Payoff(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.PayoffByHenkanDoWaku CHECK CONSTRAINT FK_PayoffByHenkanDoWaku_Payoff
GO
ALTER TABLE dbo.PayoffByHenkanDoWaku
WITH NOCHECK
ADD CONSTRAINT FK_PayoffByHenkanDoWaku_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PayoffByHenkanDoWaku NOCHECK CONSTRAINT FK_PayoffByHenkanDoWaku_Race
GO
ALTER TABLE dbo.PayoffByHenkanUma
WITH CHECK
ADD CONSTRAINT FK_PayoffByHenkanUma_Payoff FOREIGN KEY(RaceId) REFERENCES dbo.Payoff(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.PayoffByHenkanUma CHECK CONSTRAINT FK_PayoffByHenkanUma_Payoff
GO
ALTER TABLE dbo.PayoffByHenkanUma
WITH NOCHECK
ADD CONSTRAINT FK_PayoffByHenkanUma_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PayoffByHenkanUma NOCHECK CONSTRAINT FK_PayoffByHenkanUma_Race
GO
ALTER TABLE dbo.PayoffByHenkanWaku
WITH CHECK
ADD CONSTRAINT FK_PayoffByHenkanWaku_Payoff FOREIGN KEY(RaceId) REFERENCES dbo.Payoff(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.PayoffByHenkanWaku CHECK CONSTRAINT FK_PayoffByHenkanWaku_Payoff
GO
ALTER TABLE dbo.PayoffByHenkanWaku
WITH NOCHECK
ADD CONSTRAINT FK_PayoffByHenkanWaku_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PayoffByHenkanWaku NOCHECK CONSTRAINT FK_PayoffByHenkanWaku_Race
GO
ALTER TABLE dbo.PayoffByPayAll
WITH NOCHECK
ADD CONSTRAINT FK_PayoffByPayAll_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.PayoffByPayAll NOCHECK CONSTRAINT FK_PayoffByPayAll_MasterBetType
GO
ALTER TABLE dbo.PayoffByPayAll
WITH CHECK
ADD CONSTRAINT FK_PayoffByPayAll_Payoff FOREIGN KEY(RaceId) REFERENCES dbo.Payoff(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.PayoffByPayAll CHECK CONSTRAINT FK_PayoffByPayAll_Payoff
GO
ALTER TABLE dbo.PayoffByPayAll
WITH NOCHECK
ADD CONSTRAINT FK_PayoffByPayAll_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PayoffByPayAll NOCHECK CONSTRAINT FK_PayoffByPayAll_Race
GO
ALTER TABLE dbo.PredictByBracket_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByBracket_Horse1 FOREIGN KEY(HorseId1) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByBracket_001 NOCHECK CONSTRAINT FK_PredictByBracket_Horse1
GO
ALTER TABLE dbo.PredictByBracket_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByBracket_Horse2 FOREIGN KEY(HorseId2) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByBracket_001 NOCHECK CONSTRAINT FK_PredictByBracket_Horse2
GO
ALTER TABLE dbo.PredictByBracket_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByBracket_Horse3 FOREIGN KEY(HorseId3) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByBracket_001 NOCHECK CONSTRAINT FK_PredictByBracket_Horse3
GO
ALTER TABLE dbo.PredictByBracket_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByBracket_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.PredictByBracket_001 NOCHECK CONSTRAINT FK_PredictByBracket_MasterBetType
GO
ALTER TABLE dbo.PredictByExacta_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByExacta_Horse1 FOREIGN KEY(HorseId1) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByExacta_001 NOCHECK CONSTRAINT FK_PredictByExacta_Horse1
GO
ALTER TABLE dbo.PredictByExacta_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByExacta_Horse2 FOREIGN KEY(HorseId2) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByExacta_001 NOCHECK CONSTRAINT FK_PredictByExacta_Horse2
GO
ALTER TABLE dbo.PredictByExacta_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByExacta_Horse3 FOREIGN KEY(HorseId3) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByExacta_001 NOCHECK CONSTRAINT FK_PredictByExacta_Horse3
GO
ALTER TABLE dbo.PredictByExacta_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByExacta_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.PredictByExacta_001 NOCHECK CONSTRAINT FK_PredictByExacta_MasterBetType
GO
ALTER TABLE dbo.PredictByExacta_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByExacta_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PredictByExacta_001 NOCHECK CONSTRAINT FK_PredictByExacta_Race
GO
ALTER TABLE dbo.PredictByPlace_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByPlace_Horse1 FOREIGN KEY(HorseId1) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByPlace_001 NOCHECK CONSTRAINT FK_PredictByPlace_Horse1
GO
ALTER TABLE dbo.PredictByPlace_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByPlace_Horse2 FOREIGN KEY(HorseId2) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByPlace_001 NOCHECK CONSTRAINT FK_PredictByPlace_Horse2
GO
ALTER TABLE dbo.PredictByPlace_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByPlace_Horse3 FOREIGN KEY(HorseId3) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByPlace_001 NOCHECK CONSTRAINT FK_PredictByPlace_Horse3
GO
ALTER TABLE dbo.PredictByPlace_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByPlace_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.PredictByPlace_001 NOCHECK CONSTRAINT FK_PredictByPlace_MasterBetType
GO
ALTER TABLE dbo.PredictByPlace_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByPlace_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PredictByPlace_001 NOCHECK CONSTRAINT FK_PredictByPlace_Race
GO
ALTER TABLE dbo.PredictByQuinella_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByQuinella_Horse1 FOREIGN KEY(HorseId1) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByQuinella_001 NOCHECK CONSTRAINT FK_PredictByQuinella_Horse1
GO
ALTER TABLE dbo.PredictByQuinella_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByQuinella_Horse2 FOREIGN KEY(HorseId2) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByQuinella_001 NOCHECK CONSTRAINT FK_PredictByQuinella_Horse2
GO
ALTER TABLE dbo.PredictByQuinella_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByQuinella_Horse3 FOREIGN KEY(HorseId3) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByQuinella_001 NOCHECK CONSTRAINT FK_PredictByQuinella_Horse3
GO
ALTER TABLE dbo.PredictByQuinella_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByQuinella_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.PredictByQuinella_001 NOCHECK CONSTRAINT FK_PredictByQuinella_MasterBetType
GO
ALTER TABLE dbo.PredictByQuinella_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByQuinella_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PredictByQuinella_001 NOCHECK CONSTRAINT FK_PredictByQuinella_Race
GO
ALTER TABLE dbo.PredictByTrifecta_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByTrifecta_Horse1 FOREIGN KEY(HorseId1) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByTrifecta_001 NOCHECK CONSTRAINT FK_PredictByTrifecta_Horse1
GO
ALTER TABLE dbo.PredictByTrifecta_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByTrifecta_Horse2 FOREIGN KEY(HorseId2) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByTrifecta_001 NOCHECK CONSTRAINT FK_PredictByTrifecta_Horse2
GO
ALTER TABLE dbo.PredictByTrifecta_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByTrifecta_Horse3 FOREIGN KEY(HorseId3) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByTrifecta_001 NOCHECK CONSTRAINT FK_PredictByTrifecta_Horse3
GO
ALTER TABLE dbo.PredictByTrifecta_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByTrifecta_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.PredictByTrifecta_001 NOCHECK CONSTRAINT FK_PredictByTrifecta_MasterBetType
GO
ALTER TABLE dbo.PredictByTrifecta_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByTrifecta_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PredictByTrifecta_001 NOCHECK CONSTRAINT FK_PredictByTrifecta_Race
GO
ALTER TABLE dbo.PredictByTrio_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByTrio_Horse1 FOREIGN KEY(HorseId1) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByTrio_001 NOCHECK CONSTRAINT FK_PredictByTrio_Horse1
GO
ALTER TABLE dbo.PredictByTrio_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByTrio_Horse2 FOREIGN KEY(HorseId2) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByTrio_001 NOCHECK CONSTRAINT FK_PredictByTrio_Horse2
GO
ALTER TABLE dbo.PredictByTrio_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByTrio_Horse3 FOREIGN KEY(HorseId3) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByTrio_001 NOCHECK CONSTRAINT FK_PredictByTrio_Horse3
GO
ALTER TABLE dbo.PredictByTrio_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByTrio_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.PredictByTrio_001 NOCHECK CONSTRAINT FK_PredictByTrio_MasterBetType
GO
ALTER TABLE dbo.PredictByTrio_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByTrio_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PredictByTrio_001 NOCHECK CONSTRAINT FK_PredictByTrio_Race
GO
ALTER TABLE dbo.PredictByWide_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWide_Horse1 FOREIGN KEY(HorseId1) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByWide_001 NOCHECK CONSTRAINT FK_PredictByWide_Horse1
GO
ALTER TABLE dbo.PredictByWide_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWide_Horse2 FOREIGN KEY(HorseId2) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByWide_001 NOCHECK CONSTRAINT FK_PredictByWide_Horse2
GO
ALTER TABLE dbo.PredictByWide_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWide_Horse3 FOREIGN KEY(HorseId3) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByWide_001 NOCHECK CONSTRAINT FK_PredictByWide_Horse3
GO
ALTER TABLE dbo.PredictByWide_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWide_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.PredictByWide_001 NOCHECK CONSTRAINT FK_PredictByWide_MasterBetType
GO
ALTER TABLE dbo.PredictByWide_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWide_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PredictByWide_001 NOCHECK CONSTRAINT FK_PredictByWide_Race
GO
ALTER TABLE dbo.PredictByWin_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWin_Horse1 FOREIGN KEY(HorseId1) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByWin_001 NOCHECK CONSTRAINT FK_PredictByWin_Horse1
GO
ALTER TABLE dbo.PredictByWin_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWin_Horse2 FOREIGN KEY(HorseId2) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByWin_001 NOCHECK CONSTRAINT FK_PredictByWin_Horse2
GO
ALTER TABLE dbo.PredictByWin_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWin_Horse3 FOREIGN KEY(HorseId3) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByWin_001 NOCHECK CONSTRAINT FK_PredictByWin_Horse3
GO
ALTER TABLE dbo.PredictByWin_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWin_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.PredictByWin_001 NOCHECK CONSTRAINT FK_PredictByWin_MasterBetType
GO
ALTER TABLE dbo.PredictByWin_001
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWin_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PredictByWin_001 NOCHECK CONSTRAINT FK_PredictByWin_Race
GO
ALTER TABLE dbo.PredictByWinFive
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWinFive_Horse1 FOREIGN KEY(HorseId1) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByWinFive NOCHECK CONSTRAINT FK_PredictByWinFive_Horse1
GO
ALTER TABLE dbo.PredictByWinFive
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWinFive_Horse2 FOREIGN KEY(HorseId2) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByWinFive NOCHECK CONSTRAINT FK_PredictByWinFive_Horse2
GO
ALTER TABLE dbo.PredictByWinFive
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWinFive_Horse3 FOREIGN KEY(HorseId3) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByWinFive NOCHECK CONSTRAINT FK_PredictByWinFive_Horse3
GO
ALTER TABLE dbo.PredictByWinFive
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWinFive_Horse4 FOREIGN KEY(HorseId4) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByWinFive NOCHECK CONSTRAINT FK_PredictByWinFive_Horse4
GO
ALTER TABLE dbo.PredictByWinFive
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWinFive_Horse5 FOREIGN KEY(HorseId5) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.PredictByWinFive NOCHECK CONSTRAINT FK_PredictByWinFive_Horse5
GO
ALTER TABLE dbo.PredictByWinFive
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWinFive_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.PredictByWinFive NOCHECK CONSTRAINT FK_PredictByWinFive_MasterBetType
GO
ALTER TABLE dbo.PredictByWinFive
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWinFive_Race1 FOREIGN KEY(RaceId1) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PredictByWinFive NOCHECK CONSTRAINT FK_PredictByWinFive_Race1
GO
ALTER TABLE dbo.PredictByWinFive
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWinFive_Race2 FOREIGN KEY(RaceId2) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PredictByWinFive NOCHECK CONSTRAINT FK_PredictByWinFive_Race2
GO
ALTER TABLE dbo.PredictByWinFive
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWinFive_Race3 FOREIGN KEY(RaceId3) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PredictByWinFive NOCHECK CONSTRAINT FK_PredictByWinFive_Race3
GO
ALTER TABLE dbo.PredictByWinFive
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWinFive_Race4 FOREIGN KEY(RaceId4) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PredictByWinFive NOCHECK CONSTRAINT FK_PredictByWinFive_Race4
GO
ALTER TABLE dbo.PredictByWinFive
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWinFive_Race5 FOREIGN KEY(RaceId5) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PredictByWinFive NOCHECK CONSTRAINT FK_PredictByWinFive_Race5
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_Master2Class FOREIGN KEY(ClassId) REFERENCES dbo.Master2Class(
        ClassId)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_Master2Class
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_Master2Distance FOREIGN KEY(DistanceId) REFERENCES dbo.Master2Distance(
        DistanceId)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_Master2Distance
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_Master2RaceType1 FOREIGN KEY(RaceType1Id) REFERENCES dbo.Master2RaceType1(
        RaceType1Id)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_Master2RaceType1
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_Master2RaceType2 FOREIGN KEY(RaceType2Id) REFERENCES dbo.Master2RaceType2(
        RaceType2Id)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_Master2RaceType2
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_Master2RaceType3 FOREIGN KEY(RaceType3Id) REFERENCES dbo.Master2RaceType3(
        RaceType3Id)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_Master2RaceType3
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_Master2RaceType4 FOREIGN KEY(RaceType4Id) REFERENCES dbo.Master2RaceType4(
        RaceType4Id)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_Master2RaceType4
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_Master2RaceType5 FOREIGN KEY(RaceType5Id) REFERENCES dbo.Master2RaceType5(
        RaceType5Id)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_Master2RaceType5
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_Master2RaceType6 FOREIGN KEY(RaceType6Id) REFERENCES dbo.Master2RaceType6(
        RaceType6Id)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_Master2RaceType6
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_Master2RaceType7 FOREIGN KEY(RaceType7Id) REFERENCES dbo.Master2RaceType7(
        RaceType7Id)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_Master2RaceType7
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_Master2RaceType8 FOREIGN KEY(RaceType8Id) REFERENCES dbo.Master2RaceType8(
        RaceType8Id)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_Master2RaceType8
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_Master2RaceType9 FOREIGN KEY(RaceType9Id) REFERENCES dbo.Master2RaceType9(
        RaceType9Id)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_Master2RaceType9
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_MasterCourseKubun FOREIGN KEY(CourseKubunId) REFERENCES dbo.MasterCourseKubun(
        CourseKubunId)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_MasterCourseKubun
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_MasterCourseType FOREIGN KEY(CourseTypeId) REFERENCES dbo.MasterCourseType(
        CourseTypeId)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_MasterCourseType
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_MasterDistanceType FOREIGN KEY(DistanceTypeId) REFERENCES dbo.MasterDistanceType(
        DistanceTypeId)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_MasterDistanceType
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_MasterDistanceType2 FOREIGN KEY(DistanceType2Id) REFERENCES dbo.MasterDistanceType2(
        DistanceType2Id)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_MasterDistanceType2
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_MasterGrade FOREIGN KEY(GradeId) REFERENCES dbo.MasterGrade(
        GradeId)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_MasterGrade
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_MasterJyoken FOREIGN KEY(JyokenId) REFERENCES dbo.MasterJyoken(
        JyokenId)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_MasterJyoken
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_MasterJyoken5 FOREIGN KEY(Jyoken5Id) REFERENCES dbo.MasterJyoken5(
        Jyoken5Id)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_MasterJyoken5
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_MasterJyuryo FOREIGN KEY(JyuryoId) REFERENCES dbo.MasterJyuryo(
        JyuryoId)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_MasterJyuryo
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_MasterKigo FOREIGN KEY(KigoId) REFERENCES dbo.MasterKigo(
        KigoId)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_MasterKigo
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_MasterPlace
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_MasterSmile FOREIGN KEY(SmileId) REFERENCES dbo.MasterSmile(
        SmileId)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_MasterSmile
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_MasterSyubetu FOREIGN KEY(SyubetuId) REFERENCES dbo.MasterSyubetu(
        SyubetuId)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_MasterSyubetu
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_MasterTenko FOREIGN KEY(TenkoId) REFERENCES dbo.MasterTenko(
        TenkoId)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_MasterTenko
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_MasterTrack FOREIGN KEY(TrackId) REFERENCES dbo.MasterTrack(
        TrackId)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_MasterTrack
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_MasterTrackCondition FOREIGN KEY(TrackConditionId) REFERENCES dbo.MasterTrackCondition(
        TrackConditionId)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_MasterTrackCondition
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_MasterTrackType FOREIGN KEY(TrackTypeId) REFERENCES dbo.MasterTrackType(
        TrackTypeId)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_MasterTrackType
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_MasterTrackType2 FOREIGN KEY(TrackType2Id) REFERENCES dbo.MasterTrackType2(
        TrackType2Id)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_MasterTrackType2
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_MasterTrackType3 FOREIGN KEY(TrackType3Id) REFERENCES dbo.MasterTrackType3(
        TrackType3Id)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_MasterTrackType3
GO
ALTER TABLE dbo.Race
WITH NOCHECK
ADD CONSTRAINT FK_Race_MasterYoubi FOREIGN KEY(YoubiId) REFERENCES dbo.MasterYoubi(
        YoubiId)
GO
ALTER TABLE dbo.Race NOCHECK CONSTRAINT FK_Race_MasterYoubi
GO
ALTER TABLE dbo.RaceByCornerPosition
WITH NOCHECK
ADD CONSTRAINT FK_RaceByCornerPosition_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceByCornerPosition CHECK CONSTRAINT FK_RaceByCornerPosition_Race
GO
ALTER TABLE dbo.RaceByLapTime
WITH NOCHECK
ADD CONSTRAINT FK_RaceByLapTime_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceByLapTime CHECK CONSTRAINT FK_RaceByLapTime_Race
GO
ALTER TABLE dbo.RaceExclusion
WITH NOCHECK
ADD CONSTRAINT FK_RaceExclusion_MasterJyo FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.RaceExclusion NOCHECK CONSTRAINT FK_RaceExclusion_MasterJyo
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_Banusi FOREIGN KEY(BanusiId) REFERENCES dbo.Banusi(
        BanusiId)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_Banusi
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_Horse
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_Horse_KettoNum1 FOREIGN KEY(Finish01HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_Horse_KettoNum1
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_Horse_KettoNum2 FOREIGN KEY(Finish02HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_Horse_KettoNum2
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_Horse_KettoNum3 FOREIGN KEY(Finish03HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_Horse_KettoNum3
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_Jocky FOREIGN KEY(JockeyId) REFERENCES dbo.Jockey(
        JockeyId)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_Jocky
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_Master2Handicap FOREIGN KEY(Handicap) REFERENCES dbo.Master2Handicap(
        Handicap)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_Master2Handicap
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_Master2Ninki FOREIGN KEY(Ninki) REFERENCES dbo.Master2Ninki(
        Ninki)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_Master2Ninki
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_Master2Weight FOREIGN KEY(Weight) REFERENCES dbo.Master2Weight(
        Weight)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_Master2Weight
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_MasterChakusa FOREIGN KEY(ChakusaId) REFERENCES dbo.MasterChakusa(
        ChakusaId)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_MasterChakusa
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_MasterHinsyu FOREIGN KEY(HinsyuId) REFERENCES dbo.MasterHinsyu(
        HinsyuId)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_MasterHinsyu
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_MasterIjyo FOREIGN KEY(StatsId) REFERENCES dbo.MasterStats(
        StatsId)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_MasterIjyo
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_MasterKeiro FOREIGN KEY(KeiroId) REFERENCES dbo.MasterKeiro(
        KeiroId)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_MasterKeiro
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_MasterMinarai FOREIGN KEY(MinaraiId) REFERENCES dbo.MasterMinarai(
        MinaraiId)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_MasterMinarai
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_MasterPlace
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_MasterRunType FOREIGN KEY(RunType) REFERENCES dbo.MasterRunType(
        RunTypeId)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_MasterRunType
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_MasterSex FOREIGN KEY(SexId) REFERENCES dbo.MasterSex(
        SexId)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_MasterSex
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_MasterTozai FOREIGN KEY(TozaiId) REFERENCES dbo.MasterTozai(
        TozaiId)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_MasterTozai
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_MasterUmaban FOREIGN KEY(HorseNum) REFERENCES dbo.MasterHorseNum(
        HorseNum)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_MasterUmaban
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_MasterUmakigo FOREIGN KEY(UmaKigoId) REFERENCES dbo.MasterUmaKigo(
        UmaKigoId)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_MasterUmakigo
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_MasterWakuban FOREIGN KEY(BracketNum) REFERENCES dbo.MasterBracketNum(
        BracketNum)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_MasterWakuban
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_Race
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_Silk FOREIGN KEY(SilkId) REFERENCES dbo.Silk(
        SilkId)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_Silk
GO
ALTER TABLE dbo.RaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorse_Trainer FOREIGN KEY(TrainerId) REFERENCES dbo.Trainer(
        TrainerId)
GO
ALTER TABLE dbo.RaceHorse NOCHECK CONSTRAINT FK_RaceHorse_Trainer
GO
ALTER TABLE dbo.RaceHorseHistory
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistory_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistory NOCHECK CONSTRAINT FK_RaceHorseHistory_Horse
GO
ALTER TABLE dbo.RaceHorseHistory
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistory_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.RaceHorseHistory NOCHECK CONSTRAINT FK_RaceHorseHistory_MasterPlace
GO
ALTER TABLE dbo.RaceHorseHistory
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistory_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistory NOCHECK CONSTRAINT FK_RaceHorseHistory_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusi
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByBanusi_Banusi FOREIGN KEY(BanusiId) REFERENCES dbo.Banusi(
        BanusiId)
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusi NOCHECK CONSTRAINT FK_RaceHorseHistoryByBanusi_Banusi
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusi
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByBanusi_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusi NOCHECK CONSTRAINT FK_RaceHorseHistoryByBanusi_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusi
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByBanusi_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusi NOCHECK CONSTRAINT FK_RaceHorseHistoryByBanusi_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusi
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByBanusi_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusi CHECK CONSTRAINT FK_RaceHorseHistoryByBanusi_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusiByTotal
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByBanusiByTotal_Banusi FOREIGN KEY(BanusiId) REFERENCES dbo.Banusi(
        BanusiId)
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusiByTotal NOCHECK CONSTRAINT FK_RaceHorseHistoryByBanusiByTotal_Banusi
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusiByTotal
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByBanusiByTotal_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusiByTotal NOCHECK CONSTRAINT FK_RaceHorseHistoryByBanusiByTotal_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusiByTotal
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByBanusiByTotal_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusiByTotal NOCHECK CONSTRAINT FK_RaceHorseHistoryByBanusiByTotal_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusiByTotal
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByBanusiByTotal_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByBanusiByTotal CHECK CONSTRAINT FK_RaceHorseHistoryByBanusiByTotal_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByBreeder
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByBreeder_Breeder FOREIGN KEY(BreederId) REFERENCES dbo.Breeder(
        BreederId)
GO
ALTER TABLE dbo.RaceHorseHistoryByBreeder NOCHECK CONSTRAINT FK_RaceHorseHistoryByBreeder_Breeder
GO
ALTER TABLE dbo.RaceHorseHistoryByBreeder
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByBreeder_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByBreeder NOCHECK CONSTRAINT FK_RaceHorseHistoryByBreeder_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByBreeder
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByBreeder_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByBreeder NOCHECK CONSTRAINT FK_RaceHorseHistoryByBreeder_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByBreeder
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByBreeder_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByBreeder CHECK CONSTRAINT FK_RaceHorseHistoryByBreeder_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByBreederByTotal
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByBreederByTotal_Breeder FOREIGN KEY(BreederId) REFERENCES dbo.Breeder(
        BreederId)
GO
ALTER TABLE dbo.RaceHorseHistoryByBreederByTotal NOCHECK CONSTRAINT FK_RaceHorseHistoryByBreederByTotal_Breeder
GO
ALTER TABLE dbo.RaceHorseHistoryByBreederByTotal
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByBreederByTotal_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByBreederByTotal NOCHECK CONSTRAINT FK_RaceHorseHistoryByBreederByTotal_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByBreederByTotal
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByBreederByTotal_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByBreederByTotal NOCHECK CONSTRAINT FK_RaceHorseHistoryByBreederByTotal_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByBreederByTotal
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByBreederByTotal_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByBreederByTotal CHECK CONSTRAINT FK_RaceHorseHistoryByBreederByTotal_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorse_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorse NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorse_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByHorse
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorse_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorse NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorse_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByHorse
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorse_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByHorse CHECK CONSTRAINT FK_RaceHorseHistoryByHorse_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByCourseType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByCourseType_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByCourseType NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByCourseType_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByCourseType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByCourseType_MasterCourseType FOREIGN KEY(CourseTypeId) REFERENCES dbo.MasterCourseType(
        CourseTypeId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByCourseType NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByCourseType_MasterCourseType
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByCourseType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByCourseType_MasterTrackType FOREIGN KEY(TrackTypeId) REFERENCES dbo.MasterTrackType(
        TrackTypeId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByCourseType NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByCourseType_MasterTrackType
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByCourseType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByCourseType_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByCourseType NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByCourseType_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByCourseType
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByCourseType_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByCourseType CHECK CONSTRAINT FK_RaceHorseHistoryByHorseByCourseType_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByDistanceType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByDistanceType_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByDistanceType NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByDistanceType_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByDistanceType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByDistanceType_MasterDistanceType FOREIGN KEY(DistanceTypeId) REFERENCES dbo.MasterDistanceType(
        DistanceTypeId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByDistanceType NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByDistanceType_MasterDistanceType
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByDistanceType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByDistanceType_MasterTrackType FOREIGN KEY(TrackTypeId) REFERENCES dbo.MasterTrackType(
        TrackTypeId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByDistanceType NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByDistanceType_MasterTrackType
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByDistanceType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByDistanceType_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByDistanceType NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByDistanceType_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByDistanceType
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByDistanceType_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByDistanceType CHECK CONSTRAINT FK_RaceHorseHistoryByHorseByDistanceType_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByJyo
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByJyo_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByJyo NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByJyo_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByJyo
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByJyo_MasterJyo FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByJyo NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByJyo_MasterJyo
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByJyo
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByJyo_MasterTrackType FOREIGN KEY(TrackTypeId) REFERENCES dbo.MasterTrackType(
        TrackTypeId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByJyo NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByJyo_MasterTrackType
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByJyo
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByJyo_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByJyo NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByJyo_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByJyo
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByJyo_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByJyo CHECK CONSTRAINT FK_RaceHorseHistoryByHorseByJyo_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByRunType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByRunType_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByRunType NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByRunType_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByRunType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByRunType_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByRunType NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByRunType_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByRunType
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByRunType_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByRunType CHECK CONSTRAINT FK_RaceHorseHistoryByHorseByRunType_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTotal
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByTotal_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTotal NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByTotal_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTotal
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByTotal_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTotal NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByTotal_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTotal
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByTotal_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTotal CHECK CONSTRAINT FK_RaceHorseHistoryByHorseByTotal_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackCondition
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByTrackCondition_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackCondition NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByTrackCondition_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackCondition
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByTrackCondition_MasterTrackCondition FOREIGN KEY(TrackConditionId) REFERENCES dbo.MasterTrackCondition(
        TrackConditionId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackCondition NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByTrackCondition_MasterTrackCondition
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackCondition
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByTrackCondition_MasterTrackType FOREIGN KEY(TrackTypeId) REFERENCES dbo.MasterTrackType(
        TrackTypeId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackCondition NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByTrackCondition_MasterTrackType
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackCondition
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByTrackCondition_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackCondition NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByTrackCondition_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackCondition
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByTrackCondition_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackCondition CHECK CONSTRAINT FK_RaceHorseHistoryByHorseByTrackCondition_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByTrackType_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackType NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByTrackType_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByTrackType_MasterTrackType FOREIGN KEY(TrackTypeId) REFERENCES dbo.MasterTrackType(
        TrackTypeId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackType NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByTrackType_MasterTrackType
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByTrackType_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackType NOCHECK CONSTRAINT FK_RaceHorseHistoryByHorseByTrackType_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackType
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByHorseByTrackType_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByHorseByTrackType CHECK CONSTRAINT FK_RaceHorseHistoryByHorseByTrackType_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByJockey
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByJocky_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByJockey NOCHECK CONSTRAINT FK_RaceHorseHistoryByJocky_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByJockey
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByJocky_Jocky FOREIGN KEY(JockeyId) REFERENCES dbo.Jockey(
        JockeyId)
GO
ALTER TABLE dbo.RaceHorseHistoryByJockey NOCHECK CONSTRAINT FK_RaceHorseHistoryByJocky_Jocky
GO
ALTER TABLE dbo.RaceHorseHistoryByJockey
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByJocky_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByJockey NOCHECK CONSTRAINT FK_RaceHorseHistoryByJocky_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByJockey
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByJocky_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByJockey CHECK CONSTRAINT FK_RaceHorseHistoryByJocky_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByDistanceType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByJockeyByDistanceType_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByDistanceType NOCHECK CONSTRAINT FK_RaceHorseHistoryByJockeyByDistanceType_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByDistanceType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByJockeyByDistanceType_MasterTrackType2 FOREIGN KEY(TrackType2Id) REFERENCES dbo.MasterTrackType2(
        TrackType2Id)
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByDistanceType NOCHECK CONSTRAINT FK_RaceHorseHistoryByJockeyByDistanceType_MasterTrackType2
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByDistanceType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByJockeyByDistanceType_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByDistanceType NOCHECK CONSTRAINT FK_RaceHorseHistoryByJockeyByDistanceType_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByDistanceType
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByJockeyByDistanceType_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByDistanceType CHECK CONSTRAINT FK_RaceHorseHistoryByJockeyByDistanceType_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByJyo
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByJockeyByJyo_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByJyo NOCHECK CONSTRAINT FK_RaceHorseHistoryByJockeyByJyo_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByJyo
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByJockeyByJyo_MasterJyo FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByJyo NOCHECK CONSTRAINT FK_RaceHorseHistoryByJockeyByJyo_MasterJyo
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByJyo
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByJockeyByJyo_MasterTrackType FOREIGN KEY(TrackTypeId) REFERENCES dbo.MasterTrackType(
        TrackTypeId)
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByJyo NOCHECK CONSTRAINT FK_RaceHorseHistoryByJockeyByJyo_MasterTrackType
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByJyo
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByJockeyByJyo_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByJyo NOCHECK CONSTRAINT FK_RaceHorseHistoryByJockeyByJyo_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByJyo
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByJockeyByJyo_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByJyo CHECK CONSTRAINT FK_RaceHorseHistoryByJockeyByJyo_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByTrackType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByJockeyByTrackType_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByTrackType NOCHECK CONSTRAINT FK_RaceHorseHistoryByJockeyByTrackType_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByTrackType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByJockeyByTrackType_MasterTrackType FOREIGN KEY(TrackTypeId) REFERENCES dbo.MasterTrackType(
        TrackTypeId)
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByTrackType NOCHECK CONSTRAINT FK_RaceHorseHistoryByJockeyByTrackType_MasterTrackType
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByTrackType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByJockeyByTrackType_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByTrackType NOCHECK CONSTRAINT FK_RaceHorseHistoryByJockeyByTrackType_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByTrackType
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByJockeyByTrackType_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByJockeyByTrackType CHECK CONSTRAINT FK_RaceHorseHistoryByJockeyByTrackType_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainer
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByTrainer_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainer NOCHECK CONSTRAINT FK_RaceHorseHistoryByTrainer_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainer
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByTrainer_MasterJyo FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainer NOCHECK CONSTRAINT FK_RaceHorseHistoryByTrainer_MasterJyo
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainer
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByTrainer_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainer CHECK CONSTRAINT FK_RaceHorseHistoryByTrainer_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainer
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByTrainer_Trainer FOREIGN KEY(TrainerId) REFERENCES dbo.Trainer(
        TrainerId)
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainer NOCHECK CONSTRAINT FK_RaceHorseHistoryByTrainer_Trainer
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainer
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByTrainerRace FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainer NOCHECK CONSTRAINT FK_RaceHorseHistoryByTrainerRace
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByDistanceType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByTrainerByDistanceType_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByDistanceType NOCHECK CONSTRAINT FK_RaceHorseHistoryByTrainerByDistanceType_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByDistanceType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByTrainerByDistanceType_MasterTrackType2 FOREIGN KEY(TrackType2Id) REFERENCES dbo.MasterTrackType2(
        TrackType2Id)
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByDistanceType NOCHECK CONSTRAINT FK_RaceHorseHistoryByTrainerByDistanceType_MasterTrackType2
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByDistanceType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByTrainerByDistanceType_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByDistanceType NOCHECK CONSTRAINT FK_RaceHorseHistoryByTrainerByDistanceType_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByDistanceType
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByTrainerByDistanceType_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByDistanceType CHECK CONSTRAINT FK_RaceHorseHistoryByTrainerByDistanceType_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByJyo
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByTrainerByJyo_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByJyo NOCHECK CONSTRAINT FK_RaceHorseHistoryByTrainerByJyo_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByJyo
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByTrainerByJyo_MasterTrackType FOREIGN KEY(TrackTypeId) REFERENCES dbo.MasterTrackType(
        TrackTypeId)
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByJyo NOCHECK CONSTRAINT FK_RaceHorseHistoryByTrainerByJyo_MasterTrackType
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByJyo
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByTrainerByJyo_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByJyo NOCHECK CONSTRAINT FK_RaceHorseHistoryByTrainerByJyo_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByJyo
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByTrainerByJyo_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByJyo CHECK CONSTRAINT FK_RaceHorseHistoryByTrainerByJyo_RaceHorseHistory
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByTrackType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByTrainerByTrackType_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByTrackType NOCHECK CONSTRAINT FK_RaceHorseHistoryByTrainerByTrackType_Horse
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByTrackType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByTrainerByTrackType_MasterTrackType FOREIGN KEY(TrackTypeId) REFERENCES dbo.MasterTrackType(
        TrackTypeId)
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByTrackType NOCHECK CONSTRAINT FK_RaceHorseHistoryByTrainerByTrackType_MasterTrackType
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByTrackType
WITH NOCHECK
ADD CONSTRAINT FK_RaceHorseHistoryByTrainerByTrackType_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByTrackType NOCHECK CONSTRAINT FK_RaceHorseHistoryByTrainerByTrackType_Race
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByTrackType
WITH CHECK
ADD CONSTRAINT FK_RaceHorseHistoryByTrainerByTrackType_RaceHorseHistory FOREIGN KEY(RaceId,HorseId) REFERENCES dbo.RaceHorseHistory(
        RaceId,
        HorseId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.RaceHorseHistoryByTrainerByTrackType CHECK CONSTRAINT FK_RaceHorseHistoryByTrainerByTrackType_RaceHorseHistory
GO
ALTER TABLE dbo.RaceInfo
WITH NOCHECK
ADD CONSTRAINT FK_RaceInfo_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceInfo NOCHECK CONSTRAINT FK_RaceInfo_Race
GO
ALTER TABLE dbo.RaceRecord
WITH NOCHECK
ADD CONSTRAINT FK_RaceRecord_MasterJyo FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.RaceRecord NOCHECK CONSTRAINT FK_RaceRecord_MasterJyo
GO
ALTER TABLE dbo.RaceRecord
WITH NOCHECK
ADD CONSTRAINT FK_RaceRecord_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.RaceRecord NOCHECK CONSTRAINT FK_RaceRecord_Race
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_Master2Class FOREIGN KEY(ClassId) REFERENCES dbo.Master2Class(
        ClassId)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_Master2Class
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_Master2Distance FOREIGN KEY(DistanceId) REFERENCES dbo.Master2Distance(
        DistanceId)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_Master2Distance
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_Master2RaceType1 FOREIGN KEY(RaceType1Id) REFERENCES dbo.Master2RaceType1(
        RaceType1Id)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_Master2RaceType1
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_Master2RaceType2 FOREIGN KEY(RaceType2Id) REFERENCES dbo.Master2RaceType2(
        RaceType2Id)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_Master2RaceType2
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_Master2RaceType3 FOREIGN KEY(RaceType3Id) REFERENCES dbo.Master2RaceType3(
        RaceType3Id)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_Master2RaceType3
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_Master2RaceType4 FOREIGN KEY(RaceType4Id) REFERENCES dbo.Master2RaceType4(
        RaceType4Id)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_Master2RaceType4
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_Master2RaceType5 FOREIGN KEY(RaceType5Id) REFERENCES dbo.Master2RaceType5(
        RaceType5Id)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_Master2RaceType5
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_Master2RaceType6 FOREIGN KEY(RaceType6Id) REFERENCES dbo.Master2RaceType6(
        RaceType6Id)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_Master2RaceType6
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_Master2RaceType7 FOREIGN KEY(RaceType7Id) REFERENCES dbo.Master2RaceType7(
        RaceType7Id)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_Master2RaceType7
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_Master2RaceType8 FOREIGN KEY(RaceType8Id) REFERENCES dbo.Master2RaceType8(
        RaceType8Id)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_Master2RaceType8
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_Master2RaceType9 FOREIGN KEY(RaceType9Id) REFERENCES dbo.Master2RaceType9(
        RaceType9Id)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_Master2RaceType9
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_MasterCourseKubun FOREIGN KEY(CourseKubunId) REFERENCES dbo.MasterCourseKubun(
        CourseKubunId)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_MasterCourseKubun
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_MasterCourseType FOREIGN KEY(CourseTypeId) REFERENCES dbo.MasterCourseType(
        CourseTypeId)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_MasterCourseType
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_MasterDistanceType FOREIGN KEY(DistanceTypeId) REFERENCES dbo.MasterDistanceType(
        DistanceTypeId)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_MasterDistanceType
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_MasterDistanceType2 FOREIGN KEY(DistanceType2Id) REFERENCES dbo.MasterDistanceType2(
        DistanceType2Id)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_MasterDistanceType2
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_MasterGrade FOREIGN KEY(GradeId) REFERENCES dbo.MasterGrade(
        GradeId)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_MasterGrade
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_MasterJyoken FOREIGN KEY(JyokenId) REFERENCES dbo.MasterJyoken(
        JyokenId)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_MasterJyoken
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_MasterJyoken5 FOREIGN KEY(Jyoken5Id) REFERENCES dbo.MasterJyoken5(
        Jyoken5Id)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_MasterJyoken5
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_MasterJyuryo FOREIGN KEY(JyuryoId) REFERENCES dbo.MasterJyuryo(
        JyuryoId)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_MasterJyuryo
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_MasterKigo FOREIGN KEY(KigoId) REFERENCES dbo.MasterKigo(
        KigoId)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_MasterKigo
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_MasterPlace
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_MasterSmile FOREIGN KEY(SmileId) REFERENCES dbo.MasterSmile(
        SmileId)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_MasterSmile
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_MasterSyubetu FOREIGN KEY(SyubetuId) REFERENCES dbo.MasterSyubetu(
        SyubetuId)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_MasterSyubetu
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_MasterTenko FOREIGN KEY(TenkoId) REFERENCES dbo.MasterTenko(
        TenkoId)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_MasterTenko
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_MasterTrack FOREIGN KEY(TrackId) REFERENCES dbo.MasterTrack(
        TrackId)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_MasterTrack
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_MasterTrackCondition FOREIGN KEY(TrackConditionId) REFERENCES dbo.MasterTrackCondition(
        TrackConditionId)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_MasterTrackCondition
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_MasterTrackType FOREIGN KEY(TrackTypeId) REFERENCES dbo.MasterTrackType(
        TrackTypeId)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_MasterTrackType
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_MasterTrackType2 FOREIGN KEY(TrackType2Id) REFERENCES dbo.MasterTrackType2(
        TrackType2Id)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_MasterTrackType2
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_MasterTrackType3 FOREIGN KEY(TrackType3Id) REFERENCES dbo.MasterTrackType3(
        TrackType3Id)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_MasterTrackType3
GO
ALTER TABLE dbo.ReplRace
WITH NOCHECK
ADD CONSTRAINT FK_ReplRace_MasterYoubi FOREIGN KEY(YoubiId) REFERENCES dbo.MasterYoubi(
        YoubiId)
GO
ALTER TABLE dbo.ReplRace NOCHECK CONSTRAINT FK_ReplRace_MasterYoubi
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_Banusi FOREIGN KEY(BanusiId) REFERENCES dbo.Banusi(
        BanusiId)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_Banusi
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_Horse
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_Horse_KettoNum1 FOREIGN KEY(Finish01HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_Horse_KettoNum1
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_Horse_KettoNum2 FOREIGN KEY(Finish02HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_Horse_KettoNum2
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_Horse_KettoNum3 FOREIGN KEY(Finish03HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_Horse_KettoNum3
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_Jocky FOREIGN KEY(JockeyId) REFERENCES dbo.Jockey(
        JockeyId)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_Jocky
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_Master2Handicap FOREIGN KEY(Handicap) REFERENCES dbo.Master2Handicap(
        Handicap)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_Master2Handicap
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_Master2Ninki FOREIGN KEY(Ninki) REFERENCES dbo.Master2Ninki(
        Ninki)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_Master2Ninki
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_Master2Weight FOREIGN KEY(Weight) REFERENCES dbo.Master2Weight(
        Weight)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_Master2Weight
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_MasterChakusa FOREIGN KEY(ChakusaId) REFERENCES dbo.MasterChakusa(
        ChakusaId)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_MasterChakusa
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_MasterHinsyu FOREIGN KEY(HinsyuId) REFERENCES dbo.MasterHinsyu(
        HinsyuId)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_MasterHinsyu
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_MasterIjyo FOREIGN KEY(StatsId) REFERENCES dbo.MasterStats(
        StatsId)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_MasterIjyo
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_MasterKeiro FOREIGN KEY(KeiroId) REFERENCES dbo.MasterKeiro(
        KeiroId)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_MasterKeiro
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_MasterMinarai FOREIGN KEY(MinaraiId) REFERENCES dbo.MasterMinarai(
        MinaraiId)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_MasterMinarai
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_MasterPlace
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_MasterRunType FOREIGN KEY(RunType) REFERENCES dbo.MasterRunType(
        RunTypeId)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_MasterRunType
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_MasterSex FOREIGN KEY(SexId) REFERENCES dbo.MasterSex(
        SexId)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_MasterSex
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_MasterTozai FOREIGN KEY(TozaiId) REFERENCES dbo.MasterTozai(
        TozaiId)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_MasterTozai
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_MasterUmaban FOREIGN KEY(HorseNum) REFERENCES dbo.MasterHorseNum(
        HorseNum)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_MasterUmaban
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_MasterUmakigo FOREIGN KEY(UmaKigoId) REFERENCES dbo.MasterUmaKigo(
        UmaKigoId)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_MasterUmakigo
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_MasterWakuban FOREIGN KEY(BracketNum) REFERENCES dbo.MasterBracketNum(
        BracketNum)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_MasterWakuban
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_Race
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_Silk FOREIGN KEY(SilkId) REFERENCES dbo.Silk(
        SilkId)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_Silk
GO
ALTER TABLE dbo.ReplRaceHorse
WITH NOCHECK
ADD CONSTRAINT FK_ReplRaceHorse_Trainer FOREIGN KEY(TrainerId) REFERENCES dbo.Trainer(
        TrainerId)
GO
ALTER TABLE dbo.ReplRaceHorse NOCHECK CONSTRAINT FK_ReplRaceHorse_Trainer
GO
ALTER TABLE dbo.Sale
WITH NOCHECK
ADD CONSTRAINT FK_Sale_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.Sale NOCHECK CONSTRAINT FK_Sale_Horse
GO
ALTER TABLE dbo.Sanku
WITH NOCHECK
ADD CONSTRAINT FK_Sanku_Breeder FOREIGN KEY(BreederId) REFERENCES dbo.Breeder(
        BreederId)
GO
ALTER TABLE dbo.Sanku NOCHECK CONSTRAINT FK_Sanku_Breeder
GO
ALTER TABLE dbo.Sanku
WITH NOCHECK
ADD CONSTRAINT FK_Sanku_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.Sanku NOCHECK CONSTRAINT FK_Sanku_Horse
GO
ALTER TABLE dbo.Sanku
WITH NOCHECK
ADD CONSTRAINT FK_Sanku_MasterHinsyu FOREIGN KEY(HinsyuId) REFERENCES dbo.MasterHinsyu(
        HinsyuId)
GO
ALTER TABLE dbo.Sanku NOCHECK CONSTRAINT FK_Sanku_MasterHinsyu
GO
ALTER TABLE dbo.Sanku
WITH NOCHECK
ADD CONSTRAINT FK_Sanku_MasterKeiro FOREIGN KEY(KeiroId) REFERENCES dbo.MasterKeiro(
        KeiroId)
GO
ALTER TABLE dbo.Sanku NOCHECK CONSTRAINT FK_Sanku_MasterKeiro
GO
ALTER TABLE dbo.Schedule
WITH NOCHECK
ADD CONSTRAINT FK_Schedule_MasterGrade_Jyusyo1 FOREIGN KEY(Jyusyo1GradeId) REFERENCES dbo.MasterGrade(
        GradeId)
GO
ALTER TABLE dbo.Schedule NOCHECK CONSTRAINT FK_Schedule_MasterGrade_Jyusyo1
GO
ALTER TABLE dbo.Schedule
WITH NOCHECK
ADD CONSTRAINT FK_Schedule_MasterGrade_Jyusyo2 FOREIGN KEY(Jyusyo2GradeId) REFERENCES dbo.MasterGrade(
        GradeId)
GO
ALTER TABLE dbo.Schedule NOCHECK CONSTRAINT FK_Schedule_MasterGrade_Jyusyo2
GO
ALTER TABLE dbo.Schedule
WITH NOCHECK
ADD CONSTRAINT FK_Schedule_MasterGrade_Jyusyo3 FOREIGN KEY(Jyusyo3GradeId) REFERENCES dbo.MasterGrade(
        GradeId)
GO
ALTER TABLE dbo.Schedule NOCHECK CONSTRAINT FK_Schedule_MasterGrade_Jyusyo3
GO
ALTER TABLE dbo.Schedule
WITH NOCHECK
ADD CONSTRAINT FK_Schedule_MasterJyuryo_Jyusyo1 FOREIGN KEY(Jyusyo1JyuryoId) REFERENCES dbo.MasterJyuryo(
        JyuryoId)
GO
ALTER TABLE dbo.Schedule NOCHECK CONSTRAINT FK_Schedule_MasterJyuryo_Jyusyo1
GO
ALTER TABLE dbo.Schedule
WITH NOCHECK
ADD CONSTRAINT FK_Schedule_MasterJyuryo_Jyusyo2 FOREIGN KEY(Jyusyo2JyuryoId) REFERENCES dbo.MasterJyuryo(
        JyuryoId)
GO
ALTER TABLE dbo.Schedule NOCHECK CONSTRAINT FK_Schedule_MasterJyuryo_Jyusyo2
GO
ALTER TABLE dbo.Schedule
WITH NOCHECK
ADD CONSTRAINT FK_Schedule_MasterJyuryo_Jyusyo3 FOREIGN KEY(Jyusyo3JyuryoId) REFERENCES dbo.MasterJyuryo(
        JyuryoId)
GO
ALTER TABLE dbo.Schedule NOCHECK CONSTRAINT FK_Schedule_MasterJyuryo_Jyusyo3
GO
ALTER TABLE dbo.Schedule
WITH NOCHECK
ADD CONSTRAINT FK_Schedule_MasterKigo_Jyusyo1 FOREIGN KEY(Jyusyo1KigoId) REFERENCES dbo.MasterKigo(
        KigoId)
GO
ALTER TABLE dbo.Schedule NOCHECK CONSTRAINT FK_Schedule_MasterKigo_Jyusyo1
GO
ALTER TABLE dbo.Schedule
WITH NOCHECK
ADD CONSTRAINT FK_Schedule_MasterKigo_Jyusyo2 FOREIGN KEY(Jyusyo2KigoId) REFERENCES dbo.MasterKigo(
        KigoId)
GO
ALTER TABLE dbo.Schedule NOCHECK CONSTRAINT FK_Schedule_MasterKigo_Jyusyo2
GO
ALTER TABLE dbo.Schedule
WITH NOCHECK
ADD CONSTRAINT FK_Schedule_MasterKigo_Jyusyo3 FOREIGN KEY(Jyusyo3KigoId) REFERENCES dbo.MasterKigo(
        KigoId)
GO
ALTER TABLE dbo.Schedule NOCHECK CONSTRAINT FK_Schedule_MasterKigo_Jyusyo3
GO
ALTER TABLE dbo.Schedule
WITH NOCHECK
ADD CONSTRAINT FK_Schedule_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.Schedule NOCHECK CONSTRAINT FK_Schedule_MasterPlace
GO
ALTER TABLE dbo.Schedule
WITH NOCHECK
ADD CONSTRAINT FK_Schedule_MasterSyubetu_Jyusyo1 FOREIGN KEY(Jyusyo1SyubetuId) REFERENCES dbo.MasterSyubetu(
        SyubetuId)
GO
ALTER TABLE dbo.Schedule NOCHECK CONSTRAINT FK_Schedule_MasterSyubetu_Jyusyo1
GO
ALTER TABLE dbo.Schedule
WITH NOCHECK
ADD CONSTRAINT FK_Schedule_MasterSyubetu_Jyusyo2 FOREIGN KEY(Jyusyo2SyubetuId) REFERENCES dbo.MasterSyubetu(
        SyubetuId)
GO
ALTER TABLE dbo.Schedule NOCHECK CONSTRAINT FK_Schedule_MasterSyubetu_Jyusyo2
GO
ALTER TABLE dbo.Schedule
WITH NOCHECK
ADD CONSTRAINT FK_Schedule_MasterSyubetu_Jyusyo3 FOREIGN KEY(Jyusyo3SyubetuId) REFERENCES dbo.MasterSyubetu(
        SyubetuId)
GO
ALTER TABLE dbo.Schedule NOCHECK CONSTRAINT FK_Schedule_MasterSyubetu_Jyusyo3
GO
ALTER TABLE dbo.Schedule
WITH NOCHECK
ADD CONSTRAINT FK_Schedule_MasterTrack_Jyusyo1 FOREIGN KEY(Jyusyo1TrackId) REFERENCES dbo.MasterTrack(
        TrackId)
GO
ALTER TABLE dbo.Schedule NOCHECK CONSTRAINT FK_Schedule_MasterTrack_Jyusyo1
GO
ALTER TABLE dbo.Schedule
WITH NOCHECK
ADD CONSTRAINT FK_Schedule_MasterTrack_Jyusyo2 FOREIGN KEY(Jyusyo2TrackId) REFERENCES dbo.MasterTrack(
        TrackId)
GO
ALTER TABLE dbo.Schedule NOCHECK CONSTRAINT FK_Schedule_MasterTrack_Jyusyo2
GO
ALTER TABLE dbo.Schedule
WITH NOCHECK
ADD CONSTRAINT FK_Schedule_MasterTrack_Jyusyo3 FOREIGN KEY(Jyusyo3TrackId) REFERENCES dbo.MasterTrack(
        TrackId)
GO
ALTER TABLE dbo.Schedule NOCHECK CONSTRAINT FK_Schedule_MasterTrack_Jyusyo3
GO
ALTER TABLE dbo.SpecialRace
WITH NOCHECK
ADD CONSTRAINT FK_SpecialRace_MasterCourseKubun FOREIGN KEY(CourseKubunId) REFERENCES dbo.MasterCourseKubun(
        CourseKubunId)
GO
ALTER TABLE dbo.SpecialRace NOCHECK CONSTRAINT FK_SpecialRace_MasterCourseKubun
GO
ALTER TABLE dbo.SpecialRace
WITH NOCHECK
ADD CONSTRAINT FK_SpecialRace_MasterGrade FOREIGN KEY(GradeId) REFERENCES dbo.MasterGrade(
        GradeId)
GO
ALTER TABLE dbo.SpecialRace NOCHECK CONSTRAINT FK_SpecialRace_MasterGrade
GO
ALTER TABLE dbo.SpecialRace
WITH NOCHECK
ADD CONSTRAINT FK_SpecialRace_MasterJyoken5 FOREIGN KEY(Jyoken5Id) REFERENCES dbo.MasterJyoken5(
        Jyoken5Id)
GO
ALTER TABLE dbo.SpecialRace NOCHECK CONSTRAINT FK_SpecialRace_MasterJyoken5
GO
ALTER TABLE dbo.SpecialRace
WITH NOCHECK
ADD CONSTRAINT FK_SpecialRace_MasterJyuryo FOREIGN KEY(JyuryoId) REFERENCES dbo.MasterJyuryo(
        JyuryoId)
GO
ALTER TABLE dbo.SpecialRace NOCHECK CONSTRAINT FK_SpecialRace_MasterJyuryo
GO
ALTER TABLE dbo.SpecialRace
WITH NOCHECK
ADD CONSTRAINT FK_SpecialRace_MasterKigo FOREIGN KEY(KigoId) REFERENCES dbo.MasterKigo(
        KigoId)
GO
ALTER TABLE dbo.SpecialRace NOCHECK CONSTRAINT FK_SpecialRace_MasterKigo
GO
ALTER TABLE dbo.SpecialRace
WITH NOCHECK
ADD CONSTRAINT FK_SpecialRace_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.SpecialRace NOCHECK CONSTRAINT FK_SpecialRace_MasterPlace
GO
ALTER TABLE dbo.SpecialRace
WITH NOCHECK
ADD CONSTRAINT FK_SpecialRace_MasterSyubetu FOREIGN KEY(SyubetuId) REFERENCES dbo.MasterSyubetu(
        SyubetuId)
GO
ALTER TABLE dbo.SpecialRace NOCHECK CONSTRAINT FK_SpecialRace_MasterSyubetu
GO
ALTER TABLE dbo.SpecialRace
WITH NOCHECK
ADD CONSTRAINT FK_SpecialRace_MasterTrack FOREIGN KEY(TrackId) REFERENCES dbo.MasterTrack(
        TrackId)
GO
ALTER TABLE dbo.SpecialRace NOCHECK CONSTRAINT FK_SpecialRace_MasterTrack
GO
ALTER TABLE dbo.SpecialRace
WITH NOCHECK
ADD CONSTRAINT FK_SpecialRace_MasterYoubi FOREIGN KEY(YoubiId) REFERENCES dbo.MasterYoubi(
        YoubiId)
GO
ALTER TABLE dbo.SpecialRace NOCHECK CONSTRAINT FK_SpecialRace_MasterYoubi
GO
ALTER TABLE dbo.SpecialRace
WITH NOCHECK
ADD CONSTRAINT FK_SpecialRace_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.SpecialRace NOCHECK CONSTRAINT FK_SpecialRace_Race
GO
ALTER TABLE dbo.SpecialRaceByHorse
WITH NOCHECK
ADD CONSTRAINT FK_SpecialRaceByHorse_MasterSex FOREIGN KEY(SexId) REFERENCES dbo.MasterSex(
        SexId)
GO
ALTER TABLE dbo.SpecialRaceByHorse NOCHECK CONSTRAINT FK_SpecialRaceByHorse_MasterSex
GO
ALTER TABLE dbo.SpecialRaceByHorse
WITH NOCHECK
ADD CONSTRAINT FK_SpecialRaceByHorse_MasterTozai FOREIGN KEY(TozaiId) REFERENCES dbo.MasterTozai(
        TozaiId)
GO
ALTER TABLE dbo.SpecialRaceByHorse NOCHECK CONSTRAINT FK_SpecialRaceByHorse_MasterTozai
GO
ALTER TABLE dbo.SpecialRaceByHorse
WITH NOCHECK
ADD CONSTRAINT FK_SpecialRaceByHorse_MasterUmaKigo FOREIGN KEY(UmaKigoId) REFERENCES dbo.MasterUmaKigo(
        UmaKigoId)
GO
ALTER TABLE dbo.SpecialRaceByHorse NOCHECK CONSTRAINT FK_SpecialRaceByHorse_MasterUmaKigo
GO
ALTER TABLE dbo.SpecialRaceByHorse
WITH CHECK
ADD CONSTRAINT FK_SpecialRaceByHorse_SpecialRace FOREIGN KEY(RaceId) REFERENCES dbo.SpecialRace(
        RaceId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.SpecialRaceByHorse CHECK CONSTRAINT FK_SpecialRaceByHorse_SpecialRace
GO
ALTER TABLE dbo.SpecialRaceByHorse
WITH NOCHECK
ADD CONSTRAINT FK_SpecialRaceByHorse_Trainer FOREIGN KEY(TrainerId) REFERENCES dbo.Trainer(
        TrainerId)
GO
ALTER TABLE dbo.SpecialRaceByHorse NOCHECK CONSTRAINT FK_SpecialRaceByHorse_Trainer
GO
ALTER TABLE dbo.StatsBasicAfterRaceByRaceType1
WITH NOCHECK
ADD CONSTRAINT FK_StatsBasicAfterRaceByRaceType1_Master2RaceType1 FOREIGN KEY(RaceType1Id) REFERENCES dbo.Master2RaceType1(
        RaceType1Id)
GO
ALTER TABLE dbo.StatsBasicAfterRaceByRaceType1 NOCHECK CONSTRAINT FK_StatsBasicAfterRaceByRaceType1_Master2RaceType1
GO
ALTER TABLE dbo.StatsBasicAfterRaceHorseByRaceType1
WITH NOCHECK
ADD CONSTRAINT FK_StatsBasicAfterRaceHorseByRaceType1_Master2RaceType1 FOREIGN KEY(RaceType1Id) REFERENCES dbo.Master2RaceType1(
        RaceType1Id)
GO
ALTER TABLE dbo.StatsBasicAfterRaceHorseByRaceType1 NOCHECK CONSTRAINT FK_StatsBasicAfterRaceHorseByRaceType1_Master2RaceType1
GO
ALTER TABLE dbo.StatsBasicBeforeDmByRaceType1
WITH NOCHECK
ADD CONSTRAINT FK_StatsBasicBeforeDmByRaceType1_Master2RaceType1 FOREIGN KEY(RaceType1Id) REFERENCES dbo.Master2RaceType1(
        RaceType1Id)
GO
ALTER TABLE dbo.StatsBasicBeforeDmByRaceType1 NOCHECK CONSTRAINT FK_StatsBasicBeforeDmByRaceType1_Master2RaceType1
GO
ALTER TABLE dbo.StatsBasicBeforeOddsByRaceType1
WITH NOCHECK
ADD CONSTRAINT FK_StatsBasicBeforeOddsByRaceType1_Master2RaceType1 FOREIGN KEY(RaceType1Id) REFERENCES dbo.Master2RaceType1(
        RaceType1Id)
GO
ALTER TABLE dbo.StatsBasicBeforeOddsByRaceType1 NOCHECK CONSTRAINT FK_StatsBasicBeforeOddsByRaceType1_Master2RaceType1
GO
ALTER TABLE dbo.StatsBasicBeforeRaceByRaceType1
WITH NOCHECK
ADD CONSTRAINT FK_StatsBasicBeforeRaceByRaceType1_Master2RaceType1 FOREIGN KEY(RaceType1Id) REFERENCES dbo.Master2RaceType1(
        RaceType1Id)
GO
ALTER TABLE dbo.StatsBasicBeforeRaceByRaceType1 NOCHECK CONSTRAINT FK_StatsBasicBeforeRaceByRaceType1_Master2RaceType1
GO
ALTER TABLE dbo.StatsBasicBeforeRaceHorseByRaceType1
WITH NOCHECK
ADD CONSTRAINT FK_StatsBasicBeforeRaceHorseByRaceType1_Master2RaceType1 FOREIGN KEY(RaceType1Id) REFERENCES dbo.Master2RaceType1(
        RaceType1Id)
GO
ALTER TABLE dbo.StatsBasicBeforeRaceHorseByRaceType1 NOCHECK CONSTRAINT FK_StatsBasicBeforeRaceHorseByRaceType1_Master2RaceType1
GO
ALTER TABLE dbo.StatsPrepAfterRaceHorseByPrepRaceType1
WITH NOCHECK
ADD CONSTRAINT FK_StatsPrepAfterRaceHorseByPrepRaceType1_Master2RaceType1 FOREIGN KEY(PrepRaceType1Id) REFERENCES dbo.Master2RaceType1(
        RaceType1Id)
GO
ALTER TABLE dbo.StatsPrepAfterRaceHorseByPrepRaceType1 NOCHECK CONSTRAINT FK_StatsPrepAfterRaceHorseByPrepRaceType1_Master2RaceType1
GO
ALTER TABLE dbo.StatsPrepBeforeRaceHorseByRaceType1
WITH NOCHECK
ADD CONSTRAINT FK_StatsPrepBeforeRaceHorseByRaceType1_Master2RaceType1 FOREIGN KEY(RaceType1Id) REFERENCES dbo.Master2RaceType1(
        RaceType1Id)
GO
ALTER TABLE dbo.StatsPrepBeforeRaceHorseByRaceType1 NOCHECK CONSTRAINT FK_StatsPrepBeforeRaceHorseByRaceType1_Master2RaceType1
GO
ALTER TABLE dbo.Trainer
WITH NOCHECK
ADD CONSTRAINT FK_Trainer_MasterSex FOREIGN KEY(SexId) REFERENCES dbo.MasterSex(
        SexId)
GO
ALTER TABLE dbo.Trainer NOCHECK CONSTRAINT FK_Trainer_MasterSex
GO
ALTER TABLE dbo.Trainer
WITH NOCHECK
ADD CONSTRAINT FK_Trainer_MasterTozai FOREIGN KEY(TozaiId) REFERENCES dbo.MasterTozai(
        TozaiId)
GO
ALTER TABLE dbo.Trainer NOCHECK CONSTRAINT FK_Trainer_MasterTozai
GO
ALTER TABLE dbo.TrainerByDistanceType
WITH NOCHECK
ADD CONSTRAINT FK_TrainerByDistanceType_MasterDistanceType2 FOREIGN KEY(DistanceType2Id) REFERENCES dbo.MasterDistanceType2(
        DistanceType2Id)
GO
ALTER TABLE dbo.TrainerByDistanceType NOCHECK CONSTRAINT FK_TrainerByDistanceType_MasterDistanceType2
GO
ALTER TABLE dbo.TrainerByDistanceType
WITH NOCHECK
ADD CONSTRAINT FK_TrainerByDistanceType_MasterTrackType2 FOREIGN KEY(TrackType2Id) REFERENCES dbo.MasterTrackType2(
        TrackType2Id)
GO
ALTER TABLE dbo.TrainerByDistanceType NOCHECK CONSTRAINT FK_TrainerByDistanceType_MasterTrackType2
GO
ALTER TABLE dbo.TrainerByDistanceType
WITH NOCHECK
ADD CONSTRAINT FK_TrainerByDistanceType_Trainer FOREIGN KEY(TrainerId) REFERENCES dbo.Trainer(
        TrainerId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.TrainerByDistanceType CHECK CONSTRAINT FK_TrainerByDistanceType_Trainer
GO
ALTER TABLE dbo.TrainerByTotal
WITH NOCHECK
ADD CONSTRAINT FK_TrainerByTotal_MasterTrackType3 FOREIGN KEY(TrackType3Id) REFERENCES dbo.MasterTrackType3(
        TrackType3Id)
GO
ALTER TABLE dbo.TrainerByTotal NOCHECK CONSTRAINT FK_TrainerByTotal_MasterTrackType3
GO
ALTER TABLE dbo.TrainerByTotal
WITH NOCHECK
ADD CONSTRAINT FK_TrainerByTotal_Trainer FOREIGN KEY(TrainerId) REFERENCES dbo.Trainer(
        TrainerId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.TrainerByTotal CHECK CONSTRAINT FK_TrainerByTotal_Trainer
GO
ALTER TABLE dbo.TrainerByTrackType
WITH NOCHECK
ADD CONSTRAINT FK_TrainerByTrackType_MasterJyo FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.TrainerByTrackType NOCHECK CONSTRAINT FK_TrainerByTrackType_MasterJyo
GO
ALTER TABLE dbo.TrainerByTrackType
WITH NOCHECK
ADD CONSTRAINT FK_TrainerByTrackType_MasterTrackType3 FOREIGN KEY(TrackType3Id) REFERENCES dbo.MasterTrackType3(
        TrackType3Id)
GO
ALTER TABLE dbo.TrainerByTrackType NOCHECK CONSTRAINT FK_TrainerByTrackType_MasterTrackType3
GO
ALTER TABLE dbo.TrainerByTrackType
WITH NOCHECK
ADD CONSTRAINT FK_TrainerByTrackType_Trainer FOREIGN KEY(TrainerId) REFERENCES dbo.Trainer(
        TrainerId) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.TrainerByTrackType CHECK CONSTRAINT FK_TrainerByTrackType_Trainer
GO
ALTER TABLE dbo.TrainingSlope
WITH NOCHECK
ADD CONSTRAINT FK_TrainingSlope_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.TrainingSlope NOCHECK CONSTRAINT FK_TrainingSlope_Horse
GO
ALTER TABLE dbo.TrainingWoodChip
WITH NOCHECK
ADD CONSTRAINT FK_TrainingWoodChip_Horse FOREIGN KEY(HorseId) REFERENCES dbo.Horse(
        HorseId)
GO
ALTER TABLE dbo.TrainingWoodChip NOCHECK CONSTRAINT FK_TrainingWoodChip_Horse
GO
ALTER TABLE dbo.WinFiveByPay
WITH NOCHECK
ADD CONSTRAINT FK_WinFiveByPay_MasterUmaban_1 FOREIGN KEY(Kumiban1) REFERENCES dbo.MasterHorseNum(
        HorseNum)
GO
ALTER TABLE dbo.WinFiveByPay NOCHECK CONSTRAINT FK_WinFiveByPay_MasterUmaban_1
GO
ALTER TABLE dbo.WinFiveByPay
WITH NOCHECK
ADD CONSTRAINT FK_WinFiveByPay_MasterUmaban_2 FOREIGN KEY(Kumiban2) REFERENCES dbo.MasterHorseNum(
        HorseNum)
GO
ALTER TABLE dbo.WinFiveByPay NOCHECK CONSTRAINT FK_WinFiveByPay_MasterUmaban_2
GO
ALTER TABLE dbo.WinFiveByPay
WITH NOCHECK
ADD CONSTRAINT FK_WinFiveByPay_MasterUmaban_3 FOREIGN KEY(Kumiban3) REFERENCES dbo.MasterHorseNum(
        HorseNum)
GO
ALTER TABLE dbo.WinFiveByPay NOCHECK CONSTRAINT FK_WinFiveByPay_MasterUmaban_3
GO
ALTER TABLE dbo.WinFiveByPay
WITH NOCHECK
ADD CONSTRAINT FK_WinFiveByPay_MasterUmaban_4 FOREIGN KEY(Kumiban4) REFERENCES dbo.MasterHorseNum(
        HorseNum)
GO
ALTER TABLE dbo.WinFiveByPay NOCHECK CONSTRAINT FK_WinFiveByPay_MasterUmaban_4
GO
ALTER TABLE dbo.WinFiveByPay
WITH NOCHECK
ADD CONSTRAINT FK_WinFiveByPay_MasterUmaban_5 FOREIGN KEY(Kumiban5) REFERENCES dbo.MasterHorseNum(
        HorseNum)
GO
ALTER TABLE dbo.WinFiveByPay NOCHECK CONSTRAINT FK_WinFiveByPay_MasterUmaban_5
GO
ALTER TABLE dbo.WinFiveByPay
WITH NOCHECK
ADD CONSTRAINT FK_WinFiveByPay_WinFive FOREIGN KEY(RaceDate) REFERENCES dbo.WinFive(
        RaceDate) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.WinFiveByPay CHECK CONSTRAINT FK_WinFiveByPay_WinFive
GO
ALTER TABLE dbo.WinFiveByRace
WITH NOCHECK
ADD CONSTRAINT FK_WinFiveByRace_MasterPlace FOREIGN KEY(PlaceId) REFERENCES dbo.MasterPlace(
        PlaceId)
GO
ALTER TABLE dbo.WinFiveByRace NOCHECK CONSTRAINT FK_WinFiveByRace_MasterPlace
GO
ALTER TABLE dbo.WinFiveByRace
WITH NOCHECK
ADD CONSTRAINT FK_WinFiveByRace_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.WinFiveByRace NOCHECK CONSTRAINT FK_WinFiveByRace_Race
GO
ALTER TABLE dbo.WinFiveByRace
WITH NOCHECK
ADD CONSTRAINT FK_WinFiveByRace_WinFive FOREIGN KEY(RaceDate) REFERENCES dbo.WinFive(
        RaceDate) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.WinFiveByRace NOCHECK CONSTRAINT FK_WinFiveByRace_WinFive
GO
ALTER TABLE dbo.WinFiveByYuko
WITH NOCHECK
ADD CONSTRAINT FK_WinFiveByYuko_WinFive FOREIGN KEY(RaceDate) REFERENCES dbo.WinFive(
        RaceDate) ON UPDATE CASCADE ON DELETE CASCADE
GO
ALTER TABLE dbo.WinFiveByYuko CHECK CONSTRAINT FK_WinFiveByYuko_WinFive
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_EventAvoid_InsertUpdate ON dbo.EventAvoid
AFTER INSERT,UPDATE
AS
    BEGIN
        UPDATE   RaceHorse
            SET      
            StatsId = Inserted.DataKubun,
            Timestamp01 = GETDATE()
            FROM RaceHorse
                  INNER JOIN Inserted
                      ON RaceHorse.RaceId = Inserted.RaceId
                         AND RaceHorse.HorseNum = inserted.HorseNum
    END
GO
ALTER TABLE dbo.EventAvoid ENABLE TRIGGER 
        Ut_EventAvoid_InsertUpdate
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_EventCourseChange_InsertUpdate ON dbo.EventCourseChange
AFTER INSERT,UPDATE
AS
    BEGIN
        UPDATE   Race
            SET      
            Distance = Inserted.Distance,
            TrackId = Inserted.TrackId,
            DistanceBefore = Inserted.DistanceBefore,
            TrackIdBefore = Inserted.TrackIdBefore,
            Timestamp01 = GETDATE()
            FROM Race
                  INNER JOIN Inserted
                      ON Race.RaceId = Inserted.RaceId
    END
GO
ALTER TABLE dbo.EventCourseChange ENABLE TRIGGER 
        Ut_EventCourseChange_InsertUpdate
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_EventHorseWeight_InsertUpdate ON dbo.EventHorseWeight
AFTER INSERT,UPDATE
AS
    BEGIN
        UPDATE   RaceHorse
            SET      
            Weight = Inserted.Weight,
            WeightDelta = Inserted.WeightDelta,
            Timestamp01 = GETDATE()
            FROM RaceHorse
                  INNER JOIN Inserted
                      ON RaceHorse.RaceId = Inserted.RaceId
                         AND RaceHorse.HorseNum = inserted.HorseNum
    END
GO
ALTER TABLE dbo.EventHorseWeight ENABLE TRIGGER 
        Ut_EventHorseWeight_InsertUpdate
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_EventJockeyChange_InsertUpdate ON dbo.EventJockeyChange
AFTER INSERT,UPDATE
AS
    BEGIN
        UPDATE   RaceHorse
            SET      
            Handicap = Inserted.Handicap,
            JockeyId = Inserted.JockeyId,
            MinaraiId = Inserted.MinaraiId,
            HandicapBefore = Inserted.HandicapBefore,
            JockeyIdBefore = Inserted.JockeyIdBefore,
            MinaraiIdBefore = Inserted.MinaraiIdBefore,
            Timestamp01 = GETDATE()
            FROM RaceHorse
                  INNER JOIN Inserted
                      ON RaceHorse.RaceId = Inserted.RaceId
                         AND RaceHorse.HorseNum = Inserted.HorseNum
        UPDATE   RaceHorse
            SET      
            JockeyRyakusyo = Jockey.JockeyRyakusyo,
            Timestamp01 = GETDATE()
            FROM RaceHorse
                  INNER JOIN Inserted
                      ON RaceHorse.RaceId = Inserted.RaceId
                         AND RaceHorse.HorseNum = Inserted.HorseNum
                  INNER JOIN Jockey
                      ON RaceHorse.JockeyId = Jockey.JockeyId
        UPDATE   RaceHorse
            SET      
            JockeyRyakusyoBefore = Jockey.JockeyRyakusyo,
            Timestamp01 = GETDATE()
            FROM RaceHorse
                  INNER JOIN Inserted
                      ON RaceHorse.RaceId = Inserted.RaceId
                         AND RaceHorse.HorseNum = Inserted.HorseNum
                  INNER JOIN Jockey
                      ON RaceHorse.JockeyIdBefore = Jockey.JockeyId
    END
GO
ALTER TABLE dbo.EventJockeyChange ENABLE TRIGGER 
        Ut_EventJockeyChange_InsertUpdate
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_EventTimeChange_InsertUpdate ON dbo.EventTimeChange
AFTER INSERT,UPDATE
AS
    BEGIN
        UPDATE   Race
            SET      
            StartTime = Inserted.StartTime,
            StartTimeBefore = Inserted.StartTimeBefore,
            Timestamp01 = GETDATE()
            FROM Race
                  INNER JOIN Inserted
                      ON Race.RaceId = Inserted.RaceId
    END
GO
ALTER TABLE dbo.EventTimeChange ENABLE TRIGGER 
        Ut_EventTimeChange_InsertUpdate
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_EventWeather_InsertUpdate ON dbo.EventWeather
AFTER INSERT,UPDATE
AS
    BEGIN
        UPDATE   Race
            SET      
            TenkoId = Inserted.TenkoId,
            SibaBabaId = Inserted.SibaBabaId,
            DirtBabaId = Inserted.DirtBabaId,
            Timestamp01 = GETDATE()
            FROM Race
                  INNER JOIN Inserted
                      ON Race.RaceDayId = Inserted.RaceDayId
            WHERE  
                Inserted.HenkoId = 1
        UPDATE   Race
            SET      
            TenkoId = Inserted.TenkoId,
            Timestamp01 = GETDATE()
            FROM Race
                  INNER JOIN Inserted
                      ON Race.RaceDayId = Inserted.RaceDayId
            WHERE  
                Inserted.HenkoId = 2
        UPDATE   Race
            SET      
            SibaBabaId = Inserted.SibaBabaId,
            DirtBabaId = Inserted.DirtBabaId,
            Timestamp01 = GETDATE()
            FROM Race
                  INNER JOIN Inserted
                      ON Race.RaceDayId = Inserted.RaceDayId
            WHERE  
                Inserted.HenkoId = 3
        --TenkoIdBefore = Inserted.TenkoIdBefore,
        --SibaBabaIdBefore = Inserted.SibaBabaIdBefore,
        --DirtBabaIdBefore = Inserted.DirtBabaIdBefore,
    END
GO
ALTER TABLE dbo.EventWeather ENABLE TRIGGER 
        Ut_EventWeather_InsertUpdate
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_Hansyoku_Delete ON dbo.Hansyoku
AFTER DELETE
AS
    BEGIN
        SET NOCOUNT ON
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        BEGIN TRANSACTION
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.HansyokuParents
            FROM dbo.HansyokuParents
                  INNER JOIN DELETED
                      ON DELETED.HansyokuId = HansyokuParents.HansyokuId
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        COMMIT TRANSACTION
    END
GO
ALTER TABLE dbo.Hansyoku DISABLE TRIGGER 
        Ut_Hansyoku_Delete
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_Hansyoku_Insert ON dbo.Hansyoku
AFTER INSERT
AS
    BEGIN
        SET NOCOUNT ON
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        BEGIN TRANSACTION
        --------------------------------------------------------------------------------
        -- INSERT
        --------------------------------------------------------------------------------
        INSERT INTO dbo.HansyokuParents
           (
                HansyokuId,
                ParentsHansyokuId,
                SexId,
                Timestamp01
           )
        SELECT   
                Hansyoku.HansyokuId,
                Hansyoku.MaleHansyokuId,
                '1',
                GETDATE()
            FROM
                dbo.Hansyoku
                  INNER JOIN INSERTED
                      ON INSERTED.HansyokuId = Hansyoku.HansyokuId
            WHERE Hansyoku.MaleHansyokuId IS NOT NULL
        --------------------------------------------------------------------------------
        -- INSERT
        --------------------------------------------------------------------------------
        INSERT INTO dbo.HansyokuParents
           (
                HansyokuId,
                ParentsHansyokuId,
                SexId,
                Timestamp01
           )
        SELECT   
                Hansyoku.HansyokuId,
                Hansyoku.FemaleHansyokuId,
                '2',
                GETDATE()
            FROM
                dbo.Hansyoku
                  INNER JOIN INSERTED
                      ON INSERTED.HansyokuId = Hansyoku.HansyokuId
            WHERE Hansyoku.FemaleHansyokuId IS NOT NULL
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        COMMIT TRANSACTION
    END
GO
ALTER TABLE dbo.Hansyoku DISABLE TRIGGER 
        Ut_Hansyoku_Insert
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_OddsByBracket_Delete ON dbo.OddsByBracket
AFTER DELETE
AS
    BEGIN
        SET NOCOUNT ON
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        BEGIN TRANSACTION
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.PredictByBracket
            FROM dbo.PredictByBracket
                  INNER JOIN DELETED
                      ON DELETED.RaceId = PredictByBracket.RaceId
                         AND DELETED.BetTypeId = PredictByBracket.BetTypeId
                         AND DELETED.Kumi1 = PredictByBracket.Kumi1
                         AND DELETED.Kumi2 = PredictByBracket.Kumi2
                         AND DELETED.Kumi3 = PredictByBracket.Kumi3
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        COMMIT TRANSACTION
    END
GO
ALTER TABLE dbo.OddsByBracket DISABLE TRIGGER 
        Ut_OddsByBracket_Delete
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_OddsByBracket_Insert ON dbo.OddsByBracket
AFTER INSERT
AS
    BEGIN
        SET NOCOUNT ON
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        BEGIN TRANSACTION
        --------------------------------------------------------------------------------
        -- INSERT
        --------------------------------------------------------------------------------
        INSERT INTO dbo.PredictByBracket
           (
                RaceId,
                BetTypeId,
                Kumi1,
                Kumi2,
                Kumi3,
                Timestamp01
           )
        SELECT  
                INSERTED.RaceId,
                INSERTED.BetTypeId,
                INSERTED.Kumi1,
                INSERTED.Kumi2,
                INSERTED.Kumi3,
                GETDATE()
            FROM INSERTED
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        COMMIT TRANSACTION
    END
GO
ALTER TABLE dbo.OddsByBracket DISABLE TRIGGER 
        Ut_OddsByBracket_Insert
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_OddsByExacta_Delete ON dbo.OddsByExacta
AFTER DELETE
AS
    BEGIN
        SET NOCOUNT ON
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        BEGIN TRANSACTION
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.PredictByExacta
            FROM dbo.PredictByExacta
                  INNER JOIN DELETED
                      ON DELETED.RaceId = PredictByExacta.RaceId
                         AND DELETED.BetTypeId = PredictByExacta.BetTypeId
                         AND DELETED.Kumi1 = PredictByExacta.Kumi1
                         AND DELETED.Kumi2 = PredictByExacta.Kumi2
                         AND DELETED.Kumi3 = PredictByExacta.Kumi3
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        COMMIT TRANSACTION
    END
GO
ALTER TABLE dbo.OddsByExacta DISABLE TRIGGER 
        Ut_OddsByExacta_Delete
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_OddsByExacta_Insert ON dbo.OddsByExacta
AFTER INSERT
AS
    BEGIN
        SET NOCOUNT ON
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        BEGIN TRANSACTION
        --------------------------------------------------------------------------------
        -- INSERT
        --------------------------------------------------------------------------------
        INSERT INTO dbo.PredictByExacta
           (
                RaceId,
                BetTypeId,
                Kumi1,
                Kumi2,
                Kumi3,
                Timestamp01
           )
        SELECT  
                INSERTED.RaceId,
                INSERTED.BetTypeId,
                INSERTED.Kumi1,
                INSERTED.Kumi2,
                INSERTED.Kumi3,
                GETDATE()
            FROM INSERTED
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        COMMIT TRANSACTION
    END
GO
ALTER TABLE dbo.OddsByExacta DISABLE TRIGGER 
        Ut_OddsByExacta_Insert
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_OddsByPlace_Delete ON dbo.OddsByPlace
AFTER DELETE
AS
    BEGIN
        SET NOCOUNT ON
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        BEGIN TRANSACTION
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.PredictByPlace
            FROM dbo.PredictByPlace
                  INNER JOIN DELETED
                      ON DELETED.RaceId = PredictByPlace.RaceId
                         AND DELETED.BetTypeId = PredictByPlace.BetTypeId
                         AND DELETED.Kumi1 = PredictByPlace.Kumi1
                         AND DELETED.Kumi2 = PredictByPlace.Kumi2
                         AND DELETED.Kumi3 = PredictByPlace.Kumi3
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        COMMIT TRANSACTION
    END
GO
ALTER TABLE dbo.OddsByPlace DISABLE TRIGGER 
        Ut_OddsByPlace_Delete
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_OddsByPlace_Insert ON dbo.OddsByPlace
AFTER INSERT
AS
    BEGIN
        SET NOCOUNT ON
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        BEGIN TRANSACTION
        --------------------------------------------------------------------------------
        -- INSERT
        --------------------------------------------------------------------------------
        INSERT INTO dbo.PredictByPlace
           (
                RaceId,
                BetTypeId,
                Kumi1,
                Kumi2,
                Kumi3,
                Timestamp01
           )
        SELECT  
                INSERTED.RaceId,
                INSERTED.BetTypeId,
                INSERTED.Kumi1,
                INSERTED.Kumi2,
                INSERTED.Kumi3,
                GETDATE()
            FROM INSERTED
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        COMMIT TRANSACTION
    END
GO
ALTER TABLE dbo.OddsByPlace DISABLE TRIGGER 
        Ut_OddsByPlace_Insert
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_OddsByQuinella_Delete ON dbo.OddsByQuinella
AFTER DELETE
AS
    BEGIN
        SET NOCOUNT ON
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        BEGIN TRANSACTION
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.PredictByQuinella
            FROM dbo.PredictByQuinella
                  INNER JOIN DELETED
                      ON DELETED.RaceId = PredictByQuinella.RaceId
                         AND DELETED.BetTypeId = PredictByQuinella.BetTypeId
                         AND DELETED.Kumi1 = PredictByQuinella.Kumi1
                         AND DELETED.Kumi2 = PredictByQuinella.Kumi2
                         AND DELETED.Kumi3 = PredictByQuinella.Kumi3
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        COMMIT TRANSACTION
    END
GO
ALTER TABLE dbo.OddsByQuinella DISABLE TRIGGER 
        Ut_OddsByQuinella_Delete
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_OddsByQuinella_Insert ON dbo.OddsByQuinella
AFTER INSERT
AS
    BEGIN
        SET NOCOUNT ON
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        BEGIN TRANSACTION
        --------------------------------------------------------------------------------
        -- INSERT
        --------------------------------------------------------------------------------
        INSERT INTO dbo.PredictByQuinella
           (
                RaceId,
                BetTypeId,
                Kumi1,
                Kumi2,
                Kumi3,
                Timestamp01
           )
        SELECT  
                INSERTED.RaceId,
                INSERTED.BetTypeId,
                INSERTED.Kumi1,
                INSERTED.Kumi2,
                INSERTED.Kumi3,
                GETDATE()
            FROM INSERTED
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        COMMIT TRANSACTION
    END
GO
ALTER TABLE dbo.OddsByQuinella DISABLE TRIGGER 
        Ut_OddsByQuinella_Insert
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_OddsByTrifecta_Delete ON dbo.OddsByTrifecta
AFTER DELETE
AS
    BEGIN
        SET NOCOUNT ON
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        BEGIN TRANSACTION
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.PredictByTrifecta
            FROM dbo.PredictByTrifecta
                  INNER JOIN DELETED
                      ON DELETED.RaceId = PredictByTrifecta.RaceId
                         AND DELETED.BetTypeId = PredictByTrifecta.BetTypeId
                         AND DELETED.Kumi1 = PredictByTrifecta.Kumi1
                         AND DELETED.Kumi2 = PredictByTrifecta.Kumi2
                         AND DELETED.Kumi3 = PredictByTrifecta.Kumi3
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        COMMIT TRANSACTION
    END
GO
ALTER TABLE dbo.OddsByTrifecta DISABLE TRIGGER 
        Ut_OddsByTrifecta_Delete
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_OddsByTrifecta_Insert ON dbo.OddsByTrifecta
AFTER INSERT
AS
    BEGIN
        SET NOCOUNT ON
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        BEGIN TRANSACTION
        --------------------------------------------------------------------------------
        -- INSERT
        --------------------------------------------------------------------------------
        INSERT INTO dbo.PredictByTrifecta
           (
                RaceId,
                BetTypeId,
                Kumi1,
                Kumi2,
                Kumi3,
                Timestamp01
           )
        SELECT  
                INSERTED.RaceId,
                INSERTED.BetTypeId,
                INSERTED.Kumi1,
                INSERTED.Kumi2,
                INSERTED.Kumi3,
                GETDATE()
            FROM INSERTED
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        COMMIT TRANSACTION
    END
GO
ALTER TABLE dbo.OddsByTrifecta DISABLE TRIGGER 
        Ut_OddsByTrifecta_Insert
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_OddsByTrio_Delete ON dbo.OddsByTrio
AFTER DELETE
AS
    BEGIN
        SET NOCOUNT ON
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        BEGIN TRANSACTION
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.PredictByTrio
            FROM dbo.PredictByTrio
                  INNER JOIN DELETED
                      ON DELETED.RaceId = PredictByTrio.RaceId
                         AND DELETED.BetTypeId = PredictByTrio.BetTypeId
                         AND DELETED.Kumi1 = PredictByTrio.Kumi1
                         AND DELETED.Kumi2 = PredictByTrio.Kumi2
                         AND DELETED.Kumi3 = PredictByTrio.Kumi3
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        COMMIT TRANSACTION
    END
GO
ALTER TABLE dbo.OddsByTrio DISABLE TRIGGER 
        Ut_OddsByTrio_Delete
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_OddsByTrio_Insert ON dbo.OddsByTrio
AFTER INSERT
AS
    BEGIN
        SET NOCOUNT ON
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        BEGIN TRANSACTION
        --------------------------------------------------------------------------------
        -- INSERT
        --------------------------------------------------------------------------------
        INSERT INTO dbo.PredictByTrio
           (
                RaceId,
                BetTypeId,
                Kumi1,
                Kumi2,
                Kumi3,
                Timestamp01
           )
        SELECT  
                INSERTED.RaceId,
                INSERTED.BetTypeId,
                INSERTED.Kumi1,
                INSERTED.Kumi2,
                INSERTED.Kumi3,
                GETDATE()
            FROM INSERTED
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        COMMIT TRANSACTION
    END
GO
ALTER TABLE dbo.OddsByTrio DISABLE TRIGGER 
        Ut_OddsByTrio_Insert
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_OddsByWide_Delete ON dbo.OddsByWide
AFTER DELETE
AS
    BEGIN
        SET NOCOUNT ON
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        BEGIN TRANSACTION
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.PredictByWide
            FROM dbo.PredictByWide
                  INNER JOIN DELETED
                      ON DELETED.RaceId = PredictByWide.RaceId
                         AND DELETED.BetTypeId = PredictByWide.BetTypeId
                         AND DELETED.Kumi1 = PredictByWide.Kumi1
                         AND DELETED.Kumi2 = PredictByWide.Kumi2
                         AND DELETED.Kumi3 = PredictByWide.Kumi3
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        COMMIT TRANSACTION
    END
GO
ALTER TABLE dbo.OddsByWide DISABLE TRIGGER 
        Ut_OddsByWide_Delete
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_OddsByWide_Insert ON dbo.OddsByWide
AFTER INSERT
AS
    BEGIN
        SET NOCOUNT ON
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        BEGIN TRANSACTION
        --------------------------------------------------------------------------------
        -- INSERT
        --------------------------------------------------------------------------------
        INSERT INTO dbo.PredictByWide
           (
                RaceId,
                BetTypeId,
                Kumi1,
                Kumi2,
                Kumi3,
                Timestamp01
           )
        SELECT  
                INSERTED.RaceId,
                INSERTED.BetTypeId,
                INSERTED.Kumi1,
                INSERTED.Kumi2,
                INSERTED.Kumi3,
                GETDATE()
            FROM INSERTED
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        COMMIT TRANSACTION
    END
GO
ALTER TABLE dbo.OddsByWide DISABLE TRIGGER 
        Ut_OddsByWide_Insert
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_OddsByWin_Delete ON dbo.OddsByWin
AFTER DELETE
AS
    BEGIN
        SET NOCOUNT ON
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        BEGIN TRANSACTION
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.PredictByWin
            FROM dbo.PredictByWin
                  INNER JOIN DELETED
                      ON DELETED.RaceId = PredictByWin.RaceId
                         AND DELETED.BetTypeId = PredictByWin.BetTypeId
                         AND DELETED.Kumi1 = PredictByWin.Kumi1
                         AND DELETED.Kumi2 = PredictByWin.Kumi2
                         AND DELETED.Kumi3 = PredictByWin.Kumi3
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        COMMIT TRANSACTION
    END
GO
ALTER TABLE dbo.OddsByWin DISABLE TRIGGER 
        Ut_OddsByWin_Delete
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_OddsByWin_Insert ON dbo.OddsByWin
AFTER INSERT
AS
    BEGIN
        SET NOCOUNT ON
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        BEGIN TRANSACTION
        --------------------------------------------------------------------------------
        -- INSERT
        --------------------------------------------------------------------------------
        INSERT INTO dbo.PredictByWin
           (
                RaceId,
                BetTypeId,
                Kumi1,
                Kumi2,
                Kumi3,
                Timestamp01
           )
        SELECT  
                INSERTED.RaceId,
                INSERTED.BetTypeId,
                INSERTED.Kumi1,
                INSERTED.Kumi2,
                INSERTED.Kumi3,
                GETDATE()
            FROM INSERTED
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        COMMIT TRANSACTION
    END
GO
ALTER TABLE dbo.OddsByWin DISABLE TRIGGER 
        Ut_OddsByWin_Insert
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER dbo.Ut_RaceHorseHistory_Delete_Manual ON dbo.RaceHorseHistory
AFTER DELETE
AS
    BEGIN
        SET NOCOUNT ON
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        BEGIN TRANSACTION
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByBanusi
            FROM dbo.RaceHorseHistoryByBanusi
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByBanusi.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByBanusi.HorseId
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByBanusiByTotal
            FROM dbo.RaceHorseHistoryByBanusiByTotal
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByBanusiByTotal.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByBanusiByTotal.HorseId
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByBreeder
            FROM dbo.RaceHorseHistoryByBreeder
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByBreeder.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByBreeder.HorseId
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByBreederByTotal
            FROM dbo.RaceHorseHistoryByBreederByTotal
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByBreederByTotal.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByBreederByTotal.HorseId
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByHorse
            FROM dbo.RaceHorseHistoryByHorse
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByHorse.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByHorse.HorseId
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByHorseByCourseType
            FROM dbo.RaceHorseHistoryByHorseByCourseType
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByHorseByCourseType.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByHorseByCourseType.HorseId
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByHorseByDistanceType
            FROM dbo.RaceHorseHistoryByHorseByDistanceType
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByHorseByDistanceType.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByHorseByDistanceType.HorseId
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByHorseByJyo
            FROM dbo.RaceHorseHistoryByHorseByJyo
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByHorseByJyo.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByHorseByJyo.HorseId
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByHorseByRunType
            FROM dbo.RaceHorseHistoryByHorseByRunType
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByHorseByRunType.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByHorseByRunType.HorseId
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByHorseByTotal
            FROM dbo.RaceHorseHistoryByHorseByTotal
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByHorseByTotal.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByHorseByTotal.HorseId
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByHorseByTrackCondition
            FROM dbo.RaceHorseHistoryByHorseByTrackCondition
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByHorseByTrackCondition.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByHorseByTrackCondition.HorseId
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByHorseByTrackType
            FROM dbo.RaceHorseHistoryByHorseByTrackType
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByHorseByTrackType.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByHorseByTrackType.HorseId
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByJockey
            FROM dbo.RaceHorseHistoryByJockey
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByJockey.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByJockey.HorseId
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByJockeyByDistanceType
            FROM dbo.RaceHorseHistoryByJockeyByDistanceType
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByJockeyByDistanceType.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByJockeyByDistanceType.HorseId
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByJockeyByJyo
            FROM dbo.RaceHorseHistoryByJockeyByJyo
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByJockeyByJyo.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByJockeyByJyo.HorseId
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByJockeyByTrackType
            FROM dbo.RaceHorseHistoryByJockeyByTrackType
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByJockeyByTrackType.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByJockeyByTrackType.HorseId
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByTrainer
            FROM dbo.RaceHorseHistoryByTrainer
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByTrainer.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByTrainer.HorseId
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByTrainerByDistanceType
            FROM dbo.RaceHorseHistoryByTrainerByDistanceType
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByTrainerByDistanceType.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByTrainerByDistanceType.HorseId
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByTrainerByJyo
            FROM dbo.RaceHorseHistoryByTrainerByJyo
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByTrainerByJyo.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByTrainerByJyo.HorseId
        --------------------------------------------------------------------------------
        -- DELETE
        --------------------------------------------------------------------------------
        DELETE dbo.RaceHorseHistoryByTrainerByTrackType
            FROM dbo.RaceHorseHistoryByTrainerByTrackType
                  INNER JOIN DELETED
                      ON DELETED.RaceId = RaceHorseHistoryByTrainerByTrackType.RaceId
                         AND DELETED.HorseId = RaceHorseHistoryByTrainerByTrackType.HorseId
        --------------------------------------------------------------------------------
        -- TRANSACTION
        --------------------------------------------------------------------------------
        COMMIT TRANSACTION
    END
GO
ALTER TABLE dbo.RaceHorseHistory ENABLE TRIGGER 
        Ut_RaceHorseHistory_Delete_Manual
GO
EXEC sys.sp_addextendedproperty 
    @Name = N'MS_Description',
    @Value = N'加入者番号',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'Id'
GO
EXEC sys.sp_addextendedproperty 
    @Name = N'MS_Description',
    @Value = N'ユーザー番号',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'InetId'
GO
EXEC sys.sp_addextendedproperty 
    @Name = N'MS_Description',
    @Value = N'ユーザー番号',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'UserNo'
GO
EXEC sys.sp_addextendedproperty 
    @Name = N'MS_Description',
    @Value = N'暗証番号',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'PassNo'
GO
EXEC sys.sp_addextendedproperty 
    @Name = N'MS_Description',
    @Value = N'PARS番号',
    @Level0type = N'SCHEMA',
    @Level0name = N'dbo',
    @Level1type = N'TABLE',
    @Level1name = N'ConfigIpatAccount',
    @Level2type = N'COLUMN',
    @Level2name = N'ParsNo'
GO