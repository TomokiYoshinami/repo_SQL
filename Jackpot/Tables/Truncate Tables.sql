USE Jackpot;
GO
SELECT 'TRUNCATE TABLE '+t.name
FROM sys.tables AS t
WHERE(t.name LIKE '[A-K]%'
      OR t.name LIKE '[N-Z]%')
     AND t.name NOT LIKE 'sys%'
     AND t.name NOT LIKE 'Config%'
ORDER BY t.name;