USE Jackpot
GO
EXEC sp_estimate_data_compression_savings 
     'dbo', -- Owner
     'OddsByTrifecta',-- Table
     NULL,
     NULL,
     'ROW'
GO