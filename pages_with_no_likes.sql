SELECT
  page_id
FROM
  pages p
WHERE
  NOT EXISTS (
    SELECT 
      page_id
    FROM
      page_likes l
    WHERE
      p.page_id = l.page_id
  )
ORDER BY 
  page_id;