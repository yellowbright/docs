ATTACH VIEW wth_watch
(
    `采集类型` String, 
    `最近日期` Date, 
    `最早日期` Date
) AS
SELECT 
    '历史' AS `采集类型`, 
    max(weather_date) AS `最近日期`, 
    min(weather_date) AS `最早日期`
FROM db_public.wth_history_daily_v201912
UNION ALL
SELECT 
    '未来' AS `采集类型`, 
    max(forecast_date) AS `最近日期`, 
    min(forecast_date) AS `最早日期`
FROM db_public.wth_forecast_v201912
