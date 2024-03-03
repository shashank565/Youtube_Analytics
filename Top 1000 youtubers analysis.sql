-- overall view of top 1000  youtubers dataset --
SELECT
COUNT(DISTINCT Country) AS Total_countries,
COUNT(DISTINCT Categories) AS total_catogries,
AVG(Suscribers) AS avg_suscribers,
AVG(Visits) AS avg_visits,
AVG(Likes) AS avg_likes,
AVG(Comments) AS avg_comments
FROM dbo.[Clean_Top_1000_Youtube_df - youtubers_df]

--Top Category --
SELECT 
Categories,
COUNT(Username) AS Total_channel
FROM dbo.[Clean_Top_1000_Youtube_df - youtubers_df]
GROUP BY Categories
ORDER BY Total_channel DESC

-- Geographical analysis --
SELECT
Country,
Count(Username) AS Total_channel
FROM dbo.[Clean_Top_1000_Youtube_df - youtubers_df]
GROUP BY Country
ORDER BY Total_channel DESC

-- Suscriber enganment --
SELECT TOP 10
Username,
AVG(Suscribers) AS avg_suscribers,
AVG(Visits) AS avg_visits,
AVG(Likes) AS avg_likes,
AVG(Comments) AS avg_comments
FROM dbo.[Clean_Top_1000_Youtube_df - youtubers_df]
GROUP BY Username
ORDER BY avg_suscribers

--top performance identification --
SELECT TOP 10
Username,
Suscribers,
Country
FROM dbo.[Clean_Top_1000_Youtube_df - youtubers_df]
ORDER BY Suscribers DESC

-- Content and channel recommendation --
SELECT
Categories,
AVG(Suscribers) AS avg_scscribers,
AVG(Visits) AS avg_visits,
AVG(Likes) AS avg_likes,
AVG(Comments) AS avg_comments
FROM dbo.[Clean_Top_1000_Youtube_df - youtubers_df]
GROUP BY Categories
ORDER BY avg_scscribers DESC

--Cross country scscriber enganment --
SELECT TOP 10
Country,
AVG(Suscribers) AS avg_scscribers,
AVG(Visits) AS avg_visits,
AVG(Likes) AS avg_likes,
AVG(Comments) AS avg_comments
FROM dbo.[Clean_Top_1000_Youtube_df - youtubers_df]
GROUP BY Country
ORDER BY avg_scscribers DESC
