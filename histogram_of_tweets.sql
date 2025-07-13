WITH user_tweet_num AS (
  SELECT 
    user_id
    ,COUNT(tweet_id) AS tweet_num
  FROM
    tweets
  WHERE
    tweet_date >= '2022-01-01 00:00:00'
  GROUP BY
    user_id
)
SELECT
  tweet_num AS tweet_bucket
  ,COUNT(user_id) AS user_num
FROM
  user_tweet_num
GROUP BY
  tweet_num
  