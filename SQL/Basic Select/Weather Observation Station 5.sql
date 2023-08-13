(SELECT city, 
        LENGTH(city) AS city_len 
FROM STATION
ORDER BY city_len ASC, CITY ASC 
LIMIT 1)
UNION
(SELECT city, 
        LENGTH(city) AS city_len 
FROM STATION
ORDER BY city_len DESC, CITY ASC 
LIMIT 1);
