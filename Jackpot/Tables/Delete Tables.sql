USE Jackpot
GO

SELECT 'DELETE ' + t.name
			 FROM sys.tables AS t
			 WHERE (t.name like '[A-K]%'
			 OR t.name like '[N-W]%')
			 AND t.name not like 'sys%'
			 AND t.name not like 'Config%'
			 ORDER BY t.name
