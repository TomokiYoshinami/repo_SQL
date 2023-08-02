SELECT $PARTITION.PF_Date(RaceDate) AS Patition#,
       COUNT(*) AS Count
FROM RaceResultByChildrenSmile01
GROUP BY $PARTITION.PF_Date(RaceDate)
ORDER BY $PARTITION.PF_Date(RaceDate);
--
SELECT *,
       $PARTITION.PF_Date(RaceDate) AS Patition#
FROM RaceResultByChildrenSmile01
ORDER BY RaceDate;