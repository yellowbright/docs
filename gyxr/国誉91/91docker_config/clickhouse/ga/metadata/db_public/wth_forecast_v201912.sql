ATTACH TABLE wth_forecast_v201912
(
    `id` Int64, 
    `city_pinyin` String, 
    `weather_date` Date, 
    `weather` Nullable(String), 
    `max_temp` Nullable(Int8), 
    `min_temp` Nullable(Int8), 
    `wind` Nullable(String), 
    `wind_level` Nullable(String), 
    `forecast_date` Date
)
ENGINE = MergeTree()
ORDER BY id
SETTINGS index_granularity = 8192
