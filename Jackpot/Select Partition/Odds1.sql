SELECT $PARTITION.PF_Date(RaceDate) AS Patition#,
       COUNT(*) AS Count
FROM Odds1
GROUP BY $PARTITION.PF_Date(RaceDate)
ORDER BY $PARTITION.PF_Date(RaceDate);
--
SELECT *,
       $PARTITION.PF_Date(RaceDate) AS Patition#
FROM Odds1
ORDER BY RaceDate;