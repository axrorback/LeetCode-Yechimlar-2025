SELECT w2.id
FROM Weather w1
JOIN Weather w2
  ON w2.recordDate = w1.recordDate + INTERVAL '1 day'
WHERE w2.temperature > w1.temperature;



--Ahrorjon Ibrohimjonov (axrorback)
--(2025-Oktabr-08)-(23:17)