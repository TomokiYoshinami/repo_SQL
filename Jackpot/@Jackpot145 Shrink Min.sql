USE Jackpot145
GO
DBCC SHRINKFILE(Jackpot_data_0,8)
DBCC SHRINKFILE(Jackpot_data_1,8)
DBCC SHRINKFILE(Jackpot_data_2,8)
DBCC SHRINKFILE(Jackpot_data_3,8)
DBCC SHRINKFILE(Jackpot_data_4,8)
DBCC SHRINKFILE(Jackpot_data_5,8)
DBCC SHRINKFILE(Jackpot_data_6,8)
DBCC SHRINKFILE(Jackpot_data_7,8)

DBCC SHRINKFILE(Jackpot_index_0,8)
DBCC SHRINKFILE(Jackpot_index_1,8)

DBCC SHRINKFILE(Jackpot_log_0,8)
DBCC SHRINKFILE(Jackpot_log_1,8)
