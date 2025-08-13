-- My Solution
SELECT
  COUNT(cnt) AS duplicate_companies
FROM (
SELECT
  company_id,
  title,
  description,
  COUNT(*) AS cnt
FROM job_listings
GROUP BY
  company_id,
  title,
  description
HAVING COUNT(*) > 1
) AS duplicates;

-- Suggested Solution using Common Table Expression (CTE)
WITH job_count_cte AS (
  SELECT 
    company_id, 
    title, 
    description, 
    COUNT(job_id) AS job_count
  FROM job_listings
  GROUP BY company_id, title, description
)

SELECT COUNT(DISTINCT company_id) AS duplicate_companies
FROM job_count_cte
WHERE job_count > 1;

-- Suggested Solution using Subquery
SELECT COUNT(DISTINCT company_id) AS duplicate_companies
FROM (
  SELECT 
    company_id, 
    title, 
    description, 
    COUNT(job_id) AS job_count
  FROM job_listings
  GROUP BY company_id, title, description
) AS job_count_cte
WHERE job_count > 1;
