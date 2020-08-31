ATTACH MATERIALIZED VIEW src_weather_history
(
    `wthdate` Date, 
    `citypinyin` String, 
    `weather` Nullable(String), 
    `maxtemp` Nullable(Int8), 
    `mintemp` Nullable(Int8), 
    `wind` Nullable(String), 
    `windlevel` Nullable(String), 
    `year` UInt16, 
    `month` UInt8, 
    `city` Nullable(String), 
    `city_short2` Nullable(String), 
    `province` Nullable(String), 
    `年份` Nullable(String), 
    `月份` Nullable(String), 
    `周` Nullable(String), 
    `week` Nullable(Int64)
)
ENGINE = MergeTree()
ORDER BY wthdate
SETTINGS index_granularity = 8192 AS
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
    c.city AS city, 
    c.city_short2 AS city_short2, 
    c.province AS province, 
    dt.yearnamecn AS `年份`, 
    dt.monthnamecnshort AS `月份`, 
    dt.weeknamecnshort AS `周`, 
    dt.weekofyear AS week
FROM db_public.wth_history_daily_v201912 AS a
LEFT JOIN db_public.wth_cities AS c ON c.city_pinyin = a.city_pinyin
ANY LEFT JOIN db_public.DimDate AS dt ON dt.fulldate = weather_date
WHERE weather_date > '2015-12-31'
