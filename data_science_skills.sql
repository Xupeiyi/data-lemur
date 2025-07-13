SELECT 
    candidate_id
FROM 
    candidates
WHERE 
    skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY 
    candidate_id
HAVING 
    COUNT(skill) = 3
ORDER BY 
    candidate_id;
/*
OR

SELECT candidate_id FROM candidates WHERE skill = 'Python'
INTERSECT
SELECT candidate_id FROM candidates WHERE skill = 'Tableau'
INTERSECT
SELECT candidate_id FROM candidates WHERE skill = 'PostgreSQL'
ORDER BY candidate_id

*/