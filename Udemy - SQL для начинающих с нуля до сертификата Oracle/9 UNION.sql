SELECT *
FROM COUNTRIES
UNION
SELECT *
FROM COUNTRIES;

SELECT *
FROM JOBS
WHERE MIN_SALARY BETWEEN 4500 AND 800
UNION
SELECT *
FROM JOBS
WHERE MAX_SALARY BETWEEN 10000 AND 15000
ORDER BY 3;
