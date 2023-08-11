/* Manhattan distance for points 
   P1(a,b) and P2(c,d) is
   |a-c|+|b-d|      */

SELECT ROUND(ABS(MIN(LAT_N)-MAX(LAT_N)) 
             + ABS(MIN(LONG_W)-MAX(LONG_W)),4)
FROM STATION;
