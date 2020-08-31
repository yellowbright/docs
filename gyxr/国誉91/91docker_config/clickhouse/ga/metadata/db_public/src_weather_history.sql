ATTACH VIEW src_weather_history
(
    `wthdate` Date, 
    `citypinyin` String, 
    `weather` String, 
    `maxtemp` Int8, 
    `mintemp` Int8, 
    `wind` String, 
    `windlevel` String, 
    `year` UInt16, 
    `month` UInt8, 
    `city` String, 
    `city_short2` String, 
    `province` String
) AS
SELECT 
    weather_date AS wthdate, 
    a.city_pinyin AS citypinyin, 
    weather, 
    max_temp AS maxtemp, 
    min_temp AS mintemp, 
    wind, 
    wind_level AS windlevel, 
    toYear(weather_date) AS year, 
    toMonth(weather_date) AS month, 
    c.city, 
    c.city_short2, 
    c.province
FROM db_public.wth_history_daily_v201912 AS a
LEFT JOIN db_public.wth_cities AS c ON c.city_pinyin = a.city_pinyin
