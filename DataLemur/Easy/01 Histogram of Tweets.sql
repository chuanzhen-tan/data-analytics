WITH tweet_counts AS (
  SELECT 
    user_id,
    COUNT(*) AS tweet_bucket
  FROM tweets
  WHERE tweet_date between '2022-01-01' AND '2022-12-31'
  GROUP BY user_id
)

SELECT
  tweet_bucket,
  COUNT(*) AS users_num
FROM tweet_counts
GROUP BY tweet_bucket
ORDER BY tweet_bucket
