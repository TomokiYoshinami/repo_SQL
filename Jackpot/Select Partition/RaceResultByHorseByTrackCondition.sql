SELECT $PARTITION.PF_Date(RaceDate) AS Patition#,
       COUNT(*) AS Count
FROM RaceResultByHorseByTrackCondition
GROUP BY $PARTITION.PF_Date(RaceDate)
ORDER BY $PARTITION.PF_Date(RaceDate);
--
SELECT *,
       $PARTITION.PF_Date(RaceDate) AS Patition#
FROM RaceResultByHorseByTrackCondition
ORDER BY RaceDate;