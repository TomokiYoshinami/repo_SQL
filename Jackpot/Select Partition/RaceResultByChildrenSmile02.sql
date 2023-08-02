SELECT $PARTITION.PF_Date(RaceDate) AS Patition#,
       COUNT(*) AS Count
FROM RaceResultByChildrenSmile02
GROUP BY $PARTITION.PF_Date(RaceDate)
ORDER BY $PARTITION.PF_Date(RaceDate);
--
SELECT *,
       $PARTITION.PF_Date(RaceDate) AS Patition#
FROM RaceResultByChildrenSmile02
ORDER BY RaceDate;