USE [Jackpot_33328_Backup]
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
ALTER TABLE dbo.PredictByWin DROP CONSTRAINT FK_PredictByWin_Race
GO
ALTER TABLE dbo.PredictByWin DROP CONSTRAINT FK_PredictByWin_MasterBetType
GO
ALTER TABLE dbo.PredictByWide DROP CONSTRAINT FK_PredictByWide_Race
GO
ALTER TABLE dbo.PredictByWide DROP CONSTRAINT FK_PredictByWide_MasterBetType
GO
ALTER TABLE dbo.PredictByTrio DROP CONSTRAINT FK_PredictByTrio_Race
GO
ALTER TABLE dbo.PredictByTrio DROP CONSTRAINT FK_PredictByTrio_MasterBetType
GO
ALTER TABLE dbo.PredictByTrifecta DROP CONSTRAINT FK_PredictByTrifecta_Race
GO
ALTER TABLE dbo.PredictByTrifecta DROP CONSTRAINT FK_PredictByTrifecta_MasterBetType
GO
ALTER TABLE dbo.PredictByQuinella DROP CONSTRAINT FK_PredictByQuinella_Race
GO
ALTER TABLE dbo.PredictByQuinella DROP CONSTRAINT FK_PredictByQuinella_MasterBetType
GO
ALTER TABLE dbo.PredictByPlace DROP CONSTRAINT FK_PredictByPlace_Race
GO
ALTER TABLE dbo.PredictByPlace DROP CONSTRAINT FK_PredictByPlace_MasterBetType
GO
ALTER TABLE dbo.PredictByExacta DROP CONSTRAINT FK_PredictByExacta_Race
GO
ALTER TABLE dbo.PredictByExacta DROP CONSTRAINT FK_PredictByExacta_MasterBetType
GO
ALTER TABLE dbo.PredictByBracket DROP CONSTRAINT FK_PredictByBracket_MasterBetType
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
ALTER TABLE dbo.OddsByWide DROP CONSTRAINT FK_OddsByWide_Race
GO
ALTER TABLE dbo.OddsByWide DROP CONSTRAINT FK_OddsByWide_Odds3
GO
ALTER TABLE dbo.OddsByWide DROP CONSTRAINT FK_OddsByWide_MasterPlace
GO
ALTER TABLE dbo.OddsByWide DROP CONSTRAINT FK_OddsByWide_MasterBetType
GO
ALTER TABLE dbo.OddsByTrio DROP CONSTRAINT FK_OddsByTrio_Race
GO
ALTER TABLE dbo.OddsByTrio DROP CONSTRAINT FK_OddsByTrio_Odds5
GO
ALTER TABLE dbo.OddsByTrio DROP CONSTRAINT FK_OddsByTrio_MasterPlace
GO
ALTER TABLE dbo.OddsByTrio DROP CONSTRAINT FK_OddsByTrio_MasterBetType
GO
ALTER TABLE dbo.OddsByTrifecta DROP CONSTRAINT FK_OddsByTrifecta_Race
GO
ALTER TABLE dbo.OddsByTrifecta DROP CONSTRAINT FK_OddsByTrifecta_Odds6
GO
ALTER TABLE dbo.OddsByTrifecta DROP CONSTRAINT FK_OddsByTrifecta_MasterPlace
GO
ALTER TABLE dbo.OddsByTrifecta DROP CONSTRAINT FK_OddsByTrifecta_MasterBetType
GO
ALTER TABLE dbo.OddsByQuinella DROP CONSTRAINT FK_OddsByQuinella_Race
GO
ALTER TABLE dbo.OddsByQuinella DROP CONSTRAINT FK_OddsByQuinella_Odds2
GO
ALTER TABLE dbo.OddsByQuinella DROP CONSTRAINT FK_OddsByQuinella_MasterPlace
GO
ALTER TABLE dbo.OddsByQuinella DROP CONSTRAINT FK_OddsByQuinella_MasterBetType
GO
ALTER TABLE dbo.OddsByPlace DROP CONSTRAINT FK_OddsByPlace_Race
GO
ALTER TABLE dbo.OddsByPlace DROP CONSTRAINT FK_OddsByPlace_Odds1
GO
ALTER TABLE dbo.OddsByPlace DROP CONSTRAINT FK_OddsByPlace_MasterPlace
GO
ALTER TABLE dbo.OddsByPlace DROP CONSTRAINT FK_OddsByPlace_MasterBetType
GO
ALTER TABLE dbo.OddsByExacta DROP CONSTRAINT FK_OddsByExacta_Race
GO
ALTER TABLE dbo.OddsByExacta DROP CONSTRAINT FK_OddsByExacta_Odds4
GO
ALTER TABLE dbo.OddsByExacta DROP CONSTRAINT FK_OddsByExacta_MasterPlace
GO
ALTER TABLE dbo.OddsByExacta DROP CONSTRAINT FK_OddsByExacta_MasterBetType
GO
ALTER TABLE dbo.OddsByBracket DROP CONSTRAINT FK_OddsByBracket_Race
GO
ALTER TABLE dbo.OddsByBracket DROP CONSTRAINT FK_OddsByBracket_Odds1
GO
ALTER TABLE dbo.OddsByBracket DROP CONSTRAINT FK_OddsByBracket_MasterPlace
GO
ALTER TABLE dbo.OddsByBracket DROP CONSTRAINT FK_OddsByBracket_MasterBetType
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
ALTER TABLE dbo.ConfigRoi_001 DROP CONSTRAINT FK_ConfigRoi_MasterBetType
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
-----------------------------
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
ALTER TABLE dbo.ConfigRoi_001
WITH NOCHECK
ADD CONSTRAINT FK_ConfigRoi_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.ConfigRoi_001 NOCHECK CONSTRAINT FK_ConfigRoi_MasterBetType
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
ALTER TABLE dbo.PredictByBracket
WITH NOCHECK
ADD CONSTRAINT FK_PredictByBracket_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.PredictByBracket NOCHECK CONSTRAINT FK_PredictByBracket_MasterBetType
GO
ALTER TABLE dbo.PredictByExacta
WITH NOCHECK
ADD CONSTRAINT FK_PredictByExacta_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.PredictByExacta NOCHECK CONSTRAINT FK_PredictByExacta_MasterBetType
GO
ALTER TABLE dbo.PredictByExacta
WITH NOCHECK
ADD CONSTRAINT FK_PredictByExacta_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PredictByExacta NOCHECK CONSTRAINT FK_PredictByExacta_Race
GO
ALTER TABLE dbo.PredictByPlace
WITH NOCHECK
ADD CONSTRAINT FK_PredictByPlace_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.PredictByPlace NOCHECK CONSTRAINT FK_PredictByPlace_MasterBetType
GO
ALTER TABLE dbo.PredictByPlace
WITH NOCHECK
ADD CONSTRAINT FK_PredictByPlace_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PredictByPlace NOCHECK CONSTRAINT FK_PredictByPlace_Race
GO
ALTER TABLE dbo.PredictByQuinella
WITH NOCHECK
ADD CONSTRAINT FK_PredictByQuinella_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.PredictByQuinella NOCHECK CONSTRAINT FK_PredictByQuinella_MasterBetType
GO
ALTER TABLE dbo.PredictByQuinella
WITH NOCHECK
ADD CONSTRAINT FK_PredictByQuinella_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PredictByQuinella NOCHECK CONSTRAINT FK_PredictByQuinella_Race
GO
ALTER TABLE dbo.PredictByTrifecta
WITH NOCHECK
ADD CONSTRAINT FK_PredictByTrifecta_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.PredictByTrifecta NOCHECK CONSTRAINT FK_PredictByTrifecta_MasterBetType
GO
ALTER TABLE dbo.PredictByTrifecta
WITH NOCHECK
ADD CONSTRAINT FK_PredictByTrifecta_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PredictByTrifecta NOCHECK CONSTRAINT FK_PredictByTrifecta_Race
GO
ALTER TABLE dbo.PredictByTrio
WITH NOCHECK
ADD CONSTRAINT FK_PredictByTrio_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.PredictByTrio NOCHECK CONSTRAINT FK_PredictByTrio_MasterBetType
GO
ALTER TABLE dbo.PredictByTrio
WITH NOCHECK
ADD CONSTRAINT FK_PredictByTrio_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PredictByTrio NOCHECK CONSTRAINT FK_PredictByTrio_Race
GO
ALTER TABLE dbo.PredictByWide
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWide_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.PredictByWide NOCHECK CONSTRAINT FK_PredictByWide_MasterBetType
GO
ALTER TABLE dbo.PredictByWide
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWide_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PredictByWide NOCHECK CONSTRAINT FK_PredictByWide_Race
GO
ALTER TABLE dbo.PredictByWin
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWin_MasterBetType FOREIGN KEY(BetTypeId) REFERENCES dbo.MasterBetType(
        BetTypeId)
GO
ALTER TABLE dbo.PredictByWin NOCHECK CONSTRAINT FK_PredictByWin_MasterBetType
GO
ALTER TABLE dbo.PredictByWin
WITH NOCHECK
ADD CONSTRAINT FK_PredictByWin_Race FOREIGN KEY(RaceId) REFERENCES dbo.Race(
        RaceId)
GO
ALTER TABLE dbo.PredictByWin NOCHECK CONSTRAINT FK_PredictByWin_Race
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
ALTER TABLE dbo.Hansyoku ENABLE TRIGGER 
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
ALTER TABLE dbo.Hansyoku ENABLE TRIGGER 
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
            FROM 
                INSERTED
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
            FROM 
                INSERTED
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
            FROM 
                INSERTED
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
            FROM 
                INSERTED
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
            FROM 
                INSERTED
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
            FROM 
                INSERTED
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
            FROM 
                INSERTED
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
            FROM 
                INSERTED
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