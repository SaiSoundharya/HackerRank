SELECT DISTINCT(city)
FROM STATION
WHERE SUBSTR(city,1,1) NOT IN ('A','E','I','O','U')
AND
SUBSTR(REVERSE(city),1,1) NOT IN ('A','E','I','O','U');