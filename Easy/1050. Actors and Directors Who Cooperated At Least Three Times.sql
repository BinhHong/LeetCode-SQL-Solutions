# Write your MySQL query statement below
SELECT actor_id, director_id
FROM (SELECT actor_id, director_id, COUNT(timestamp) AS times
    FROM ActorDirector
    GROUP BY actor_id, director_id) AS filtered
WHERE times >=3