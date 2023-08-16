SELECT S.hacker_id,
       H.name
FROM Submissions S, Hackers H, Difficulty D, Challenges C
WHERE S.hacker_id = H.hacker_id
AND S.challenge_id = C.challenge_id
AND S.score = D.score
AND D.difficulty_level = C.difficulty_level
GROUP BY S.hacker_id, H.name
HAVING COUNT(*)>1
ORDER BY COUNT(*) DESC, S.hacker_id ASC;
