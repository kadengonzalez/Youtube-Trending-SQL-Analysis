-- YouTube Trending Analysis
-- Dataset: U.S. YouTube Trending

-- Total number of trending videos
SELECT
  COUNT(*) AS total_videos
FROM
  youtube_trending;

-- Rank videos by engagement (views, likes, comments)
SELECT
  title,
  channel_title,
  views,
  likes,
  comment_count
FROM
  youtube_trending
ORDER BY
  views DESC
LIMIT 10;

-- Analyze category trends
SELECT
  category_id,
  COUNT(*) AS total_videos
FROM
  youtube_trending
GROUP BY
  category_id
ORDER BY
  total_videos DESC;

-- Analyze upload timing patterns
SELECT
  published_hour,
  COUNT(*) AS video_count
FROM
  youtube_trending
GROUP BY
  published_hour
ORDER BY
  video_count DESC;

-- Sample top-N results with OFFSET
SELECT
  title,
  views
FROM
  youtube_trending
ORDER BY
  views DESC
LIMIT 10 OFFSET 10;
