USE [Jackpot33330New]
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfigIpatAccount', @level2type=N'COLUMN',@level2name=N'ParsNo'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfigIpatAccount', @level2type=N'COLUMN',@level2name=N'PassNo'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfigIpatAccount', @level2type=N'COLUMN',@level2name=N'UserNo'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfigIpatAccount', @level2type=N'COLUMN',@level2name=N'InetId'
GO
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfigIpatAccount', @level2type=N'COLUMN',@level2name=N'Id'
GO
DROP TRIGGER [dbo].[Ut_RaceHorseHistory_Delete_Manual]
GO
DROP TRIGGER [dbo].[Ut_OddsByWin_Insert]
GO
DROP TRIGGER [dbo].[Ut_OddsByWin_Delete]
GO
DROP TRIGGER [dbo].[Ut_OddsByWide_Insert]
GO
DROP TRIGGER [dbo].[Ut_OddsByWide_Delete]
GO
DROP TRIGGER [dbo].[Ut_OddsByTrio_Insert]
GO
DROP TRIGGER [dbo].[Ut_OddsByTrio_Delete]
GO
DROP TRIGGER [dbo].[Ut_OddsByTrifecta_Insert]
GO
DROP TRIGGER [dbo].[Ut_OddsByTrifecta_Delete]
GO
DROP TRIGGER [dbo].[Ut_OddsByQuinella_Insert]
GO
DROP TRIGGER [dbo].[Ut_OddsByQuinella_Delete]
GO
DROP TRIGGER [dbo].[Ut_OddsByPlace_Insert]
GO
DROP TRIGGER [dbo].[Ut_OddsByPlace_Delete]
GO
DROP TRIGGER [dbo].[Ut_OddsByExacta_Insert]
GO
DROP TRIGGER [dbo].[Ut_OddsByExacta_Delete]
GO
DROP TRIGGER [dbo].[Ut_OddsByBracket_Insert]
GO
DROP TRIGGER [dbo].[Ut_OddsByBracket_Delete]
GO
DROP TRIGGER [dbo].[Ut_Hansyoku_Insert]
GO
DROP TRIGGER [dbo].[Ut_Hansyoku_Delete]
GO
DROP TRIGGER [dbo].[Ut_EventWeather_InsertUpdate]
GO
DROP TRIGGER [dbo].[Ut_EventTimeChange_InsertUpdate]
GO
DROP TRIGGER [dbo].[Ut_EventJockeyChange_InsertUpdate]
GO
DROP TRIGGER [dbo].[Ut_EventHorseWeight_InsertUpdate]
GO
DROP TRIGGER [dbo].[Ut_EventCourseChange_InsertUpdate]
GO
DROP TRIGGER [dbo].[Ut_EventAvoid_InsertUpdate]
GO
ALTER TABLE [dbo].[WinFiveByYuko] DROP CONSTRAINT [FK_WinFiveByYuko_WinFive]
GO
ALTER TABLE [dbo].[WinFiveByRace] DROP CONSTRAINT [FK_WinFiveByRace_WinFive]
GO
ALTER TABLE [dbo].[WinFiveByRace] DROP CONSTRAINT [FK_WinFiveByRace_Race]
GO
ALTER TABLE [dbo].[WinFiveByRace] DROP CONSTRAINT [FK_WinFiveByRace_MasterPlace]
GO
ALTER TABLE [dbo].[WinFiveByPay] DROP CONSTRAINT [FK_WinFiveByPay_WinFive]
GO
ALTER TABLE [dbo].[WinFiveByPay] DROP CONSTRAINT [FK_WinFiveByPay_MasterUmaban_5]
GO
ALTER TABLE [dbo].[WinFiveByPay] DROP CONSTRAINT [FK_WinFiveByPay_MasterUmaban_4]
GO
ALTER TABLE [dbo].[WinFiveByPay] DROP CONSTRAINT [FK_WinFiveByPay_MasterUmaban_3]
GO
ALTER TABLE [dbo].[WinFiveByPay] DROP CONSTRAINT [FK_WinFiveByPay_MasterUmaban_2]
GO
ALTER TABLE [dbo].[WinFiveByPay] DROP CONSTRAINT [FK_WinFiveByPay_MasterUmaban_1]
GO
ALTER TABLE [dbo].[TrainingWoodChip] DROP CONSTRAINT [FK_TrainingWoodChip_Horse]
GO
ALTER TABLE [dbo].[TrainingSlope] DROP CONSTRAINT [FK_TrainingSlope_Horse]
GO
ALTER TABLE [dbo].[TrainerByTrackType] DROP CONSTRAINT [FK_TrainerByTrackType_Trainer]
GO
ALTER TABLE [dbo].[TrainerByTrackType] DROP CONSTRAINT [FK_TrainerByTrackType_MasterTrackType3]
GO
ALTER TABLE [dbo].[TrainerByTrackType] DROP CONSTRAINT [FK_TrainerByTrackType_MasterJyo]
GO
ALTER TABLE [dbo].[TrainerByTotal] DROP CONSTRAINT [FK_TrainerByTotal_Trainer]
GO
ALTER TABLE [dbo].[TrainerByTotal] DROP CONSTRAINT [FK_TrainerByTotal_MasterTrackType3]
GO
ALTER TABLE [dbo].[TrainerByDistanceType] DROP CONSTRAINT [FK_TrainerByDistanceType_Trainer]
GO
ALTER TABLE [dbo].[TrainerByDistanceType] DROP CONSTRAINT [FK_TrainerByDistanceType_MasterTrackType2]
GO
ALTER TABLE [dbo].[TrainerByDistanceType] DROP CONSTRAINT [FK_TrainerByDistanceType_MasterDistanceType2]
GO
ALTER TABLE [dbo].[Trainer] DROP CONSTRAINT [FK_Trainer_MasterTozai]
GO
ALTER TABLE [dbo].[Trainer] DROP CONSTRAINT [FK_Trainer_MasterSex]
GO
ALTER TABLE [dbo].[StatsPrepBeforeRaceHorseByRaceType1] DROP CONSTRAINT [FK_StatsPrepBeforeRaceHorseByRaceType1_Master2RaceType1]
GO
ALTER TABLE [dbo].[StatsPrepAfterRaceHorseByPrepRaceType1] DROP CONSTRAINT [FK_StatsPrepAfterRaceHorseByPrepRaceType1_Master2RaceType1]
GO
ALTER TABLE [dbo].[StatsBasicBeforeRaceHorseByRaceType1] DROP CONSTRAINT [FK_StatsBasicBeforeRaceHorseByRaceType1_Master2RaceType1]
GO
ALTER TABLE [dbo].[StatsBasicBeforeRaceByRaceType1] DROP CONSTRAINT [FK_StatsBasicBeforeRaceByRaceType1_Master2RaceType1]
GO
ALTER TABLE [dbo].[StatsBasicBeforeOddsByRaceType1] DROP CONSTRAINT [FK_StatsBasicBeforeOddsByRaceType1_Master2RaceType1]
GO
ALTER TABLE [dbo].[StatsBasicBeforeDmByRaceType1] DROP CONSTRAINT [FK_StatsBasicBeforeDmByRaceType1_Master2RaceType1]
GO
ALTER TABLE [dbo].[StatsBasicAfterRaceHorseByRaceType1] DROP CONSTRAINT [FK_StatsBasicAfterRaceHorseByRaceType1_Master2RaceType1]
GO
ALTER TABLE [dbo].[StatsBasicAfterRaceByRaceType1] DROP CONSTRAINT [FK_StatsBasicAfterRaceByRaceType1_Master2RaceType1]
GO
ALTER TABLE [dbo].[SpecialRaceByHorse] DROP CONSTRAINT [FK_SpecialRaceByHorse_Trainer]
GO
ALTER TABLE [dbo].[SpecialRaceByHorse] DROP CONSTRAINT [FK_SpecialRaceByHorse_SpecialRace]
GO
ALTER TABLE [dbo].[SpecialRaceByHorse] DROP CONSTRAINT [FK_SpecialRaceByHorse_MasterUmaKigo]
GO
ALTER TABLE [dbo].[SpecialRaceByHorse] DROP CONSTRAINT [FK_SpecialRaceByHorse_MasterTozai]
GO
ALTER TABLE [dbo].[SpecialRaceByHorse] DROP CONSTRAINT [FK_SpecialRaceByHorse_MasterSex]
GO
ALTER TABLE [dbo].[SpecialRace] DROP CONSTRAINT [FK_SpecialRace_Race]
GO
ALTER TABLE [dbo].[SpecialRace] DROP CONSTRAINT [FK_SpecialRace_MasterYoubi]
GO
ALTER TABLE [dbo].[SpecialRace] DROP CONSTRAINT [FK_SpecialRace_MasterTrack]
GO
ALTER TABLE [dbo].[SpecialRace] DROP CONSTRAINT [FK_SpecialRace_MasterSyubetu]
GO
ALTER TABLE [dbo].[SpecialRace] DROP CONSTRAINT [FK_SpecialRace_MasterPlace]
GO
ALTER TABLE [dbo].[SpecialRace] DROP CONSTRAINT [FK_SpecialRace_MasterKigo]
GO
ALTER TABLE [dbo].[SpecialRace] DROP CONSTRAINT [FK_SpecialRace_MasterJyuryo]
GO
ALTER TABLE [dbo].[SpecialRace] DROP CONSTRAINT [FK_SpecialRace_MasterJyoken5]
GO
ALTER TABLE [dbo].[SpecialRace] DROP CONSTRAINT [FK_SpecialRace_MasterGrade]
GO
ALTER TABLE [dbo].[SpecialRace] DROP CONSTRAINT [FK_SpecialRace_MasterCourseKubun]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_MasterTrack_Jyusyo3]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_MasterTrack_Jyusyo2]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_MasterTrack_Jyusyo1]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_MasterSyubetu_Jyusyo3]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_MasterSyubetu_Jyusyo2]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_MasterSyubetu_Jyusyo1]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_MasterPlace]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_MasterKigo_Jyusyo3]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_MasterKigo_Jyusyo2]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_MasterKigo_Jyusyo1]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_MasterJyuryo_Jyusyo3]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_MasterJyuryo_Jyusyo2]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_MasterJyuryo_Jyusyo1]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_MasterGrade_Jyusyo3]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_MasterGrade_Jyusyo2]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [FK_Schedule_MasterGrade_Jyusyo1]
GO
ALTER TABLE [dbo].[Sanku] DROP CONSTRAINT [FK_Sanku_MasterKeiro]
GO
ALTER TABLE [dbo].[Sanku] DROP CONSTRAINT [FK_Sanku_MasterHinsyu]
GO
ALTER TABLE [dbo].[Sanku] DROP CONSTRAINT [FK_Sanku_Horse]
GO
ALTER TABLE [dbo].[Sanku] DROP CONSTRAINT [FK_Sanku_Breeder]
GO
ALTER TABLE [dbo].[Sale] DROP CONSTRAINT [FK_Sale_Horse]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_Trainer]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_Silk]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_Race]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_MasterWakuban]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_MasterUmakigo]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_MasterUmaban]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_MasterTozai]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_MasterSex]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_MasterRunType]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_MasterPlace]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_MasterMinarai]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_MasterKeiro]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_MasterIjyo]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_MasterHinsyu]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_MasterChakusa]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_Master2Weight]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_Master2Ninki]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_Master2Handicap]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_Jocky]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_Horse_KettoNum3]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_Horse_KettoNum2]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_Horse_KettoNum1]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_Horse]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [FK_ReplRaceHorse_Banusi]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_MasterYoubi]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_MasterTrackType3]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_MasterTrackType2]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_MasterTrackType]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_MasterTrackCondition]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_MasterTrack]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_MasterTenko]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_MasterSyubetu]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_MasterSmile]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_MasterPlace]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_MasterKigo]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_MasterJyuryo]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_MasterJyoken5]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_MasterJyoken]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_MasterGrade]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_MasterDistanceType2]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_MasterDistanceType]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_MasterCourseType]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_MasterCourseKubun]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_Master2RaceType9]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_Master2RaceType8]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_Master2RaceType7]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_Master2RaceType6]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_Master2RaceType5]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_Master2RaceType4]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_Master2RaceType3]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_Master2RaceType2]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_Master2RaceType1]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_Master2Distance]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [FK_ReplRace_Master2Class]
GO
ALTER TABLE [dbo].[RaceRecord] DROP CONSTRAINT [FK_RaceRecord_Race]
GO
ALTER TABLE [dbo].[RaceRecord] DROP CONSTRAINT [FK_RaceRecord_MasterJyo]
GO
ALTER TABLE [dbo].[RaceInfo] DROP CONSTRAINT [FK_RaceInfo_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByTrackType] DROP CONSTRAINT [FK_RaceHorseHistoryByTrainerByTrackType_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByTrackType] DROP CONSTRAINT [FK_RaceHorseHistoryByTrainerByTrackType_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByTrackType] DROP CONSTRAINT [FK_RaceHorseHistoryByTrainerByTrackType_MasterTrackType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByTrackType] DROP CONSTRAINT [FK_RaceHorseHistoryByTrainerByTrackType_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByJyo] DROP CONSTRAINT [FK_RaceHorseHistoryByTrainerByJyo_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByJyo] DROP CONSTRAINT [FK_RaceHorseHistoryByTrainerByJyo_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByJyo] DROP CONSTRAINT [FK_RaceHorseHistoryByTrainerByJyo_MasterTrackType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByJyo] DROP CONSTRAINT [FK_RaceHorseHistoryByTrainerByJyo_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByDistanceType] DROP CONSTRAINT [FK_RaceHorseHistoryByTrainerByDistanceType_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByDistanceType] DROP CONSTRAINT [FK_RaceHorseHistoryByTrainerByDistanceType_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByDistanceType] DROP CONSTRAINT [FK_RaceHorseHistoryByTrainerByDistanceType_MasterTrackType2]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByDistanceType] DROP CONSTRAINT [FK_RaceHorseHistoryByTrainerByDistanceType_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainer] DROP CONSTRAINT [FK_RaceHorseHistoryByTrainerRace]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainer] DROP CONSTRAINT [FK_RaceHorseHistoryByTrainer_Trainer]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainer] DROP CONSTRAINT [FK_RaceHorseHistoryByTrainer_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainer] DROP CONSTRAINT [FK_RaceHorseHistoryByTrainer_MasterJyo]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainer] DROP CONSTRAINT [FK_RaceHorseHistoryByTrainer_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByTrackType] DROP CONSTRAINT [FK_RaceHorseHistoryByJockeyByTrackType_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByTrackType] DROP CONSTRAINT [FK_RaceHorseHistoryByJockeyByTrackType_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByTrackType] DROP CONSTRAINT [FK_RaceHorseHistoryByJockeyByTrackType_MasterTrackType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByTrackType] DROP CONSTRAINT [FK_RaceHorseHistoryByJockeyByTrackType_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByJyo] DROP CONSTRAINT [FK_RaceHorseHistoryByJockeyByJyo_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByJyo] DROP CONSTRAINT [FK_RaceHorseHistoryByJockeyByJyo_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByJyo] DROP CONSTRAINT [FK_RaceHorseHistoryByJockeyByJyo_MasterTrackType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByJyo] DROP CONSTRAINT [FK_RaceHorseHistoryByJockeyByJyo_MasterJyo]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByJyo] DROP CONSTRAINT [FK_RaceHorseHistoryByJockeyByJyo_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByDistanceType] DROP CONSTRAINT [FK_RaceHorseHistoryByJockeyByDistanceType_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByDistanceType] DROP CONSTRAINT [FK_RaceHorseHistoryByJockeyByDistanceType_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByDistanceType] DROP CONSTRAINT [FK_RaceHorseHistoryByJockeyByDistanceType_MasterTrackType2]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByDistanceType] DROP CONSTRAINT [FK_RaceHorseHistoryByJockeyByDistanceType_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockey] DROP CONSTRAINT [FK_RaceHorseHistoryByJocky_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockey] DROP CONSTRAINT [FK_RaceHorseHistoryByJocky_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockey] DROP CONSTRAINT [FK_RaceHorseHistoryByJocky_Jocky]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockey] DROP CONSTRAINT [FK_RaceHorseHistoryByJocky_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackType] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackType_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackType] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackType_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackType] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackType_MasterTrackType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackType] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackType_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackCondition] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackCondition_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackCondition] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackCondition_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackCondition] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackCondition_MasterTrackType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackCondition] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackCondition_MasterTrackCondition]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackCondition] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackCondition_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTotal] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByTotal_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTotal] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByTotal_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTotal] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByTotal_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByRunType] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByRunType_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByRunType] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByRunType_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByRunType] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByRunType_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByJyo] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByJyo_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByJyo] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByJyo_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByJyo] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByJyo_MasterTrackType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByJyo] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByJyo_MasterJyo]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByJyo] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByJyo_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByDistanceType] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByDistanceType_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByDistanceType] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByDistanceType_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByDistanceType] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByDistanceType_MasterTrackType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByDistanceType] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByDistanceType_MasterDistanceType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByDistanceType] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByDistanceType_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByCourseType] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByCourseType_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByCourseType] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByCourseType_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByCourseType] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByCourseType_MasterTrackType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByCourseType] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByCourseType_MasterCourseType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByCourseType] DROP CONSTRAINT [FK_RaceHorseHistoryByHorseByCourseType_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorse] DROP CONSTRAINT [FK_RaceHorseHistoryByHorse_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorse] DROP CONSTRAINT [FK_RaceHorseHistoryByHorse_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorse] DROP CONSTRAINT [FK_RaceHorseHistoryByHorse_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreederByTotal] DROP CONSTRAINT [FK_RaceHorseHistoryByBreederByTotal_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreederByTotal] DROP CONSTRAINT [FK_RaceHorseHistoryByBreederByTotal_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreederByTotal] DROP CONSTRAINT [FK_RaceHorseHistoryByBreederByTotal_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreederByTotal] DROP CONSTRAINT [FK_RaceHorseHistoryByBreederByTotal_Breeder]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreeder] DROP CONSTRAINT [FK_RaceHorseHistoryByBreeder_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreeder] DROP CONSTRAINT [FK_RaceHorseHistoryByBreeder_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreeder] DROP CONSTRAINT [FK_RaceHorseHistoryByBreeder_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreeder] DROP CONSTRAINT [FK_RaceHorseHistoryByBreeder_Breeder]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusiByTotal] DROP CONSTRAINT [FK_RaceHorseHistoryByBanusiByTotal_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusiByTotal] DROP CONSTRAINT [FK_RaceHorseHistoryByBanusiByTotal_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusiByTotal] DROP CONSTRAINT [FK_RaceHorseHistoryByBanusiByTotal_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusiByTotal] DROP CONSTRAINT [FK_RaceHorseHistoryByBanusiByTotal_Banusi]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusi] DROP CONSTRAINT [FK_RaceHorseHistoryByBanusi_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusi] DROP CONSTRAINT [FK_RaceHorseHistoryByBanusi_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusi] DROP CONSTRAINT [FK_RaceHorseHistoryByBanusi_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusi] DROP CONSTRAINT [FK_RaceHorseHistoryByBanusi_Banusi]
GO
ALTER TABLE [dbo].[RaceHorseHistory] DROP CONSTRAINT [FK_RaceHorseHistory_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistory] DROP CONSTRAINT [FK_RaceHorseHistory_MasterPlace]
GO
ALTER TABLE [dbo].[RaceHorseHistory] DROP CONSTRAINT [FK_RaceHorseHistory_Horse]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_Trainer]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_Silk]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_Race]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_MasterWakuban]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_MasterUmakigo]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_MasterUmaban]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_MasterTozai]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_MasterSex]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_MasterRunType]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_MasterPlace]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_MasterMinarai]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_MasterKeiro]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_MasterIjyo]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_MasterHinsyu]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_MasterChakusa]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_Master2Weight]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_Master2Ninki]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_Master2Handicap]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_Jocky]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_Horse_KettoNum3]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_Horse_KettoNum2]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_Horse_KettoNum1]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_Horse]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [FK_RaceHorse_Banusi]
GO
ALTER TABLE [dbo].[RaceExclusion] DROP CONSTRAINT [FK_RaceExclusion_MasterJyo]
GO
ALTER TABLE [dbo].[RaceByLapTime] DROP CONSTRAINT [FK_RaceByLapTime_Race]
GO
ALTER TABLE [dbo].[RaceByCornerPosition] DROP CONSTRAINT [FK_RaceByCornerPosition_Race]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_MasterYoubi]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_MasterTrackType3]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_MasterTrackType2]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_MasterTrackType]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_MasterTrackCondition]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_MasterTrack]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_MasterTenko]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_MasterSyubetu]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_MasterSmile]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_MasterPlace]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_MasterKigo]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_MasterJyuryo]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_MasterJyoken5]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_MasterJyoken]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_MasterGrade]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_MasterDistanceType2]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_MasterDistanceType]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_MasterCourseType]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_MasterCourseKubun]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_Master2RaceType9]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_Master2RaceType8]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_Master2RaceType7]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_Master2RaceType6]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_Master2RaceType5]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_Master2RaceType4]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_Master2RaceType3]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_Master2RaceType2]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_Master2RaceType1]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_Master2Distance]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [FK_Race_Master2Class]
GO
ALTER TABLE [dbo].[PredictByWinFive] DROP CONSTRAINT [FK_PredictByWinFive_Race5]
GO
ALTER TABLE [dbo].[PredictByWinFive] DROP CONSTRAINT [FK_PredictByWinFive_Race4]
GO
ALTER TABLE [dbo].[PredictByWinFive] DROP CONSTRAINT [FK_PredictByWinFive_Race3]
GO
ALTER TABLE [dbo].[PredictByWinFive] DROP CONSTRAINT [FK_PredictByWinFive_Race2]
GO
ALTER TABLE [dbo].[PredictByWinFive] DROP CONSTRAINT [FK_PredictByWinFive_Race1]
GO
ALTER TABLE [dbo].[PredictByWinFive] DROP CONSTRAINT [FK_PredictByWinFive_MasterBetType]
GO
ALTER TABLE [dbo].[PredictByWin] DROP CONSTRAINT [FK_PredictByWin_Race]
GO
ALTER TABLE [dbo].[PredictByWin] DROP CONSTRAINT [FK_PredictByWin_MasterBetType]
GO
ALTER TABLE [dbo].[PredictByWide] DROP CONSTRAINT [FK_PredictByWide_Race]
GO
ALTER TABLE [dbo].[PredictByWide] DROP CONSTRAINT [FK_PredictByWide_MasterBetType]
GO
ALTER TABLE [dbo].[PredictByTrio] DROP CONSTRAINT [FK_PredictByTrio_Race]
GO
ALTER TABLE [dbo].[PredictByTrio] DROP CONSTRAINT [FK_PredictByTrio_MasterBetType]
GO
ALTER TABLE [dbo].[PredictByTrifecta] DROP CONSTRAINT [FK_PredictByTrifecta_Race]
GO
ALTER TABLE [dbo].[PredictByTrifecta] DROP CONSTRAINT [FK_PredictByTrifecta_MasterBetType]
GO
ALTER TABLE [dbo].[PredictByQuinella] DROP CONSTRAINT [FK_PredictByQuinella_Race]
GO
ALTER TABLE [dbo].[PredictByQuinella] DROP CONSTRAINT [FK_PredictByQuinella_MasterBetType]
GO
ALTER TABLE [dbo].[PredictByPlace] DROP CONSTRAINT [FK_PredictByPlace_Race]
GO
ALTER TABLE [dbo].[PredictByPlace] DROP CONSTRAINT [FK_PredictByPlace_MasterBetType]
GO
ALTER TABLE [dbo].[PredictByExacta] DROP CONSTRAINT [FK_PredictByExacta_Race]
GO
ALTER TABLE [dbo].[PredictByExacta] DROP CONSTRAINT [FK_PredictByExacta_MasterBetType]
GO
ALTER TABLE [dbo].[PredictByBracket] DROP CONSTRAINT [FK_PredictByBracket_MasterBetType]
GO
ALTER TABLE [dbo].[PayoffByPayAll] DROP CONSTRAINT [FK_PayoffByPayAll_Race]
GO
ALTER TABLE [dbo].[PayoffByPayAll] DROP CONSTRAINT [FK_PayoffByPayAll_Payoff]
GO
ALTER TABLE [dbo].[PayoffByPayAll] DROP CONSTRAINT [FK_PayoffByPayAll_MasterBetType]
GO
ALTER TABLE [dbo].[PayoffByHenkanWaku] DROP CONSTRAINT [FK_PayoffByHenkanWaku_Race]
GO
ALTER TABLE [dbo].[PayoffByHenkanWaku] DROP CONSTRAINT [FK_PayoffByHenkanWaku_Payoff]
GO
ALTER TABLE [dbo].[PayoffByHenkanUma] DROP CONSTRAINT [FK_PayoffByHenkanUma_Race]
GO
ALTER TABLE [dbo].[PayoffByHenkanUma] DROP CONSTRAINT [FK_PayoffByHenkanUma_Payoff]
GO
ALTER TABLE [dbo].[PayoffByHenkanDoWaku] DROP CONSTRAINT [FK_PayoffByHenkanDoWaku_Race]
GO
ALTER TABLE [dbo].[PayoffByHenkanDoWaku] DROP CONSTRAINT [FK_PayoffByHenkanDoWaku_Payoff]
GO
ALTER TABLE [dbo].[PayoffByFlag] DROP CONSTRAINT [FK_PayoffByFlag_Race]
GO
ALTER TABLE [dbo].[PayoffByFlag] DROP CONSTRAINT [FK_PayoffByFlag_Payoff]
GO
ALTER TABLE [dbo].[Payoff] DROP CONSTRAINT [FK_Payoff_Race]
GO
ALTER TABLE [dbo].[Payoff] DROP CONSTRAINT [FK_Payoff_MasterPlace]
GO
ALTER TABLE [dbo].[OddsByWin] DROP CONSTRAINT [FK_OddsByWin_Race]
GO
ALTER TABLE [dbo].[OddsByWin] DROP CONSTRAINT [FK_OddsByWin_Odds1]
GO
ALTER TABLE [dbo].[OddsByWin] DROP CONSTRAINT [FK_OddsByWin_MasterPlace]
GO
ALTER TABLE [dbo].[OddsByWin] DROP CONSTRAINT [FK_OddsByWin_MasterBetType]
GO
ALTER TABLE [dbo].[OddsByWide] DROP CONSTRAINT [FK_OddsByWide_Race]
GO
ALTER TABLE [dbo].[OddsByWide] DROP CONSTRAINT [FK_OddsByWide_Odds3]
GO
ALTER TABLE [dbo].[OddsByWide] DROP CONSTRAINT [FK_OddsByWide_MasterPlace]
GO
ALTER TABLE [dbo].[OddsByWide] DROP CONSTRAINT [FK_OddsByWide_MasterBetType]
GO
ALTER TABLE [dbo].[OddsByTrio] DROP CONSTRAINT [FK_OddsByTrio_Race]
GO
ALTER TABLE [dbo].[OddsByTrio] DROP CONSTRAINT [FK_OddsByTrio_Odds5]
GO
ALTER TABLE [dbo].[OddsByTrio] DROP CONSTRAINT [FK_OddsByTrio_MasterPlace]
GO
ALTER TABLE [dbo].[OddsByTrio] DROP CONSTRAINT [FK_OddsByTrio_MasterBetType]
GO
ALTER TABLE [dbo].[OddsByTrifecta] DROP CONSTRAINT [FK_OddsByTrifecta_Race]
GO
ALTER TABLE [dbo].[OddsByTrifecta] DROP CONSTRAINT [FK_OddsByTrifecta_Odds6]
GO
ALTER TABLE [dbo].[OddsByTrifecta] DROP CONSTRAINT [FK_OddsByTrifecta_MasterPlace]
GO
ALTER TABLE [dbo].[OddsByTrifecta] DROP CONSTRAINT [FK_OddsByTrifecta_MasterBetType]
GO
ALTER TABLE [dbo].[OddsByQuinella] DROP CONSTRAINT [FK_OddsByQuinella_Race]
GO
ALTER TABLE [dbo].[OddsByQuinella] DROP CONSTRAINT [FK_OddsByQuinella_Odds2]
GO
ALTER TABLE [dbo].[OddsByQuinella] DROP CONSTRAINT [FK_OddsByQuinella_MasterPlace]
GO
ALTER TABLE [dbo].[OddsByQuinella] DROP CONSTRAINT [FK_OddsByQuinella_MasterBetType]
GO
ALTER TABLE [dbo].[OddsByPlace] DROP CONSTRAINT [FK_OddsByPlace_Race]
GO
ALTER TABLE [dbo].[OddsByPlace] DROP CONSTRAINT [FK_OddsByPlace_Odds1]
GO
ALTER TABLE [dbo].[OddsByPlace] DROP CONSTRAINT [FK_OddsByPlace_MasterPlace]
GO
ALTER TABLE [dbo].[OddsByPlace] DROP CONSTRAINT [FK_OddsByPlace_MasterBetType]
GO
ALTER TABLE [dbo].[OddsByExacta] DROP CONSTRAINT [FK_OddsByExacta_Race]
GO
ALTER TABLE [dbo].[OddsByExacta] DROP CONSTRAINT [FK_OddsByExacta_Odds4]
GO
ALTER TABLE [dbo].[OddsByExacta] DROP CONSTRAINT [FK_OddsByExacta_MasterPlace]
GO
ALTER TABLE [dbo].[OddsByExacta] DROP CONSTRAINT [FK_OddsByExacta_MasterBetType]
GO
ALTER TABLE [dbo].[OddsByBracket] DROP CONSTRAINT [FK_OddsByBracket_Race]
GO
ALTER TABLE [dbo].[OddsByBracket] DROP CONSTRAINT [FK_OddsByBracket_Odds1]
GO
ALTER TABLE [dbo].[OddsByBracket] DROP CONSTRAINT [FK_OddsByBracket_MasterPlace]
GO
ALTER TABLE [dbo].[OddsByBracket] DROP CONSTRAINT [FK_OddsByBracket_MasterBetType]
GO
ALTER TABLE [dbo].[Odds6] DROP CONSTRAINT [FK_Odds6_Race]
GO
ALTER TABLE [dbo].[Odds6] DROP CONSTRAINT [FK_Odds6_MasterPlace]
GO
ALTER TABLE [dbo].[Odds5] DROP CONSTRAINT [FK_Odds5_Race]
GO
ALTER TABLE [dbo].[Odds5] DROP CONSTRAINT [FK_Odds5_MasterPlace]
GO
ALTER TABLE [dbo].[Odds4] DROP CONSTRAINT [FK_Odds4_Race]
GO
ALTER TABLE [dbo].[Odds4] DROP CONSTRAINT [FK_Odds4_MasterPlace]
GO
ALTER TABLE [dbo].[Odds3] DROP CONSTRAINT [FK_Odds3_Race]
GO
ALTER TABLE [dbo].[Odds3] DROP CONSTRAINT [FK_Odds3_MasterPlace]
GO
ALTER TABLE [dbo].[Odds2] DROP CONSTRAINT [FK_Odds2_Race]
GO
ALTER TABLE [dbo].[Odds2] DROP CONSTRAINT [FK_Odds2_MasterPlace]
GO
ALTER TABLE [dbo].[Odds1] DROP CONSTRAINT [FK_Odds1_Race]
GO
ALTER TABLE [dbo].[Odds1] DROP CONSTRAINT [FK_Odds1_MasterPlace]
GO
ALTER TABLE [dbo].[MasterOpenModeDataSpec] DROP CONSTRAINT [FK_MasterOpenModeDataSpec_MasterDataSpec]
GO
ALTER TABLE [dbo].[MasterJyoken5] DROP CONSTRAINT [FK_MasterJyoken5_MasterJyoken]
GO
ALTER TABLE [dbo].[Keito] DROP CONSTRAINT [FK_Keito_Hansyoku]
GO
ALTER TABLE [dbo].[JockeyByTrackType] DROP CONSTRAINT [FK_JockeyByTrackType_MasterTrackType3]
GO
ALTER TABLE [dbo].[JockeyByTrackType] DROP CONSTRAINT [FK_JockeyByTrackType_Jocky]
GO
ALTER TABLE [dbo].[JockeyByTotal] DROP CONSTRAINT [FK_JockeyByTotal_TrackType3]
GO
ALTER TABLE [dbo].[JockeyByTotal] DROP CONSTRAINT [FK_JockeyByTotal_Jocky]
GO
ALTER TABLE [dbo].[JockeyBySaikinJyusyo] DROP CONSTRAINT [FK_JockeyBySaikinJyusyo_Race]
GO
ALTER TABLE [dbo].[JockeyBySaikinJyusyo] DROP CONSTRAINT [FK_JockeyBySaikinJyusyo_MasterGrade]
GO
ALTER TABLE [dbo].[JockeyBySaikinJyusyo] DROP CONSTRAINT [FK_JockeyBySaikinJyusyo_Jocky]
GO
ALTER TABLE [dbo].[JockeyBySaikinJyusyo] DROP CONSTRAINT [FK_JockeyBySaikinJyusyo_Horse]
GO
ALTER TABLE [dbo].[JockeyByHatuSyori] DROP CONSTRAINT [FK_JockeyByHatusyori_Race]
GO
ALTER TABLE [dbo].[JockeyByHatuSyori] DROP CONSTRAINT [FK_JockeyByHatusyori_MasterTrackType3]
GO
ALTER TABLE [dbo].[JockeyByHatuSyori] DROP CONSTRAINT [FK_JockeyByHatusyori_Jocky]
GO
ALTER TABLE [dbo].[JockeyByHatuSyori] DROP CONSTRAINT [FK_JockeyByHatusyori_Horse]
GO
ALTER TABLE [dbo].[JockeyByHatsuKijyo] DROP CONSTRAINT [FK_JockeyByHatsuKijyo_Race]
GO
ALTER TABLE [dbo].[JockeyByHatsuKijyo] DROP CONSTRAINT [FK_JockeyByHatsuKijyo_MasterTrackType3]
GO
ALTER TABLE [dbo].[JockeyByHatsuKijyo] DROP CONSTRAINT [FK_JockeyByHatsuKijyo_MasterIjyo]
GO
ALTER TABLE [dbo].[JockeyByHatsuKijyo] DROP CONSTRAINT [FK_JockeyByHatsuKijyo_Jocky]
GO
ALTER TABLE [dbo].[JockeyByHatsuKijyo] DROP CONSTRAINT [FK_JockeyByHatsuKijyo_Horse]
GO
ALTER TABLE [dbo].[JockeyByDistanceType] DROP CONSTRAINT [FK_JockeyByDistanceType_MasterTrackType2]
GO
ALTER TABLE [dbo].[JockeyByDistanceType] DROP CONSTRAINT [FK_JockeyByDistanceType_Jocky]
GO
ALTER TABLE [dbo].[Jockey] DROP CONSTRAINT [FK_Jockey_MasterTozai]
GO
ALTER TABLE [dbo].[Jockey] DROP CONSTRAINT [FK_Jockey_MasterShikaku]
GO
ALTER TABLE [dbo].[Jockey] DROP CONSTRAINT [FK_Jockey_MasterSex]
GO
ALTER TABLE [dbo].[Jockey] DROP CONSTRAINT [FK_Jockey_MasterMinarai]
GO
ALTER TABLE [dbo].[HorseByTrackCondition] DROP CONSTRAINT [FK_HorseByTrackCondition_MasterTrackType]
GO
ALTER TABLE [dbo].[HorseByTrackCondition] DROP CONSTRAINT [FK_HorseByTrackCondition_MasterTrackCondition]
GO
ALTER TABLE [dbo].[HorseByTrackCondition] DROP CONSTRAINT [FK_HorseByTrackCondition_Horse]
GO
ALTER TABLE [dbo].[HorseByTotal] DROP CONSTRAINT [FK_HorseByTotal_Horse]
GO
ALTER TABLE [dbo].[HorseBySmile] DROP CONSTRAINT [FK_HorseBySmile_MasterTrackType]
GO
ALTER TABLE [dbo].[HorseBySmile] DROP CONSTRAINT [FK_HorseBySmile_MasterSmile]
GO
ALTER TABLE [dbo].[HorseBySmile] DROP CONSTRAINT [FK_HorseBySmile_Horse]
GO
ALTER TABLE [dbo].[HorseByRunType] DROP CONSTRAINT [FK_HorseByRunType_Horse]
GO
ALTER TABLE [dbo].[HorseByDistanceType] DROP CONSTRAINT [FK_HorseByDistanceType_MasterTrackType2]
GO
ALTER TABLE [dbo].[HorseByDistanceType] DROP CONSTRAINT [FK_HorseByDistanceType_MasterDistanceType2]
GO
ALTER TABLE [dbo].[HorseByDistanceType] DROP CONSTRAINT [FK_HorseByDistanceType_Horse]
GO
ALTER TABLE [dbo].[HorseByCourseType] DROP CONSTRAINT [FK_HorseByCourseType_MasterTrackType]
GO
ALTER TABLE [dbo].[HorseByCourseType] DROP CONSTRAINT [FK_HorseByCourseType_MasterCourseType]
GO
ALTER TABLE [dbo].[HorseByCourseType] DROP CONSTRAINT [FK_HorseByCourseType_Horse]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_Trainer]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_MasterUmaKigo]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_MasterTozai]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_MasterSex]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_MasterKeiro]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_MasterHinsyu]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_Hansyoku14]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_Hansyoku13]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_Hansyoku12]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_Hansyoku11]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_Hansyoku10]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_Hansyoku09]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_Hansyoku08]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_Hansyoku07]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_Hansyoku06]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_Hansyoku05]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_Hansyoku04]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_Hansyoku03]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_Hansyoku02]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_Hansyoku01]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_Breeder]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [FK_Horse_Banusi]
GO
ALTER TABLE [dbo].[HansyokuParents] DROP CONSTRAINT [FK_HansyokuParents_MasterSex]
GO
ALTER TABLE [dbo].[HansyokuParents] DROP CONSTRAINT [FK_HansyokuParents_HansyokuParents]
GO
ALTER TABLE [dbo].[HansyokuParents] DROP CONSTRAINT [FK_HansyokuParents_Hansyoku]
GO
ALTER TABLE [dbo].[Hansyoku] DROP CONSTRAINT [FK_Hansyoku_MasterSex]
GO
ALTER TABLE [dbo].[Hansyoku] DROP CONSTRAINT [FK_Hansyoku_MasterKeiro]
GO
ALTER TABLE [dbo].[Hansyoku] DROP CONSTRAINT [FK_Hansyoku_MasterHinsyu]
GO
ALTER TABLE [dbo].[Hansyoku] DROP CONSTRAINT [FK_Hansyoku_Horse]
GO
ALTER TABLE [dbo].[Hansyoku] DROP CONSTRAINT [FK_Hansyoku_HansyokuMaleID]
GO
ALTER TABLE [dbo].[Hansyoku] DROP CONSTRAINT [FK_Hansyoku_HansyokuFemaleID]
GO
ALTER TABLE [dbo].[EventWeather] DROP CONSTRAINT [FK_EventWeather_MasterTenko_Mae]
GO
ALTER TABLE [dbo].[EventWeather] DROP CONSTRAINT [FK_EventWeather_MasterTenko_Ato]
GO
ALTER TABLE [dbo].[EventWeather] DROP CONSTRAINT [FK_EventWeather_MasterPlace]
GO
ALTER TABLE [dbo].[EventTimeChange] DROP CONSTRAINT [FK_EventTimeChange_Race]
GO
ALTER TABLE [dbo].[EventTimeChange] DROP CONSTRAINT [FK_EventTimeChange_MasterPlace]
GO
ALTER TABLE [dbo].[EventQueue] DROP CONSTRAINT [FK_EventQueue_Race]
GO
ALTER TABLE [dbo].[EventQueue] DROP CONSTRAINT [FK_EventQueue_MasterOpenModeDataSpec]
GO
ALTER TABLE [dbo].[EventJockeyChange] DROP CONSTRAINT [FK_EventJockeyChange_Race]
GO
ALTER TABLE [dbo].[EventJockeyChange] DROP CONSTRAINT [FK_EventJockeyChange_MasterPlace]
GO
ALTER TABLE [dbo].[EventJockeyChange] DROP CONSTRAINT [FK_EventJockeyChange_MasterMinaraiBefore]
GO
ALTER TABLE [dbo].[EventJockeyChange] DROP CONSTRAINT [FK_EventJockeyChange_MasterMinarai]
GO
ALTER TABLE [dbo].[EventJockeyChange] DROP CONSTRAINT [FK_EventJockeyChange_Jockey_Mae]
GO
ALTER TABLE [dbo].[EventJockeyChange] DROP CONSTRAINT [FK_EventJockeyChange_Jockey_Ato]
GO
ALTER TABLE [dbo].[EventHorseWeight] DROP CONSTRAINT [FK_EventHorseWeight_Race]
GO
ALTER TABLE [dbo].[EventHorseWeight] DROP CONSTRAINT [FK_EventHorseWeight_MasterPlace]
GO
ALTER TABLE [dbo].[EventCourseChange] DROP CONSTRAINT [FK_EventCourseChange_MasterTrack_Mae]
GO
ALTER TABLE [dbo].[EventCourseChange] DROP CONSTRAINT [FK_EventCourseChange_MasterTrack_Ato]
GO
ALTER TABLE [dbo].[EventCourseChange] DROP CONSTRAINT [FK_EventCourseChange_MasterPlace]
GO
ALTER TABLE [dbo].[EventAvoid] DROP CONSTRAINT [FK_EventAvoid_Race]
GO
ALTER TABLE [dbo].[EventAvoid] DROP CONSTRAINT [FK_EventAvoid_MasterPlace]
GO
ALTER TABLE [dbo].[DataMiningTaisen] DROP CONSTRAINT [FK_DataMiningTaisen_Race]
GO
ALTER TABLE [dbo].[DataMiningTaisen] DROP CONSTRAINT [FK_DataMiningTaisen_MasterPlace]
GO
ALTER TABLE [dbo].[DataMiningTaisen] DROP CONSTRAINT [FK_DataMiningTaisen_HorseNum]
GO
ALTER TABLE [dbo].[DataMining] DROP CONSTRAINT [FK_DataMining_Race]
GO
ALTER TABLE [dbo].[DataMining] DROP CONSTRAINT [FK_DataMining_MasterPlace]
GO
ALTER TABLE [dbo].[DataMining] DROP CONSTRAINT [FK_DataMining_HorseNum]
GO
ALTER TABLE [dbo].[CourseInfo] DROP CONSTRAINT [FK_CourseInfo_MasterTrack]
GO
ALTER TABLE [dbo].[CourseInfo] DROP CONSTRAINT [FK_CourseInfo_MasterJyo]
GO
ALTER TABLE [dbo].[ConfigRoi_001] DROP CONSTRAINT [FK_ConfigRoi_MasterBetType]
GO
ALTER TABLE [dbo].[ConfigLastTimestamp] DROP CONSTRAINT [FK_ConfigLastTimestamp_MasterDataSpec]
GO
ALTER TABLE [dbo].[ConfigDataSpecRecKubun] DROP CONSTRAINT [FK_ConfigDataSpecRecKubun_MasterDataSpec]
GO
ALTER TABLE [dbo].[ConfigBetMoney] DROP CONSTRAINT [FK_ConfigBetMoney_MasterBetType]
GO
ALTER TABLE [dbo].[ConfigBetMoney] DROP CONSTRAINT [FK_ConfigBetMoney_Master2Class]
GO
ALTER TABLE [dbo].[ConfigBetCountWinFive] DROP CONSTRAINT [FK_ConfigBetCountWinFive_MasterBetType]
GO
ALTER TABLE [dbo].[ConfigBetCount] DROP CONSTRAINT [FK_ConfigBetCount_MasterBetType]
GO
ALTER TABLE [dbo].[ConfigBetCount] DROP CONSTRAINT [FK_ConfigBetCount_Master2Class]
GO
ALTER TABLE [dbo].[BetMgmtHistory] DROP CONSTRAINT [FK_BetMgmtHistory_Race]
GO
ALTER TABLE [dbo].[BetMgmtHistory] DROP CONSTRAINT [FK_BetMgmtHistory_MasterPlace]
GO
ALTER TABLE [dbo].[BetMgmtHistory] DROP CONSTRAINT [FK_BetMgmtHistory_MasterBetType]
GO
ALTER TABLE [dbo].[BetMgmtByTemp] DROP CONSTRAINT [FK_BetMgmtByTemp_Race]
GO
ALTER TABLE [dbo].[BetMgmtByTemp] DROP CONSTRAINT [FK_BetMgmtByTemp_MasterPlace]
GO
ALTER TABLE [dbo].[BetMgmtByTemp] DROP CONSTRAINT [FK_BetMgmtByTemp_MasterBetType]
GO
ALTER TABLE [dbo].[BetMgmtBySim] DROP CONSTRAINT [FK_BetMgmtBySim_Race]
GO
ALTER TABLE [dbo].[BetMgmtBySim] DROP CONSTRAINT [FK_BetMgmtBySim_MasterPlace]
GO
ALTER TABLE [dbo].[BetMgmtBySim] DROP CONSTRAINT [FK_BetMgmtBySim_MasterBetType]
GO
ALTER TABLE [dbo].[BetMgmtByBet] DROP CONSTRAINT [FK_BetMgmtByBet_Race]
GO
ALTER TABLE [dbo].[BetMgmtByBet] DROP CONSTRAINT [FK_BetMgmtByBet_MasterPlace]
GO
ALTER TABLE [dbo].[BetMgmtByBet] DROP CONSTRAINT [FK_BetMgmtByBet_MasterBetType]
GO
ALTER TABLE [dbo].[BetHistoryMaster] DROP CONSTRAINT [FK_BetHistoryMaster_Race]
GO
ALTER TABLE [dbo].[BetHistoryMaster] DROP CONSTRAINT [FK_BetHistoryMaster_MasterPlace]
GO
ALTER TABLE [dbo].[BetHistoryDetail] DROP CONSTRAINT [FK_BetHistoryDetail_Race]
GO
ALTER TABLE [dbo].[BetHistoryDetail] DROP CONSTRAINT [FK_BetHistoryDetail_MasterPlace]
GO
ALTER TABLE [dbo].[BetHistoryDetail] DROP CONSTRAINT [FK_BetHistoryDetail_MasterBetType]
GO
ALTER TABLE [dbo].[Bet6ByTrifecta] DROP CONSTRAINT [FK_Bet6ByTrifecta_Race]
GO
ALTER TABLE [dbo].[Bet6ByTrifecta] DROP CONSTRAINT [FK_Bet6ByTrifecta_Bet6]
GO
ALTER TABLE [dbo].[Bet6ByHenkanUma] DROP CONSTRAINT [FK_Bet6ByHenkanUma_Race]
GO
ALTER TABLE [dbo].[Bet6ByHenkanUma] DROP CONSTRAINT [FK_Bet6ByHenkanUma_Bet6]
GO
ALTER TABLE [dbo].[Bet6] DROP CONSTRAINT [FK_Bet6_Race]
GO
ALTER TABLE [dbo].[Bet6] DROP CONSTRAINT [FK_Bet6_MasterPlace]
GO
ALTER TABLE [dbo].[Bet1ByWin] DROP CONSTRAINT [FK_Bet1ByWin_Race]
GO
ALTER TABLE [dbo].[Bet1ByWin] DROP CONSTRAINT [FK_Bet1ByWin_Bet1]
GO
ALTER TABLE [dbo].[Bet1ByWide] DROP CONSTRAINT [FK_Bet1ByWide_Race]
GO
ALTER TABLE [dbo].[Bet1ByWide] DROP CONSTRAINT [FK_Bet1ByWide_Bet1]
GO
ALTER TABLE [dbo].[Bet1ByTrio] DROP CONSTRAINT [FK_Bet1ByTrio_Race]
GO
ALTER TABLE [dbo].[Bet1ByTrio] DROP CONSTRAINT [FK_Bet1ByTrio_Bet1]
GO
ALTER TABLE [dbo].[Bet1ByQuinella] DROP CONSTRAINT [FK_Bet1ByQuinella_Race]
GO
ALTER TABLE [dbo].[Bet1ByQuinella] DROP CONSTRAINT [FK_Bet1ByQuinella_Bet1]
GO
ALTER TABLE [dbo].[Bet1ByPlace] DROP CONSTRAINT [FK_Bet1ByPlace_Race]
GO
ALTER TABLE [dbo].[Bet1ByPlace] DROP CONSTRAINT [FK_Bet1ByPlace_Bet1]
GO
ALTER TABLE [dbo].[Bet1ByExacta] DROP CONSTRAINT [FK_Bet1ByExacta_Race]
GO
ALTER TABLE [dbo].[Bet1ByExacta] DROP CONSTRAINT [FK_Bet1ByExacta_Bet1]
GO
ALTER TABLE [dbo].[Bet1ByBracket] DROP CONSTRAINT [FK_Bet1ByBracket_Race]
GO
ALTER TABLE [dbo].[Bet1ByBracket] DROP CONSTRAINT [FK_Bet1ByBracket_Bet1]
GO
ALTER TABLE [dbo].[Bet1] DROP CONSTRAINT [FK_Bet1_Race]
GO
ALTER TABLE [dbo].[Bet1] DROP CONSTRAINT [FK_Bet1_MasterPlace]
GO
ALTER TABLE [dbo].[BayesianTrial01] DROP CONSTRAINT [FK_AnalyzeBayesian01Trial_Race]
GO
ALTER TABLE [dbo].[BayesianTrial01] DROP CONSTRAINT [FK_AnalyzeBayesian01Trial_Horse]
GO
ALTER TABLE [dbo].[BaseStatsTrainerByRaceHorse] DROP CONSTRAINT [FK_BaseStatsTrainerByRaceHorse_Race]
GO
ALTER TABLE [dbo].[BaseStatsTrainerByRaceHorse] DROP CONSTRAINT [FK_BaseStatsTrainerByRaceHorse_Horse]
GO
ALTER TABLE [dbo].[BaseStatsJockeyByRaceHorse] DROP CONSTRAINT [FK_BaseStatsJockeyByRaceHorse_Race]
GO
ALTER TABLE [dbo].[BaseStatsJockeyByRaceHorse] DROP CONSTRAINT [FK_BaseStatsJockeyByRaceHorse_Horse]
GO
ALTER TABLE [dbo].[BaseStatsGen05HansyokuByRaceHorse] DROP CONSTRAINT [FK_BaseStatsGen05HansyokuByRaceHorse_Race]
GO
ALTER TABLE [dbo].[BaseStatsGen05HansyokuByRaceHorse] DROP CONSTRAINT [FK_BaseStatsGen05HansyokuByRaceHorse_Horse]
GO
ALTER TABLE [dbo].[BaseStatsGen02HansyokuByRaceHorse] DROP CONSTRAINT [FK_BaseStatsGen02HansyokuByRaceHorse_Race]
GO
ALTER TABLE [dbo].[BaseStatsGen02HansyokuByRaceHorse] DROP CONSTRAINT [FK_BaseStatsGen02HansyokuByRaceHorse_Horse]
GO
ALTER TABLE [dbo].[BaseStatsGen01HansyokuByRaceHorse] DROP CONSTRAINT [FK_BaseStatsGen01HansyokuByRaceHorse_Race]
GO
ALTER TABLE [dbo].[BaseStatsGen01HansyokuByRaceHorse] DROP CONSTRAINT [FK_BaseStatsGen01HansyokuByRaceHorse_Horse]
GO
ALTER TABLE [dbo].[BaseStatsBanusiByRaceHorse] DROP CONSTRAINT [FK_BaseStatsBanusiByRaceHorse_Race]
GO
ALTER TABLE [dbo].[BaseStatsBanusiByRaceHorse] DROP CONSTRAINT [FK_BaseStatsBanusiByRaceHorse_Horse]
GO
ALTER TABLE [dbo].[Banusi] DROP CONSTRAINT [FK_Banusi_Silk]
GO
ALTER TABLE [dbo].[AnalysisStep03PrevRaceHorse] DROP CONSTRAINT [FK_AnalysisStep03PrevRaceHorse_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep03PrevRaceHorse] DROP CONSTRAINT [FK_AnalysisStep03PrevRaceHorse_Race]
GO
ALTER TABLE [dbo].[AnalysisStep03Jockey] DROP CONSTRAINT [FK_AnalysisStep03Jockey_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep03Jockey] DROP CONSTRAINT [FK_AnalysisStep03Jockey_Race]
GO
ALTER TABLE [dbo].[AnalysisStep03Gen02] DROP CONSTRAINT [FK_AnalysisStep03Gen02_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep03Gen02] DROP CONSTRAINT [FK_AnalysisStep03Gen02_Race]
GO
ALTER TABLE [dbo].[AnalysisStep03Gen01] DROP CONSTRAINT [FK_AnalysisStep03Gen01_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep03Gen01] DROP CONSTRAINT [FK_AnalysisStep03Gen01_Race]
GO
ALTER TABLE [dbo].[AnalysisStep03Basic] DROP CONSTRAINT [FK_AnalysisStep03Basic_Race]
GO
ALTER TABLE [dbo].[AnalysisStep03Basic] DROP CONSTRAINT [FK_AnalysisStep03Basic_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep02PrevRaceHorse] DROP CONSTRAINT [FK_AnalysisStep02PrevRaceHorse_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep02PrevRaceHorse] DROP CONSTRAINT [FK_AnalysisStep02PrevRaceHorse_Race]
GO
ALTER TABLE [dbo].[AnalysisStep02Jockey] DROP CONSTRAINT [FK_AnalysisStep02Jockey_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep02Jockey] DROP CONSTRAINT [FK_AnalysisStep02Jockey_Race]
GO
ALTER TABLE [dbo].[AnalysisStep02Gen02] DROP CONSTRAINT [FK_AnalysisStep02Gen02_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep02Gen02] DROP CONSTRAINT [FK_AnalysisStep02Gen02_Race]
GO
ALTER TABLE [dbo].[AnalysisStep02Gen01] DROP CONSTRAINT [FK_AnalysisStep02Gen01_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep02Gen01] DROP CONSTRAINT [FK_AnalysisStep02Gen01_Race]
GO
ALTER TABLE [dbo].[AnalysisStep02Basic] DROP CONSTRAINT [FK_AnalysisStep02Basic_Race]
GO
ALTER TABLE [dbo].[AnalysisStep02Basic] DROP CONSTRAINT [FK_AnalysisStep02Basic_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType35] DROP CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType35_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType31] DROP CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType31_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType26] DROP CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType26_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType25] DROP CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType25_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType24] DROP CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType24_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType23] DROP CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType23_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType22] DROP CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType22_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType21] DROP CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType21_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType16] DROP CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType16_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType15] DROP CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType15_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType14] DROP CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType14_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType13] DROP CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType13_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType12] DROP CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType12_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType11] DROP CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType11_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrepType0000] DROP CONSTRAINT [FK_AnalysisStep01PrepType0000_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType35] DROP CONSTRAINT [FK_AnalysisStep01JockeyType35_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType35] DROP CONSTRAINT [FK_AnalysisStep01JockeyType35_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType31] DROP CONSTRAINT [FK_AnalysisStep01JockeyType31_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType31] DROP CONSTRAINT [FK_AnalysisStep01JockeyType31_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType26] DROP CONSTRAINT [FK_AnalysisStep01JockeyType26_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType26] DROP CONSTRAINT [FK_AnalysisStep01JockeyType26_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType2512] DROP CONSTRAINT [FK_AnalysisStep01JockeyType2512_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType25] DROP CONSTRAINT [FK_AnalysisStep01JockeyType25_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType25] DROP CONSTRAINT [FK_AnalysisStep01JockeyType25_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType24] DROP CONSTRAINT [FK_AnalysisStep01JockeyType24_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType24] DROP CONSTRAINT [FK_AnalysisStep01JockeyType24_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType23] DROP CONSTRAINT [FK_AnalysisStep01JockeyType23_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType23] DROP CONSTRAINT [FK_AnalysisStep01JockeyType23_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType22] DROP CONSTRAINT [FK_AnalysisStep01JockeyType22_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType22] DROP CONSTRAINT [FK_AnalysisStep01JockeyType22_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType21] DROP CONSTRAINT [FK_AnalysisStep01JockeyType21_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType21] DROP CONSTRAINT [FK_AnalysisStep01JockeyType21_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType16] DROP CONSTRAINT [FK_AnalysisStep01JockeyType16_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType16] DROP CONSTRAINT [FK_AnalysisStep01JockeyType16_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType15] DROP CONSTRAINT [FK_AnalysisStep01JockeyType15_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType15] DROP CONSTRAINT [FK_AnalysisStep01JockeyType15_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType14] DROP CONSTRAINT [FK_AnalysisStep01JockeyType14_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType14] DROP CONSTRAINT [FK_AnalysisStep01JockeyType14_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType13] DROP CONSTRAINT [FK_AnalysisStep01JockeyType13_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType13] DROP CONSTRAINT [FK_AnalysisStep01JockeyType13_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType12] DROP CONSTRAINT [FK_AnalysisStep01JockeyType12_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType12] DROP CONSTRAINT [FK_AnalysisStep01JockeyType12_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType11] DROP CONSTRAINT [FK_AnalysisStep01JockeyType11_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType11] DROP CONSTRAINT [FK_AnalysisStep01JockeyType11_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type35] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type35_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type35] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type35_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type31] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type31_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type31] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type31_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type26] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type26_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type26] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type26_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type2512] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type2512_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type25] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type25_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type25] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type25_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type24] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type24_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type24] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type24_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type23] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type23_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type23] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type23_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type22] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type22_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type22] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type22_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type21] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type21_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type21] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type21_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type16] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type16_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type16] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type16_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type15] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type15_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type15] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type15_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type14] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type14_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type14] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type14_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type13] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type13_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type13] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type13_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type12] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type12_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type12] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type12_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type11] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type11_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type11] DROP CONSTRAINT [FK_AnalysisStep01Gen02Type11_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type35] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type35_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type35] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type35_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type31] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type31_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type31] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type31_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type26] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type26_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type26] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type26_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type2512] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type2512_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type25] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type25_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type25] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type25_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type24] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type24_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type24] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type24_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type23] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type23_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type23] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type23_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type22] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type22_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type22] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type22_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type21] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type21_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type21] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type21_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type16] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type16_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type16] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type16_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type15] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type15_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type15] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type15_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type14] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type14_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type14] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type14_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type13] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type13_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type13] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type13_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type12] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type12_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type12] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type12_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type11] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type11_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type11] DROP CONSTRAINT [FK_AnalysisStep01Gen01Type11_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3519] DROP CONSTRAINT [FK_AnalysisStep01BasicType3519_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3519] DROP CONSTRAINT [FK_AnalysisStep01BasicType3519_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3518] DROP CONSTRAINT [FK_AnalysisStep01BasicType3518_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3518] DROP CONSTRAINT [FK_AnalysisStep01BasicType3518_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3119] DROP CONSTRAINT [FK_AnalysisStep01BasicType3119_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3119] DROP CONSTRAINT [FK_AnalysisStep01BasicType3119_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3118] DROP CONSTRAINT [FK_AnalysisStep01BasicType3118_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3118] DROP CONSTRAINT [FK_AnalysisStep01BasicType3118_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3000] DROP CONSTRAINT [FK_AnalysisStep01BasicType3000_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3000] DROP CONSTRAINT [FK_AnalysisStep01BasicType3000_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2612] DROP CONSTRAINT [FK_AnalysisStep01BasicType2612_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2612] DROP CONSTRAINT [FK_AnalysisStep01BasicType2612_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2611] DROP CONSTRAINT [FK_AnalysisStep01BasicType2611_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2611] DROP CONSTRAINT [FK_AnalysisStep01BasicType2611_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2512] DROP CONSTRAINT [FK_AnalysisStep01BasicType2512_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2512] DROP CONSTRAINT [FK_AnalysisStep01BasicType2512_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2511] DROP CONSTRAINT [FK_AnalysisStep01BasicType2511_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2511] DROP CONSTRAINT [FK_AnalysisStep01BasicType2511_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2414] DROP CONSTRAINT [FK_AnalysisStep01BasicType2414_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2414] DROP CONSTRAINT [FK_AnalysisStep01BasicType2414_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2413] DROP CONSTRAINT [FK_AnalysisStep01BasicType2413_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2413] DROP CONSTRAINT [FK_AnalysisStep01BasicType2413_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2412] DROP CONSTRAINT [FK_AnalysisStep01BasicType2412_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2412] DROP CONSTRAINT [FK_AnalysisStep01BasicType2412_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2411] DROP CONSTRAINT [FK_AnalysisStep01BasicType2411_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2411] DROP CONSTRAINT [FK_AnalysisStep01BasicType2411_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2314] DROP CONSTRAINT [FK_AnalysisStep01BasicType2314_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2314] DROP CONSTRAINT [FK_AnalysisStep01BasicType2314_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2313] DROP CONSTRAINT [FK_AnalysisStep01BasicType2313_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2313] DROP CONSTRAINT [FK_AnalysisStep01BasicType2313_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2214] DROP CONSTRAINT [FK_AnalysisStep01BasicType2214_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2214] DROP CONSTRAINT [FK_AnalysisStep01BasicType2214_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2213] DROP CONSTRAINT [FK_AnalysisStep01BasicType2213_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2213] DROP CONSTRAINT [FK_AnalysisStep01BasicType2213_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2114] DROP CONSTRAINT [FK_AnalysisStep01BasicType2114_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2114] DROP CONSTRAINT [FK_AnalysisStep01BasicType2114_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2113] DROP CONSTRAINT [FK_AnalysisStep01BasicType2113_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2113] DROP CONSTRAINT [FK_AnalysisStep01BasicType2113_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2112] DROP CONSTRAINT [FK_AnalysisStep01BasicType2112_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2112] DROP CONSTRAINT [FK_AnalysisStep01BasicType2112_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2111] DROP CONSTRAINT [FK_AnalysisStep01BasicType2111_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2111] DROP CONSTRAINT [FK_AnalysisStep01BasicType2111_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2000] DROP CONSTRAINT [FK_AnalysisStep01BasicType2000_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2000] DROP CONSTRAINT [FK_AnalysisStep01BasicType2000_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1612] DROP CONSTRAINT [FK_AnalysisStep01BasicType1612_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1612] DROP CONSTRAINT [FK_AnalysisStep01BasicType1612_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1611] DROP CONSTRAINT [FK_AnalysisStep01BasicType1611_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1611] DROP CONSTRAINT [FK_AnalysisStep01BasicType1611_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1512] DROP CONSTRAINT [FK_AnalysisStep01BasicType1512_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1512] DROP CONSTRAINT [FK_AnalysisStep01BasicType1512_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1511] DROP CONSTRAINT [FK_AnalysisStep01BasicType1511_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1511] DROP CONSTRAINT [FK_AnalysisStep01BasicType1511_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1414] DROP CONSTRAINT [FK_AnalysisStep01BasicType1414_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1414] DROP CONSTRAINT [FK_AnalysisStep01BasicType1414_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1413] DROP CONSTRAINT [FK_AnalysisStep01BasicType1413_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1413] DROP CONSTRAINT [FK_AnalysisStep01BasicType1413_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1412] DROP CONSTRAINT [FK_AnalysisStep01BasicType1412_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1412] DROP CONSTRAINT [FK_AnalysisStep01BasicType1412_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1411] DROP CONSTRAINT [FK_AnalysisStep01BasicType1411_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1411] DROP CONSTRAINT [FK_AnalysisStep01BasicType1411_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1314] DROP CONSTRAINT [FK_AnalysisStep01BasicType1314_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1314] DROP CONSTRAINT [FK_AnalysisStep01BasicType1314_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1313] DROP CONSTRAINT [FK_AnalysisStep01BasicType1313_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1313] DROP CONSTRAINT [FK_AnalysisStep01BasicType1313_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1214] DROP CONSTRAINT [FK_AnalysisStep01BasicType1214_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1214] DROP CONSTRAINT [FK_AnalysisStep01BasicType1214_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1213] DROP CONSTRAINT [FK_AnalysisStep01BasicType1213_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1213] DROP CONSTRAINT [FK_AnalysisStep01BasicType1213_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1114] DROP CONSTRAINT [FK_AnalysisStep01BasicType1114_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1114] DROP CONSTRAINT [FK_AnalysisStep01BasicType1114_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1113] DROP CONSTRAINT [FK_AnalysisStep01BasicType1113_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1113] DROP CONSTRAINT [FK_AnalysisStep01BasicType1113_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1112] DROP CONSTRAINT [FK_AnalysisStep01BasicType1112_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1112] DROP CONSTRAINT [FK_AnalysisStep01BasicType1112_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1111] DROP CONSTRAINT [FK_AnalysisStep01BasicType1111_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1111] DROP CONSTRAINT [FK_AnalysisStep01BasicType1111_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1000] DROP CONSTRAINT [FK_AnalysisStep01BasicType1000_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1000] DROP CONSTRAINT [FK_AnalysisStep01BasicType1000_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType0600] DROP CONSTRAINT [FK_AnalysisStep01BasicType0600_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType0600] DROP CONSTRAINT [FK_AnalysisStep01BasicType0600_Horse]
GO
ALTER TABLE [dbo].[WinFiveByYuko] DROP CONSTRAINT [DF_WinFiveByYuko_Guid]
GO
ALTER TABLE [dbo].[WinFiveByRace] DROP CONSTRAINT [DF_WinFiveByRace_Guid]
GO
ALTER TABLE [dbo].[WinFiveByPay] DROP CONSTRAINT [DF_WinFiveByPay_Guid]
GO
ALTER TABLE [dbo].[WinFive] DROP CONSTRAINT [DF_WinFive_Guid]
GO
ALTER TABLE [dbo].[WinFive] DROP CONSTRAINT [DF_WinFive_IsJraRace]
GO
ALTER TABLE [dbo].[TrainingWoodChip] DROP CONSTRAINT [DF_TrainingWoodChip_Guid]
GO
ALTER TABLE [dbo].[TrainingSlope] DROP CONSTRAINT [DF_TrainingSlope_Guid]
GO
ALTER TABLE [dbo].[TrainerByTrackType] DROP CONSTRAINT [DF_TrainerByTrackType_Guid]
GO
ALTER TABLE [dbo].[TrainerByTotal] DROP CONSTRAINT [DF_TrainerByTotal_Guid]
GO
ALTER TABLE [dbo].[TrainerByDistanceType] DROP CONSTRAINT [DF_TrainerByDistance_Guid]
GO
ALTER TABLE [dbo].[Trainer] DROP CONSTRAINT [DF_Trainer_Guid]
GO
ALTER TABLE [dbo].[StatsPrepBeforeRaceHorseByRaceType1] DROP CONSTRAINT [DF_StatsPrepBeforeRaceHorseByRaceType1_Guid]
GO
ALTER TABLE [dbo].[StatsPrepBeforeRaceHorseByAll] DROP CONSTRAINT [DF_StatsPrepBeforeRaceHorseByAll_Guid]
GO
ALTER TABLE [dbo].[StatsPrepAfterRaceHorseByPrepRaceType1] DROP CONSTRAINT [DF_StatsPrepAfterRaceHorseByPrepRaceType1_Guid]
GO
ALTER TABLE [dbo].[StatsPrepAfterRaceHorseByAll] DROP CONSTRAINT [DF_StatsPrepAfterRaceHorseByAll_Guid]
GO
ALTER TABLE [dbo].[StatsBasicBeforeRaceHorseByRaceType1] DROP CONSTRAINT [DF_StatsBasicBeforeRaceHorseByRaceType1_Guid]
GO
ALTER TABLE [dbo].[StatsBasicBeforeRaceHorseByAll] DROP CONSTRAINT [DF_StatsBasicBeforeRaceHorseByAll_Guid]
GO
ALTER TABLE [dbo].[StatsBasicBeforeRaceByRaceType1] DROP CONSTRAINT [DF_StatsBasicBeforeRaceByRaceType1_Guid]
GO
ALTER TABLE [dbo].[StatsBasicBeforeRaceByAll] DROP CONSTRAINT [DF_StatsBasicBeforeRaceByAll_Guid]
GO
ALTER TABLE [dbo].[StatsBasicBeforeOddsByRaceType1] DROP CONSTRAINT [DF_StatsBasicBeforeOddsByRaceType1_Guid]
GO
ALTER TABLE [dbo].[StatsBasicBeforeOddsByAll] DROP CONSTRAINT [DF_StatsBasicBeforeOddsByAll_Guid]
GO
ALTER TABLE [dbo].[StatsBasicBeforeDmByRaceType1] DROP CONSTRAINT [DF_StatsBasicBeforeDmByRaceType1_Guid]
GO
ALTER TABLE [dbo].[StatsBasicBeforeDmByAll] DROP CONSTRAINT [DF_StatsBasicBeforeDmByAll_Guid]
GO
ALTER TABLE [dbo].[StatsBasicAfterRaceHorseByRaceType1] DROP CONSTRAINT [DF_StatsBasicAfterRaceHorseByRaceType1_Guid]
GO
ALTER TABLE [dbo].[StatsBasicAfterRaceHorseByAll] DROP CONSTRAINT [DF_StatsBasicAfterRaceHorseByAll_Guid]
GO
ALTER TABLE [dbo].[StatsBasicAfterRaceByRaceType1] DROP CONSTRAINT [DF_StatsBasicAfterRaceByRaceType1_Guid]
GO
ALTER TABLE [dbo].[StatsBasicAfterRaceByAll] DROP CONSTRAINT [DF_StatsBasicAfterRaceByAll_Guid]
GO
ALTER TABLE [dbo].[SpecialRaceByHorse] DROP CONSTRAINT [DF_SpecialRaceByHorse_Guid]
GO
ALTER TABLE [dbo].[SpecialRace] DROP CONSTRAINT [DF_SpecialRace_Guid]
GO
ALTER TABLE [dbo].[Silk] DROP CONSTRAINT [DF_Silk_Guid]
GO
ALTER TABLE [dbo].[Schedule] DROP CONSTRAINT [DF_Schedule_Guid]
GO
ALTER TABLE [dbo].[Sanku] DROP CONSTRAINT [DF_Sanku_Guid]
GO
ALTER TABLE [dbo].[Sale] DROP CONSTRAINT [DF_Sale_Guid]
GO
ALTER TABLE [dbo].[ReplRaceHorse] DROP CONSTRAINT [DF_ReplRaceHorse_Guid]
GO
ALTER TABLE [dbo].[ReplRace] DROP CONSTRAINT [DF_ReplRace_Guid]
GO
ALTER TABLE [dbo].[RaceRecord] DROP CONSTRAINT [DF_RaceRecord_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByTrackType] DROP CONSTRAINT [DF_RaceHorseHistoryByTrainerByTrackType_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByJyo] DROP CONSTRAINT [DF_RaceHorseHistoryByTrainerByJyo_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByDistanceType] DROP CONSTRAINT [DF_RaceHorseHistoryByTrainerByDistanceType_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainer] DROP CONSTRAINT [DF_RaceHorseHistoryByTrainer_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByTrackType] DROP CONSTRAINT [DF_RaceHorseHistoryByJockeyByTrackType_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByJyo] DROP CONSTRAINT [DF_RaceHorseHistoryByJockeyByJyo_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByDistanceType] DROP CONSTRAINT [DF_RaceHorseHistoryByJockeyByDistanceType_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockey] DROP CONSTRAINT [DF_RaceHorseHistoryByJocky_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackType] DROP CONSTRAINT [DF_RaceHorseHistoryByHorseByTrackType_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackCondition] DROP CONSTRAINT [DF_RaceHorseHistoryByHorseByTrackCondition_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTotal] DROP CONSTRAINT [DF_RaceHorseHistoryByHorseByTotal_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByRunType] DROP CONSTRAINT [DF_RaceHorseHistoryByHorseByRunTypeGuid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByJyo] DROP CONSTRAINT [DF_RaceHorseHistoryByHorseByJyo_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByDistanceType] DROP CONSTRAINT [DF_RaceHorseHistoryByHorseByDistanceType_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByCourseType] DROP CONSTRAINT [DF_RaceHorseHistoryByHorseByCourseType_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorse] DROP CONSTRAINT [DF_RaceHorseHistoryByHorse_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreederByTotal] DROP CONSTRAINT [DF_RaceHorseHistoryByBreederByTotal_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreeder] DROP CONSTRAINT [DF_RaceHorseHistoryByBreeder_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusiByTotal] DROP CONSTRAINT [DF_RaceHorseHistoryByBanusiByTotal_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusi] DROP CONSTRAINT [DF_RaceHorseHistoryByBanusi_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistory] DROP CONSTRAINT [DF_RaceHorseHistory_Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistory] DROP CONSTRAINT [DF_RaceHorseHistory_Timestamp02]
GO
ALTER TABLE [dbo].[RaceHorse] DROP CONSTRAINT [DF_RaceHorse_Guid]
GO
ALTER TABLE [dbo].[RaceExclusion] DROP CONSTRAINT [DF_RaceExclusion_Guid]
GO
ALTER TABLE [dbo].[RaceByLapTime] DROP CONSTRAINT [DF_RaceByLapTime_Guid]
GO
ALTER TABLE [dbo].[RaceByCornerPosition] DROP CONSTRAINT [DF_RaceByCornerPosition_Guid]
GO
ALTER TABLE [dbo].[Race] DROP CONSTRAINT [DF_Race_Guid]
GO
ALTER TABLE [dbo].[PredictModels] DROP CONSTRAINT [DF_PredictModels_Guid]
GO
ALTER TABLE [dbo].[PredictModels] DROP CONSTRAINT [DF_PredictModels_Timestamp011]
GO
ALTER TABLE [dbo].[PredictModels] DROP CONSTRAINT [DF_PredictModels_Timestamp01]
GO
ALTER TABLE [dbo].[PredictByWinFive] DROP CONSTRAINT [DF_PredictByWinFive_Guid]
GO
ALTER TABLE [dbo].[PredictByWin] DROP CONSTRAINT [DF_PredictByWin_Guid]
GO
ALTER TABLE [dbo].[PredictByWide] DROP CONSTRAINT [DF_PredictByWide_Guid]
GO
ALTER TABLE [dbo].[PredictByTrio] DROP CONSTRAINT [DF_PredictByTrio_Guid]
GO
ALTER TABLE [dbo].[PredictByTrifecta] DROP CONSTRAINT [DF_PredictByTrifecta_Guid]
GO
ALTER TABLE [dbo].[PredictByQuinella] DROP CONSTRAINT [DF_PredictByQuinella_Guid]
GO
ALTER TABLE [dbo].[PredictByPlace] DROP CONSTRAINT [DF_PredictByPlace_Guid]
GO
ALTER TABLE [dbo].[PredictByExacta] DROP CONSTRAINT [DF_PredictByExacta_Guid]
GO
ALTER TABLE [dbo].[PredictByBracket] DROP CONSTRAINT [DF_PredictByBracket_Guid]
GO
ALTER TABLE [dbo].[PayoffByPayAll] DROP CONSTRAINT [DF_PayoffByPayAll_Guid]
GO
ALTER TABLE [dbo].[PayoffByHenkanWaku] DROP CONSTRAINT [DF_PayoffByHenkanWaku_Guid]
GO
ALTER TABLE [dbo].[PayoffByHenkanUma] DROP CONSTRAINT [DF_PayoffByHenkanUma_Guid]
GO
ALTER TABLE [dbo].[PayoffByHenkanDoWaku] DROP CONSTRAINT [DF_PayoffByHenkanDoWaku_Guid]
GO
ALTER TABLE [dbo].[PayoffByFlag] DROP CONSTRAINT [DF_PayoffByFlag_Guid]
GO
ALTER TABLE [dbo].[Payoff] DROP CONSTRAINT [DF_Payoff_Guid]
GO
ALTER TABLE [dbo].[OddsByWin] DROP CONSTRAINT [DF_OddsByWin_Guid]
GO
ALTER TABLE [dbo].[OddsByWide] DROP CONSTRAINT [DF_OddsByWide_Guid]
GO
ALTER TABLE [dbo].[OddsByTrio] DROP CONSTRAINT [DF_OddsByTrio_Guid]
GO
ALTER TABLE [dbo].[OddsByTrifecta] DROP CONSTRAINT [DF_OddsByTrifecta_Guid]
GO
ALTER TABLE [dbo].[OddsByQuinella] DROP CONSTRAINT [DF_OddsByQuinella_Guid]
GO
ALTER TABLE [dbo].[OddsByPlace] DROP CONSTRAINT [DF_OddsByPlace_Guid]
GO
ALTER TABLE [dbo].[OddsByExacta] DROP CONSTRAINT [DF_OddsByExacta_Guid]
GO
ALTER TABLE [dbo].[OddsByBracket] DROP CONSTRAINT [DF_OddsByBracket_Guid]
GO
ALTER TABLE [dbo].[Odds6] DROP CONSTRAINT [DF_Odds6_Guid]
GO
ALTER TABLE [dbo].[Odds5] DROP CONSTRAINT [DF_Odds5_Guid]
GO
ALTER TABLE [dbo].[Odds4] DROP CONSTRAINT [DF_Odds4_Guid]
GO
ALTER TABLE [dbo].[Odds3] DROP CONSTRAINT [DF_Odds3_Guid]
GO
ALTER TABLE [dbo].[Odds2] DROP CONSTRAINT [DF_Odds2_Guid]
GO
ALTER TABLE [dbo].[Odds1] DROP CONSTRAINT [DF_Odds1_Guid]
GO
ALTER TABLE [dbo].[NameOrigin] DROP CONSTRAINT [DF_NameOrigin_Guid]
GO
ALTER TABLE [dbo].[MasterYoubi] DROP CONSTRAINT [DF_MasterYoubi_Guid]
GO
ALTER TABLE [dbo].[MasterUmaKigo] DROP CONSTRAINT [DF_MasterUmaKigo_Guid]
GO
ALTER TABLE [dbo].[MasterTrackType3] DROP CONSTRAINT [DF_MasterTrackType3_Guid]
GO
ALTER TABLE [dbo].[MasterTrackType2] DROP CONSTRAINT [DF_MasterTrackType2_Guid]
GO
ALTER TABLE [dbo].[MasterTrackType] DROP CONSTRAINT [DF_MasterTrackType_Guid]
GO
ALTER TABLE [dbo].[MasterTrackCondition] DROP CONSTRAINT [DF_MasterTrackCondition_Guid]
GO
ALTER TABLE [dbo].[MasterTrack] DROP CONSTRAINT [DF_MasterTrack_Guid]
GO
ALTER TABLE [dbo].[MasterTozai] DROP CONSTRAINT [DF_MasterTozai_Guid]
GO
ALTER TABLE [dbo].[MasterTenko] DROP CONSTRAINT [DF_MasterTenko_Guid]
GO
ALTER TABLE [dbo].[MasterSyubetu] DROP CONSTRAINT [DF_MasterSyubetsu_Guid]
GO
ALTER TABLE [dbo].[MasterStats] DROP CONSTRAINT [DF_MasterStats_Guid]
GO
ALTER TABLE [dbo].[MasterSmile] DROP CONSTRAINT [DF_MasterSmile_Guid]
GO
ALTER TABLE [dbo].[MasterSex] DROP CONSTRAINT [DF_MasterSex_Guid]
GO
ALTER TABLE [dbo].[MasterRunType] DROP CONSTRAINT [DF_MasterRunType_Guid]
GO
ALTER TABLE [dbo].[MasterPlace2] DROP CONSTRAINT [DF_MasterPlace2_Guid]
GO
ALTER TABLE [dbo].[MasterPlace] DROP CONSTRAINT [DF_MasterPlace_Guid]
GO
ALTER TABLE [dbo].[MasterOpenModeDataSpec] DROP CONSTRAINT [DF_MasterOpenModeDataSpec_Guid]
GO
ALTER TABLE [dbo].[MasterMinarai] DROP CONSTRAINT [DF_MasterMinarai_Guid]
GO
ALTER TABLE [dbo].[MasterLicense] DROP CONSTRAINT [DF_MasterLicense_Guid]
GO
ALTER TABLE [dbo].[MasterKigo] DROP CONSTRAINT [DF_MasterKigo_Guid]
GO
ALTER TABLE [dbo].[MasterKeiro] DROP CONSTRAINT [DF_MasterKeiro_Guid]
GO
ALTER TABLE [dbo].[MasterJyuryo] DROP CONSTRAINT [DF_MasterJyuryo_Guid]
GO
ALTER TABLE [dbo].[MasterJyoken5] DROP CONSTRAINT [DF_MasterJyoken5_Guid]
GO
ALTER TABLE [dbo].[MasterJyoken] DROP CONSTRAINT [DF_Master2Jyoken_Guid]
GO
ALTER TABLE [dbo].[MasterHorseNum] DROP CONSTRAINT [DF_MasterHorseNum_Guid]
GO
ALTER TABLE [dbo].[MasterHinsyu] DROP CONSTRAINT [DF_MasterHinsyu_Guid]
GO
ALTER TABLE [dbo].[MasterGrade] DROP CONSTRAINT [DF_MasterGrade_Guid]
GO
ALTER TABLE [dbo].[MasterDistanceType2] DROP CONSTRAINT [DF_MasterDistanceType2_Guid]
GO
ALTER TABLE [dbo].[MasterDistanceType] DROP CONSTRAINT [DF_MasterDistanceType_Guid]
GO
ALTER TABLE [dbo].[MasterDataSpec] DROP CONSTRAINT [DF_MasterDataSpec_Guid]
GO
ALTER TABLE [dbo].[MasterCourseType] DROP CONSTRAINT [DF_MasterCourseType_Guid]
GO
ALTER TABLE [dbo].[MasterCourseKubun] DROP CONSTRAINT [DF_MasterCourseKubun_Guid]
GO
ALTER TABLE [dbo].[MasterChakusa] DROP CONSTRAINT [DF_MasterChakusa_Guid]
GO
ALTER TABLE [dbo].[MasterBracketNum] DROP CONSTRAINT [DF_MasterBracketNum_Guid]
GO
ALTER TABLE [dbo].[MasterBlinker] DROP CONSTRAINT [DF_MasterBlinker_Guid]
GO
ALTER TABLE [dbo].[MasterBetType] DROP CONSTRAINT [DF_MasterBetType_Guid]
GO
ALTER TABLE [dbo].[Master2Weight] DROP CONSTRAINT [DF_Master2Weight_Guid]
GO
ALTER TABLE [dbo].[Master2Weight] DROP CONSTRAINT [DF_Master2Weight_Timestamp01]
GO
ALTER TABLE [dbo].[Master2RaceType9] DROP CONSTRAINT [DF_Master2RaceType9_Guid]
GO
ALTER TABLE [dbo].[Master2RaceType9] DROP CONSTRAINT [DF_Master2RaceType9_Timestamp01]
GO
ALTER TABLE [dbo].[Master2RaceType8] DROP CONSTRAINT [DF_Master2RaceType8_Guid]
GO
ALTER TABLE [dbo].[Master2RaceType8] DROP CONSTRAINT [DF_Master2RaceType8_Timestamp01]
GO
ALTER TABLE [dbo].[Master2RaceType7] DROP CONSTRAINT [DF_Master2RaceType7_Guid]
GO
ALTER TABLE [dbo].[Master2RaceType7] DROP CONSTRAINT [DF_Master2RaceType7_Timestamp01]
GO
ALTER TABLE [dbo].[Master2RaceType6] DROP CONSTRAINT [DF_Master2RaceType6_Guid]
GO
ALTER TABLE [dbo].[Master2RaceType6] DROP CONSTRAINT [DF_Master2RaceType6_Timestamp01]
GO
ALTER TABLE [dbo].[Master2RaceType5] DROP CONSTRAINT [DF_Master2RaceType5_Guid]
GO
ALTER TABLE [dbo].[Master2RaceType5] DROP CONSTRAINT [DF_Master2RaceType5_Timestamp01]
GO
ALTER TABLE [dbo].[Master2RaceType4] DROP CONSTRAINT [DF_Master2RaceType4_Guid]
GO
ALTER TABLE [dbo].[Master2RaceType4] DROP CONSTRAINT [DF_Master2RaceType4_Timestamp01]
GO
ALTER TABLE [dbo].[Master2RaceType3] DROP CONSTRAINT [DF_Master2RaceType3_Guid]
GO
ALTER TABLE [dbo].[Master2RaceType3] DROP CONSTRAINT [DF_Master2RaceType3_Timestamp01]
GO
ALTER TABLE [dbo].[Master2RaceType2] DROP CONSTRAINT [DF_Master2RaceType2_Guid]
GO
ALTER TABLE [dbo].[Master2RaceType2] DROP CONSTRAINT [DF_Master2RaceType2_Timestamp01]
GO
ALTER TABLE [dbo].[Master2RaceType1] DROP CONSTRAINT [DF_Master2RaceType1_Guid]
GO
ALTER TABLE [dbo].[Master2RaceType1] DROP CONSTRAINT [DF_Master2RaceType1_Timestamp01]
GO
ALTER TABLE [dbo].[Master2Ninki] DROP CONSTRAINT [DF_Master2Ninki_Guid]
GO
ALTER TABLE [dbo].[Master2Ninki] DROP CONSTRAINT [DF_Master2Ninki_Timestamp01]
GO
ALTER TABLE [dbo].[Master2Handicap] DROP CONSTRAINT [DF_Master2Futan_Guid]
GO
ALTER TABLE [dbo].[Master2Handicap] DROP CONSTRAINT [DF_Master2Futan_Timestamp01]
GO
ALTER TABLE [dbo].[Master2Distance] DROP CONSTRAINT [DF_Master2Distance_Guid]
GO
ALTER TABLE [dbo].[Master2Distance] DROP CONSTRAINT [DF_Master2Distance_Timestamp01]
GO
ALTER TABLE [dbo].[Master2Class] DROP CONSTRAINT [DF_Master2Class_Guid]
GO
ALTER TABLE [dbo].[Master2Class] DROP CONSTRAINT [DF_Master2Class_Timestamp01]
GO
ALTER TABLE [dbo].[Keito] DROP CONSTRAINT [DF_Keito_Guid]
GO
ALTER TABLE [dbo].[JockeyByTrackType] DROP CONSTRAINT [DF_JockeyByTrackType_Guid]
GO
ALTER TABLE [dbo].[JockeyByTotal] DROP CONSTRAINT [DF_JockeyByTotal_Guid]
GO
ALTER TABLE [dbo].[JockeyBySaikinJyusyo] DROP CONSTRAINT [DF_JockeyBySaikinJyusyo_Guid]
GO
ALTER TABLE [dbo].[JockeyByHatuSyori] DROP CONSTRAINT [DF_JockeyByHatuSyori_Guid]
GO
ALTER TABLE [dbo].[JockeyByHatsuKijyo] DROP CONSTRAINT [DF_JockeyByHatsuKijyo_Guid]
GO
ALTER TABLE [dbo].[JockeyByDistanceType] DROP CONSTRAINT [DF_JockeyByDistanceType_Guid]
GO
ALTER TABLE [dbo].[Jockey] DROP CONSTRAINT [DF_Jockey_Guid]
GO
ALTER TABLE [dbo].[HorseByTrackCondition] DROP CONSTRAINT [DF_HorseByTrackCondition_Guid]
GO
ALTER TABLE [dbo].[HorseByTotal] DROP CONSTRAINT [DF_HorseByTotal_Guid]
GO
ALTER TABLE [dbo].[HorseBySmile] DROP CONSTRAINT [DF_HorseBySmile_Guid]
GO
ALTER TABLE [dbo].[HorseByRunType] DROP CONSTRAINT [DF_HorseByRunType_Guid]
GO
ALTER TABLE [dbo].[HorseByDistanceType] DROP CONSTRAINT [DF_HorseByDistanceType_Guid]
GO
ALTER TABLE [dbo].[HorseByCourseType] DROP CONSTRAINT [DF_HorseByCourseType_Guid]
GO
ALTER TABLE [dbo].[Horse] DROP CONSTRAINT [DF_Horse_Guid]
GO
ALTER TABLE [dbo].[HansyokuParents] DROP CONSTRAINT [DF_HansyokuParents_Guid]
GO
ALTER TABLE [dbo].[Hansyoku] DROP CONSTRAINT [DF_Hansyoku_Guid]
GO
ALTER TABLE [dbo].[EventWeather] DROP CONSTRAINT [DF_EventWeather_Guid]
GO
ALTER TABLE [dbo].[EventTimeChange] DROP CONSTRAINT [DF_EventTimeChange_Guid]
GO
ALTER TABLE [dbo].[EventJockeyChange] DROP CONSTRAINT [DF_EventJockeyChange_Guid]
GO
ALTER TABLE [dbo].[EventHorseWeight] DROP CONSTRAINT [DF_EventHorseWeight_Guid]
GO
ALTER TABLE [dbo].[EventCourseChange] DROP CONSTRAINT [DF_EventCourseChange_Guid]
GO
ALTER TABLE [dbo].[EventAvoid] DROP CONSTRAINT [DF_EventAvoid_Guid]
GO
ALTER TABLE [dbo].[DataMiningTaisen] DROP CONSTRAINT [DF_DataMiningTaisen_Guid]
GO
ALTER TABLE [dbo].[DataMining] DROP CONSTRAINT [DF_DataMining_Guid]
GO
ALTER TABLE [dbo].[CourseInfo] DROP CONSTRAINT [DF_CourseInfo_Guid]
GO
ALTER TABLE [dbo].[ConfigRoi_001] DROP CONSTRAINT [DF_ConfigRoi_Guid]
GO
ALTER TABLE [dbo].[ConfigRoi_001] DROP CONSTRAINT [DF_ConfigRoi_Timestamp01]
GO
ALTER TABLE [dbo].[ConfigLastTimestamp] DROP CONSTRAINT [DF_ConfigLastTimestamp_Guid]
GO
ALTER TABLE [dbo].[ConfigLastTimestamp] DROP CONSTRAINT [DF_ConfigLastTimestamp_Timestamp01]
GO
ALTER TABLE [dbo].[ConfigIpatBalance] DROP CONSTRAINT [DF_ConfigIpatBalance_Guid]
GO
ALTER TABLE [dbo].[ConfigIpatAccount] DROP CONSTRAINT [DF_Account_Guid]
GO
ALTER TABLE [dbo].[ConfigIpatAccount] DROP CONSTRAINT [DF_Account_Id]
GO
ALTER TABLE [dbo].[ConfigDataSpecRecKubun] DROP CONSTRAINT [DF_ConfigDataSpecRecKubun_Guid]
GO
ALTER TABLE [dbo].[ConfigDataSpecRecKubun] DROP CONSTRAINT [DF_ConfigDataSpecRecKubun_Timestamp01]
GO
ALTER TABLE [dbo].[ConfigBetMoney] DROP CONSTRAINT [DF_ConfigBetMoney_Guid]
GO
ALTER TABLE [dbo].[ConfigBetMoney] DROP CONSTRAINT [DF_ConfigBetMoney_Timestamp01]
GO
ALTER TABLE [dbo].[ConfigBetCountWinFive] DROP CONSTRAINT [DF_ConfigBetCountWinFive_Guid]
GO
ALTER TABLE [dbo].[ConfigBetCount] DROP CONSTRAINT [DF_ConfigBetCount_Guid]
GO
ALTER TABLE [dbo].[Breeder] DROP CONSTRAINT [DF_Breeder_Guid]
GO
ALTER TABLE [dbo].[BetMgmtHistory] DROP CONSTRAINT [DF_BetMgmtHistory_Guid]
GO
ALTER TABLE [dbo].[BetMgmtHistory] DROP CONSTRAINT [DF_BetMgmtHistory_RegDatetime]
GO
ALTER TABLE [dbo].[BetMgmtByTemp] DROP CONSTRAINT [DF_BetMgmtByTemp_Guid]
GO
ALTER TABLE [dbo].[BetMgmtBySim] DROP CONSTRAINT [DF_BetMgmtBySim_Guid]
GO
ALTER TABLE [dbo].[BetMgmtByBet] DROP CONSTRAINT [DF_BetMgmtByBet_Guid]
GO
ALTER TABLE [dbo].[BetHistoryMaster] DROP CONSTRAINT [DF_BetHistoryMaster_Guid]
GO
ALTER TABLE [dbo].[BetHistoryDetail] DROP CONSTRAINT [DF_BetHistoryDetail_Guid]
GO
ALTER TABLE [dbo].[Bet6ByTrifecta] DROP CONSTRAINT [DF_Bet6ByTrifecta_Guid]
GO
ALTER TABLE [dbo].[Bet6ByHenkanUma] DROP CONSTRAINT [DF_Bet6ByHenkanUma_Guid]
GO
ALTER TABLE [dbo].[Bet6] DROP CONSTRAINT [DF_Bet6_Guid]
GO
ALTER TABLE [dbo].[Bet1ByWin] DROP CONSTRAINT [DF_Bet1ByWin_Guid]
GO
ALTER TABLE [dbo].[Bet1ByWide] DROP CONSTRAINT [DF_Bet1ByWide_Guid]
GO
ALTER TABLE [dbo].[Bet1ByTrio] DROP CONSTRAINT [DF_Bet1ByTrio_Guid]
GO
ALTER TABLE [dbo].[Bet1ByQuinella] DROP CONSTRAINT [DF_Bet1ByQuinella_Guid]
GO
ALTER TABLE [dbo].[Bet1ByPlace] DROP CONSTRAINT [DF_Bet1ByPlace_Guid]
GO
ALTER TABLE [dbo].[Bet1ByExacta] DROP CONSTRAINT [DF_Bet1ByExacta_Guid]
GO
ALTER TABLE [dbo].[Bet1ByBracket] DROP CONSTRAINT [DF_Bet1ByBracket_Guid]
GO
ALTER TABLE [dbo].[Bet1] DROP CONSTRAINT [DF_Bet1_Guid]
GO
ALTER TABLE [dbo].[BayesianTrial01] DROP CONSTRAINT [DF_AnalyzeBayesian01Trial_Guid]
GO
ALTER TABLE [dbo].[BaseStatsTrainerByRaceHorse] DROP CONSTRAINT [DF_BaseStatsTrainerByRaceHorse_Guid]
GO
ALTER TABLE [dbo].[BaseStatsJockeyByRaceHorse] DROP CONSTRAINT [DF_BaseStatsJockeyByRaceHorse_Guid]
GO
ALTER TABLE [dbo].[BaseStatsGen05HansyokuByRaceHorse] DROP CONSTRAINT [DF_BaseStatsGen05HansyokuByRaceHorse_Guid]
GO
ALTER TABLE [dbo].[BaseStatsGen02HansyokuByRaceHorse] DROP CONSTRAINT [DF_BaseStatsGen02HansyokuByRaceHorse_Guid]
GO
ALTER TABLE [dbo].[BaseStatsGen01HansyokuByRaceHorse] DROP CONSTRAINT [DF_BaseStatsGen01HansyokuByRaceHorse_Guid]
GO
ALTER TABLE [dbo].[BaseStatsBanusiByRaceHorse] DROP CONSTRAINT [DF_BaseStatsBanusiByRaceHorse_Guid]
GO
ALTER TABLE [dbo].[Banusi] DROP CONSTRAINT [DF_Banusi_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep03PrevRaceHorse] DROP CONSTRAINT [DF_AnalysisStep03PrevRaceHorse_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep03Jockey] DROP CONSTRAINT [DF_AnalysisStep03Jockey_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep03Gen02] DROP CONSTRAINT [DF_AnalysisStep03Gen02_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep03Gen01] DROP CONSTRAINT [DF_AnalysisStep03Gen01_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep03Basic] DROP CONSTRAINT [DF_AnalysisStep03Basic_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep02PrevRaceHorse] DROP CONSTRAINT [DF_AnalysisStep02PrevRaceHorse_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep02Jockey] DROP CONSTRAINT [DF_AnalysisStep02Jockey_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep02Gen02] DROP CONSTRAINT [DF_AnalysisStep02Gen02_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep02Gen01] DROP CONSTRAINT [DF_AnalysisStep02Gen01_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep02Basic] DROP CONSTRAINT [DF_AnalysisStep02Basic_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType35] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType35_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType35] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType35_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType31] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType31_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType31] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType31_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType26] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType26_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType26] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType26_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType25] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType25_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType25] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType25_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType24] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType24_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType24] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType24_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType23] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType23_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType23] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType23_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType22] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType22_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType22] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType22_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType21] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType21_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType21] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType21_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType16] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType16_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType16] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType16_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType15] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType15_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType15] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType15_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType14] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType14_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType14] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType14_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType13] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType13_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType13] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType13_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType12] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType12_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType12] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType12_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType11] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType11_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType11] DROP CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType11_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrepType0000] DROP CONSTRAINT [DF_AnalysisStep01PrepType0000_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrepType0000] DROP CONSTRAINT [DF_AnalysisStep01PrepType0000_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType35] DROP CONSTRAINT [DF_AnalysisStep01JockeyType35_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType35] DROP CONSTRAINT [DF_AnalysisStep01JockeyType35_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType31] DROP CONSTRAINT [DF_AnalysisStep01JockeyType31_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType31] DROP CONSTRAINT [DF_AnalysisStep01JockeyType31_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType26] DROP CONSTRAINT [DF_AnalysisStep01JockeyType26_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType26] DROP CONSTRAINT [DF_AnalysisStep01JockeyType26_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType2512] DROP CONSTRAINT [DF_AnalysisStep01JockeyType2512_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType2512] DROP CONSTRAINT [DF_AnalysisStep01JockeyType2512_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType25] DROP CONSTRAINT [DF_AnalysisStep01JockeyType25_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType25] DROP CONSTRAINT [DF_AnalysisStep01JockeyType25_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType24] DROP CONSTRAINT [DF_AnalysisStep01JockeyType24_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType24] DROP CONSTRAINT [DF_AnalysisStep01JockeyType24_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType23] DROP CONSTRAINT [DF_AnalysisStep01JockeyType23_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType23] DROP CONSTRAINT [DF_AnalysisStep01JockeyType23_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType22] DROP CONSTRAINT [DF_AnalysisStep01JockeyType22_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType22] DROP CONSTRAINT [DF_AnalysisStep01JockeyType22_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType21] DROP CONSTRAINT [DF_AnalysisStep01JockeyType21_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType21] DROP CONSTRAINT [DF_AnalysisStep01JockeyType21_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType16] DROP CONSTRAINT [DF_AnalysisStep01JockeyType16_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType16] DROP CONSTRAINT [DF_AnalysisStep01JockeyType16_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType15] DROP CONSTRAINT [DF_AnalysisStep01JockeyType15_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType15] DROP CONSTRAINT [DF_AnalysisStep01JockeyType15_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType14] DROP CONSTRAINT [DF_AnalysisStep01JockeyType14_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType14] DROP CONSTRAINT [DF_AnalysisStep01JockeyType14_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType13] DROP CONSTRAINT [DF_AnalysisStep01JockeyType13_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType13] DROP CONSTRAINT [DF_AnalysisStep01JockeyType13_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType12] DROP CONSTRAINT [DF_AnalysisStep01JockeyType12_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType12] DROP CONSTRAINT [DF_AnalysisStep01JockeyType12_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType11] DROP CONSTRAINT [DF_AnalysisStep01JockeyType11_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType11] DROP CONSTRAINT [DF_AnalysisStep01JockeyType11_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type35] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type35_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type35] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type35_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type31] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type31_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type31] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type31_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type26] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type26_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type26] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type26_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type2512] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type2512_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type2512] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type2512_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type25] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type25_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type25] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type25_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type24] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type24_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type24] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type24_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type23] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type23_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type23] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type23_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type22] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type22_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type22] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type22_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type21] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type21_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type21] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type21_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type16] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type16_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type16] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type16_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type15] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type15_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type15] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type15_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type14] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type14_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type14] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type14_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type13] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type13_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type13] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type13_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type12] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type12_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type12] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type12_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type11] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type11_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type11] DROP CONSTRAINT [DF_AnalysisStep01Gen02Type11_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type35] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type35_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type35] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type35_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type31] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type31_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type31] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type31_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type26] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type26_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type26] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type26_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type2512] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type2512_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type2512] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type2512_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type25] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type25_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type25] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type25_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type24] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type24_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type24] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type24_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type23] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type23_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type23] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type23_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type22] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type22_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type22] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type22_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type21] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type21_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type21] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type21_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type16] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type16_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type16] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type16_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type15] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type15_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type15] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type15_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type14] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type14_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type14] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type14_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type13] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type13_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type13] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type13_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type12] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type12_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type12] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type12_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type11] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type11_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type11] DROP CONSTRAINT [DF_AnalysisStep01Gen01Type11_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3519] DROP CONSTRAINT [DF_AnalysisStep01BasicType3519_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3519] DROP CONSTRAINT [DF_AnalysisStep01BasicType3519_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3518] DROP CONSTRAINT [DF_AnalysisStep01BasicType3518_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3518] DROP CONSTRAINT [DF_AnalysisStep01BasicType3518_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3119] DROP CONSTRAINT [DF_AnalysisStep01BasicType3119_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3119] DROP CONSTRAINT [DF_AnalysisStep01BasicType3119_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3118] DROP CONSTRAINT [DF_AnalysisStep01BasicType3118_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3118] DROP CONSTRAINT [DF_AnalysisStep01BasicType3118_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3000] DROP CONSTRAINT [DF_AnalysisStep01BasicType3000_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3000] DROP CONSTRAINT [DF_AnalysisStep01BasicType3000_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2612] DROP CONSTRAINT [DF_AnalysisStep01BasicType2612_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2612] DROP CONSTRAINT [DF_AnalysisStep01BasicType2612_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2611] DROP CONSTRAINT [DF_AnalysisStep01BasicType2611_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2611] DROP CONSTRAINT [DF_AnalysisStep01BasicType2611_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2512] DROP CONSTRAINT [DF_AnalysisStep01BasicType2512_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2512] DROP CONSTRAINT [DF_AnalysisStep01BasicType2512_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2511] DROP CONSTRAINT [DF_AnalysisStep01BasicType2511_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2511] DROP CONSTRAINT [DF_AnalysisStep01BasicType2511_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2414] DROP CONSTRAINT [DF_AnalysisStep01BasicType2414_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2414] DROP CONSTRAINT [DF_AnalysisStep01BasicType2414_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2413] DROP CONSTRAINT [DF_AnalysisStep01BasicType2413_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2413] DROP CONSTRAINT [DF_AnalysisStep01BasicType2413_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2412] DROP CONSTRAINT [DF_AnalysisStep01BasicType2412_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2412] DROP CONSTRAINT [DF_AnalysisStep01BasicType2412_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2411] DROP CONSTRAINT [DF_AnalysisStep01BasicType2411_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2411] DROP CONSTRAINT [DF_AnalysisStep01BasicType2411_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2314] DROP CONSTRAINT [DF_AnalysisStep01BasicType2314_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2314] DROP CONSTRAINT [DF_AnalysisStep01BasicType2314_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2313] DROP CONSTRAINT [DF_AnalysisStep01BasicType2313_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2313] DROP CONSTRAINT [DF_AnalysisStep01BasicType2313_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2214] DROP CONSTRAINT [DF_AnalysisStep01BasicType2214_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2214] DROP CONSTRAINT [DF_AnalysisStep01BasicType2214_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2213] DROP CONSTRAINT [DF_AnalysisStep01BasicType2213_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2213] DROP CONSTRAINT [DF_AnalysisStep01BasicType2213_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2114] DROP CONSTRAINT [DF_AnalysisStep01BasicType2114_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2114] DROP CONSTRAINT [DF_AnalysisStep01BasicType2114_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2113] DROP CONSTRAINT [DF_AnalysisStep01BasicType2113_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2113] DROP CONSTRAINT [DF_AnalysisStep01BasicType2113_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2112] DROP CONSTRAINT [DF_AnalysisStep01BasicType2112_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2112] DROP CONSTRAINT [DF_AnalysisStep01BasicType2112_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2111] DROP CONSTRAINT [DF_AnalysisStep01BasicType2111_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2111] DROP CONSTRAINT [DF_AnalysisStep01BasicType2111_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2000] DROP CONSTRAINT [DF_AnalysisStep01BasicType2000_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2000] DROP CONSTRAINT [DF_AnalysisStep01BasicType2000_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1612] DROP CONSTRAINT [DF_AnalysisStep01BasicType1612_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1612] DROP CONSTRAINT [DF_AnalysisStep01BasicType1612_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1611] DROP CONSTRAINT [DF_AnalysisStep01BasicType1611_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1611] DROP CONSTRAINT [DF_AnalysisStep01BasicType1611_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1512] DROP CONSTRAINT [DF_AnalysisStep01BasicType1512_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1512] DROP CONSTRAINT [DF_AnalysisStep01BasicType1512_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1511] DROP CONSTRAINT [DF_AnalysisStep01BasicType1511_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1511] DROP CONSTRAINT [DF_AnalysisStep01BasicType1511_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1414] DROP CONSTRAINT [DF_AnalysisStep01BasicType1414_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1414] DROP CONSTRAINT [DF_AnalysisStep01BasicType1414_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1413] DROP CONSTRAINT [DF_AnalysisStep01BasicType1413_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1413] DROP CONSTRAINT [DF_AnalysisStep01BasicType1413_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1412] DROP CONSTRAINT [DF_AnalysisStep01BasicType1412_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1412] DROP CONSTRAINT [DF_AnalysisStep01BasicType1412_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1411] DROP CONSTRAINT [DF_AnalysisStep01BasicType1411_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1411] DROP CONSTRAINT [DF_AnalysisStep01BasicType1411_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1314] DROP CONSTRAINT [DF_AnalysisStep01BasicType1314_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1314] DROP CONSTRAINT [DF_AnalysisStep01BasicType1314_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1313] DROP CONSTRAINT [DF_AnalysisStep01BasicType1313_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1313] DROP CONSTRAINT [DF_AnalysisStep01BasicType1313_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1214] DROP CONSTRAINT [DF_AnalysisStep01BasicType1214_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1214] DROP CONSTRAINT [DF_AnalysisStep01BasicType1214_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1213] DROP CONSTRAINT [DF_AnalysisStep01BasicType1213_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1213] DROP CONSTRAINT [DF_AnalysisStep01BasicType1213_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1114] DROP CONSTRAINT [DF_AnalysisStep01BasicType1114_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1114] DROP CONSTRAINT [DF_AnalysisStep01BasicType1114_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1113] DROP CONSTRAINT [DF_AnalysisStep01BasicType1113_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1113] DROP CONSTRAINT [DF_AnalysisStep01BasicType1113_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1112] DROP CONSTRAINT [DF_AnalysisStep01BasicType1112_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1112] DROP CONSTRAINT [DF_AnalysisStep01BasicType1112_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1111] DROP CONSTRAINT [DF_AnalysisStep01BasicType1111_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1111] DROP CONSTRAINT [DF_AnalysisStep01BasicType1111_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1000] DROP CONSTRAINT [DF_AnalysisStep01BasicType1000_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1000] DROP CONSTRAINT [DF_AnalysisStep01BasicType1000_Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType0600] DROP CONSTRAINT [DF_AnalysisStep01BasicType0600_Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType0600] DROP CONSTRAINT [DF_AnalysisStep01BasicType0600_Timestamp01]
GO
DROP INDEX [IX_ReplRaceHorse_007] ON [dbo].[ReplRaceHorse]
GO
DROP INDEX [IX_ReplRaceHorse_006] ON [dbo].[ReplRaceHorse]
GO
DROP INDEX [IX_ReplRaceHorse_005] ON [dbo].[ReplRaceHorse]
GO
DROP INDEX [IX_ReplRaceHorse_004] ON [dbo].[ReplRaceHorse]
GO
DROP INDEX [IX_ReplRaceHorse_003] ON [dbo].[ReplRaceHorse]
GO
DROP INDEX [IX_ReplRaceHorse_002] ON [dbo].[ReplRaceHorse]
GO
DROP INDEX [IX_ReplRaceHorse_001] ON [dbo].[ReplRaceHorse]
GO
DROP INDEX [IX_ReplRace_002] ON [dbo].[ReplRace]
GO
DROP INDEX [IX_ReplRace_001] ON [dbo].[ReplRace]
GO
DROP INDEX [IX_RaceHorse_007] ON [dbo].[RaceHorse]
GO
DROP INDEX [IX_RaceHorse_006] ON [dbo].[RaceHorse]
GO
DROP INDEX [IX_RaceHorse_005] ON [dbo].[RaceHorse]
GO
DROP INDEX [IX_RaceHorse_004] ON [dbo].[RaceHorse]
GO
DROP INDEX [IX_RaceHorse_003] ON [dbo].[RaceHorse]
GO
DROP INDEX [IX_RaceHorse_002] ON [dbo].[RaceHorse]
GO
DROP INDEX [IX_RaceHorse_001] ON [dbo].[RaceHorse]
GO
DROP INDEX [IX_Race_002] ON [dbo].[Race]
GO
DROP INDEX [IX_Race_001] ON [dbo].[Race]
GO
DROP INDEX [IX_Horse_003] ON [dbo].[Horse]
GO
DROP INDEX [IX_Horse_002] ON [dbo].[Horse]
GO
DROP INDEX [IX_Horse_001] ON [dbo].[Horse]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WinFiveByYuko]') AND type in (N'U'))
DROP TABLE [dbo].[WinFiveByYuko]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WinFiveByRace]') AND type in (N'U'))
DROP TABLE [dbo].[WinFiveByRace]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WinFiveByPay]') AND type in (N'U'))
DROP TABLE [dbo].[WinFiveByPay]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WinFive]') AND type in (N'U'))
DROP TABLE [dbo].[WinFive]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrainingWoodChip]') AND type in (N'U'))
DROP TABLE [dbo].[TrainingWoodChip]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrainingSlope]') AND type in (N'U'))
DROP TABLE [dbo].[TrainingSlope]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrainerByTrackType]') AND type in (N'U'))
DROP TABLE [dbo].[TrainerByTrackType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrainerByTotal]') AND type in (N'U'))
DROP TABLE [dbo].[TrainerByTotal]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TrainerByDistanceType]') AND type in (N'U'))
DROP TABLE [dbo].[TrainerByDistanceType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Trainer]') AND type in (N'U'))
DROP TABLE [dbo].[Trainer]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND type in (N'U'))
DROP TABLE [dbo].[sysdiagrams]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatsPrepBeforeRaceHorseByRaceType1]') AND type in (N'U'))
DROP TABLE [dbo].[StatsPrepBeforeRaceHorseByRaceType1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatsPrepBeforeRaceHorseByAll]') AND type in (N'U'))
DROP TABLE [dbo].[StatsPrepBeforeRaceHorseByAll]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatsPrepAfterRaceHorseByPrepRaceType1]') AND type in (N'U'))
DROP TABLE [dbo].[StatsPrepAfterRaceHorseByPrepRaceType1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatsPrepAfterRaceHorseByAll]') AND type in (N'U'))
DROP TABLE [dbo].[StatsPrepAfterRaceHorseByAll]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicBeforeRaceHorseByRaceType1]') AND type in (N'U'))
DROP TABLE [dbo].[StatsBasicBeforeRaceHorseByRaceType1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicBeforeRaceHorseByAll]') AND type in (N'U'))
DROP TABLE [dbo].[StatsBasicBeforeRaceHorseByAll]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicBeforeRaceByRaceType1]') AND type in (N'U'))
DROP TABLE [dbo].[StatsBasicBeforeRaceByRaceType1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicBeforeRaceByAll]') AND type in (N'U'))
DROP TABLE [dbo].[StatsBasicBeforeRaceByAll]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicBeforeOddsByRaceType1]') AND type in (N'U'))
DROP TABLE [dbo].[StatsBasicBeforeOddsByRaceType1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicBeforeOddsByAll]') AND type in (N'U'))
DROP TABLE [dbo].[StatsBasicBeforeOddsByAll]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicBeforeDmByRaceType1]') AND type in (N'U'))
DROP TABLE [dbo].[StatsBasicBeforeDmByRaceType1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicBeforeDmByAll]') AND type in (N'U'))
DROP TABLE [dbo].[StatsBasicBeforeDmByAll]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicAfterRaceHorseByRaceType1]') AND type in (N'U'))
DROP TABLE [dbo].[StatsBasicAfterRaceHorseByRaceType1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicAfterRaceHorseByAll]') AND type in (N'U'))
DROP TABLE [dbo].[StatsBasicAfterRaceHorseByAll]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicAfterRaceByRaceType1]') AND type in (N'U'))
DROP TABLE [dbo].[StatsBasicAfterRaceByRaceType1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StatsBasicAfterRaceByAll]') AND type in (N'U'))
DROP TABLE [dbo].[StatsBasicAfterRaceByAll]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpecialRaceByHorse]') AND type in (N'U'))
DROP TABLE [dbo].[SpecialRaceByHorse]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SpecialRace]') AND type in (N'U'))
DROP TABLE [dbo].[SpecialRace]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Silk]') AND type in (N'U'))
DROP TABLE [dbo].[Silk]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Schedule]') AND type in (N'U'))
DROP TABLE [dbo].[Schedule]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sanku]') AND type in (N'U'))
DROP TABLE [dbo].[Sanku]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sale]') AND type in (N'U'))
DROP TABLE [dbo].[Sale]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReplRaceHorse]') AND type in (N'U'))
DROP TABLE [dbo].[ReplRaceHorse]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReplRace]') AND type in (N'U'))
DROP TABLE [dbo].[ReplRace]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceRecord]') AND type in (N'U'))
DROP TABLE [dbo].[RaceRecord]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceInfo]') AND type in (N'U'))
DROP TABLE [dbo].[RaceInfo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByTrainerByTrackType]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByTrainerByTrackType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByTrainerByJyo]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByTrainerByJyo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByTrainerByDistanceType]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByTrainerByDistanceType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByTrainer]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByTrainer]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByJockeyByTrackType]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByJockeyByTrackType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByJockeyByJyo]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByJockeyByJyo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByJockeyByDistanceType]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByJockeyByDistanceType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByJockey]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByJockey]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByHorseByTrackType]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByHorseByTrackType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByHorseByTrackCondition]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByHorseByTrackCondition]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByHorseByTotal]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByHorseByTotal]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByHorseByRunType]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByHorseByRunType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByHorseByJyo]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByHorseByJyo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByHorseByDistanceType]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByHorseByDistanceType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByHorseByCourseType]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByHorseByCourseType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByHorse]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByHorse]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByBreederByTotal]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByBreederByTotal]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByBreeder]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByBreeder]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByBanusiByTotal]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByBanusiByTotal]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistoryByBanusi]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistoryByBanusi]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorseHistory]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorseHistory]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceHorse]') AND type in (N'U'))
DROP TABLE [dbo].[RaceHorse]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceExclusion]') AND type in (N'U'))
DROP TABLE [dbo].[RaceExclusion]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceByLapTime]') AND type in (N'U'))
DROP TABLE [dbo].[RaceByLapTime]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RaceByCornerPosition]') AND type in (N'U'))
DROP TABLE [dbo].[RaceByCornerPosition]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Race]') AND type in (N'U'))
DROP TABLE [dbo].[Race]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PredictModels3000]') AND type in (N'U'))
DROP TABLE [dbo].[PredictModels3000]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PredictModels2000]') AND type in (N'U'))
DROP TABLE [dbo].[PredictModels2000]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PredictModels1000]') AND type in (N'U'))
DROP TABLE [dbo].[PredictModels1000]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PredictModels0600]') AND type in (N'U'))
DROP TABLE [dbo].[PredictModels0600]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PredictModels]') AND type in (N'U'))
DROP TABLE [dbo].[PredictModels]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PredictByWinFive]') AND type in (N'U'))
DROP TABLE [dbo].[PredictByWinFive]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PredictByWin]') AND type in (N'U'))
DROP TABLE [dbo].[PredictByWin]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PredictByWide]') AND type in (N'U'))
DROP TABLE [dbo].[PredictByWide]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PredictByTrio]') AND type in (N'U'))
DROP TABLE [dbo].[PredictByTrio]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PredictByTrifecta]') AND type in (N'U'))
DROP TABLE [dbo].[PredictByTrifecta]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PredictByQuinella]') AND type in (N'U'))
DROP TABLE [dbo].[PredictByQuinella]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PredictByPlace]') AND type in (N'U'))
DROP TABLE [dbo].[PredictByPlace]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PredictByExacta]') AND type in (N'U'))
DROP TABLE [dbo].[PredictByExacta]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PredictByBracket]') AND type in (N'U'))
DROP TABLE [dbo].[PredictByBracket]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PayoffByPayAll]') AND type in (N'U'))
DROP TABLE [dbo].[PayoffByPayAll]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PayoffByHenkanWaku]') AND type in (N'U'))
DROP TABLE [dbo].[PayoffByHenkanWaku]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PayoffByHenkanUma]') AND type in (N'U'))
DROP TABLE [dbo].[PayoffByHenkanUma]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PayoffByHenkanDoWaku]') AND type in (N'U'))
DROP TABLE [dbo].[PayoffByHenkanDoWaku]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PayoffByFlag]') AND type in (N'U'))
DROP TABLE [dbo].[PayoffByFlag]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Payoff]') AND type in (N'U'))
DROP TABLE [dbo].[Payoff]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OddsByWin]') AND type in (N'U'))
DROP TABLE [dbo].[OddsByWin]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OddsByWide]') AND type in (N'U'))
DROP TABLE [dbo].[OddsByWide]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OddsByTrio]') AND type in (N'U'))
DROP TABLE [dbo].[OddsByTrio]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OddsByTrifecta]') AND type in (N'U'))
DROP TABLE [dbo].[OddsByTrifecta]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OddsByQuinella]') AND type in (N'U'))
DROP TABLE [dbo].[OddsByQuinella]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OddsByPlace]') AND type in (N'U'))
DROP TABLE [dbo].[OddsByPlace]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OddsByExacta]') AND type in (N'U'))
DROP TABLE [dbo].[OddsByExacta]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[OddsByBracket]') AND type in (N'U'))
DROP TABLE [dbo].[OddsByBracket]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Odds6]') AND type in (N'U'))
DROP TABLE [dbo].[Odds6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Odds5]') AND type in (N'U'))
DROP TABLE [dbo].[Odds5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Odds4]') AND type in (N'U'))
DROP TABLE [dbo].[Odds4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Odds3]') AND type in (N'U'))
DROP TABLE [dbo].[Odds3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Odds2]') AND type in (N'U'))
DROP TABLE [dbo].[Odds2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Odds1]') AND type in (N'U'))
DROP TABLE [dbo].[Odds1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NameOrigin]') AND type in (N'U'))
DROP TABLE [dbo].[NameOrigin]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterYoubi]') AND type in (N'U'))
DROP TABLE [dbo].[MasterYoubi]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterUmaKigo]') AND type in (N'U'))
DROP TABLE [dbo].[MasterUmaKigo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterTrackType3]') AND type in (N'U'))
DROP TABLE [dbo].[MasterTrackType3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterTrackType2]') AND type in (N'U'))
DROP TABLE [dbo].[MasterTrackType2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterTrackType]') AND type in (N'U'))
DROP TABLE [dbo].[MasterTrackType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterTrackCondition]') AND type in (N'U'))
DROP TABLE [dbo].[MasterTrackCondition]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterTrack]') AND type in (N'U'))
DROP TABLE [dbo].[MasterTrack]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterTozai]') AND type in (N'U'))
DROP TABLE [dbo].[MasterTozai]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterTenko]') AND type in (N'U'))
DROP TABLE [dbo].[MasterTenko]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterSyubetu]') AND type in (N'U'))
DROP TABLE [dbo].[MasterSyubetu]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterStats]') AND type in (N'U'))
DROP TABLE [dbo].[MasterStats]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterSmile]') AND type in (N'U'))
DROP TABLE [dbo].[MasterSmile]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterSex]') AND type in (N'U'))
DROP TABLE [dbo].[MasterSex]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterRunType]') AND type in (N'U'))
DROP TABLE [dbo].[MasterRunType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterPlace2]') AND type in (N'U'))
DROP TABLE [dbo].[MasterPlace2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterPlace]') AND type in (N'U'))
DROP TABLE [dbo].[MasterPlace]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterOpenModeDataSpec]') AND type in (N'U'))
DROP TABLE [dbo].[MasterOpenModeDataSpec]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterMinarai]') AND type in (N'U'))
DROP TABLE [dbo].[MasterMinarai]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterLicense]') AND type in (N'U'))
DROP TABLE [dbo].[MasterLicense]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterKigo]') AND type in (N'U'))
DROP TABLE [dbo].[MasterKigo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterKeiro]') AND type in (N'U'))
DROP TABLE [dbo].[MasterKeiro]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterJyuryo]') AND type in (N'U'))
DROP TABLE [dbo].[MasterJyuryo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterJyoken5]') AND type in (N'U'))
DROP TABLE [dbo].[MasterJyoken5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterJyoken]') AND type in (N'U'))
DROP TABLE [dbo].[MasterJyoken]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterHorseNum]') AND type in (N'U'))
DROP TABLE [dbo].[MasterHorseNum]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterHinsyu]') AND type in (N'U'))
DROP TABLE [dbo].[MasterHinsyu]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterGrade]') AND type in (N'U'))
DROP TABLE [dbo].[MasterGrade]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterDistanceType2]') AND type in (N'U'))
DROP TABLE [dbo].[MasterDistanceType2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterDistanceType]') AND type in (N'U'))
DROP TABLE [dbo].[MasterDistanceType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterDataSpec]') AND type in (N'U'))
DROP TABLE [dbo].[MasterDataSpec]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterCourseType]') AND type in (N'U'))
DROP TABLE [dbo].[MasterCourseType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterCourseKubun]') AND type in (N'U'))
DROP TABLE [dbo].[MasterCourseKubun]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterChakusa]') AND type in (N'U'))
DROP TABLE [dbo].[MasterChakusa]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterBracketNum]') AND type in (N'U'))
DROP TABLE [dbo].[MasterBracketNum]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterBlinker]') AND type in (N'U'))
DROP TABLE [dbo].[MasterBlinker]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MasterBetType]') AND type in (N'U'))
DROP TABLE [dbo].[MasterBetType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Master2Weight]') AND type in (N'U'))
DROP TABLE [dbo].[Master2Weight]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Master2RaceType9]') AND type in (N'U'))
DROP TABLE [dbo].[Master2RaceType9]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Master2RaceType8]') AND type in (N'U'))
DROP TABLE [dbo].[Master2RaceType8]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Master2RaceType7]') AND type in (N'U'))
DROP TABLE [dbo].[Master2RaceType7]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Master2RaceType6]') AND type in (N'U'))
DROP TABLE [dbo].[Master2RaceType6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Master2RaceType5]') AND type in (N'U'))
DROP TABLE [dbo].[Master2RaceType5]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Master2RaceType4]') AND type in (N'U'))
DROP TABLE [dbo].[Master2RaceType4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Master2RaceType3]') AND type in (N'U'))
DROP TABLE [dbo].[Master2RaceType3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Master2RaceType2]') AND type in (N'U'))
DROP TABLE [dbo].[Master2RaceType2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Master2RaceType1]') AND type in (N'U'))
DROP TABLE [dbo].[Master2RaceType1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Master2Ninki]') AND type in (N'U'))
DROP TABLE [dbo].[Master2Ninki]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Master2Handicap]') AND type in (N'U'))
DROP TABLE [dbo].[Master2Handicap]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Master2Distance]') AND type in (N'U'))
DROP TABLE [dbo].[Master2Distance]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Master2Class]') AND type in (N'U'))
DROP TABLE [dbo].[Master2Class]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Keito]') AND type in (N'U'))
DROP TABLE [dbo].[Keito]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JockeyByTrackType]') AND type in (N'U'))
DROP TABLE [dbo].[JockeyByTrackType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JockeyByTotal]') AND type in (N'U'))
DROP TABLE [dbo].[JockeyByTotal]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JockeyBySaikinJyusyo]') AND type in (N'U'))
DROP TABLE [dbo].[JockeyBySaikinJyusyo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JockeyByHatuSyori]') AND type in (N'U'))
DROP TABLE [dbo].[JockeyByHatuSyori]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JockeyByHatsuKijyo]') AND type in (N'U'))
DROP TABLE [dbo].[JockeyByHatsuKijyo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JockeyByDistanceType]') AND type in (N'U'))
DROP TABLE [dbo].[JockeyByDistanceType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Jockey]') AND type in (N'U'))
DROP TABLE [dbo].[Jockey]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HorseByTrackCondition]') AND type in (N'U'))
DROP TABLE [dbo].[HorseByTrackCondition]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HorseByTotal]') AND type in (N'U'))
DROP TABLE [dbo].[HorseByTotal]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HorseBySmile]') AND type in (N'U'))
DROP TABLE [dbo].[HorseBySmile]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HorseByRunType]') AND type in (N'U'))
DROP TABLE [dbo].[HorseByRunType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HorseByDistanceType]') AND type in (N'U'))
DROP TABLE [dbo].[HorseByDistanceType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HorseByCourseType]') AND type in (N'U'))
DROP TABLE [dbo].[HorseByCourseType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Horse]') AND type in (N'U'))
DROP TABLE [dbo].[Horse]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HansyokuParents]') AND type in (N'U'))
DROP TABLE [dbo].[HansyokuParents]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hansyoku]') AND type in (N'U'))
DROP TABLE [dbo].[Hansyoku]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EventWeather]') AND type in (N'U'))
DROP TABLE [dbo].[EventWeather]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EventTimeChange]') AND type in (N'U'))
DROP TABLE [dbo].[EventTimeChange]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EventQueue]') AND type in (N'U'))
DROP TABLE [dbo].[EventQueue]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EventJockeyChange]') AND type in (N'U'))
DROP TABLE [dbo].[EventJockeyChange]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EventHorseWeight]') AND type in (N'U'))
DROP TABLE [dbo].[EventHorseWeight]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EventCourseChange]') AND type in (N'U'))
DROP TABLE [dbo].[EventCourseChange]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EventAvoid]') AND type in (N'U'))
DROP TABLE [dbo].[EventAvoid]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DataMiningTaisen]') AND type in (N'U'))
DROP TABLE [dbo].[DataMiningTaisen]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DataMining]') AND type in (N'U'))
DROP TABLE [dbo].[DataMining]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CourseInfo]') AND type in (N'U'))
DROP TABLE [dbo].[CourseInfo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConfigRoi_001]') AND type in (N'U'))
DROP TABLE [dbo].[ConfigRoi_001]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConfigLastTimestamp]') AND type in (N'U'))
DROP TABLE [dbo].[ConfigLastTimestamp]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConfigIpatBalance]') AND type in (N'U'))
DROP TABLE [dbo].[ConfigIpatBalance]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConfigIpatAccount]') AND type in (N'U'))
DROP TABLE [dbo].[ConfigIpatAccount]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConfigDataSpecRecKubun]') AND type in (N'U'))
DROP TABLE [dbo].[ConfigDataSpecRecKubun]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConfigBetMoney]') AND type in (N'U'))
DROP TABLE [dbo].[ConfigBetMoney]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConfigBetCountWinFive]') AND type in (N'U'))
DROP TABLE [dbo].[ConfigBetCountWinFive]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConfigBetCount]') AND type in (N'U'))
DROP TABLE [dbo].[ConfigBetCount]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Breeder]') AND type in (N'U'))
DROP TABLE [dbo].[Breeder]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BetWinFiveMgmtByTemp]') AND type in (N'U'))
DROP TABLE [dbo].[BetWinFiveMgmtByTemp]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BetWinFiveMgmtBySim]') AND type in (N'U'))
DROP TABLE [dbo].[BetWinFiveMgmtBySim]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BetWinFiveMgmtByBet]') AND type in (N'U'))
DROP TABLE [dbo].[BetWinFiveMgmtByBet]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BetMgmtHistory]') AND type in (N'U'))
DROP TABLE [dbo].[BetMgmtHistory]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BetMgmtByTemp]') AND type in (N'U'))
DROP TABLE [dbo].[BetMgmtByTemp]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BetMgmtBySim]') AND type in (N'U'))
DROP TABLE [dbo].[BetMgmtBySim]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BetMgmtByBet]') AND type in (N'U'))
DROP TABLE [dbo].[BetMgmtByBet]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BetHistoryMaster]') AND type in (N'U'))
DROP TABLE [dbo].[BetHistoryMaster]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BetHistoryDetail]') AND type in (N'U'))
DROP TABLE [dbo].[BetHistoryDetail]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bet6ByTrifecta]') AND type in (N'U'))
DROP TABLE [dbo].[Bet6ByTrifecta]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bet6ByHenkanUma]') AND type in (N'U'))
DROP TABLE [dbo].[Bet6ByHenkanUma]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bet6]') AND type in (N'U'))
DROP TABLE [dbo].[Bet6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bet1ByWin]') AND type in (N'U'))
DROP TABLE [dbo].[Bet1ByWin]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bet1ByWide]') AND type in (N'U'))
DROP TABLE [dbo].[Bet1ByWide]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bet1ByTrio]') AND type in (N'U'))
DROP TABLE [dbo].[Bet1ByTrio]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bet1ByQuinella]') AND type in (N'U'))
DROP TABLE [dbo].[Bet1ByQuinella]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bet1ByPlace]') AND type in (N'U'))
DROP TABLE [dbo].[Bet1ByPlace]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bet1ByExacta]') AND type in (N'U'))
DROP TABLE [dbo].[Bet1ByExacta]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bet1ByBracket]') AND type in (N'U'))
DROP TABLE [dbo].[Bet1ByBracket]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bet1]') AND type in (N'U'))
DROP TABLE [dbo].[Bet1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BayesianTrial01]') AND type in (N'U'))
DROP TABLE [dbo].[BayesianTrial01]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BaseStatsTrainerByRaceHorse]') AND type in (N'U'))
DROP TABLE [dbo].[BaseStatsTrainerByRaceHorse]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BaseStatsJockeyByRaceHorse]') AND type in (N'U'))
DROP TABLE [dbo].[BaseStatsJockeyByRaceHorse]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BaseStatsGen05HansyokuByRaceHorse]') AND type in (N'U'))
DROP TABLE [dbo].[BaseStatsGen05HansyokuByRaceHorse]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BaseStatsGen02HansyokuByRaceHorse]') AND type in (N'U'))
DROP TABLE [dbo].[BaseStatsGen02HansyokuByRaceHorse]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BaseStatsGen01HansyokuByRaceHorse]') AND type in (N'U'))
DROP TABLE [dbo].[BaseStatsGen01HansyokuByRaceHorse]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BaseStatsBanusiByRaceHorse]') AND type in (N'U'))
DROP TABLE [dbo].[BaseStatsBanusiByRaceHorse]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Banusi]') AND type in (N'U'))
DROP TABLE [dbo].[Banusi]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep03PrevRaceHorse]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep03PrevRaceHorse]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep03Jockey]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep03Jockey]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep03Gen02]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep03Gen02]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep03Gen01]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep03Gen01]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep03Basic]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep03Basic]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep02PrevRaceHorse]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep02PrevRaceHorse]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep02Jockey]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep02Jockey]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep02Gen02]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep02Gen02]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep02Gen01]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep02Gen01]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep02Basic]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep02Basic]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType35]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01PrevRaceHorseType35]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType31]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01PrevRaceHorseType31]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType26]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01PrevRaceHorseType26]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType25]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01PrevRaceHorseType25]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType24]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01PrevRaceHorseType24]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType23]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01PrevRaceHorseType23]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType22]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01PrevRaceHorseType22]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType21]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01PrevRaceHorseType21]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType16]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01PrevRaceHorseType16]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType15]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01PrevRaceHorseType15]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType14]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01PrevRaceHorseType14]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType13]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01PrevRaceHorseType13]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType12]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01PrevRaceHorseType12]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrevRaceHorseType11]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01PrevRaceHorseType11]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01PrepType0000]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01PrepType0000]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType35]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01JockeyType35]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType31]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01JockeyType31]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType26]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01JockeyType26]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType2512]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01JockeyType2512]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType25]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01JockeyType25]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType24]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01JockeyType24]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType23]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01JockeyType23]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType22]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01JockeyType22]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType21]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01JockeyType21]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType16]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01JockeyType16]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType15]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01JockeyType15]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType14]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01JockeyType14]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType13]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01JockeyType13]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType12]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01JockeyType12]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01JockeyType11]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01JockeyType11]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type35]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen02Type35]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type31]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen02Type31]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type26]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen02Type26]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type2512]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen02Type2512]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type25]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen02Type25]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type24]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen02Type24]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type23]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen02Type23]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type22]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen02Type22]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type21]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen02Type21]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type16]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen02Type16]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type15]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen02Type15]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type14]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen02Type14]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type13]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen02Type13]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type12]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen02Type12]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen02Type11]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen02Type11]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type35]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen01Type35]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type31]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen01Type31]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type26]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen01Type26]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type2512]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen01Type2512]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type25]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen01Type25]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type24]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen01Type24]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type23]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen01Type23]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type22]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen01Type22]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type21]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen01Type21]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type16]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen01Type16]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type15]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen01Type15]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type14]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen01Type14]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type13]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen01Type13]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type12]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen01Type12]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01Gen01Type11]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01Gen01Type11]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType3519]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType3519]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType3518]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType3518]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType3119]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType3119]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType3118]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType3118]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType3000]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType3000]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2612]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType2612]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2611]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType2611]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2512]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType2512]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2511]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType2511]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2414]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType2414]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2413]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType2413]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2412]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType2412]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2411]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType2411]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2314]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType2314]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2313]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType2313]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2214]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType2214]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2213]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType2213]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2114]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType2114]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2113]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType2113]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2112]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType2112]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2111]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType2111]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType2000]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType2000]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1612]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType1612]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1611]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType1611]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1512]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType1512]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1511]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType1511]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1414]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType1414]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1413]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType1413]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1412]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType1412]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1411]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType1411]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1314]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType1314]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1313]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType1313]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1214]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType1214]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1213]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType1213]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1114]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType1114]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1113]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType1113]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1112]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType1112]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1111]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType1111]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType1000]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType1000]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AnalysisStep01BasicType0600]') AND type in (N'U'))
DROP TABLE [dbo].[AnalysisStep01BasicType0600]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType0600](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType0600] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType1000](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType1000] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType1111](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType1111] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType1112](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType1112] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType1113](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType1113] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType1114](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType1114] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType1213](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType1213] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType1214](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType1214] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType1313](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType1313] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType1314](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType1314] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType1411](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType1411] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType1412](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType1412] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType1413](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType1413] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType1414](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType1414] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType1511](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType1511] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType1512](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType1512] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType1611](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType1611] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType1612](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType1612] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType2000](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType2000] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType2111](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType2111] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType2112](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType2112] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType2113](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType2113] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType2114](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType2114] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType2213](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType2213] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType2214](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType2214] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType2313](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType2313] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType2314](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType2314] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType2411](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType2411] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType2412](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType2412] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType2413](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType2413] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType2414](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType2414] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType2511](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType2511] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType2512](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType2512] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType2611](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType2611] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType2612](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType2612] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType3000](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType3000] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType3118](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType3118] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType3119](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType3119] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType3518](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType3518] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01BasicType3519](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01BasicType3519] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen01Type11](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen01Type11] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen01Type12](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen01Type12] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen01Type13](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen01Type13] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen01Type14](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen01Type14] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen01Type15](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen01Type15] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen01Type16](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen01Type16] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen01Type21](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen01Type21] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen01Type22](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen01Type22] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen01Type23](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen01Type23] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen01Type24](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen01Type24] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen01Type25](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen01Type25] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen01Type2512](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen01Type2512] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen01Type26](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen01Type26] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen01Type31](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen01Type31] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen01Type35](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen01Type35] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen02Type11](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen02Type11] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen02Type12](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen02Type12] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen02Type13](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen02Type13] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen02Type14](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen02Type14] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen02Type15](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen02Type15] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen02Type16](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen02Type16] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen02Type21](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen02Type21] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen02Type22](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen02Type22] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen02Type23](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen02Type23] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen02Type24](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen02Type24] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen02Type25](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen02Type25] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen02Type2512](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen02Type2512] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen02Type26](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen02Type26] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen02Type31](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen02Type31] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01Gen02Type35](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01Gen02Type35] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01JockeyType11](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01JockeyType11] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01JockeyType12](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01JockeyType12] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01JockeyType13](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01JockeyType13] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01JockeyType14](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01JockeyType14] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01JockeyType15](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01JockeyType15] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01JockeyType16](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01JockeyType16] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01JockeyType21](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01JockeyType21] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01JockeyType22](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01JockeyType22] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01JockeyType23](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01JockeyType23] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01JockeyType24](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01JockeyType24] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01JockeyType25](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01JockeyType25] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01JockeyType2512](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01JockeyType2512] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01JockeyType26](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01JockeyType26] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01JockeyType31](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01JockeyType31] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01JockeyType35](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01JockeyType35] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01PrepType0000](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01PrepType0000] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01PrevRaceHorseType11](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01PrevRaceHorseType11] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01PrevRaceHorseType12](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01PrevRaceHorseType12] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01PrevRaceHorseType13](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01PrevRaceHorseType13] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01PrevRaceHorseType14](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01PrevRaceHorseType14] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01PrevRaceHorseType15](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01PrevRaceHorseType15] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01PrevRaceHorseType16](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01PrevRaceHorseType16] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01PrevRaceHorseType21](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01PrevRaceHorseType21] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01PrevRaceHorseType22](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01PrevRaceHorseType22] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01PrevRaceHorseType23](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01PrevRaceHorseType23] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01PrevRaceHorseType24](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01PrevRaceHorseType24] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01PrevRaceHorseType25](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01PrevRaceHorseType25] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01PrevRaceHorseType26](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01PrevRaceHorseType26] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01PrevRaceHorseType31](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01PrevRaceHorseType31] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep01PrevRaceHorseType35](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValue] [float] NULL,
	[PredictValueNorm] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AnalysisStep01PrevRaceHorseType35] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep02Basic](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[PredictValueA] [float] NULL,
	[PredictValueB] [float] NULL,
	[PredictValueC] [float] NULL,
	[PredictValueNormA] [float] NULL,
	[PredictValueNormB] [float] NULL,
	[PredictValueNormC] [float] NULL,
	[PayWinCount] [float] NULL,
	[PayWinAvg] [float] NULL,
	[PayWinStDev] [float] NULL,
	[PayWinSum] [float] NULL,
	[PayWinMin] [float] NULL,
	[PayWinMax] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_AnalysisStep02Basic] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep02Gen01](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[PredictValueA] [float] NULL,
	[PredictValueB] [float] NULL,
	[PredictValueC] [float] NULL,
	[PredictValueNormA] [float] NULL,
	[PredictValueNormB] [float] NULL,
	[PredictValueNormC] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_AnalysisStep02Gen01] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep02Gen02](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[PredictValueA] [float] NULL,
	[PredictValueB] [float] NULL,
	[PredictValueC] [float] NULL,
	[PredictValueNormA] [float] NULL,
	[PredictValueNormB] [float] NULL,
	[PredictValueNormC] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_AnalysisStep02Gen02] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep02Jockey](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[PredictValueA] [float] NULL,
	[PredictValueB] [float] NULL,
	[PredictValueC] [float] NULL,
	[PredictValueNormA] [float] NULL,
	[PredictValueNormB] [float] NULL,
	[PredictValueNormC] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_AnalysisStep02Jockey] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep02PrevRaceHorse](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[PredictValueA] [float] NULL,
	[PredictValueB] [float] NULL,
	[PredictValueC] [float] NULL,
	[PredictValueNormA] [float] NULL,
	[PredictValueNormB] [float] NULL,
	[PredictValueNormC] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_AnalysisStep02PrevRaceHorse] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep03Basic](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValueA] [float] NULL,
	[PredictValueB] [float] NULL,
	[PredictValueC] [float] NULL,
	[PredictValueNormA] [float] NULL,
	[PredictValueNormB] [float] NULL,
	[PredictValueNormC] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_AnalysisStep03Basic] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep03Gen01](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValueA] [float] NULL,
	[PredictValueB] [float] NULL,
	[PredictValueC] [float] NULL,
	[PredictValueNormA] [float] NULL,
	[PredictValueNormB] [float] NULL,
	[PredictValueNormC] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_AnalysisStep03Gen01] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep03Gen02](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValueA] [float] NULL,
	[PredictValueB] [float] NULL,
	[PredictValueC] [float] NULL,
	[PredictValueNormA] [float] NULL,
	[PredictValueNormB] [float] NULL,
	[PredictValueNormC] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_AnalysisStep03Gen02] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep03Jockey](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValueA] [float] NULL,
	[PredictValueB] [float] NULL,
	[PredictValueC] [float] NULL,
	[PredictValueNormA] [float] NULL,
	[PredictValueNormB] [float] NULL,
	[PredictValueNormC] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_AnalysisStep03Jockey] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnalysisStep03PrevRaceHorse](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RowNum] [int] IDENTITY(1,1) NOT NULL,
	[PredictValueA] [float] NULL,
	[PredictValueB] [float] NULL,
	[PredictValueC] [float] NULL,
	[PredictValueNormA] [float] NULL,
	[PredictValueNormB] [float] NULL,
	[PredictValueNormC] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_AnalysisStep03PrevRaceHorse] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[RowNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banusi](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[BanusiId] [nchar](6) NOT NULL,
	[BanusiName] [nvarchar](64) NULL,
	[BanusiNameCo] [nvarchar](64) NULL,
	[BanusiNameKana] [nvarchar](50) NULL,
	[BanusiNameEng] [nvarchar](100) NULL,
	[SilkId] [nchar](60) NULL,
	[YearendSetYear] [int] NULL,
	[YearendHonsyokin] [float] NULL,
	[YearendFukasyokin] [float] NULL,
	[YearendChakuKaisu1] [float] NULL,
	[YearendChakuKaisu2] [float] NULL,
	[YearendChakuKaisu3] [float] NULL,
	[YearendChakuKaisu4] [float] NULL,
	[YearendChakuKaisu5] [float] NULL,
	[YearendChakuKaisu6] [float] NULL,
	[TotalSetYear] [int] NULL,
	[TotalHonsyokin] [float] NULL,
	[TotalFukasyokin] [float] NULL,
	[TotalChakuKaisu1] [float] NULL,
	[TotalChakuKaisu2] [float] NULL,
	[TotalChakuKaisu3] [float] NULL,
	[TotalChakuKaisu4] [float] NULL,
	[TotalChakuKaisu5] [float] NULL,
	[TotalChakuKaisu6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Banusi] PRIMARY KEY CLUSTERED 
(
	[BanusiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaseStatsBanusiByRaceHorse](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RunCount] [float] NULL,
	[HitCountA] [float] NULL,
	[HitCountB] [float] NULL,
	[HitCountC] [float] NULL,
	[HitRateA] [float] NULL,
	[HitRateB] [float] NULL,
	[HitRateC] [float] NULL,
	[HitRateLogA] [float] NULL,
	[HitRateLogB] [float] NULL,
	[HitRateLogC] [float] NULL,
	[HitRateLogSdvA] [float] NULL,
	[HitRateLogSdvB] [float] NULL,
	[HitRateLogSdvC] [float] NULL,
	[HitCount1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate1] [float] NULL,
	[HitRate2] [float] NULL,
	[HitRate3] [float] NULL,
	[HitRateLog1] [float] NULL,
	[HitRateLog2] [float] NULL,
	[HitRateLog3] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_BaseStatsBanusiByRaceHorse] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaseStatsGen01HansyokuByRaceHorse](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RunCount] [float] NULL,
	[HitCountA] [float] NULL,
	[HitCountB] [float] NULL,
	[HitCountC] [float] NULL,
	[HitRateA] [float] NULL,
	[HitRateB] [float] NULL,
	[HitRateC] [float] NULL,
	[HitRateLogA] [float] NULL,
	[HitRateLogB] [float] NULL,
	[HitRateLogC] [float] NULL,
	[HitRateLogSdvA] [float] NULL,
	[HitRateLogSdvB] [float] NULL,
	[HitRateLogSdvC] [float] NULL,
	[HitCount1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate1] [float] NULL,
	[HitRate2] [float] NULL,
	[HitRate3] [float] NULL,
	[HitRateLog1] [float] NULL,
	[HitRateLog2] [float] NULL,
	[HitRateLog3] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_BaseStatsGen01HansyokuByRaceHorse] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaseStatsGen02HansyokuByRaceHorse](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RunCount] [float] NULL,
	[HitCountA] [float] NULL,
	[HitCountB] [float] NULL,
	[HitCountC] [float] NULL,
	[HitRateA] [float] NULL,
	[HitRateB] [float] NULL,
	[HitRateC] [float] NULL,
	[HitRateLogA] [float] NULL,
	[HitRateLogB] [float] NULL,
	[HitRateLogC] [float] NULL,
	[HitRateLogSdvA] [float] NULL,
	[HitRateLogSdvB] [float] NULL,
	[HitRateLogSdvC] [float] NULL,
	[HitCount1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate1] [float] NULL,
	[HitRate2] [float] NULL,
	[HitRate3] [float] NULL,
	[HitRateLog1] [float] NULL,
	[HitRateLog2] [float] NULL,
	[HitRateLog3] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_BaseStatsGen02HansyokuByRaceHorse] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaseStatsGen05HansyokuByRaceHorse](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RunCount] [float] NULL,
	[HitCountA] [float] NULL,
	[HitCountB] [float] NULL,
	[HitCountC] [float] NULL,
	[HitRateA] [float] NULL,
	[HitRateB] [float] NULL,
	[HitRateC] [float] NULL,
	[HitRateLogA] [float] NULL,
	[HitRateLogB] [float] NULL,
	[HitRateLogC] [float] NULL,
	[HitRateLogSdvA] [float] NULL,
	[HitRateLogSdvB] [float] NULL,
	[HitRateLogSdvC] [float] NULL,
	[HitCount1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate1] [float] NULL,
	[HitRate2] [float] NULL,
	[HitRate3] [float] NULL,
	[HitRateLog1] [float] NULL,
	[HitRateLog2] [float] NULL,
	[HitRateLog3] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_BaseStatsGen05HansyokuByRaceHorse] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaseStatsJockeyByRaceHorse](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RunCount] [float] NULL,
	[HitCountA] [float] NULL,
	[HitCountB] [float] NULL,
	[HitCountC] [float] NULL,
	[HitRateA] [float] NULL,
	[HitRateB] [float] NULL,
	[HitRateC] [float] NULL,
	[HitRateLogA] [float] NULL,
	[HitRateLogB] [float] NULL,
	[HitRateLogC] [float] NULL,
	[HitRateLogSdvA] [float] NULL,
	[HitRateLogSdvB] [float] NULL,
	[HitRateLogSdvC] [float] NULL,
	[HitCount1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate1] [float] NULL,
	[HitRate2] [float] NULL,
	[HitRate3] [float] NULL,
	[HitRateLog1] [float] NULL,
	[HitRateLog2] [float] NULL,
	[HitRateLog3] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_BaseStatsJockeyByRaceHorse] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaseStatsTrainerByRaceHorse](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RunCount] [float] NULL,
	[HitCountA] [float] NULL,
	[HitCountB] [float] NULL,
	[HitCountC] [float] NULL,
	[HitRateA] [float] NULL,
	[HitRateB] [float] NULL,
	[HitRateC] [float] NULL,
	[HitRateLogA] [float] NULL,
	[HitRateLogB] [float] NULL,
	[HitRateLogC] [float] NULL,
	[HitRateLogSdvA] [float] NULL,
	[HitRateLogSdvB] [float] NULL,
	[HitRateLogSdvC] [float] NULL,
	[HitCount1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate1] [float] NULL,
	[HitRate2] [float] NULL,
	[HitRate3] [float] NULL,
	[HitRateLog1] [float] NULL,
	[HitRateLog2] [float] NULL,
	[HitRateLog3] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_BaseStatsTrainerByRaceHorse] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BayesianTrial01](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[TryNum] [int] NOT NULL,
	[TryNumOrderAsc] [int] NULL,
	[TryNumOrderDesc] [int] NULL,
	[LhName] [nvarchar](255) NULL,
	[IsValidPriorProbValueA] [bit] NULL,
	[PriorProbValueSdvA] [float] NULL,
	[PriorProbValueNormA] [float] NULL,
	[IsValidLhProbValueA] [bit] NULL,
	[LhProbValueA] [float] NULL,
	[LhProbValueSdvA] [float] NULL,
	[LhProbValueNormA] [float] NULL,
	[IsValidPostProbValueA] [bit] NULL,
	[PostProbValueA] [float] NULL,
	[PostProbValueSdvA] [float] NULL,
	[PostProbValueNormA] [float] NULL,
	[IsValidPriorProbValueB] [bit] NULL,
	[PriorProbValueSdvB] [float] NULL,
	[PriorProbValueNormB] [float] NULL,
	[IsValidLhProbValueB] [bit] NULL,
	[LhProbValueB] [float] NULL,
	[LhProbValueSdvB] [float] NULL,
	[LhProbValueNormB] [float] NULL,
	[IsValidPostProbValueB] [bit] NULL,
	[PostProbValueB] [float] NULL,
	[PostProbValueSdvB] [float] NULL,
	[PostProbValueNormB] [float] NULL,
	[IsValidPriorProbValueC] [bit] NULL,
	[PriorProbValueSdvC] [float] NULL,
	[PriorProbValueNormC] [float] NULL,
	[IsValidLhProbValueC] [bit] NULL,
	[LhProbValueC] [float] NULL,
	[LhProbValueSdvC] [float] NULL,
	[LhProbValueNormC] [float] NULL,
	[IsValidPostProbValueC] [bit] NULL,
	[PostProbValueC] [float] NULL,
	[PostProbValueSdvC] [float] NULL,
	[PostProbValueNormC] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_AnalyzeBayesian01Trial] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[TryNum] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bet1](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[TorokuTosu] [float] NULL,
	[SyussoTosu] [float] NULL,
	[HatubaiFlag1] [nchar](1) NULL,
	[HatubaiFlag2] [nchar](1) NULL,
	[HatubaiFlag3] [nchar](1) NULL,
	[HatubaiFlag4] [nchar](1) NULL,
	[HatubaiFlag5] [nchar](1) NULL,
	[HatubaiFlag6] [nchar](1) NULL,
	[HatubaiFlag7] [nchar](1) NULL,
	[FukuChakuBaraiKey] [nchar](1) NULL,
	[HenkanUma1] [nchar](1) NULL,
	[HenkanUma2] [nchar](1) NULL,
	[HenkanUma3] [nchar](1) NULL,
	[HenkanUma4] [nchar](1) NULL,
	[HenkanUma5] [nchar](1) NULL,
	[HenkanUma6] [nchar](1) NULL,
	[HenkanUma7] [nchar](1) NULL,
	[HenkanUma8] [nchar](1) NULL,
	[HenkanUma9] [nchar](1) NULL,
	[HenkanUma10] [nchar](1) NULL,
	[HenkanUma11] [nchar](1) NULL,
	[HenkanUma12] [nchar](1) NULL,
	[HenkanUma13] [nchar](1) NULL,
	[HenkanUma14] [nchar](1) NULL,
	[HenkanUma15] [nchar](1) NULL,
	[HenkanUma16] [nchar](1) NULL,
	[HenkanUma17] [nchar](1) NULL,
	[HenkanUma18] [nchar](1) NULL,
	[HenkanUma19] [nchar](1) NULL,
	[HenkanUma20] [nchar](1) NULL,
	[HenkanUma21] [nchar](1) NULL,
	[HenkanUma22] [nchar](1) NULL,
	[HenkanUma23] [nchar](1) NULL,
	[HenkanUma24] [nchar](1) NULL,
	[HenkanUma25] [nchar](1) NULL,
	[HenkanUma26] [nchar](1) NULL,
	[HenkanUma27] [nchar](1) NULL,
	[HenkanUma28] [nchar](1) NULL,
	[HenkanWaku1] [nchar](1) NULL,
	[HenkanWaku2] [nchar](1) NULL,
	[HenkanWaku3] [nchar](1) NULL,
	[HenkanWaku4] [nchar](1) NULL,
	[HenkanWaku5] [nchar](1) NULL,
	[HenkanWaku6] [nchar](1) NULL,
	[HenkanWaku7] [nchar](1) NULL,
	[HenkanWaku8] [nchar](1) NULL,
	[HenkanDoWaku1] [nchar](1) NULL,
	[HenkanDoWaku2] [nchar](1) NULL,
	[HenkanDoWaku3] [nchar](1) NULL,
	[HenkanDoWaku4] [nchar](1) NULL,
	[HenkanDoWaku5] [nchar](1) NULL,
	[HenkanDoWaku6] [nchar](1) NULL,
	[HenkanDoWaku7] [nchar](1) NULL,
	[HenkanDoWaku8] [nchar](1) NULL,
	[HyoRealTotalWin] [float] NULL,
	[HyoRealTotalPlace] [float] NULL,
	[HyoRealTotalBracket] [float] NULL,
	[HyoRealTotalQuinella] [float] NULL,
	[HyoRealTotalWide] [float] NULL,
	[HyoRealTotalExacta] [float] NULL,
	[HyoRealTotalTrio] [float] NULL,
	[HyoTotalWin] [float] NULL,
	[HyoTotalPlace] [float] NULL,
	[HyoTotalBracket] [float] NULL,
	[HyoTotalQuinella] [float] NULL,
	[HyoTotalWide] [float] NULL,
	[HyoTotalExacta] [float] NULL,
	[HyoTotalTrio] [float] NULL,
	[HyoHenkanTotalWin] [float] NULL,
	[HyoHenkanTotalPlace] [float] NULL,
	[HyoHenkanTotalBracket] [float] NULL,
	[HyoHenkanTotalQuinella] [float] NULL,
	[HyoHenkanTotalWide] [float] NULL,
	[HyoHenkanTotalExacta] [float] NULL,
	[HyoHenkanTotalTrio] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Bet1] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bet1ByBracket](
	[RaceId] [nchar](12) NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Hyo1] [float] NULL,
	[Hyo2] [float] NULL,
	[Ninki] [float] NULL,
	[HyoRealTotal] [float] NULL,
	[HyoTotal] [float] NULL,
	[HyoHenkanTotal] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Bet1ByBracket] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bet1ByExacta](
	[RaceId] [nchar](12) NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Hyo1] [float] NULL,
	[Hyo2] [float] NULL,
	[Ninki] [float] NULL,
	[HyoRealTotal] [float] NULL,
	[HyoTotal] [float] NULL,
	[HyoHenkanTotal] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Bet1ByExacta] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bet1ByPlace](
	[RaceId] [nchar](12) NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Hyo1] [float] NULL,
	[Hyo2] [float] NULL,
	[Ninki] [float] NULL,
	[HyoRealTotal] [float] NULL,
	[HyoTotal] [float] NULL,
	[HyoHenkanTotal] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Bet1ByPlace] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bet1ByQuinella](
	[RaceId] [nchar](12) NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Hyo1] [float] NULL,
	[Hyo2] [float] NULL,
	[Ninki] [float] NULL,
	[HyoRealTotal] [float] NULL,
	[HyoTotal] [float] NULL,
	[HyoHenkanTotal] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Bet1ByQuinella] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bet1ByTrio](
	[RaceId] [nchar](12) NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Hyo1] [float] NULL,
	[Hyo2] [float] NULL,
	[Ninki] [float] NULL,
	[HyoRealTotal] [float] NULL,
	[HyoTotal] [float] NULL,
	[HyoHenkanTotal] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Bet1ByTrio] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bet1ByWide](
	[RaceId] [nchar](12) NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Hyo1] [float] NULL,
	[Hyo2] [float] NULL,
	[Ninki] [float] NULL,
	[HyoRealTotal] [float] NULL,
	[HyoTotal] [float] NULL,
	[HyoHenkanTotal] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Bet1ByWide] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bet1ByWin](
	[RaceId] [nchar](12) NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Hyo1] [float] NULL,
	[Hyo2] [float] NULL,
	[Ninki] [float] NULL,
	[HyoRealTotal] [float] NULL,
	[HyoTotal] [float] NULL,
	[HyoHenkanTotal] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Bet1ByWin] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bet6](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[TorokuTosu] [float] NULL,
	[SyussoTosu] [float] NULL,
	[HatubaiFlag] [nchar](1) NULL,
	[HyoRealTotalTrifecta] [float] NULL,
	[HyoTotalTrifecta] [float] NULL,
	[HyoHenkanTotalTrifecta] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Bet6] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bet6ByHenkanUma](
	[RaceId] [nchar](12) NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[HenkanUma] [nchar](1) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Bet6ByHenkanUma] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bet6ByTrifecta](
	[RaceId] [nchar](12) NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Hyo1] [float] NULL,
	[Hyo2] [float] NULL,
	[Ninki] [float] NULL,
	[HyoRealTotal] [float] NULL,
	[HyoTotal] [float] NULL,
	[HyoHenkanTotal] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Bet6ByTrifecta] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BetHistoryDetail](
	[BetId] [uniqueidentifier] NOT NULL,
	[BetDatetime] [datetime] NULL,
	[ReceptId] [int] NULL,
	[RaceId] [nchar](12) NULL,
	[BetTypeId] [int] NULL,
	[BetNum] [int] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[TextData] [nvarchar](255) NULL,
	[Hoshiki] [nchar](1) NULL,
	[Shikibetsu] [nchar](1) NULL,
	[Kumi1] [int] NULL,
	[Kumi2] [int] NULL,
	[Kumi3] [int] NULL,
	[BetCount] [float] NULL,
	[HitCount] [float] NULL,
	[BetMoney] [float] NULL,
	[HitMoney] [float] NULL,
	[ReturnMoney] [float] NULL,
	[IsBet] [bit] NULL,
	[IsHit] [bit] NULL,
	[IsFixed] [bit] NULL,
	[IsBetCompleted] [bit] NULL,
	[BetCompletedDatetime] [datetime] NULL,
	[CheckDatetime] [datetime] NULL,
	[BetOdds1] [float] NULL,
	[BetOdds2] [float] NULL,
	[WinMoney1] [float] NULL,
	[WinMoney2] [float] NULL,
	[PayMoney] [float] NULL,
	[PayRank] [float] NULL,
	[BracketNum1] [int] NULL,
	[BracketNum2] [int] NULL,
	[BracketNum3] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_BetHistoryDetail] PRIMARY KEY CLUSTERED 
(
	[BetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BetHistoryMaster](
	[BetId] [uniqueidentifier] NOT NULL,
	[BetDatetime] [datetime] NULL,
	[ReceptId] [int] NULL,
	[RaceId] [nchar](12) NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[InetId] [nchar](12) NULL,
	[ReceptDatetime] [datetime] NULL,
	[BettableMoney] [int] NULL,
	[BettableCount] [int] NULL,
	[BetCount] [float] NULL,
	[HitCount] [float] NULL,
	[BetMoney] [float] NULL,
	[HitMoney] [float] NULL,
	[ReturnMoney] [float] NULL,
	[IsBet] [bit] NULL,
	[IsHit] [bit] NULL,
	[IsFixed] [bit] NULL,
	[IsBetCompleted] [bit] NULL,
	[BetCompletedDatetime] [datetime] NULL,
	[CheckDatetime] [datetime] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_BetHistoryMaster] PRIMARY KEY CLUSTERED 
(
	[BetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BetMgmtByBet](
	[RaceId] [nchar](12) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[BetDatetime] [datetime] NOT NULL,
	[BetNum] [int] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[IsValidPredictValue] [bit] NULL,
	[PredictValue] [float] NULL,
	[PredictValueSdv] [float] NULL,
	[PredictValueDv] [float] NULL,
	[PredictValueRank] [float] NULL,
	[ExpectedOdds] [float] NULL,
	[ExpectedOddsRatio] [float] NULL,
	[PredictScore] [float] NULL,
	[PredictScoreRank] [float] NULL,
	[Odds1] [float] NULL,
	[Odds2] [float] NULL,
	[IsBet] [bit] NULL,
	[IsHit] [bit] NULL,
	[BetCount] [float] NULL,
	[HitCount] [float] NULL,
	[InitialBetMoney] [float] NULL,
	[RoiBetRate] [float] NULL,
	[ExtraBetMoney] [float] NULL,
	[ExtraBetRate] [float] NULL,
	[BetMoney] [float] NULL,
	[HitMoney] [float] NULL,
	[ReturnMoney] [float] NULL,
	[BracketNum1] [int] NULL,
	[BracketNum2] [int] NULL,
	[BracketNum3] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[IsSentJra] [bit] NULL,
	[IsSentOk] [bit] NULL,
	[SendJraDatetime] [datetime] NULL,
	[Timestamp02] [datetime] NULL,
	[IsChecked] [bit] NULL,
	[CheckDatetime] [datetime] NULL,
	[Timestamp03] [datetime] NULL,
	[IsCelebratedBet] [bit] NULL,
	[IsCelebratedBetDatetime] [datetime] NULL,
	[IsCelebratedHit] [bit] NULL,
	[IsCelebratedHitDatetime] [datetime] NULL,
	[IsCelebratedFinish] [bit] NULL,
	[IsCelebratedFinishDatetime] [datetime] NULL,
	[Timestamp04] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_BetMgmtByBet] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BetMgmtBySim](
	[RaceId] [nchar](12) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[BetDatetime] [datetime] NOT NULL,
	[BetNum] [int] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[IsValidPredictValue] [bit] NULL,
	[PredictValue] [float] NULL,
	[PredictValueSdv] [float] NULL,
	[PredictValueDv] [float] NULL,
	[PredictValueRank] [float] NULL,
	[ExpectedOdds] [float] NULL,
	[ExpectedOddsRatio] [float] NULL,
	[PredictScore] [float] NULL,
	[PredictScoreRank] [float] NULL,
	[Odds1] [float] NULL,
	[Odds2] [float] NULL,
	[IsBet] [bit] NULL,
	[IsHit] [bit] NULL,
	[BetCount] [float] NULL,
	[HitCount] [float] NULL,
	[InitialBetMoney] [float] NULL,
	[RoiBetRate] [float] NULL,
	[ExtraBetMoney] [float] NULL,
	[ExtraBetRate] [float] NULL,
	[BetMoney] [float] NULL,
	[HitMoney] [float] NULL,
	[ReturnMoney] [float] NULL,
	[BracketNum1] [int] NULL,
	[BracketNum2] [int] NULL,
	[BracketNum3] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[IsSentJra] [bit] NULL,
	[IsSentOk] [bit] NULL,
	[SendJraDatetime] [datetime] NULL,
	[Timestamp02] [datetime] NULL,
	[IsChecked] [bit] NULL,
	[CheckDatetime] [datetime] NULL,
	[Timestamp03] [datetime] NULL,
	[IsCelebratedBet] [bit] NULL,
	[IsCelebratedBetDatetime] [datetime] NULL,
	[IsCelebratedHit] [bit] NULL,
	[IsCelebratedHitDatetime] [datetime] NULL,
	[IsCelebratedFinish] [bit] NULL,
	[IsCelebratedFinishDatetime] [datetime] NULL,
	[Timestamp04] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_BetMgmtBySim] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BetMgmtByTemp](
	[RaceId] [nchar](12) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[BetDatetime] [datetime] NOT NULL,
	[BetNum] [int] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[IsValidPredictValue] [bit] NULL,
	[PredictValue] [float] NULL,
	[PredictValueSdv] [float] NULL,
	[PredictValueDv] [float] NULL,
	[PredictValueRank] [float] NULL,
	[ExpectedOdds] [float] NULL,
	[ExpectedOddsRatio] [float] NULL,
	[PredictScore] [float] NULL,
	[PredictScoreRank] [float] NULL,
	[Odds1] [float] NULL,
	[Odds2] [float] NULL,
	[IsBet] [bit] NULL,
	[IsHit] [bit] NULL,
	[BetCount] [float] NULL,
	[HitCount] [float] NULL,
	[InitialBetMoney] [float] NULL,
	[RoiBetRate] [float] NULL,
	[ExtraBetMoney] [float] NULL,
	[ExtraBetRate] [float] NULL,
	[BetMoney] [float] NULL,
	[HitMoney] [float] NULL,
	[ReturnMoney] [float] NULL,
	[BracketNum1] [int] NULL,
	[BracketNum2] [int] NULL,
	[BracketNum3] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[IsSentJra] [bit] NULL,
	[IsSentOk] [bit] NULL,
	[SendJraDatetime] [datetime] NULL,
	[Timestamp02] [datetime] NULL,
	[IsChecked] [bit] NULL,
	[CheckDatetime] [datetime] NULL,
	[Timestamp03] [datetime] NULL,
	[IsCelebratedBet] [bit] NULL,
	[IsCelebratedBetDatetime] [datetime] NULL,
	[IsCelebratedHit] [bit] NULL,
	[IsCelebratedHitDatetime] [datetime] NULL,
	[IsCelebratedFinish] [bit] NULL,
	[IsCelebratedFinishDatetime] [datetime] NULL,
	[Timestamp04] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_BetMgmtByTemp] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BetMgmtHistory](
	[HistoryId] [int] IDENTITY(1,1) NOT NULL,
	[RegDatetime] [datetime] NULL,
	[BetId] [uniqueidentifier] NULL,
	[RaceId] [nchar](12) NULL,
	[BetTypeId] [int] NULL,
	[Kumi1] [int] NULL,
	[Kumi2] [int] NULL,
	[Kumi3] [int] NULL,
	[BetDatetime] [datetime] NULL,
	[BetNum] [int] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[IsValidPredictValue] [bit] NULL,
	[PredictValue] [float] NULL,
	[PredictValueSdv] [float] NULL,
	[PredictValueDv] [float] NULL,
	[PredictValueRank] [float] NULL,
	[ExpectedOdds] [float] NULL,
	[ExpectedOddsRatio] [float] NULL,
	[PredictScore] [float] NULL,
	[PredictScoreRank] [float] NULL,
	[Odds1] [float] NULL,
	[Odds2] [float] NULL,
	[IsBet] [bit] NULL,
	[IsHit] [bit] NULL,
	[BetCount] [float] NULL,
	[HitCount] [float] NULL,
	[BetMoney] [float] NULL,
	[HitMoney] [float] NULL,
	[ReturnMoney] [float] NULL,
	[BracketNum1] [int] NULL,
	[BracketNum2] [int] NULL,
	[BracketNum3] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[IsSentJra] [bit] NULL,
	[IsSentOk] [bit] NULL,
	[SendJraDatetime] [datetime] NULL,
	[Timestamp02] [datetime] NULL,
	[IsChecked] [bit] NULL,
	[CheckDatetime] [datetime] NULL,
	[Timestamp03] [datetime] NULL,
	[IsCelebratedBet] [bit] NULL,
	[CelebrateBetDatetime] [datetime] NULL,
	[IsCelebratedHit] [bit] NULL,
	[CelebrateHitDatetime] [datetime] NULL,
	[Timestamp04] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_BetMgmtHistory] PRIMARY KEY CLUSTERED 
(
	[HistoryId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BetWinFiveMgmtByBet](
	[RaceDate] [date] NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Kumi4] [int] NOT NULL,
	[Kumi5] [int] NOT NULL,
	[BetDatetime] [datetime] NOT NULL,
	[BetNum] [int] NULL,
	[IsValidPredictValue] [bit] NULL,
	[PredictValue] [float] NULL,
	[PredictValueSdv] [float] NULL,
	[PredictValueDv] [float] NULL,
	[PredictValueRank] [float] NULL,
	[PredictScore] [float] NULL,
	[PredictScoreRank] [float] NULL,
	[IsBet] [bit] NULL,
	[IsHit] [bit] NULL,
	[BetCount] [float] NULL,
	[HitCount] [float] NULL,
	[DefaultBetMoney] [float] NULL,
	[DefaultBetRate] [float] NULL,
	[BetRate] [float] NULL,
	[BetMoney] [float] NULL,
	[HitMoney] [float] NULL,
	[ReturnMoney] [float] NULL,
	[BracketNum1] [int] NULL,
	[BracketNum2] [int] NULL,
	[BracketNum3] [int] NULL,
	[BracketNum4] [int] NULL,
	[BracketNum5] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[IsSentJra] [bit] NULL,
	[IsSentOk] [bit] NULL,
	[SendJraDatetime] [datetime] NULL,
	[Timestamp02] [datetime] NULL,
	[IsChecked] [bit] NULL,
	[CheckDatetime] [datetime] NULL,
	[Timestamp03] [datetime] NULL,
	[IsCelebratedBet] [bit] NULL,
	[IsCelebratedBetDatetime] [datetime] NULL,
	[IsCelebratedHit] [bit] NULL,
	[IsCelebratedHitDatetime] [datetime] NULL,
	[IsCelebratedFinish] [bit] NULL,
	[IsCelebratedFinishDatetime] [datetime] NULL,
	[Timestamp04] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_BetWinFiveMgmtByBet] PRIMARY KEY CLUSTERED 
(
	[RaceDate] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC,
	[Kumi4] ASC,
	[Kumi5] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BetWinFiveMgmtBySim](
	[RaceDate] [date] NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Kumi4] [int] NOT NULL,
	[Kumi5] [int] NOT NULL,
	[BetDatetime] [datetime] NOT NULL,
	[BetNum] [int] NULL,
	[IsValidPredictValue] [bit] NULL,
	[PredictValue] [float] NULL,
	[PredictValueSdv] [float] NULL,
	[PredictValueDv] [float] NULL,
	[PredictValueRank] [float] NULL,
	[PredictScore] [float] NULL,
	[PredictScoreRank] [float] NULL,
	[IsBet] [bit] NULL,
	[IsHit] [bit] NULL,
	[BetCount] [float] NULL,
	[HitCount] [float] NULL,
	[DefaultBetMoney] [float] NULL,
	[DefaultBetRate] [float] NULL,
	[BetRate] [float] NULL,
	[BetMoney] [float] NULL,
	[HitMoney] [float] NULL,
	[ReturnMoney] [float] NULL,
	[BracketNum1] [int] NULL,
	[BracketNum2] [int] NULL,
	[BracketNum3] [int] NULL,
	[BracketNum4] [int] NULL,
	[BracketNum5] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[IsSentJra] [bit] NULL,
	[IsSentOk] [bit] NULL,
	[SendJraDatetime] [datetime] NULL,
	[Timestamp02] [datetime] NULL,
	[IsChecked] [bit] NULL,
	[CheckDatetime] [datetime] NULL,
	[Timestamp03] [datetime] NULL,
	[IsCelebratedBet] [bit] NULL,
	[IsCelebratedBetDatetime] [datetime] NULL,
	[IsCelebratedHit] [bit] NULL,
	[IsCelebratedHitDatetime] [datetime] NULL,
	[IsCelebratedFinish] [bit] NULL,
	[IsCelebratedFinishDatetime] [datetime] NULL,
	[Timestamp04] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_BetWinFiveMgmtBySim] PRIMARY KEY CLUSTERED 
(
	[RaceDate] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC,
	[Kumi4] ASC,
	[Kumi5] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BetWinFiveMgmtByTemp](
	[RaceDate] [date] NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Kumi4] [int] NOT NULL,
	[Kumi5] [int] NOT NULL,
	[BetDatetime] [datetime] NOT NULL,
	[BetNum] [int] NULL,
	[IsValidPredictValue] [bit] NULL,
	[PredictValue] [float] NULL,
	[PredictValueSdv] [float] NULL,
	[PredictValueDv] [float] NULL,
	[PredictValueRank] [float] NULL,
	[PredictScore] [float] NULL,
	[PredictScoreRank] [float] NULL,
	[IsBet] [bit] NULL,
	[IsHit] [bit] NULL,
	[BetCount] [float] NULL,
	[HitCount] [float] NULL,
	[DefaultBetMoney] [float] NULL,
	[DefaultBetRate] [float] NULL,
	[BetRate] [float] NULL,
	[BetMoney] [float] NULL,
	[HitMoney] [float] NULL,
	[ReturnMoney] [float] NULL,
	[BracketNum1] [int] NULL,
	[BracketNum2] [int] NULL,
	[BracketNum3] [int] NULL,
	[BracketNum4] [int] NULL,
	[BracketNum5] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[IsSentJra] [bit] NULL,
	[IsSentOk] [bit] NULL,
	[SendJraDatetime] [datetime] NULL,
	[Timestamp02] [datetime] NULL,
	[IsChecked] [bit] NULL,
	[CheckDatetime] [datetime] NULL,
	[Timestamp03] [datetime] NULL,
	[IsCelebratedBet] [bit] NULL,
	[IsCelebratedBetDatetime] [datetime] NULL,
	[IsCelebratedHit] [bit] NULL,
	[IsCelebratedHitDatetime] [datetime] NULL,
	[IsCelebratedFinish] [bit] NULL,
	[IsCelebratedFinishDatetime] [datetime] NULL,
	[Timestamp04] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_BetWinFiveMgmtByTemp] PRIMARY KEY CLUSTERED 
(
	[RaceDate] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC,
	[Kumi4] ASC,
	[Kumi5] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Breeder](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[BreederId] [nchar](6) NOT NULL,
	[BreederNameCo] [nvarchar](70) NULL,
	[BreederName] [nvarchar](70) NULL,
	[BreederNameKana] [nvarchar](70) NULL,
	[BreederNameEng] [nvarchar](168) NULL,
	[Address] [nvarchar](20) NULL,
	[YearendSetYear] [int] NULL,
	[YearendHonsyokin] [float] NULL,
	[YearendFukasyokin] [float] NULL,
	[YearendChakuKaisu1] [float] NULL,
	[YearendChakuKaisu2] [float] NULL,
	[YearendChakuKaisu3] [float] NULL,
	[YearendChakuKaisu4] [float] NULL,
	[YearendChakuKaisu5] [float] NULL,
	[YearendChakuKaisu6] [float] NULL,
	[TotalSetYear] [int] NULL,
	[TotalHonsyokin] [float] NULL,
	[TotalFukasyokin] [float] NULL,
	[TotalChakuKaisu1] [float] NULL,
	[TotalChakuKaisu2] [float] NULL,
	[TotalChakuKaisu3] [float] NULL,
	[TotalChakuKaisu4] [float] NULL,
	[TotalChakuKaisu5] [float] NULL,
	[TotalChakuKaisu6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Breeder] PRIMARY KEY CLUSTERED 
(
	[BreederId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigBetCount](
	[ConfigTypeId] [int] NOT NULL,
	[ClassId] [nchar](4) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[BetCount] [float] NULL,
	[DefaultBetCount] [float] NULL,
	[LimitBetCount] [float] NULL,
	[Description] [nvarchar](255) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_ConfigBetCount] PRIMARY KEY CLUSTERED 
(
	[ConfigTypeId] ASC,
	[ClassId] ASC,
	[BetTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigBetCountWinFive](
	[ConfigTypeId] [int] NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[BetCount] [float] NULL,
	[DefaultBetCount] [float] NULL,
	[LimitBetCount] [float] NULL,
	[Description] [nvarchar](255) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_ConfigBetCountWinFive] PRIMARY KEY CLUSTERED 
(
	[ConfigTypeId] ASC,
	[BetTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigBetMoney](
	[ClassId] [nchar](4) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[InitialBetMoney] [float] NULL,
	[InitialBetRate] [float] NULL,
	[LimitBetMoney] [float] NULL,
	[RoiBetCount] [float] NULL,
	[RoiHitCount] [float] NULL,
	[RoiHitRate] [float] NULL,
	[RoiBetMoney] [float] NULL,
	[RoiHitMoney] [float] NULL,
	[RoiReturnMoney] [float] NULL,
	[RoiReturnRate] [float] NULL,
	[Description] [nvarchar](255) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_ConfigBetMoney] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC,
	[BetTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigDataSpecRecKubun](
	[OpenMode] [int] NOT NULL,
	[DataSpecSortOrder] [int] NOT NULL,
	[RecKubunSortOrder] [int] NOT NULL,
	[DataSpecId] [char](4) NOT NULL,
	[RecKubun] [nchar](2) NOT NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_ConfigDataSpecRecKubun] PRIMARY KEY CLUSTERED 
(
	[OpenMode] ASC,
	[DataSpecSortOrder] ASC,
	[RecKubunSortOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigIpatAccount](
	[Id] [nchar](20) NOT NULL,
	[InetId] [nchar](8) NULL,
	[UserNo] [nchar](8) NULL,
	[PassNo] [nchar](4) NULL,
	[ParsNo] [nchar](4) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigIpatBalance](
	[RaceDate] [date] NOT NULL,
	[IsFirstCheck] [bit] NULL,
	[CheckDate] [datetime] NULL,
	[Deposit] [float] NULL,
	[WithDraw] [float] NULL,
	[Balance] [float] NULL,
	[BettableMoney] [float] NULL,
	[BettableCount] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ConfigIpatBalance] PRIMARY KEY CLUSTERED 
(
	[RaceDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigLastTimestamp](
	[DataSpec] [char](4) NOT NULL,
	[RecKubun] [nchar](2) NOT NULL,
	[RecKubunType] [int] NOT NULL,
	[LastFileTimestamp] [nchar](14) NULL,
	[LastFileName] [nvarchar](255) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_ConfigLastTimestamp] PRIMARY KEY CLUSTERED 
(
	[DataSpec] ASC,
	[RecKubun] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigRoi_001](
	[BetTypeId] [int] NOT NULL,
	[BetCount] [float] NULL,
	[HitCount] [float] NULL,
	[HitRate] [float] NULL,
	[BetMoney] [float] NULL,
	[HitMoney] [float] NULL,
	[ReturnMoney] [float] NULL,
	[ReturnRate] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_ConfigRoi] PRIMARY KEY CLUSTERED 
(
	[BetTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseInfo](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[PlaceId] [nchar](2) NOT NULL,
	[Distance] [int] NOT NULL,
	[TrackId] [nchar](2) NOT NULL,
	[KaishuDate] [date] NOT NULL,
	[CourseEx] [nvarchar](max) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_CourseInfo] PRIMARY KEY CLUSTERED 
(
	[PlaceId] ASC,
	[Distance] ASC,
	[TrackId] ASC,
	[KaishuDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataMining](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[HorseNum] [int] NOT NULL,
	[MakeHm] [nchar](4) NULL,
	[DmTime] [float] NULL,
	[DmTimeP] [float] NULL,
	[DmTimeM] [float] NULL,
	[DmGosaP] [float] NULL,
	[DmGosaM] [float] NULL,
	[IsUpdatedEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[IsValidDmTimeSdv] [bit] NULL,
	[DmTimeSdv] [float] NULL,
	[DmTimeDv] [float] NULL,
	[DmTimeRank] [float] NULL,
	[DmSpeed] [float] NULL,
	[IsValidDmSpeedSdv] [bit] NULL,
	[DmSpeedSdv] [float] NULL,
	[DmSpeedDv] [float] NULL,
	[DmSpeedRank] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[IsValidDmTimeSdvByRace] [bit] NULL,
	[DmTimeSdvByRace] [float] NULL,
	[DmTimeDvByRace] [float] NULL,
	[DmTimeRankByRace] [float] NULL,
	[IsValidDmSpeedSdvByRace] [bit] NULL,
	[DmSpeedSdvByRace] [float] NULL,
	[DmSpeedDvByRace] [float] NULL,
	[DmSpeedRankByRace] [float] NULL,
	[Timestamp03] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_DataMining] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseNum] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataMiningTaisen](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[HorseNum] [int] NOT NULL,
	[MakeHm] [nchar](4) NULL,
	[TmScore] [float] NULL,
	[IsUpdatedEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[IsValidTmScoreSdv] [bit] NULL,
	[TmScoreSdv] [float] NULL,
	[TmScoreDv] [float] NULL,
	[TmScoreRank] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[IsValidTmScoreSdvByRace] [bit] NULL,
	[TmScoreSdvByRace] [float] NULL,
	[TmScoreDvByRace] [float] NULL,
	[TmScoreRankByRace] [float] NULL,
	[Timestamp03] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_DataMiningTaisen] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseNum] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventAvoid](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[RaceDate] [date] NOT NULL,
	[PlaceId] [nchar](2) NOT NULL,
	[Kaiji] [int] NOT NULL,
	[Nichiji] [int] NOT NULL,
	[RaceNum] [int] NOT NULL,
	[AnnounceDatetime] [datetime] NULL,
	[HorseNum] [int] NOT NULL,
	[Bamei] [nvarchar](18) NULL,
	[JiyuKubun] [nchar](3) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_EventAvoid] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventCourseChange](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceId] [nchar](20) NOT NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[AnnounceDatetime] [datetime] NOT NULL,
	[Distance] [int] NULL,
	[TrackId] [nchar](2) NULL,
	[DistanceBefore] [int] NULL,
	[TrackIdBefore] [nchar](2) NULL,
	[ReasonId] [nchar](1) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_EventCourseChange] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[AnnounceDatetime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventHorseWeight](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[AnnounceDatetime] [datetime] NULL,
	[HorseNum] [int] NOT NULL,
	[Bamei] [nvarchar](18) NULL,
	[Weight] [float] NULL,
	[WeightDelta] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_EventHorseWeight] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventJockeyChange](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[AnnounceDatetime] [datetime] NOT NULL,
	[HorseNum] [int] NOT NULL,
	[Bamei] [nvarchar](18) NULL,
	[Handicap] [float] NULL,
	[JockeyId] [nchar](5) NULL,
	[JockeyName] [nvarchar](17) NULL,
	[MinaraiId] [nchar](1) NULL,
	[HandicapBefore] [float] NULL,
	[JockeyIdBefore] [nchar](5) NULL,
	[JockeyNameBefore] [nvarchar](17) NULL,
	[MinaraiIdBefore] [nchar](1) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_EventJockeyChange] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[AnnounceDatetime] ASC,
	[HorseNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventQueue](
	[EventId] [uniqueidentifier] NOT NULL,
	[EventDatetime] [datetime] NOT NULL,
	[AnnounceDatetime] [datetime] NULL,
	[EventType] [nvarchar](255) NULL,
	[IsProceeded] [bit] NULL,
	[Priority] [int] NULL,
	[OpenMode] [int] NULL,
	[OpenDataSpecId] [char](4) NULL,
	[OpenKey] [nvarchar](255) NULL,
	[ReturnCode] [int] NULL,
	[RaceDate] [date] NULL,
	[RaceId] [nchar](12) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_EventQueue] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC,
	[EventDatetime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventTimeChange](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[AnnounceDatetime] [datetime] NOT NULL,
	[StartTime] [datetime] NULL,
	[StartTimeBefore] [datetime] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_EventTimeChange] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[AnnounceDatetime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventWeather](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDayId] [nchar](17) NOT NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[AnnounceDatetime] [datetime] NOT NULL,
	[HenkoId] [nchar](1) NOT NULL,
	[TenkoId] [nchar](1) NULL,
	[SibaBabaId] [nchar](1) NULL,
	[DirtBabaId] [nchar](1) NULL,
	[TenkoIdBefore] [nchar](1) NULL,
	[SibaBabaIdBefore] [nchar](1) NULL,
	[DirtBabaIdBefore] [nchar](1) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_EventWeather] PRIMARY KEY CLUSTERED 
(
	[RaceDayId] ASC,
	[AnnounceDatetime] ASC,
	[HenkoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hansyoku](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[HansyokuId] [nchar](8) NOT NULL,
	[Reserved1] [nchar](8) NULL,
	[HorseId] [nchar](10) NULL,
	[Reserved2] [nchar](1) NULL,
	[Bamei] [nvarchar](36) NULL,
	[BameiKana] [nvarchar](40) NULL,
	[BameiEng] [nvarchar](80) NULL,
	[BirthYear] [int] NULL,
	[SexId] [nchar](1) NULL,
	[HinsyuId] [nchar](1) NULL,
	[KeiroId] [nchar](2) NULL,
	[HansyokuMochiKubun] [nchar](1) NULL,
	[ImportYear] [int] NULL,
	[SanchiName] [nvarchar](20) NULL,
	[FemaleHansyokuId] [nchar](8) NULL,
	[MaleHansyokuId] [nchar](8) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Hansyoku] PRIMARY KEY CLUSTERED 
(
	[HansyokuId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HansyokuParents](
	[HansyokuId] [nchar](8) NOT NULL,
	[ParentsHansyokuId] [nchar](8) NOT NULL,
	[SexId] [nchar](1) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_HansyokuParents] PRIMARY KEY CLUSTERED 
(
	[HansyokuId] ASC,
	[ParentsHansyokuId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horse](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[HorseId] [nchar](10) NOT NULL,
	[DelKubun] [nchar](1) NULL,
	[RegDate] [date] NULL,
	[DelDate] [date] NULL,
	[BirthDate] [date] NULL,
	[Bamei] [nvarchar](36) NULL,
	[BameiKana] [nvarchar](36) NULL,
	[BameiEng] [nvarchar](60) NULL,
	[ZaikyuFlag] [nchar](1) NULL,
	[Reserved] [nvarchar](19) NULL,
	[UmaKigoId] [nchar](2) NULL,
	[SexId] [nchar](1) NULL,
	[HinsyuId] [nchar](1) NULL,
	[KeiroId] [nchar](2) NULL,
	[Gen01HansyokuId] [nchar](8) NULL,
	[Gen01Bamei] [nvarchar](36) NULL,
	[Gen02HansyokuId] [nchar](8) NULL,
	[Gen02Bamei] [nvarchar](36) NULL,
	[Gen03HansyokuId] [nchar](8) NULL,
	[Gen03Bamei] [nvarchar](36) NULL,
	[Gen04HansyokuId] [nchar](8) NULL,
	[Gen04Bamei] [nvarchar](36) NULL,
	[Gen05HansyokuId] [nchar](8) NULL,
	[Gen05Bamei] [nvarchar](36) NULL,
	[Gen06HansyokuId] [nchar](8) NULL,
	[Gen06Bamei] [nvarchar](36) NULL,
	[Gen07HansyokuId] [nchar](8) NULL,
	[Gen07Bamei] [nvarchar](36) NULL,
	[Gen08HansyokuId] [nchar](8) NULL,
	[Gen08Bamei] [nvarchar](36) NULL,
	[Gen09HansyokuId] [nchar](8) NULL,
	[Gen09Bamei] [nvarchar](36) NULL,
	[Gen10HansyokuId] [nchar](8) NULL,
	[Gen10Bamei] [nvarchar](36) NULL,
	[Gen11HansyokuId] [nchar](8) NULL,
	[Gen11Bamei] [nvarchar](36) NULL,
	[Gen12HansyokuId] [nchar](8) NULL,
	[Gen12Bamei] [nvarchar](36) NULL,
	[Gen13HansyokuId] [nchar](8) NULL,
	[Gen13Bamei] [nvarchar](36) NULL,
	[Gen14HansyokuId] [nchar](8) NULL,
	[Gen14Bamei] [nvarchar](36) NULL,
	[TozaiId] [nchar](1) NULL,
	[TrainerId] [nchar](5) NULL,
	[TrainerRyakusyo] [nvarchar](8) NULL,
	[Syotai] [nvarchar](20) NULL,
	[BreederId] [nchar](6) NULL,
	[BreederName] [nvarchar](70) NULL,
	[SanchiName] [nvarchar](20) NULL,
	[BanusiId] [nchar](6) NULL,
	[BanusiName] [nvarchar](64) NULL,
	[RuikeiHonsyoHeiti] [float] NULL,
	[RuikeiHonsyoSyogai] [float] NULL,
	[RuikeiFukaHeichi] [float] NULL,
	[RuikeiFukaSyogai] [float] NULL,
	[RuikeiSyutokuHeichi] [float] NULL,
	[RuikeiSyutokuSyogai] [float] NULL,
	[SogoChakuKaisu1] [float] NULL,
	[SogoChakuKaisu2] [float] NULL,
	[SogoChakuKaisu3] [float] NULL,
	[SogoChakuKaisu4] [float] NULL,
	[SogoChakuKaisu5] [float] NULL,
	[SogoChakuKaisu6] [float] NULL,
	[ChuoChakuKaisu1] [float] NULL,
	[ChuoChakuKaisu2] [float] NULL,
	[ChuoChakuKaisu3] [float] NULL,
	[ChuoChakuKaisu4] [float] NULL,
	[ChuoChakuKaisu5] [float] NULL,
	[ChuoChakuKaisu6] [float] NULL,
	[Ba1HitCount11] [float] NULL,
	[Ba1HitCount12] [float] NULL,
	[Ba1HitCount13] [float] NULL,
	[Ba1HitCount14] [float] NULL,
	[Ba1HitCount15] [float] NULL,
	[Ba1HitCount16] [float] NULL,
	[Ba2HitCount11] [float] NULL,
	[Ba2HitCount12] [float] NULL,
	[Ba2HitCount13] [float] NULL,
	[Ba2HitCount14] [float] NULL,
	[Ba2HitCount15] [float] NULL,
	[Ba2HitCount16] [float] NULL,
	[Ba3HitCount11] [float] NULL,
	[Ba3HitCount12] [float] NULL,
	[Ba3HitCount13] [float] NULL,
	[Ba3HitCount14] [float] NULL,
	[Ba3HitCount15] [float] NULL,
	[Ba3HitCount16] [float] NULL,
	[Ba4HitCount11] [float] NULL,
	[Ba4HitCount12] [float] NULL,
	[Ba4HitCount13] [float] NULL,
	[Ba4HitCount14] [float] NULL,
	[Ba4HitCount15] [float] NULL,
	[Ba4HitCount16] [float] NULL,
	[Ba5HitCount11] [float] NULL,
	[Ba5HitCount12] [float] NULL,
	[Ba5HitCount13] [float] NULL,
	[Ba5HitCount14] [float] NULL,
	[Ba5HitCount15] [float] NULL,
	[Ba5HitCount16] [float] NULL,
	[Ba6HitCount11] [float] NULL,
	[Ba6HitCount12] [float] NULL,
	[Ba6HitCount13] [float] NULL,
	[Ba6HitCount14] [float] NULL,
	[Ba6HitCount15] [float] NULL,
	[Ba6HitCount16] [float] NULL,
	[Ba7HitCount11] [float] NULL,
	[Ba7HitCount12] [float] NULL,
	[Ba7HitCount13] [float] NULL,
	[Ba7HitCount14] [float] NULL,
	[Ba7HitCount15] [float] NULL,
	[Ba7HitCount16] [float] NULL,
	[Jyotai1HitCount11] [float] NULL,
	[Jyotai1HitCount12] [float] NULL,
	[Jyotai1HitCount13] [float] NULL,
	[Jyotai1HitCount14] [float] NULL,
	[Jyotai1HitCount15] [float] NULL,
	[Jyotai1HitCount16] [float] NULL,
	[Jyotai2HitCount11] [float] NULL,
	[Jyotai2HitCount12] [float] NULL,
	[Jyotai2HitCount13] [float] NULL,
	[Jyotai2HitCount14] [float] NULL,
	[Jyotai2HitCount15] [float] NULL,
	[Jyotai2HitCount16] [float] NULL,
	[Jyotai3HitCount11] [float] NULL,
	[Jyotai3HitCount12] [float] NULL,
	[Jyotai3HitCount13] [float] NULL,
	[Jyotai3HitCount14] [float] NULL,
	[Jyotai3HitCount15] [float] NULL,
	[Jyotai3HitCount16] [float] NULL,
	[Jyotai4HitCount11] [float] NULL,
	[Jyotai4HitCount12] [float] NULL,
	[Jyotai4HitCount13] [float] NULL,
	[Jyotai4HitCount14] [float] NULL,
	[Jyotai4HitCount15] [float] NULL,
	[Jyotai4HitCount16] [float] NULL,
	[Jyotai5HitCount11] [float] NULL,
	[Jyotai5HitCount12] [float] NULL,
	[Jyotai5HitCount13] [float] NULL,
	[Jyotai5HitCount14] [float] NULL,
	[Jyotai5HitCount15] [float] NULL,
	[Jyotai5HitCount16] [float] NULL,
	[Jyotai6HitCount11] [float] NULL,
	[Jyotai6HitCount12] [float] NULL,
	[Jyotai6HitCount13] [float] NULL,
	[Jyotai6HitCount14] [float] NULL,
	[Jyotai6HitCount15] [float] NULL,
	[Jyotai6HitCount16] [float] NULL,
	[Jyotai7HitCount11] [float] NULL,
	[Jyotai7HitCount12] [float] NULL,
	[Jyotai7HitCount13] [float] NULL,
	[Jyotai7HitCount14] [float] NULL,
	[Jyotai7HitCount15] [float] NULL,
	[Jyotai7HitCount16] [float] NULL,
	[Jyotai8HitCount11] [float] NULL,
	[Jyotai8HitCount12] [float] NULL,
	[Jyotai8HitCount13] [float] NULL,
	[Jyotai8HitCount14] [float] NULL,
	[Jyotai8HitCount15] [float] NULL,
	[Jyotai8HitCount16] [float] NULL,
	[Jyotai9HitCount11] [float] NULL,
	[Jyotai9HitCount12] [float] NULL,
	[Jyotai9HitCount13] [float] NULL,
	[Jyotai9HitCount14] [float] NULL,
	[Jyotai9HitCount15] [float] NULL,
	[Jyotai9HitCount16] [float] NULL,
	[Jyotai10HitCount11] [float] NULL,
	[Jyotai10HitCount12] [float] NULL,
	[Jyotai10HitCount13] [float] NULL,
	[Jyotai10HitCount14] [float] NULL,
	[Jyotai10HitCount15] [float] NULL,
	[Jyotai10HitCount16] [float] NULL,
	[Jyotai11HitCount11] [float] NULL,
	[Jyotai11HitCount12] [float] NULL,
	[Jyotai11HitCount13] [float] NULL,
	[Jyotai11HitCount14] [float] NULL,
	[Jyotai11HitCount15] [float] NULL,
	[Jyotai11HitCount16] [float] NULL,
	[Jyotai12HitCount11] [float] NULL,
	[Jyotai12HitCount12] [float] NULL,
	[Jyotai12HitCount13] [float] NULL,
	[Jyotai12HitCount14] [float] NULL,
	[Jyotai12HitCount15] [float] NULL,
	[Jyotai12HitCount16] [float] NULL,
	[Kyori1HitCount11] [float] NULL,
	[Kyori1HitCount12] [float] NULL,
	[Kyori1HitCount13] [float] NULL,
	[Kyori1HitCount14] [float] NULL,
	[Kyori1HitCount15] [float] NULL,
	[Kyori1HitCount16] [float] NULL,
	[Kyori2HitCount11] [float] NULL,
	[Kyori2HitCount12] [float] NULL,
	[Kyori2HitCount13] [float] NULL,
	[Kyori2HitCount14] [float] NULL,
	[Kyori2HitCount15] [float] NULL,
	[Kyori2HitCount16] [float] NULL,
	[Kyori3HitCount11] [float] NULL,
	[Kyori3HitCount12] [float] NULL,
	[Kyori3HitCount13] [float] NULL,
	[Kyori3HitCount14] [float] NULL,
	[Kyori3HitCount15] [float] NULL,
	[Kyori3HitCount16] [float] NULL,
	[Kyori4HitCount11] [float] NULL,
	[Kyori4HitCount12] [float] NULL,
	[Kyori4HitCount13] [float] NULL,
	[Kyori4HitCount14] [float] NULL,
	[Kyori4HitCount15] [float] NULL,
	[Kyori4HitCount16] [float] NULL,
	[Kyori5HitCount11] [float] NULL,
	[Kyori5HitCount12] [float] NULL,
	[Kyori5HitCount13] [float] NULL,
	[Kyori5HitCount14] [float] NULL,
	[Kyori5HitCount15] [float] NULL,
	[Kyori5HitCount16] [float] NULL,
	[Kyori6HitCount11] [float] NULL,
	[Kyori6HitCount12] [float] NULL,
	[Kyori6HitCount13] [float] NULL,
	[Kyori6HitCount14] [float] NULL,
	[Kyori6HitCount15] [float] NULL,
	[Kyori6HitCount16] [float] NULL,
	[RunType1] [float] NULL,
	[RunType2] [float] NULL,
	[RunType3] [float] NULL,
	[RunType4] [float] NULL,
	[RaceCount] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Horse] PRIMARY KEY CLUSTERED 
(
	[HorseId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorseByCourseType](
	[HorseId] [nchar](10) NOT NULL,
	[TrackTypeId] [nchar](1) NOT NULL,
	[CourseTypeId] [nchar](1) NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_HorseByCourseType] PRIMARY KEY CLUSTERED 
(
	[HorseId] ASC,
	[TrackTypeId] ASC,
	[CourseTypeId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorseByDistanceType](
	[HorseId] [nchar](10) NOT NULL,
	[TrackType2Id] [nchar](1) NOT NULL,
	[DistanceType2Id] [nchar](1) NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_HorseByDistanceType] PRIMARY KEY CLUSTERED 
(
	[HorseId] ASC,
	[TrackType2Id] ASC,
	[DistanceType2Id] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorseByRunType](
	[HorseId] [nchar](10) NOT NULL,
	[RunCount] [float] NULL,
	[Pos1Count] [float] NULL,
	[Pos1Rate] [float] NULL,
	[Pos2Count] [float] NULL,
	[Pos2Rate] [float] NULL,
	[Pos3Count] [float] NULL,
	[Pos3Rate] [float] NULL,
	[Pos4Count] [float] NULL,
	[Pos4Rate] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_HorseByRunType] PRIMARY KEY CLUSTERED 
(
	[HorseId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorseBySmile](
	[HorseId] [nchar](10) NOT NULL,
	[TrackTypeId] [nchar](1) NOT NULL,
	[SmileId] [nchar](1) NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_HorseBySmile] PRIMARY KEY CLUSTERED 
(
	[HorseId] ASC,
	[TrackTypeId] ASC,
	[SmileId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorseByTotal](
	[HorseId] [nchar](10) NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_HorseByTotal] PRIMARY KEY CLUSTERED 
(
	[HorseId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HorseByTrackCondition](
	[HorseId] [nchar](10) NOT NULL,
	[TrackTypeId] [nchar](1) NOT NULL,
	[TrackConditionId] [nchar](1) NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_HorseByTrackCondition] PRIMARY KEY CLUSTERED 
(
	[HorseId] ASC,
	[TrackTypeId] ASC,
	[TrackConditionId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jockey](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[JockeyId] [nchar](5) NOT NULL,
	[DelKubun] [nchar](1) NULL,
	[IssueDate] [date] NULL,
	[DelDate] [date] NULL,
	[BirthDate] [date] NULL,
	[JockeyName] [nvarchar](34) NULL,
	[Reserved] [nvarchar](34) NULL,
	[JockeyNameKana] [nvarchar](30) NULL,
	[JockeyRyakusyo] [nvarchar](8) NULL,
	[JockeyNameEng] [nvarchar](80) NULL,
	[SexId] [nchar](1) NULL,
	[LicenseId] [nchar](1) NULL,
	[MinaraiId] [nchar](1) NULL,
	[TozaiId] [nchar](1) NULL,
	[Syotai] [nvarchar](20) NULL,
	[TrainerId] [nchar](5) NULL,
	[TrainerRyakusyo] [nvarchar](8) NULL,
	[HatuKiJyo01HatukijyoRaceDate] [date] NULL,
	[HatuKiJyo01HatukijyoPlaceId] [nchar](2) NULL,
	[HatuKiJyo01HatukijyoKaiji] [int] NULL,
	[HatuKiJyo01HatukijyoNichiji] [int] NULL,
	[HatuKiJyo01HatukijyoRaceNum] [int] NULL,
	[HatuKiJyo01SyussoTosu] [float] NULL,
	[HatuKiJyo01HorseId] [nchar](10) NULL,
	[HatuKiJyo01Bamei] [nvarchar](36) NULL,
	[HatuKiJyo01KakuteiJyuni] [float] NULL,
	[HatuKiJyo01StatsId] [nchar](1) NULL,
	[HatuKiJyo02HatukijyoRaceDate] [date] NULL,
	[HatuKiJyo02HatukijyoPlaceId] [nchar](2) NULL,
	[HatuKiJyo02HatukijyoKaiji] [int] NULL,
	[HatuKiJyo02HatukijyoNichiji] [int] NULL,
	[HatuKiJyo02HatukijyoRaceNum] [int] NULL,
	[HatuKiJyo02SyussoTosu] [float] NULL,
	[HatuKiJyo02HorseId] [nchar](10) NULL,
	[HatuKiJyo02Bamei] [nvarchar](36) NULL,
	[HatuKiJyo02KakuteiJyuni] [float] NULL,
	[HatuKiJyo02StatsId] [nchar](1) NULL,
	[HatuSyori01HatusyoriRaceDate] [date] NULL,
	[HatuSyori01HatusyoriPlaceId] [nchar](2) NULL,
	[HatuSyori01HatusyoriKaiji] [int] NULL,
	[HatuSyori01HatusyoriNichiji] [int] NULL,
	[HatuSyori01HatusyoriRaceNum] [int] NULL,
	[HatuSyori01SyussoTosu] [float] NULL,
	[HatuSyori01HorseId] [nchar](10) NULL,
	[HatuSyori01Bamei] [nvarchar](36) NULL,
	[HatuSyori02HatusyoriRaceDate] [date] NULL,
	[HatuSyori02HatusyoriPlaceId] [nchar](2) NULL,
	[HatuSyori02HatusyoriKaiji] [int] NULL,
	[HatuSyori02HatusyoriNichiji] [int] NULL,
	[HatuSyori02HatusyoriRaceNum] [int] NULL,
	[HatuSyori02SyussoTosu] [float] NULL,
	[HatuSyori02HorseId] [nchar](10) NULL,
	[HatuSyori02Bamei] [nvarchar](36) NULL,
	[SaikinJyusyo01SaikinJyusyoRaceDate] [date] NULL,
	[SaikinJyusyo01SaikinJyusyoPlaceId] [nchar](2) NULL,
	[SaikinJyusyo01SaikinJyusyoKaiji] [int] NULL,
	[SaikinJyusyo01SaikinJyusyoNichiji] [int] NULL,
	[SaikinJyusyo01SaikinJyusyoRaceNum] [int] NULL,
	[SaikinJyusyo01Hondai] [nvarchar](60) NULL,
	[SaikinJyusyo01Ryakusyo10] [nvarchar](20) NULL,
	[SaikinJyusyo01Ryakusyo6] [nvarchar](12) NULL,
	[SaikinJyusyo01Ryakusyo3] [nvarchar](6) NULL,
	[SaikinJyusyo01GradeId] [nchar](1) NULL,
	[SaikinJyusyo01SyussoTosu] [float] NULL,
	[SaikinJyusyo01HorseId] [nchar](10) NULL,
	[SaikinJyusyo01Bamei] [nvarchar](36) NULL,
	[SaikinJyusyo02SaikinJyusyoRaceDate] [date] NULL,
	[SaikinJyusyo02SaikinJyusyoPlaceId] [nchar](2) NULL,
	[SaikinJyusyo02SaikinJyusyoKaiji] [int] NULL,
	[SaikinJyusyo02SaikinJyusyoNichiji] [int] NULL,
	[SaikinJyusyo02SaikinJyusyoRaceNum] [int] NULL,
	[SaikinJyusyo02Hondai] [nvarchar](60) NULL,
	[SaikinJyusyo02Ryakusyo10] [nvarchar](20) NULL,
	[SaikinJyusyo02Ryakusyo6] [nvarchar](12) NULL,
	[SaikinJyusyo02Ryakusyo3] [nvarchar](6) NULL,
	[SaikinJyusyo02GradeId] [nchar](1) NULL,
	[SaikinJyusyo02SyussoTosu] [float] NULL,
	[SaikinJyusyo02HorseId] [nchar](10) NULL,
	[SaikinJyusyo02Bamei] [nvarchar](36) NULL,
	[SaikinJyusyo03SaikinJyusyoRaceDate] [date] NULL,
	[SaikinJyusyo03SaikinJyusyoPlaceId] [nchar](2) NULL,
	[SaikinJyusyo03SaikinJyusyoKaiji] [int] NULL,
	[SaikinJyusyo03SaikinJyusyoNichiji] [int] NULL,
	[SaikinJyusyo03SaikinJyusyoRaceNum] [int] NULL,
	[SaikinJyusyo03Hondai] [nvarchar](60) NULL,
	[SaikinJyusyo03Ryakusyo10] [nvarchar](20) NULL,
	[SaikinJyusyo03Ryakusyo6] [nvarchar](12) NULL,
	[SaikinJyusyo03Ryakusyo3] [nvarchar](6) NULL,
	[SaikinJyusyo03GradeId] [nchar](1) NULL,
	[SaikinJyusyo03SyussoTosu] [float] NULL,
	[SaikinJyusyo03HorseId] [nchar](10) NULL,
	[SaikinJyusyo03Bamei] [nvarchar](36) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Jockey] PRIMARY KEY CLUSTERED 
(
	[JockeyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JockeyByDistanceType](
	[JockeyId] [nchar](5) NOT NULL,
	[TrackType2Id] [nchar](1) NOT NULL,
	[DistanceType2Id] [int] NOT NULL,
	[SummaryType] [int] NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_JockeyByDistanceType] PRIMARY KEY CLUSTERED 
(
	[JockeyId] ASC,
	[TrackType2Id] ASC,
	[DistanceType2Id] ASC,
	[SummaryType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JockeyByHatsuKijyo](
	[JockeyId] [nchar](5) NOT NULL,
	[TrackType3Id] [nchar](1) NOT NULL,
	[RaceID] [nchar](12) NULL,
	[SyussoTosu] [float] NULL,
	[HorseId] [nchar](10) NULL,
	[Bamei] [nvarchar](18) NULL,
	[KakuteiJyuni] [float] NULL,
	[StatsId] [nchar](1) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_JockeyByHatsuKijyo] PRIMARY KEY CLUSTERED 
(
	[JockeyId] ASC,
	[TrackType3Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JockeyByHatuSyori](
	[JockeyId] [nchar](5) NOT NULL,
	[TrackType3Id] [nchar](1) NOT NULL,
	[RaceId] [nchar](12) NULL,
	[SyussoTosu] [float] NULL,
	[HorseId] [nchar](10) NULL,
	[Bamei] [nvarchar](18) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_JockeyByHatuSyori] PRIMARY KEY CLUSTERED 
(
	[JockeyId] ASC,
	[TrackType3Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JockeyBySaikinJyusyo](
	[JockeyId] [nchar](5) NOT NULL,
	[Num] [int] NOT NULL,
	[RaceId] [nchar](12) NULL,
	[Hondai] [nchar](30) NULL,
	[Ryakusyo10] [nchar](10) NULL,
	[Ryakusyo6] [nchar](6) NULL,
	[Ryakusyo3] [nchar](3) NULL,
	[GradeId] [nchar](1) NULL,
	[SyussoTosu] [float] NULL,
	[HorseId] [nchar](10) NULL,
	[Bamei] [nvarchar](18) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_JockeyBySaikinJyusyo] PRIMARY KEY CLUSTERED 
(
	[JockeyId] ASC,
	[Num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [INDEX]
) ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JockeyByTotal](
	[JockeyId] [nchar](5) NOT NULL,
	[TrackType3Id] [nchar](1) NOT NULL,
	[SummaryType] [int] NOT NULL,
	[SetYear] [int] NULL,
	[Honsyokin] [float] NULL,
	[Fukasyokin] [float] NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_JockeyByTotal] PRIMARY KEY CLUSTERED 
(
	[JockeyId] ASC,
	[TrackType3Id] ASC,
	[SummaryType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JockeyByTrackType](
	[JockeyId] [nchar](5) NOT NULL,
	[PlaceId] [nchar](2) NOT NULL,
	[TrackType3Id] [nchar](1) NOT NULL,
	[SummaryType] [int] NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_JockeyByTrackType] PRIMARY KEY CLUSTERED 
(
	[JockeyId] ASC,
	[SummaryType] ASC,
	[PlaceId] ASC,
	[TrackType3Id] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Keito](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[HansyokuId] [nchar](8) NOT NULL,
	[keitoId] [nvarchar](30) NULL,
	[KeitoName] [nvarchar](36) NULL,
	[KeitoEx] [nvarchar](max) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Keito] PRIMARY KEY CLUSTERED 
(
	[HansyokuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master2Class](
	[ClassId] [nchar](4) NOT NULL,
	[RaceCount] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Master2Class] PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master2Distance](
	[DistanceId] [nchar](4) NOT NULL,
	[RaceCount] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Master2Distance] PRIMARY KEY CLUSTERED 
(
	[DistanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master2Handicap](
	[Handicap] [float] NOT NULL,
	[RaceHorseCount] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Master2Futan] PRIMARY KEY CLUSTERED 
(
	[Handicap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master2Ninki](
	[Ninki] [float] NOT NULL,
	[RaceHorseCount] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Master2Ninki] PRIMARY KEY CLUSTERED 
(
	[Ninki] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master2RaceType1](
	[RaceType1Id] [nvarchar](255) NOT NULL,
	[RaceCount] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Master2RaceType1] PRIMARY KEY CLUSTERED 
(
	[RaceType1Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master2RaceType2](
	[RaceType2Id] [nvarchar](255) NOT NULL,
	[RaceCount] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Master2RaceType2] PRIMARY KEY CLUSTERED 
(
	[RaceType2Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master2RaceType3](
	[RaceType3Id] [nvarchar](255) NOT NULL,
	[RaceCount] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Master2RaceType3] PRIMARY KEY CLUSTERED 
(
	[RaceType3Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master2RaceType4](
	[RaceType4Id] [nvarchar](255) NOT NULL,
	[RaceCount] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Master2RaceType4] PRIMARY KEY CLUSTERED 
(
	[RaceType4Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master2RaceType5](
	[RaceType5Id] [nvarchar](255) NOT NULL,
	[RaceCount] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Master2RaceType5] PRIMARY KEY CLUSTERED 
(
	[RaceType5Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master2RaceType6](
	[RaceType6Id] [nvarchar](255) NOT NULL,
	[RaceCount] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Master2RaceType6] PRIMARY KEY CLUSTERED 
(
	[RaceType6Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master2RaceType7](
	[RaceType7Id] [nvarchar](255) NOT NULL,
	[RaceCount] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Master2RaceType7] PRIMARY KEY CLUSTERED 
(
	[RaceType7Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master2RaceType8](
	[RaceType8Id] [nvarchar](255) NOT NULL,
	[RaceCount] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Master2RaceType8] PRIMARY KEY CLUSTERED 
(
	[RaceType8Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master2RaceType9](
	[RaceType9Id] [nvarchar](255) NOT NULL,
	[RaceCount] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Master2RaceType9] PRIMARY KEY CLUSTERED 
(
	[RaceType9Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Master2Weight](
	[Weight] [float] NOT NULL,
	[RaceHorseCount] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Master2Weight] PRIMARY KEY CLUSTERED 
(
	[Weight] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterBetType](
	[BetTypeId] [int] NOT NULL,
	[RaceCount] [int] NULL,
	[BetTypeDisplayName] [nvarchar](255) NULL,
	[BetTypeContent] [nvarchar](10) NULL,
	[BetTypeContentEng] [nvarchar](10) NULL,
	[Timestamp01] [datetime] NULL,
	[IpatGoBetTypeId] [nvarchar](255) NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterBetType] PRIMARY KEY CLUSTERED 
(
	[BetTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterBlinker](
	[BlinkerId] [nchar](1) NOT NULL,
	[RaceHorseCount] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterBlinker] PRIMARY KEY CLUSTERED 
(
	[BlinkerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterBracketNum](
	[BracketNum] [int] NOT NULL,
	[RaceHorseCount] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterBracketNum] PRIMARY KEY CLUSTERED 
(
	[BracketNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterChakusa](
	[ChakusaId] [nchar](3) NOT NULL,
	[RaceHorseCount] [int] NULL,
	[Chakusa] [nvarchar](50) NULL,
	[ChakusaRyakusyo3] [nvarchar](3) NULL,
	[ChakusaEng] [nvarchar](50) NULL,
	[Slit] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterChakusa] PRIMARY KEY CLUSTERED 
(
	[ChakusaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterCourseKubun](
	[CourseKubunId] [nchar](2) NOT NULL,
	[RaceCount] [int] NULL,
	[CourseKubunDisplayName] [nvarchar](255) NULL,
	[CourseKubunName] [nvarchar](10) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterCourseKubun] PRIMARY KEY CLUSTERED 
(
	[CourseKubunId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterCourseType](
	[CourseTypeId] [nchar](1) NOT NULL,
	[RaceCount] [int] NULL,
	[CourseTypeDisplayName] [nvarchar](255) NULL,
	[CourseTypeName] [nvarchar](10) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterCourseType] PRIMARY KEY CLUSTERED 
(
	[CourseTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterDataSpec](
	[DataSpecId] [char](4) NOT NULL,
	[Count] [int] NULL,
	[DataSpecDescription1] [nvarchar](255) NULL,
	[DataSpecDescription2] [nvarchar](255) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterDataSpec] PRIMARY KEY CLUSTERED 
(
	[DataSpecId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterDistanceType](
	[DistanceTypeId] [nchar](1) NOT NULL,
	[RaceCount] [int] NULL,
	[DistanceFrom] [int] NULL,
	[DistanceTo] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterDistanceType] PRIMARY KEY CLUSTERED 
(
	[DistanceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterDistanceType2](
	[DistanceType2Id] [nchar](1) NOT NULL,
	[RaceCount] [int] NULL,
	[DistanceFrom] [int] NULL,
	[DistanceTo] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterDistanceType2] PRIMARY KEY CLUSTERED 
(
	[DistanceType2Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterGrade](
	[GradeId] [nchar](1) NOT NULL,
	[RaceCount] [int] NULL,
	[GradeDisplayName] [nvarchar](255) NULL,
	[Grade] [nvarchar](20) NULL,
	[GradeFull] [nvarchar](20) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterGrade] PRIMARY KEY CLUSTERED 
(
	[GradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterHinsyu](
	[HinsyuId] [nchar](1) NOT NULL,
	[RaceHorseCount] [int] NULL,
	[HinsyuDisplayName] [nvarchar](255) NULL,
	[Hinsyu] [nvarchar](20) NULL,
	[HinsyuRyakusyo] [nvarchar](3) NULL,
	[HinsyuDescription] [nvarchar](255) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterHinsyu] PRIMARY KEY CLUSTERED 
(
	[HinsyuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterHorseNum](
	[HorseNum] [int] NOT NULL,
	[RaceHorseCount] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterHorseNum] PRIMARY KEY CLUSTERED 
(
	[HorseNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterJyoken](
	[JyokenId] [nchar](1) NOT NULL,
	[RaceCount] [int] NULL,
	[JyokenDisplayName] [nvarchar](255) NULL,
	[JyokenName] [nvarchar](20) NULL,
	[JyokenEng] [nvarchar](20) NULL,
	[JyokenDescription] [nvarchar](255) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Master2Jyoken] PRIMARY KEY CLUSTERED 
(
	[JyokenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterJyoken5](
	[Jyoken5Id] [nchar](3) NOT NULL,
	[RaceCount] [int] NULL,
	[Jyoken5DisplayName] [nvarchar](255) NULL,
	[Jyoken5Name] [nvarchar](20) NULL,
	[Jyoken5Eng] [nvarchar](20) NULL,
	[Jyoken5Description] [nvarchar](255) NULL,
	[JyokenId] [nchar](1) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterJyoken5] PRIMARY KEY CLUSTERED 
(
	[Jyoken5Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterJyuryo](
	[JyuryoId] [nchar](1) NOT NULL,
	[RaceCount] [int] NULL,
	[JyuryoDisplayName] [nvarchar](255) NULL,
	[Jyuryo] [nvarchar](3) NULL,
	[JyuryoEng] [nvarchar](20) NULL,
	[JyuryoDescription] [nvarchar](255) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterJyuryo] PRIMARY KEY CLUSTERED 
(
	[JyuryoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterKeiro](
	[KeiroId] [nchar](2) NOT NULL,
	[RaceHorseCount] [int] NULL,
	[KeiroDisplayName] [nvarchar](255) NULL,
	[Keiro] [nvarchar](3) NULL,
	[KeiroEng] [nvarchar](20) NULL,
	[KeiroEng5] [nvarchar](5) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterKeiro] PRIMARY KEY CLUSTERED 
(
	[KeiroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterKigo](
	[KigoId] [nchar](3) NOT NULL,
	[RaceCount] [int] NULL,
	[KigoDisplayName] [nvarchar](255) NULL,
	[Kigo] [nvarchar](50) NULL,
	[KigoEng] [nvarchar](50) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterKigo] PRIMARY KEY CLUSTERED 
(
	[KigoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterLicense](
	[LicenseId] [nchar](1) NOT NULL,
	[RaceHorseCount] [int] NULL,
	[LicenseDisplayName] [nvarchar](255) NULL,
	[LicenseName] [nchar](10) NULL,
	[Value] [nvarchar](10) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterLicense] PRIMARY KEY CLUSTERED 
(
	[LicenseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterMinarai](
	[MinaraiId] [nchar](1) NOT NULL,
	[RaceHorseCount] [int] NULL,
	[MinaraiDisplayName] [nvarchar](255) NULL,
	[MinaraiRyakusyo] [nvarchar](10) NULL,
	[MinaraiGenryo] [nvarchar](50) NULL,
	[MinaraiDescription] [nvarchar](255) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterMinarai] PRIMARY KEY CLUSTERED 
(
	[MinaraiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterOpenModeDataSpec](
	[OpenMode] [int] NOT NULL,
	[OpenDataSpecId] [char](4) NOT NULL,
	[Count] [int] NULL,
	[DataSpecDescription1] [nvarchar](255) NULL,
	[DataSpecDescription2] [nvarchar](255) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterOpenModeDataSpec] PRIMARY KEY CLUSTERED 
(
	[OpenMode] ASC,
	[OpenDataSpecId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterPlace](
	[PlaceId] [nchar](2) NOT NULL,
	[RaceCount] [int] NULL,
	[IsJra] [bit] NULL,
	[PlaceDisplayName] [nvarchar](255) NULL,
	[PlaceName] [nvarchar](20) NULL,
	[PlaceNameRyakusyo1] [nvarchar](1) NULL,
	[PlaceNameRyakusyo2] [nvarchar](2) NULL,
	[PlaceNameRyakusyo3] [nvarchar](3) NULL,
	[PlaceNameEng1] [nvarchar](30) NULL,
	[PlaceNameEng2] [nvarchar](3) NULL,
	[IpatGoJyoId] [nvarchar](255) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterPlace] PRIMARY KEY CLUSTERED 
(
	[PlaceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterPlace2](
	[Place2Id] [nchar](3) NOT NULL,
	[RaceCount] [int] NULL,
	[ValidThruFrom] [date] NULL,
	[ValidThruTo] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterPlace2] PRIMARY KEY CLUSTERED 
(
	[Place2Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterRunType](
	[RunTypeId] [float] NOT NULL,
	[RaceHorseCount] [int] NULL,
	[RunTypeDisplayName] [nvarchar](255) NULL,
	[RunTypeDescription1] [nvarchar](10) NULL,
	[RunTypeDescription2] [nvarchar](10) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterRunType] PRIMARY KEY CLUSTERED 
(
	[RunTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterSex](
	[SexId] [nchar](1) NOT NULL,
	[RaceHorseCount] [int] NULL,
	[SexDisplayName] [nvarchar](255) NULL,
	[Sex] [nvarchar](6) NULL,
	[SexEng] [nvarchar](6) NULL,
	[SexDescription1] [nvarchar](50) NULL,
	[SexDescription2] [nvarchar](255) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterSex] PRIMARY KEY CLUSTERED 
(
	[SexId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterSmile](
	[SmileId] [nchar](1) NOT NULL,
	[RaceCount] [int] NULL,
	[SmileDisplayName] [nvarchar](255) NULL,
	[SmileDescription1] [nvarchar](50) NULL,
	[SmileDescription2] [nvarchar](255) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterSmile] PRIMARY KEY CLUSTERED 
(
	[SmileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterStats](
	[StatsId] [nchar](1) NOT NULL,
	[RaceHorseCount] [int] NULL,
	[StatsDisplayName] [nvarchar](255) NULL,
	[StatsName] [nvarchar](50) NULL,
	[StatsRyakusyo2] [nchar](2) NULL,
	[StatsEng] [nvarchar](20) NULL,
	[StatsRyakusyoEng] [nvarchar](20) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterStats] PRIMARY KEY CLUSTERED 
(
	[StatsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterSyubetu](
	[SyubetuId] [nchar](2) NOT NULL,
	[RaceCount] [int] NULL,
	[SyubetuDisplayName] [nvarchar](255) NULL,
	[Syubetu] [nvarchar](50) NULL,
	[SyubetuRyakusyo4] [nvarchar](4) NULL,
	[SyubetuRyakusyo6] [nvarchar](6) NULL,
	[SyubetuRyakusyo8] [nvarchar](8) NULL,
	[SyubetuEng] [nvarchar](50) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterSyubetsu] PRIMARY KEY CLUSTERED 
(
	[SyubetuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterTenko](
	[TenkoId] [nchar](1) NOT NULL,
	[RaceCount] [int] NULL,
	[TenkoDisplayName] [nvarchar](255) NULL,
	[Tenko] [nvarchar](10) NULL,
	[TenkoEng] [nvarchar](10) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterTenko] PRIMARY KEY CLUSTERED 
(
	[TenkoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterTozai](
	[TozaiId] [nchar](1) NOT NULL,
	[RaceHorseCount] [int] NULL,
	[TozaiDisplayName] [nvarchar](255) NULL,
	[Tozai] [nvarchar](10) NULL,
	[Tozai2] [nvarchar](2) NULL,
	[TozaiDescription] [nvarchar](50) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterTozai] PRIMARY KEY CLUSTERED 
(
	[TozaiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterTrack](
	[TrackId] [nchar](2) NOT NULL,
	[RaceCount] [int] NULL,
	[TrackDisplayName] [nvarchar](255) NULL,
	[Track] [nvarchar](50) NULL,
	[Track6] [nvarchar](6) NULL,
	[IsTrackIdStraight] [bit] NULL,
	[IsTrackIdLeft] [bit] NULL,
	[IsTrackIdRight] [bit] NULL,
	[TrackEng] [nvarchar](50) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterTrack] PRIMARY KEY CLUSTERED 
(
	[TrackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterTrackCondition](
	[TrackConditionId] [nchar](1) NOT NULL,
	[RaceCount] [int] NULL,
	[TrackConditionDisplayName] [nvarchar](255) NULL,
	[TrackCondition] [nvarchar](3) NULL,
	[TrackConditionEngTurf] [nvarchar](10) NULL,
	[TrackConditionEngDirt] [nvarchar](10) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterTrackCondition] PRIMARY KEY CLUSTERED 
(
	[TrackConditionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterTrackType](
	[TrackTypeId] [nchar](1) NOT NULL,
	[RaceCount] [int] NULL,
	[TrackTypeDisplayName] [nvarchar](255) NULL,
	[TrackType] [nvarchar](10) NULL,
	[TrackTypeEng] [nvarchar](10) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterTrackType] PRIMARY KEY CLUSTERED 
(
	[TrackTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterTrackType2](
	[TrackType2Id] [nchar](1) NOT NULL,
	[RaceCount] [int] NULL,
	[TrackType2DisplayName] [nvarchar](255) NULL,
	[TrackType] [nvarchar](10) NULL,
	[TrackTypeEng] [nvarchar](10) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterTrackType2] PRIMARY KEY CLUSTERED 
(
	[TrackType2Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterTrackType3](
	[TrackType3Id] [nchar](1) NOT NULL,
	[RaceCount] [int] NULL,
	[TrackType3DisplayName] [nvarchar](255) NULL,
	[TrackType] [nvarchar](10) NULL,
	[TrackTypeEng] [nvarchar](10) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterTrackType3] PRIMARY KEY CLUSTERED 
(
	[TrackType3Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterUmaKigo](
	[UmaKigoId] [nchar](2) NOT NULL,
	[RaceHorseCount] [int] NULL,
	[UmaKigoDisplayName] [nvarchar](255) NULL,
	[UmaKigo] [nvarchar](20) NULL,
	[UmaKigoEnglish] [nvarchar](50) NULL,
	[UmaKigoDescription] [nvarchar](255) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterUmaKigo] PRIMARY KEY CLUSTERED 
(
	[UmaKigoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterYoubi](
	[YoubiId] [nchar](1) NOT NULL,
	[RaceCount] [int] NULL,
	[YoubiDisplayName] [nvarchar](255) NULL,
	[Youbi] [nvarchar](30) NULL,
	[YoubiRyakusyo1] [nvarchar](1) NULL,
	[YoubiRyakusyo2] [nvarchar](2) NULL,
	[YoubiRyakusyo3] [nvarchar](3) NULL,
	[YoubiRyakusyoEng] [nvarchar](30) NULL,
	[YoubiRyakusyoEng3] [nvarchar](3) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_MasterYoubi] PRIMARY KEY CLUSTERED 
(
	[YoubiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NameOrigin](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[HorseId] [nchar](10) NOT NULL,
	[Bamei] [nvarchar](36) NULL,
	[Origin] [nvarchar](64) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_NameOrigin] PRIMARY KEY CLUSTERED 
(
	[HorseId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odds1](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[HappyoDatetime] [datetime] NULL,
	[TorokuTosu] [float] NULL,
	[SyussoTosu] [float] NULL,
	[TansyoFlag] [nchar](1) NULL,
	[FukusyoFlag] [nchar](1) NULL,
	[WakurenFlag] [nchar](1) NULL,
	[FukuChakuBaraiKey] [nchar](1) NULL,
	[TotalHyosuTansyo] [float] NULL,
	[TotalHyosuFukusyo] [float] NULL,
	[TotalHyosuWakuren] [float] NULL,
	[IsUpdatedEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[PredictValueRateCount] [float] NULL,
	[PredictValueRateAvg] [float] NULL,
	[PredictValueRateStDev] [float] NULL,
	[PredictValueRateSum] [float] NULL,
	[PredictValueRateMax] [float] NULL,
	[PredictValueRateMin] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Odds1] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odds2](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[HappyoDatetime] [datetime] NULL,
	[TorokuTosu] [float] NULL,
	[SyussoTosu] [float] NULL,
	[UmarenFlag] [nchar](1) NULL,
	[TotalHyosuUmaren] [float] NULL,
	[IsUpdatedEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[PredictValueRateCount] [float] NULL,
	[PredictValueRateAvg] [float] NULL,
	[PredictValueRateStDev] [float] NULL,
	[PredictValueRateSum] [float] NULL,
	[PredictValueRateMax] [float] NULL,
	[PredictValueRateMin] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Odds2] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odds3](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[HappyoDatetime] [datetime] NULL,
	[TorokuTosu] [float] NULL,
	[SyussoTosu] [float] NULL,
	[WideFlag] [nchar](1) NULL,
	[TotalHyosuWide] [float] NULL,
	[IsUpdatedEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[PredictValueRateCount] [float] NULL,
	[PredictValueRateAvg] [float] NULL,
	[PredictValueRateStDev] [float] NULL,
	[PredictValueRateSum] [float] NULL,
	[PredictValueRateMax] [float] NULL,
	[PredictValueRateMin] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Odds3] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odds4](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[HappyoDatetime] [datetime] NULL,
	[TorokuTosu] [float] NULL,
	[SyussoTosu] [float] NULL,
	[UmatanFlag] [nchar](1) NULL,
	[TotalHyosuUmatan] [float] NULL,
	[IsUpdatedEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[PredictValueRateCount] [float] NULL,
	[PredictValueRateAvg] [float] NULL,
	[PredictValueRateStDev] [float] NULL,
	[PredictValueRateSum] [float] NULL,
	[PredictValueRateMax] [float] NULL,
	[PredictValueRateMin] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Odds4] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odds5](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[HappyoDatetime] [datetime] NULL,
	[TorokuTosu] [float] NULL,
	[SyussoTosu] [float] NULL,
	[SanrenpukuFlag] [nchar](1) NULL,
	[TotalHyosuSanrenpuku] [float] NULL,
	[IsUpdatedEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[PredictValueRateCount] [float] NULL,
	[PredictValueRateAvg] [float] NULL,
	[PredictValueRateStDev] [float] NULL,
	[PredictValueRateSum] [float] NULL,
	[PredictValueRateMax] [float] NULL,
	[PredictValueRateMin] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Odds5] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odds6](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[HappyoDatetime] [datetime] NULL,
	[TorokuTosu] [float] NULL,
	[SyussoTosu] [float] NULL,
	[SanrentanFlag] [nchar](1) NULL,
	[TotalHyosuSanrentan] [float] NULL,
	[IsUpdatedEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[PredictValueRateCount] [float] NULL,
	[PredictValueRateAvg] [float] NULL,
	[PredictValueRateStDev] [float] NULL,
	[PredictValueRateSum] [float] NULL,
	[PredictValueRateMax] [float] NULL,
	[PredictValueRateMin] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Odds6] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OddsByBracket](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Odds1] [float] NULL,
	[Odds2] [float] NULL,
	[Ninki] [float] NULL,
	[IsUpdateEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_OddsByBracket] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OddsByExacta](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Odds1] [float] NULL,
	[Odds2] [float] NULL,
	[Ninki] [float] NULL,
	[IsUpdateEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_OddsByExacta] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OddsByPlace](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Odds1] [float] NULL,
	[Odds2] [float] NULL,
	[Ninki] [float] NULL,
	[IsUpdateEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_OddsByPlace] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OddsByQuinella](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Odds1] [float] NULL,
	[Odds2] [float] NULL,
	[Ninki] [float] NULL,
	[IsUpdateEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_OddsByQuinella] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OddsByTrifecta](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Odds1] [float] NULL,
	[Odds2] [float] NULL,
	[Ninki] [float] NULL,
	[IsUpdateEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_OddsByTrifecta] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OddsByTrio](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Odds1] [float] NULL,
	[Odds2] [float] NULL,
	[Ninki] [float] NULL,
	[IsUpdateEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_OddsByTrio] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OddsByWide](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Odds1] [float] NULL,
	[Odds2] [float] NULL,
	[Ninki] [float] NULL,
	[IsUpdateEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_OddsByWide] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OddsByWin](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Odds1] [float] NULL,
	[Odds2] [float] NULL,
	[Ninki] [float] NULL,
	[IsUpdateEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[IsValidOddsLog1Sdv] [bit] NULL,
	[OddsLog1Sdv] [float] NULL,
	[OddsLog1Dv] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_OddsByWin] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payoff](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[TorokuTosu] [float] NULL,
	[SyussoTosu] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Payoff] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayoffByFlag](
	[RaceId] [nchar](12) NOT NULL,
	[Type] [int] NOT NULL,
	[FuseirituFlag] [nchar](1) NULL,
	[TokubaraiFlag] [nchar](1) NULL,
	[HenkanFlag] [nchar](1) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_PayoffByFlag] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[Type] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayoffByHenkanDoWaku](
	[RaceId] [nchar](12) NOT NULL,
	[BracketNum] [int] NOT NULL,
	[HenkanDoWaku] [nchar](1) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_PayoffByHenkanDoWaku] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BracketNum] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayoffByHenkanUma](
	[RaceId] [nchar](12) NOT NULL,
	[HorseNum] [int] NOT NULL,
	[HenkanUma] [nchar](1) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_PayoffByHenkanUma] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseNum] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayoffByHenkanWaku](
	[RaceId] [nchar](12) NOT NULL,
	[BracketNum] [int] NOT NULL,
	[HenkanWaku] [nchar](1) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_PayoffByHenkanWaku] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BracketNum] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayoffByPayAll](
	[RaceId] [nchar](12) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Num] [int] NOT NULL,
	[Ninki] [float] NULL,
	[Pay] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[IsHit] [bit] NULL,
	[IsChecked] [bit] NULL,
	[CheckDatetime] [datetime] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_PayoffByPayAll] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PredictByBracket](
	[RaceId] [nchar](20) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Num] [int] NULL,
	[HorseId1] [nchar](10) NULL,
	[HorseId2] [nchar](10) NULL,
	[HorseId3] [nchar](10) NULL,
	[IsValidPredictValue] [bit] NULL,
	[PredictValue] [float] NULL,
	[PredictValueSdv] [float] NULL,
	[PredictValueDv] [float] NULL,
	[PredictValueRank] [float] NULL,
	[ExpectedOdds] [float] NULL,
	[ExpectedOddsRatio] [float] NULL,
	[PredictScore] [float] NULL,
	[PredictScoreRank] [float] NULL,
	[IsValidPredictValue1] [bit] NULL,
	[PredictValue1] [float] NULL,
	[PredictValueSdv1] [float] NULL,
	[PredictValueDv1] [float] NULL,
	[PredictValueNorm1] [float] NULL,
	[PredictValueRank1] [float] NULL,
	[PredictError1] [float] NULL,
	[IsValidPredictValue2] [bit] NULL,
	[PredictValue2] [float] NULL,
	[PredictValueSdv2] [float] NULL,
	[PredictValueDv2] [float] NULL,
	[PredictValueNorm2] [float] NULL,
	[PredictValueRank2] [float] NULL,
	[PredictError2] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_PredictByBracket] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PredictByExacta](
	[RaceId] [nchar](12) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Num] [int] NULL,
	[HorseId1] [nchar](10) NULL,
	[HorseId2] [nchar](10) NULL,
	[HorseId3] [nchar](10) NULL,
	[IsValidPredictValue] [bit] NULL,
	[PredictValue] [float] NULL,
	[PredictValueSdv] [float] NULL,
	[PredictValueDv] [float] NULL,
	[PredictValueRank] [float] NULL,
	[ExpectedOdds] [float] NULL,
	[ExpectedOddsRatio] [float] NULL,
	[PredictScore] [float] NULL,
	[PredictScoreRank] [float] NULL,
	[IsValidPredictValue1] [bit] NULL,
	[PredictValue1] [float] NULL,
	[PredictValueSdv1] [float] NULL,
	[PredictValueDv1] [float] NULL,
	[PredictValueNorm1] [float] NULL,
	[PredictValueRank1] [float] NULL,
	[PredictError1] [float] NULL,
	[IsValidPredictValue2] [bit] NULL,
	[PredictValue2] [float] NULL,
	[PredictValueSdv2] [float] NULL,
	[PredictValueDv2] [float] NULL,
	[PredictValueNorm2] [float] NULL,
	[PredictValueRank2] [float] NULL,
	[PredictError2] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_PredictByExacta] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PredictByPlace](
	[RaceId] [nchar](12) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Num] [int] NULL,
	[HorseId1] [nchar](10) NULL,
	[HorseId2] [nchar](10) NULL,
	[HorseId3] [nchar](10) NULL,
	[IsValidPredictValue] [bit] NULL,
	[PredictValue] [float] NULL,
	[PredictValueSdv] [float] NULL,
	[PredictValueDv] [float] NULL,
	[PredictValueRank] [float] NULL,
	[ExpectedOdds] [float] NULL,
	[ExpectedOddsRatio] [float] NULL,
	[PredictScore] [float] NULL,
	[PredictScoreRank] [float] NULL,
	[IsValidPredictValue1] [bit] NULL,
	[PredictValue1] [float] NULL,
	[PredictValueSdv1] [float] NULL,
	[PredictValueDv1] [float] NULL,
	[PredictValueNorm1] [float] NULL,
	[PredictValueRank1] [float] NULL,
	[PredictError1] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_PredictByPlace] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PredictByQuinella](
	[RaceId] [nchar](12) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Num] [int] NULL,
	[HorseId1] [nchar](10) NULL,
	[HorseId2] [nchar](10) NULL,
	[HorseId3] [nchar](10) NULL,
	[IsValidPredictValue] [bit] NULL,
	[PredictValue] [float] NULL,
	[PredictValueSdv] [float] NULL,
	[PredictValueDv] [float] NULL,
	[PredictValueRank] [float] NULL,
	[ExpectedOdds] [float] NULL,
	[ExpectedOddsRatio] [float] NULL,
	[PredictScore] [float] NULL,
	[PredictScoreRank] [float] NULL,
	[IsValidPredictValue1] [bit] NULL,
	[PredictValue1] [float] NULL,
	[PredictValueSdv1] [float] NULL,
	[PredictValueDv1] [float] NULL,
	[PredictValueNorm1] [float] NULL,
	[PredictValueRank1] [float] NULL,
	[PredictError1] [float] NULL,
	[IsValidPredictValue2] [bit] NULL,
	[PredictValue2] [float] NULL,
	[PredictValueSdv2] [float] NULL,
	[PredictValueDv2] [float] NULL,
	[PredictValueNorm2] [float] NULL,
	[PredictValueRank2] [float] NULL,
	[PredictError2] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_PredictByQuinella] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PredictByTrifecta](
	[RaceId] [nchar](12) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Num] [int] NULL,
	[HorseId1] [nchar](10) NULL,
	[HorseId2] [nchar](10) NULL,
	[HorseId3] [nchar](10) NULL,
	[IsValidPredictValue] [bit] NULL,
	[PredictValue] [float] NULL,
	[PredictValueSdv] [float] NULL,
	[PredictValueDv] [float] NULL,
	[PredictValueRank] [float] NULL,
	[ExpectedOdds] [float] NULL,
	[ExpectedOddsRatio] [float] NULL,
	[PredictScore] [float] NULL,
	[PredictScoreRank] [float] NULL,
	[IsValidPredictValue1] [bit] NULL,
	[PredictValue1] [float] NULL,
	[PredictValueSdv1] [float] NULL,
	[PredictValueDv1] [float] NULL,
	[PredictValueNorm1] [float] NULL,
	[PredictValueRank1] [float] NULL,
	[PredictError1] [float] NULL,
	[IsValidPredictValue2] [bit] NULL,
	[PredictValue2] [float] NULL,
	[PredictValueSdv2] [float] NULL,
	[PredictValueDv2] [float] NULL,
	[PredictValueNorm2] [float] NULL,
	[PredictValueRank2] [float] NULL,
	[PredictError2] [float] NULL,
	[IsValidPredictValue3] [bit] NULL,
	[PredictValue3] [float] NULL,
	[PredictValueSdv3] [float] NULL,
	[PredictValueDv3] [float] NULL,
	[PredictValueNorm3] [float] NULL,
	[PredictValueRank3] [float] NULL,
	[PredictError3] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_PredictByTrifecta] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PredictByTrio](
	[RaceId] [nchar](12) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Num] [int] NULL,
	[HorseId1] [nchar](10) NULL,
	[HorseId2] [nchar](10) NULL,
	[HorseId3] [nchar](10) NULL,
	[IsValidPredictValue] [bit] NULL,
	[PredictValue] [float] NULL,
	[PredictValueSdv] [float] NULL,
	[PredictValueDv] [float] NULL,
	[PredictValueRank] [float] NULL,
	[ExpectedOdds] [float] NULL,
	[ExpectedOddsRatio] [float] NULL,
	[PredictScore] [float] NULL,
	[PredictScoreRank] [float] NULL,
	[IsValidPredictValue1] [bit] NULL,
	[PredictValue1] [float] NULL,
	[PredictValueSdv1] [float] NULL,
	[PredictValueDv1] [float] NULL,
	[PredictValueNorm1] [float] NULL,
	[PredictValueRank1] [float] NULL,
	[PredictError1] [float] NULL,
	[IsValidPredictValue2] [bit] NULL,
	[PredictValue2] [float] NULL,
	[PredictValueSdv2] [float] NULL,
	[PredictValueDv2] [float] NULL,
	[PredictValueNorm2] [float] NULL,
	[PredictValueRank2] [float] NULL,
	[PredictError2] [float] NULL,
	[IsValidPredictValue3] [bit] NULL,
	[PredictValue3] [float] NULL,
	[PredictValueSdv3] [float] NULL,
	[PredictValueDv3] [float] NULL,
	[PredictValueNorm3] [float] NULL,
	[PredictValueRank3] [float] NULL,
	[PredictError3] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_PredictByTrio] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PredictByWide](
	[RaceId] [nchar](12) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Num] [int] NULL,
	[HorseId1] [nchar](10) NULL,
	[HorseId2] [nchar](10) NULL,
	[HorseId3] [nchar](10) NULL,
	[IsValidPredictValue] [bit] NULL,
	[PredictValue] [float] NULL,
	[PredictValueSdv] [float] NULL,
	[PredictValueDv] [float] NULL,
	[PredictValueRank] [float] NULL,
	[ExpectedOdds] [float] NULL,
	[ExpectedOddsRatio] [float] NULL,
	[PredictScore] [float] NULL,
	[PredictScoreRank] [float] NULL,
	[IsValidPredictValue1] [bit] NULL,
	[PredictValue1] [float] NULL,
	[PredictValueSdv1] [float] NULL,
	[PredictValueDv1] [float] NULL,
	[PredictValueNorm1] [float] NULL,
	[PredictValueRank1] [float] NULL,
	[PredictError1] [float] NULL,
	[IsValidPredictValue2] [bit] NULL,
	[PredictValue2] [float] NULL,
	[PredictValueSdv2] [float] NULL,
	[PredictValueDv2] [float] NULL,
	[PredictValueNorm2] [float] NULL,
	[PredictValueRank2] [float] NULL,
	[PredictError2] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_PredictByWide] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PredictByWin](
	[RaceId] [nchar](12) NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Num] [int] NULL,
	[HorseId1] [nchar](10) NULL,
	[HorseId2] [nchar](10) NULL,
	[HorseId3] [nchar](10) NULL,
	[IsValidPredictValue] [bit] NULL,
	[PredictValue] [float] NULL,
	[PredictValueSdv] [float] NULL,
	[PredictValueDv] [float] NULL,
	[PredictValueRank] [float] NULL,
	[ExpectedOdds] [float] NULL,
	[ExpectedOddsRatio] [float] NULL,
	[PredictScore] [float] NULL,
	[PredictScoreRank] [float] NULL,
	[IsValidPredictValue1] [bit] NULL,
	[PredictValue1] [float] NULL,
	[PredictValueSdv1] [float] NULL,
	[PredictValueDv1] [float] NULL,
	[PredictValueNorm1] [float] NULL,
	[PredictValueRank1] [float] NULL,
	[PredictError1] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_PredictByWin] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PredictByWinFive](
	[RaceDate] [date] NOT NULL,
	[BetTypeId] [int] NOT NULL,
	[Kumi1] [int] NOT NULL,
	[Kumi2] [int] NOT NULL,
	[Kumi3] [int] NOT NULL,
	[Kumi4] [int] NOT NULL,
	[Kumi5] [int] NOT NULL,
	[Num] [int] NULL,
	[RaceId1] [nchar](12) NULL,
	[RaceId2] [nchar](12) NULL,
	[RaceId3] [nchar](12) NULL,
	[RaceId4] [nchar](12) NULL,
	[RaceId5] [nchar](12) NULL,
	[HorseId1] [nchar](10) NULL,
	[HorseId2] [nchar](10) NULL,
	[HorseId3] [nchar](10) NULL,
	[HorseId4] [nchar](10) NULL,
	[HorseId5] [nchar](10) NULL,
	[BracketNum1] [int] NULL,
	[BracketNum2] [int] NULL,
	[BracketNum3] [int] NULL,
	[BracketNum4] [int] NULL,
	[BracketNum5] [int] NULL,
	[IsValidPredictValue] [bit] NULL,
	[PredictValue] [float] NULL,
	[PredictValueSdv] [float] NULL,
	[PredictValueDv] [float] NULL,
	[PredictValueRank] [float] NULL,
	[ExpectedOdds] [float] NULL,
	[ExpectedOddsRatio] [float] NULL,
	[PredictScore] [float] NULL,
	[PredictScoreRank] [float] NULL,
	[IsValidPredictValue1] [bit] NULL,
	[PredictValue1] [float] NULL,
	[PredictValueSdv1] [float] NULL,
	[PredictValueDv1] [float] NULL,
	[PredictValueNorm1] [float] NULL,
	[PredictValueRank1] [float] NULL,
	[PredictError1] [float] NULL,
	[IsValidPredictValue2] [bit] NULL,
	[PredictValue2] [float] NULL,
	[PredictValueSdv2] [float] NULL,
	[PredictValueDv2] [float] NULL,
	[PredictValueNorm2] [float] NULL,
	[PredictValueRank2] [float] NULL,
	[PredictError2] [float] NULL,
	[IsValidPredictValue3] [bit] NULL,
	[PredictValue3] [float] NULL,
	[PredictValueSdv3] [float] NULL,
	[PredictValueDv3] [float] NULL,
	[PredictValueNorm3] [float] NULL,
	[PredictValueRank3] [float] NULL,
	[PredictError3] [float] NULL,
	[IsValidPredictValue4] [bit] NULL,
	[PredictValue4] [float] NULL,
	[PredictValueSdv4] [float] NULL,
	[PredictValueDv4] [float] NULL,
	[PredictValueNorm4] [float] NULL,
	[PredictValueRank4] [float] NULL,
	[PredictError4] [float] NULL,
	[IsValidPredictValue5] [bit] NULL,
	[PredictValue5] [float] NULL,
	[PredictValueSdv5] [float] NULL,
	[PredictValueDv5] [float] NULL,
	[PredictValueNorm5] [float] NULL,
	[PredictValueRank5] [float] NULL,
	[PredictError5] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_PredictByWinFive] PRIMARY KEY CLUSTERED 
(
	[RaceDate] ASC,
	[BetTypeId] ASC,
	[Kumi1] ASC,
	[Kumi2] ASC,
	[Kumi3] ASC,
	[Kumi4] ASC,
	[Kumi5] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PredictModels](
	[PredictModelId] [nvarchar](255) NULL,
	[PredictModel] [varbinary](max) NULL,
	[AnalyzeLog] [nvarchar](max) NULL,
	[ExecDatetime] [datetime] NULL,
	[Timestamp01] [datetime] NULL,
	[PredictModelTemp] [varbinary](max) NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL
) ON [INDEX] TEXTIMAGE_ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PredictModels0600](
	[PredictModel] [varbinary](max) NULL
) ON [INDEX] TEXTIMAGE_ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PredictModels1000](
	[PredictModel] [varbinary](max) NULL
) ON [INDEX] TEXTIMAGE_ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PredictModels2000](
	[PredictModel] [varbinary](max) NULL
) ON [INDEX] TEXTIMAGE_ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PredictModels3000](
	[PredictModel] [varbinary](max) NULL
) ON [INDEX] TEXTIMAGE_ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Race](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[RaceDayId] [nchar](10) NULL,
	[YoubiId] [nchar](1) NULL,
	[TokuNum] [nchar](4) NULL,
	[Hondai] [nvarchar](60) NULL,
	[Fukudai] [nvarchar](60) NULL,
	[Kakko] [nvarchar](60) NULL,
	[HondaiEng] [nvarchar](120) NULL,
	[FukudaiEng] [nvarchar](120) NULL,
	[KakkoEng] [nvarchar](120) NULL,
	[Ryakusyo10] [nvarchar](20) NULL,
	[Ryakusyo6] [nvarchar](12) NULL,
	[Ryakusyo3] [nvarchar](6) NULL,
	[Kubun] [nchar](1) NULL,
	[Nkai] [int] NULL,
	[GradeId] [nchar](1) NULL,
	[GradeIdBefore] [nchar](1) NULL,
	[SyubetuId] [nchar](2) NULL,
	[KigoId] [nchar](3) NULL,
	[JyuryoId] [nchar](1) NULL,
	[Jyoken1Id] [nchar](3) NULL,
	[Jyoken2Id] [nchar](3) NULL,
	[Jyoken3Id] [nchar](3) NULL,
	[Jyoken4Id] [nchar](3) NULL,
	[Jyoken5Id] [nchar](3) NULL,
	[JyokenName] [nvarchar](60) NULL,
	[Distance] [float] NULL,
	[DistanceId] [nchar](4) NULL,
	[DistanceBefore] [float] NULL,
	[DistanceTypeId] [nchar](1) NULL,
	[DistanceType2Id] [nchar](1) NULL,
	[TrackId] [nchar](2) NULL,
	[TrackIdBefore] [nchar](2) NULL,
	[CourseKubunId] [nchar](2) NULL,
	[CourseKubunIdBefore] [nchar](2) NULL,
	[Honsyokin1] [float] NULL,
	[Honsyokin2] [float] NULL,
	[Honsyokin3] [float] NULL,
	[Honsyokin4] [float] NULL,
	[Honsyokin5] [float] NULL,
	[Honsyokin6] [float] NULL,
	[Honsyokin7] [float] NULL,
	[HonsyokinBefore1] [float] NULL,
	[HonsyokinBefore2] [float] NULL,
	[HonsyokinBefore3] [float] NULL,
	[HonsyokinBefore4] [float] NULL,
	[HonsyokinBefore5] [float] NULL,
	[Fukasyokin1] [float] NULL,
	[Fukasyokin2] [float] NULL,
	[Fukasyokin3] [float] NULL,
	[Fukasyokin4] [float] NULL,
	[Fukasyokin5] [float] NULL,
	[FukasyokinBefore1] [float] NULL,
	[FukasyokinBefore2] [float] NULL,
	[FukasyokinBefore3] [float] NULL,
	[StartTime] [datetime] NULL,
	[StartTimeBefore] [datetime] NULL,
	[TorokuTosu] [float] NULL,
	[SyussoTosu] [float] NULL,
	[NyusenTosu] [float] NULL,
	[TenkoId] [nchar](1) NULL,
	[TrackTypeId] [nchar](1) NULL,
	[TrackType2Id] [nchar](1) NULL,
	[TrackType3Id] [nchar](1) NULL,
	[CourseTypeId] [nchar](1) NULL,
	[TrackConditionId] [nchar](1) NULL,
	[SibaBabaId] [nchar](1) NULL,
	[DirtBabaId] [nchar](1) NULL,
	[FastestStart3Time] [float] NULL,
	[FastestStart8Time] [float] NULL,
	[FastestStart4Time] [float] NULL,
	[FastestLast3Time] [float] NULL,
	[FastestLast4Time] [float] NULL,
	[RecordUpKubun] [nchar](1) NULL,
	[IsJraRace] [bit] NULL,
	[SmileId] [nchar](1) NULL,
	[IsUpdatedEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[IsPredictedRace] [bit] NULL,
	[Timestamp02] [datetime] NULL,
	[IsConfirmedRace] [bit] NULL,
	[IsAnalyzeNormalPastAndFuture] [bit] NULL,
	[IsAnalyzeNormalPast] [bit] NULL,
	[IsAnalyzeNormalFuture] [bit] NULL,
	[IsAnalyzeFullPastAndFuture] [bit] NULL,
	[IsAnalyzeFullPast] [bit] NULL,
	[IsAnalyzeFullFuture] [bit] NULL,
	[DefaultHitRateA] [float] NULL,
	[DefaultHitRateB] [float] NULL,
	[DefaultHitRateC] [float] NULL,
	[ClassId] [nchar](4) NULL,
	[JyokenId] [nchar](1) NULL,
	[PrepRaceType1Id] [nvarchar](255) NULL,
	[RaceType1Id] [nvarchar](255) NULL,
	[RaceType2Id] [nvarchar](255) NULL,
	[RaceType3Id] [nvarchar](255) NULL,
	[RaceType4Id] [nvarchar](255) NULL,
	[RaceType5Id] [nvarchar](255) NULL,
	[RaceType6Id] [nvarchar](255) NULL,
	[RaceType7Id] [nvarchar](255) NULL,
	[RaceType8Id] [nvarchar](255) NULL,
	[RaceType9Id] [nvarchar](255) NULL,
	[ThisRaceYear] [int] NULL,
	[PrevRaceYear] [int] NULL,
	[RaceMonthId] [nchar](2) NULL,
	[RaceMonth] [float] NULL,
	[RaceWeekId] [nchar](2) NULL,
	[RaceWeek] [float] NULL,
	[KaijiId] [nchar](4) NULL,
	[AnalyzeBasicRaceDateFrom] [date] NULL,
	[AnalyzeBasicRaceDateTo] [date] NULL,
	[AnalyzeGen01RaceDateFrom] [date] NULL,
	[AnalyzeGen01RaceDateTo] [date] NULL,
	[AnalyzeGen02RaceDateFrom] [date] NULL,
	[AnalyzeGen02RaceDateTo] [date] NULL,
	[AnalyzeGen05RaceDateFrom] [date] NULL,
	[AnalyzeGen05RaceDateTo] [date] NULL,
	[AnalyzeJockeyRaceDateFrom] [date] NULL,
	[AnalyzeJockeyRaceDateTo] [date] NULL,
	[AnalyzeTrainerRaceDateFrom] [date] NULL,
	[AnalyzeTrainerRaceDateTo] [date] NULL,
	[AnalyzeBanusiRaceDateFrom] [date] NULL,
	[AnalyzeBanusiRaceDateTo] [date] NULL,
	[AnalyzePrevRaceHorseRaceDateFrom] [date] NULL,
	[AnalyzePrevRaceHorseRaceDateTo] [date] NULL,
	[DistanceRemainder] [float] NULL,
	[FastestStart38Speed] [float] NULL,
	[Timestamp03] [datetime] NULL,
	[IsValidDistanceSdv] [bit] NULL,
	[DistanceSdv] [float] NULL,
	[DistanceDv] [float] NULL,
	[IsValidFastestStart38SpeedSdv] [bit] NULL,
	[FastestStart38SpeedSdv] [float] NULL,
	[FastestStart38SpeedDv] [float] NULL,
	[Timestamp04] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Race] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceByCornerPosition](
	[RaceId] [nchar](12) NOT NULL,
	[Num] [int] NOT NULL,
	[Corner] [float] NULL,
	[Syukaisu] [float] NULL,
	[Jyuni] [nvarchar](70) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceByCornerPosition] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[Num] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceByLapTime](
	[RaceId] [nchar](12) NOT NULL,
	[Num] [int] NOT NULL,
	[LapTime] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceByLapTime] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[Num] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceExclusion](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](20) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[Bamei] [nchar](36) NULL,
	[ShutsubaTohyoJun] [int] NOT NULL,
	[ShussoKubun] [nchar](1) NULL,
	[JogaiJotaiKubun] [nchar](1) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceExclusion] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[ShutsubaTohyoJun] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorse](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[BracketNum] [int] NULL,
	[HorseNum] [int] NULL,
	[Bamei] [nvarchar](36) NULL,
	[UmaKigoId] [nchar](2) NULL,
	[SexId] [nchar](1) NULL,
	[HinsyuId] [nchar](1) NULL,
	[KeiroId] [nchar](2) NULL,
	[Barei] [float] NULL,
	[TozaiId] [nchar](1) NULL,
	[TrainerId] [nchar](5) NULL,
	[TrainerRyakusyo] [nvarchar](8) NULL,
	[BanusiId] [nchar](6) NULL,
	[BanusiName] [nvarchar](64) NULL,
	[SilkId] [nchar](60) NULL,
	[Reserved1] [nvarchar](60) NULL,
	[Handicap] [float] NULL,
	[HandicapBefore] [float] NULL,
	[BlinkerId] [char](1) NULL,
	[Reserved2] [nchar](1) NULL,
	[JockeyId] [nchar](5) NULL,
	[JockeyIdBefore] [nchar](5) NULL,
	[JockeyRyakusyo] [nvarchar](8) NULL,
	[JockeyRyakusyoBefore] [nvarchar](8) NULL,
	[MinaraiId] [nchar](1) NULL,
	[MinaraiIdBefore] [nchar](1) NULL,
	[Weight] [float] NULL,
	[WeightDelta] [float] NULL,
	[StatsId] [nchar](1) NULL,
	[NyusenJyuni] [float] NULL,
	[KakuteiJyuni] [float] NULL,
	[DochakuKubun] [nchar](1) NULL,
	[DochakuTosu] [float] NULL,
	[Time] [float] NULL,
	[ChakusaId] [nchar](3) NULL,
	[ChakusaIdP] [nchar](3) NULL,
	[ChakusaIdPp] [nchar](3) NULL,
	[Position1] [float] NULL,
	[Position2] [float] NULL,
	[Position3] [float] NULL,
	[Position4] [float] NULL,
	[Odds] [float] NULL,
	[Ninki] [float] NULL,
	[Honsyokin] [float] NULL,
	[Fukasyokin] [float] NULL,
	[Reserved3] [nchar](3) NULL,
	[Reserved4] [nchar](3) NULL,
	[Last4Time] [float] NULL,
	[Last3Time] [float] NULL,
	[Finish01HorseId] [nchar](10) NULL,
	[Finish01Bamei] [nvarchar](36) NULL,
	[Finish02HorseId] [nchar](10) NULL,
	[Finish02Bamei] [nvarchar](36) NULL,
	[Finish03HorseId] [nchar](10) NULL,
	[Finish03Bamei] [nvarchar](36) NULL,
	[TimeDiff] [float] NULL,
	[RecordUpKubun] [nchar](1) NULL,
	[DmKubun] [nchar](1) NULL,
	[DmTime] [float] NULL,
	[DmGosaP] [float] NULL,
	[DmGosaM] [float] NULL,
	[DmJyuni] [int] NULL,
	[RunType] [float] NULL,
	[RunTypeId] [nchar](1) NULL,
	[IsRun] [float] NULL,
	[IsHit1] [float] NULL,
	[IsHit2] [float] NULL,
	[IsHit3] [float] NULL,
	[IsHit4] [float] NULL,
	[IsHit5] [float] NULL,
	[IsHit6] [float] NULL,
	[IsHitA] [float] NULL,
	[IsHitB] [float] NULL,
	[IsHitC] [float] NULL,
	[IsHitD] [float] NULL,
	[IsHitE] [float] NULL,
	[IsUpdatedEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[IsConfirmedRaceHorse] [bit] NULL,
	[Timestamp02] [datetime] NULL,
	[IsValidRaceHorse] [bit] NULL,
	[Timestamp03] [datetime] NULL,
	[IsValidTargetRaceHorse] [bit] NULL,
	[Timestamp04] [datetime] NULL,
	[HorseNumRatio] [float] NULL,
	[HandicapRatio] [float] NULL,
	[Lifetime] [float] NULL,
	[LifetimeLog] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp11] [datetime] NULL,
	[IsValidHorseNumRatioSdvByRace] [bit] NULL,
	[HorseNumRatioSdvByRace] [float] NULL,
	[IsValidWeightSdvByRace] [bit] NULL,
	[WeightSdvByRace] [float] NULL,
	[IsValidHandicapSdvByRace] [bit] NULL,
	[HandicapSdvByRace] [float] NULL,
	[IsValidHandicapRatioSdvByRace] [bit] NULL,
	[HandicapRatioSdvByRace] [float] NULL,
	[IsValidLifetimeSdvByRace] [bit] NULL,
	[LifetimeSdvByRace] [float] NULL,
	[Timestamp12] [datetime] NULL,
	[IsValidHorseNumRatioSdv] [bit] NULL,
	[HorseNumRatioSdv] [float] NULL,
	[IsValidWeightSdv] [bit] NULL,
	[WeightSdv] [float] NULL,
	[IsValidHandicapSdv] [bit] NULL,
	[HandicapSdv] [float] NULL,
	[IsValidHandicapRatioSdv] [bit] NULL,
	[HandicapRatioSdv] [float] NULL,
	[IsValidLifetimeSdv] [bit] NULL,
	[LifetimeSdv] [float] NULL,
	[Timestamp13] [datetime] NULL,
	[FinishTime] [float] NULL,
	[FirstTime] [float] NULL,
	[LastTime] [float] NULL,
	[FinishSpeed] [float] NULL,
	[FirstSpeed] [float] NULL,
	[LastSpeed] [float] NULL,
	[FinishAccel] [float] NULL,
	[FirstAccel] [float] NULL,
	[LastAccel] [float] NULL,
	[FinishStartSpeedRatio] [float] NULL,
	[Timestamp21] [datetime] NULL,
	[IsValidFinishTimeSdvByRace] [bit] NULL,
	[FinishTimeSdvByRace] [float] NULL,
	[FinishTimeDvByRace] [float] NULL,
	[IsValidFirstTimeSdvByRace] [bit] NULL,
	[FirstTimeSdvByRace] [float] NULL,
	[FirstTimeDvByRace] [float] NULL,
	[IsValidLastTimeSdvByRace] [bit] NULL,
	[LastTimeSdvByRace] [float] NULL,
	[LastTimeDvByRace] [float] NULL,
	[IsValidFinishSpeedSdvByRace] [bit] NULL,
	[FinishSpeedSdvByRace] [float] NULL,
	[FinishSpeedDvByRace] [float] NULL,
	[IsValidFirstSpeedSdvByRace] [bit] NULL,
	[FirstSpeedSdvByRace] [float] NULL,
	[FirstSpeedDvByRace] [float] NULL,
	[IsValidLastSpeedSdvByRace] [bit] NULL,
	[LastSpeedSdvByRace] [float] NULL,
	[LastSpeedDvByRace] [float] NULL,
	[IsValidFinishAccelSdvByRace] [bit] NULL,
	[FinishAccelSdvByRace] [float] NULL,
	[FinishAccelDvByRace] [float] NULL,
	[IsValidFirstAccelSdvByRace] [bit] NULL,
	[FirstAccelSdvByRace] [float] NULL,
	[FirstAccelDvByRace] [float] NULL,
	[IsValidLastAccelSdvByRace] [bit] NULL,
	[LastAccelSdvByRace] [float] NULL,
	[LastAccelDvByRace] [float] NULL,
	[IsValidFinishStartSpeedRatioSdvByRace] [bit] NULL,
	[FinishStartSpeedRatioSdvByRace] [float] NULL,
	[FinishStartSpeedRatioDvByRace] [float] NULL,
	[IsValidPosition1SdvByRace] [bit] NULL,
	[Position1SdvByRace] [float] NULL,
	[IsValidPosition2SdvByRace] [bit] NULL,
	[Position2SdvByRace] [float] NULL,
	[IsValidPosition3SdvByRace] [bit] NULL,
	[Position3SdvByRace] [float] NULL,
	[IsValidPosition4SdvByRace] [bit] NULL,
	[Position4SdvByRace] [float] NULL,
	[Timestamp22] [datetime] NULL,
	[IsValidFinishTimeSdv] [bit] NULL,
	[FinishTimeSdv] [float] NULL,
	[FinishTimeDv] [float] NULL,
	[IsValidFirstTimeSdv] [bit] NULL,
	[FirstTimeSdv] [float] NULL,
	[FirstTimeDv] [float] NULL,
	[IsValidLastTimeSdv] [bit] NULL,
	[LastTimeSdv] [float] NULL,
	[LastTimeDv] [float] NULL,
	[IsValidFinishSpeedSdv] [bit] NULL,
	[FinishSpeedSdv] [float] NULL,
	[FinishSpeedDv] [float] NULL,
	[IsValidFirstSpeedSdv] [bit] NULL,
	[FirstSpeedSdv] [float] NULL,
	[FirstSpeedDv] [float] NULL,
	[IsValidLastSpeedSdv] [bit] NULL,
	[LastSpeedSdv] [float] NULL,
	[LastSpeedDv] [float] NULL,
	[IsValidFinishAccelSdv] [bit] NULL,
	[FinishAccelSdv] [float] NULL,
	[FinishAccelDv] [float] NULL,
	[IsValidFirstAccelSdv] [bit] NULL,
	[FirstAccelSdv] [float] NULL,
	[FirstAccelDv] [float] NULL,
	[IsValidLastAccelSdv] [bit] NULL,
	[LastAccelSdv] [float] NULL,
	[LastAccelDv] [float] NULL,
	[IsValidFinishStartSpeedRatioSdv] [bit] NULL,
	[FinishStartSpeedRatioSdv] [float] NULL,
	[FinishStartSpeedRatioDv] [float] NULL,
	[IsValidRunTypeSdv] [bit] NULL,
	[RunTypeSdv] [float] NULL,
	[RunTypeDv] [float] NULL,
	[Timestamp23] [datetime] NULL,
	[IsValidPredictValueA] [bit] NULL,
	[PredictValueA] [float] NULL,
	[PredictValueSdvA] [float] NULL,
	[PredictValueDvA] [float] NULL,
	[PredictValueNormA] [float] NULL,
	[PredictValueRankA] [int] NULL,
	[PredictErrorA] [int] NULL,
	[IsValidPredictValueB] [bit] NULL,
	[PredictValueB] [float] NULL,
	[PredictValueSdvB] [float] NULL,
	[PredictValueDvB] [float] NULL,
	[PredictValueNormB] [float] NULL,
	[PredictValueRankB] [int] NULL,
	[PredictErrorB] [int] NULL,
	[IsValidPredictValueC] [bit] NULL,
	[PredictValueC] [float] NULL,
	[PredictValueSdvC] [float] NULL,
	[PredictValueDvC] [float] NULL,
	[PredictValueNormC] [float] NULL,
	[PredictValueRankC] [int] NULL,
	[PredictErrorC] [int] NULL,
	[PredictDatetime] [datetime] NULL,
	[Timestamp32] [datetime] NULL,
	[PrepHorseNumRatio] [float] NULL,
	[PrepWeight] [float] NULL,
	[PrepHandicap] [float] NULL,
	[PrepHandicapRatio] [float] NULL,
	[PrepLifetime] [float] NULL,
	[Timestamp81] [datetime] NULL,
	[IsValidPrepHorseNumRatioSdv] [bit] NULL,
	[PrepHorseNumRatioSdv] [float] NULL,
	[IsValidPrepWeightSdv] [bit] NULL,
	[PrepWeightSdv] [float] NULL,
	[IsValidPrepHandicapSdv] [bit] NULL,
	[PrepHandicapSdv] [float] NULL,
	[IsValidPrepHandicapRatioSdv] [bit] NULL,
	[PrepHandicapRatioSdv] [float] NULL,
	[IsValidPrepLifetimeSdv] [bit] NULL,
	[PrepLifetimeSdv] [float] NULL,
	[Timestamp82] [datetime] NULL,
	[PrepFinishTime] [float] NULL,
	[PrepFirstTime] [float] NULL,
	[PrepLastTime] [float] NULL,
	[PrepFinishSpeed] [float] NULL,
	[PrepFirstSpeed] [float] NULL,
	[PrepLastSpeed] [float] NULL,
	[Timestamp91] [datetime] NULL,
	[IsValidPrepFinishTimeSdv] [bit] NULL,
	[PrepFinishTimeSdv] [float] NULL,
	[IsValidPrepFirstTimeSdv] [bit] NULL,
	[PrepFirstTimeSdv] [float] NULL,
	[IsValidPrepLastTimeSdv] [bit] NULL,
	[PrepLastTimeSdv] [float] NULL,
	[IsValidPrepFinishSpeedSdv] [bit] NULL,
	[PrepFinishSpeedSdv] [float] NULL,
	[IsValidPrepFirstSpeedSdv] [bit] NULL,
	[PrepFirstSpeedSdv] [float] NULL,
	[IsValidPrepLastSpeedSdv] [bit] NULL,
	[PrepLastSpeedSdv] [float] NULL,
	[Timestamp92] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_RaceHorse] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistory](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[Bamei] [nvarchar](18) NULL,
	[RuikeiHonsyoHeiti] [float] NULL,
	[RuikeiHonsyoSyogai] [float] NULL,
	[RuikeiFukaHeichi] [float] NULL,
	[RuikeiFukaSyogai] [float] NULL,
	[RuikeiSyutokuHeichi] [float] NULL,
	[RuikeiSyutokuSyogai] [float] NULL,
	[RaceCount] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistory] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByBanusi](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[SummaryType] [int] NOT NULL,
	[BanusiId] [nchar](6) NULL,
	[SetYear] [int] NULL,
	[Honsyokin] [float] NULL,
	[Fukasyokin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByBanusi] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[SummaryType] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByBanusiByTotal](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[SummaryType] [int] NOT NULL,
	[BanusiId] [nchar](6) NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByBanusiByTotal] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[SummaryType] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByBreeder](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[SummaryType] [int] NOT NULL,
	[BreederId] [nchar](6) NULL,
	[SetYear] [int] NULL,
	[Honsyokin] [float] NULL,
	[Fukasyokin] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByBreeder] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[SummaryType] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByBreederByTotal](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[SummaryType] [int] NOT NULL,
	[BreederId] [nchar](6) NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByBreederByTotal] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[SummaryType] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByHorse](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[Bamei] [nchar](36) NULL,
	[RuikeiHonsyoHeiti] [float] NULL,
	[RuikeiHonsyoSyogai] [float] NULL,
	[RuikeiFukaHeichi] [float] NULL,
	[RuikeiFukaSyogai] [float] NULL,
	[RuikeiSyutokuHeichi] [float] NULL,
	[RuikeiSyutokuSyogai] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByHorse] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByHorseByCourseType](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[TrackTypeId] [nchar](1) NOT NULL,
	[CourseTypeId] [nchar](1) NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByHorseByCourseType] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[TrackTypeId] ASC,
	[CourseTypeId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByHorseByDistanceType](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[TrackTypeId] [nchar](1) NOT NULL,
	[DistanceTypeId] [nchar](1) NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByHorseByDistanceType] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[TrackTypeId] ASC,
	[DistanceTypeId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByHorseByJyo](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[TrackTypeId] [nchar](1) NOT NULL,
	[PlaceId] [nchar](2) NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByHorseByJyo] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[TrackTypeId] ASC,
	[PlaceId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByHorseByRunType](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RunCount] [float] NULL,
	[Pos1Count] [float] NULL,
	[Pos1Rate] [float] NULL,
	[Pos2Count] [float] NULL,
	[Pos2Rate] [float] NULL,
	[Pos3Count] [float] NULL,
	[Pos3Rate] [float] NULL,
	[Pos4Count] [float] NULL,
	[Pos4Rate] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[IsValidRunType] [bit] NULL,
	[RunTypeSdv] [float] NULL,
	[RunTypeDv] [float] NULL,
	[RunTypeRank] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByHorseByRunType] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByHorseByTotal](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[RunCountTotal] [float] NULL,
	[HitCountTotal1] [float] NULL,
	[HitRateTotal1] [float] NULL,
	[HitCountTotal2] [float] NULL,
	[HitRateTotal2] [float] NULL,
	[HitCountTotal3] [float] NULL,
	[HitRateTotal3] [float] NULL,
	[HitCountTotal4] [float] NULL,
	[HitRateTotal4] [float] NULL,
	[HitCountTotal5] [float] NULL,
	[HitRateTotal5] [float] NULL,
	[HitCountTotal6] [float] NULL,
	[HitRateTotal6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByHorseByTotal] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByHorseByTrackCondition](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[TrackTypeId] [nchar](1) NOT NULL,
	[TrackConditionId] [nchar](1) NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByHorseByTrackCondition] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[TrackTypeId] ASC,
	[TrackConditionId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByHorseByTrackType](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[TrackTypeId] [nchar](1) NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByHorseByTrackType] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[TrackTypeId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByJockey](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[SummaryType] [int] NOT NULL,
	[JockeyId] [nchar](5) NULL,
	[JockeyName] [nvarchar](34) NULL,
	[SetYear] [int] NULL,
	[HonsyokinHeichi] [float] NULL,
	[HonsyokinSyogai] [float] NULL,
	[FukasyokinHeichi] [float] NULL,
	[FukasyokinSyogai] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByJocky] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[SummaryType] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByJockeyByDistanceType](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[SummaryType] [int] NOT NULL,
	[TrackType2Id] [nchar](1) NOT NULL,
	[DistanceTypeId] [int] NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByJockeyByDistanceType] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[SummaryType] ASC,
	[TrackType2Id] ASC,
	[DistanceTypeId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByJockeyByJyo](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[SummaryType] [int] NOT NULL,
	[TrackTypeId] [nchar](1) NOT NULL,
	[PlaceId] [nchar](2) NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByJockeyByJyo] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[SummaryType] ASC,
	[TrackTypeId] ASC,
	[PlaceId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByJockeyByTrackType](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[SummaryType] [int] NOT NULL,
	[TrackTypeId] [nchar](1) NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByJockeyByTrackType] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[SummaryType] ASC,
	[TrackTypeId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByTrainer](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[SummaryType] [int] NOT NULL,
	[TrainerId] [nchar](5) NULL,
	[TrainerName] [nchar](34) NULL,
	[SetYear] [int] NULL,
	[HonsyokinHeichi] [float] NULL,
	[HonsyokinSyogai] [float] NULL,
	[FukasyokinHeichi] [float] NULL,
	[FukasyokinSyogai] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByTrainer] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[SummaryType] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByTrainerByDistanceType](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[SummaryType] [int] NOT NULL,
	[TrackType2Id] [nchar](1) NOT NULL,
	[DistanceTypeId] [int] NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByTrainerByDistanceType] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[SummaryType] ASC,
	[TrackType2Id] ASC,
	[DistanceTypeId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByTrainerByJyo](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[SummaryType] [int] NOT NULL,
	[TrackTypeId] [nchar](1) NOT NULL,
	[Place2Id] [nchar](2) NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByTrainerByJyo] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[SummaryType] ASC,
	[TrackTypeId] ASC,
	[Place2Id] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceHorseHistoryByTrainerByTrackType](
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[SummaryType] [int] NOT NULL,
	[TrackTypeId] [nchar](1) NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceHorseHistoryByTrainerByTrackType] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC,
	[SummaryType] ASC,
	[TrackTypeId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceInfo](
	[RaceId] [nchar](12) NOT NULL,
	[PredictDatetime] [datetime] NULL,
	[Timestamp01] [datetime] NULL,
	[CrawlDatetime] [datetime] NULL,
	[Timestamp02] [datetime] NULL,
	[IsBet] [bit] NULL,
	[BetCount] [float] NULL,
	[BetMoney] [float] NULL,
	[BetDatetime] [datetime] NULL,
	[IsAutoBet] [bit] NULL,
	[AutoBetDatetime] [datetime] NULL,
	[Timestamp03] [datetime] NULL,
	[IsHit] [bit] NULL,
	[HitCount] [float] NULL,
	[IsHitWin] [bit] NULL,
	[HitCountWin] [float] NULL,
	[IsHitPlace] [bit] NULL,
	[HitCountPlace] [float] NULL,
	[IsHitBracket] [bit] NULL,
	[HitCountBracket] [float] NULL,
	[IsHitQuinella] [bit] NULL,
	[HitCountQuinella] [float] NULL,
	[IsHitWide] [bit] NULL,
	[HitCountWide] [float] NULL,
	[IsHitExacta] [bit] NULL,
	[HitCountExacta] [float] NULL,
	[IsHitTrio] [bit] NULL,
	[HitCountTrio] [float] NULL,
	[IsHitTrifecta] [bit] NULL,
	[HitCountTrifecta] [float] NULL,
	[HitMoney] [float] NULL,
	[ReturnMoney] [float] NULL,
	[HitRate] [float] NULL,
	[ReturnRate] [float] NULL,
	[Timestamp04] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_RaceInfo] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RaceRecord](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RecInfoKubun] [nchar](1) NOT NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[TokuNum] [nchar](4) NOT NULL,
	[Hondai] [nvarchar](30) NULL,
	[GradeId] [nchar](1) NOT NULL,
	[SyubetuId] [nchar](2) NOT NULL,
	[Distance] [int] NOT NULL,
	[TrackId] [nchar](2) NOT NULL,
	[RecordKubun] [nchar](10) NULL,
	[RecTime] [float] NULL,
	[TenkoId] [nchar](1) NULL,
	[SibaBabaId] [nchar](1) NULL,
	[DirtBabaId] [nchar](1) NULL,
	[RecUma1HorseId] [nchar](10) NULL,
	[RecUma1Bamei] [nvarchar](18) NULL,
	[RecUma1UmaKigoId] [nchar](2) NULL,
	[RecUma1SexId] [nchar](1) NULL,
	[RecUma1TrainerId] [nchar](5) NULL,
	[RecUma1TrainerName] [nvarchar](17) NULL,
	[RecUma1Handicap] [float] NULL,
	[RecUma1JockeyId] [nchar](5) NULL,
	[RecUma1JockeyName] [nvarchar](17) NULL,
	[RecUma2HorseId] [nchar](10) NULL,
	[RecUma2Bamei] [nvarchar](18) NULL,
	[RecUma2UmaKigoId] [nchar](2) NULL,
	[RecUma2SexId] [nchar](1) NULL,
	[RecUma2TrainerId] [nchar](5) NULL,
	[RecUma2TrainerName] [nvarchar](17) NULL,
	[RecUma2Handicap] [float] NULL,
	[RecUma2JockeyId] [nchar](5) NULL,
	[RecUma2JockeyName] [nvarchar](17) NULL,
	[RecUma3HorseId] [nchar](10) NULL,
	[RecUma3Bamei] [nvarchar](18) NULL,
	[RecUma3UmaKigoId] [nchar](2) NULL,
	[RecUma3SexId] [nchar](1) NULL,
	[RecUma3TrainerId] [nchar](5) NULL,
	[RecUma3TrainerName] [nvarchar](17) NULL,
	[RecUma3Handicap] [float] NULL,
	[RecUma3JockeyId] [nchar](5) NULL,
	[RecUma3JockeyName] [nvarchar](17) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_RaceRecord] PRIMARY KEY CLUSTERED 
(
	[RecInfoKubun] ASC,
	[RaceId] ASC,
	[TokuNum] ASC,
	[SyubetuId] ASC,
	[Distance] ASC,
	[TrackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReplRace](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[RaceDayId] [nchar](10) NULL,
	[YoubiId] [nchar](1) NULL,
	[TokuNum] [nchar](4) NULL,
	[Hondai] [nvarchar](60) NULL,
	[Fukudai] [nvarchar](60) NULL,
	[Kakko] [nvarchar](60) NULL,
	[HondaiEng] [nvarchar](120) NULL,
	[FukudaiEng] [nvarchar](120) NULL,
	[KakkoEng] [nvarchar](120) NULL,
	[Ryakusyo10] [nvarchar](20) NULL,
	[Ryakusyo6] [nvarchar](12) NULL,
	[Ryakusyo3] [nvarchar](6) NULL,
	[Kubun] [nchar](1) NULL,
	[Nkai] [int] NULL,
	[GradeId] [nchar](1) NULL,
	[GradeIdBefore] [nchar](1) NULL,
	[SyubetuId] [nchar](2) NULL,
	[KigoId] [nchar](3) NULL,
	[JyuryoId] [nchar](1) NULL,
	[Jyoken1Id] [nchar](3) NULL,
	[Jyoken2Id] [nchar](3) NULL,
	[Jyoken3Id] [nchar](3) NULL,
	[Jyoken4Id] [nchar](3) NULL,
	[Jyoken5Id] [nchar](3) NULL,
	[JyokenName] [nvarchar](60) NULL,
	[Distance] [float] NULL,
	[DistanceId] [nchar](4) NULL,
	[DistanceBefore] [float] NULL,
	[DistanceTypeId] [nchar](1) NULL,
	[DistanceType2Id] [nchar](1) NULL,
	[TrackId] [nchar](2) NULL,
	[TrackIdBefore] [nchar](2) NULL,
	[CourseKubunId] [nchar](2) NULL,
	[CourseKubunIdBefore] [nchar](2) NULL,
	[Honsyokin1] [float] NULL,
	[Honsyokin2] [float] NULL,
	[Honsyokin3] [float] NULL,
	[Honsyokin4] [float] NULL,
	[Honsyokin5] [float] NULL,
	[Honsyokin6] [float] NULL,
	[Honsyokin7] [float] NULL,
	[HonsyokinBefore1] [float] NULL,
	[HonsyokinBefore2] [float] NULL,
	[HonsyokinBefore3] [float] NULL,
	[HonsyokinBefore4] [float] NULL,
	[HonsyokinBefore5] [float] NULL,
	[Fukasyokin1] [float] NULL,
	[Fukasyokin2] [float] NULL,
	[Fukasyokin3] [float] NULL,
	[Fukasyokin4] [float] NULL,
	[Fukasyokin5] [float] NULL,
	[FukasyokinBefore1] [float] NULL,
	[FukasyokinBefore2] [float] NULL,
	[FukasyokinBefore3] [float] NULL,
	[StartTime] [datetime] NULL,
	[StartTimeBefore] [datetime] NULL,
	[TorokuTosu] [float] NULL,
	[SyussoTosu] [float] NULL,
	[NyusenTosu] [float] NULL,
	[TenkoId] [nchar](1) NULL,
	[TrackTypeId] [nchar](1) NULL,
	[TrackType2Id] [nchar](1) NULL,
	[TrackType3Id] [nchar](1) NULL,
	[CourseTypeId] [nchar](1) NULL,
	[TrackConditionId] [nchar](1) NULL,
	[SibaBabaId] [nchar](1) NULL,
	[DirtBabaId] [nchar](1) NULL,
	[FastestStart3Time] [float] NULL,
	[FastestStart8Time] [float] NULL,
	[FastestStart4Time] [float] NULL,
	[FastestLast3Time] [float] NULL,
	[FastestLast4Time] [float] NULL,
	[RecordUpKubun] [nchar](1) NULL,
	[IsJraRace] [bit] NULL,
	[SmileId] [nchar](1) NULL,
	[IsUpdatedEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[IsPredictedRace] [bit] NULL,
	[Timestamp02] [datetime] NULL,
	[IsConfirmedRace] [bit] NULL,
	[IsAnalyzeNormalPastAndFuture] [bit] NULL,
	[IsAnalyzeNormalPast] [bit] NULL,
	[IsAnalyzeNormalFuture] [bit] NULL,
	[IsAnalyzeFullPastAndFuture] [bit] NULL,
	[IsAnalyzeFullPast] [bit] NULL,
	[IsAnalyzeFullFuture] [bit] NULL,
	[DefaultHitRateA] [float] NULL,
	[DefaultHitRateB] [float] NULL,
	[DefaultHitRateC] [float] NULL,
	[ClassId] [nchar](4) NULL,
	[JyokenId] [nchar](1) NULL,
	[PrepRaceType1Id] [nvarchar](255) NULL,
	[RaceType1Id] [nvarchar](255) NULL,
	[RaceType2Id] [nvarchar](255) NULL,
	[RaceType3Id] [nvarchar](255) NULL,
	[RaceType4Id] [nvarchar](255) NULL,
	[RaceType5Id] [nvarchar](255) NULL,
	[RaceType6Id] [nvarchar](255) NULL,
	[RaceType7Id] [nvarchar](255) NULL,
	[RaceType8Id] [nvarchar](255) NULL,
	[RaceType9Id] [nvarchar](255) NULL,
	[ThisRaceYear] [int] NULL,
	[PrevRaceYear] [int] NULL,
	[RaceMonthId] [nchar](2) NULL,
	[RaceMonth] [float] NULL,
	[RaceWeekId] [nchar](2) NULL,
	[RaceWeek] [float] NULL,
	[KaijiId] [nchar](4) NULL,
	[AnalyzeBasicRaceDateFrom] [date] NULL,
	[AnalyzeBasicRaceDateTo] [date] NULL,
	[AnalyzeGen01RaceDateFrom] [date] NULL,
	[AnalyzeGen01RaceDateTo] [date] NULL,
	[AnalyzeGen02RaceDateFrom] [date] NULL,
	[AnalyzeGen02RaceDateTo] [date] NULL,
	[AnalyzeGen05RaceDateFrom] [date] NULL,
	[AnalyzeGen05RaceDateTo] [date] NULL,
	[AnalyzeJockeyRaceDateFrom] [date] NULL,
	[AnalyzeJockeyRaceDateTo] [date] NULL,
	[AnalyzeTrainerRaceDateFrom] [date] NULL,
	[AnalyzeTrainerRaceDateTo] [date] NULL,
	[AnalyzeBanusiRaceDateFrom] [date] NULL,
	[AnalyzeBanusiRaceDateTo] [date] NULL,
	[AnalyzePrevRaceHorseRaceDateFrom] [date] NULL,
	[AnalyzePrevRaceHorseRaceDateTo] [date] NULL,
	[DistanceRemainder] [float] NULL,
	[FastestStart38Speed] [float] NULL,
	[Timestamp03] [datetime] NULL,
	[IsValidDistanceSdv] [bit] NULL,
	[DistanceSdv] [float] NULL,
	[DistanceDv] [float] NULL,
	[IsValidFastestStart38SpeedSdv] [bit] NULL,
	[FastestStart38SpeedSdv] [float] NULL,
	[FastestStart38SpeedDv] [float] NULL,
	[Timestamp04] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ReplRace] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReplRaceHorse](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[BracketNum] [int] NULL,
	[HorseNum] [int] NULL,
	[Bamei] [nvarchar](36) NULL,
	[UmaKigoId] [nchar](2) NULL,
	[SexId] [nchar](1) NULL,
	[HinsyuId] [nchar](1) NULL,
	[KeiroId] [nchar](2) NULL,
	[Barei] [float] NULL,
	[TozaiId] [nchar](1) NULL,
	[TrainerId] [nchar](5) NULL,
	[TrainerRyakusyo] [nvarchar](8) NULL,
	[BanusiId] [nchar](6) NULL,
	[BanusiName] [nvarchar](64) NULL,
	[SilkId] [nchar](60) NULL,
	[Reserved1] [nvarchar](60) NULL,
	[Handicap] [float] NULL,
	[HandicapBefore] [float] NULL,
	[BlinkerId] [char](1) NULL,
	[Reserved2] [nchar](1) NULL,
	[JockeyId] [nchar](5) NULL,
	[JockeyIdBefore] [nchar](5) NULL,
	[JockeyRyakusyo] [nvarchar](8) NULL,
	[JockeyRyakusyoBefore] [nvarchar](8) NULL,
	[MinaraiId] [nchar](1) NULL,
	[MinaraiIdBefore] [nchar](1) NULL,
	[Weight] [float] NULL,
	[WeightDelta] [float] NULL,
	[StatsId] [nchar](1) NULL,
	[NyusenJyuni] [float] NULL,
	[KakuteiJyuni] [float] NULL,
	[DochakuKubun] [nchar](1) NULL,
	[DochakuTosu] [float] NULL,
	[Time] [float] NULL,
	[ChakusaId] [nchar](3) NULL,
	[ChakusaIdP] [nchar](3) NULL,
	[ChakusaIdPp] [nchar](3) NULL,
	[Position1] [float] NULL,
	[Position2] [float] NULL,
	[Position3] [float] NULL,
	[Position4] [float] NULL,
	[Odds] [float] NULL,
	[Ninki] [float] NULL,
	[Honsyokin] [float] NULL,
	[Fukasyokin] [float] NULL,
	[Reserved3] [nchar](3) NULL,
	[Reserved4] [nchar](3) NULL,
	[Last4Time] [float] NULL,
	[Last3Time] [float] NULL,
	[Finish01HorseId] [nchar](10) NULL,
	[Finish01Bamei] [nvarchar](36) NULL,
	[Finish02HorseId] [nchar](10) NULL,
	[Finish02Bamei] [nvarchar](36) NULL,
	[Finish03HorseId] [nchar](10) NULL,
	[Finish03Bamei] [nvarchar](36) NULL,
	[TimeDiff] [float] NULL,
	[RecordUpKubun] [nchar](1) NULL,
	[DmKubun] [nchar](1) NULL,
	[DmTime] [float] NULL,
	[DmGosaP] [float] NULL,
	[DmGosaM] [float] NULL,
	[DmJyuni] [int] NULL,
	[RunType] [float] NULL,
	[RunTypeId] [nchar](1) NULL,
	[IsRun] [float] NULL,
	[IsHit1] [float] NULL,
	[IsHit2] [float] NULL,
	[IsHit3] [float] NULL,
	[IsHit4] [float] NULL,
	[IsHit5] [float] NULL,
	[IsHit6] [float] NULL,
	[IsHitA] [float] NULL,
	[IsHitB] [float] NULL,
	[IsHitC] [float] NULL,
	[IsHitD] [float] NULL,
	[IsHitE] [float] NULL,
	[IsUpdatedEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[IsConfirmedRaceHorse] [bit] NULL,
	[Timestamp02] [datetime] NULL,
	[IsValidRaceHorse] [bit] NULL,
	[Timestamp03] [datetime] NULL,
	[IsValidTargetRaceHorse] [bit] NULL,
	[Timestamp04] [datetime] NULL,
	[HorseNumRatio] [float] NULL,
	[HandicapRatio] [float] NULL,
	[Lifetime] [float] NULL,
	[LifetimeLog] [float] NULL,
	[PayWin] [float] NULL,
	[Timestamp11] [datetime] NULL,
	[IsValidHorseNumRatioSdvByRace] [bit] NULL,
	[HorseNumRatioSdvByRace] [float] NULL,
	[IsValidWeightSdvByRace] [bit] NULL,
	[WeightSdvByRace] [float] NULL,
	[IsValidHandicapSdvByRace] [bit] NULL,
	[HandicapSdvByRace] [float] NULL,
	[IsValidHandicapRatioSdvByRace] [bit] NULL,
	[HandicapRatioSdvByRace] [float] NULL,
	[IsValidLifetimeSdvByRace] [bit] NULL,
	[LifetimeSdvByRace] [float] NULL,
	[Timestamp12] [datetime] NULL,
	[IsValidHorseNumRatioSdv] [bit] NULL,
	[HorseNumRatioSdv] [float] NULL,
	[IsValidWeightSdv] [bit] NULL,
	[WeightSdv] [float] NULL,
	[IsValidHandicapSdv] [bit] NULL,
	[HandicapSdv] [float] NULL,
	[IsValidHandicapRatioSdv] [bit] NULL,
	[HandicapRatioSdv] [float] NULL,
	[IsValidLifetimeSdv] [bit] NULL,
	[LifetimeSdv] [float] NULL,
	[Timestamp13] [datetime] NULL,
	[FinishTime] [float] NULL,
	[FirstTime] [float] NULL,
	[LastTime] [float] NULL,
	[FinishSpeed] [float] NULL,
	[FirstSpeed] [float] NULL,
	[LastSpeed] [float] NULL,
	[FinishAccel] [float] NULL,
	[FirstAccel] [float] NULL,
	[LastAccel] [float] NULL,
	[FinishStartSpeedRatio] [float] NULL,
	[Timestamp21] [datetime] NULL,
	[IsValidFinishTimeSdvByRace] [bit] NULL,
	[FinishTimeSdvByRace] [float] NULL,
	[FinishTimeDvByRace] [float] NULL,
	[IsValidFirstTimeSdvByRace] [bit] NULL,
	[FirstTimeSdvByRace] [float] NULL,
	[FirstTimeDvByRace] [float] NULL,
	[IsValidLastTimeSdvByRace] [bit] NULL,
	[LastTimeSdvByRace] [float] NULL,
	[LastTimeDvByRace] [float] NULL,
	[IsValidFinishSpeedSdvByRace] [bit] NULL,
	[FinishSpeedSdvByRace] [float] NULL,
	[FinishSpeedDvByRace] [float] NULL,
	[IsValidFirstSpeedSdvByRace] [bit] NULL,
	[FirstSpeedSdvByRace] [float] NULL,
	[FirstSpeedDvByRace] [float] NULL,
	[IsValidLastSpeedSdvByRace] [bit] NULL,
	[LastSpeedSdvByRace] [float] NULL,
	[LastSpeedDvByRace] [float] NULL,
	[IsValidFinishAccelSdvByRace] [bit] NULL,
	[FinishAccelSdvByRace] [float] NULL,
	[FinishAccelDvByRace] [float] NULL,
	[IsValidFirstAccelSdvByRace] [bit] NULL,
	[FirstAccelSdvByRace] [float] NULL,
	[FirstAccelDvByRace] [float] NULL,
	[IsValidLastAccelSdvByRace] [bit] NULL,
	[LastAccelSdvByRace] [float] NULL,
	[LastAccelDvByRace] [float] NULL,
	[IsValidFinishStartSpeedRatioSdvByRace] [bit] NULL,
	[FinishStartSpeedRatioSdvByRace] [float] NULL,
	[FinishStartSpeedRatioDvByRace] [float] NULL,
	[IsValidPosition1SdvByRace] [bit] NULL,
	[Position1SdvByRace] [float] NULL,
	[IsValidPosition2SdvByRace] [bit] NULL,
	[Position2SdvByRace] [float] NULL,
	[IsValidPosition3SdvByRace] [bit] NULL,
	[Position3SdvByRace] [float] NULL,
	[IsValidPosition4SdvByRace] [bit] NULL,
	[Position4SdvByRace] [float] NULL,
	[Timestamp22] [datetime] NULL,
	[IsValidFinishTimeSdv] [bit] NULL,
	[FinishTimeSdv] [float] NULL,
	[FinishTimeDv] [float] NULL,
	[IsValidFirstTimeSdv] [bit] NULL,
	[FirstTimeSdv] [float] NULL,
	[FirstTimeDv] [float] NULL,
	[IsValidLastTimeSdv] [bit] NULL,
	[LastTimeSdv] [float] NULL,
	[LastTimeDv] [float] NULL,
	[IsValidFinishSpeedSdv] [bit] NULL,
	[FinishSpeedSdv] [float] NULL,
	[FinishSpeedDv] [float] NULL,
	[IsValidFirstSpeedSdv] [bit] NULL,
	[FirstSpeedSdv] [float] NULL,
	[FirstSpeedDv] [float] NULL,
	[IsValidLastSpeedSdv] [bit] NULL,
	[LastSpeedSdv] [float] NULL,
	[LastSpeedDv] [float] NULL,
	[IsValidFinishAccelSdv] [bit] NULL,
	[FinishAccelSdv] [float] NULL,
	[FinishAccelDv] [float] NULL,
	[IsValidFirstAccelSdv] [bit] NULL,
	[FirstAccelSdv] [float] NULL,
	[FirstAccelDv] [float] NULL,
	[IsValidLastAccelSdv] [bit] NULL,
	[LastAccelSdv] [float] NULL,
	[LastAccelDv] [float] NULL,
	[IsValidFinishStartSpeedRatioSdv] [bit] NULL,
	[FinishStartSpeedRatioSdv] [float] NULL,
	[FinishStartSpeedRatioDv] [float] NULL,
	[IsValidRunTypeSdv] [bit] NULL,
	[RunTypeSdv] [float] NULL,
	[RunTypeDv] [float] NULL,
	[Timestamp23] [datetime] NULL,
	[IsValidPredictValueA] [bit] NULL,
	[PredictValueA] [float] NULL,
	[PredictValueSdvA] [float] NULL,
	[PredictValueDvA] [float] NULL,
	[PredictValueNormA] [float] NULL,
	[PredictValueRankA] [int] NULL,
	[PredictErrorA] [int] NULL,
	[IsValidPredictValueB] [bit] NULL,
	[PredictValueB] [float] NULL,
	[PredictValueSdvB] [float] NULL,
	[PredictValueDvB] [float] NULL,
	[PredictValueNormB] [float] NULL,
	[PredictValueRankB] [int] NULL,
	[PredictErrorB] [int] NULL,
	[IsValidPredictValueC] [bit] NULL,
	[PredictValueC] [float] NULL,
	[PredictValueSdvC] [float] NULL,
	[PredictValueDvC] [float] NULL,
	[PredictValueNormC] [float] NULL,
	[PredictValueRankC] [int] NULL,
	[PredictErrorC] [int] NULL,
	[PredictDatetime] [datetime] NULL,
	[Timestamp32] [datetime] NULL,
	[PrepHorseNumRatio] [float] NULL,
	[PrepWeight] [float] NULL,
	[PrepHandicap] [float] NULL,
	[PrepHandicapRatio] [float] NULL,
	[PrepLifetime] [float] NULL,
	[Timestamp81] [datetime] NULL,
	[IsValidPrepHorseNumRatioSdv] [bit] NULL,
	[PrepHorseNumRatioSdv] [float] NULL,
	[IsValidPrepWeightSdv] [bit] NULL,
	[PrepWeightSdv] [float] NULL,
	[IsValidPrepHandicapSdv] [bit] NULL,
	[PrepHandicapSdv] [float] NULL,
	[IsValidPrepHandicapRatioSdv] [bit] NULL,
	[PrepHandicapRatioSdv] [float] NULL,
	[IsValidPrepLifetimeSdv] [bit] NULL,
	[PrepLifetimeSdv] [float] NULL,
	[Timestamp82] [datetime] NULL,
	[PrepFinishTime] [float] NULL,
	[PrepFirstTime] [float] NULL,
	[PrepLastTime] [float] NULL,
	[PrepFinishSpeed] [float] NULL,
	[PrepFirstSpeed] [float] NULL,
	[PrepLastSpeed] [float] NULL,
	[Timestamp91] [datetime] NULL,
	[IsValidPrepFinishTimeSdv] [bit] NULL,
	[PrepFinishTimeSdv] [float] NULL,
	[IsValidPrepFirstTimeSdv] [bit] NULL,
	[PrepFirstTimeSdv] [float] NULL,
	[IsValidPrepLastTimeSdv] [bit] NULL,
	[PrepLastTimeSdv] [float] NULL,
	[IsValidPrepFinishSpeedSdv] [bit] NULL,
	[PrepFinishSpeedSdv] [float] NULL,
	[IsValidPrepFirstSpeedSdv] [bit] NULL,
	[PrepFirstSpeedSdv] [float] NULL,
	[IsValidPrepLastSpeedSdv] [bit] NULL,
	[PrepLastSpeedSdv] [float] NULL,
	[Timestamp92] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_ReplRaceHorse] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[HorseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[HorseId] [nchar](10) NOT NULL,
	[FemaleHansyokuId] [nchar](8) NULL,
	[MaleHansyokuId] [nchar](8) NULL,
	[BirthYear] [int] NULL,
	[SaleId] [nchar](6) NOT NULL,
	[SaleHostName] [nvarchar](40) NULL,
	[SaleName] [nvarchar](80) NULL,
	[FromDate] [date] NOT NULL,
	[ToDate] [date] NULL,
	[Barei] [float] NULL,
	[Price] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[HorseId] ASC,
	[SaleId] ASC,
	[FromDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanku](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[HorseId] [nchar](10) NOT NULL,
	[BirthDate] [date] NULL,
	[SexId] [nchar](1) NULL,
	[HinsyuId] [nchar](1) NULL,
	[KeiroId] [nchar](2) NULL,
	[SankuMochiKubun] [nchar](1) NULL,
	[ImportYear] [int] NULL,
	[BreederId] [nchar](6) NULL,
	[SanchiName] [nvarchar](20) NULL,
	[F1Num] [nchar](8) NULL,
	[M1Num] [nchar](8) NULL,
	[F1F2Num] [nchar](8) NULL,
	[F1M2Num] [nchar](8) NULL,
	[M1F2Num] [nchar](8) NULL,
	[M1M2Num] [nchar](8) NULL,
	[F1F2F3Num] [nchar](8) NULL,
	[F1F2M3Num] [nchar](8) NULL,
	[F1M2F3Num] [nchar](8) NULL,
	[F1M2M3Num] [nchar](8) NULL,
	[M1F2F3Num] [nchar](8) NULL,
	[M1F2M3Num] [nchar](8) NULL,
	[M1M2F3Num] [nchar](8) NULL,
	[M1M2M3Num] [nchar](8) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Sanku] PRIMARY KEY CLUSTERED 
(
	[HorseId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDayId] [nchar](10) NOT NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[YoubiId] [nchar](1) NULL,
	[Jyusyo1TokuNum] [nchar](4) NULL,
	[Jyusyo1Hondai] [nvarchar](30) NULL,
	[Jyusyo1Ryakusyo10] [nvarchar](10) NULL,
	[Jyusyo1Ryakusyo6] [nvarchar](6) NULL,
	[Jyusyo1Ryakusyo3] [nvarchar](3) NULL,
	[Jyusyo1Nkai] [int] NULL,
	[Jyusyo1GradeId] [nchar](1) NULL,
	[Jyusyo1SyubetuId] [nchar](2) NULL,
	[Jyusyo1KigoId] [nchar](3) NULL,
	[Jyusyo1JyuryoId] [nchar](1) NULL,
	[Jyusyo1Distance] [float] NULL,
	[Jyusyo1TrackId] [nchar](2) NULL,
	[Jyusyo2TokuNum] [nchar](4) NULL,
	[Jyusyo2Hondai] [nvarchar](30) NULL,
	[Jyusyo2Ryakusyo10] [nvarchar](10) NULL,
	[Jyusyo2Ryakusyo6] [nvarchar](6) NULL,
	[Jyusyo2Ryakusyo3] [nvarchar](3) NULL,
	[Jyusyo2Nkai] [int] NULL,
	[Jyusyo2GradeId] [nchar](1) NULL,
	[Jyusyo2SyubetuId] [nchar](2) NULL,
	[Jyusyo2KigoId] [nchar](3) NULL,
	[Jyusyo2JyuryoId] [nchar](1) NULL,
	[Jyusyo2Distance] [float] NULL,
	[Jyusyo2TrackId] [nchar](2) NULL,
	[Jyusyo3TokuNum] [nchar](4) NULL,
	[Jyusyo3Hondai] [nvarchar](30) NULL,
	[Jyusyo3Ryakusyo10] [nvarchar](10) NULL,
	[Jyusyo3Ryakusyo6] [nvarchar](6) NULL,
	[Jyusyo3Ryakusyo3] [nvarchar](3) NULL,
	[Jyusyo3Nkai] [int] NULL,
	[Jyusyo3GradeId] [nchar](1) NULL,
	[Jyusyo3SyubetuId] [nchar](2) NULL,
	[Jyusyo3KigoId] [nchar](3) NULL,
	[Jyusyo3JyuryoId] [nchar](1) NULL,
	[Jyusyo3Distance] [float] NULL,
	[Jyusyo3TrackId] [nchar](2) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Schedule] PRIMARY KEY CLUSTERED 
(
	[RaceDayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Silk](
	[SilkId] [nchar](60) NOT NULL,
	[SilkImage] [varbinary](max) NULL,
	[IsNotFound] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Silk] PRIMARY KEY CLUSTERED 
(
	[SilkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialRace](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[RaceId] [nchar](12) NOT NULL,
	[YoubiId] [nchar](1) NULL,
	[TokuNum] [nchar](4) NULL,
	[Hondai] [nvarchar](30) NULL,
	[Fukudai] [nvarchar](30) NULL,
	[Kakko] [nvarchar](30) NULL,
	[HondaiEng] [nvarchar](120) NULL,
	[FukudaiEng] [nvarchar](120) NULL,
	[KakkoEng] [nvarchar](120) NULL,
	[Ryakusyo10] [nvarchar](10) NULL,
	[Ryakusyo6] [nvarchar](6) NULL,
	[Ryakusyo3] [nvarchar](3) NULL,
	[Kubun] [nchar](1) NULL,
	[Nkai] [int] NULL,
	[GradeId] [nchar](1) NULL,
	[SyubetuId] [nchar](2) NULL,
	[KigoId] [nchar](3) NULL,
	[JyuryoId] [nchar](1) NULL,
	[Jyoken1Id] [nchar](3) NULL,
	[Jyoken2Id] [nchar](3) NULL,
	[Jyoken3Id] [nchar](3) NULL,
	[Jyoken4Id] [nchar](3) NULL,
	[Jyoken5Id] [nchar](3) NULL,
	[Distance] [float] NULL,
	[TrackId] [nchar](2) NULL,
	[CourseKubunId] [nchar](2) NULL,
	[HandiDate] [date] NULL,
	[TorokuTosu] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_SpecialRace] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpecialRaceByHorse](
	[RaceId] [nchar](12) NOT NULL,
	[Num] [int] NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[Bamei] [nvarchar](36) NULL,
	[UmaKigoId] [nchar](2) NULL,
	[SexId] [nchar](1) NULL,
	[TozaiId] [nchar](1) NULL,
	[TrainerId] [nchar](5) NULL,
	[TrainerRyakusyo] [nvarchar](8) NULL,
	[Handicap] [float] NULL,
	[Koryu] [nchar](1) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_SpecialRaceByHorse] PRIMARY KEY CLUSTERED 
(
	[RaceId] ASC,
	[Num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatsBasicAfterRaceByAll](
	[FastestStart38SpeedCount] [int] NULL,
	[FastestStart38SpeedAvg] [float] NULL,
	[FastestStart38SpeedStDev] [float] NULL,
	[FastestStart38SpeedSum] [float] NULL,
	[FastestStart38SpeedMin] [float] NULL,
	[FastestStart38SpeedMax] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[FastestStart38SpeedSem] [float] NULL,
	[FastestStart38SpeedSemMin] [float] NULL,
	[FastestStart38SpeedSemMax] [float] NULL,
	[FastestStart38SpeedSdMin3] [float] NULL,
	[FastestStart38SpeedSdMin2] [float] NULL,
	[FastestStart38SpeedSdMin1] [float] NULL,
	[FastestStart38SpeedSdMax1] [float] NULL,
	[FastestStart38SpeedSdMax2] [float] NULL,
	[FastestStart38SpeedSdMax3] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatsBasicAfterRaceByRaceType1](
	[RaceType1Id] [nvarchar](255) NOT NULL,
	[FastestStart38SpeedCount] [int] NULL,
	[FastestStart38SpeedAvg] [float] NULL,
	[FastestStart38SpeedStDev] [float] NULL,
	[FastestStart38SpeedSum] [float] NULL,
	[FastestStart38SpeedMin] [float] NULL,
	[FastestStart38SpeedMax] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[FastestStart38SpeedSem] [float] NULL,
	[FastestStart38SpeedSemMin] [float] NULL,
	[FastestStart38SpeedSemMax] [float] NULL,
	[FastestStart38SpeedSdMin3] [float] NULL,
	[FastestStart38SpeedSdMin2] [float] NULL,
	[FastestStart38SpeedSdMin1] [float] NULL,
	[FastestStart38SpeedSdMax1] [float] NULL,
	[FastestStart38SpeedSdMax2] [float] NULL,
	[FastestStart38SpeedSdMax3] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_StatsBasicAfterRaceByRaceType1] PRIMARY KEY CLUSTERED 
(
	[RaceType1Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatsBasicAfterRaceHorseByAll](
	[FinishStartSpeedRatioCount] [int] NULL,
	[FinishStartSpeedRatioAvg] [float] NULL,
	[FinishStartSpeedRatioStDev] [float] NULL,
	[FinishStartSpeedRatioSum] [float] NULL,
	[FinishStartSpeedRatioMin] [float] NULL,
	[FinishStartSpeedRatioMax] [float] NULL,
	[FinishSpeedCount] [int] NULL,
	[FinishSpeedAvg] [float] NULL,
	[FinishSpeedStDev] [float] NULL,
	[FinishSpeedSum] [float] NULL,
	[FinishSpeedMin] [float] NULL,
	[FinishSpeedMax] [float] NULL,
	[FirstSpeedCount] [float] NULL,
	[FirstSpeedAvg] [float] NULL,
	[FirstSpeedStDev] [float] NULL,
	[FirstSpeedSum] [float] NULL,
	[FirstSpeedMin] [float] NULL,
	[FirstSpeedMax] [float] NULL,
	[LastSpeedCount] [int] NULL,
	[LastSpeedAvg] [float] NULL,
	[LastSpeedStDev] [float] NULL,
	[LastSpeedSum] [float] NULL,
	[LastSpeedMin] [float] NULL,
	[LastSpeedMax] [float] NULL,
	[FinishAccelCount] [float] NULL,
	[FinishAccelAvg] [float] NULL,
	[FinishAccelStDev] [float] NULL,
	[FinishAccelSum] [float] NULL,
	[FinishAccelMin] [float] NULL,
	[FinishAccelMax] [float] NULL,
	[FirstAccelCount] [float] NULL,
	[FirstAccelAvg] [float] NULL,
	[FirstAccelStDev] [float] NULL,
	[FirstAccelSum] [float] NULL,
	[FirstAccelMin] [float] NULL,
	[FirstAccelMax] [float] NULL,
	[LastAccelCount] [int] NULL,
	[LastAccelAvg] [float] NULL,
	[LastAccelStDev] [float] NULL,
	[LastAccelSum] [float] NULL,
	[LastAccelMin] [float] NULL,
	[LastAccelMax] [float] NULL,
	[FinishTimeCount] [int] NULL,
	[FinishTimeAvg] [float] NULL,
	[FinishTimeStDev] [float] NULL,
	[FinishTimeSum] [float] NULL,
	[FinishTimeMin] [float] NULL,
	[FinishTimeMax] [float] NULL,
	[FirstTimeCount] [float] NULL,
	[FirstTimeAvg] [float] NULL,
	[FirstTimeStDev] [float] NULL,
	[FirstTimeSum] [float] NULL,
	[FirstTimeMin] [float] NULL,
	[FirstTimeMax] [float] NULL,
	[LastTimeCount] [int] NULL,
	[LastTimeAvg] [float] NULL,
	[LastTimeStDev] [float] NULL,
	[LastTimeSum] [float] NULL,
	[LastTimeMin] [float] NULL,
	[LastTimeMax] [float] NULL,
	[RunTypeCount] [int] NULL,
	[RunTypeAvg] [float] NULL,
	[RunTypeStDev] [float] NULL,
	[RunTypeSum] [float] NULL,
	[RunTypeMin] [float] NULL,
	[RunTypeMax] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[FinishStartSpeedRatioSem] [float] NULL,
	[FinishStartSpeedRatioSemMin] [float] NULL,
	[FinishStartSpeedRatioSemMax] [float] NULL,
	[FinishStartSpeedRatioSdMin3] [float] NULL,
	[FinishStartSpeedRatioSdMin2] [float] NULL,
	[FinishStartSpeedRatioSdMin1] [float] NULL,
	[FinishStartSpeedRatioSdMax1] [float] NULL,
	[FinishStartSpeedRatioSdMax2] [float] NULL,
	[FinishStartSpeedRatioSdMax3] [float] NULL,
	[FinishSpeedSem] [float] NULL,
	[FinishSpeedSemMin] [float] NULL,
	[FinishSpeedSemMax] [float] NULL,
	[FinishSpeedSdMin3] [float] NULL,
	[FinishSpeedSdMin2] [float] NULL,
	[FinishSpeedSdMin1] [float] NULL,
	[FinishSpeedSdMax1] [float] NULL,
	[FinishSpeedSdMax2] [float] NULL,
	[FinishSpeedSdMax3] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatsBasicAfterRaceHorseByRaceType1](
	[RaceType1Id] [nvarchar](255) NOT NULL,
	[FinishStartSpeedRatioCount] [int] NULL,
	[FinishStartSpeedRatioAvg] [float] NULL,
	[FinishStartSpeedRatioStDev] [float] NULL,
	[FinishStartSpeedRatioSum] [float] NULL,
	[FinishStartSpeedRatioMin] [float] NULL,
	[FinishStartSpeedRatioMax] [float] NULL,
	[FinishSpeedCount] [int] NULL,
	[FinishSpeedAvg] [float] NULL,
	[FinishSpeedStDev] [float] NULL,
	[FinishSpeedSum] [float] NULL,
	[FinishSpeedMin] [float] NULL,
	[FinishSpeedMax] [float] NULL,
	[FirstSpeedCount] [float] NULL,
	[FirstSpeedAvg] [float] NULL,
	[FirstSpeedStDev] [float] NULL,
	[FirstSpeedSum] [float] NULL,
	[FirstSpeedMin] [float] NULL,
	[FirstSpeedMax] [float] NULL,
	[LastSpeedCount] [int] NULL,
	[LastSpeedAvg] [float] NULL,
	[LastSpeedStDev] [float] NULL,
	[LastSpeedSum] [float] NULL,
	[LastSpeedMin] [float] NULL,
	[LastSpeedMax] [float] NULL,
	[FinishAccelCount] [float] NULL,
	[FinishAccelAvg] [float] NULL,
	[FinishAccelStDev] [float] NULL,
	[FinishAccelSum] [float] NULL,
	[FinishAccelMin] [float] NULL,
	[FinishAccelMax] [float] NULL,
	[FirstAccelCount] [float] NULL,
	[FirstAccelAvg] [float] NULL,
	[FirstAccelStDev] [float] NULL,
	[FirstAccelSum] [float] NULL,
	[FirstAccelMin] [float] NULL,
	[FirstAccelMax] [float] NULL,
	[LastAccelCount] [int] NULL,
	[LastAccelAvg] [float] NULL,
	[LastAccelStDev] [float] NULL,
	[LastAccelSum] [float] NULL,
	[LastAccelMin] [float] NULL,
	[LastAccelMax] [float] NULL,
	[FinishTimeCount] [int] NULL,
	[FinishTimeAvg] [float] NULL,
	[FinishTimeStDev] [float] NULL,
	[FinishTimeSum] [float] NULL,
	[FinishTimeMin] [float] NULL,
	[FinishTimeMax] [float] NULL,
	[FirstTimeCount] [float] NULL,
	[FirstTimeAvg] [float] NULL,
	[FirstTimeStDev] [float] NULL,
	[FirstTimeSum] [float] NULL,
	[FirstTimeMin] [float] NULL,
	[FirstTimeMax] [float] NULL,
	[LastTimeCount] [int] NULL,
	[LastTimeAvg] [float] NULL,
	[LastTimeStDev] [float] NULL,
	[LastTimeSum] [float] NULL,
	[LastTimeMin] [float] NULL,
	[LastTimeMax] [float] NULL,
	[RunTypeCount] [int] NULL,
	[RunTypeAvg] [float] NULL,
	[RunTypeStDev] [float] NULL,
	[RunTypeSum] [float] NULL,
	[RunTypeMin] [float] NULL,
	[RunTypeMax] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[FinishStartSpeedRatioSem] [float] NULL,
	[FinishStartSpeedRatioSemMin] [float] NULL,
	[FinishStartSpeedRatioSemMax] [float] NULL,
	[FinishStartSpeedRatioSdMin3] [float] NULL,
	[FinishStartSpeedRatioSdMin2] [float] NULL,
	[FinishStartSpeedRatioSdMin1] [float] NULL,
	[FinishStartSpeedRatioSdMax1] [float] NULL,
	[FinishStartSpeedRatioSdMax2] [float] NULL,
	[FinishStartSpeedRatioSdMax3] [float] NULL,
	[FinishSpeedSem] [float] NULL,
	[FinishSpeedSemMin] [float] NULL,
	[FinishSpeedSemMax] [float] NULL,
	[FinishSpeedSdMin3] [float] NULL,
	[FinishSpeedSdMin2] [float] NULL,
	[FinishSpeedSdMin1] [float] NULL,
	[FinishSpeedSdMax1] [float] NULL,
	[FinishSpeedSdMax2] [float] NULL,
	[FinishSpeedSdMax3] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_StatsBasicAfterRaceHorseByRaceType1] PRIMARY KEY CLUSTERED 
(
	[RaceType1Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatsBasicBeforeDmByAll](
	[DmTimeCount] [int] NULL,
	[DmTimeAvg] [float] NULL,
	[DmTimeStDev] [float] NULL,
	[DmTimeSum] [float] NULL,
	[DmTimeMin] [float] NULL,
	[DmTimeMax] [float] NULL,
	[DmSpeedCount] [float] NULL,
	[DmSpeedAvg] [float] NULL,
	[DmSpeedStDev] [float] NULL,
	[DmSpeedSum] [float] NULL,
	[DmSpeedMin] [float] NULL,
	[DmSpeedMax] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatsBasicBeforeDmByRaceType1](
	[RaceType1Id] [nvarchar](255) NOT NULL,
	[DmTimeCount] [int] NULL,
	[DmTimeAvg] [float] NULL,
	[DmTimeStDev] [float] NULL,
	[DmTimeSum] [float] NULL,
	[DmTimeMin] [float] NULL,
	[DmTimeMax] [float] NULL,
	[DmSpeedCount] [float] NULL,
	[DmSpeedAvg] [float] NULL,
	[DmSpeedStDev] [float] NULL,
	[DmSpeedSum] [float] NULL,
	[DmSpeedMin] [float] NULL,
	[DmSpeedMax] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_StatsBasicBeforeDmByRaceType1] PRIMARY KEY CLUSTERED 
(
	[RaceType1Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatsBasicBeforeOddsByAll](
	[OddsLog1Count] [float] NULL,
	[OddsLog1Avg] [float] NULL,
	[OddsLog1StDev] [float] NULL,
	[OddsLog1Sum] [float] NULL,
	[OddsLog1Min] [float] NULL,
	[OddsLog1Max] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatsBasicBeforeOddsByRaceType1](
	[RaceType1Id] [nvarchar](255) NOT NULL,
	[OddsLog1Count] [float] NULL,
	[OddsLog1Avg] [float] NULL,
	[OddsLog1StDev] [float] NULL,
	[OddsLog1Sum] [float] NULL,
	[OddsLog1Min] [float] NULL,
	[OddsLog1Max] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_StatsBasicBeforeOddsByRaceType1] PRIMARY KEY CLUSTERED 
(
	[RaceType1Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatsBasicBeforeRaceByAll](
	[DistanceCount] [int] NULL,
	[DistanceAvg] [float] NULL,
	[DistanceStDev] [float] NULL,
	[DistanceSum] [float] NULL,
	[DistanceMin] [float] NULL,
	[DistanceMax] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[DistanceSem] [float] NULL,
	[DistanceSemMin] [float] NULL,
	[DistanceSemMax] [float] NULL,
	[DistanceSdMin3] [float] NULL,
	[DistanceSdMin2] [float] NULL,
	[DistanceSdMin1] [float] NULL,
	[DistanceSdMax1] [float] NULL,
	[DistanceSdMax2] [float] NULL,
	[DistanceSdMax3] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatsBasicBeforeRaceByRaceType1](
	[RaceType1Id] [nvarchar](255) NOT NULL,
	[DistanceCount] [int] NULL,
	[DistanceAvg] [float] NULL,
	[DistanceStDev] [float] NULL,
	[DistanceSum] [float] NULL,
	[DistanceMin] [float] NULL,
	[DistanceMax] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[DistanceSem] [float] NULL,
	[DistanceSemMin] [float] NULL,
	[DistanceSemMax] [float] NULL,
	[DistanceSdMin3] [float] NULL,
	[DistanceSdMin2] [float] NULL,
	[DistanceSdMin1] [float] NULL,
	[DistanceSdMax1] [float] NULL,
	[DistanceSdMax2] [float] NULL,
	[DistanceSdMax3] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_StatsBasicBeforeRaceByRaceType1] PRIMARY KEY CLUSTERED 
(
	[RaceType1Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatsBasicBeforeRaceHorseByAll](
	[HorseNumRatioCount] [float] NULL,
	[HorseNumRatioAvg] [float] NULL,
	[HorseNumRatioStDev] [float] NULL,
	[HorseNumRatioSum] [float] NULL,
	[HorseNumRatioMin] [float] NULL,
	[HorseNumRatioMax] [float] NULL,
	[WeightCount] [float] NULL,
	[WeightAvg] [float] NULL,
	[WeightStDev] [float] NULL,
	[WeightSum] [float] NULL,
	[WeightMin] [float] NULL,
	[WeightMax] [float] NULL,
	[HandicapCount] [float] NULL,
	[HandicapSum] [float] NULL,
	[HandicapAvg] [float] NULL,
	[HandicapStDev] [float] NULL,
	[HandicapMin] [float] NULL,
	[HandicapMax] [float] NULL,
	[HandicapRatioCount] [float] NULL,
	[HandicapRatioAvg] [float] NULL,
	[HandicapRatioStDev] [float] NULL,
	[HandicapRatioSum] [float] NULL,
	[HandicapRatioMin] [float] NULL,
	[HandicapRatioMax] [float] NULL,
	[LifetimeCount] [float] NULL,
	[LifetimeAvg] [float] NULL,
	[LifetimeStDev] [float] NULL,
	[LifetimeSum] [float] NULL,
	[LifetimeMin] [float] NULL,
	[LifetimeMax] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatsBasicBeforeRaceHorseByRaceType1](
	[RaceType1Id] [nvarchar](255) NOT NULL,
	[HorseNumRatioCount] [float] NULL,
	[HorseNumRatioAvg] [float] NULL,
	[HorseNumRatioStDev] [float] NULL,
	[HorseNumRatioSum] [float] NULL,
	[HorseNumRatioMin] [float] NULL,
	[HorseNumRatioMax] [float] NULL,
	[WeightCount] [float] NULL,
	[WeightAvg] [float] NULL,
	[WeightStDev] [float] NULL,
	[WeightSum] [float] NULL,
	[WeightMin] [float] NULL,
	[WeightMax] [float] NULL,
	[HandicapCount] [float] NULL,
	[HandicapSum] [float] NULL,
	[HandicapAvg] [float] NULL,
	[HandicapStDev] [float] NULL,
	[HandicapMin] [float] NULL,
	[HandicapMax] [float] NULL,
	[HandicapRatioCount] [float] NULL,
	[HandicapRatioAvg] [float] NULL,
	[HandicapRatioStDev] [float] NULL,
	[HandicapRatioSum] [float] NULL,
	[HandicapRatioMin] [float] NULL,
	[HandicapRatioMax] [float] NULL,
	[LifetimeCount] [float] NULL,
	[LifetimeAvg] [float] NULL,
	[LifetimeStDev] [float] NULL,
	[LifetimeSum] [float] NULL,
	[LifetimeMin] [float] NULL,
	[LifetimeMax] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_StatsBasicBeforeRaceHorseByRaceType1] PRIMARY KEY CLUSTERED 
(
	[RaceType1Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatsPrepAfterRaceHorseByAll](
	[FinishTimeCount] [int] NULL,
	[FinishTimeAvg] [float] NULL,
	[FinishTimeStDev] [float] NULL,
	[FinishTimeSum] [float] NULL,
	[FinishTimeMin] [float] NULL,
	[FinishTimeMax] [float] NULL,
	[FirstTimeCount] [float] NULL,
	[FirstTimeAvg] [float] NULL,
	[FirstTimeStDev] [float] NULL,
	[FirstTimeSum] [float] NULL,
	[FirstTimeMin] [float] NULL,
	[FirstTimeMax] [float] NULL,
	[LastTimeCount] [int] NULL,
	[LastTimeAvg] [float] NULL,
	[LastTimeStDev] [float] NULL,
	[LastTimeSum] [float] NULL,
	[LastTimeMin] [float] NULL,
	[LastTimeMax] [float] NULL,
	[FinishSpeedCount] [int] NULL,
	[FinishSpeedAvg] [float] NULL,
	[FinishSpeedStDev] [float] NULL,
	[FinishSpeedSum] [float] NULL,
	[FinishSpeedMin] [float] NULL,
	[FinishSpeedMax] [float] NULL,
	[FirstSpeedCount] [float] NULL,
	[FirstSpeedAvg] [float] NULL,
	[FirstSpeedStDev] [float] NULL,
	[FirstSpeedSum] [float] NULL,
	[FirstSpeedMin] [float] NULL,
	[FirstSpeedMax] [float] NULL,
	[LastSpeedCount] [int] NULL,
	[LastSpeedAvg] [float] NULL,
	[LastSpeedStDev] [float] NULL,
	[LastSpeedSum] [float] NULL,
	[LastSpeedMin] [float] NULL,
	[LastSpeedMax] [float] NULL,
	[TimeStamp01] [datetime] NULL,
	[FinishTimeSem] [float] NULL,
	[FinishTimeSemMin] [float] NULL,
	[FinishTimeSemMax] [float] NULL,
	[FinishTimeSdMin3] [float] NULL,
	[FinishTimeSdMin2] [float] NULL,
	[FinishTimeSdMin1] [float] NULL,
	[FinishTimeSdMax1] [float] NULL,
	[FinishTimeSdMax2] [float] NULL,
	[FinishTimeSdMax3] [float] NULL,
	[FirstTimeSem] [float] NULL,
	[FirstTimeSemMin] [float] NULL,
	[FirstTimeSemMax] [float] NULL,
	[FirstTimeSdMin3] [float] NULL,
	[FirstTimeSdMin2] [float] NULL,
	[FirstTimeSdMin1] [float] NULL,
	[FirstTimeSdMax1] [float] NULL,
	[FirstTimeSdMax2] [float] NULL,
	[FirstTimeSdMax3] [float] NULL,
	[LastTimeSem] [float] NULL,
	[LastTimeSemMin] [float] NULL,
	[LastTimeSemMax] [float] NULL,
	[LastTimeSdMin3] [float] NULL,
	[LastTimeSdMin2] [float] NULL,
	[LastTimeSdMin1] [float] NULL,
	[LastTimeSdMax1] [float] NULL,
	[LastTimeSdMax2] [float] NULL,
	[LastTimeSdMax3] [float] NULL,
	[FinishSpeedSem] [float] NULL,
	[FinishSpeedSemMin] [float] NULL,
	[FinishSpeedSemMax] [float] NULL,
	[FinishSpeedSdMin3] [float] NULL,
	[FinishSpeedSdMin2] [float] NULL,
	[FinishSpeedSdMin1] [float] NULL,
	[FinishSpeedSdMax1] [float] NULL,
	[FinishSpeedSdMax2] [float] NULL,
	[FinishSpeedSdMax3] [float] NULL,
	[FirstSpeedSem] [float] NULL,
	[FirstSpeedSemMin] [float] NULL,
	[FirstSpeedSemMax] [float] NULL,
	[FirstSpeedSdMin3] [float] NULL,
	[FirstSpeedSdMin2] [float] NULL,
	[FirstSpeedSdMin1] [float] NULL,
	[FirstSpeedSdMax1] [float] NULL,
	[FirstSpeedSdMax2] [float] NULL,
	[FirstSpeedSdMax3] [float] NULL,
	[LastSpeedSem] [float] NULL,
	[LastSpeedSemMin] [float] NULL,
	[LastSpeedSemMax] [float] NULL,
	[LastSpeedSdMin3] [float] NULL,
	[LastSpeedSdMin2] [float] NULL,
	[LastSpeedSdMin1] [float] NULL,
	[LastSpeedSdMax1] [float] NULL,
	[LastSpeedSdMax2] [float] NULL,
	[LastSpeedSdMax3] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatsPrepAfterRaceHorseByPrepRaceType1](
	[PrepRaceType1Id] [nvarchar](255) NOT NULL,
	[FinishTimeCount] [int] NULL,
	[FinishTimeAvg] [float] NULL,
	[FinishTimeStDev] [float] NULL,
	[FinishTimeSum] [float] NULL,
	[FinishTimeMin] [float] NULL,
	[FinishTimeMax] [float] NULL,
	[FirstTimeCount] [float] NULL,
	[FirstTimeAvg] [float] NULL,
	[FirstTimeStDev] [float] NULL,
	[FirstTimeSum] [float] NULL,
	[FirstTimeMin] [float] NULL,
	[FirstTimeMax] [float] NULL,
	[LastTimeCount] [int] NULL,
	[LastTimeAvg] [float] NULL,
	[LastTimeStDev] [float] NULL,
	[LastTimeSum] [float] NULL,
	[LastTimeMin] [float] NULL,
	[LastTimeMax] [float] NULL,
	[FinishSpeedCount] [int] NULL,
	[FinishSpeedAvg] [float] NULL,
	[FinishSpeedStDev] [float] NULL,
	[FinishSpeedSum] [float] NULL,
	[FinishSpeedMin] [float] NULL,
	[FinishSpeedMax] [float] NULL,
	[FirstSpeedCount] [float] NULL,
	[FirstSpeedAvg] [float] NULL,
	[FirstSpeedStDev] [float] NULL,
	[FirstSpeedSum] [float] NULL,
	[FirstSpeedMin] [float] NULL,
	[FirstSpeedMax] [float] NULL,
	[LastSpeedCount] [int] NULL,
	[LastSpeedAvg] [float] NULL,
	[LastSpeedStDev] [float] NULL,
	[LastSpeedSum] [float] NULL,
	[LastSpeedMin] [float] NULL,
	[LastSpeedMax] [float] NULL,
	[TimeStamp01] [datetime] NULL,
	[FinishTimeSem] [float] NULL,
	[FinishTimeSemMin] [float] NULL,
	[FinishTimeSemMax] [float] NULL,
	[FinishTimeSdMin3] [float] NULL,
	[FinishTimeSdMin2] [float] NULL,
	[FinishTimeSdMin1] [float] NULL,
	[FinishTimeSdMax1] [float] NULL,
	[FinishTimeSdMax2] [float] NULL,
	[FinishTimeSdMax3] [float] NULL,
	[FirstTimeSem] [float] NULL,
	[FirstTimeSemMin] [float] NULL,
	[FirstTimeSemMax] [float] NULL,
	[FirstTimeSdMin3] [float] NULL,
	[FirstTimeSdMin2] [float] NULL,
	[FirstTimeSdMin1] [float] NULL,
	[FirstTimeSdMax1] [float] NULL,
	[FirstTimeSdMax2] [float] NULL,
	[FirstTimeSdMax3] [float] NULL,
	[LastTimeSem] [float] NULL,
	[LastTimeSemMin] [float] NULL,
	[LastTimeSemMax] [float] NULL,
	[LastTimeSdMin3] [float] NULL,
	[LastTimeSdMin2] [float] NULL,
	[LastTimeSdMin1] [float] NULL,
	[LastTimeSdMax1] [float] NULL,
	[LastTimeSdMax2] [float] NULL,
	[LastTimeSdMax3] [float] NULL,
	[FinishSpeedSem] [float] NULL,
	[FinishSpeedSemMin] [float] NULL,
	[FinishSpeedSemMax] [float] NULL,
	[FinishSpeedSdMin3] [float] NULL,
	[FinishSpeedSdMin2] [float] NULL,
	[FinishSpeedSdMin1] [float] NULL,
	[FinishSpeedSdMax1] [float] NULL,
	[FinishSpeedSdMax2] [float] NULL,
	[FinishSpeedSdMax3] [float] NULL,
	[FirstSpeedSem] [float] NULL,
	[FirstSpeedSemMin] [float] NULL,
	[FirstSpeedSemMax] [float] NULL,
	[FirstSpeedSdMin3] [float] NULL,
	[FirstSpeedSdMin2] [float] NULL,
	[FirstSpeedSdMin1] [float] NULL,
	[FirstSpeedSdMax1] [float] NULL,
	[FirstSpeedSdMax2] [float] NULL,
	[FirstSpeedSdMax3] [float] NULL,
	[LastSpeedSem] [float] NULL,
	[LastSpeedSemMin] [float] NULL,
	[LastSpeedSemMax] [float] NULL,
	[LastSpeedSdMin3] [float] NULL,
	[LastSpeedSdMin2] [float] NULL,
	[LastSpeedSdMin1] [float] NULL,
	[LastSpeedSdMax1] [float] NULL,
	[LastSpeedSdMax2] [float] NULL,
	[LastSpeedSdMax3] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_StatsPrepAfterRaceHorseByPrepRaceType1] PRIMARY KEY CLUSTERED 
(
	[PrepRaceType1Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatsPrepBeforeRaceHorseByAll](
	[HorseNumRatioCount] [float] NULL,
	[HorseNumRatioAvg] [float] NULL,
	[HorseNumRatioStDev] [float] NULL,
	[HorseNumRatioSum] [float] NULL,
	[HorseNumRatioMin] [float] NULL,
	[HorseNumRatioMax] [float] NULL,
	[WeightCount] [float] NULL,
	[WeightAvg] [float] NULL,
	[WeightStDev] [float] NULL,
	[WeightSum] [float] NULL,
	[WeightMin] [float] NULL,
	[WeightMax] [float] NULL,
	[HandicapCount] [float] NULL,
	[HandicapSum] [float] NULL,
	[HandicapAvg] [float] NULL,
	[HandicapStDev] [float] NULL,
	[HandicapMin] [float] NULL,
	[HandicapMax] [float] NULL,
	[HandicapRatioCount] [float] NULL,
	[HandicapRatioAvg] [float] NULL,
	[HandicapRatioStDev] [float] NULL,
	[HandicapRatioSum] [float] NULL,
	[HandicapRatioMin] [float] NULL,
	[HandicapRatioMax] [float] NULL,
	[LifetimeCount] [float] NULL,
	[LifetimeAvg] [float] NULL,
	[LifetimeStDev] [float] NULL,
	[LifetimeSum] [float] NULL,
	[LifetimeMin] [float] NULL,
	[LifetimeMax] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatsPrepBeforeRaceHorseByRaceType1](
	[RaceType1Id] [nvarchar](255) NOT NULL,
	[HorseNumRatioCount] [float] NULL,
	[HorseNumRatioAvg] [float] NULL,
	[HorseNumRatioStDev] [float] NULL,
	[HorseNumRatioSum] [float] NULL,
	[HorseNumRatioMin] [float] NULL,
	[HorseNumRatioMax] [float] NULL,
	[WeightCount] [float] NULL,
	[WeightAvg] [float] NULL,
	[WeightStDev] [float] NULL,
	[WeightSum] [float] NULL,
	[WeightMin] [float] NULL,
	[WeightMax] [float] NULL,
	[HandicapCount] [float] NULL,
	[HandicapSum] [float] NULL,
	[HandicapAvg] [float] NULL,
	[HandicapStDev] [float] NULL,
	[HandicapMin] [float] NULL,
	[HandicapMax] [float] NULL,
	[HandicapRatioCount] [float] NULL,
	[HandicapRatioAvg] [float] NULL,
	[HandicapRatioStDev] [float] NULL,
	[HandicapRatioSum] [float] NULL,
	[HandicapRatioMin] [float] NULL,
	[HandicapRatioMax] [float] NULL,
	[LifetimeCount] [float] NULL,
	[LifetimeAvg] [float] NULL,
	[LifetimeStDev] [float] NULL,
	[LifetimeSum] [float] NULL,
	[LifetimeMin] [float] NULL,
	[LifetimeMax] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] NULL,
 CONSTRAINT [PK_StatsPrepBeforeRaceHorseByRaceType1] PRIMARY KEY CLUSTERED 
(
	[RaceType1Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [nvarchar](128) NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL
) ON [INDEX] TEXTIMAGE_ON [INDEX]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainer](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[TrainerId] [nchar](5) NOT NULL,
	[DelKubun] [nchar](1) NULL,
	[IssueDate] [date] NULL,
	[DelDate] [date] NULL,
	[BirthDate] [date] NULL,
	[TrainerName] [nvarchar](34) NULL,
	[TrainerNameKana] [nvarchar](30) NULL,
	[TrainerRyakusyo] [nvarchar](8) NULL,
	[TrainerNameEng] [nvarchar](80) NULL,
	[SexId] [nchar](1) NULL,
	[TozaiId] [nchar](1) NULL,
	[Syotai] [nvarchar](20) NULL,
	[SaikinJyusyo1SaikinJyusyoRaceDate] [date] NULL,
	[SaikinJyusyo1SaikinJyusyoPlaceId] [nchar](2) NULL,
	[SaikinJyusyo1SaikinJyusyoKaiji] [int] NULL,
	[SaikinJyusyo1SaikinJyusyoNichiji] [int] NULL,
	[SaikinJyusyo1SaikinJyusyoRaceNum] [int] NULL,
	[SaikinJyusyo1Hondai] [nvarchar](60) NULL,
	[SaikinJyusyo1Ryakusyo10] [nvarchar](20) NULL,
	[SaikinJyusyo1Ryakusyo6] [nvarchar](12) NULL,
	[SaikinJyusyo1Ryakusyo3] [nvarchar](6) NULL,
	[SaikinJyusyo1GradeId] [nchar](1) NULL,
	[SaikinJyusyo1SyussoTosu] [float] NULL,
	[SaikinJyusyo1HorseId] [nchar](10) NULL,
	[SaikinJyusyo1Bamei] [nvarchar](36) NULL,
	[SaikinJyusyo2SaikinJyusyoRaceDate] [date] NULL,
	[SaikinJyusyo2SaikinJyusyoPlaceId] [nchar](2) NULL,
	[SaikinJyusyo2SaikinJyusyoKaiji] [int] NULL,
	[SaikinJyusyo2SaikinJyusyoNichiji] [int] NULL,
	[SaikinJyusyo2SaikinJyusyoRaceNum] [int] NULL,
	[SaikinJyusyo2Hondai] [nvarchar](60) NULL,
	[SaikinJyusyo2Ryakusyo10] [nvarchar](20) NULL,
	[SaikinJyusyo2Ryakusyo6] [nvarchar](12) NULL,
	[SaikinJyusyo2Ryakusyo3] [nvarchar](6) NULL,
	[SaikinJyusyo2GradeId] [nchar](1) NULL,
	[SaikinJyusyo2SyussoTosu] [float] NULL,
	[SaikinJyusyo2HorseId] [nchar](10) NULL,
	[SaikinJyusyo2Bamei] [nvarchar](36) NULL,
	[SaikinJyusyo3SaikinJyusyoRaceDate] [date] NULL,
	[SaikinJyusyo3SaikinJyusyoPlaceId] [nchar](2) NULL,
	[SaikinJyusyo3SaikinJyusyoKaiji] [int] NULL,
	[SaikinJyusyo3SaikinJyusyoNichiji] [int] NULL,
	[SaikinJyusyo3SaikinJyusyoRaceNum] [int] NULL,
	[SaikinJyusyo3Hondai] [nvarchar](60) NULL,
	[SaikinJyusyo3Ryakusyo10] [nvarchar](20) NULL,
	[SaikinJyusyo3Ryakusyo6] [nvarchar](12) NULL,
	[SaikinJyusyo3Ryakusyo3] [nvarchar](6) NULL,
	[SaikinJyusyo3GradeId] [nchar](1) NULL,
	[SaikinJyusyo3SyussoTosu] [float] NULL,
	[SaikinJyusyo3HorseId] [nchar](10) NULL,
	[SaikinJyusyo3Bamei] [nvarchar](36) NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_Trainer] PRIMARY KEY CLUSTERED 
(
	[TrainerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainerByDistanceType](
	[TrainerId] [nchar](5) NOT NULL,
	[TrackType2Id] [nchar](1) NOT NULL,
	[DistanceType2Id] [nchar](1) NOT NULL,
	[SummaryType] [int] NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_TrainerByDistance] PRIMARY KEY CLUSTERED 
(
	[TrainerId] ASC,
	[TrackType2Id] ASC,
	[DistanceType2Id] ASC,
	[SummaryType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainerByTotal](
	[TrainerId] [nchar](5) NOT NULL,
	[TrackType3Id] [nchar](1) NOT NULL,
	[SummaryType] [int] NOT NULL,
	[SetYear] [int] NULL,
	[Honsyokin] [float] NULL,
	[Fukasyokin] [float] NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_TrainerByTotal] PRIMARY KEY CLUSTERED 
(
	[TrainerId] ASC,
	[TrackType3Id] ASC,
	[SummaryType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainerByTrackType](
	[TrainerId] [nchar](5) NOT NULL,
	[PlaceId] [nchar](2) NOT NULL,
	[TrackType3Id] [nchar](1) NOT NULL,
	[SummaryType] [int] NOT NULL,
	[RunCount] [float] NULL,
	[HitCount1] [float] NULL,
	[HitRate1] [float] NULL,
	[HitCount2] [float] NULL,
	[HitRate2] [float] NULL,
	[HitCount3] [float] NULL,
	[HitRate3] [float] NULL,
	[HitCount4] [float] NULL,
	[HitRate4] [float] NULL,
	[HitCount5] [float] NULL,
	[HitRate5] [float] NULL,
	[HitCount6] [float] NULL,
	[HitRate6] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_TrainerByTrackType] PRIMARY KEY CLUSTERED 
(
	[TrainerId] ASC,
	[PlaceId] ASC,
	[TrackType3Id] ASC,
	[SummaryType] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingSlope](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[ChokyoDate] [date] NOT NULL,
	[ChokyoTime] [int] NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[TresenKubun] [nchar](1) NOT NULL,
	[FurlongTime4] [float] NULL,
	[FurlongTime3] [float] NULL,
	[FurlongTime2] [float] NULL,
	[LapTime4] [float] NULL,
	[LapTime3] [float] NULL,
	[LapTime2] [float] NULL,
	[LapTime1] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[IsValidTraining] [bit] NULL,
	[StdFurlongTime4] [float] NULL,
	[StdFurlongTime3] [float] NULL,
	[StdFurlongTime2] [float] NULL,
	[StdLapTime4] [float] NULL,
	[StdLapTime3] [float] NULL,
	[StdLapTime2] [float] NULL,
	[StdLapTime1] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_TrainingSlope] PRIMARY KEY CLUSTERED 
(
	[ChokyoDate] ASC,
	[ChokyoTime] ASC,
	[HorseId] ASC,
	[TresenKubun] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingWoodChip](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NOT NULL,
	[TresenKubun] [nchar](1) NOT NULL,
	[ChokyoDate] [date] NOT NULL,
	[ChokyoTime] [int] NOT NULL,
	[HorseId] [nchar](10) NOT NULL,
	[Course] [nchar](1) NULL,
	[RightLeft] [nchar](1) NULL,
	[Reserved1] [nchar](1) NULL,
	[FurlongTime10] [float] NULL,
	[FurlongTime09] [float] NULL,
	[FurlongTime08] [float] NULL,
	[FurlongTime07] [float] NULL,
	[FurlongTime06] [float] NULL,
	[FurlongTime05] [float] NULL,
	[FurlongTime04] [float] NULL,
	[FurlongTime03] [float] NULL,
	[FurlongTime02] [float] NULL,
	[LapTime10] [float] NULL,
	[LapTime09] [float] NULL,
	[LapTime08] [float] NULL,
	[LapTime07] [float] NULL,
	[LapTime06] [float] NULL,
	[LapTime05] [float] NULL,
	[LapTime04] [float] NULL,
	[LapTime03] [float] NULL,
	[LapTime02] [float] NULL,
	[LapTime01] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[IsValidTrainingWoodChip] [bit] NULL,
	[StdFurlongTime10] [float] NULL,
	[StdFurlongTime09] [float] NULL,
	[StdFurlongTime08] [float] NULL,
	[StdFurlongTime07] [float] NULL,
	[StdFurlongTime06] [float] NULL,
	[StdFurlongTime05] [float] NULL,
	[StdFurlongTime04] [float] NULL,
	[StdFurlongTime03] [float] NULL,
	[StdFurlongTime02] [float] NULL,
	[StdLapTime10] [float] NULL,
	[StdLapTime09] [float] NULL,
	[StdLapTime08] [float] NULL,
	[StdLapTime07] [float] NULL,
	[StdLapTime06] [float] NULL,
	[StdLapTime05] [float] NULL,
	[StdLapTime04] [float] NULL,
	[StdLapTime03] [float] NULL,
	[StdLapTime02] [float] NULL,
	[StdLapTime01] [float] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_TrainingWoodChip] PRIMARY KEY CLUSTERED 
(
	[MakeDate] ASC,
	[TresenKubun] ASC,
	[ChokyoDate] ASC,
	[ChokyoTime] ASC,
	[HorseId] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WinFive](
	[RecKubun] [nchar](2) NULL,
	[DataKubun] [nchar](1) NULL,
	[MakeDate] [date] NULL,
	[RaceDate] [date] NOT NULL,
	[Reserved1] [nchar](2) NULL,
	[Reserved2] [nchar](6) NULL,
	[HatsubaiHyo] [float] NULL,
	[HenkanFlag] [nchar](1) NULL,
	[FuseiritsuFlag] [nchar](1) NULL,
	[TekichunashiFlag] [nchar](1) NULL,
	[CoShoki] [float] NULL,
	[CoZandaka] [float] NULL,
	[IsJraRace] [bit] NULL,
	[IsUpdatedEntity] [bit] NULL,
	[Timestamp01] [datetime] NULL,
	[IsAnalyzeFullPastAndFuture] [bit] NULL,
	[IsAnalyzeFullPast] [bit] NULL,
	[IsAnalyzeFullFuture] [bit] NULL,
	[IsAnalyzeNormalPastAndFuture] [bit] NULL,
	[IsAnalyzeNormalPast] [bit] NULL,
	[IsAnalyzeNormalFuture] [bit] NULL,
	[IsPredictedWinFive] [bit] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_WinFive] PRIMARY KEY CLUSTERED 
(
	[RaceDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WinFiveByPay](
	[RaceDate] [date] NOT NULL,
	[Num] [int] NOT NULL,
	[Kumiban1] [int] NULL,
	[Kumiban2] [int] NULL,
	[Kumiban3] [int] NULL,
	[Kumiban4] [int] NULL,
	[Kumiban5] [int] NULL,
	[Pay] [float] NULL,
	[TekichuHyo] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[IsHit] [bit] NULL,
	[IsChecked] [bit] NULL,
	[CheckDatetime] [datetime] NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_WinFiveByPay] PRIMARY KEY CLUSTERED 
(
	[RaceDate] ASC,
	[Num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WinFiveByRace](
	[RaceDate] [date] NOT NULL,
	[Num] [int] NOT NULL,
	[PlaceId] [nchar](2) NULL,
	[Kaiji] [int] NULL,
	[Nichiji] [int] NULL,
	[RaceNum] [int] NULL,
	[Timestamp01] [datetime] NULL,
	[RaceId] [nchar](12) NULL,
	[Timestamp02] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_WinFiveByRace] PRIMARY KEY CLUSTERED 
(
	[RaceDate] ASC,
	[Num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WinFiveByYuko](
	[RaceDate] [date] NOT NULL,
	[Num] [int] NOT NULL,
	[YukoHyo] [float] NULL,
	[Timestamp01] [datetime] NULL,
	[Guid] [uniqueidentifier] ROWGUIDCOL  NULL,
 CONSTRAINT [PK_WinFiveByYuko] PRIMARY KEY CLUSTERED 
(
	[RaceDate] ASC,
	[Num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Horse_001] ON [dbo].[Horse]
(
	[Gen01HansyokuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Horse_002] ON [dbo].[Horse]
(
	[Gen02HansyokuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_Horse_003] ON [dbo].[Horse]
(
	[Gen05HansyokuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Race_001] ON [dbo].[Race]
(
	[IsJraRace] ASC
)
INCLUDE([RaceDate],[ClassId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Race_002] ON [dbo].[Race]
(
	[IsJraRace] ASC,
	[IsAnalyzeNormalPastAndFuture] ASC
)
INCLUDE([RaceDate],[ClassId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RaceHorse_001] ON [dbo].[RaceHorse]
(
	[IsValidRaceHorse] ASC
)
INCLUDE([IsRun],[IsHit1],[IsHit2],[IsHit3]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_RaceHorse_002] ON [dbo].[RaceHorse]
(
	[HorseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RaceHorse_003] ON [dbo].[RaceHorse]
(
	[IsValidRaceHorse] ASC
)
INCLUDE([JockeyId],[IsRun],[IsHit1],[IsHit2],[IsHit3]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_RaceHorse_004] ON [dbo].[RaceHorse]
(
	[TrainerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RaceHorse_005] ON [dbo].[RaceHorse]
(
	[IsValidRaceHorse] ASC
)
INCLUDE([TrainerId],[IsRun],[IsHit1],[IsHit2],[IsHit3]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_RaceHorse_006] ON [dbo].[RaceHorse]
(
	[BanusiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RaceHorse_007] ON [dbo].[RaceHorse]
(
	[IsValidRaceHorse] ASC
)
INCLUDE([BanusiId],[IsRun],[IsHit1],[IsHit2],[IsHit3]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ReplRace_001] ON [dbo].[ReplRace]
(
	[IsJraRace] ASC
)
INCLUDE([RaceDate],[ClassId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ReplRace_002] ON [dbo].[ReplRace]
(
	[IsJraRace] ASC,
	[IsAnalyzeNormalPastAndFuture] ASC
)
INCLUDE([RaceDate],[ClassId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ReplRaceHorse_001] ON [dbo].[ReplRaceHorse]
(
	[IsValidRaceHorse] ASC
)
INCLUDE([IsRun],[IsHit1],[IsHit2],[IsHit3]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_ReplRaceHorse_002] ON [dbo].[ReplRaceHorse]
(
	[HorseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ReplRaceHorse_003] ON [dbo].[ReplRaceHorse]
(
	[IsValidRaceHorse] ASC
)
INCLUDE([JockeyId],[IsRun],[IsHit1],[IsHit2],[IsHit3]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_ReplRaceHorse_004] ON [dbo].[ReplRaceHorse]
(
	[TrainerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ReplRaceHorse_005] ON [dbo].[ReplRaceHorse]
(
	[IsValidRaceHorse] ASC
)
INCLUDE([TrainerId],[IsRun],[IsHit1],[IsHit2],[IsHit3]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
CREATE NONCLUSTERED INDEX [IX_ReplRaceHorse_006] ON [dbo].[ReplRaceHorse]
(
	[BanusiId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ReplRaceHorse_007] ON [dbo].[ReplRaceHorse]
(
	[IsValidRaceHorse] ASC
)
INCLUDE([BanusiId],[IsRun],[IsHit1],[IsHit2],[IsHit3]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType0600] ADD  CONSTRAINT [DF_AnalysisStep01BasicType0600_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType0600] ADD  CONSTRAINT [DF_AnalysisStep01BasicType0600_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1000] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1000_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1000] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1000_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1111] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1111_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1111] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1111_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1112] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1112_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1112] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1112_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1113] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1113_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1113] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1113_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1114] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1114_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1114] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1114_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1213] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1213_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1213] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1213_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1214] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1214_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1214] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1214_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1313] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1313_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1313] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1313_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1314] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1314_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1314] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1314_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1411] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1411_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1411] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1411_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1412] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1412_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1412] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1412_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1413] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1413_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1413] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1413_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1414] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1414_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1414] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1414_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1511] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1511_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1511] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1511_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1512] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1512_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1512] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1512_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1611] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1611_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1611] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1611_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1612] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1612_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1612] ADD  CONSTRAINT [DF_AnalysisStep01BasicType1612_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2000] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2000_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2000] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2000_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2111] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2111_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2111] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2111_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2112] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2112_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2112] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2112_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2113] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2113_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2113] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2113_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2114] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2114_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2114] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2114_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2213] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2213_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2213] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2213_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2214] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2214_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2214] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2214_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2313] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2313_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2313] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2313_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2314] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2314_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2314] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2314_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2411] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2411_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2411] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2411_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2412] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2412_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2412] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2412_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2413] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2413_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2413] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2413_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2414] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2414_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2414] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2414_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2511] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2511_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2511] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2511_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2512] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2512_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2512] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2512_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2611] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2611_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2611] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2611_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2612] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2612_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2612] ADD  CONSTRAINT [DF_AnalysisStep01BasicType2612_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3000] ADD  CONSTRAINT [DF_AnalysisStep01BasicType3000_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3000] ADD  CONSTRAINT [DF_AnalysisStep01BasicType3000_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3118] ADD  CONSTRAINT [DF_AnalysisStep01BasicType3118_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3118] ADD  CONSTRAINT [DF_AnalysisStep01BasicType3118_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3119] ADD  CONSTRAINT [DF_AnalysisStep01BasicType3119_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3119] ADD  CONSTRAINT [DF_AnalysisStep01BasicType3119_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3518] ADD  CONSTRAINT [DF_AnalysisStep01BasicType3518_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3518] ADD  CONSTRAINT [DF_AnalysisStep01BasicType3518_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3519] ADD  CONSTRAINT [DF_AnalysisStep01BasicType3519_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3519] ADD  CONSTRAINT [DF_AnalysisStep01BasicType3519_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type11] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type11_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type11] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type11_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type12] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type12_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type12] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type12_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type13] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type13_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type13] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type13_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type14] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type14_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type14] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type14_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type15] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type15_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type15] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type15_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type16] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type16_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type16] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type16_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type21] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type21_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type21] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type21_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type22] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type22_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type22] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type22_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type23] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type23_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type23] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type23_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type24] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type24_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type24] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type24_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type25] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type25_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type25] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type25_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type2512] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type2512_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type2512] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type2512_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type26] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type26_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type26] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type26_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type31] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type31_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type31] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type31_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type35] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type35_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type35] ADD  CONSTRAINT [DF_AnalysisStep01Gen01Type35_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type11] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type11_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type11] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type11_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type12] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type12_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type12] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type12_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type13] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type13_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type13] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type13_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type14] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type14_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type14] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type14_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type15] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type15_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type15] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type15_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type16] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type16_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type16] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type16_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type21] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type21_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type21] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type21_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type22] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type22_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type22] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type22_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type23] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type23_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type23] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type23_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type24] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type24_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type24] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type24_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type25] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type25_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type25] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type25_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type2512] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type2512_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type2512] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type2512_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type26] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type26_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type26] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type26_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type31] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type31_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type31] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type31_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type35] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type35_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type35] ADD  CONSTRAINT [DF_AnalysisStep01Gen02Type35_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType11] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType11_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType11] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType11_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType12] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType12_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType12] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType12_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType13] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType13_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType13] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType13_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType14] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType14_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType14] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType14_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType15] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType15_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType15] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType15_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType16] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType16_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType16] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType16_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType21] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType21_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType21] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType21_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType22] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType22_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType22] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType22_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType23] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType23_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType23] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType23_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType24] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType24_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType24] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType24_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType25] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType25_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType25] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType25_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType2512] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType2512_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType2512] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType2512_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType26] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType26_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType26] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType26_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType31] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType31_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType31] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType31_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType35] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType35_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType35] ADD  CONSTRAINT [DF_AnalysisStep01JockeyType35_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrepType0000] ADD  CONSTRAINT [DF_AnalysisStep01PrepType0000_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrepType0000] ADD  CONSTRAINT [DF_AnalysisStep01PrepType0000_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType11] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType11_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType11] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType11_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType12] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType12_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType12] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType12_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType13] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType13_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType13] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType13_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType14] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType14_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType14] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType14_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType15] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType15_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType15] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType15_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType16] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType16_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType16] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType16_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType21] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType21_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType21] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType21_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType22] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType22_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType22] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType22_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType23] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType23_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType23] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType23_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType24] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType24_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType24] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType24_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType25] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType25_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType25] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType25_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType26] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType26_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType26] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType26_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType31] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType31_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType31] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType31_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType35] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType35_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType35] ADD  CONSTRAINT [DF_AnalysisStep01PrevRaceHorseType35_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep02Basic] ADD  CONSTRAINT [DF_AnalysisStep02Basic_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep02Gen01] ADD  CONSTRAINT [DF_AnalysisStep02Gen01_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep02Gen02] ADD  CONSTRAINT [DF_AnalysisStep02Gen02_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep02Jockey] ADD  CONSTRAINT [DF_AnalysisStep02Jockey_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep02PrevRaceHorse] ADD  CONSTRAINT [DF_AnalysisStep02PrevRaceHorse_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep03Basic] ADD  CONSTRAINT [DF_AnalysisStep03Basic_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep03Gen01] ADD  CONSTRAINT [DF_AnalysisStep03Gen01_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep03Gen02] ADD  CONSTRAINT [DF_AnalysisStep03Gen02_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep03Jockey] ADD  CONSTRAINT [DF_AnalysisStep03Jockey_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep03PrevRaceHorse] ADD  CONSTRAINT [DF_AnalysisStep03PrevRaceHorse_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Banusi] ADD  CONSTRAINT [DF_Banusi_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[BaseStatsBanusiByRaceHorse] ADD  CONSTRAINT [DF_BaseStatsBanusiByRaceHorse_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[BaseStatsGen01HansyokuByRaceHorse] ADD  CONSTRAINT [DF_BaseStatsGen01HansyokuByRaceHorse_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[BaseStatsGen02HansyokuByRaceHorse] ADD  CONSTRAINT [DF_BaseStatsGen02HansyokuByRaceHorse_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[BaseStatsGen05HansyokuByRaceHorse] ADD  CONSTRAINT [DF_BaseStatsGen05HansyokuByRaceHorse_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[BaseStatsJockeyByRaceHorse] ADD  CONSTRAINT [DF_BaseStatsJockeyByRaceHorse_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[BaseStatsTrainerByRaceHorse] ADD  CONSTRAINT [DF_BaseStatsTrainerByRaceHorse_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[BayesianTrial01] ADD  CONSTRAINT [DF_AnalyzeBayesian01Trial_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Bet1] ADD  CONSTRAINT [DF_Bet1_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Bet1ByBracket] ADD  CONSTRAINT [DF_Bet1ByBracket_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Bet1ByExacta] ADD  CONSTRAINT [DF_Bet1ByExacta_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Bet1ByPlace] ADD  CONSTRAINT [DF_Bet1ByPlace_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Bet1ByQuinella] ADD  CONSTRAINT [DF_Bet1ByQuinella_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Bet1ByTrio] ADD  CONSTRAINT [DF_Bet1ByTrio_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Bet1ByWide] ADD  CONSTRAINT [DF_Bet1ByWide_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Bet1ByWin] ADD  CONSTRAINT [DF_Bet1ByWin_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Bet6] ADD  CONSTRAINT [DF_Bet6_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Bet6ByHenkanUma] ADD  CONSTRAINT [DF_Bet6ByHenkanUma_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Bet6ByTrifecta] ADD  CONSTRAINT [DF_Bet6ByTrifecta_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[BetHistoryDetail] ADD  CONSTRAINT [DF_BetHistoryDetail_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[BetHistoryMaster] ADD  CONSTRAINT [DF_BetHistoryMaster_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[BetMgmtByBet] ADD  CONSTRAINT [DF_BetMgmtByBet_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[BetMgmtBySim] ADD  CONSTRAINT [DF_BetMgmtBySim_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[BetMgmtByTemp] ADD  CONSTRAINT [DF_BetMgmtByTemp_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[BetMgmtHistory] ADD  CONSTRAINT [DF_BetMgmtHistory_RegDatetime]  DEFAULT (getdate()) FOR [RegDatetime]
GO
ALTER TABLE [dbo].[BetMgmtHistory] ADD  CONSTRAINT [DF_BetMgmtHistory_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Breeder] ADD  CONSTRAINT [DF_Breeder_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[ConfigBetCount] ADD  CONSTRAINT [DF_ConfigBetCount_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[ConfigBetCountWinFive] ADD  CONSTRAINT [DF_ConfigBetCountWinFive_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[ConfigBetMoney] ADD  CONSTRAINT [DF_ConfigBetMoney_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[ConfigBetMoney] ADD  CONSTRAINT [DF_ConfigBetMoney_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[ConfigDataSpecRecKubun] ADD  CONSTRAINT [DF_ConfigDataSpecRecKubun_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[ConfigDataSpecRecKubun] ADD  CONSTRAINT [DF_ConfigDataSpecRecKubun_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[ConfigIpatAccount] ADD  CONSTRAINT [DF_Account_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ConfigIpatAccount] ADD  CONSTRAINT [DF_Account_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[ConfigIpatBalance] ADD  CONSTRAINT [DF_ConfigIpatBalance_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[ConfigLastTimestamp] ADD  CONSTRAINT [DF_ConfigLastTimestamp_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[ConfigLastTimestamp] ADD  CONSTRAINT [DF_ConfigLastTimestamp_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[ConfigRoi_001] ADD  CONSTRAINT [DF_ConfigRoi_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[ConfigRoi_001] ADD  CONSTRAINT [DF_ConfigRoi_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[CourseInfo] ADD  CONSTRAINT [DF_CourseInfo_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[DataMining] ADD  CONSTRAINT [DF_DataMining_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[DataMiningTaisen] ADD  CONSTRAINT [DF_DataMiningTaisen_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[EventAvoid] ADD  CONSTRAINT [DF_EventAvoid_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[EventCourseChange] ADD  CONSTRAINT [DF_EventCourseChange_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[EventHorseWeight] ADD  CONSTRAINT [DF_EventHorseWeight_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[EventJockeyChange] ADD  CONSTRAINT [DF_EventJockeyChange_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[EventTimeChange] ADD  CONSTRAINT [DF_EventTimeChange_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[EventWeather] ADD  CONSTRAINT [DF_EventWeather_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Hansyoku] ADD  CONSTRAINT [DF_Hansyoku_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[HansyokuParents] ADD  CONSTRAINT [DF_HansyokuParents_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Horse] ADD  CONSTRAINT [DF_Horse_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[HorseByCourseType] ADD  CONSTRAINT [DF_HorseByCourseType_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[HorseByDistanceType] ADD  CONSTRAINT [DF_HorseByDistanceType_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[HorseByRunType] ADD  CONSTRAINT [DF_HorseByRunType_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[HorseBySmile] ADD  CONSTRAINT [DF_HorseBySmile_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[HorseByTotal] ADD  CONSTRAINT [DF_HorseByTotal_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[HorseByTrackCondition] ADD  CONSTRAINT [DF_HorseByTrackCondition_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Jockey] ADD  CONSTRAINT [DF_Jockey_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[JockeyByDistanceType] ADD  CONSTRAINT [DF_JockeyByDistanceType_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[JockeyByHatsuKijyo] ADD  CONSTRAINT [DF_JockeyByHatsuKijyo_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[JockeyByHatuSyori] ADD  CONSTRAINT [DF_JockeyByHatuSyori_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[JockeyBySaikinJyusyo] ADD  CONSTRAINT [DF_JockeyBySaikinJyusyo_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[JockeyByTotal] ADD  CONSTRAINT [DF_JockeyByTotal_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[JockeyByTrackType] ADD  CONSTRAINT [DF_JockeyByTrackType_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Keito] ADD  CONSTRAINT [DF_Keito_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Master2Class] ADD  CONSTRAINT [DF_Master2Class_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[Master2Class] ADD  CONSTRAINT [DF_Master2Class_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Master2Distance] ADD  CONSTRAINT [DF_Master2Distance_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[Master2Distance] ADD  CONSTRAINT [DF_Master2Distance_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Master2Handicap] ADD  CONSTRAINT [DF_Master2Futan_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[Master2Handicap] ADD  CONSTRAINT [DF_Master2Futan_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Master2Ninki] ADD  CONSTRAINT [DF_Master2Ninki_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[Master2Ninki] ADD  CONSTRAINT [DF_Master2Ninki_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Master2RaceType1] ADD  CONSTRAINT [DF_Master2RaceType1_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[Master2RaceType1] ADD  CONSTRAINT [DF_Master2RaceType1_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Master2RaceType2] ADD  CONSTRAINT [DF_Master2RaceType2_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[Master2RaceType2] ADD  CONSTRAINT [DF_Master2RaceType2_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Master2RaceType3] ADD  CONSTRAINT [DF_Master2RaceType3_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[Master2RaceType3] ADD  CONSTRAINT [DF_Master2RaceType3_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Master2RaceType4] ADD  CONSTRAINT [DF_Master2RaceType4_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[Master2RaceType4] ADD  CONSTRAINT [DF_Master2RaceType4_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Master2RaceType5] ADD  CONSTRAINT [DF_Master2RaceType5_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[Master2RaceType5] ADD  CONSTRAINT [DF_Master2RaceType5_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Master2RaceType6] ADD  CONSTRAINT [DF_Master2RaceType6_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[Master2RaceType6] ADD  CONSTRAINT [DF_Master2RaceType6_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Master2RaceType7] ADD  CONSTRAINT [DF_Master2RaceType7_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[Master2RaceType7] ADD  CONSTRAINT [DF_Master2RaceType7_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Master2RaceType8] ADD  CONSTRAINT [DF_Master2RaceType8_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[Master2RaceType8] ADD  CONSTRAINT [DF_Master2RaceType8_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Master2RaceType9] ADD  CONSTRAINT [DF_Master2RaceType9_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[Master2RaceType9] ADD  CONSTRAINT [DF_Master2RaceType9_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Master2Weight] ADD  CONSTRAINT [DF_Master2Weight_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[Master2Weight] ADD  CONSTRAINT [DF_Master2Weight_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterBetType] ADD  CONSTRAINT [DF_MasterBetType_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterBlinker] ADD  CONSTRAINT [DF_MasterBlinker_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterBracketNum] ADD  CONSTRAINT [DF_MasterBracketNum_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterChakusa] ADD  CONSTRAINT [DF_MasterChakusa_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterCourseKubun] ADD  CONSTRAINT [DF_MasterCourseKubun_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterCourseType] ADD  CONSTRAINT [DF_MasterCourseType_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterDataSpec] ADD  CONSTRAINT [DF_MasterDataSpec_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterDistanceType] ADD  CONSTRAINT [DF_MasterDistanceType_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterDistanceType2] ADD  CONSTRAINT [DF_MasterDistanceType2_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterGrade] ADD  CONSTRAINT [DF_MasterGrade_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterHinsyu] ADD  CONSTRAINT [DF_MasterHinsyu_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterHorseNum] ADD  CONSTRAINT [DF_MasterHorseNum_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterJyoken] ADD  CONSTRAINT [DF_Master2Jyoken_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterJyoken5] ADD  CONSTRAINT [DF_MasterJyoken5_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterJyuryo] ADD  CONSTRAINT [DF_MasterJyuryo_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterKeiro] ADD  CONSTRAINT [DF_MasterKeiro_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterKigo] ADD  CONSTRAINT [DF_MasterKigo_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterLicense] ADD  CONSTRAINT [DF_MasterLicense_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterMinarai] ADD  CONSTRAINT [DF_MasterMinarai_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterOpenModeDataSpec] ADD  CONSTRAINT [DF_MasterOpenModeDataSpec_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterPlace] ADD  CONSTRAINT [DF_MasterPlace_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterPlace2] ADD  CONSTRAINT [DF_MasterPlace2_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterRunType] ADD  CONSTRAINT [DF_MasterRunType_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterSex] ADD  CONSTRAINT [DF_MasterSex_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterSmile] ADD  CONSTRAINT [DF_MasterSmile_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterStats] ADD  CONSTRAINT [DF_MasterStats_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterSyubetu] ADD  CONSTRAINT [DF_MasterSyubetsu_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterTenko] ADD  CONSTRAINT [DF_MasterTenko_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterTozai] ADD  CONSTRAINT [DF_MasterTozai_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterTrack] ADD  CONSTRAINT [DF_MasterTrack_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterTrackCondition] ADD  CONSTRAINT [DF_MasterTrackCondition_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterTrackType] ADD  CONSTRAINT [DF_MasterTrackType_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterTrackType2] ADD  CONSTRAINT [DF_MasterTrackType2_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterTrackType3] ADD  CONSTRAINT [DF_MasterTrackType3_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterUmaKigo] ADD  CONSTRAINT [DF_MasterUmaKigo_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[MasterYoubi] ADD  CONSTRAINT [DF_MasterYoubi_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[NameOrigin] ADD  CONSTRAINT [DF_NameOrigin_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Odds1] ADD  CONSTRAINT [DF_Odds1_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Odds2] ADD  CONSTRAINT [DF_Odds2_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Odds3] ADD  CONSTRAINT [DF_Odds3_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Odds4] ADD  CONSTRAINT [DF_Odds4_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Odds5] ADD  CONSTRAINT [DF_Odds5_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Odds6] ADD  CONSTRAINT [DF_Odds6_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[OddsByBracket] ADD  CONSTRAINT [DF_OddsByBracket_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[OddsByExacta] ADD  CONSTRAINT [DF_OddsByExacta_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[OddsByPlace] ADD  CONSTRAINT [DF_OddsByPlace_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[OddsByQuinella] ADD  CONSTRAINT [DF_OddsByQuinella_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[OddsByTrifecta] ADD  CONSTRAINT [DF_OddsByTrifecta_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[OddsByTrio] ADD  CONSTRAINT [DF_OddsByTrio_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[OddsByWide] ADD  CONSTRAINT [DF_OddsByWide_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[OddsByWin] ADD  CONSTRAINT [DF_OddsByWin_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Payoff] ADD  CONSTRAINT [DF_Payoff_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[PayoffByFlag] ADD  CONSTRAINT [DF_PayoffByFlag_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[PayoffByHenkanDoWaku] ADD  CONSTRAINT [DF_PayoffByHenkanDoWaku_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[PayoffByHenkanUma] ADD  CONSTRAINT [DF_PayoffByHenkanUma_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[PayoffByHenkanWaku] ADD  CONSTRAINT [DF_PayoffByHenkanWaku_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[PayoffByPayAll] ADD  CONSTRAINT [DF_PayoffByPayAll_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[PredictByBracket] ADD  CONSTRAINT [DF_PredictByBracket_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[PredictByExacta] ADD  CONSTRAINT [DF_PredictByExacta_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[PredictByPlace] ADD  CONSTRAINT [DF_PredictByPlace_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[PredictByQuinella] ADD  CONSTRAINT [DF_PredictByQuinella_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[PredictByTrifecta] ADD  CONSTRAINT [DF_PredictByTrifecta_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[PredictByTrio] ADD  CONSTRAINT [DF_PredictByTrio_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[PredictByWide] ADD  CONSTRAINT [DF_PredictByWide_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[PredictByWin] ADD  CONSTRAINT [DF_PredictByWin_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[PredictByWinFive] ADD  CONSTRAINT [DF_PredictByWinFive_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[PredictModels] ADD  CONSTRAINT [DF_PredictModels_Timestamp01]  DEFAULT (getdate()) FOR [Timestamp01]
GO
ALTER TABLE [dbo].[PredictModels] ADD  CONSTRAINT [DF_PredictModels_Timestamp011]  DEFAULT (getdate()) FOR [Timestamp02]
GO
ALTER TABLE [dbo].[PredictModels] ADD  CONSTRAINT [DF_PredictModels_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Race] ADD  CONSTRAINT [DF_Race_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceByCornerPosition] ADD  CONSTRAINT [DF_RaceByCornerPosition_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceByLapTime] ADD  CONSTRAINT [DF_RaceByLapTime_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceExclusion] ADD  CONSTRAINT [DF_RaceExclusion_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorse] ADD  CONSTRAINT [DF_RaceHorse_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistory] ADD  CONSTRAINT [DF_RaceHorseHistory_Timestamp02]  DEFAULT (getdate()) FOR [Timestamp02]
GO
ALTER TABLE [dbo].[RaceHorseHistory] ADD  CONSTRAINT [DF_RaceHorseHistory_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusi] ADD  CONSTRAINT [DF_RaceHorseHistoryByBanusi_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusiByTotal] ADD  CONSTRAINT [DF_RaceHorseHistoryByBanusiByTotal_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreeder] ADD  CONSTRAINT [DF_RaceHorseHistoryByBreeder_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreederByTotal] ADD  CONSTRAINT [DF_RaceHorseHistoryByBreederByTotal_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorse] ADD  CONSTRAINT [DF_RaceHorseHistoryByHorse_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByCourseType] ADD  CONSTRAINT [DF_RaceHorseHistoryByHorseByCourseType_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByDistanceType] ADD  CONSTRAINT [DF_RaceHorseHistoryByHorseByDistanceType_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByJyo] ADD  CONSTRAINT [DF_RaceHorseHistoryByHorseByJyo_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByRunType] ADD  CONSTRAINT [DF_RaceHorseHistoryByHorseByRunTypeGuid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTotal] ADD  CONSTRAINT [DF_RaceHorseHistoryByHorseByTotal_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackCondition] ADD  CONSTRAINT [DF_RaceHorseHistoryByHorseByTrackCondition_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackType] ADD  CONSTRAINT [DF_RaceHorseHistoryByHorseByTrackType_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockey] ADD  CONSTRAINT [DF_RaceHorseHistoryByJocky_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByDistanceType] ADD  CONSTRAINT [DF_RaceHorseHistoryByJockeyByDistanceType_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByJyo] ADD  CONSTRAINT [DF_RaceHorseHistoryByJockeyByJyo_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByTrackType] ADD  CONSTRAINT [DF_RaceHorseHistoryByJockeyByTrackType_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainer] ADD  CONSTRAINT [DF_RaceHorseHistoryByTrainer_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByDistanceType] ADD  CONSTRAINT [DF_RaceHorseHistoryByTrainerByDistanceType_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByJyo] ADD  CONSTRAINT [DF_RaceHorseHistoryByTrainerByJyo_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByTrackType] ADD  CONSTRAINT [DF_RaceHorseHistoryByTrainerByTrackType_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[RaceRecord] ADD  CONSTRAINT [DF_RaceRecord_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[ReplRace] ADD  CONSTRAINT [DF_ReplRace_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[ReplRaceHorse] ADD  CONSTRAINT [DF_ReplRaceHorse_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Sale] ADD  CONSTRAINT [DF_Sale_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Sanku] ADD  CONSTRAINT [DF_Sanku_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Schedule] ADD  CONSTRAINT [DF_Schedule_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Silk] ADD  CONSTRAINT [DF_Silk_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[SpecialRace] ADD  CONSTRAINT [DF_SpecialRace_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[SpecialRaceByHorse] ADD  CONSTRAINT [DF_SpecialRaceByHorse_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[StatsBasicAfterRaceByAll] ADD  CONSTRAINT [DF_StatsBasicAfterRaceByAll_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[StatsBasicAfterRaceByRaceType1] ADD  CONSTRAINT [DF_StatsBasicAfterRaceByRaceType1_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[StatsBasicAfterRaceHorseByAll] ADD  CONSTRAINT [DF_StatsBasicAfterRaceHorseByAll_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[StatsBasicAfterRaceHorseByRaceType1] ADD  CONSTRAINT [DF_StatsBasicAfterRaceHorseByRaceType1_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[StatsBasicBeforeDmByAll] ADD  CONSTRAINT [DF_StatsBasicBeforeDmByAll_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[StatsBasicBeforeDmByRaceType1] ADD  CONSTRAINT [DF_StatsBasicBeforeDmByRaceType1_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[StatsBasicBeforeOddsByAll] ADD  CONSTRAINT [DF_StatsBasicBeforeOddsByAll_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[StatsBasicBeforeOddsByRaceType1] ADD  CONSTRAINT [DF_StatsBasicBeforeOddsByRaceType1_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[StatsBasicBeforeRaceByAll] ADD  CONSTRAINT [DF_StatsBasicBeforeRaceByAll_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[StatsBasicBeforeRaceByRaceType1] ADD  CONSTRAINT [DF_StatsBasicBeforeRaceByRaceType1_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[StatsBasicBeforeRaceHorseByAll] ADD  CONSTRAINT [DF_StatsBasicBeforeRaceHorseByAll_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[StatsBasicBeforeRaceHorseByRaceType1] ADD  CONSTRAINT [DF_StatsBasicBeforeRaceHorseByRaceType1_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[StatsPrepAfterRaceHorseByAll] ADD  CONSTRAINT [DF_StatsPrepAfterRaceHorseByAll_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[StatsPrepAfterRaceHorseByPrepRaceType1] ADD  CONSTRAINT [DF_StatsPrepAfterRaceHorseByPrepRaceType1_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[StatsPrepBeforeRaceHorseByAll] ADD  CONSTRAINT [DF_StatsPrepBeforeRaceHorseByAll_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[StatsPrepBeforeRaceHorseByRaceType1] ADD  CONSTRAINT [DF_StatsPrepBeforeRaceHorseByRaceType1_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[Trainer] ADD  CONSTRAINT [DF_Trainer_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[TrainerByDistanceType] ADD  CONSTRAINT [DF_TrainerByDistance_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[TrainerByTotal] ADD  CONSTRAINT [DF_TrainerByTotal_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[TrainerByTrackType] ADD  CONSTRAINT [DF_TrainerByTrackType_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[TrainingSlope] ADD  CONSTRAINT [DF_TrainingSlope_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[TrainingWoodChip] ADD  CONSTRAINT [DF_TrainingWoodChip_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[WinFive] ADD  CONSTRAINT [DF_WinFive_IsJraRace]  DEFAULT ((1)) FOR [IsJraRace]
GO
ALTER TABLE [dbo].[WinFive] ADD  CONSTRAINT [DF_WinFive_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[WinFiveByPay] ADD  CONSTRAINT [DF_WinFiveByPay_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[WinFiveByRace] ADD  CONSTRAINT [DF_WinFiveByRace_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[WinFiveByYuko] ADD  CONSTRAINT [DF_WinFiveByYuko_Guid]  DEFAULT (newid()) FOR [Guid]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType0600]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType0600_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType0600] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType0600_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType0600]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType0600_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType0600] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType0600_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1000]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1000_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1000] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1000_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1000]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1000_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1000] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1000_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1111]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1111_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1111] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1111_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1111]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1111_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1111] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1111_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1112]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1112_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1112] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1112_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1112]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1112_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1112] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1112_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1113]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1113_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1113] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1113_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1113]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1113_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1113] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1113_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1114]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1114_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1114] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1114_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1114]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1114_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1114] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1114_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1213]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1213_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1213] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1213_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1213]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1213_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1213] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1213_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1214]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1214_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1214] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1214_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1214]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1214_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1214] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1214_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1313]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1313_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1313] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1313_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1313]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1313_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1313] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1313_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1314]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1314_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1314] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1314_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1314]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1314_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1314] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1314_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1411]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1411_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1411] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1411_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1411]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1411_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1411] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1411_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1412]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1412_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1412] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1412_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1412]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1412_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1412] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1412_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1413]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1413_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1413] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1413_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1413]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1413_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1413] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1413_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1414]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1414_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1414] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1414_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1414]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1414_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1414] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1414_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1511]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1511_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1511] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1511_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1511]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1511_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1511] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1511_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1512]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1512_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1512] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1512_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1512]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1512_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1512] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1512_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1611]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1611_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1611] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1611_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1611]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1611_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1611] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1611_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1612]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1612_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1612] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1612_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1612]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType1612_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType1612] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType1612_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2000]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2000_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2000] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2000_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2000]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2000_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2000] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2000_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2111]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2111_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2111] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2111_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2111]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2111_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2111] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2111_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2112]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2112_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2112] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2112_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2112]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2112_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2112] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2112_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2113]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2113_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2113] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2113_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2113]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2113_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2113] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2113_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2114]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2114_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2114] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2114_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2114]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2114_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2114] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2114_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2213]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2213_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2213] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2213_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2213]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2213_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2213] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2213_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2214]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2214_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2214] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2214_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2214]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2214_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2214] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2214_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2313]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2313_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2313] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2313_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2313]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2313_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2313] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2313_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2314]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2314_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2314] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2314_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2314]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2314_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2314] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2314_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2411]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2411_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2411] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2411_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2411]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2411_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2411] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2411_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2412]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2412_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2412] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2412_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2412]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2412_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2412] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2412_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2413]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2413_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2413] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2413_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2413]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2413_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2413] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2413_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2414]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2414_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2414] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2414_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2414]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2414_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2414] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2414_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2511]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2511_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2511] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2511_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2511]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2511_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2511] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2511_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2512]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2512_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2512] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2512_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2512]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2512_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2512] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2512_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2611]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2611_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2611] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2611_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2611]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2611_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2611] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2611_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2612]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2612_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2612] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2612_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2612]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType2612_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType2612] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType2612_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3000]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType3000_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3000] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType3000_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3000]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType3000_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3000] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType3000_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3118]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType3118_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3118] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType3118_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3118]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType3118_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3118] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType3118_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3119]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType3119_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3119] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType3119_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3119]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType3119_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3119] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType3119_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3518]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType3518_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3518] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType3518_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3518]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType3518_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3518] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType3518_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3519]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType3519_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3519] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType3519_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3519]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01BasicType3519_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01BasicType3519] NOCHECK CONSTRAINT [FK_AnalysisStep01BasicType3519_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type11]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type11_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type11] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type11_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type11]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type11_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type11] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type11_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type12]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type12_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type12] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type12_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type12]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type12_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type12] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type12_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type13]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type13_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type13] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type13_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type13]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type13_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type13] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type13_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type14]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type14_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type14] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type14_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type14]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type14_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type14] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type14_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type15]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type15_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type15] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type15_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type15]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type15_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type15] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type15_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type16]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type16_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type16] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type16_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type16]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type16_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type16] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type16_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type21]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type21_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type21] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type21_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type21]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type21_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type21] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type21_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type22]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type22_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type22] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type22_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type22]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type22_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type22] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type22_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type23]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type23_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type23] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type23_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type23]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type23_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type23] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type23_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type24]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type24_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type24] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type24_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type24]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type24_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type24] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type24_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type25]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type25_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type25] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type25_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type25]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type25_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type25] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type25_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type2512]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type2512_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type2512] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type2512_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type26]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type26_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type26] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type26_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type26]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type26_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type26] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type26_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type31]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type31_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type31] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type31_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type31]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type31_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type31] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type31_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type35]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type35_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type35] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type35_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type35]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen01Type35_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen01Type35] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen01Type35_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type11]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type11_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type11] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type11_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type11]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type11_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type11] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type11_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type12]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type12_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type12] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type12_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type12]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type12_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type12] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type12_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type13]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type13_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type13] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type13_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type13]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type13_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type13] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type13_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type14]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type14_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type14] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type14_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type14]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type14_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type14] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type14_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type15]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type15_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type15] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type15_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type15]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type15_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type15] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type15_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type16]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type16_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type16] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type16_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type16]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type16_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type16] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type16_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type21]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type21_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type21] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type21_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type21]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type21_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type21] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type21_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type22]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type22_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type22] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type22_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type22]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type22_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type22] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type22_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type23]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type23_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type23] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type23_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type23]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type23_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type23] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type23_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type24]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type24_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type24] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type24_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type24]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type24_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type24] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type24_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type25]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type25_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type25] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type25_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type25]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type25_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type25] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type25_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type2512]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type2512_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type2512] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type2512_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type26]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type26_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type26] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type26_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type26]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type26_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type26] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type26_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type31]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type31_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type31] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type31_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type31]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type31_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type31] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type31_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type35]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type35_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type35] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type35_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type35]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01Gen02Type35_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01Gen02Type35] NOCHECK CONSTRAINT [FK_AnalysisStep01Gen02Type35_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType11]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType11_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType11] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType11_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType11]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType11_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType11] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType11_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType12]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType12_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType12] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType12_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType12]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType12_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType12] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType12_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType13]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType13_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType13] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType13_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType13]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType13_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType13] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType13_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType14]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType14_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType14] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType14_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType14]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType14_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType14] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType14_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType15]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType15_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType15] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType15_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType15]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType15_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType15] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType15_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType16]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType16_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType16] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType16_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType16]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType16_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType16] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType16_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType21]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType21_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType21] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType21_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType21]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType21_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType21] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType21_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType22]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType22_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType22] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType22_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType22]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType22_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType22] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType22_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType23]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType23_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType23] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType23_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType23]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType23_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType23] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType23_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType24]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType24_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType24] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType24_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType24]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType24_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType24] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType24_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType25]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType25_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType25] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType25_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType25]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType25_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType25] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType25_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType2512]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType2512_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType2512] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType2512_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType26]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType26_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType26] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType26_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType26]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType26_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType26] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType26_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType31]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType31_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType31] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType31_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType31]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType31_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType31] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType31_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType35]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType35_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType35] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType35_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType35]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01JockeyType35_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep01JockeyType35] NOCHECK CONSTRAINT [FK_AnalysisStep01JockeyType35_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep01PrepType0000]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01PrepType0000_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01PrepType0000] NOCHECK CONSTRAINT [FK_AnalysisStep01PrepType0000_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType11]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType11_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType11] NOCHECK CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType11_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType12]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType12_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType12] NOCHECK CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType12_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType13]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType13_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType13] NOCHECK CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType13_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType14]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType14_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType14] NOCHECK CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType14_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType15]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType15_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType15] NOCHECK CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType15_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType16]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType16_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType16] NOCHECK CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType16_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType21]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType21_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType21] NOCHECK CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType21_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType22]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType22_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType22] NOCHECK CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType22_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType23]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType23_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType23] NOCHECK CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType23_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType24]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType24_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType24] NOCHECK CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType24_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType25]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType25_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType25] NOCHECK CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType25_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType26]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType26_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType26] NOCHECK CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType26_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType31]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType31_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType31] NOCHECK CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType31_Race]
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType35]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType35_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep01PrevRaceHorseType35] NOCHECK CONSTRAINT [FK_AnalysisStep01PrevRaceHorseType35_Race]
GO
ALTER TABLE [dbo].[AnalysisStep02Basic]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep02Basic_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep02Basic] NOCHECK CONSTRAINT [FK_AnalysisStep02Basic_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep02Basic]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep02Basic_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep02Basic] NOCHECK CONSTRAINT [FK_AnalysisStep02Basic_Race]
GO
ALTER TABLE [dbo].[AnalysisStep02Gen01]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep02Gen01_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep02Gen01] NOCHECK CONSTRAINT [FK_AnalysisStep02Gen01_Race]
GO
ALTER TABLE [dbo].[AnalysisStep02Gen01]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep02Gen01_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep02Gen01] NOCHECK CONSTRAINT [FK_AnalysisStep02Gen01_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep02Gen02]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep02Gen02_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep02Gen02] NOCHECK CONSTRAINT [FK_AnalysisStep02Gen02_Race]
GO
ALTER TABLE [dbo].[AnalysisStep02Gen02]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep02Gen02_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep02Gen02] NOCHECK CONSTRAINT [FK_AnalysisStep02Gen02_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep02Jockey]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep02Jockey_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep02Jockey] NOCHECK CONSTRAINT [FK_AnalysisStep02Jockey_Race]
GO
ALTER TABLE [dbo].[AnalysisStep02Jockey]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep02Jockey_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep02Jockey] NOCHECK CONSTRAINT [FK_AnalysisStep02Jockey_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep02PrevRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep02PrevRaceHorse_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep02PrevRaceHorse] NOCHECK CONSTRAINT [FK_AnalysisStep02PrevRaceHorse_Race]
GO
ALTER TABLE [dbo].[AnalysisStep02PrevRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep02PrevRaceHorse_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep02PrevRaceHorse] NOCHECK CONSTRAINT [FK_AnalysisStep02PrevRaceHorse_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep03Basic]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep03Basic_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep03Basic] NOCHECK CONSTRAINT [FK_AnalysisStep03Basic_Horse]
GO
ALTER TABLE [dbo].[AnalysisStep03Basic]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep03Basic_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep03Basic] NOCHECK CONSTRAINT [FK_AnalysisStep03Basic_Race]
GO
ALTER TABLE [dbo].[AnalysisStep03Gen01]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep03Gen01_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep03Gen01] NOCHECK CONSTRAINT [FK_AnalysisStep03Gen01_Race]
GO
ALTER TABLE [dbo].[AnalysisStep03Gen01]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep03Gen01_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep03Gen01] NOCHECK CONSTRAINT [FK_AnalysisStep03Gen01_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep03Gen02]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep03Gen02_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep03Gen02] NOCHECK CONSTRAINT [FK_AnalysisStep03Gen02_Race]
GO
ALTER TABLE [dbo].[AnalysisStep03Gen02]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep03Gen02_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep03Gen02] NOCHECK CONSTRAINT [FK_AnalysisStep03Gen02_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep03Jockey]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep03Jockey_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep03Jockey] NOCHECK CONSTRAINT [FK_AnalysisStep03Jockey_Race]
GO
ALTER TABLE [dbo].[AnalysisStep03Jockey]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep03Jockey_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep03Jockey] NOCHECK CONSTRAINT [FK_AnalysisStep03Jockey_RaceHorse]
GO
ALTER TABLE [dbo].[AnalysisStep03PrevRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep03PrevRaceHorse_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[AnalysisStep03PrevRaceHorse] NOCHECK CONSTRAINT [FK_AnalysisStep03PrevRaceHorse_Race]
GO
ALTER TABLE [dbo].[AnalysisStep03PrevRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalysisStep03PrevRaceHorse_RaceHorse] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorse] ([RaceId], [HorseId])
GO
ALTER TABLE [dbo].[AnalysisStep03PrevRaceHorse] NOCHECK CONSTRAINT [FK_AnalysisStep03PrevRaceHorse_RaceHorse]
GO
ALTER TABLE [dbo].[Banusi]  WITH NOCHECK ADD  CONSTRAINT [FK_Banusi_Silk] FOREIGN KEY([SilkId])
REFERENCES [dbo].[Silk] ([SilkId])
GO
ALTER TABLE [dbo].[Banusi] NOCHECK CONSTRAINT [FK_Banusi_Silk]
GO
ALTER TABLE [dbo].[BaseStatsBanusiByRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_BaseStatsBanusiByRaceHorse_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[BaseStatsBanusiByRaceHorse] NOCHECK CONSTRAINT [FK_BaseStatsBanusiByRaceHorse_Horse]
GO
ALTER TABLE [dbo].[BaseStatsBanusiByRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_BaseStatsBanusiByRaceHorse_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[BaseStatsBanusiByRaceHorse] NOCHECK CONSTRAINT [FK_BaseStatsBanusiByRaceHorse_Race]
GO
ALTER TABLE [dbo].[BaseStatsGen01HansyokuByRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_BaseStatsGen01HansyokuByRaceHorse_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[BaseStatsGen01HansyokuByRaceHorse] NOCHECK CONSTRAINT [FK_BaseStatsGen01HansyokuByRaceHorse_Horse]
GO
ALTER TABLE [dbo].[BaseStatsGen01HansyokuByRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_BaseStatsGen01HansyokuByRaceHorse_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[BaseStatsGen01HansyokuByRaceHorse] NOCHECK CONSTRAINT [FK_BaseStatsGen01HansyokuByRaceHorse_Race]
GO
ALTER TABLE [dbo].[BaseStatsGen02HansyokuByRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_BaseStatsGen02HansyokuByRaceHorse_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[BaseStatsGen02HansyokuByRaceHorse] NOCHECK CONSTRAINT [FK_BaseStatsGen02HansyokuByRaceHorse_Horse]
GO
ALTER TABLE [dbo].[BaseStatsGen02HansyokuByRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_BaseStatsGen02HansyokuByRaceHorse_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[BaseStatsGen02HansyokuByRaceHorse] NOCHECK CONSTRAINT [FK_BaseStatsGen02HansyokuByRaceHorse_Race]
GO
ALTER TABLE [dbo].[BaseStatsGen05HansyokuByRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_BaseStatsGen05HansyokuByRaceHorse_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[BaseStatsGen05HansyokuByRaceHorse] NOCHECK CONSTRAINT [FK_BaseStatsGen05HansyokuByRaceHorse_Horse]
GO
ALTER TABLE [dbo].[BaseStatsGen05HansyokuByRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_BaseStatsGen05HansyokuByRaceHorse_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[BaseStatsGen05HansyokuByRaceHorse] NOCHECK CONSTRAINT [FK_BaseStatsGen05HansyokuByRaceHorse_Race]
GO
ALTER TABLE [dbo].[BaseStatsJockeyByRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_BaseStatsJockeyByRaceHorse_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[BaseStatsJockeyByRaceHorse] NOCHECK CONSTRAINT [FK_BaseStatsJockeyByRaceHorse_Horse]
GO
ALTER TABLE [dbo].[BaseStatsJockeyByRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_BaseStatsJockeyByRaceHorse_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[BaseStatsJockeyByRaceHorse] NOCHECK CONSTRAINT [FK_BaseStatsJockeyByRaceHorse_Race]
GO
ALTER TABLE [dbo].[BaseStatsTrainerByRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_BaseStatsTrainerByRaceHorse_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[BaseStatsTrainerByRaceHorse] NOCHECK CONSTRAINT [FK_BaseStatsTrainerByRaceHorse_Horse]
GO
ALTER TABLE [dbo].[BaseStatsTrainerByRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_BaseStatsTrainerByRaceHorse_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[BaseStatsTrainerByRaceHorse] NOCHECK CONSTRAINT [FK_BaseStatsTrainerByRaceHorse_Race]
GO
ALTER TABLE [dbo].[BayesianTrial01]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalyzeBayesian01Trial_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[BayesianTrial01] NOCHECK CONSTRAINT [FK_AnalyzeBayesian01Trial_Horse]
GO
ALTER TABLE [dbo].[BayesianTrial01]  WITH NOCHECK ADD  CONSTRAINT [FK_AnalyzeBayesian01Trial_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[BayesianTrial01] NOCHECK CONSTRAINT [FK_AnalyzeBayesian01Trial_Race]
GO
ALTER TABLE [dbo].[Bet1]  WITH NOCHECK ADD  CONSTRAINT [FK_Bet1_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[Bet1] NOCHECK CONSTRAINT [FK_Bet1_MasterPlace]
GO
ALTER TABLE [dbo].[Bet1]  WITH NOCHECK ADD  CONSTRAINT [FK_Bet1_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Bet1] NOCHECK CONSTRAINT [FK_Bet1_Race]
GO
ALTER TABLE [dbo].[Bet1ByBracket]  WITH CHECK ADD  CONSTRAINT [FK_Bet1ByBracket_Bet1] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Bet1] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bet1ByBracket] CHECK CONSTRAINT [FK_Bet1ByBracket_Bet1]
GO
ALTER TABLE [dbo].[Bet1ByBracket]  WITH NOCHECK ADD  CONSTRAINT [FK_Bet1ByBracket_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Bet1ByBracket] NOCHECK CONSTRAINT [FK_Bet1ByBracket_Race]
GO
ALTER TABLE [dbo].[Bet1ByExacta]  WITH CHECK ADD  CONSTRAINT [FK_Bet1ByExacta_Bet1] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Bet1] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bet1ByExacta] CHECK CONSTRAINT [FK_Bet1ByExacta_Bet1]
GO
ALTER TABLE [dbo].[Bet1ByExacta]  WITH NOCHECK ADD  CONSTRAINT [FK_Bet1ByExacta_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Bet1ByExacta] NOCHECK CONSTRAINT [FK_Bet1ByExacta_Race]
GO
ALTER TABLE [dbo].[Bet1ByPlace]  WITH CHECK ADD  CONSTRAINT [FK_Bet1ByPlace_Bet1] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Bet1] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bet1ByPlace] CHECK CONSTRAINT [FK_Bet1ByPlace_Bet1]
GO
ALTER TABLE [dbo].[Bet1ByPlace]  WITH NOCHECK ADD  CONSTRAINT [FK_Bet1ByPlace_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Bet1ByPlace] NOCHECK CONSTRAINT [FK_Bet1ByPlace_Race]
GO
ALTER TABLE [dbo].[Bet1ByQuinella]  WITH CHECK ADD  CONSTRAINT [FK_Bet1ByQuinella_Bet1] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Bet1] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bet1ByQuinella] CHECK CONSTRAINT [FK_Bet1ByQuinella_Bet1]
GO
ALTER TABLE [dbo].[Bet1ByQuinella]  WITH NOCHECK ADD  CONSTRAINT [FK_Bet1ByQuinella_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Bet1ByQuinella] NOCHECK CONSTRAINT [FK_Bet1ByQuinella_Race]
GO
ALTER TABLE [dbo].[Bet1ByTrio]  WITH CHECK ADD  CONSTRAINT [FK_Bet1ByTrio_Bet1] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Bet1] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bet1ByTrio] CHECK CONSTRAINT [FK_Bet1ByTrio_Bet1]
GO
ALTER TABLE [dbo].[Bet1ByTrio]  WITH NOCHECK ADD  CONSTRAINT [FK_Bet1ByTrio_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Bet1ByTrio] NOCHECK CONSTRAINT [FK_Bet1ByTrio_Race]
GO
ALTER TABLE [dbo].[Bet1ByWide]  WITH CHECK ADD  CONSTRAINT [FK_Bet1ByWide_Bet1] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Bet1] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bet1ByWide] CHECK CONSTRAINT [FK_Bet1ByWide_Bet1]
GO
ALTER TABLE [dbo].[Bet1ByWide]  WITH NOCHECK ADD  CONSTRAINT [FK_Bet1ByWide_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Bet1ByWide] NOCHECK CONSTRAINT [FK_Bet1ByWide_Race]
GO
ALTER TABLE [dbo].[Bet1ByWin]  WITH CHECK ADD  CONSTRAINT [FK_Bet1ByWin_Bet1] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Bet1] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bet1ByWin] CHECK CONSTRAINT [FK_Bet1ByWin_Bet1]
GO
ALTER TABLE [dbo].[Bet1ByWin]  WITH NOCHECK ADD  CONSTRAINT [FK_Bet1ByWin_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Bet1ByWin] NOCHECK CONSTRAINT [FK_Bet1ByWin_Race]
GO
ALTER TABLE [dbo].[Bet6]  WITH NOCHECK ADD  CONSTRAINT [FK_Bet6_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[Bet6] NOCHECK CONSTRAINT [FK_Bet6_MasterPlace]
GO
ALTER TABLE [dbo].[Bet6]  WITH NOCHECK ADD  CONSTRAINT [FK_Bet6_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Bet6] NOCHECK CONSTRAINT [FK_Bet6_Race]
GO
ALTER TABLE [dbo].[Bet6ByHenkanUma]  WITH CHECK ADD  CONSTRAINT [FK_Bet6ByHenkanUma_Bet6] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Bet6] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bet6ByHenkanUma] CHECK CONSTRAINT [FK_Bet6ByHenkanUma_Bet6]
GO
ALTER TABLE [dbo].[Bet6ByHenkanUma]  WITH NOCHECK ADD  CONSTRAINT [FK_Bet6ByHenkanUma_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Bet6ByHenkanUma] NOCHECK CONSTRAINT [FK_Bet6ByHenkanUma_Race]
GO
ALTER TABLE [dbo].[Bet6ByTrifecta]  WITH CHECK ADD  CONSTRAINT [FK_Bet6ByTrifecta_Bet6] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Bet6] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bet6ByTrifecta] CHECK CONSTRAINT [FK_Bet6ByTrifecta_Bet6]
GO
ALTER TABLE [dbo].[Bet6ByTrifecta]  WITH NOCHECK ADD  CONSTRAINT [FK_Bet6ByTrifecta_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Bet6ByTrifecta] NOCHECK CONSTRAINT [FK_Bet6ByTrifecta_Race]
GO
ALTER TABLE [dbo].[BetHistoryDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_BetHistoryDetail_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[BetHistoryDetail] NOCHECK CONSTRAINT [FK_BetHistoryDetail_MasterBetType]
GO
ALTER TABLE [dbo].[BetHistoryDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_BetHistoryDetail_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[BetHistoryDetail] NOCHECK CONSTRAINT [FK_BetHistoryDetail_MasterPlace]
GO
ALTER TABLE [dbo].[BetHistoryDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_BetHistoryDetail_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[BetHistoryDetail] NOCHECK CONSTRAINT [FK_BetHistoryDetail_Race]
GO
ALTER TABLE [dbo].[BetHistoryMaster]  WITH NOCHECK ADD  CONSTRAINT [FK_BetHistoryMaster_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[BetHistoryMaster] NOCHECK CONSTRAINT [FK_BetHistoryMaster_MasterPlace]
GO
ALTER TABLE [dbo].[BetHistoryMaster]  WITH NOCHECK ADD  CONSTRAINT [FK_BetHistoryMaster_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[BetHistoryMaster] NOCHECK CONSTRAINT [FK_BetHistoryMaster_Race]
GO
ALTER TABLE [dbo].[BetMgmtByBet]  WITH NOCHECK ADD  CONSTRAINT [FK_BetMgmtByBet_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[BetMgmtByBet] NOCHECK CONSTRAINT [FK_BetMgmtByBet_MasterBetType]
GO
ALTER TABLE [dbo].[BetMgmtByBet]  WITH NOCHECK ADD  CONSTRAINT [FK_BetMgmtByBet_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[BetMgmtByBet] NOCHECK CONSTRAINT [FK_BetMgmtByBet_MasterPlace]
GO
ALTER TABLE [dbo].[BetMgmtByBet]  WITH NOCHECK ADD  CONSTRAINT [FK_BetMgmtByBet_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[BetMgmtByBet] NOCHECK CONSTRAINT [FK_BetMgmtByBet_Race]
GO
ALTER TABLE [dbo].[BetMgmtBySim]  WITH NOCHECK ADD  CONSTRAINT [FK_BetMgmtBySim_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[BetMgmtBySim] NOCHECK CONSTRAINT [FK_BetMgmtBySim_MasterBetType]
GO
ALTER TABLE [dbo].[BetMgmtBySim]  WITH NOCHECK ADD  CONSTRAINT [FK_BetMgmtBySim_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[BetMgmtBySim] NOCHECK CONSTRAINT [FK_BetMgmtBySim_MasterPlace]
GO
ALTER TABLE [dbo].[BetMgmtBySim]  WITH NOCHECK ADD  CONSTRAINT [FK_BetMgmtBySim_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[BetMgmtBySim] NOCHECK CONSTRAINT [FK_BetMgmtBySim_Race]
GO
ALTER TABLE [dbo].[BetMgmtByTemp]  WITH NOCHECK ADD  CONSTRAINT [FK_BetMgmtByTemp_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[BetMgmtByTemp] NOCHECK CONSTRAINT [FK_BetMgmtByTemp_MasterBetType]
GO
ALTER TABLE [dbo].[BetMgmtByTemp]  WITH NOCHECK ADD  CONSTRAINT [FK_BetMgmtByTemp_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[BetMgmtByTemp] NOCHECK CONSTRAINT [FK_BetMgmtByTemp_MasterPlace]
GO
ALTER TABLE [dbo].[BetMgmtByTemp]  WITH NOCHECK ADD  CONSTRAINT [FK_BetMgmtByTemp_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[BetMgmtByTemp] NOCHECK CONSTRAINT [FK_BetMgmtByTemp_Race]
GO
ALTER TABLE [dbo].[BetMgmtHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_BetMgmtHistory_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[BetMgmtHistory] NOCHECK CONSTRAINT [FK_BetMgmtHistory_MasterBetType]
GO
ALTER TABLE [dbo].[BetMgmtHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_BetMgmtHistory_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[BetMgmtHistory] NOCHECK CONSTRAINT [FK_BetMgmtHistory_MasterPlace]
GO
ALTER TABLE [dbo].[BetMgmtHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_BetMgmtHistory_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[BetMgmtHistory] NOCHECK CONSTRAINT [FK_BetMgmtHistory_Race]
GO
ALTER TABLE [dbo].[ConfigBetCount]  WITH NOCHECK ADD  CONSTRAINT [FK_ConfigBetCount_Master2Class] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Master2Class] ([ClassId])
GO
ALTER TABLE [dbo].[ConfigBetCount] NOCHECK CONSTRAINT [FK_ConfigBetCount_Master2Class]
GO
ALTER TABLE [dbo].[ConfigBetCount]  WITH NOCHECK ADD  CONSTRAINT [FK_ConfigBetCount_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[ConfigBetCount] NOCHECK CONSTRAINT [FK_ConfigBetCount_MasterBetType]
GO
ALTER TABLE [dbo].[ConfigBetCountWinFive]  WITH NOCHECK ADD  CONSTRAINT [FK_ConfigBetCountWinFive_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[ConfigBetCountWinFive] NOCHECK CONSTRAINT [FK_ConfigBetCountWinFive_MasterBetType]
GO
ALTER TABLE [dbo].[ConfigBetMoney]  WITH NOCHECK ADD  CONSTRAINT [FK_ConfigBetMoney_Master2Class] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Master2Class] ([ClassId])
GO
ALTER TABLE [dbo].[ConfigBetMoney] NOCHECK CONSTRAINT [FK_ConfigBetMoney_Master2Class]
GO
ALTER TABLE [dbo].[ConfigBetMoney]  WITH NOCHECK ADD  CONSTRAINT [FK_ConfigBetMoney_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[ConfigBetMoney] NOCHECK CONSTRAINT [FK_ConfigBetMoney_MasterBetType]
GO
ALTER TABLE [dbo].[ConfigDataSpecRecKubun]  WITH NOCHECK ADD  CONSTRAINT [FK_ConfigDataSpecRecKubun_MasterDataSpec] FOREIGN KEY([DataSpecId])
REFERENCES [dbo].[MasterDataSpec] ([DataSpecId])
GO
ALTER TABLE [dbo].[ConfigDataSpecRecKubun] NOCHECK CONSTRAINT [FK_ConfigDataSpecRecKubun_MasterDataSpec]
GO
ALTER TABLE [dbo].[ConfigLastTimestamp]  WITH NOCHECK ADD  CONSTRAINT [FK_ConfigLastTimestamp_MasterDataSpec] FOREIGN KEY([DataSpec])
REFERENCES [dbo].[MasterDataSpec] ([DataSpecId])
GO
ALTER TABLE [dbo].[ConfigLastTimestamp] NOCHECK CONSTRAINT [FK_ConfigLastTimestamp_MasterDataSpec]
GO
ALTER TABLE [dbo].[ConfigRoi_001]  WITH NOCHECK ADD  CONSTRAINT [FK_ConfigRoi_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[ConfigRoi_001] NOCHECK CONSTRAINT [FK_ConfigRoi_MasterBetType]
GO
ALTER TABLE [dbo].[CourseInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_CourseInfo_MasterJyo] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[CourseInfo] NOCHECK CONSTRAINT [FK_CourseInfo_MasterJyo]
GO
ALTER TABLE [dbo].[CourseInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_CourseInfo_MasterTrack] FOREIGN KEY([TrackId])
REFERENCES [dbo].[MasterTrack] ([TrackId])
GO
ALTER TABLE [dbo].[CourseInfo] NOCHECK CONSTRAINT [FK_CourseInfo_MasterTrack]
GO
ALTER TABLE [dbo].[DataMining]  WITH NOCHECK ADD  CONSTRAINT [FK_DataMining_HorseNum] FOREIGN KEY([HorseNum])
REFERENCES [dbo].[MasterHorseNum] ([HorseNum])
GO
ALTER TABLE [dbo].[DataMining] NOCHECK CONSTRAINT [FK_DataMining_HorseNum]
GO
ALTER TABLE [dbo].[DataMining]  WITH NOCHECK ADD  CONSTRAINT [FK_DataMining_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[DataMining] NOCHECK CONSTRAINT [FK_DataMining_MasterPlace]
GO
ALTER TABLE [dbo].[DataMining]  WITH NOCHECK ADD  CONSTRAINT [FK_DataMining_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[DataMining] NOCHECK CONSTRAINT [FK_DataMining_Race]
GO
ALTER TABLE [dbo].[DataMiningTaisen]  WITH NOCHECK ADD  CONSTRAINT [FK_DataMiningTaisen_HorseNum] FOREIGN KEY([HorseNum])
REFERENCES [dbo].[MasterHorseNum] ([HorseNum])
GO
ALTER TABLE [dbo].[DataMiningTaisen] NOCHECK CONSTRAINT [FK_DataMiningTaisen_HorseNum]
GO
ALTER TABLE [dbo].[DataMiningTaisen]  WITH NOCHECK ADD  CONSTRAINT [FK_DataMiningTaisen_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[DataMiningTaisen] NOCHECK CONSTRAINT [FK_DataMiningTaisen_MasterPlace]
GO
ALTER TABLE [dbo].[DataMiningTaisen]  WITH NOCHECK ADD  CONSTRAINT [FK_DataMiningTaisen_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[DataMiningTaisen] NOCHECK CONSTRAINT [FK_DataMiningTaisen_Race]
GO
ALTER TABLE [dbo].[EventAvoid]  WITH NOCHECK ADD  CONSTRAINT [FK_EventAvoid_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[EventAvoid] NOCHECK CONSTRAINT [FK_EventAvoid_MasterPlace]
GO
ALTER TABLE [dbo].[EventAvoid]  WITH NOCHECK ADD  CONSTRAINT [FK_EventAvoid_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[EventAvoid] NOCHECK CONSTRAINT [FK_EventAvoid_Race]
GO
ALTER TABLE [dbo].[EventCourseChange]  WITH NOCHECK ADD  CONSTRAINT [FK_EventCourseChange_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[EventCourseChange] NOCHECK CONSTRAINT [FK_EventCourseChange_MasterPlace]
GO
ALTER TABLE [dbo].[EventCourseChange]  WITH NOCHECK ADD  CONSTRAINT [FK_EventCourseChange_MasterTrack_Ato] FOREIGN KEY([TrackId])
REFERENCES [dbo].[MasterTrack] ([TrackId])
GO
ALTER TABLE [dbo].[EventCourseChange] NOCHECK CONSTRAINT [FK_EventCourseChange_MasterTrack_Ato]
GO
ALTER TABLE [dbo].[EventCourseChange]  WITH NOCHECK ADD  CONSTRAINT [FK_EventCourseChange_MasterTrack_Mae] FOREIGN KEY([TrackIdBefore])
REFERENCES [dbo].[MasterTrack] ([TrackId])
GO
ALTER TABLE [dbo].[EventCourseChange] NOCHECK CONSTRAINT [FK_EventCourseChange_MasterTrack_Mae]
GO
ALTER TABLE [dbo].[EventHorseWeight]  WITH NOCHECK ADD  CONSTRAINT [FK_EventHorseWeight_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[EventHorseWeight] NOCHECK CONSTRAINT [FK_EventHorseWeight_MasterPlace]
GO
ALTER TABLE [dbo].[EventHorseWeight]  WITH NOCHECK ADD  CONSTRAINT [FK_EventHorseWeight_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[EventHorseWeight] NOCHECK CONSTRAINT [FK_EventHorseWeight_Race]
GO
ALTER TABLE [dbo].[EventJockeyChange]  WITH NOCHECK ADD  CONSTRAINT [FK_EventJockeyChange_Jockey_Ato] FOREIGN KEY([JockeyId])
REFERENCES [dbo].[Jockey] ([JockeyId])
GO
ALTER TABLE [dbo].[EventJockeyChange] NOCHECK CONSTRAINT [FK_EventJockeyChange_Jockey_Ato]
GO
ALTER TABLE [dbo].[EventJockeyChange]  WITH NOCHECK ADD  CONSTRAINT [FK_EventJockeyChange_Jockey_Mae] FOREIGN KEY([JockeyIdBefore])
REFERENCES [dbo].[Jockey] ([JockeyId])
GO
ALTER TABLE [dbo].[EventJockeyChange] NOCHECK CONSTRAINT [FK_EventJockeyChange_Jockey_Mae]
GO
ALTER TABLE [dbo].[EventJockeyChange]  WITH NOCHECK ADD  CONSTRAINT [FK_EventJockeyChange_MasterMinarai] FOREIGN KEY([MinaraiId])
REFERENCES [dbo].[MasterMinarai] ([MinaraiId])
GO
ALTER TABLE [dbo].[EventJockeyChange] NOCHECK CONSTRAINT [FK_EventJockeyChange_MasterMinarai]
GO
ALTER TABLE [dbo].[EventJockeyChange]  WITH NOCHECK ADD  CONSTRAINT [FK_EventJockeyChange_MasterMinaraiBefore] FOREIGN KEY([MinaraiIdBefore])
REFERENCES [dbo].[MasterMinarai] ([MinaraiId])
GO
ALTER TABLE [dbo].[EventJockeyChange] NOCHECK CONSTRAINT [FK_EventJockeyChange_MasterMinaraiBefore]
GO
ALTER TABLE [dbo].[EventJockeyChange]  WITH NOCHECK ADD  CONSTRAINT [FK_EventJockeyChange_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[EventJockeyChange] NOCHECK CONSTRAINT [FK_EventJockeyChange_MasterPlace]
GO
ALTER TABLE [dbo].[EventJockeyChange]  WITH NOCHECK ADD  CONSTRAINT [FK_EventJockeyChange_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[EventJockeyChange] NOCHECK CONSTRAINT [FK_EventJockeyChange_Race]
GO
ALTER TABLE [dbo].[EventQueue]  WITH NOCHECK ADD  CONSTRAINT [FK_EventQueue_MasterOpenModeDataSpec] FOREIGN KEY([OpenMode], [OpenDataSpecId])
REFERENCES [dbo].[MasterOpenModeDataSpec] ([OpenMode], [OpenDataSpecId])
GO
ALTER TABLE [dbo].[EventQueue] NOCHECK CONSTRAINT [FK_EventQueue_MasterOpenModeDataSpec]
GO
ALTER TABLE [dbo].[EventQueue]  WITH NOCHECK ADD  CONSTRAINT [FK_EventQueue_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[EventQueue] NOCHECK CONSTRAINT [FK_EventQueue_Race]
GO
ALTER TABLE [dbo].[EventTimeChange]  WITH NOCHECK ADD  CONSTRAINT [FK_EventTimeChange_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[EventTimeChange] NOCHECK CONSTRAINT [FK_EventTimeChange_MasterPlace]
GO
ALTER TABLE [dbo].[EventTimeChange]  WITH NOCHECK ADD  CONSTRAINT [FK_EventTimeChange_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[EventTimeChange] NOCHECK CONSTRAINT [FK_EventTimeChange_Race]
GO
ALTER TABLE [dbo].[EventWeather]  WITH NOCHECK ADD  CONSTRAINT [FK_EventWeather_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[EventWeather] NOCHECK CONSTRAINT [FK_EventWeather_MasterPlace]
GO
ALTER TABLE [dbo].[EventWeather]  WITH NOCHECK ADD  CONSTRAINT [FK_EventWeather_MasterTenko_Ato] FOREIGN KEY([TenkoId])
REFERENCES [dbo].[MasterTenko] ([TenkoId])
GO
ALTER TABLE [dbo].[EventWeather] NOCHECK CONSTRAINT [FK_EventWeather_MasterTenko_Ato]
GO
ALTER TABLE [dbo].[EventWeather]  WITH NOCHECK ADD  CONSTRAINT [FK_EventWeather_MasterTenko_Mae] FOREIGN KEY([TenkoIdBefore])
REFERENCES [dbo].[MasterTenko] ([TenkoId])
GO
ALTER TABLE [dbo].[EventWeather] NOCHECK CONSTRAINT [FK_EventWeather_MasterTenko_Mae]
GO
ALTER TABLE [dbo].[Hansyoku]  WITH NOCHECK ADD  CONSTRAINT [FK_Hansyoku_HansyokuFemaleID] FOREIGN KEY([FemaleHansyokuId])
REFERENCES [dbo].[Hansyoku] ([HansyokuId])
GO
ALTER TABLE [dbo].[Hansyoku] NOCHECK CONSTRAINT [FK_Hansyoku_HansyokuFemaleID]
GO
ALTER TABLE [dbo].[Hansyoku]  WITH NOCHECK ADD  CONSTRAINT [FK_Hansyoku_HansyokuMaleID] FOREIGN KEY([MaleHansyokuId])
REFERENCES [dbo].[Hansyoku] ([HansyokuId])
GO
ALTER TABLE [dbo].[Hansyoku] NOCHECK CONSTRAINT [FK_Hansyoku_HansyokuMaleID]
GO
ALTER TABLE [dbo].[Hansyoku]  WITH NOCHECK ADD  CONSTRAINT [FK_Hansyoku_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[Hansyoku] NOCHECK CONSTRAINT [FK_Hansyoku_Horse]
GO
ALTER TABLE [dbo].[Hansyoku]  WITH NOCHECK ADD  CONSTRAINT [FK_Hansyoku_MasterHinsyu] FOREIGN KEY([HinsyuId])
REFERENCES [dbo].[MasterHinsyu] ([HinsyuId])
GO
ALTER TABLE [dbo].[Hansyoku] NOCHECK CONSTRAINT [FK_Hansyoku_MasterHinsyu]
GO
ALTER TABLE [dbo].[Hansyoku]  WITH NOCHECK ADD  CONSTRAINT [FK_Hansyoku_MasterKeiro] FOREIGN KEY([KeiroId])
REFERENCES [dbo].[MasterKeiro] ([KeiroId])
GO
ALTER TABLE [dbo].[Hansyoku] NOCHECK CONSTRAINT [FK_Hansyoku_MasterKeiro]
GO
ALTER TABLE [dbo].[Hansyoku]  WITH NOCHECK ADD  CONSTRAINT [FK_Hansyoku_MasterSex] FOREIGN KEY([SexId])
REFERENCES [dbo].[MasterSex] ([SexId])
GO
ALTER TABLE [dbo].[Hansyoku] NOCHECK CONSTRAINT [FK_Hansyoku_MasterSex]
GO
ALTER TABLE [dbo].[HansyokuParents]  WITH NOCHECK ADD  CONSTRAINT [FK_HansyokuParents_Hansyoku] FOREIGN KEY([HansyokuId])
REFERENCES [dbo].[Hansyoku] ([HansyokuId])
GO
ALTER TABLE [dbo].[HansyokuParents] NOCHECK CONSTRAINT [FK_HansyokuParents_Hansyoku]
GO
ALTER TABLE [dbo].[HansyokuParents]  WITH NOCHECK ADD  CONSTRAINT [FK_HansyokuParents_HansyokuParents] FOREIGN KEY([ParentsHansyokuId])
REFERENCES [dbo].[Hansyoku] ([HansyokuId])
GO
ALTER TABLE [dbo].[HansyokuParents] NOCHECK CONSTRAINT [FK_HansyokuParents_HansyokuParents]
GO
ALTER TABLE [dbo].[HansyokuParents]  WITH NOCHECK ADD  CONSTRAINT [FK_HansyokuParents_MasterSex] FOREIGN KEY([SexId])
REFERENCES [dbo].[MasterSex] ([SexId])
GO
ALTER TABLE [dbo].[HansyokuParents] NOCHECK CONSTRAINT [FK_HansyokuParents_MasterSex]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_Banusi] FOREIGN KEY([BanusiId])
REFERENCES [dbo].[Banusi] ([BanusiId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_Banusi]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_Breeder] FOREIGN KEY([BreederId])
REFERENCES [dbo].[Breeder] ([BreederId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_Breeder]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_Hansyoku01] FOREIGN KEY([Gen01HansyokuId])
REFERENCES [dbo].[Hansyoku] ([HansyokuId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_Hansyoku01]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_Hansyoku02] FOREIGN KEY([Gen02HansyokuId])
REFERENCES [dbo].[Hansyoku] ([HansyokuId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_Hansyoku02]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_Hansyoku03] FOREIGN KEY([Gen03HansyokuId])
REFERENCES [dbo].[Hansyoku] ([HansyokuId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_Hansyoku03]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_Hansyoku04] FOREIGN KEY([Gen04HansyokuId])
REFERENCES [dbo].[Hansyoku] ([HansyokuId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_Hansyoku04]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_Hansyoku05] FOREIGN KEY([Gen05HansyokuId])
REFERENCES [dbo].[Hansyoku] ([HansyokuId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_Hansyoku05]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_Hansyoku06] FOREIGN KEY([Gen06HansyokuId])
REFERENCES [dbo].[Hansyoku] ([HansyokuId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_Hansyoku06]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_Hansyoku07] FOREIGN KEY([Gen07HansyokuId])
REFERENCES [dbo].[Hansyoku] ([HansyokuId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_Hansyoku07]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_Hansyoku08] FOREIGN KEY([Gen08HansyokuId])
REFERENCES [dbo].[Hansyoku] ([HansyokuId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_Hansyoku08]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_Hansyoku09] FOREIGN KEY([Gen09HansyokuId])
REFERENCES [dbo].[Hansyoku] ([HansyokuId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_Hansyoku09]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_Hansyoku10] FOREIGN KEY([Gen10HansyokuId])
REFERENCES [dbo].[Hansyoku] ([HansyokuId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_Hansyoku10]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_Hansyoku11] FOREIGN KEY([Gen11HansyokuId])
REFERENCES [dbo].[Hansyoku] ([HansyokuId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_Hansyoku11]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_Hansyoku12] FOREIGN KEY([Gen12HansyokuId])
REFERENCES [dbo].[Hansyoku] ([HansyokuId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_Hansyoku12]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_Hansyoku13] FOREIGN KEY([Gen13HansyokuId])
REFERENCES [dbo].[Hansyoku] ([HansyokuId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_Hansyoku13]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_Hansyoku14] FOREIGN KEY([Gen14HansyokuId])
REFERENCES [dbo].[Hansyoku] ([HansyokuId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_Hansyoku14]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_MasterHinsyu] FOREIGN KEY([HinsyuId])
REFERENCES [dbo].[MasterHinsyu] ([HinsyuId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_MasterHinsyu]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_MasterKeiro] FOREIGN KEY([KeiroId])
REFERENCES [dbo].[MasterKeiro] ([KeiroId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_MasterKeiro]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_MasterSex] FOREIGN KEY([SexId])
REFERENCES [dbo].[MasterSex] ([SexId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_MasterSex]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_MasterTozai] FOREIGN KEY([TozaiId])
REFERENCES [dbo].[MasterTozai] ([TozaiId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_MasterTozai]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_MasterUmaKigo] FOREIGN KEY([UmaKigoId])
REFERENCES [dbo].[MasterUmaKigo] ([UmaKigoId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_MasterUmaKigo]
GO
ALTER TABLE [dbo].[Horse]  WITH NOCHECK ADD  CONSTRAINT [FK_Horse_Trainer] FOREIGN KEY([TrainerId])
REFERENCES [dbo].[Trainer] ([TrainerId])
GO
ALTER TABLE [dbo].[Horse] NOCHECK CONSTRAINT [FK_Horse_Trainer]
GO
ALTER TABLE [dbo].[HorseByCourseType]  WITH NOCHECK ADD  CONSTRAINT [FK_HorseByCourseType_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorseByCourseType] CHECK CONSTRAINT [FK_HorseByCourseType_Horse]
GO
ALTER TABLE [dbo].[HorseByCourseType]  WITH NOCHECK ADD  CONSTRAINT [FK_HorseByCourseType_MasterCourseType] FOREIGN KEY([CourseTypeId])
REFERENCES [dbo].[MasterCourseType] ([CourseTypeId])
GO
ALTER TABLE [dbo].[HorseByCourseType] NOCHECK CONSTRAINT [FK_HorseByCourseType_MasterCourseType]
GO
ALTER TABLE [dbo].[HorseByCourseType]  WITH NOCHECK ADD  CONSTRAINT [FK_HorseByCourseType_MasterTrackType] FOREIGN KEY([TrackTypeId])
REFERENCES [dbo].[MasterTrackType] ([TrackTypeId])
GO
ALTER TABLE [dbo].[HorseByCourseType] NOCHECK CONSTRAINT [FK_HorseByCourseType_MasterTrackType]
GO
ALTER TABLE [dbo].[HorseByDistanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_HorseByDistanceType_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorseByDistanceType] CHECK CONSTRAINT [FK_HorseByDistanceType_Horse]
GO
ALTER TABLE [dbo].[HorseByDistanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_HorseByDistanceType_MasterDistanceType2] FOREIGN KEY([DistanceType2Id])
REFERENCES [dbo].[MasterDistanceType2] ([DistanceType2Id])
GO
ALTER TABLE [dbo].[HorseByDistanceType] NOCHECK CONSTRAINT [FK_HorseByDistanceType_MasterDistanceType2]
GO
ALTER TABLE [dbo].[HorseByDistanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_HorseByDistanceType_MasterTrackType2] FOREIGN KEY([TrackType2Id])
REFERENCES [dbo].[MasterTrackType2] ([TrackType2Id])
GO
ALTER TABLE [dbo].[HorseByDistanceType] NOCHECK CONSTRAINT [FK_HorseByDistanceType_MasterTrackType2]
GO
ALTER TABLE [dbo].[HorseByRunType]  WITH NOCHECK ADD  CONSTRAINT [FK_HorseByRunType_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorseByRunType] CHECK CONSTRAINT [FK_HorseByRunType_Horse]
GO
ALTER TABLE [dbo].[HorseBySmile]  WITH NOCHECK ADD  CONSTRAINT [FK_HorseBySmile_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorseBySmile] CHECK CONSTRAINT [FK_HorseBySmile_Horse]
GO
ALTER TABLE [dbo].[HorseBySmile]  WITH NOCHECK ADD  CONSTRAINT [FK_HorseBySmile_MasterSmile] FOREIGN KEY([SmileId])
REFERENCES [dbo].[MasterSmile] ([SmileId])
GO
ALTER TABLE [dbo].[HorseBySmile] NOCHECK CONSTRAINT [FK_HorseBySmile_MasterSmile]
GO
ALTER TABLE [dbo].[HorseBySmile]  WITH NOCHECK ADD  CONSTRAINT [FK_HorseBySmile_MasterTrackType] FOREIGN KEY([TrackTypeId])
REFERENCES [dbo].[MasterTrackType] ([TrackTypeId])
GO
ALTER TABLE [dbo].[HorseBySmile] NOCHECK CONSTRAINT [FK_HorseBySmile_MasterTrackType]
GO
ALTER TABLE [dbo].[HorseByTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_HorseByTotal_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorseByTotal] CHECK CONSTRAINT [FK_HorseByTotal_Horse]
GO
ALTER TABLE [dbo].[HorseByTrackCondition]  WITH NOCHECK ADD  CONSTRAINT [FK_HorseByTrackCondition_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HorseByTrackCondition] CHECK CONSTRAINT [FK_HorseByTrackCondition_Horse]
GO
ALTER TABLE [dbo].[HorseByTrackCondition]  WITH NOCHECK ADD  CONSTRAINT [FK_HorseByTrackCondition_MasterTrackCondition] FOREIGN KEY([TrackConditionId])
REFERENCES [dbo].[MasterTrackCondition] ([TrackConditionId])
GO
ALTER TABLE [dbo].[HorseByTrackCondition] NOCHECK CONSTRAINT [FK_HorseByTrackCondition_MasterTrackCondition]
GO
ALTER TABLE [dbo].[HorseByTrackCondition]  WITH NOCHECK ADD  CONSTRAINT [FK_HorseByTrackCondition_MasterTrackType] FOREIGN KEY([TrackTypeId])
REFERENCES [dbo].[MasterTrackType] ([TrackTypeId])
GO
ALTER TABLE [dbo].[HorseByTrackCondition] NOCHECK CONSTRAINT [FK_HorseByTrackCondition_MasterTrackType]
GO
ALTER TABLE [dbo].[Jockey]  WITH NOCHECK ADD  CONSTRAINT [FK_Jockey_MasterMinarai] FOREIGN KEY([MinaraiId])
REFERENCES [dbo].[MasterMinarai] ([MinaraiId])
GO
ALTER TABLE [dbo].[Jockey] NOCHECK CONSTRAINT [FK_Jockey_MasterMinarai]
GO
ALTER TABLE [dbo].[Jockey]  WITH NOCHECK ADD  CONSTRAINT [FK_Jockey_MasterSex] FOREIGN KEY([SexId])
REFERENCES [dbo].[MasterSex] ([SexId])
GO
ALTER TABLE [dbo].[Jockey] NOCHECK CONSTRAINT [FK_Jockey_MasterSex]
GO
ALTER TABLE [dbo].[Jockey]  WITH NOCHECK ADD  CONSTRAINT [FK_Jockey_MasterShikaku] FOREIGN KEY([LicenseId])
REFERENCES [dbo].[MasterLicense] ([LicenseId])
GO
ALTER TABLE [dbo].[Jockey] NOCHECK CONSTRAINT [FK_Jockey_MasterShikaku]
GO
ALTER TABLE [dbo].[Jockey]  WITH NOCHECK ADD  CONSTRAINT [FK_Jockey_MasterTozai] FOREIGN KEY([TozaiId])
REFERENCES [dbo].[MasterTozai] ([TozaiId])
GO
ALTER TABLE [dbo].[Jockey] NOCHECK CONSTRAINT [FK_Jockey_MasterTozai]
GO
ALTER TABLE [dbo].[JockeyByDistanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_JockeyByDistanceType_Jocky] FOREIGN KEY([JockeyId])
REFERENCES [dbo].[Jockey] ([JockeyId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JockeyByDistanceType] CHECK CONSTRAINT [FK_JockeyByDistanceType_Jocky]
GO
ALTER TABLE [dbo].[JockeyByDistanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_JockeyByDistanceType_MasterTrackType2] FOREIGN KEY([TrackType2Id])
REFERENCES [dbo].[MasterTrackType2] ([TrackType2Id])
GO
ALTER TABLE [dbo].[JockeyByDistanceType] NOCHECK CONSTRAINT [FK_JockeyByDistanceType_MasterTrackType2]
GO
ALTER TABLE [dbo].[JockeyByHatsuKijyo]  WITH NOCHECK ADD  CONSTRAINT [FK_JockeyByHatsuKijyo_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[JockeyByHatsuKijyo] NOCHECK CONSTRAINT [FK_JockeyByHatsuKijyo_Horse]
GO
ALTER TABLE [dbo].[JockeyByHatsuKijyo]  WITH NOCHECK ADD  CONSTRAINT [FK_JockeyByHatsuKijyo_Jocky] FOREIGN KEY([JockeyId])
REFERENCES [dbo].[Jockey] ([JockeyId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JockeyByHatsuKijyo] CHECK CONSTRAINT [FK_JockeyByHatsuKijyo_Jocky]
GO
ALTER TABLE [dbo].[JockeyByHatsuKijyo]  WITH NOCHECK ADD  CONSTRAINT [FK_JockeyByHatsuKijyo_MasterIjyo] FOREIGN KEY([StatsId])
REFERENCES [dbo].[MasterStats] ([StatsId])
GO
ALTER TABLE [dbo].[JockeyByHatsuKijyo] NOCHECK CONSTRAINT [FK_JockeyByHatsuKijyo_MasterIjyo]
GO
ALTER TABLE [dbo].[JockeyByHatsuKijyo]  WITH NOCHECK ADD  CONSTRAINT [FK_JockeyByHatsuKijyo_MasterTrackType3] FOREIGN KEY([TrackType3Id])
REFERENCES [dbo].[MasterTrackType3] ([TrackType3Id])
GO
ALTER TABLE [dbo].[JockeyByHatsuKijyo] NOCHECK CONSTRAINT [FK_JockeyByHatsuKijyo_MasterTrackType3]
GO
ALTER TABLE [dbo].[JockeyByHatsuKijyo]  WITH NOCHECK ADD  CONSTRAINT [FK_JockeyByHatsuKijyo_Race] FOREIGN KEY([RaceID])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[JockeyByHatsuKijyo] NOCHECK CONSTRAINT [FK_JockeyByHatsuKijyo_Race]
GO
ALTER TABLE [dbo].[JockeyByHatuSyori]  WITH NOCHECK ADD  CONSTRAINT [FK_JockeyByHatusyori_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[JockeyByHatuSyori] NOCHECK CONSTRAINT [FK_JockeyByHatusyori_Horse]
GO
ALTER TABLE [dbo].[JockeyByHatuSyori]  WITH NOCHECK ADD  CONSTRAINT [FK_JockeyByHatusyori_Jocky] FOREIGN KEY([JockeyId])
REFERENCES [dbo].[Jockey] ([JockeyId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JockeyByHatuSyori] CHECK CONSTRAINT [FK_JockeyByHatusyori_Jocky]
GO
ALTER TABLE [dbo].[JockeyByHatuSyori]  WITH NOCHECK ADD  CONSTRAINT [FK_JockeyByHatusyori_MasterTrackType3] FOREIGN KEY([TrackType3Id])
REFERENCES [dbo].[MasterTrackType3] ([TrackType3Id])
GO
ALTER TABLE [dbo].[JockeyByHatuSyori] NOCHECK CONSTRAINT [FK_JockeyByHatusyori_MasterTrackType3]
GO
ALTER TABLE [dbo].[JockeyByHatuSyori]  WITH NOCHECK ADD  CONSTRAINT [FK_JockeyByHatusyori_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[JockeyByHatuSyori] NOCHECK CONSTRAINT [FK_JockeyByHatusyori_Race]
GO
ALTER TABLE [dbo].[JockeyBySaikinJyusyo]  WITH NOCHECK ADD  CONSTRAINT [FK_JockeyBySaikinJyusyo_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[JockeyBySaikinJyusyo] NOCHECK CONSTRAINT [FK_JockeyBySaikinJyusyo_Horse]
GO
ALTER TABLE [dbo].[JockeyBySaikinJyusyo]  WITH NOCHECK ADD  CONSTRAINT [FK_JockeyBySaikinJyusyo_Jocky] FOREIGN KEY([JockeyId])
REFERENCES [dbo].[Jockey] ([JockeyId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JockeyBySaikinJyusyo] CHECK CONSTRAINT [FK_JockeyBySaikinJyusyo_Jocky]
GO
ALTER TABLE [dbo].[JockeyBySaikinJyusyo]  WITH NOCHECK ADD  CONSTRAINT [FK_JockeyBySaikinJyusyo_MasterGrade] FOREIGN KEY([GradeId])
REFERENCES [dbo].[MasterGrade] ([GradeId])
GO
ALTER TABLE [dbo].[JockeyBySaikinJyusyo] NOCHECK CONSTRAINT [FK_JockeyBySaikinJyusyo_MasterGrade]
GO
ALTER TABLE [dbo].[JockeyBySaikinJyusyo]  WITH NOCHECK ADD  CONSTRAINT [FK_JockeyBySaikinJyusyo_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[JockeyBySaikinJyusyo] NOCHECK CONSTRAINT [FK_JockeyBySaikinJyusyo_Race]
GO
ALTER TABLE [dbo].[JockeyByTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_JockeyByTotal_Jocky] FOREIGN KEY([JockeyId])
REFERENCES [dbo].[Jockey] ([JockeyId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JockeyByTotal] CHECK CONSTRAINT [FK_JockeyByTotal_Jocky]
GO
ALTER TABLE [dbo].[JockeyByTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_JockeyByTotal_TrackType3] FOREIGN KEY([TrackType3Id])
REFERENCES [dbo].[MasterTrackType3] ([TrackType3Id])
GO
ALTER TABLE [dbo].[JockeyByTotal] CHECK CONSTRAINT [FK_JockeyByTotal_TrackType3]
GO
ALTER TABLE [dbo].[JockeyByTrackType]  WITH NOCHECK ADD  CONSTRAINT [FK_JockeyByTrackType_Jocky] FOREIGN KEY([JockeyId])
REFERENCES [dbo].[Jockey] ([JockeyId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[JockeyByTrackType] CHECK CONSTRAINT [FK_JockeyByTrackType_Jocky]
GO
ALTER TABLE [dbo].[JockeyByTrackType]  WITH NOCHECK ADD  CONSTRAINT [FK_JockeyByTrackType_MasterTrackType3] FOREIGN KEY([TrackType3Id])
REFERENCES [dbo].[MasterTrackType3] ([TrackType3Id])
GO
ALTER TABLE [dbo].[JockeyByTrackType] NOCHECK CONSTRAINT [FK_JockeyByTrackType_MasterTrackType3]
GO
ALTER TABLE [dbo].[Keito]  WITH NOCHECK ADD  CONSTRAINT [FK_Keito_Hansyoku] FOREIGN KEY([HansyokuId])
REFERENCES [dbo].[Hansyoku] ([HansyokuId])
GO
ALTER TABLE [dbo].[Keito] NOCHECK CONSTRAINT [FK_Keito_Hansyoku]
GO
ALTER TABLE [dbo].[MasterJyoken5]  WITH NOCHECK ADD  CONSTRAINT [FK_MasterJyoken5_MasterJyoken] FOREIGN KEY([JyokenId])
REFERENCES [dbo].[MasterJyoken] ([JyokenId])
GO
ALTER TABLE [dbo].[MasterJyoken5] NOCHECK CONSTRAINT [FK_MasterJyoken5_MasterJyoken]
GO
ALTER TABLE [dbo].[MasterOpenModeDataSpec]  WITH NOCHECK ADD  CONSTRAINT [FK_MasterOpenModeDataSpec_MasterDataSpec] FOREIGN KEY([OpenDataSpecId])
REFERENCES [dbo].[MasterDataSpec] ([DataSpecId])
GO
ALTER TABLE [dbo].[MasterOpenModeDataSpec] NOCHECK CONSTRAINT [FK_MasterOpenModeDataSpec_MasterDataSpec]
GO
ALTER TABLE [dbo].[Odds1]  WITH NOCHECK ADD  CONSTRAINT [FK_Odds1_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[Odds1] NOCHECK CONSTRAINT [FK_Odds1_MasterPlace]
GO
ALTER TABLE [dbo].[Odds1]  WITH NOCHECK ADD  CONSTRAINT [FK_Odds1_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Odds1] NOCHECK CONSTRAINT [FK_Odds1_Race]
GO
ALTER TABLE [dbo].[Odds2]  WITH NOCHECK ADD  CONSTRAINT [FK_Odds2_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[Odds2] NOCHECK CONSTRAINT [FK_Odds2_MasterPlace]
GO
ALTER TABLE [dbo].[Odds2]  WITH NOCHECK ADD  CONSTRAINT [FK_Odds2_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Odds2] NOCHECK CONSTRAINT [FK_Odds2_Race]
GO
ALTER TABLE [dbo].[Odds3]  WITH NOCHECK ADD  CONSTRAINT [FK_Odds3_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[Odds3] NOCHECK CONSTRAINT [FK_Odds3_MasterPlace]
GO
ALTER TABLE [dbo].[Odds3]  WITH NOCHECK ADD  CONSTRAINT [FK_Odds3_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Odds3] NOCHECK CONSTRAINT [FK_Odds3_Race]
GO
ALTER TABLE [dbo].[Odds4]  WITH NOCHECK ADD  CONSTRAINT [FK_Odds4_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[Odds4] NOCHECK CONSTRAINT [FK_Odds4_MasterPlace]
GO
ALTER TABLE [dbo].[Odds4]  WITH NOCHECK ADD  CONSTRAINT [FK_Odds4_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Odds4] NOCHECK CONSTRAINT [FK_Odds4_Race]
GO
ALTER TABLE [dbo].[Odds5]  WITH NOCHECK ADD  CONSTRAINT [FK_Odds5_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[Odds5] NOCHECK CONSTRAINT [FK_Odds5_MasterPlace]
GO
ALTER TABLE [dbo].[Odds5]  WITH NOCHECK ADD  CONSTRAINT [FK_Odds5_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Odds5] NOCHECK CONSTRAINT [FK_Odds5_Race]
GO
ALTER TABLE [dbo].[Odds6]  WITH NOCHECK ADD  CONSTRAINT [FK_Odds6_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[Odds6] NOCHECK CONSTRAINT [FK_Odds6_MasterPlace]
GO
ALTER TABLE [dbo].[Odds6]  WITH NOCHECK ADD  CONSTRAINT [FK_Odds6_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Odds6] NOCHECK CONSTRAINT [FK_Odds6_Race]
GO
ALTER TABLE [dbo].[OddsByBracket]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByBracket_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[OddsByBracket] NOCHECK CONSTRAINT [FK_OddsByBracket_MasterBetType]
GO
ALTER TABLE [dbo].[OddsByBracket]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByBracket_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[OddsByBracket] NOCHECK CONSTRAINT [FK_OddsByBracket_MasterPlace]
GO
ALTER TABLE [dbo].[OddsByBracket]  WITH CHECK ADD  CONSTRAINT [FK_OddsByBracket_Odds1] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Odds1] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OddsByBracket] CHECK CONSTRAINT [FK_OddsByBracket_Odds1]
GO
ALTER TABLE [dbo].[OddsByBracket]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByBracket_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[OddsByBracket] NOCHECK CONSTRAINT [FK_OddsByBracket_Race]
GO
ALTER TABLE [dbo].[OddsByExacta]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByExacta_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[OddsByExacta] NOCHECK CONSTRAINT [FK_OddsByExacta_MasterBetType]
GO
ALTER TABLE [dbo].[OddsByExacta]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByExacta_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[OddsByExacta] NOCHECK CONSTRAINT [FK_OddsByExacta_MasterPlace]
GO
ALTER TABLE [dbo].[OddsByExacta]  WITH CHECK ADD  CONSTRAINT [FK_OddsByExacta_Odds4] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Odds4] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OddsByExacta] CHECK CONSTRAINT [FK_OddsByExacta_Odds4]
GO
ALTER TABLE [dbo].[OddsByExacta]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByExacta_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[OddsByExacta] NOCHECK CONSTRAINT [FK_OddsByExacta_Race]
GO
ALTER TABLE [dbo].[OddsByPlace]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByPlace_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[OddsByPlace] NOCHECK CONSTRAINT [FK_OddsByPlace_MasterBetType]
GO
ALTER TABLE [dbo].[OddsByPlace]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByPlace_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[OddsByPlace] NOCHECK CONSTRAINT [FK_OddsByPlace_MasterPlace]
GO
ALTER TABLE [dbo].[OddsByPlace]  WITH CHECK ADD  CONSTRAINT [FK_OddsByPlace_Odds1] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Odds1] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OddsByPlace] CHECK CONSTRAINT [FK_OddsByPlace_Odds1]
GO
ALTER TABLE [dbo].[OddsByPlace]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByPlace_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[OddsByPlace] NOCHECK CONSTRAINT [FK_OddsByPlace_Race]
GO
ALTER TABLE [dbo].[OddsByQuinella]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByQuinella_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[OddsByQuinella] NOCHECK CONSTRAINT [FK_OddsByQuinella_MasterBetType]
GO
ALTER TABLE [dbo].[OddsByQuinella]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByQuinella_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[OddsByQuinella] NOCHECK CONSTRAINT [FK_OddsByQuinella_MasterPlace]
GO
ALTER TABLE [dbo].[OddsByQuinella]  WITH CHECK ADD  CONSTRAINT [FK_OddsByQuinella_Odds2] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Odds2] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OddsByQuinella] CHECK CONSTRAINT [FK_OddsByQuinella_Odds2]
GO
ALTER TABLE [dbo].[OddsByQuinella]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByQuinella_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[OddsByQuinella] NOCHECK CONSTRAINT [FK_OddsByQuinella_Race]
GO
ALTER TABLE [dbo].[OddsByTrifecta]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByTrifecta_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[OddsByTrifecta] NOCHECK CONSTRAINT [FK_OddsByTrifecta_MasterBetType]
GO
ALTER TABLE [dbo].[OddsByTrifecta]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByTrifecta_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[OddsByTrifecta] NOCHECK CONSTRAINT [FK_OddsByTrifecta_MasterPlace]
GO
ALTER TABLE [dbo].[OddsByTrifecta]  WITH CHECK ADD  CONSTRAINT [FK_OddsByTrifecta_Odds6] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Odds6] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OddsByTrifecta] CHECK CONSTRAINT [FK_OddsByTrifecta_Odds6]
GO
ALTER TABLE [dbo].[OddsByTrifecta]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByTrifecta_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[OddsByTrifecta] NOCHECK CONSTRAINT [FK_OddsByTrifecta_Race]
GO
ALTER TABLE [dbo].[OddsByTrio]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByTrio_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[OddsByTrio] NOCHECK CONSTRAINT [FK_OddsByTrio_MasterBetType]
GO
ALTER TABLE [dbo].[OddsByTrio]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByTrio_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[OddsByTrio] NOCHECK CONSTRAINT [FK_OddsByTrio_MasterPlace]
GO
ALTER TABLE [dbo].[OddsByTrio]  WITH CHECK ADD  CONSTRAINT [FK_OddsByTrio_Odds5] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Odds5] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OddsByTrio] CHECK CONSTRAINT [FK_OddsByTrio_Odds5]
GO
ALTER TABLE [dbo].[OddsByTrio]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByTrio_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[OddsByTrio] NOCHECK CONSTRAINT [FK_OddsByTrio_Race]
GO
ALTER TABLE [dbo].[OddsByWide]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByWide_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[OddsByWide] NOCHECK CONSTRAINT [FK_OddsByWide_MasterBetType]
GO
ALTER TABLE [dbo].[OddsByWide]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByWide_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[OddsByWide] NOCHECK CONSTRAINT [FK_OddsByWide_MasterPlace]
GO
ALTER TABLE [dbo].[OddsByWide]  WITH CHECK ADD  CONSTRAINT [FK_OddsByWide_Odds3] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Odds3] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OddsByWide] CHECK CONSTRAINT [FK_OddsByWide_Odds3]
GO
ALTER TABLE [dbo].[OddsByWide]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByWide_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[OddsByWide] NOCHECK CONSTRAINT [FK_OddsByWide_Race]
GO
ALTER TABLE [dbo].[OddsByWin]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByWin_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[OddsByWin] NOCHECK CONSTRAINT [FK_OddsByWin_MasterBetType]
GO
ALTER TABLE [dbo].[OddsByWin]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByWin_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[OddsByWin] NOCHECK CONSTRAINT [FK_OddsByWin_MasterPlace]
GO
ALTER TABLE [dbo].[OddsByWin]  WITH CHECK ADD  CONSTRAINT [FK_OddsByWin_Odds1] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Odds1] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OddsByWin] CHECK CONSTRAINT [FK_OddsByWin_Odds1]
GO
ALTER TABLE [dbo].[OddsByWin]  WITH NOCHECK ADD  CONSTRAINT [FK_OddsByWin_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[OddsByWin] NOCHECK CONSTRAINT [FK_OddsByWin_Race]
GO
ALTER TABLE [dbo].[Payoff]  WITH NOCHECK ADD  CONSTRAINT [FK_Payoff_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[Payoff] NOCHECK CONSTRAINT [FK_Payoff_MasterPlace]
GO
ALTER TABLE [dbo].[Payoff]  WITH NOCHECK ADD  CONSTRAINT [FK_Payoff_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[Payoff] NOCHECK CONSTRAINT [FK_Payoff_Race]
GO
ALTER TABLE [dbo].[PayoffByFlag]  WITH CHECK ADD  CONSTRAINT [FK_PayoffByFlag_Payoff] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Payoff] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PayoffByFlag] CHECK CONSTRAINT [FK_PayoffByFlag_Payoff]
GO
ALTER TABLE [dbo].[PayoffByFlag]  WITH NOCHECK ADD  CONSTRAINT [FK_PayoffByFlag_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[PayoffByFlag] NOCHECK CONSTRAINT [FK_PayoffByFlag_Race]
GO
ALTER TABLE [dbo].[PayoffByHenkanDoWaku]  WITH CHECK ADD  CONSTRAINT [FK_PayoffByHenkanDoWaku_Payoff] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Payoff] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PayoffByHenkanDoWaku] CHECK CONSTRAINT [FK_PayoffByHenkanDoWaku_Payoff]
GO
ALTER TABLE [dbo].[PayoffByHenkanDoWaku]  WITH NOCHECK ADD  CONSTRAINT [FK_PayoffByHenkanDoWaku_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[PayoffByHenkanDoWaku] NOCHECK CONSTRAINT [FK_PayoffByHenkanDoWaku_Race]
GO
ALTER TABLE [dbo].[PayoffByHenkanUma]  WITH CHECK ADD  CONSTRAINT [FK_PayoffByHenkanUma_Payoff] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Payoff] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PayoffByHenkanUma] CHECK CONSTRAINT [FK_PayoffByHenkanUma_Payoff]
GO
ALTER TABLE [dbo].[PayoffByHenkanUma]  WITH NOCHECK ADD  CONSTRAINT [FK_PayoffByHenkanUma_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[PayoffByHenkanUma] NOCHECK CONSTRAINT [FK_PayoffByHenkanUma_Race]
GO
ALTER TABLE [dbo].[PayoffByHenkanWaku]  WITH CHECK ADD  CONSTRAINT [FK_PayoffByHenkanWaku_Payoff] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Payoff] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PayoffByHenkanWaku] CHECK CONSTRAINT [FK_PayoffByHenkanWaku_Payoff]
GO
ALTER TABLE [dbo].[PayoffByHenkanWaku]  WITH NOCHECK ADD  CONSTRAINT [FK_PayoffByHenkanWaku_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[PayoffByHenkanWaku] NOCHECK CONSTRAINT [FK_PayoffByHenkanWaku_Race]
GO
ALTER TABLE [dbo].[PayoffByPayAll]  WITH NOCHECK ADD  CONSTRAINT [FK_PayoffByPayAll_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[PayoffByPayAll] NOCHECK CONSTRAINT [FK_PayoffByPayAll_MasterBetType]
GO
ALTER TABLE [dbo].[PayoffByPayAll]  WITH CHECK ADD  CONSTRAINT [FK_PayoffByPayAll_Payoff] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Payoff] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PayoffByPayAll] CHECK CONSTRAINT [FK_PayoffByPayAll_Payoff]
GO
ALTER TABLE [dbo].[PayoffByPayAll]  WITH NOCHECK ADD  CONSTRAINT [FK_PayoffByPayAll_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[PayoffByPayAll] NOCHECK CONSTRAINT [FK_PayoffByPayAll_Race]
GO
ALTER TABLE [dbo].[PredictByBracket]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByBracket_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[PredictByBracket] NOCHECK CONSTRAINT [FK_PredictByBracket_MasterBetType]
GO
ALTER TABLE [dbo].[PredictByExacta]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByExacta_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[PredictByExacta] NOCHECK CONSTRAINT [FK_PredictByExacta_MasterBetType]
GO
ALTER TABLE [dbo].[PredictByExacta]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByExacta_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[PredictByExacta] NOCHECK CONSTRAINT [FK_PredictByExacta_Race]
GO
ALTER TABLE [dbo].[PredictByPlace]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByPlace_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[PredictByPlace] NOCHECK CONSTRAINT [FK_PredictByPlace_MasterBetType]
GO
ALTER TABLE [dbo].[PredictByPlace]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByPlace_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[PredictByPlace] NOCHECK CONSTRAINT [FK_PredictByPlace_Race]
GO
ALTER TABLE [dbo].[PredictByQuinella]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByQuinella_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[PredictByQuinella] NOCHECK CONSTRAINT [FK_PredictByQuinella_MasterBetType]
GO
ALTER TABLE [dbo].[PredictByQuinella]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByQuinella_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[PredictByQuinella] NOCHECK CONSTRAINT [FK_PredictByQuinella_Race]
GO
ALTER TABLE [dbo].[PredictByTrifecta]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByTrifecta_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[PredictByTrifecta] NOCHECK CONSTRAINT [FK_PredictByTrifecta_MasterBetType]
GO
ALTER TABLE [dbo].[PredictByTrifecta]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByTrifecta_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[PredictByTrifecta] NOCHECK CONSTRAINT [FK_PredictByTrifecta_Race]
GO
ALTER TABLE [dbo].[PredictByTrio]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByTrio_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[PredictByTrio] NOCHECK CONSTRAINT [FK_PredictByTrio_MasterBetType]
GO
ALTER TABLE [dbo].[PredictByTrio]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByTrio_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[PredictByTrio] NOCHECK CONSTRAINT [FK_PredictByTrio_Race]
GO
ALTER TABLE [dbo].[PredictByWide]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByWide_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[PredictByWide] NOCHECK CONSTRAINT [FK_PredictByWide_MasterBetType]
GO
ALTER TABLE [dbo].[PredictByWide]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByWide_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[PredictByWide] NOCHECK CONSTRAINT [FK_PredictByWide_Race]
GO
ALTER TABLE [dbo].[PredictByWin]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByWin_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[PredictByWin] NOCHECK CONSTRAINT [FK_PredictByWin_MasterBetType]
GO
ALTER TABLE [dbo].[PredictByWin]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByWin_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[PredictByWin] NOCHECK CONSTRAINT [FK_PredictByWin_Race]
GO
ALTER TABLE [dbo].[PredictByWinFive]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByWinFive_MasterBetType] FOREIGN KEY([BetTypeId])
REFERENCES [dbo].[MasterBetType] ([BetTypeId])
GO
ALTER TABLE [dbo].[PredictByWinFive] NOCHECK CONSTRAINT [FK_PredictByWinFive_MasterBetType]
GO
ALTER TABLE [dbo].[PredictByWinFive]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByWinFive_Race1] FOREIGN KEY([RaceId1])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[PredictByWinFive] NOCHECK CONSTRAINT [FK_PredictByWinFive_Race1]
GO
ALTER TABLE [dbo].[PredictByWinFive]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByWinFive_Race2] FOREIGN KEY([RaceId2])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[PredictByWinFive] NOCHECK CONSTRAINT [FK_PredictByWinFive_Race2]
GO
ALTER TABLE [dbo].[PredictByWinFive]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByWinFive_Race3] FOREIGN KEY([RaceId3])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[PredictByWinFive] NOCHECK CONSTRAINT [FK_PredictByWinFive_Race3]
GO
ALTER TABLE [dbo].[PredictByWinFive]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByWinFive_Race4] FOREIGN KEY([RaceId4])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[PredictByWinFive] NOCHECK CONSTRAINT [FK_PredictByWinFive_Race4]
GO
ALTER TABLE [dbo].[PredictByWinFive]  WITH NOCHECK ADD  CONSTRAINT [FK_PredictByWinFive_Race5] FOREIGN KEY([RaceId5])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[PredictByWinFive] NOCHECK CONSTRAINT [FK_PredictByWinFive_Race5]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_Master2Class] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Master2Class] ([ClassId])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_Master2Class]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_Master2Distance] FOREIGN KEY([DistanceId])
REFERENCES [dbo].[Master2Distance] ([DistanceId])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_Master2Distance]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_Master2RaceType1] FOREIGN KEY([RaceType1Id])
REFERENCES [dbo].[Master2RaceType1] ([RaceType1Id])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_Master2RaceType1]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_Master2RaceType2] FOREIGN KEY([RaceType2Id])
REFERENCES [dbo].[Master2RaceType2] ([RaceType2Id])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_Master2RaceType2]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_Master2RaceType3] FOREIGN KEY([RaceType3Id])
REFERENCES [dbo].[Master2RaceType3] ([RaceType3Id])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_Master2RaceType3]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_Master2RaceType4] FOREIGN KEY([RaceType4Id])
REFERENCES [dbo].[Master2RaceType4] ([RaceType4Id])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_Master2RaceType4]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_Master2RaceType5] FOREIGN KEY([RaceType5Id])
REFERENCES [dbo].[Master2RaceType5] ([RaceType5Id])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_Master2RaceType5]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_Master2RaceType6] FOREIGN KEY([RaceType6Id])
REFERENCES [dbo].[Master2RaceType6] ([RaceType6Id])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_Master2RaceType6]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_Master2RaceType7] FOREIGN KEY([RaceType7Id])
REFERENCES [dbo].[Master2RaceType7] ([RaceType7Id])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_Master2RaceType7]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_Master2RaceType8] FOREIGN KEY([RaceType8Id])
REFERENCES [dbo].[Master2RaceType8] ([RaceType8Id])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_Master2RaceType8]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_Master2RaceType9] FOREIGN KEY([RaceType9Id])
REFERENCES [dbo].[Master2RaceType9] ([RaceType9Id])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_Master2RaceType9]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_MasterCourseKubun] FOREIGN KEY([CourseKubunId])
REFERENCES [dbo].[MasterCourseKubun] ([CourseKubunId])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_MasterCourseKubun]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_MasterCourseType] FOREIGN KEY([CourseTypeId])
REFERENCES [dbo].[MasterCourseType] ([CourseTypeId])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_MasterCourseType]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_MasterDistanceType] FOREIGN KEY([DistanceTypeId])
REFERENCES [dbo].[MasterDistanceType] ([DistanceTypeId])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_MasterDistanceType]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_MasterDistanceType2] FOREIGN KEY([DistanceType2Id])
REFERENCES [dbo].[MasterDistanceType2] ([DistanceType2Id])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_MasterDistanceType2]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_MasterGrade] FOREIGN KEY([GradeId])
REFERENCES [dbo].[MasterGrade] ([GradeId])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_MasterGrade]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_MasterJyoken] FOREIGN KEY([JyokenId])
REFERENCES [dbo].[MasterJyoken] ([JyokenId])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_MasterJyoken]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_MasterJyoken5] FOREIGN KEY([Jyoken5Id])
REFERENCES [dbo].[MasterJyoken5] ([Jyoken5Id])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_MasterJyoken5]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_MasterJyuryo] FOREIGN KEY([JyuryoId])
REFERENCES [dbo].[MasterJyuryo] ([JyuryoId])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_MasterJyuryo]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_MasterKigo] FOREIGN KEY([KigoId])
REFERENCES [dbo].[MasterKigo] ([KigoId])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_MasterKigo]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_MasterPlace]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_MasterSmile] FOREIGN KEY([SmileId])
REFERENCES [dbo].[MasterSmile] ([SmileId])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_MasterSmile]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_MasterSyubetu] FOREIGN KEY([SyubetuId])
REFERENCES [dbo].[MasterSyubetu] ([SyubetuId])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_MasterSyubetu]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_MasterTenko] FOREIGN KEY([TenkoId])
REFERENCES [dbo].[MasterTenko] ([TenkoId])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_MasterTenko]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_MasterTrack] FOREIGN KEY([TrackId])
REFERENCES [dbo].[MasterTrack] ([TrackId])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_MasterTrack]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_MasterTrackCondition] FOREIGN KEY([TrackConditionId])
REFERENCES [dbo].[MasterTrackCondition] ([TrackConditionId])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_MasterTrackCondition]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_MasterTrackType] FOREIGN KEY([TrackTypeId])
REFERENCES [dbo].[MasterTrackType] ([TrackTypeId])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_MasterTrackType]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_MasterTrackType2] FOREIGN KEY([TrackType2Id])
REFERENCES [dbo].[MasterTrackType2] ([TrackType2Id])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_MasterTrackType2]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_MasterTrackType3] FOREIGN KEY([TrackType3Id])
REFERENCES [dbo].[MasterTrackType3] ([TrackType3Id])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_MasterTrackType3]
GO
ALTER TABLE [dbo].[Race]  WITH NOCHECK ADD  CONSTRAINT [FK_Race_MasterYoubi] FOREIGN KEY([YoubiId])
REFERENCES [dbo].[MasterYoubi] ([YoubiId])
GO
ALTER TABLE [dbo].[Race] NOCHECK CONSTRAINT [FK_Race_MasterYoubi]
GO
ALTER TABLE [dbo].[RaceByCornerPosition]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceByCornerPosition_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceByCornerPosition] CHECK CONSTRAINT [FK_RaceByCornerPosition_Race]
GO
ALTER TABLE [dbo].[RaceByLapTime]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceByLapTime_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceByLapTime] CHECK CONSTRAINT [FK_RaceByLapTime_Race]
GO
ALTER TABLE [dbo].[RaceExclusion]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceExclusion_MasterJyo] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[RaceExclusion] NOCHECK CONSTRAINT [FK_RaceExclusion_MasterJyo]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_Banusi] FOREIGN KEY([BanusiId])
REFERENCES [dbo].[Banusi] ([BanusiId])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_Banusi]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_Horse]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_Horse_KettoNum1] FOREIGN KEY([Finish01HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_Horse_KettoNum1]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_Horse_KettoNum2] FOREIGN KEY([Finish02HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_Horse_KettoNum2]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_Horse_KettoNum3] FOREIGN KEY([Finish03HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_Horse_KettoNum3]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_Jocky] FOREIGN KEY([JockeyId])
REFERENCES [dbo].[Jockey] ([JockeyId])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_Jocky]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_Master2Handicap] FOREIGN KEY([Handicap])
REFERENCES [dbo].[Master2Handicap] ([Handicap])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_Master2Handicap]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_Master2Ninki] FOREIGN KEY([Ninki])
REFERENCES [dbo].[Master2Ninki] ([Ninki])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_Master2Ninki]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_Master2Weight] FOREIGN KEY([Weight])
REFERENCES [dbo].[Master2Weight] ([Weight])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_Master2Weight]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_MasterChakusa] FOREIGN KEY([ChakusaId])
REFERENCES [dbo].[MasterChakusa] ([ChakusaId])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_MasterChakusa]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_MasterHinsyu] FOREIGN KEY([HinsyuId])
REFERENCES [dbo].[MasterHinsyu] ([HinsyuId])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_MasterHinsyu]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_MasterIjyo] FOREIGN KEY([StatsId])
REFERENCES [dbo].[MasterStats] ([StatsId])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_MasterIjyo]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_MasterKeiro] FOREIGN KEY([KeiroId])
REFERENCES [dbo].[MasterKeiro] ([KeiroId])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_MasterKeiro]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_MasterMinarai] FOREIGN KEY([MinaraiId])
REFERENCES [dbo].[MasterMinarai] ([MinaraiId])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_MasterMinarai]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_MasterPlace]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_MasterRunType] FOREIGN KEY([RunType])
REFERENCES [dbo].[MasterRunType] ([RunTypeId])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_MasterRunType]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_MasterSex] FOREIGN KEY([SexId])
REFERENCES [dbo].[MasterSex] ([SexId])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_MasterSex]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_MasterTozai] FOREIGN KEY([TozaiId])
REFERENCES [dbo].[MasterTozai] ([TozaiId])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_MasterTozai]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_MasterUmaban] FOREIGN KEY([HorseNum])
REFERENCES [dbo].[MasterHorseNum] ([HorseNum])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_MasterUmaban]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_MasterUmakigo] FOREIGN KEY([UmaKigoId])
REFERENCES [dbo].[MasterUmaKigo] ([UmaKigoId])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_MasterUmakigo]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_MasterWakuban] FOREIGN KEY([BracketNum])
REFERENCES [dbo].[MasterBracketNum] ([BracketNum])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_MasterWakuban]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_Race]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_Silk] FOREIGN KEY([SilkId])
REFERENCES [dbo].[Silk] ([SilkId])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_Silk]
GO
ALTER TABLE [dbo].[RaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorse_Trainer] FOREIGN KEY([TrainerId])
REFERENCES [dbo].[Trainer] ([TrainerId])
GO
ALTER TABLE [dbo].[RaceHorse] NOCHECK CONSTRAINT [FK_RaceHorse_Trainer]
GO
ALTER TABLE [dbo].[RaceHorseHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistory_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistory] NOCHECK CONSTRAINT [FK_RaceHorseHistory_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistory_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistory] NOCHECK CONSTRAINT [FK_RaceHorseHistory_MasterPlace]
GO
ALTER TABLE [dbo].[RaceHorseHistory]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistory_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistory] NOCHECK CONSTRAINT [FK_RaceHorseHistory_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusi]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByBanusi_Banusi] FOREIGN KEY([BanusiId])
REFERENCES [dbo].[Banusi] ([BanusiId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusi] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByBanusi_Banusi]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusi]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByBanusi_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusi] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByBanusi_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusi]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByBanusi_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusi] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByBanusi_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusi]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByBanusi_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusi] CHECK CONSTRAINT [FK_RaceHorseHistoryByBanusi_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusiByTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByBanusiByTotal_Banusi] FOREIGN KEY([BanusiId])
REFERENCES [dbo].[Banusi] ([BanusiId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusiByTotal] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByBanusiByTotal_Banusi]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusiByTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByBanusiByTotal_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusiByTotal] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByBanusiByTotal_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusiByTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByBanusiByTotal_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusiByTotal] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByBanusiByTotal_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusiByTotal]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByBanusiByTotal_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBanusiByTotal] CHECK CONSTRAINT [FK_RaceHorseHistoryByBanusiByTotal_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreeder]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByBreeder_Breeder] FOREIGN KEY([BreederId])
REFERENCES [dbo].[Breeder] ([BreederId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreeder] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByBreeder_Breeder]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreeder]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByBreeder_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreeder] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByBreeder_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreeder]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByBreeder_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreeder] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByBreeder_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreeder]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByBreeder_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreeder] CHECK CONSTRAINT [FK_RaceHorseHistoryByBreeder_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreederByTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByBreederByTotal_Breeder] FOREIGN KEY([BreederId])
REFERENCES [dbo].[Breeder] ([BreederId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreederByTotal] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByBreederByTotal_Breeder]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreederByTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByBreederByTotal_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreederByTotal] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByBreederByTotal_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreederByTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByBreederByTotal_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreederByTotal] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByBreederByTotal_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreederByTotal]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByBreederByTotal_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByBreederByTotal] CHECK CONSTRAINT [FK_RaceHorseHistoryByBreederByTotal_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorse_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorse] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorse_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorse_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorse] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorse_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorse]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorse_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorse] CHECK CONSTRAINT [FK_RaceHorseHistoryByHorse_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByCourseType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByCourseType_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByCourseType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByCourseType_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByCourseType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByCourseType_MasterCourseType] FOREIGN KEY([CourseTypeId])
REFERENCES [dbo].[MasterCourseType] ([CourseTypeId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByCourseType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByCourseType_MasterCourseType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByCourseType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByCourseType_MasterTrackType] FOREIGN KEY([TrackTypeId])
REFERENCES [dbo].[MasterTrackType] ([TrackTypeId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByCourseType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByCourseType_MasterTrackType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByCourseType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByCourseType_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByCourseType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByCourseType_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByCourseType]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByCourseType_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByCourseType] CHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByCourseType_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByDistanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByDistanceType_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByDistanceType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByDistanceType_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByDistanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByDistanceType_MasterDistanceType] FOREIGN KEY([DistanceTypeId])
REFERENCES [dbo].[MasterDistanceType] ([DistanceTypeId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByDistanceType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByDistanceType_MasterDistanceType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByDistanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByDistanceType_MasterTrackType] FOREIGN KEY([TrackTypeId])
REFERENCES [dbo].[MasterTrackType] ([TrackTypeId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByDistanceType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByDistanceType_MasterTrackType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByDistanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByDistanceType_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByDistanceType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByDistanceType_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByDistanceType]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByDistanceType_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByDistanceType] CHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByDistanceType_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByJyo]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByJyo_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByJyo] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByJyo_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByJyo]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByJyo_MasterJyo] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByJyo] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByJyo_MasterJyo]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByJyo]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByJyo_MasterTrackType] FOREIGN KEY([TrackTypeId])
REFERENCES [dbo].[MasterTrackType] ([TrackTypeId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByJyo] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByJyo_MasterTrackType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByJyo]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByJyo_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByJyo] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByJyo_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByJyo]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByJyo_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByJyo] CHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByJyo_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByRunType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByRunType_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByRunType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByRunType_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByRunType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByRunType_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByRunType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByRunType_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByRunType]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByRunType_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByRunType] CHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByRunType_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByTotal_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTotal] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByTotal_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByTotal_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTotal] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByTotal_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTotal]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByTotal_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTotal] CHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByTotal_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackCondition]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackCondition_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackCondition] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackCondition_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackCondition]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackCondition_MasterTrackCondition] FOREIGN KEY([TrackConditionId])
REFERENCES [dbo].[MasterTrackCondition] ([TrackConditionId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackCondition] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackCondition_MasterTrackCondition]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackCondition]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackCondition_MasterTrackType] FOREIGN KEY([TrackTypeId])
REFERENCES [dbo].[MasterTrackType] ([TrackTypeId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackCondition] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackCondition_MasterTrackType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackCondition]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackCondition_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackCondition] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackCondition_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackCondition]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackCondition_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackCondition] CHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackCondition_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackType_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackType_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackType_MasterTrackType] FOREIGN KEY([TrackTypeId])
REFERENCES [dbo].[MasterTrackType] ([TrackTypeId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackType_MasterTrackType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackType_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackType_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackType]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackType_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByHorseByTrackType] CHECK CONSTRAINT [FK_RaceHorseHistoryByHorseByTrackType_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockey]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByJocky_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockey] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByJocky_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockey]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByJocky_Jocky] FOREIGN KEY([JockeyId])
REFERENCES [dbo].[Jockey] ([JockeyId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockey] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByJocky_Jocky]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockey]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByJocky_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockey] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByJocky_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockey]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByJocky_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockey] CHECK CONSTRAINT [FK_RaceHorseHistoryByJocky_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByDistanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByJockeyByDistanceType_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByDistanceType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByJockeyByDistanceType_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByDistanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByJockeyByDistanceType_MasterTrackType2] FOREIGN KEY([TrackType2Id])
REFERENCES [dbo].[MasterTrackType2] ([TrackType2Id])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByDistanceType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByJockeyByDistanceType_MasterTrackType2]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByDistanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByJockeyByDistanceType_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByDistanceType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByJockeyByDistanceType_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByDistanceType]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByJockeyByDistanceType_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByDistanceType] CHECK CONSTRAINT [FK_RaceHorseHistoryByJockeyByDistanceType_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByJyo]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByJockeyByJyo_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByJyo] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByJockeyByJyo_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByJyo]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByJockeyByJyo_MasterJyo] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByJyo] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByJockeyByJyo_MasterJyo]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByJyo]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByJockeyByJyo_MasterTrackType] FOREIGN KEY([TrackTypeId])
REFERENCES [dbo].[MasterTrackType] ([TrackTypeId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByJyo] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByJockeyByJyo_MasterTrackType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByJyo]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByJockeyByJyo_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByJyo] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByJockeyByJyo_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByJyo]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByJockeyByJyo_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByJyo] CHECK CONSTRAINT [FK_RaceHorseHistoryByJockeyByJyo_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByTrackType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByJockeyByTrackType_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByTrackType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByJockeyByTrackType_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByTrackType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByJockeyByTrackType_MasterTrackType] FOREIGN KEY([TrackTypeId])
REFERENCES [dbo].[MasterTrackType] ([TrackTypeId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByTrackType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByJockeyByTrackType_MasterTrackType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByTrackType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByJockeyByTrackType_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByTrackType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByJockeyByTrackType_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByTrackType]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByJockeyByTrackType_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByJockeyByTrackType] CHECK CONSTRAINT [FK_RaceHorseHistoryByJockeyByTrackType_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainer]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByTrainer_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainer] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByTrainer_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainer]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByTrainer_MasterJyo] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainer] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByTrainer_MasterJyo]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainer]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByTrainer_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainer] CHECK CONSTRAINT [FK_RaceHorseHistoryByTrainer_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainer]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByTrainer_Trainer] FOREIGN KEY([TrainerId])
REFERENCES [dbo].[Trainer] ([TrainerId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainer] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByTrainer_Trainer]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainer]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByTrainerRace] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainer] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByTrainerRace]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByDistanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByTrainerByDistanceType_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByDistanceType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByTrainerByDistanceType_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByDistanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByTrainerByDistanceType_MasterTrackType2] FOREIGN KEY([TrackType2Id])
REFERENCES [dbo].[MasterTrackType2] ([TrackType2Id])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByDistanceType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByTrainerByDistanceType_MasterTrackType2]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByDistanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByTrainerByDistanceType_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByDistanceType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByTrainerByDistanceType_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByDistanceType]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByTrainerByDistanceType_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByDistanceType] CHECK CONSTRAINT [FK_RaceHorseHistoryByTrainerByDistanceType_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByJyo]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByTrainerByJyo_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByJyo] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByTrainerByJyo_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByJyo]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByTrainerByJyo_MasterTrackType] FOREIGN KEY([TrackTypeId])
REFERENCES [dbo].[MasterTrackType] ([TrackTypeId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByJyo] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByTrainerByJyo_MasterTrackType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByJyo]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByTrainerByJyo_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByJyo] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByTrainerByJyo_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByJyo]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByTrainerByJyo_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByJyo] CHECK CONSTRAINT [FK_RaceHorseHistoryByTrainerByJyo_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByTrackType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByTrainerByTrackType_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByTrackType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByTrainerByTrackType_Horse]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByTrackType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByTrainerByTrackType_MasterTrackType] FOREIGN KEY([TrackTypeId])
REFERENCES [dbo].[MasterTrackType] ([TrackTypeId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByTrackType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByTrainerByTrackType_MasterTrackType]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByTrackType]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByTrainerByTrackType_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByTrackType] NOCHECK CONSTRAINT [FK_RaceHorseHistoryByTrainerByTrackType_Race]
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByTrackType]  WITH CHECK ADD  CONSTRAINT [FK_RaceHorseHistoryByTrainerByTrackType_RaceHorseHistory] FOREIGN KEY([RaceId], [HorseId])
REFERENCES [dbo].[RaceHorseHistory] ([RaceId], [HorseId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RaceHorseHistoryByTrainerByTrackType] CHECK CONSTRAINT [FK_RaceHorseHistoryByTrainerByTrackType_RaceHorseHistory]
GO
ALTER TABLE [dbo].[RaceInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceInfo_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceInfo] NOCHECK CONSTRAINT [FK_RaceInfo_Race]
GO
ALTER TABLE [dbo].[RaceRecord]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceRecord_MasterJyo] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[RaceRecord] NOCHECK CONSTRAINT [FK_RaceRecord_MasterJyo]
GO
ALTER TABLE [dbo].[RaceRecord]  WITH NOCHECK ADD  CONSTRAINT [FK_RaceRecord_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[RaceRecord] NOCHECK CONSTRAINT [FK_RaceRecord_Race]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_Master2Class] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Master2Class] ([ClassId])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_Master2Class]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_Master2Distance] FOREIGN KEY([DistanceId])
REFERENCES [dbo].[Master2Distance] ([DistanceId])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_Master2Distance]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_Master2RaceType1] FOREIGN KEY([RaceType1Id])
REFERENCES [dbo].[Master2RaceType1] ([RaceType1Id])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_Master2RaceType1]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_Master2RaceType2] FOREIGN KEY([RaceType2Id])
REFERENCES [dbo].[Master2RaceType2] ([RaceType2Id])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_Master2RaceType2]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_Master2RaceType3] FOREIGN KEY([RaceType3Id])
REFERENCES [dbo].[Master2RaceType3] ([RaceType3Id])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_Master2RaceType3]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_Master2RaceType4] FOREIGN KEY([RaceType4Id])
REFERENCES [dbo].[Master2RaceType4] ([RaceType4Id])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_Master2RaceType4]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_Master2RaceType5] FOREIGN KEY([RaceType5Id])
REFERENCES [dbo].[Master2RaceType5] ([RaceType5Id])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_Master2RaceType5]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_Master2RaceType6] FOREIGN KEY([RaceType6Id])
REFERENCES [dbo].[Master2RaceType6] ([RaceType6Id])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_Master2RaceType6]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_Master2RaceType7] FOREIGN KEY([RaceType7Id])
REFERENCES [dbo].[Master2RaceType7] ([RaceType7Id])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_Master2RaceType7]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_Master2RaceType8] FOREIGN KEY([RaceType8Id])
REFERENCES [dbo].[Master2RaceType8] ([RaceType8Id])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_Master2RaceType8]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_Master2RaceType9] FOREIGN KEY([RaceType9Id])
REFERENCES [dbo].[Master2RaceType9] ([RaceType9Id])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_Master2RaceType9]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_MasterCourseKubun] FOREIGN KEY([CourseKubunId])
REFERENCES [dbo].[MasterCourseKubun] ([CourseKubunId])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_MasterCourseKubun]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_MasterCourseType] FOREIGN KEY([CourseTypeId])
REFERENCES [dbo].[MasterCourseType] ([CourseTypeId])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_MasterCourseType]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_MasterDistanceType] FOREIGN KEY([DistanceTypeId])
REFERENCES [dbo].[MasterDistanceType] ([DistanceTypeId])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_MasterDistanceType]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_MasterDistanceType2] FOREIGN KEY([DistanceType2Id])
REFERENCES [dbo].[MasterDistanceType2] ([DistanceType2Id])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_MasterDistanceType2]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_MasterGrade] FOREIGN KEY([GradeId])
REFERENCES [dbo].[MasterGrade] ([GradeId])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_MasterGrade]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_MasterJyoken] FOREIGN KEY([JyokenId])
REFERENCES [dbo].[MasterJyoken] ([JyokenId])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_MasterJyoken]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_MasterJyoken5] FOREIGN KEY([Jyoken5Id])
REFERENCES [dbo].[MasterJyoken5] ([Jyoken5Id])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_MasterJyoken5]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_MasterJyuryo] FOREIGN KEY([JyuryoId])
REFERENCES [dbo].[MasterJyuryo] ([JyuryoId])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_MasterJyuryo]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_MasterKigo] FOREIGN KEY([KigoId])
REFERENCES [dbo].[MasterKigo] ([KigoId])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_MasterKigo]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_MasterPlace]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_MasterSmile] FOREIGN KEY([SmileId])
REFERENCES [dbo].[MasterSmile] ([SmileId])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_MasterSmile]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_MasterSyubetu] FOREIGN KEY([SyubetuId])
REFERENCES [dbo].[MasterSyubetu] ([SyubetuId])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_MasterSyubetu]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_MasterTenko] FOREIGN KEY([TenkoId])
REFERENCES [dbo].[MasterTenko] ([TenkoId])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_MasterTenko]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_MasterTrack] FOREIGN KEY([TrackId])
REFERENCES [dbo].[MasterTrack] ([TrackId])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_MasterTrack]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_MasterTrackCondition] FOREIGN KEY([TrackConditionId])
REFERENCES [dbo].[MasterTrackCondition] ([TrackConditionId])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_MasterTrackCondition]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_MasterTrackType] FOREIGN KEY([TrackTypeId])
REFERENCES [dbo].[MasterTrackType] ([TrackTypeId])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_MasterTrackType]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_MasterTrackType2] FOREIGN KEY([TrackType2Id])
REFERENCES [dbo].[MasterTrackType2] ([TrackType2Id])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_MasterTrackType2]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_MasterTrackType3] FOREIGN KEY([TrackType3Id])
REFERENCES [dbo].[MasterTrackType3] ([TrackType3Id])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_MasterTrackType3]
GO
ALTER TABLE [dbo].[ReplRace]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRace_MasterYoubi] FOREIGN KEY([YoubiId])
REFERENCES [dbo].[MasterYoubi] ([YoubiId])
GO
ALTER TABLE [dbo].[ReplRace] NOCHECK CONSTRAINT [FK_ReplRace_MasterYoubi]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_Banusi] FOREIGN KEY([BanusiId])
REFERENCES [dbo].[Banusi] ([BanusiId])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_Banusi]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_Horse]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_Horse_KettoNum1] FOREIGN KEY([Finish01HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_Horse_KettoNum1]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_Horse_KettoNum2] FOREIGN KEY([Finish02HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_Horse_KettoNum2]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_Horse_KettoNum3] FOREIGN KEY([Finish03HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_Horse_KettoNum3]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_Jocky] FOREIGN KEY([JockeyId])
REFERENCES [dbo].[Jockey] ([JockeyId])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_Jocky]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_Master2Handicap] FOREIGN KEY([Handicap])
REFERENCES [dbo].[Master2Handicap] ([Handicap])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_Master2Handicap]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_Master2Ninki] FOREIGN KEY([Ninki])
REFERENCES [dbo].[Master2Ninki] ([Ninki])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_Master2Ninki]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_Master2Weight] FOREIGN KEY([Weight])
REFERENCES [dbo].[Master2Weight] ([Weight])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_Master2Weight]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_MasterChakusa] FOREIGN KEY([ChakusaId])
REFERENCES [dbo].[MasterChakusa] ([ChakusaId])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_MasterChakusa]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_MasterHinsyu] FOREIGN KEY([HinsyuId])
REFERENCES [dbo].[MasterHinsyu] ([HinsyuId])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_MasterHinsyu]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_MasterIjyo] FOREIGN KEY([StatsId])
REFERENCES [dbo].[MasterStats] ([StatsId])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_MasterIjyo]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_MasterKeiro] FOREIGN KEY([KeiroId])
REFERENCES [dbo].[MasterKeiro] ([KeiroId])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_MasterKeiro]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_MasterMinarai] FOREIGN KEY([MinaraiId])
REFERENCES [dbo].[MasterMinarai] ([MinaraiId])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_MasterMinarai]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_MasterPlace]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_MasterRunType] FOREIGN KEY([RunType])
REFERENCES [dbo].[MasterRunType] ([RunTypeId])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_MasterRunType]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_MasterSex] FOREIGN KEY([SexId])
REFERENCES [dbo].[MasterSex] ([SexId])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_MasterSex]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_MasterTozai] FOREIGN KEY([TozaiId])
REFERENCES [dbo].[MasterTozai] ([TozaiId])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_MasterTozai]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_MasterUmaban] FOREIGN KEY([HorseNum])
REFERENCES [dbo].[MasterHorseNum] ([HorseNum])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_MasterUmaban]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_MasterUmakigo] FOREIGN KEY([UmaKigoId])
REFERENCES [dbo].[MasterUmaKigo] ([UmaKigoId])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_MasterUmakigo]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_MasterWakuban] FOREIGN KEY([BracketNum])
REFERENCES [dbo].[MasterBracketNum] ([BracketNum])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_MasterWakuban]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_Race]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_Silk] FOREIGN KEY([SilkId])
REFERENCES [dbo].[Silk] ([SilkId])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_Silk]
GO
ALTER TABLE [dbo].[ReplRaceHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_ReplRaceHorse_Trainer] FOREIGN KEY([TrainerId])
REFERENCES [dbo].[Trainer] ([TrainerId])
GO
ALTER TABLE [dbo].[ReplRaceHorse] NOCHECK CONSTRAINT [FK_ReplRaceHorse_Trainer]
GO
ALTER TABLE [dbo].[Sale]  WITH NOCHECK ADD  CONSTRAINT [FK_Sale_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[Sale] NOCHECK CONSTRAINT [FK_Sale_Horse]
GO
ALTER TABLE [dbo].[Sanku]  WITH NOCHECK ADD  CONSTRAINT [FK_Sanku_Breeder] FOREIGN KEY([BreederId])
REFERENCES [dbo].[Breeder] ([BreederId])
GO
ALTER TABLE [dbo].[Sanku] NOCHECK CONSTRAINT [FK_Sanku_Breeder]
GO
ALTER TABLE [dbo].[Sanku]  WITH NOCHECK ADD  CONSTRAINT [FK_Sanku_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[Sanku] NOCHECK CONSTRAINT [FK_Sanku_Horse]
GO
ALTER TABLE [dbo].[Sanku]  WITH NOCHECK ADD  CONSTRAINT [FK_Sanku_MasterHinsyu] FOREIGN KEY([HinsyuId])
REFERENCES [dbo].[MasterHinsyu] ([HinsyuId])
GO
ALTER TABLE [dbo].[Sanku] NOCHECK CONSTRAINT [FK_Sanku_MasterHinsyu]
GO
ALTER TABLE [dbo].[Sanku]  WITH NOCHECK ADD  CONSTRAINT [FK_Sanku_MasterKeiro] FOREIGN KEY([KeiroId])
REFERENCES [dbo].[MasterKeiro] ([KeiroId])
GO
ALTER TABLE [dbo].[Sanku] NOCHECK CONSTRAINT [FK_Sanku_MasterKeiro]
GO
ALTER TABLE [dbo].[Schedule]  WITH NOCHECK ADD  CONSTRAINT [FK_Schedule_MasterGrade_Jyusyo1] FOREIGN KEY([Jyusyo1GradeId])
REFERENCES [dbo].[MasterGrade] ([GradeId])
GO
ALTER TABLE [dbo].[Schedule] NOCHECK CONSTRAINT [FK_Schedule_MasterGrade_Jyusyo1]
GO
ALTER TABLE [dbo].[Schedule]  WITH NOCHECK ADD  CONSTRAINT [FK_Schedule_MasterGrade_Jyusyo2] FOREIGN KEY([Jyusyo2GradeId])
REFERENCES [dbo].[MasterGrade] ([GradeId])
GO
ALTER TABLE [dbo].[Schedule] NOCHECK CONSTRAINT [FK_Schedule_MasterGrade_Jyusyo2]
GO
ALTER TABLE [dbo].[Schedule]  WITH NOCHECK ADD  CONSTRAINT [FK_Schedule_MasterGrade_Jyusyo3] FOREIGN KEY([Jyusyo3GradeId])
REFERENCES [dbo].[MasterGrade] ([GradeId])
GO
ALTER TABLE [dbo].[Schedule] NOCHECK CONSTRAINT [FK_Schedule_MasterGrade_Jyusyo3]
GO
ALTER TABLE [dbo].[Schedule]  WITH NOCHECK ADD  CONSTRAINT [FK_Schedule_MasterJyuryo_Jyusyo1] FOREIGN KEY([Jyusyo1JyuryoId])
REFERENCES [dbo].[MasterJyuryo] ([JyuryoId])
GO
ALTER TABLE [dbo].[Schedule] NOCHECK CONSTRAINT [FK_Schedule_MasterJyuryo_Jyusyo1]
GO
ALTER TABLE [dbo].[Schedule]  WITH NOCHECK ADD  CONSTRAINT [FK_Schedule_MasterJyuryo_Jyusyo2] FOREIGN KEY([Jyusyo2JyuryoId])
REFERENCES [dbo].[MasterJyuryo] ([JyuryoId])
GO
ALTER TABLE [dbo].[Schedule] NOCHECK CONSTRAINT [FK_Schedule_MasterJyuryo_Jyusyo2]
GO
ALTER TABLE [dbo].[Schedule]  WITH NOCHECK ADD  CONSTRAINT [FK_Schedule_MasterJyuryo_Jyusyo3] FOREIGN KEY([Jyusyo3JyuryoId])
REFERENCES [dbo].[MasterJyuryo] ([JyuryoId])
GO
ALTER TABLE [dbo].[Schedule] NOCHECK CONSTRAINT [FK_Schedule_MasterJyuryo_Jyusyo3]
GO
ALTER TABLE [dbo].[Schedule]  WITH NOCHECK ADD  CONSTRAINT [FK_Schedule_MasterKigo_Jyusyo1] FOREIGN KEY([Jyusyo1KigoId])
REFERENCES [dbo].[MasterKigo] ([KigoId])
GO
ALTER TABLE [dbo].[Schedule] NOCHECK CONSTRAINT [FK_Schedule_MasterKigo_Jyusyo1]
GO
ALTER TABLE [dbo].[Schedule]  WITH NOCHECK ADD  CONSTRAINT [FK_Schedule_MasterKigo_Jyusyo2] FOREIGN KEY([Jyusyo2KigoId])
REFERENCES [dbo].[MasterKigo] ([KigoId])
GO
ALTER TABLE [dbo].[Schedule] NOCHECK CONSTRAINT [FK_Schedule_MasterKigo_Jyusyo2]
GO
ALTER TABLE [dbo].[Schedule]  WITH NOCHECK ADD  CONSTRAINT [FK_Schedule_MasterKigo_Jyusyo3] FOREIGN KEY([Jyusyo3KigoId])
REFERENCES [dbo].[MasterKigo] ([KigoId])
GO
ALTER TABLE [dbo].[Schedule] NOCHECK CONSTRAINT [FK_Schedule_MasterKigo_Jyusyo3]
GO
ALTER TABLE [dbo].[Schedule]  WITH NOCHECK ADD  CONSTRAINT [FK_Schedule_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[Schedule] NOCHECK CONSTRAINT [FK_Schedule_MasterPlace]
GO
ALTER TABLE [dbo].[Schedule]  WITH NOCHECK ADD  CONSTRAINT [FK_Schedule_MasterSyubetu_Jyusyo1] FOREIGN KEY([Jyusyo1SyubetuId])
REFERENCES [dbo].[MasterSyubetu] ([SyubetuId])
GO
ALTER TABLE [dbo].[Schedule] NOCHECK CONSTRAINT [FK_Schedule_MasterSyubetu_Jyusyo1]
GO
ALTER TABLE [dbo].[Schedule]  WITH NOCHECK ADD  CONSTRAINT [FK_Schedule_MasterSyubetu_Jyusyo2] FOREIGN KEY([Jyusyo2SyubetuId])
REFERENCES [dbo].[MasterSyubetu] ([SyubetuId])
GO
ALTER TABLE [dbo].[Schedule] NOCHECK CONSTRAINT [FK_Schedule_MasterSyubetu_Jyusyo2]
GO
ALTER TABLE [dbo].[Schedule]  WITH NOCHECK ADD  CONSTRAINT [FK_Schedule_MasterSyubetu_Jyusyo3] FOREIGN KEY([Jyusyo3SyubetuId])
REFERENCES [dbo].[MasterSyubetu] ([SyubetuId])
GO
ALTER TABLE [dbo].[Schedule] NOCHECK CONSTRAINT [FK_Schedule_MasterSyubetu_Jyusyo3]
GO
ALTER TABLE [dbo].[Schedule]  WITH NOCHECK ADD  CONSTRAINT [FK_Schedule_MasterTrack_Jyusyo1] FOREIGN KEY([Jyusyo1TrackId])
REFERENCES [dbo].[MasterTrack] ([TrackId])
GO
ALTER TABLE [dbo].[Schedule] NOCHECK CONSTRAINT [FK_Schedule_MasterTrack_Jyusyo1]
GO
ALTER TABLE [dbo].[Schedule]  WITH NOCHECK ADD  CONSTRAINT [FK_Schedule_MasterTrack_Jyusyo2] FOREIGN KEY([Jyusyo2TrackId])
REFERENCES [dbo].[MasterTrack] ([TrackId])
GO
ALTER TABLE [dbo].[Schedule] NOCHECK CONSTRAINT [FK_Schedule_MasterTrack_Jyusyo2]
GO
ALTER TABLE [dbo].[Schedule]  WITH NOCHECK ADD  CONSTRAINT [FK_Schedule_MasterTrack_Jyusyo3] FOREIGN KEY([Jyusyo3TrackId])
REFERENCES [dbo].[MasterTrack] ([TrackId])
GO
ALTER TABLE [dbo].[Schedule] NOCHECK CONSTRAINT [FK_Schedule_MasterTrack_Jyusyo3]
GO
ALTER TABLE [dbo].[SpecialRace]  WITH NOCHECK ADD  CONSTRAINT [FK_SpecialRace_MasterCourseKubun] FOREIGN KEY([CourseKubunId])
REFERENCES [dbo].[MasterCourseKubun] ([CourseKubunId])
GO
ALTER TABLE [dbo].[SpecialRace] NOCHECK CONSTRAINT [FK_SpecialRace_MasterCourseKubun]
GO
ALTER TABLE [dbo].[SpecialRace]  WITH NOCHECK ADD  CONSTRAINT [FK_SpecialRace_MasterGrade] FOREIGN KEY([GradeId])
REFERENCES [dbo].[MasterGrade] ([GradeId])
GO
ALTER TABLE [dbo].[SpecialRace] NOCHECK CONSTRAINT [FK_SpecialRace_MasterGrade]
GO
ALTER TABLE [dbo].[SpecialRace]  WITH NOCHECK ADD  CONSTRAINT [FK_SpecialRace_MasterJyoken5] FOREIGN KEY([Jyoken5Id])
REFERENCES [dbo].[MasterJyoken5] ([Jyoken5Id])
GO
ALTER TABLE [dbo].[SpecialRace] NOCHECK CONSTRAINT [FK_SpecialRace_MasterJyoken5]
GO
ALTER TABLE [dbo].[SpecialRace]  WITH NOCHECK ADD  CONSTRAINT [FK_SpecialRace_MasterJyuryo] FOREIGN KEY([JyuryoId])
REFERENCES [dbo].[MasterJyuryo] ([JyuryoId])
GO
ALTER TABLE [dbo].[SpecialRace] NOCHECK CONSTRAINT [FK_SpecialRace_MasterJyuryo]
GO
ALTER TABLE [dbo].[SpecialRace]  WITH NOCHECK ADD  CONSTRAINT [FK_SpecialRace_MasterKigo] FOREIGN KEY([KigoId])
REFERENCES [dbo].[MasterKigo] ([KigoId])
GO
ALTER TABLE [dbo].[SpecialRace] NOCHECK CONSTRAINT [FK_SpecialRace_MasterKigo]
GO
ALTER TABLE [dbo].[SpecialRace]  WITH NOCHECK ADD  CONSTRAINT [FK_SpecialRace_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[SpecialRace] NOCHECK CONSTRAINT [FK_SpecialRace_MasterPlace]
GO
ALTER TABLE [dbo].[SpecialRace]  WITH NOCHECK ADD  CONSTRAINT [FK_SpecialRace_MasterSyubetu] FOREIGN KEY([SyubetuId])
REFERENCES [dbo].[MasterSyubetu] ([SyubetuId])
GO
ALTER TABLE [dbo].[SpecialRace] NOCHECK CONSTRAINT [FK_SpecialRace_MasterSyubetu]
GO
ALTER TABLE [dbo].[SpecialRace]  WITH NOCHECK ADD  CONSTRAINT [FK_SpecialRace_MasterTrack] FOREIGN KEY([TrackId])
REFERENCES [dbo].[MasterTrack] ([TrackId])
GO
ALTER TABLE [dbo].[SpecialRace] NOCHECK CONSTRAINT [FK_SpecialRace_MasterTrack]
GO
ALTER TABLE [dbo].[SpecialRace]  WITH NOCHECK ADD  CONSTRAINT [FK_SpecialRace_MasterYoubi] FOREIGN KEY([YoubiId])
REFERENCES [dbo].[MasterYoubi] ([YoubiId])
GO
ALTER TABLE [dbo].[SpecialRace] NOCHECK CONSTRAINT [FK_SpecialRace_MasterYoubi]
GO
ALTER TABLE [dbo].[SpecialRace]  WITH NOCHECK ADD  CONSTRAINT [FK_SpecialRace_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[SpecialRace] NOCHECK CONSTRAINT [FK_SpecialRace_Race]
GO
ALTER TABLE [dbo].[SpecialRaceByHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_SpecialRaceByHorse_MasterSex] FOREIGN KEY([SexId])
REFERENCES [dbo].[MasterSex] ([SexId])
GO
ALTER TABLE [dbo].[SpecialRaceByHorse] NOCHECK CONSTRAINT [FK_SpecialRaceByHorse_MasterSex]
GO
ALTER TABLE [dbo].[SpecialRaceByHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_SpecialRaceByHorse_MasterTozai] FOREIGN KEY([TozaiId])
REFERENCES [dbo].[MasterTozai] ([TozaiId])
GO
ALTER TABLE [dbo].[SpecialRaceByHorse] NOCHECK CONSTRAINT [FK_SpecialRaceByHorse_MasterTozai]
GO
ALTER TABLE [dbo].[SpecialRaceByHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_SpecialRaceByHorse_MasterUmaKigo] FOREIGN KEY([UmaKigoId])
REFERENCES [dbo].[MasterUmaKigo] ([UmaKigoId])
GO
ALTER TABLE [dbo].[SpecialRaceByHorse] NOCHECK CONSTRAINT [FK_SpecialRaceByHorse_MasterUmaKigo]
GO
ALTER TABLE [dbo].[SpecialRaceByHorse]  WITH CHECK ADD  CONSTRAINT [FK_SpecialRaceByHorse_SpecialRace] FOREIGN KEY([RaceId])
REFERENCES [dbo].[SpecialRace] ([RaceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SpecialRaceByHorse] CHECK CONSTRAINT [FK_SpecialRaceByHorse_SpecialRace]
GO
ALTER TABLE [dbo].[SpecialRaceByHorse]  WITH NOCHECK ADD  CONSTRAINT [FK_SpecialRaceByHorse_Trainer] FOREIGN KEY([TrainerId])
REFERENCES [dbo].[Trainer] ([TrainerId])
GO
ALTER TABLE [dbo].[SpecialRaceByHorse] NOCHECK CONSTRAINT [FK_SpecialRaceByHorse_Trainer]
GO
ALTER TABLE [dbo].[StatsBasicAfterRaceByRaceType1]  WITH NOCHECK ADD  CONSTRAINT [FK_StatsBasicAfterRaceByRaceType1_Master2RaceType1] FOREIGN KEY([RaceType1Id])
REFERENCES [dbo].[Master2RaceType1] ([RaceType1Id])
GO
ALTER TABLE [dbo].[StatsBasicAfterRaceByRaceType1] NOCHECK CONSTRAINT [FK_StatsBasicAfterRaceByRaceType1_Master2RaceType1]
GO
ALTER TABLE [dbo].[StatsBasicAfterRaceHorseByRaceType1]  WITH NOCHECK ADD  CONSTRAINT [FK_StatsBasicAfterRaceHorseByRaceType1_Master2RaceType1] FOREIGN KEY([RaceType1Id])
REFERENCES [dbo].[Master2RaceType1] ([RaceType1Id])
GO
ALTER TABLE [dbo].[StatsBasicAfterRaceHorseByRaceType1] NOCHECK CONSTRAINT [FK_StatsBasicAfterRaceHorseByRaceType1_Master2RaceType1]
GO
ALTER TABLE [dbo].[StatsBasicBeforeDmByRaceType1]  WITH NOCHECK ADD  CONSTRAINT [FK_StatsBasicBeforeDmByRaceType1_Master2RaceType1] FOREIGN KEY([RaceType1Id])
REFERENCES [dbo].[Master2RaceType1] ([RaceType1Id])
GO
ALTER TABLE [dbo].[StatsBasicBeforeDmByRaceType1] NOCHECK CONSTRAINT [FK_StatsBasicBeforeDmByRaceType1_Master2RaceType1]
GO
ALTER TABLE [dbo].[StatsBasicBeforeOddsByRaceType1]  WITH NOCHECK ADD  CONSTRAINT [FK_StatsBasicBeforeOddsByRaceType1_Master2RaceType1] FOREIGN KEY([RaceType1Id])
REFERENCES [dbo].[Master2RaceType1] ([RaceType1Id])
GO
ALTER TABLE [dbo].[StatsBasicBeforeOddsByRaceType1] NOCHECK CONSTRAINT [FK_StatsBasicBeforeOddsByRaceType1_Master2RaceType1]
GO
ALTER TABLE [dbo].[StatsBasicBeforeRaceByRaceType1]  WITH NOCHECK ADD  CONSTRAINT [FK_StatsBasicBeforeRaceByRaceType1_Master2RaceType1] FOREIGN KEY([RaceType1Id])
REFERENCES [dbo].[Master2RaceType1] ([RaceType1Id])
GO
ALTER TABLE [dbo].[StatsBasicBeforeRaceByRaceType1] NOCHECK CONSTRAINT [FK_StatsBasicBeforeRaceByRaceType1_Master2RaceType1]
GO
ALTER TABLE [dbo].[StatsBasicBeforeRaceHorseByRaceType1]  WITH NOCHECK ADD  CONSTRAINT [FK_StatsBasicBeforeRaceHorseByRaceType1_Master2RaceType1] FOREIGN KEY([RaceType1Id])
REFERENCES [dbo].[Master2RaceType1] ([RaceType1Id])
GO
ALTER TABLE [dbo].[StatsBasicBeforeRaceHorseByRaceType1] NOCHECK CONSTRAINT [FK_StatsBasicBeforeRaceHorseByRaceType1_Master2RaceType1]
GO
ALTER TABLE [dbo].[StatsPrepAfterRaceHorseByPrepRaceType1]  WITH NOCHECK ADD  CONSTRAINT [FK_StatsPrepAfterRaceHorseByPrepRaceType1_Master2RaceType1] FOREIGN KEY([PrepRaceType1Id])
REFERENCES [dbo].[Master2RaceType1] ([RaceType1Id])
GO
ALTER TABLE [dbo].[StatsPrepAfterRaceHorseByPrepRaceType1] NOCHECK CONSTRAINT [FK_StatsPrepAfterRaceHorseByPrepRaceType1_Master2RaceType1]
GO
ALTER TABLE [dbo].[StatsPrepBeforeRaceHorseByRaceType1]  WITH NOCHECK ADD  CONSTRAINT [FK_StatsPrepBeforeRaceHorseByRaceType1_Master2RaceType1] FOREIGN KEY([RaceType1Id])
REFERENCES [dbo].[Master2RaceType1] ([RaceType1Id])
GO
ALTER TABLE [dbo].[StatsPrepBeforeRaceHorseByRaceType1] NOCHECK CONSTRAINT [FK_StatsPrepBeforeRaceHorseByRaceType1_Master2RaceType1]
GO
ALTER TABLE [dbo].[Trainer]  WITH NOCHECK ADD  CONSTRAINT [FK_Trainer_MasterSex] FOREIGN KEY([SexId])
REFERENCES [dbo].[MasterSex] ([SexId])
GO
ALTER TABLE [dbo].[Trainer] NOCHECK CONSTRAINT [FK_Trainer_MasterSex]
GO
ALTER TABLE [dbo].[Trainer]  WITH NOCHECK ADD  CONSTRAINT [FK_Trainer_MasterTozai] FOREIGN KEY([TozaiId])
REFERENCES [dbo].[MasterTozai] ([TozaiId])
GO
ALTER TABLE [dbo].[Trainer] NOCHECK CONSTRAINT [FK_Trainer_MasterTozai]
GO
ALTER TABLE [dbo].[TrainerByDistanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_TrainerByDistanceType_MasterDistanceType2] FOREIGN KEY([DistanceType2Id])
REFERENCES [dbo].[MasterDistanceType2] ([DistanceType2Id])
GO
ALTER TABLE [dbo].[TrainerByDistanceType] NOCHECK CONSTRAINT [FK_TrainerByDistanceType_MasterDistanceType2]
GO
ALTER TABLE [dbo].[TrainerByDistanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_TrainerByDistanceType_MasterTrackType2] FOREIGN KEY([TrackType2Id])
REFERENCES [dbo].[MasterTrackType2] ([TrackType2Id])
GO
ALTER TABLE [dbo].[TrainerByDistanceType] NOCHECK CONSTRAINT [FK_TrainerByDistanceType_MasterTrackType2]
GO
ALTER TABLE [dbo].[TrainerByDistanceType]  WITH NOCHECK ADD  CONSTRAINT [FK_TrainerByDistanceType_Trainer] FOREIGN KEY([TrainerId])
REFERENCES [dbo].[Trainer] ([TrainerId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TrainerByDistanceType] CHECK CONSTRAINT [FK_TrainerByDistanceType_Trainer]
GO
ALTER TABLE [dbo].[TrainerByTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_TrainerByTotal_MasterTrackType3] FOREIGN KEY([TrackType3Id])
REFERENCES [dbo].[MasterTrackType3] ([TrackType3Id])
GO
ALTER TABLE [dbo].[TrainerByTotal] NOCHECK CONSTRAINT [FK_TrainerByTotal_MasterTrackType3]
GO
ALTER TABLE [dbo].[TrainerByTotal]  WITH NOCHECK ADD  CONSTRAINT [FK_TrainerByTotal_Trainer] FOREIGN KEY([TrainerId])
REFERENCES [dbo].[Trainer] ([TrainerId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TrainerByTotal] CHECK CONSTRAINT [FK_TrainerByTotal_Trainer]
GO
ALTER TABLE [dbo].[TrainerByTrackType]  WITH NOCHECK ADD  CONSTRAINT [FK_TrainerByTrackType_MasterJyo] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[TrainerByTrackType] NOCHECK CONSTRAINT [FK_TrainerByTrackType_MasterJyo]
GO
ALTER TABLE [dbo].[TrainerByTrackType]  WITH NOCHECK ADD  CONSTRAINT [FK_TrainerByTrackType_MasterTrackType3] FOREIGN KEY([TrackType3Id])
REFERENCES [dbo].[MasterTrackType3] ([TrackType3Id])
GO
ALTER TABLE [dbo].[TrainerByTrackType] NOCHECK CONSTRAINT [FK_TrainerByTrackType_MasterTrackType3]
GO
ALTER TABLE [dbo].[TrainerByTrackType]  WITH NOCHECK ADD  CONSTRAINT [FK_TrainerByTrackType_Trainer] FOREIGN KEY([TrainerId])
REFERENCES [dbo].[Trainer] ([TrainerId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TrainerByTrackType] CHECK CONSTRAINT [FK_TrainerByTrackType_Trainer]
GO
ALTER TABLE [dbo].[TrainingSlope]  WITH NOCHECK ADD  CONSTRAINT [FK_TrainingSlope_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[TrainingSlope] NOCHECK CONSTRAINT [FK_TrainingSlope_Horse]
GO
ALTER TABLE [dbo].[TrainingWoodChip]  WITH NOCHECK ADD  CONSTRAINT [FK_TrainingWoodChip_Horse] FOREIGN KEY([HorseId])
REFERENCES [dbo].[Horse] ([HorseId])
GO
ALTER TABLE [dbo].[TrainingWoodChip] NOCHECK CONSTRAINT [FK_TrainingWoodChip_Horse]
GO
ALTER TABLE [dbo].[WinFiveByPay]  WITH NOCHECK ADD  CONSTRAINT [FK_WinFiveByPay_MasterUmaban_1] FOREIGN KEY([Kumiban1])
REFERENCES [dbo].[MasterHorseNum] ([HorseNum])
GO
ALTER TABLE [dbo].[WinFiveByPay] NOCHECK CONSTRAINT [FK_WinFiveByPay_MasterUmaban_1]
GO
ALTER TABLE [dbo].[WinFiveByPay]  WITH NOCHECK ADD  CONSTRAINT [FK_WinFiveByPay_MasterUmaban_2] FOREIGN KEY([Kumiban2])
REFERENCES [dbo].[MasterHorseNum] ([HorseNum])
GO
ALTER TABLE [dbo].[WinFiveByPay] NOCHECK CONSTRAINT [FK_WinFiveByPay_MasterUmaban_2]
GO
ALTER TABLE [dbo].[WinFiveByPay]  WITH NOCHECK ADD  CONSTRAINT [FK_WinFiveByPay_MasterUmaban_3] FOREIGN KEY([Kumiban3])
REFERENCES [dbo].[MasterHorseNum] ([HorseNum])
GO
ALTER TABLE [dbo].[WinFiveByPay] NOCHECK CONSTRAINT [FK_WinFiveByPay_MasterUmaban_3]
GO
ALTER TABLE [dbo].[WinFiveByPay]  WITH NOCHECK ADD  CONSTRAINT [FK_WinFiveByPay_MasterUmaban_4] FOREIGN KEY([Kumiban4])
REFERENCES [dbo].[MasterHorseNum] ([HorseNum])
GO
ALTER TABLE [dbo].[WinFiveByPay] NOCHECK CONSTRAINT [FK_WinFiveByPay_MasterUmaban_4]
GO
ALTER TABLE [dbo].[WinFiveByPay]  WITH NOCHECK ADD  CONSTRAINT [FK_WinFiveByPay_MasterUmaban_5] FOREIGN KEY([Kumiban5])
REFERENCES [dbo].[MasterHorseNum] ([HorseNum])
GO
ALTER TABLE [dbo].[WinFiveByPay] NOCHECK CONSTRAINT [FK_WinFiveByPay_MasterUmaban_5]
GO
ALTER TABLE [dbo].[WinFiveByPay]  WITH NOCHECK ADD  CONSTRAINT [FK_WinFiveByPay_WinFive] FOREIGN KEY([RaceDate])
REFERENCES [dbo].[WinFive] ([RaceDate])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WinFiveByPay] CHECK CONSTRAINT [FK_WinFiveByPay_WinFive]
GO
ALTER TABLE [dbo].[WinFiveByRace]  WITH NOCHECK ADD  CONSTRAINT [FK_WinFiveByRace_MasterPlace] FOREIGN KEY([PlaceId])
REFERENCES [dbo].[MasterPlace] ([PlaceId])
GO
ALTER TABLE [dbo].[WinFiveByRace] NOCHECK CONSTRAINT [FK_WinFiveByRace_MasterPlace]
GO
ALTER TABLE [dbo].[WinFiveByRace]  WITH NOCHECK ADD  CONSTRAINT [FK_WinFiveByRace_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([RaceId])
GO
ALTER TABLE [dbo].[WinFiveByRace] NOCHECK CONSTRAINT [FK_WinFiveByRace_Race]
GO
ALTER TABLE [dbo].[WinFiveByRace]  WITH NOCHECK ADD  CONSTRAINT [FK_WinFiveByRace_WinFive] FOREIGN KEY([RaceDate])
REFERENCES [dbo].[WinFive] ([RaceDate])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WinFiveByRace] NOCHECK CONSTRAINT [FK_WinFiveByRace_WinFive]
GO
ALTER TABLE [dbo].[WinFiveByYuko]  WITH NOCHECK ADD  CONSTRAINT [FK_WinFiveByYuko_WinFive] FOREIGN KEY([RaceDate])
REFERENCES [dbo].[WinFive] ([RaceDate])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WinFiveByYuko] CHECK CONSTRAINT [FK_WinFiveByYuko_WinFive]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_EventAvoid_InsertUpdate] ON [dbo].[EventAvoid]
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
ALTER TABLE [dbo].[EventAvoid] ENABLE TRIGGER [Ut_EventAvoid_InsertUpdate]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_EventCourseChange_InsertUpdate] ON [dbo].[EventCourseChange]
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
ALTER TABLE [dbo].[EventCourseChange] ENABLE TRIGGER [Ut_EventCourseChange_InsertUpdate]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_EventHorseWeight_InsertUpdate] ON [dbo].[EventHorseWeight]
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
ALTER TABLE [dbo].[EventHorseWeight] ENABLE TRIGGER [Ut_EventHorseWeight_InsertUpdate]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_EventJockeyChange_InsertUpdate] ON [dbo].[EventJockeyChange]
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
ALTER TABLE [dbo].[EventJockeyChange] ENABLE TRIGGER [Ut_EventJockeyChange_InsertUpdate]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_EventTimeChange_InsertUpdate] ON [dbo].[EventTimeChange]
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
ALTER TABLE [dbo].[EventTimeChange] ENABLE TRIGGER [Ut_EventTimeChange_InsertUpdate]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_EventWeather_InsertUpdate] ON [dbo].[EventWeather]
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
ALTER TABLE [dbo].[EventWeather] ENABLE TRIGGER [Ut_EventWeather_InsertUpdate]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_Hansyoku_Delete] ON [dbo].[Hansyoku]
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
ALTER TABLE [dbo].[Hansyoku] DISABLE TRIGGER [Ut_Hansyoku_Delete]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_Hansyoku_Insert] ON [dbo].[Hansyoku]
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
ALTER TABLE [dbo].[Hansyoku] DISABLE TRIGGER [Ut_Hansyoku_Insert]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_OddsByBracket_Delete] ON [dbo].[OddsByBracket]
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
ALTER TABLE [dbo].[OddsByBracket] ENABLE TRIGGER [Ut_OddsByBracket_Delete]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_OddsByBracket_Insert] ON [dbo].[OddsByBracket]
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
ALTER TABLE [dbo].[OddsByBracket] ENABLE TRIGGER [Ut_OddsByBracket_Insert]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_OddsByExacta_Delete] ON [dbo].[OddsByExacta]
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
ALTER TABLE [dbo].[OddsByExacta] ENABLE TRIGGER [Ut_OddsByExacta_Delete]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_OddsByExacta_Insert] ON [dbo].[OddsByExacta]
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
ALTER TABLE [dbo].[OddsByExacta] ENABLE TRIGGER [Ut_OddsByExacta_Insert]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_OddsByPlace_Delete] ON [dbo].[OddsByPlace]
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
ALTER TABLE [dbo].[OddsByPlace] ENABLE TRIGGER [Ut_OddsByPlace_Delete]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_OddsByPlace_Insert] ON [dbo].[OddsByPlace]
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
ALTER TABLE [dbo].[OddsByPlace] ENABLE TRIGGER [Ut_OddsByPlace_Insert]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_OddsByQuinella_Delete] ON [dbo].[OddsByQuinella]
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
ALTER TABLE [dbo].[OddsByQuinella] ENABLE TRIGGER [Ut_OddsByQuinella_Delete]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_OddsByQuinella_Insert] ON [dbo].[OddsByQuinella]
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
ALTER TABLE [dbo].[OddsByQuinella] ENABLE TRIGGER [Ut_OddsByQuinella_Insert]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_OddsByTrifecta_Delete] ON [dbo].[OddsByTrifecta]
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
ALTER TABLE [dbo].[OddsByTrifecta] ENABLE TRIGGER [Ut_OddsByTrifecta_Delete]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_OddsByTrifecta_Insert] ON [dbo].[OddsByTrifecta]
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
ALTER TABLE [dbo].[OddsByTrifecta] ENABLE TRIGGER [Ut_OddsByTrifecta_Insert]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_OddsByTrio_Delete] ON [dbo].[OddsByTrio]
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
ALTER TABLE [dbo].[OddsByTrio] ENABLE TRIGGER [Ut_OddsByTrio_Delete]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_OddsByTrio_Insert] ON [dbo].[OddsByTrio]
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
ALTER TABLE [dbo].[OddsByTrio] ENABLE TRIGGER [Ut_OddsByTrio_Insert]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_OddsByWide_Delete] ON [dbo].[OddsByWide]
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
ALTER TABLE [dbo].[OddsByWide] ENABLE TRIGGER [Ut_OddsByWide_Delete]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_OddsByWide_Insert] ON [dbo].[OddsByWide]
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
ALTER TABLE [dbo].[OddsByWide] ENABLE TRIGGER [Ut_OddsByWide_Insert]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_OddsByWin_Delete] ON [dbo].[OddsByWin]
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
ALTER TABLE [dbo].[OddsByWin] ENABLE TRIGGER [Ut_OddsByWin_Delete]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_OddsByWin_Insert] ON [dbo].[OddsByWin]
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
ALTER TABLE [dbo].[OddsByWin] ENABLE TRIGGER [Ut_OddsByWin_Insert]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[Ut_RaceHorseHistory_Delete_Manual] ON [dbo].[RaceHorseHistory]
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
ALTER TABLE [dbo].[RaceHorseHistory] ENABLE TRIGGER [Ut_RaceHorseHistory_Delete_Manual]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'加入者番号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfigIpatAccount', @level2type=N'COLUMN',@level2name=N'Id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ユーザー番号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfigIpatAccount', @level2type=N'COLUMN',@level2name=N'InetId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ユーザー番号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfigIpatAccount', @level2type=N'COLUMN',@level2name=N'UserNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'暗証番号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfigIpatAccount', @level2type=N'COLUMN',@level2name=N'PassNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'PARS番号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ConfigIpatAccount', @level2type=N'COLUMN',@level2name=N'ParsNo'
GO
