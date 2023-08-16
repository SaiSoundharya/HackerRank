/*WHERE clause is used so that the query provide essentially 
a unique value since there should only be one mark that falls 
in-between the MIN and MAX set of marks available to that student 
by a particular grade
*/
SELECT CASE
       WHEN G.grade < 8 THEN 'NULL'
       ELSE S.name
       END,
       G.grade,
       S.marks
FROM Students S, Grades G
WHERE S.marks BETWEEN G.min_mark AND G.max_mark
ORDER BY G.grade DESC, S.name ASC;
