use video_game;
SHOW TABLES;
SELECT COUNT(*) FROM merged_game_data;
SELECT * FROM merged_game_data LIMIT 10;
-- Total number of unique games available in the dataset
-- Helps understand dataset size and coverage

SELECT COUNT(DISTINCT Title) AS Total_Games
FROM merged_game_data;
-- Identifies which game genres generate maximum global revenue
-- Helps companies focus development & marketing efforts

SELECT 
    Genre,
    ROUND(SUM(Global_Sales), 2) AS Total_Global_Sales
FROM merged_game_data
GROUP BY Genre
ORDER BY Total_Global_Sales DESC;
-- Analyzes revenue contribution of each gaming platform
-- Helps decide platform prioritization strategy

SELECT 
    Platform,
    ROUND(SUM(Global_Sales), 2) AS Platform_Revenue
FROM merged_game_data
GROUP BY Platform
ORDER BY Platform_Revenue DESC;
-- Compares sales performance across different regions
-- Helps companies focus regional marketing strategy

SELECT
    ROUND(SUM(NA_Sales),2) AS North_America_Sales,
    ROUND(SUM(EU_Sales),2) AS Europe_Sales,
    ROUND(SUM(JP_Sales),2) AS Japan_Sales,
    ROUND(SUM(Other_Sales),2) AS Other_Region_Sales
FROM merged_game_data;
-- Checks how user engagement impacts sales performance
-- Validates importance of customer engagement metrics

SELECT
    Engagement_Score,
    ROUND(AVG(Global_Sales),2) AS Avg_Global_Sales
FROM merged_game_data
GROUP BY Engagement_Score
ORDER BY Engagement_Score DESC;
-- Evaluates whether higher rated games produce more revenue
-- Helps validate product quality strategy

SELECT
    Rating_Category,
    ROUND(AVG(Global_Sales),2) AS Avg_Sales
FROM merged_game_data
GROUP BY Rating_Category
ORDER BY Avg_Sales DESC;
-- Identifies games that have strong interest but poor monetization
-- Helps optimize pricing, promotions & monetization models

SELECT
    Title,
    Platform,
    Engagement_Score,
    Global_Sales
FROM merged_game_data
WHERE Engagement_Score > 5000
  AND Global_Sales < 0.5
ORDER BY Engagement_Score DESC;
-- Finds top-performing publishers by total global sales
-- Used for competitive benchmarking and market dominance analysis

SELECT
    Publisher,
    ROUND(SUM(Global_Sales),2) AS Total_Revenue
FROM merged_game_data
GROUP BY Publisher
ORDER BY Total_Revenue DESC
LIMIT 10;











