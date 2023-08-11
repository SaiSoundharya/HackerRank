SELECT months*salary,
       COUNT(employee_id)
FROM Employee
GROUP BY months*salary
ORDER BY months*salary DESC
LIMIT 1;
