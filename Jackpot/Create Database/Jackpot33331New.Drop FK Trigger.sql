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
