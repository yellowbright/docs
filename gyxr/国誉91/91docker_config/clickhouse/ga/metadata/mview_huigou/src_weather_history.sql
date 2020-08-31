ATTACH TABLE src_weather_history
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
PARTITION BY toYYYYMM(wthdate)
ORDER BY wthdate
SETTINGS index_granularity = 8192
